<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Danh sách đơn hoàn tất',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '
    <!-- DataTables -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
';
$body['footer'] = '
    <!-- DataTables  & Plugins -->
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/jszip/jszip.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/pdfmake/pdfmake.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/pdfmake/vfs_fonts.js"></script>   
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
';
require_once(__DIR__.'/../../../models/is_admin.php');
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
require_once(__DIR__.'/nav.php');

function status($data)
{
    if ($data == 'choduyet'){
        $show = '<span class="badge badge-secondary"><i class="fa fa-spinner fa-spin"></i> Đang chờ duyệt</span>';
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

<?php

if (isset($_POST['Save'])) {
    if ($CMSNT->site('status_demo') != 0) {
        die('<script type="text/javascript">if(!alert("Không được dùng chức năng này vì đây là trang web demo.")){window.history.back().location.reload();}</script>');
    }
    $status = check_string($_POST['status']);
    $id = check_string($_POST['id']);
    $row = $CMSNT->get_row("SELECT * FROM `dichvu_history` WHERE `id` = '$id' ");
    if(!$row)
    {
        die('<script type="text/javascript">if(!alert("Đơn hàng không hợp lệ.")){window.history.back().location.reload();}</script>');
    }
    if(empty($status))
    {
        die('<script type="text/javascript">if(!alert("Vui lòng chọn trạng thái")){window.history.back().location.reload();}</script>');
    }
    if($row['status'] == 'huy')
    {
        die('<script type="text/javascript">if(!alert("Đơn hàng đã hoàn tiền, nên không thể chỉnh trạng thái khác.")){window.history.back().location.reload();}</script>');
    }
    if($status == 'huy')
    {
        // hoàn tiền khi huỷ
        $getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `id` = '".$row['user_id']."' ");
        if($getUser)
        {
            /* GHI LOG DÒNG TIỀN */
            $CMSNT->insert("dongtien", array(
                'sotientruoc'   => $getUser['money'],
                'sotienthaydoi' => $row['money'],
                'sotiensau'     => $getUser['money'] + $row['money'],
                'thoigian'      => gettime(),
                'noidung'       => 'Hoàn tiền dịch vụ ('.$row['dichvu'].')',
                'user_id'       => $row['user_id']
            ));
        
            $isMoney = $CMSNT->cong("users", "money", $row['money'], " `id` = '".$row['user_id']."' ");
            if(!$isMoney)
            {
                die('<script type="text/javascript">if(!alert("Không thể xử lý giao dịch, vui lòng thử lại sau.")){window.history.back().location.reload();}</script>');
            }
        }
        else
        {
            die('<script type="text/javascript">if(!alert("Không thể xử lý giao dịch, vui lòng thử lại sau.")){window.history.back().location.reload();}</script>');
        }
    }
    $Long = $CMSNT->get_row(" SELECT * FROM `users` WHERE `token` = '".check_string($_COOKIE['token'])."' ");
    $CMSNT->update("dichvu_history", array(
        'status' => $status,
        'reason' => check_string($_POST['reason']),
        'updatedate' => gettime(),
        'receiver'   => $Long['username']
    ), " `id` = '".check_string($_POST['id'])."' ");

    die('<script type="text/javascript">if(!alert("Lưu thành công !")){window.history.back().location.reload();}</script>');
}
?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Danh sách đơn hoàn tất</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?=BASE_URL('admin/');?>">Dashboard</a></li>
                        <li class="breadcrumb-item active">Danh sách đơn đón hoàn tất</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-6">
                </section>
                <section class="col-lg-12 connectedSortable">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="fas fa-gift mr-1"></i>
                                DANH SÁCH ĐƠN HOÀN TẤT
                            </h3>
                            <div class="card-tools">
                                <button type="button" class="btn bg-success btn-sm" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn bg-warning btn-sm" data-card-widget="maximize"><i
                                        class="fas fa-expand"></i>
                                </button>
                                <button type="button" class="btn bg-danger btn-sm" data-card-widget="remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive p-0">
                                <table id="datatable1" class="table table-striped table-bordered text-center">
                                    <thead>
                                        <tr>
                                           <th style="width: 5px;">#</th>
                                           <th>Người Nhận đơn</th>
                                           <th>Người đặt</th>
                                           <th>Dịch vụ</th>
                                           <th>Tài khoản</th>
                                           <th>Mật khẩu</th>
                                           <th>Ghi chú</th>
                                           <th>Giá tiền</th>
                                           <th>Thời gian</th>
                                           <th>Update</th>
                                           <th>Trạng thái</th>
                                           <th>Admin said</th>
                                           <th style="width: 20%">Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <?php $i= 0; foreach ($CMSNT->get_list("SELECT * FROM `dichvu_history` WHERE `status` = 'hoantat' ORDER BY id DESC ") as $row) {?>
                                        <tr>
                                            <td><?=$i++;?></td>
                                            <td><?=$row['receiver'];?></td>
                                            <td><?=getUser($row['user_id'], 'username');?></td>
                                            <td><?=$row['dichvu'];?></td>
                                            <td><?=$row['taikhoan'];?></td>
                                            <td><?=$row['matkhau'];?></td>
                                            <td><textarea readonly><?=$row['ghichu'];?></textarea></td>
                                            <td><?=format_cash($row['money']);?></td>
                                            <td><i><?=$row['createdate'];?></i></td>
                                            <td><i><?=$row['updatedate'];?></i></td>
                                            <td><?=status($row['status']);?></td>
                                            <td><textarea readonly><?=$row['reason'];?></textarea></td>
                                            <td>
                                           <button class="btn btn-primary btnEdit" data-reason="<?=$row['reason'];?>"
                                                data-status="<?=$row['status'];?>" data-id="<?=$row['id'];?>"><i
                                                    class="fas fa-edit"></i>
                                                <span>EDIT</span></button>
                                        </td>
                                        </tr>
                                        <?php }?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">EDIT ĐƠN HÀNG</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="" method="POST" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Trạng thái</label>
                        <div class="col-sm-8">
                            <input type="hidden" name="id" id="id" class="form-control" required>           
                            <select class="form-control show-tick" id="status" name="status" required>
                                <option value="">* Chọn trạng thái</option>        
                                <option value="choduyet">Chờ duyệt</option>
                                <option value="xuly">Đang xử lý</option>
                                <option value="hoantat">Hoàn tất</option>
                                <option value="huy">Hủy</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Lý do</label>
                        <div class="col-sm-8">
                            <textarea name="reason" id="reason" placeholder="Nhập lý do hủy nếu có" class="form-control"></textarea>
                        </div>
                    </div>
                    <i>Hệ thống tự hoàn tiền lại cho khách hàng nếu đơn hàng bị hủy</i>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="Save" class="btn btn-danger">Lưu ngay</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Modal -->

<script type="text/javascript">
$('.btnEdit').on('click', function(e) {
    var btn = $(this);
    $("#status").val(btn.attr("data-status"));
    $("#reason").val(btn.attr("data-reason"));
    $("#id").val(btn.attr("data-id"));
    $("#staticBackdrop").modal();
    return false;
});
</script>

<?php
require_once(__DIR__.'/footer.php');
?>