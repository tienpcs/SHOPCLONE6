<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => 'Dịch vụ game - '.$CMSNT->site('title'),
    'desc'   => $CMSNT->site('description'),
    'keyword' => $CMSNT->site('keywords')
];
$body['header'] = '';
$body['footer'] = '';

if($CMSNT->site('status_dichvugame') != 1){
    redirect(base_url('client/home'));
}
if ($CMSNT->site('sign_view_product') == 0) {
    if (isset($_COOKIE["token"])) {
        $getUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `token` = '" . check_string($_COOKIE['token']) . "' ");
        if (!$getUser) {
            header("location: " . BASE_URL('client/logout'));
            exit();
        }
        $_SESSION['login'] = $getUser['token'];
    }
    if (isset($_SESSION['login'])) {
        require_once(__DIR__ . '/../../../models/is_user.php');
    }
} else {
    require_once(__DIR__ . '/../../../models/is_user.php');
}

if($CMSNT->site('status_is_change_password') == 1){
    if(isset($getUser) && $getUser['change_password'] == 0){
        redirect(base_url('client/is-change-password'));
    }
}
if ($CMSNT->site('is_update_phone') == 1) {
    if (isset($_SESSION['login']) && $getUser['phone'] == '') {
        redirect(base_url('client/profile'));
    }
}

require_once(__DIR__ . '/header.php');
require_once(__DIR__ . '/sidebar.php');

?>

<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <!-- <?php if (isset($getUser) && $getUser['status_2fa'] != 1) { ?>
                <div class="col-lg-12">
                    <div class="alert bg-white alert-danger" role="alert">
                        <div class="iq-alert-icon">
                            <i class="ri-alert-line"></i>
                        </div>
                        <a href="<?= BASE_URL('client/security'); ?>" class="iq-alert-text"><?= __('Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'); ?></a>
                    </div>
                </div>
            <?php } ?> -->
            <?php if($CMSNT->site('thongbao') != ''):?>
            <div class="col-lg-12">
                <div class="alert bg-white alert-primary" role="alert">
                    <div class="iq-alert-icon">
                        <i class="ri-alert-line"></i>
                    </div>
                    <div class="iq-alert-text"><?= $CMSNT->site('thongbao'); ?></div>
                </div>
            </div>
            <?php endif?>

            <?=$CMSNT->site('html_top_product');?>

            <?php if ($CMSNT->site('status_giao_dich_gan_day') == 1 && $CMSNT->site('position_gd_gan_day') == 1) { ?>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?= $CMSNT->site('theme_color'); ?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?= __('ĐƠN HÀNG GẦN ĐÂY'); ?></h5>
                        </div>
                    </div>
                    <div class="card-body p-0" style="height:500px;overflow-x:hidden;overflow-y:auto;">
                        <div class="table-responsive">
                            <table class="table table-striped mb-0">
                                <tbody>
                                    <?php
                                    $i = 0;
                                    foreach ($CMSNT->get_list("SELECT * FROM `orders` ORDER BY id DESC limit 20 ") as $orderLog) { ?>
                                    <tr>

                                        <td style="height:20px;">
                                            <lord-icon src="https://cdn.lordicon.com/cllunfud.json" trigger="hover"
                                                style="width:30px;height:30px">
                                            </lord-icon> <b
                                                style="color: green;">...<?= substr(getRowRealtime("users", $orderLog['buyer'], 'username'), -3, 3); ?></b>
                                            <?= __('mua'); ?> <b
                                                style="color: red;"><?= format_cash($orderLog['amount']); ?></b>
                                            <b><?= $orderLog['product_id'] != 0 ? substr(getRowRealtime('products', $orderLog['product_id'], 'name'), 0, 45).'...' : getRowRealtime('documents', $orderLog['document_id'], 'name'); ?></b>
                                            - <b style="color:blue;"><?= format_currency($orderLog['pay']); ?></b>
                                        </td>
                                        <td><span
                                                class="badge badge-primary"><?= timeAgo($orderLog['create_time']); ?></span>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?= $CMSNT->site('theme_color'); ?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?= __('NẠP TIỀN GẦN ĐÂY'); ?></h5>
                        </div>
                    </div>
                    <div class="card-body p-0" style="height:500px;overflow-x:hidden;overflow-y:auto;">
                        <div class="table-responsive">
                            <table class="table table-striped mb-0">
                                <tbody>
                                    <?php
                                    $i = 0;
                                    foreach ($CMSNT->get_list("SELECT * FROM `invoices` WHERE `status` = 1 ORDER BY id DESC limit 20") as $invoicelog) { ?>
                                    <tr>
                                        <td style="height:20px;">

                                            <lord-icon src="https://cdn.lordicon.com/ujmqspux.json" trigger="hover"
                                                style="width:30px;height:30px">
                                            </lord-icon> <b
                                                style="color: green;">...<?= substr(getRowRealtime("users", $invoicelog['user_id'], 'username'), -3, 3); ?></b>
                                            <?= __('thực hiện nạp'); ?>
                                            <b style="color:blue;"><?= format_currency($invoicelog['amount']); ?></b> -
                                            <b style="color:red;"><?= $invoicelog['payment_method']; ?></b>
                                        </td>
                                        <td><span
                                                class="badge badge-primary"><?= timeAgo($invoicelog['create_time']); ?></span>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>

<?php if ($CMSNT->site('display_box_shop') == 1): ?>
    <div class="col-sm-12 col-lg-12">
        <div class="card">
            <div class="card-body">
                <i><?=__('Gợi ý dịch vụ cho bạn');?>:</i>
                <ol class="row">
                    <?php foreach ($CMSNT->get_list("SELECT * FROM `dichvugame` WHERE `status` = 1 ORDER BY RAND() LIMIT 5 ") as $product): ?>
                        <li class="col-lg-6"><a href="javascript:void(0);" onclick="modalBuy(<?= $product['id']; ?>, <?= $product['price']; ?>, `<?= __($product['name']); ?>`)" type="button"><b>Dịch Vụ Game</b> - <b style="color: red;"><?= __($product['name']); ?></b></a></li>
                    <?php endforeach; ?>
                </ol>
            </div>
        </div>
    </div>
<?php endif; ?>

<div class="col-lg-12">
    <div class="product-title">
        <h1>Dịch Vụ Game</h1>
    </div>
    <div class="alert bg-white alert-primary" role="alert">
        <div class="box-product">
            <div class="list-product">
                <?php foreach ($CMSNT->get_list("SELECT * FROM `dichvugame` WHERE `status` = 1") as $dichvu): ?>
                    <div class="product">
                        <a href="<?= BASE_URL('client/dichvugame/' . $dichvu['id']); ?>">
                            <img src="<?= BASE_URL($dichvu['image']); ?>" alt="">
                            <h3 id="dichvu"><?= $dichvu['name']; ?></h3>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>

    <div class="d-flex justify-content-end align-items-center border-top-table p-3">
        <a type="button" href="<?= base_url('client/dichvu-history'); ?>" class="btn btn-secondary btn-sm">
            <i class="fas fa-cart-arrow-down mr-1"></i><?= __('Lịch Sử Dịch Vụ'); ?>
        </a>
    </div>
</div>
</div>
<style>

#dichvu {
  color: black;
}

.box-product {
  display: flex;
  justify-content: center;
}
     
.list-product {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
}
                
.product {
  background-color: #f5f5f5;
  border: 3px solid #ccc;
  padding: 8px;
  border-radius: 5px;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1);
  text-align: center;
  }
                
.product img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  border-radius: 5px;
  }
                
