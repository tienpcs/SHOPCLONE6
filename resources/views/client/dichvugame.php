<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Dịch vụ game',
    'desc'   => 'CMSNT Panel',
    'keyword' => 'cmsnt, CMSNT, cmsnt.co,'
];
$body['header'] = '
<!-- Select2 -->
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="'.BASE_URL('public/AdminLTE3/').'plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<style>
.form-control{
    border: 1px solid '.$CMSNT->site('theme_color').';
}
</style>
';
$body['footer'] = '
<!-- Select2 -->
<script src="'.BASE_URL('public/AdminLTE3/').'plugins/select2/js/select2.full.min.js"></script>
<script>
$(function () {
    $("input[data-bootstrap-switch]").each(function(){
        $(this).bootstrapSwitch("state", $(this).prop("checked"));
      })
    $(".select2").select2()
    $(".select2bs4").select2({
        theme: "bootstrap4"
    });
});
</script>
';
require_once(__DIR__.'/../../../models/is_user.php');
if (isset($_GET['id'])) {
    $id = check_string($_GET['id']);
    $row = $CMSNT->get_row("SELECT * FROM `dichvugame` WHERE `id` = '$id' ");
   if (!$row) {
        die('The Not Found');
    }
}


require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?> 
<div class="content-page">
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <!-- Nội dung card-header -->
                </div>
                <div class="card-body p-4">
                    <div class="row mb-4">
                        <div class="col-lg-6">
                            <button type="button" class="btn btn-primary btn-block">
                                <i class="fas fa-rocket"></i> <?=$row['name'];?>
                            </button>
                        </div>
                        <div class="col-lg-6">
                            <a href="<?=base_url('client/dichvu-history');?>" class="btn btn-outline-primary btn-block">
                                <i class="fas fa-history mr-1"></i><?=__('Lịch sử dùng dịch vụ');?>
                            </a>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label required fw-bold fs-6"><?=__('Chọn dịch vụ bạn cần:');?></label>
                        <div class="col-lg-8">
                            <select id="dichvu" class="form-control select2bs4" onchange="showPrice()">
                                <option data-money="0" value="">-- <?=__('Chọn dịch vụ');?> --</option>
                                <?php foreach($CMSNT->get_list("SELECT * FROM `dichvu_groups` WHERE `dichvugame_id` = '".$id."' ") as $group):?>
                                <option data-money="<?=$group['price'];?>" value="<?=$group['id'];?>"><?=$group['name'];?></option>
                                <?php endforeach?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label"><?=__('Tài Khoản');?></label>
                        <div class="col-lg-8">
                            <input name="taikhoan" id="taikhoan" placeholder="<?=__('Nhập tên tài khoản');?>" type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label"><?=__('Mật Khẩu');?></label>
                        <div class="col-lg-8">
                            <input name="matkhau" id="matkhau" placeholder="<?=__('Nhập mật khẩu');?>" type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label"><?=__('Ghi Chú');?></label>
                        <div class="col-lg-8">
                            <textarea class="form-control" placeholder="<?=__('Nhập ghi chú ( nếu có )');?>" id="ghichu"></textarea>
                        </div>
                    </div>

                    <div class="alert bg-white alert-info mt-4" role="alert">
                        <div class="card-body">
                            <input type="hidden" id="token" value="<?=$getUser['token'];?>" readonly>
                            <center>
                                <h5 class="mb-2"><?=__('Thanh Toán:');?> <b id="total" style="color: red;"><?=format_currency(0);?></b></h5>
                            </center>
                        </div>
                    </div>

                    <center class="mt-4">
                        <button type="button" id="Submit" class="btn btn-primary">
                            <i class="fas fa-credit-card mr-1"></i><?=__('TẠO TIẾN TRÌNH');?>
                        </button>
                    </center>
                </div>
            </div>
        </div>
    </div>
</div>

</div>


<?php if($row['luuy'] != ''):?>
   <div class="col-lg-12">
      <div class="alert bg-white alert-primary" role="alert">
          <div class="modal-body">
              <?=$row['luuy'];?> 
          </div>
      </div>
   </div>
<?php endif?>

            

<?php require_once(__DIR__.'/footer.php');?>

<script>
function showPrice() {
  var ketqua = $('#dichvu').children('option:selected').attr('data-money').replace(/(.)(?=(\d{3})+$)/g, '$1.') + "đ";
  $("#total").html(ketqua);
}

$("#Submit").on("click", function() {
        Swal.fire({
            title: '<?=__('Xác nhận thanh toán !');?>',
            text: '<?=__('Đơn hàng sẽ được gửi đi và không thể huỷ nếu bạn nhấn Thanh Toán');?>',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '<?=__('Thanh Toán');?>',
            cancelButtonText: '<?=__('Đóng');?>'
        }).then((result) => {
            if (result.isConfirmed) {
                $('#Submit').html('<i class="fa fa-spinner fa-spin"></i> <?=__("Đang xử lý...");?>')
                    .prop('disabled', true);
                $.ajax({
                    url: "<?=BASE_URL('ajaxs/client/buydichvu.php');?>",
                    method: "POST",
                    dataType: "JSON",
                    data: {
                        taikhoan: $("#taikhoan").val(),
                        matkhau: $("#matkhau").val(),
                        ghichu: $("#ghichu").val(),
                        dichvu: $("#dichvu").val(),
                        token: $("#token").val()
                    },
                    success: function(respone) {
                        if (respone.status == 'success') {
                            Swal.fire({
                                icon: 'success',
                                title: '<?=__('Thành công !');?>',
                                text: respone.msg,
                                showDenyButton: true,
                                confirmButtonText: '<?=__('Đồng ý');?>',
                                denyButtonText: `<?=__('Xem lịch sử dịch vụ');?>`,
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    location.reload();
                                } else if (result.isDenied) {
                                    window.location.href =
                                        '<?=base_url('client/dichvu-history');?>';
                                }
                            });
                        } else {
                            Swal.fire('<?=__('Thất bại !');?>', respone.msg, 'error');
                        }
                        $('#Submit').html('<?=__('Tạo Tiến Trình');?>').prop('disabled',
                            false);
                    }
                })
            }
        })

    });

</script>