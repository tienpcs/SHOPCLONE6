<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title'     => __('Lịch sử dịch vụ game').' | '.$CMSNT->site('title'),
    'desc'      => $CMSNT->site('description'),
    'keyword'   => $CMSNT->site('keywords')
];
$body['header'] = '
 ';
$body['footer'] = '
 ';
require_once(__DIR__.'/../../../models/is_user.php');
if($CMSNT->site('status_is_change_password') == 1){
    if(isset($getUser) && $getUser['change_password'] == 0){
        redirect(base_url('client/is-change-password'));
    }
}
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?>
<?php
function status($data)
{
    if ($data == 'choduyet'){
        $show = '<span class="badge badge-info"><i class="fa fa-spinner fa-spin"></i> Đang chờ duyệt</span>';
    }
    else if ($data == 'xuly'){
        $show = '<span class="badge badge-warning"><i class="fa fa-spinner fa-spin"></i> Đang xử lý</span>';
    }
    else if ($data == 'hoantat'){
        $show = '<span class="badge badge-success">Hoàn tất</span>';
    }
    else if ($data == 'huy'){
        $show = '<span class="badge badge-danger">Huỷ</span>';
    }
    return $show;
}
?>

<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="alert bg-white alert-primary" role="alert">
                    <div class="iq-alert-icon">
                        <i class="ri-alert-line"></i>
                    </div>
                    <div class="iq-alert-text"><?=$CMSNT->site('notice_dichvu');?></div>
                </div>
            </div>
            <div class="col-lg-6 text-left">
                <div class="mb-3">
                    <a href="<?=$_SERVER['HTTP_REFERER'];?>" type="button" class="btn btn-danger btn-sm"><i
                            class="fas fa-arrow-left mr-1"></i><?=__('Quay Lại');?></a>
                </div>
            </div>
            <div class="col-lg-6 text-right">
                <!-- <div class="mb-3">
                    <button class="btn btn-primary btn-sm btn-icon-left m-b-10" data-toggle="modal"
                        data-target="#modal-default" type="button"><i
                            class="fas fa-cloud-download-alt mr-1"></i><?=__('Tải Về File Backup VIA');?></button>
                </div> -->
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title"><?=__('Lịch sử mua hàng');?></h4>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table data-table table-hover mb-0">
                                <thead class="table-color-heading">
                                    <tr>
                                        <th width="5%">#</th>
                                        <th><?=__('Dịch vụ');?></th>
                                        <th><?=__('Tài khoản');?></th>
                                        <th><?=__('Mật khẩu');?></th>
                                        <th><?=__('Ghi chú');?></th>
                                        <th><?=__('Giá tiền');?></th>
                                        <th><?=__('Thời gian');?></th>
                                        <th><?=__('Cập nhập');?></th>
                                        <th><?=__('Trạng thái');?></th>
                                        <th><?=__('Admin said');?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i= 0; foreach ($CMSNT->get_list("SELECT * FROM `dichvu_history` WHERE `user_id` = '".$getUser['id']."' = 1  ORDER BY id DESC LIMIT 1000  ") as $row) {?>
                                    <tr>
                                        <td><?=$i++;?></td>
                                        <td><?=$row['dichvu'];?></td>
                                        <td><?=$row['taikhoan'];?></td>
                                        <td><?=$row['matkhau'];?></td>
                                        <td><textarea readonly><?=$row['ghichu'];?></textarea></td>
                                        <td><b style="color:blue;"><?=format_cash($row['money']);?>₫</b></td>
                                        <td><i><?=$row['createdate'];?></i></td>
                                        <td><i><?=$row['updatedate'];?></i></td>
                                        <td><?=status($row['status']);?></td>
                                        <td><textarea readonly><?=$row['reason'];?></textarea></td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require_once(__DIR__.'/footer.php');?>