.product h3 {
  margin-top: 10px;
  white-space: normal;
  word-break: break-word;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 15px;
  }
                
.product-title {
  text-align: center;
  font-family: <?=$CMSNT->site('font_family');?>;
  font-size: 24px;
  font-weight: bold;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 60px;
  }
                
.product-title h1 {
  font-family: <?=$CMSNT->site('font_family');?>;
  font-size: 33px;
  font-weight: bold;
  }
                
@media screen and (max-width: 768px) {
.list-product {
  grid-template-columns: repeat(2, 1fr);
  }
                
.product img {
  height: auto;
  max-height: 150px;
  }
} 
</style>    
 <div class="container-fluid">
        <div class="row">
<?php if ($CMSNT->site('status_giao_dich_gan_day') == 1 && $CMSNT->site('position_gd_gan_day') == 2) { ?>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?= $CMSNT->site('theme_color'); ?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?= __('ĐƠN HÀNG GẦN ĐÂY'); ?></h5>
                        </div>
                    </div>
                    <div class="card-body p-0" style="height:500px;overflow-x:hidden;overflow-y:auto;">
                        <div class="table-responsive">
                            <table class="table table-striped mb-0">
                                <tbody>
                                    <?php
                                    $i = 0;
                                    foreach ($CMSNT->get_list("SELECT * FROM `orders` ORDER BY id DESC limit 20 ") as $orderLog) { ?>
                                    <tr>

                                        <td style="height:20px;">
                                            <lord-icon src="https://cdn.lordicon.com/cllunfud.json" trigger="hover"
                                                style="width:30px;height:30px">
                                            </lord-icon> <b
                                                style="color: green;">...<?= substr(getRowRealtime("users", $orderLog['buyer'], 'username'), -3, 3); ?></b>
                                            <?= __('mua'); ?> <b
                                                style="color: red;"><?= format_cash($orderLog['amount']); ?></b>
                                            <b><?= $orderLog['product_id'] != 0 ? substr(getRowRealtime('products', $orderLog['product_id'], 'name'), 0, 45).'...' : getRowRealtime('documents', $orderLog['document_id'], 'name'); ?></b>
                                            - <b style="color:blue;"><?= format_currency($orderLog['pay']); ?></b>
                                        </td>
                                        <td><span
                                                class="badge badge-primary"><?= timeAgo($orderLog['create_time']); ?></span>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?= $CMSNT->site('theme_color'); ?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?= __('NẠP TIỀN GẦN ĐÂY'); ?></h5>
                        </div>
                    </div>
                    <div class="card-body p-0" style="height:500px;overflow-x:hidden;overflow-y:auto;">
                        <div class="table-responsive">
                            <table class="table table-striped mb-0">
                                <tbody>
                                    <?php
                                    $i = 0;
                                    foreach ($CMSNT->get_list("SELECT * FROM `invoices` WHERE `status` = 1 ORDER BY id DESC limit 20") as $invoicelog) { ?>
                                    <tr>
                                        <td style="height:20px;">

                                            <lord-icon src="https://cdn.lordicon.com/ujmqspux.json" trigger="hover"
                                                style="width:30px;height:30px">
                                            </lord-icon> <b
                                                style="color: green;">...<?= substr(getRowRealtime("users", $invoicelog['user_id'], 'username'), -3, 3); ?></b>
                                            <?= __('thực hiện nạp'); ?>
                                            <b style="color:blue;"><?= format_currency($invoicelog['amount']); ?></b> -
                                            <b style="color:red;"><?= $invoicelog['payment_method']; ?></b>
                                        </td>
                                        <td><span
                                                class="badge badge-primary"><?= timeAgo($invoicelog['create_time']); ?></span>
                                        </td>
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
             </div>
            </div>
        </div>
    </div>
</div>
</div>

<?php require_once(__DIR__ . '/footer.php'); ?>