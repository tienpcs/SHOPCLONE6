<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/helper.php");

$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();
use PragmaRX\Google2FAQRCode\Google2FA;


if (isset($_POST['action'])) {
    if ($CMSNT->site('status') != 1 && !isset($_SESSION['admin_login'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Hệ thống đang bảo trì định kỳ, vui lòng quay lại sau !')]));
    }

    if($_POST['action'] == 'add-create-website'){
        if (empty($_POST['token'])) {
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng đăng nhập')]));
        }
        if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_POST['token'])."' AND `banned` = 0 ")) {
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng đăng nhập')]));
        }
        if (time() - $getUser['time_request'] < $config['max_time_load']) {
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đang thao tác quá nhanh, vui lòng chờ')]));
        }
        if (empty($_POST['domain'])) {
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập tên miền')]));
        }
        $domain = check_string($_POST['domain']);
        $ctv_domain = $domain . '.' . $_ENV['DOMAIN_CHINH'];
        if(is_valid_domain_name($domain) != true){
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập tên miền hợp lệ')]));
        }
        if(strpos($domain, '.') == true){
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập tên miền hợp lệ')]));
        }
        if($CMSNT->get_row(" SELECT COUNT(id) FROM `domains` WHERE `domain` = '$ctv_domain' ")['COUNT(id)'] > 0){
            die(json_encode(['status' => 'error', 'msg' => __('Tên miền này đã tồn tại trong hệ thống')]));
        }
        
        $zone_id = $_ENV['ZONE_ID'];
        $ip = $_ENV['IP'];
        $subdomain_creation_result = createCloudflareSubdomain($domain, $ip, $zone_id);
        
        
        if ($subdomain_creation_result === 1) {
    die(json_encode(['status' => '1', 'msg' => 'Không thể tạo subdomain này!']));
} elseif ($subdomain_creation_result === 2) {
    
        $cpanel_server = $_ENV['DOMAIN_HOST'];
        $username_cpanel = $_ENV['TAI_KHOAN'];
        $password_cpanel = $_ENV['MAT_KHAU'];
        $new_domain = $ctv_domain;
        
        $cpanel = new Cpanel();
        $result = $cpanel->createDomain($new_domain, $cpanel_server, $username_cpanel, $password_cpanel);
        
        $isInsert = $CMSNT->insert('domains', [
            'user_id'           => $getUser['id'],
            'domain'            => $ctv_domain,
            'status'            => 1,
            'create_gettime'    => gettime(),
            'update_gettime'    => gettime()
        ]);
        if($isInsert){
            /** SEND NOTI CHO ADMIN */
            $my_text = $CMSNT->site('create_website_notification');
            $my_text = str_replace('{domain}', $_SERVER['SERVER_NAME'], $my_text);
            $my_text = str_replace('{username}', $getUser['username'], $my_text);
            $my_text = str_replace('{url}', $ctv_domain, $my_text);
            $my_text = str_replace('{time}', gettime(), $my_text);
            sendMessAdmin($my_text);
            die(json_encode(['status' => 'success', 'msg' => __('Thành Công Vui Lòng Chờ 15-30s rồi truy cập website nhé')]));
        }
}
        
      
    }

   
    
}
