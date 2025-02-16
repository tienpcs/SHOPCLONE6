<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__."/../../libs/sendEmail.php");
require_once(__DIR__."/../../libs/database/users.php");
require_once(__DIR__."/../../libs/5gsmm.php");

$User = new users();
$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($CMSNT->site('status_demo') != 0) {
        die(json_encode(['status' => 'error', 'msg' => 'Bạn không được dùng chức năng này vì đây là trang web demo']));
    }
    if ($CMSNT->site('status') != 1 && !isset($_SESSION['admin_login'])) {
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Hệ thống đang bảo trì')
        ]));
    }
    $taikhoan = check_string($_POST['taikhoan']);
    $matkhau = check_string($_POST['matkhau']);
    $dichvu = check_string($_POST['dichvu']);
    $ghichu = check_string($_POST['ghichu']);
    $token= check_string($_POST['token']);

    if(empty($token)){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Vui lòng đăng nhập để sử dụng chức năng này')
        ]));
    }
    if(empty($dichvu)){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Vui lòng chọn dịch vụ')
        ]));
    }
    $group = $CMSNT->get_row("SELECT * FROM `dichvu_groups` WHERE `id` = '$dichvu' ");
    if (!$group['name']){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Dịch vụ không hợp lệ')
        ]));
    }
    if(empty($taikhoan)){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Vui lòng nhập tài khoản')
        ]));
    }
    if(empty($matkhau)){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Vui lòng nhập mật khẩu')
        ]));
    }
    if(!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_POST['token'])."' AND `banned` = 0 ")){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Thông tin đăng nhập không chính xác')
        ]));
    }
  
    // TÍNH TOÁN SỐ LƯỢNG * GIÁ
    $total = $group['price'];
    $total = $total - $total * $getUser['chietkhau'] / 100;
    if(getRowRealtime('users', $getUser['id'], 'money') < $total){
        die(json_encode([
            'status' => 'error',
            'msg'   => __('Số dư không đủ, vui lòng nạp thêm tiền để thanh toán')
        ]));
    }
   
    $isBuy = $User->RemoveCredits($getUser['id'], $total, "Thanh toán dịch vụ game ( ".$group['name']." )");
    if ($isBuy) {
        if (getRowRealtime("users", $getUser['id'], "money") < 0) {
            $User->Banned($getUser['id'], 'Gian lận khi thanh toán dịch vụ game !');
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đã bị khoá tài khoản vì gian lận')]));
        }  

     $ghichu = empty($ghichu) ? "Không có" : $ghichu;
        // MUA THÀNH CÔNG
     $isDichVu = $CMSNT->insert("dichvu_history", [
            'user_id'  => $getUser['id'],
            'dichvu'   => $group['name'],
            'money'    => $total,
            'taikhoan' => $taikhoan,
            'matkhau'  => $matkhau,
            'createdate' => gettime(),
            'updatedate' => gettime(),
            'status'     => 'choduyet',
            'ghichu'     => $ghichu
        ]);
      // THÔNG BÁO//
      $dichvu = $CMSNT->get_row("SELECT * FROM `dichvugame` WHERE `id` = '".$group['dichvugame_id']."'");
        $my_text = $CMSNT->site('dichvu_notification');
        $my_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $my_text);
        $my_text = str_replace('{username}', $getUser['username'], $my_text);
        $my_text = str_replace('{dichvu}', $dichvu['name'], $my_text);
        $my_text = str_replace('{danhmuc}', $group['name'], $my_text);
        $my_text = str_replace('{price}', format_currency($total), $my_text);
        $my_text = str_replace('{taikhoan}', $taikhoan, $my_text);
        $my_text = str_replace('{matkhau}', $matkhau, $my_text);
        $my_text = str_replace('{ghichu}', $ghichu, $my_text);
        $my_text = str_replace('{time}', gettime(), $my_text);
        sendMessAdmin($my_text);        
        if($isDichVu){
            die(json_encode([
                'status' => 'success',
                'msg'   => __('Thanh toán thành công !')
            ]));
        }

    }

}