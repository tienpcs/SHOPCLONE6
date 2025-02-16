<?php
if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
require_once(__DIR__ . '/../../../models/is_user.php');

if (null !== check_string($_GET['id'])) {
    $id = check_string(check_string($_GET['id']));

    $spin = 
    $spin = $CMSNT->get_list("SELECT * FROM `spin_item` WHERE `spinid` = '" . check_string($id) . "'");
    
    $row = 
    $row = $CMSNT->get_row("SELECT * FROM `spin_option` WHERE `id` = '" . check_string($id) . "'");
    

    if (!$row) {
        die('Vòng quay không tồn tại');
    } elseif (!$spin) {
        die('Chưa cập nhật tỉ lệ!');
    }
} //else {
    //die('ID vòng quay không hợp lệ');
//}
$thoi_gian_bat_dau = null !== check_string($_GET['start']) ? check_string($_GET['start']) : date('Y-m-d H:i:s', strtotime('-1 month'));
$thoi_gian_ket_thuc = null !== check_string($_GET['end']) ? check_string($_GET['end']) : date('Y-m-d H:i:s');
$lich_su_quay = 
    $lich_su_quay = $CMSNT->get_list("SELECT `name`, `create_date` FROM `spin_history` WHERE `user_id` = '" . check_string($getUser['id']) . "' AND `create_date` BETWEEN '" . check_string($thoi_gian_bat_dau) . "' AND '" . check_string($thoi_gian_ket_thuc) . "' ORDER BY `id` DESC");
    

$body = [
    'title'     => $row['name'] . ' | ' . $CMSNT->site('title'),
    'desc'      => $CMSNT->site('description'),
    'keyword'   => $CMSNT->site('keywords')
];
require_once(__DIR__ . '/header.php');
require_once(__DIR__ . '/sidebar.php');

?>

<style>
/* ... CSS code ... */
</style>

<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7">
                <div id="wheel" class="fortune__wheel">
                    <svg viewBox="0 0 800 800">
                        <g class="chartholder" transform="translate(400,400)">
                            <g id="vongquay">
                                <image xlink:href="<?=$row['img'];?>" width="800" height="800" x="-400" y="-400"></image>
                                <?php foreach ($spin as $key => $item): ?>
                                    <g>
                                        <text x="-110" y="5" class="wheelText" text-anchor="middle" text-rendering="optimizeLegibility" transform="rotate(<?=-54 + ($key * 360 / count($spin));?>)translate(290)">
                                            <?=$item['name'];?>
                                            <path fill-opacity="0.0" fill="#aec7e8" d="M122.02099292274006,-274.06363729278024A300,300 0 0,1 222.94344764321826,-200.73918190765747L0,0Z"></path>
                                        </text>
                                    </g>
                                <?php endforeach; ?>
                            </g>
                        </g>
                    </svg>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form py-5 text-center">
                            <h3 class="text-center mb-5"><?=$row['name'];?></h3>
                            <div class="alert bg-white alert-primary" role="alert">
                                <div class="iq-alert-icon">
                                    <i class="ri-alert-line"></i>
                                </div>
                                <div class="iq-alert-text"><?=$row['noti'];?></div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-lg-6">
                                    <button type="button" class="btn btn-outline-success btn-block"><i class="fas fa-coins mr-1"></i><?=__('Giá Tiền');?>: <?=$row['giatien'];?></button>
                                </div>
                                <div class="col-lg-6">
                                    <button type="button" data-toggle="modal" data-target="#exampleModal" class="btn btn-outline-danger btn-block"><i class="fas fa-cart-plus mr-1"></i><?=__('KIẾM LƯỢT QUAY');?></button>
                                </div>
                            </div>
                            <button type="button" class="btn btn-primary btn-block" id="quaybtn"><i class="fas fa-play mr-1"></i><?=__('QUAY NGAY');?></button>
                            <p class="form-error"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title"><?=__('Lịch Sử Quay');?></h4>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table data-table table-striped mb-0">
                                <thead class="table-color-heading">
                                    <tr>
                                        <th width="5%">STT</th>
                                        <th><?=__('Giải thưởng');?></th>
                                        <th><?=__('Thời gian');?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i=0; foreach ($lich_su_quay as $row_history): ?>
                                        <tr>
                                            <td><?=$i++;?></td>
                                            <td><?=$row_history['name'];?></td>
                                            <td><b style="font-size:15px;"><?=timeAgo($row_history['create_date']);?></b></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?=__('Cách kiếm thêm lượt quay');?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-sm-12 col-lg-12">
                    <div class="alert text-white bg-primary" role="alert">
                        <marquee><?=$CMSNT->site('cachnap');?></marquee>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?=__('ĐÓNG');?></button>
                    <a type="button" href="<?=base_url('client/recharge');?>" class="btn btn-primary"><?=__('Nạp Ngay');?></a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<?=BASE_URL('assets/js/jquery.confetti.js');?>"></script>
<script>
    $("#quaybtn").click(function() {
        StartSpin();
    });

    var quayStatus = true;
    var vp = 360 / $(".wheelText").length; //  tối ưu hóa khai báo biến vp

    function StartSpin() {
        if (quayStatus) {
            quayStatus = false;
        } else {
            return;
        }

        $('#quaybtn').html('<i class="fa fa-spinner fa-spin"></i> <?=__('Đang chờ kết quả...');?>').prop('disabled', true);

        $.ajax({
            url: "<?=base_url('ajaxs/client/spin.php');?>",
            method: "POST",
            data: {
                token: '<?=$getUser['token'];?>'
            },
            success: function(response) {
                response = JSON.parse(response);
                if (response.status == 'error') {
                    cuteToast({
                        type: "error",
                        message: response.msg,
                        timer: 5000
                    });
                    $('#quaybtn').html('<i class="fas fa-play mr-1"></i><?=__('QUAY NGAY');?>').prop('disabled', false);
                    return false;
                }

                var audio = new Audio('<?=base_url('assets/audio/roulette.mp3');?>');
                var audio1 = new Audio('<?=base_url('assets/audio/congratulation.mp3');?>');
                var out = response.location;

                var countLoop = 0;
                var x = 0;
                var loop = setInterval(() => {
                    audio.play();
                    document.getElementById("vongquay").style.transform = "rotate(" + (360 - x) + "deg)";

                    if (x >= vp * out - vp / 2 && countLoop == 2) {
                        clearInterval(loop);
                        quayStatus = true;
                        audio.pause();
                        audio1.play();
                        confetti();
                        cuteToast({
                            type: "success",
                            message: response.msg,
                            timer: 10000
                        });
                        $('#quaybtn').html('<i class="fas fa-play mr-1"></i><?=__('QUAY NGAY');?>').prop('disabled', false);
                    } else {
                        if (x >= 360) {
                            countLoop = countLoop + 1;
                            x = 0;
                        }
                    }
                    x = x + 1;
                }, 1);
            }
        });
    }

    function confetti(){
        // ... confetti code ... 
    }
</script>