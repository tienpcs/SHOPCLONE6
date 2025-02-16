<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Cấu hình dịch vụ game',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '
    <!-- Select2 -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- ckeditor -->
    <script src="'.BASE_URL('public/ckeditor/ckeditor.js').'"></script>
    <!-- DataTables -->
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
';
$body['footer'] = '
    <!-- Select2 -->
    <script src="'.BASE_URL('public/AdminLTE3/').'plugins/select2/js/select2.full.min.js"></script>
    <script>
    $(function () {
        $(".select2").select2()
        $(".select2bs4").select2({
            theme: "bootstrap4"
        });
    });
    </script>
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
?>
<?php
    if (isset($_POST['SaveSettings'])) {
        if ($CMSNT->site('status_demo') != 0) {
            die('<script type="text/javascript">if(!alert("Không được dùng chức năng này vì đây là trang web demo.")){window.history.back().location.reload();}</script>');
        }
        foreach ($_POST as $key => $value) {
            $CMSNT->update("settings", array(
                'value' => $value
            ), " `name` = '$key' ");
        }
        die('<script type="text/javascript">if(!alert("Lưu thành công !")){window.history.back().location.reload();}</script>');
    } ?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Cấu hình dịch vụ game</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?=base_url_admin('home');?>">Dashboard</a></li>
                        <li class="breadcrumb-item active">Cấu hình dịch vụ game</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-6 connectedSortable">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="fas fa-cogs mr-1"></i>
                                CẤU HÌNH DỊCH VỤ GAME
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
                        <form action="" method="POST">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Status</label>
                                    <select class="form-control select2bs4" name="status_dichvugame">
                                      <option <?=$CMSNT->site('status_dichvugame') == 1 ? 'selected' : '';?>
                                            value="1">ON
                                        </option>
                                        <option <?=$CMSNT->site('status_dichvugame') == 0 ? 'selected' : '';?>
                                            value="0">
                                            OFF
                                        </option>
                                    </select>
                                    <i>Chọn OFF hệ thống sẽ tạm dừng dịch vụ game.</i>
                                </div>
                                <div class="form-group">
                                    <label>Thông báo về discord</label>
                                    <select class="form-control select2bs4" name="discord_notification">
                                      <option <?=$CMSNT->site('discord_notification') == 'discord' ? 'selected' : '';?>
                                            value="discord">ON
                                        </option>
                                        <option <?=$CMSNT->site('discord_notification') == 'OFF' ? 'selected' : '';?>
                                            value="OFF">
                                            OFF
                                        </option>
                                    </select>
                                    <i>Chọn OFF hệ thống sẽ tạm dừng thông báo về discord.</i>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Webhook Discord</label>
                                    <input type="text" class="form-control" name="discord_webhook"
                                        value="<?=$CMSNT->site('discord_webhook');?>"
                                        placeholder="https://discord.com/api/webhooks/your-webhook-url">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nội dung thông báo mua dịch vụ</label>
                                    <textarea name="dichvu_notification" placeholder="Để trống để ẩn thông báo này"
                                        class="form-control"><?=$CMSNT->site('dichvu_notification');?></textarea>
                                    <ul>
                                        <li><b>{domain}</b> => Tên website.</li>
                                        <li><b>{username}</b> => Tên khách hàng mua.</li>
                                        <li><b>{dichvu}</b> => Tên dịch vụ.</li>
                                        <li><b>{danhmuc}</b> => Tên danh mục của dịch vụ.</li>
                                        <li><b>{price}</b> => Số tiền thanh toán.</li>
                                        <li><b>{taikhoan}</b> => Tài khoản.</li>
                                        <li><b>{matkhau}</b> => Mật khẩu.</li>
                                        <li><b>{ghichu}</b> => Ghi chú của khách hàng.</li>
                                        <li><b>{time}</b> => Thời gian.</li>
                                    </ul>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Ghi chú lịch sử dịch vụ</label>
                                    <textarea id="notice_dichvu" name="notice_dichvu"><?=$CMSNT->site('notice_dichvu');?></textarea>
                                </div>
                            </div>
                            <div class="card-footer clearfix">
                               <button name="SaveSettings" class="btn btn-info btn-icon-left m-b-10" type="submit"><i
                                        class="fas fa-save mr-1"></i>Lưu Ngay</button>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<?php
require_once(__DIR__.'/footer.php');
?>
<script>
CKEDITOR.replace("notice_dichvu");
</script>