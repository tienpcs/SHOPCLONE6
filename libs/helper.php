<?php

if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$CMSNT = new DB;
date_default_timezone_set($CMSNT->site('timezone'));

if($CMSNT->get_row(" SELECT * FROM `banned_ips` WHERE `ip` = '".myip()."' AND `banned` = 1 ")){
    require_once(__DIR__.'/../resources/views/common/block-ip.php');
    exit();
}
class Cpanel
{
    public function createDomain($domain, $cpanel_server, $username_cpanel, $password_cpanel)
    {
        $url = $cpanel_server . "json-api/cpanel?cpanel_jsonapi_apiversion=2&cpanel_jsonapi_module=Park&cpanel_jsonapi_func=park&domain=$domain";

        $auth = base64_encode($username_cpanel . ":" . $password_cpanel);
        $context = stream_context_create([
            'http' => [
                'method'  => 'POST',
                'header'  => "Authorization: Basic $auth\r\n",
                'ignore_errors' => true,
            ],
            'ssl' => [
                'verify_peer' => false,
                'verify_peer_name' => false,
            ]
        ]);

        $response = file_get_contents($url, false, $context);

        if ($response === FALSE) {
            return null;
        }

        return json_decode($response, true);
    }
}
function createCloudflareSubdomain($subdomain, $ip, $zone_id) {
    $url = "https://api.cloudflare.com/client/v4/zones/{$zone_id}/dns_records";
    $headers = [
        'Content-Type: application/json',
        'X-Auth-Email: ' . $_ENV['EMAIL'],
        'X-Auth-Key: ' . $_ENV['API_KEY'],
    ];

    $data = [
        'type' => 'A',
        'name' => $subdomain,
        'content' => $ip,
        'ttl' => 1,
        'proxied' => true,
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    $response = curl_exec($ch);
    $error = curl_error($ch);
    curl_close($ch);
    if ($error) {
        return 1;
    }

    $result = json_decode($response, true);

    if ($result['success']) {
        return 2;
    } else {
        return 1;
    }
}
function getCloudflareDnsRecordId($zone_id, $subdomain, $type = 'A') {
    $url = "https://api.cloudflare.com/client/v4/zones/{$zone_id}/dns_records";
    $headers = [
        'Content-Type: application/json',
        'X-Auth-Email: ' . $_ENV['EMAIL'],
        'X-Auth-Key: ' . $_ENV['API_KEY'],
    ];

    $ch = curl_init("{$url}?name={$subdomain}&type={$type}");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    $response = curl_exec($ch);
    $error = curl_error($ch);
    curl_close($ch);

    if ($error) {
        return null;
    }

    $result = json_decode($response, true);

    if ($result['result']) {
        return $result['result'][0]['id'];
    } else {
        return null;
    }
}

function deleteCloudflareDnsRecord($zone_id, $record_id) {
    $url = "https://api.cloudflare.com/client/v4/zones/{$zone_id}/dns_records/{$record_id}";
    $headers = [
        'Content-Type: application/json',
        'X-Auth-Email: ' . $_ENV['EMAIL'],
        'X-Auth-Key: ' . $_ENV['API_KEY'],
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

    $response = curl_exec($ch);
    $error = curl_error($ch);
    curl_close($ch);

    if ($error) {
        return false;
    }

    $result = json_decode($response, true);

    if ($result['success']) {
        return true;
    } else {
        return false;
    }
}
function buy_API_SHOPCLONE7($domain, $username, $password, $id_api, $amount){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'ajaxs/client/product.php',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => array('action' => 'buyProduct','id' => $id_api,'amount' => $amount,'coupon' => $username,'api_key' => $password),
      CURLOPT_HTTPHEADER => array(),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response; 
}
function display_mua_xu($data){
    if ($data == 1) {
        $show = '<span class="badge badge-success">Hoàn tất</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-info">Đang xử lý</span>';
    } elseif ($data == 2) {
        $show = '<span class="badge badge-danger">Hủy</span>';
    }
    return $show;
}
function isValidPhoneNumber($phoneNumber) {
    // Sử dụng biểu thức chính quy để kiểm tra số điện thoại
    $pattern = '/^\+?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,10}$/';
    // Sử dụng hàm preg_match để kiểm tra so khớp
    if (preg_match($pattern, $phoneNumber)) {
        return true; // Số điện thoại hợp lệ
    } else {
        return false; // Số điện thoại không hợp lệ
    }
}
function getDiscount($amount, $product_id){
    $CMSNT = new DB;
    foreach($CMSNT->get_list("SELECT * FROM `discounts` WHERE `amount` <= '$amount' AND `product_id` = '$product_id' ORDER BY `amount` DESC ") as $discount){
        return $discount['discount'];
    } 
    return 0;
}
function xoaDauCach($chuoi) {
    return str_replace(' ', '', $chuoi);
}
function generate_csrf_token() {
    if(!isset($_SESSION['csrf_token'])) {
        $_SESSION['csrf_token'] = base64_encode(openssl_random_pseudo_bytes(32));
    }
    return $_SESSION['csrf_token'];
}
function buy_API_15($domain, $username, $password, $id_api, $amount, $trans_id){
    return curl_get2($domain.'api/v1/buy.php?apikey='.$password.'&account_type='.$id_api.'&quantity='.$amount);
}
function balance_API_15($domain, $username, $password){
    return curl_get2($domain.'api/v1/login.php?password='.$password);
}
function listProduct_API_15($domain, $password){
    return curl_get2($domain.'api/v1/account.php?apikey='.$password);
}
function getOrder_API_14($domain, $username, $password, $order_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'api',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_HTTPHEADER => array(
            'Authorization: '.$password
        ),
        CURLOPT_POSTFIELDS =>'{
            "act": "Get-Order",
            "data": {
                "order_id": '.$order_id.'
            }
        }',
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function buy_API_14($domain, $username, $password, $id_api, $amount, $trans_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'api',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_HTTPHEADER => array(
            'Authorization: '.$password
        ),
      CURLOPT_POSTFIELDS =>'{
        "act": "Create-Order",
        "data": {
            "service_id": '.$id_api.',
            "quantity": '.$amount.'
        }
    }',
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function listProduct_API_14($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => array('act' => 'Get-Products'),
    CURLOPT_HTTPHEADER => array(
        'Authorization: '.$password
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function balance_API_14($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => array('act' => 'Me'),
    CURLOPT_HTTPHEADER => array(
        'Authorization: '.$password
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function display_invoice($status)
{
    if ($status == 'waiting') {
        return '<span class="badge bg-warning">Waiting</span>';
    } elseif ($status == 'expired') {
        return '<span class="badge bg-danger">Expired</span>';
    } else if ($status == 'completed') {
        return '<span class="badge bg-success">Completed</span>';
    } else if ($status == 0) {
        return '<p class="mb-0 text-warning font-weight-bold d-flex justify-content-start align-items-center">'.__('Đang chờ thanh toán').'</p>';
    } else if ($status == 1) {
        return '<p class="mb-0 text-success font-weight-bold d-flex justify-content-start align-items-center">'.__('Đã thanh toán').'</p>';
    } else if ($status == 2) {
        return '<p class="mb-0 text-danger font-weight-bold d-flex justify-content-start align-items-center">'.__('Huỷ bỏ').'</p>';
    } else {
        return '<b style="color:yellow;">Khác</b>';
    }
}
function base_url_admin($url = '')
{
    $a = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://" . $_SERVER["HTTP_HOST"];
    if ($a == 'http://localhost') {
        $a = 'http://localhost/CMSNT.CO/SHOPCLONE6';
    }
    return $a.'?module=admin&action='.$url;
}

function buy_API_23($domain, $password, $id_api, $amount){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.base64_decode('YXBpL2NyZWF0ZV9vcmRlcg=='),
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS =>'{
    "service": "'.$id_api.'",
    "quantity": '.$amount.',
    "api_key": "'.$password.'"
    }',
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    ));

    $response = curl_exec($curl);

    curl_close($curl);
    return $response;
}
function getOrder_API_13($domain, $username, $password, $order_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.base64_decode('YXBpL09yZGVyL0dldFB1cmNoYXNlZEFjY291bnRzP09yZGVySWQ9').$order_id.'&Custom_UserId='.$username,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'GET',
      CURLOPT_HTTPHEADER => array(
        'ApiKey: '.$password,
        'Cookie: language=vi'
      ),
    ));
    
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function buy_API_13($domain, $username, $password, $id_api, $amount, $trans_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.base64_decode('YXBpL1NlcnZpY2UvQnV5'),
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>'{
      "serviceId": '.$id_api.',
      "quantity": '.$amount.',
      "voucherCode": "'.$username.'",
      "custom_UserId": "'.$username.'",
      "custom_OrderId": "'.$trans_id.'",
      "custom_ExtraData": "<custom_ExtraData>"
    }',
      CURLOPT_HTTPHEADER => array(
        'ApiKey: '.$password,
        'Content-Type: application/json',
        'Cookie: language=vi'
      ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function listProduct_API_13($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'api/Service/GetAll',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'GET',
      CURLOPT_HTTPHEADER => array(
        'ApiKey: '.$password,
        'Cookie: language=vi'
      ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}

function getOrder_API_12($domain, $password, $order_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'api/',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>'{
        "data": {
            "order_id": '.$order_id.'
        },
        "act": "Get-Order"
    }',
      CURLOPT_HTTPHEADER => array(
        'authorization: '.$password,
        'Content-Type: application/json'
      ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response; 
}
function buy_API_12($domain, $password, $id_api, $amount){
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $domain.'api/',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS =>'{
        "data": {
            "quantity": '.$amount.',
            "service_id": '.$id_api.'
        },
        "act": "Create-Order"
    }',
      CURLOPT_HTTPHEADER => array(
        'authorization: '.$password,
        'Content-Type: application/json'
      ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response; 
}
function listProduct_API_12($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS =>'{
        "act": "Get-Products"
    }',
    CURLOPT_HTTPHEADER => array(
        'authorization: '.$password,
        'Content-Type: application/json'
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;

}
function balance_API_12($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS =>'{
        "act": "Me"
    }',
    CURLOPT_HTTPHEADER => array(
        'authorization: '.$password,
        'Content-Type: application/json'
      ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
if (!function_exists('cal_days_in_month')) {
    function cal_days_in_month($calendar, $month, $year) {
        return date('t', mktime(0, 0, 0, $month, 1, $year));
    }
}
function is_valid_domain_name($domain_name){
    return (preg_match("/^([a-z\d](-*[a-z\d])*)(\.([a-z\d](-*[a-z\d])*))*$/i", $domain_name) && preg_match("/^.{1,253}$/", $domain_name) && preg_match("/^[^\.]{1,63}(\.[^\.]{1,63})*$/", $domain_name));
}
function display_domains($data){
    if ($data == 1) {
        $show = '<span class="badge bg-success">'.__('Hoạt Động').'</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge bg-warning">'.__('Đang Xây Dựng').'</span>';
    } elseif ($data == 2) {
        $show = '<span class="badge bg-danger">'.__('Huỷ').'</span>';
    }
    return $show;
}
function balance_API_10($domain, $password){
    return curl_get($domain.'/user/balance?apikey='.$password);
}
function buy_API_9($domain, $password, $dataPost){
    $data = json_encode($dataPost);
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'v1/api/buy?api_key='.$password,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $data,
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function listProduct_API_9($domain, $password){
    return curl_get($domain.'v1/api/categories?api_key='.$password);
}
function balance_API_9($domain, $password){
    return curl_get($domain.'v1/api/me?api_key='.$password);
}

function buy_API_8($domain, $password, $dataPost){
    $data = json_encode($dataPost);
    $ch = curl_init($domain."api/v1/s3/buy");
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS,$data);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json',
        'Content-Length: ' . strlen($data),
        'Authorization: Bearer '.$password
    )
    );
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;
}
function listProduct_API_8($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api/v1/s3/services',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer '.$password
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function balance_API_8($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api/v1/s3/get_wallet',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer '.$password
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}

function buy_API_7($domain, $token, $id_product, $amount){
    
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api/san-pham/mua?category='.$id_product.'&quantity='.$amount,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer '.$token
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function listProduct_API_7($domain, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'api/san-pham/tat-ca',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer '.$password
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;

}
function display_camp($status)
{
    if ($status == 0) {
        return '<b style="color:blue;">Processing</b>';
    } elseif ($status == 1) {
        return '<b style="color:green;">Completed</b>';
    } elseif ($status == 2) {
        return '<b style="color:red;">Cancel</b>';
    } else {
        return '<b style="color:yellow;">Khác</b>';
    }
}
function balance_API_6($domain, $password){
    return curl_get($domain.'/api.php?apikey='.$password.'&action=get-balance');
}
function display_otp_service($status)
{
    if ($status == 3) {
        return '<span class="badge bg-danger">'.__('Dữ liệu đầu vào không hợp lệ').'</span>';
    } elseif ($status == 0) {
        return '<span class="badge bg-success">'.__('Hoàn tất').'</span>';
    } elseif ($status == 2) {
        return '<span class="badge bg-danger">'.__('Hết hạn (hoàn tiền)').'</span>';
    } elseif ($status == 1) {
        return '<span class="badge bg-warning">'.__('Đang chờ').'</span>';
    } else {
        return '<span class="badge bg-warning">'.__('Khác').'</span>';
    }
}
function display_service_client($status)
{
    if ($status == 'Pending') {
        return '<span class="badge bg-info">Đang chờ</span>';
    } elseif ($status == 'Completed') {
        return '<span class="badge bg-success">Hoàn thành</span>';
    } elseif ($status == 'Canceled') {
        return '<span class="badge bg-danger">Đã hủy (Đã hoàn tiền)</span>';
    } elseif ($status == 'In progress') {
        return '<span class="badge bg-warning">Đang chạy</span>';
    } elseif ($status == 'Partial') {
        return '<span class="badge bg-danger">Chạy thiếu (Đã hoàn tiền)</span>';
    } elseif ($status == 'Processing') {
        return '<span class="badge bg-warning">Đang xử lý</span>';
    } else {
        return '<span class="badge bg-warning">Khác</span>';
    }
}
function setCurrency($id){
    global $CMSNT;
    if ($row = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `id` = '$id' AND `display` = 1 ")) {
        $isSet = setcookie('currency', $row['id'], time() + (31536000 * 30), "/"); // 31536000 = 365 ngày
        if ($isSet) {
            return true;
        } else {
            return false;
        }
    }
    return false;
}
function getCurrency(){
    global $CMSNT;
    if (isset($_COOKIE['currency'])) {
        $currency = check_string($_COOKIE['currency']);
        $rowcurrency = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `id` = '$currency' AND `display` = 1 ");
        if ($rowcurrency) {
            return $rowcurrency['id'];
        }
    }
    $rowcurrency = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `default_currency` = 1 ");
    if ($rowcurrency) {
        return $rowcurrency['id'];
    }
    return false;
}
function buy_API_DONGVANFB($domain, $apikey, $id_product, $amount){
    return curl_get($domain."user/buy?apikey=$apikey&account_type=$id_product&quality=$amount&type=full");
}
function balance_API_DONGVANFB($domain, $username, $apikey){
    return curl_get($domain."user/balance?apikey=$apikey");
}
function buy_API_4($domain, $token, $id_product, $amount){
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => $domain.'v1/user/partnerbuy',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => array('amount' => $amount, 'categoryId' => $id_product),
    CURLOPT_HTTPHEADER => array(
        'authorization: '.$token
    ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;

}
function balance_API_4($domain, $username, $password){
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $domain.'v1/user/login',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 10,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => array(
            'username' => $username,
            'password'  => $password
        ),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function balance_API_1($domain, $token){
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $domain.'api/v1/balance',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 5,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => array('api_key' => $token),
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function buy_API_1($domain, $dataPost){
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $domain."api/v1/buy",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => $dataPost,
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function order_API_1($domain, $token, $order_id){
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $domain.'api/v1/order',
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => array('api_key' => $token,'order_id' => $order_id),
      ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}

function addRef($user_id, $price, $note = ''){
    $CMSNT = new DB;
    if($CMSNT->site('status_ref') != 1){
        return false;
    }
    $getUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `id` = '$user_id' ");
    if($getUser['ref_id'] != 0){
        $ck = $CMSNT->site('ck_ref');
        if(getRowRealtime('users', $getUser['ref_id'], 'ref_ck') != 0){
            $ck = getRowRealtime('users', $getUser['ref_id'], 'ref_ck');
        }
        $price = $price * $ck / 100;
        $CMSNT->cong('users', 'ref_money', $price, " `id` = '".$getUser['ref_id']."' ");
        $CMSNT->cong('users', 'ref_total_money', $price, " `id` = '".$getUser['ref_id']."' ");
        $CMSNT->cong('users', 'ref_amount', $price, " `id` = '".$getUser['id']."' ");
        $CMSNT->insert('log_ref', [
            'user_id'       => $getUser['ref_id'],
            'reason'        => $note,
            'sotientruoc'   => getRowRealtime('users', $getUser['ref_id'], 'ref_money') - $price,
            'sotienthaydoi' => $price,
            'sotienhientai' => getRowRealtime('users', $getUser['ref_id'], 'ref_money'),
            'create_gettime'    => gettime()
        ]);
        return true;
    }
    return false;
}
function sendMessAdmin($my_text){
    $CMSNT = new DB;
    if(checkAddon(112246) == true && $my_text != ''){
        if($CMSNT->site('type_notification') == 'telegram'){
            return sendMessTelegram($my_text);
        }
        return false;
    }
    return false;
}
function sendMessTelegram($my_text, $token = '', $chat_id = ''){
    $CMSNT = new DB;
    if($chat_id == ''){
        $chat_id = $CMSNT->site('chat_id_telegram');
    }
    if($token == ''){
        $token = $CMSNT->site('token_telegram');
    }
    if($token != '' && $chat_id != ''){
        $curl = curl_init();
        curl_setopt_array($curl, array(
        CURLOPT_URL => 'https://api.telegram.org/bot'.$token.'/sendMessage?chat_id='.$chat_id.'&text='.urlencode($my_text),
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 10,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
      ));
        $response = curl_exec($curl);
        curl_close($curl);
        return $response;
    }
    return false;
}
function getFlag($flag){

    if(empty($flag)){
        return '';
    }
    return '<img width="30px;" src="https://flagicons.lipis.dev/flags/4x3/'.$flag.'.svg">';
}
function checkPromotion($amount){
    $CMSNT = new DB();
    foreach($CMSNT->get_list("SELECT * FROM `promotions` WHERE `amount` <= '$amount' AND `status` = 1 ORDER by `amount` DESC ") as $promotion){
        $received = $amount + $amount * $promotion['discount'] / 100;
        return $received;
    }
    return $amount;
}
function claimSpin($user_id, $trans_id, $total_money)
{
    $CMSNT = new DB();
    $USER = new users();
    if ($CMSNT->site('status_spin') == 1) {
        if ($total_money >= $CMSNT->site('condition_spin')) {
            $USER->AddSpin($user_id, 1, 'Nhập 1 SPIN từ đơn hàng #'.$trans_id);
        }
    }
}
function getRandomWeightedElement(array $weightedValues)
{
    $Rand = mt_Rand(1, (int) array_sum($weightedValues));
    foreach ($weightedValues as $key => $value) {
        $Rand -= $value;
        if ($Rand <= 0) {
            return $key;
        }
    }
}
function checkFormatCard($type, $seri, $pin)
{
    $seri = strlen($seri);
    $pin = strlen($pin);
    $data = [];
    if ($type == 'Viettel' || $type == "viettel" || $type == "VT" || $type == "VIETTEL") {
        if ($seri != 11 && $seri != 14) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 13 && $pin != 15) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'Mobifone' || $type == "mobifone" || $type == "Mobi" || $type == "MOBIFONE") {
        if ($seri != 15) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 12) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'VNMB' || $type == "Vnmb" || $type == "VNM" || $type == "VNMOBI") {
        if ($seri != 16) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 12) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'Vinaphone' || $type == "vinaphone" || $type == "Vina" || $type == "VINAPHONE") {
        if ($seri != 14) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 14) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'Garena' || $type == "garena") {
        if ($seri != 9) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 16) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'Zing' || $type == "zing" || $type == "ZING") {
        if ($seri != 12) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 9) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    if ($type == 'Vcoin' || $type == "VTC") {
        if ($seri != 12) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài seri không phù hợp'
            ];
            return $data;
        }
        if ($pin != 12) {
            $data = [
                'status'    => false,
                'msg'       => 'Độ dài mã thẻ không phù hợp'
            ];
            return $data;
        }
    }
    $data = [
        'status'    => true,
        'msg'       => 'Success'
    ];
    return $data;
}
function checkCoupon($coupon, $user_id, $total_money)
{
    global $CMSNT;
    // check coupon có tồn tại hay không
    if ($coupon = $CMSNT->get_row("SELECT * FROM `coupons` WHERE `code` = '".check_string($coupon)."' AND `min` <= $total_money AND `max` >= $total_money AND `used` < `amount` ")) {
        // chek số lượng còn hay không
        if ($CMSNT->num_rows(" SELECT * FROM coupon_used WHERE `coupon_id` = '".$coupon['id']."' ") < $coupon['amount']) {
            // check đã dùng hay chưa
            if (!$CMSNT->get_row("SELECT * FROM `coupon_used` WHERE `coupon_id` = '".$coupon['id']."' AND `user_id` = '".$user_id."' ")) {
                return $coupon['discount'];
            }
            return false;
        }
        return false;
    }
    return false;
}
function active_sidebar_client($action)
{
    foreach ($action as $row) {
        $row2 = explode('/', $row);
        if(isset($row2[1])){
            if(isset($_GET['shop']) && $_GET['shop'] == $row2[1]){
                return 'active';
            }
        }
        if (isset($_GET['action']) && $_GET['action'] == $row) {
            return 'active';
        }
    }
    return '';
}
 
function show_sidebar_client($action)
{
    foreach ($action as $row) {
        if (isset($_GET['action']) && $_GET['action'] == $row) {
            return 'show';
        }
    }
    return '';
}


function parse_order_id($des, $MEMO_PREFIX)
{
    $re = '/'.$MEMO_PREFIX.'\d+/im';
    preg_match_all($re, $des, $matches, PREG_SET_ORDER, 0);
    if (count($matches) == 0) {
        return null;
    }
    // Print the entire match result
    $orderCode = $matches[0][0];
    $prefixLength = strlen($MEMO_PREFIX);
    $orderId = intval(substr($orderCode, $prefixLength));
    return $orderId ;
}
function display_status_toyyibpay($status)
{
    if ($status == 0) {
        return '<b style="color:#db7e06;">'.__('Waiting').'</b>';
    } elseif ($status == 'confirming') {
        return '<b style="color:blue;">'.__('Confirming').'</b>';
    } elseif ($status == 'confirmed') {
        return '<b style="color:green;">'.__('Confirmed').'</b>';
    } elseif ($status == 'refunded') {
        return '<b style="color:pink;">'.__('Refunded').'</b>';
    } elseif ($status == 'expired') {
        return '<b style="color:red;">'.__('Expired').'</b>';
    } elseif ($status == 2) {
        return '<b style="color:red;">'.__('Failed').'</b>';
    } elseif ($status == 'partially_paid') {
        return '<b style="color:green;">'.__('Partially Paid').'</b>';
    } elseif ($status == 1) {
        return '<b style="color:green;">'.__('Finished').'</b>';
    }
}
function display_status_crypto($status)
{
    if ($status == 'waiting') {
        return '<b style="color:#db7e06;">'.__('Waiting').'</b>';
    } elseif ($status == 'confirming') {
        return '<b style="color:blue;">'.__('Confirming').'</b>';
    } elseif ($status == 'confirmed') {
        return '<b style="color:green;">'.__('Confirmed').'</b>';
    } elseif ($status == 'refunded') {
        return '<b style="color:pink;">'.__('Refunded').'</b>';
    } elseif ($status == 'expired') {
        return '<b style="color:red;">'.__('Expired').'</b>';
    } elseif ($status == 'failed') {
        return '<b style="color:red;">'.__('Failed').'</b>';
    } elseif ($status == 'partially_paid') {
        return '<b style="color:green;">'.__('Partially Paid').'</b>';
    } elseif ($status == 'finished') {
        return '<b style="color:green;">'.__('Finished').'</b>';
    }
}
function display_service($status)
{
    if ($status == 0) {
        return '<b style="color:blue;">Đang chờ xử lý</b>';
    } elseif ($status == 1) {
        return '<b style="color:green;">Hoàn tất</b>';
    } elseif ($status == 2) {
        return '<b style="color:red;">Huỷ</b>';
    } else {
        return '<b style="color:yellow;">Khác</b>';
    }
}
function display_card($status)
{
    if ($status == 0) {
        return '<p class="mb-0 text-info font-weight-bold d-flex justify-content-start align-items-center">'.__('Đang chờ xử lý').'</p>';
    } elseif ($status == 1) {
        return '<p class="mb-0 text-success font-weight-bold d-flex justify-content-start align-items-center">'.__('Thành công').'</p>';
    } elseif ($status == 2) {
        return '<p class="mb-0 text-danger font-weight-bold d-flex justify-content-start align-items-center">'.__('Thất bại').'</p>';
    } else {
        return '<b style="color:yellow;">Khác</b>';
    }
}
function display_invoice_text($status)
{
    if ($status == 0) {
        return __('Đang chờ thanh toán');
    } elseif ($status == 1) {
        return __('Đã thanh toán');
    } elseif ($status == 2) {
        return __('Huỷ bỏ');
    } else {
        return __('Khác');
    }
}
// lấy dữ liệu theo thời gian thực
function getRowRealtime($table, $id, $row)
{
    global $CMSNT;
    return $CMSNT->get_row("SELECT `".$row."` FROM `$table` WHERE `id` = '$id' ")[$row];
}

function get_url(){
    if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on'){
        $url = "https://"; 
    }else {
        $url = "http://";
    }         
    $url.= $_SERVER['HTTP_HOST'];   
    $url.= $_SERVER['REQUEST_URI'];    
    return $url;  
}
// Hàm tạo URL
function base_url($url = '')
{
    global $domain_block;
    $a = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://" . $_SERVER["HTTP_HOST"];
    if ($a == 'http://localhost') {
        $a = 'http://localhost/CMSNT.CO/SHOPCLONE6';
    }
    return $a.'/'.$url;
}
// mã hoá password
function TypePassword($password)
{
    $CMSNT = new DB();
    if ($CMSNT->site('type_password') == 'md5') {
        return md5($password);
    }
    if ($CMSNT->site('type_password') == 'md5md5') {
        return md5(md5($password));
    }
    if ($CMSNT->site('type_password') == 'bcrypt') {
        return password_hash($password, PASSWORD_BCRYPT);
    }
    if ($CMSNT->site('type_password') == 'sha1') {
        return sha1($password);
    }
    return $password;
}
// lấy thông tin user theo id
function getUser($id, $row)
{
    $CMSNT = new DB();
    return $CMSNT->get_row("SELECT * FROM `users` WHERE `id` = '$id' ")[$row];
}
// check định dạng email
function check_email($data)
{
    if (preg_match('/^.+@.+$/', $data, $matches)) {
        return true;
    } else {
        return false;
    }
}
// check định dạng số điện thoại
function check_phone($data)
{
    if (preg_match('/^\+?(\d.*){3,}$/', $data, $matches)) {
        return true;
    } else {
        return false;
    }
}
// get datatime
function gettime()
{
    return date('Y/m/d H:i:s', time());
}

function format_currency2($amount)
{
    $CMSNT = new DB();
    $currency = $CMSNT->site('currency');
    if ($currency == 'USD') {
        return '$'.number_format($amount / $CMSNT->site('usd_rate'), 2, '.', '');
    } elseif ($currency == 'VND') {
        return format_cash($amount).'đ';
    } elseif ($currency == 'THB') {
        return format_cash($amount / 645.36).' THB';
    }
} 
function format_currency($amount){
    $CMSNT = new DB();
    if (isset($_COOKIE['currency'])) {
        $currency = check_string($_COOKIE['currency']);
        $rowCurrency = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `id` = '$currency' AND `display` = 1 ");
        if ($rowCurrency) {
            if($rowCurrency['seperator'] == 'comma'){
                $seperator = ',';
            }
            if($rowCurrency['seperator'] == 'space'){
                $seperator = '';
            }
            if($rowCurrency['seperator'] == 'dot'){
                $seperator = '.';
            } 
            return $rowCurrency['symbol_left'].number_format($amount / $rowCurrency['rate'], $rowCurrency['decimal_currency'], '.', $seperator).$rowCurrency['symbol_right'];
        }
    }
    $rowCurrency = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `default_currency` = 1 ");
    if ($rowCurrency) {
        if($rowCurrency['seperator'] == 'comma'){
            $seperator = ',';
        }
        if($rowCurrency['seperator'] == 'space'){
            $seperator = '';
        }
        if($rowCurrency['seperator'] == 'dot'){
            $seperator = '.';
        }
        return $rowCurrency['symbol_left'].number_format($amount / $rowCurrency['rate'], $rowCurrency['decimal_currency'], '.', $seperator).$rowCurrency['symbol_right'];
    }
    return format_cash($amount).'đ';
}
//show ip
function myip()
{
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip_address = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip_address = $_SERVER['REMOTE_ADDR'];
    }
    if(isset(explode(',', $ip_address)[1])){
        return explode(',', $ip_address)[0];
    }
    return check_string($ip_address);
}
// lọc input
function check_string($data)
{
    return trim(htmlspecialchars(addslashes($data)));
    //return str_replace(array('<',"'",'>','?','/',"\\",'--','eval(','<php'),array('','','','','','','','',''),htmlspecialchars(addslashes(strip_tags($data))));
}
// định dạng tiền tệ
function format_cash($number, $suffix = '')
{
    return number_format($number, 0, ',', '.') . "{$suffix}";
}
function create_slug($string)
{
    $search = array(
        '#(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)#',
        '#(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)#',
        '#(ì|í|ị|ỉ|ĩ)#',
        '#(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)#',
        '#(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)#',
        '#(ỳ|ý|ỵ|ỷ|ỹ)#',
        '#(đ)#',
        '#(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)#',
        '#(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)#',
        '#(Ì|Í|Ị|Ỉ|Ĩ)#',
        '#(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)#',
        '#(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)#',
        '#(Ỳ|Ý|Ỵ|Ỷ|Ỹ)#',
        '#(Đ)#',
        "/[^a-zA-Z0-9\-\_]/",
    );
    $replace = array(
        'a',
        'e',
        'i',
        'o',
        'u',
        'y',
        'd',
        'A',
        'E',
        'I',
        'O',
        'U',
        'Y',
        'D',
        '-',
    );
    $string = preg_replace($search, $replace, $string);
    $string = preg_replace('/(-)+/', '-', $string);
    $string = strtolower($string);
    return $string;
}
function checkAddon($id_addon){
    $CMSNT = new DB();
    $domain = str_replace('www.', '', $_SERVER['HTTP_HOST']);
    if($CMSNT->get_row("SELECT * FROM `addons` WHERE `id` = '$id_addon' ")['purchase_key'] == md5($domain.'|'.$id_addon)){
        return true;
    }
    return true;
}
// curl get
function curl_get($url){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_TIMEOUT, 10);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}
function curl_get2($url){
    $arrContextOptions=array(
        "ssl"=>array(
            "verify_peer"=>false,
            "verify_peer_name"=>false,
        ),
    ); 
    return file_get_contents($url, false, stream_context_create($arrContextOptions));
}
function curl_dataPost($url, $dataPost){
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $url,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => $dataPost,
    ));
    $response = curl_exec($curl);
    curl_close($curl);
    return $response;
}
function curl_post($url, $method, $postinfo, $cookie_file_path)
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_HEADER, true);
    curl_setopt($ch, CURLOPT_NOBODY, false);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_COOKIE, $cookie_file_path);
    curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file_path);
    curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file_path);
    curl_setopt(
        $ch,
        CURLOPT_USERAGENT,
        "Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7"
    );
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_REFERER, $_SERVER['REQUEST_URI']);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
    if ($method=='POST') {
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postinfo);
    }
    $html = curl_exec($ch);
    curl_close($ch);
    return $html;
}
function convertTokenToCookie($token)
{
    $html = json_decode(file_get_contents("https://api.facebook.com/method/auth.getSessionforApp?access_token=$token&format=json&new_app_id=350685531728&generate_session_cookies=1"), true);
    $cookie = $html['session_cookies'][0]['name']."=".$html['session_cookies'][0]['value'].";".$html['session_cookies'][1]['name']."=".$html['session_cookies'][1]['value'].";".$html['session_cookies'][2]['name']."=".$html['session_cookies'][2]['value'].";".$html['session_cookies'][3]['name']."=".$html['session_cookies'][3]['value'];
    return $cookie;
} 
// hàm tạo string random
function random($string, $int)
{
    return substr(str_shuffle($string), 0, $int);
}
// Hàm redirect
function redirect($url){
    header("Location: ".$url);
    exit();
}

// show active sidebar AdminLTE3
function active_sidebar($action)
{
    foreach ($action as $row) {
        if (isset($_GET['action']) && $_GET['action'] == $row) {
            return 'active';
        }
    }
    return '';
}
function menuopen_sidebar($action)
{
    foreach ($action as $row) {
        if (isset($_GET['action']) && $_GET['action'] == $row) {
            return 'menu-open';
        }
    }
    return '';
}

// Hàm lấy value từ $_POST
function input_post($key)
{
    return isset($_POST[$key]) ? trim($_POST[$key]) : false;
}

// Hàm lấy value từ $_GET
function input_get($key)
{
    return isset($_GET[$key]) ? trim($_GET[$key]) : false;
}

// Hàm kiểm tra submit
function is_submit($key)
{
    return (isset($_POST['request_name']) && $_POST['request_name'] == $key);
}

function display_mark($data)
{
    if ($data == 1) {
        $show = '<span class="badge badge-success">Có</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-danger">Không</span>';
    }
    return $show;
}
// display banned
function display_banned($banned)
{
    if ($banned != 1) {
        return '<span class="badge badge-success">Active</span>';
    } else {
        return '<span class="badge badge-danger">Banned</span>';
    }
}
// display online
function display_online($time)
{
    if (time() - $time <= 300) {
        return '<span class="badge badge-success">Online</span>';
    } else {
        return '<span class="badge badge-danger">Offline</span>';
    }
}
// hiển thị cờ quốc gia
function display_flag($data)
{
    return '<img src="https://flagcdn.com/40x30/'.$data.'.png" >';
}
function display_live($data)
{
    if ($data == 'LIVE') {
        $show = '<span class="badge badge-success">LIVE</span>';
    } elseif ($data == 'DIE') {
        $show = '<span class="badge badge-danger">DIE</span>';
    }
    return $show;
}
function display_checklive($data)
{
    if ($data == 1) {
        $show = '<span class="badge badge-success">Có</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-danger">Không</span>';
    }
    return $show;
}
function card24h($telco, $amount, $serial, $pin, $trans_id){
    global $CMSNT;
    $partner_id = $CMSNT->site('partner_id_card');
    $partner_key = $CMSNT->site('partner_key_card');
    $url = ('https://thesieure.com/chargingws/v2?sign=').md5($partner_key.$pin.$serial).'&telco='.$telco.'&code='.$pin.'&serial='.$serial.'&amount='.$amount.'&request_id='.$trans_id.'&partner_id='.$partner_id.'&command=charging';
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $data = curl_exec($ch);
    curl_close($ch);
    return json_decode($data, true);
}
function display_autofb($data){
    if ($data == 1) {
        $show = '<span class="badge badge-success">'.__('Hoàn thành').'</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-warning">'.__('Đang xử lý').'</span>';
    } elseif ($data == 2) {
        $show = '<span class="badge badge-danger">'.__('Huỷ').'</span>';
    }
    return $show;
}
// hiển thị trạng thái hiển thị
function display_status_product($data)
{
    if ($data == 1) {
        $show = '<span class="badge badge-success">Hiển thị</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-danger">Ẩn</span>';
    }
    return $show;
}
//display rank admin
function display_role($data)
{
    if ($data == 1) {
        $show = '<span class="badge badge-danger">Admin</span>';
    } elseif ($data == 0) {
        $show = '<span class="badge badge-info">Member</span>';
    }
    return $show;
}
// Hàm show msg
function msg_success($text, $url, $time)
{
    return die('<script type="text/javascript">swal("Thành Công", "'.$text.'","success");
    setTimeout(function(){ location.href = "'.$url.'" },'.$time.');</script>');
}
function msg_error($text, $url, $time)
{
    return die('<script type="text/javascript">swal("Thất Bại", "'.$text.'","error");
    setTimeout(function(){ location.href = "'.$url.'" },'.$time.');</script>');
}
function msg_warning($text, $url, $time)
{
    return die('<script type="text/javascript">swal("Thông Báo", "'.$text.'","warning");
    setTimeout(function(){ location.href = "'.$url.'" },'.$time.');</script>');
}
//paginationBoostrap
function paginationBoostrap($url, $start, $total, $kmess)
{
    $out[] = '<ul class="pagination">';
    $neighbors = 2;
    if ($start >= $total) {
        $start = max(0, $total - (($total % $kmess) == 0 ? $kmess : ($total % $kmess)));
    } else {
        $start = max(0, (int)$start - ((int)$start % (int)$kmess));
    }
    $base_link = '<li class="page-item"><a class="page-link" href="' . strtr($url, array('%' => '%%')) . 'page=%d' . '">%s</a></li>';
    $out[] = $start == 0 ? '' : sprintf($base_link, $start / $kmess, '<i class="far fa-hand-point-left"></i>');
    if ($start > $kmess * $neighbors) {
        $out[] = sprintf($base_link, 1, '1');
    }
    if ($start > $kmess * ($neighbors + 1)) {
        $out[] = '<li class="page-item"><a class="page-link">...</a></li>';
    }
    for ($nCont = $neighbors;$nCont >= 1;$nCont--) {
        if ($start >= $kmess * $nCont) {
            $tmpStart = $start - $kmess * $nCont;
            $out[] = sprintf($base_link, $tmpStart / $kmess + 1, $tmpStart / $kmess + 1);
        }
    }
    $out[] = '<li class="page-item active"><a class="page-link">' . ($start / $kmess + 1) . '</a></li>';
    $tmpMaxPages = (int)(($total - 1) / $kmess) * $kmess;
    for ($nCont = 1;$nCont <= $neighbors;$nCont++) {
        if ($start + $kmess * $nCont <= $tmpMaxPages) {
            $tmpStart = $start + $kmess * $nCont;
            $out[] = sprintf($base_link, $tmpStart / $kmess + 1, $tmpStart / $kmess + 1);
        }
    }
    if ($start + $kmess * ($neighbors + 1) < $tmpMaxPages) {
        $out[] = '<li class="page-item"><a class="page-link">...</a></li>';
    }
    if ($start + $kmess * $neighbors < $tmpMaxPages) {
        $out[] = sprintf($base_link, $tmpMaxPages / $kmess + 1, $tmpMaxPages / $kmess + 1);
    }
    if ($start + $kmess < $total) {
        $display_page = ($start + $kmess) > $total ? $total : ($start / $kmess + 2);
        $out[] = sprintf($base_link, $display_page, '<i class="far fa-hand-point-right"></i>
        ');
    }
    $out[] = '</ul>';
    return implode('', $out);
}
function check_img($img)
{
    $filename = $_FILES[$img]['name'];
    $ext = explode(".", $filename);
    $ext = end($ext);
    $valid_ext = array("png","jpeg","jpg","PNG","JPEG","JPG","gif","GIF");
    if (in_array($ext, $valid_ext)) {
        return true;
    }
}
function timeAgo($time_ago)
{
    $time_ago = empty($time_ago) ? 0 : $time_ago;
    if ($time_ago == 0) {
        return '--';
    }
    $time_ago   = date("Y-m-d H:i:s", $time_ago);
    $time_ago   = strtotime($time_ago);
    $cur_time   = time();
    $time_elapsed   = $cur_time - $time_ago;
    $seconds    = $time_elapsed ;
    $minutes    = round($time_elapsed / 60);
    $hours      = round($time_elapsed / 3600);
    $days       = round($time_elapsed / 86400);
    $weeks      = round($time_elapsed / 604800);
    $months     = round($time_elapsed / 2600640);
    $years      = round($time_elapsed / 31207680);
    // Seconds
    if ($seconds <= 60) {
        return "$seconds ".__('giây trước');
    }
    //Minutes
    elseif ($minutes <= 60) {
        return "$minutes ".__('phút trước');
    }
    //Hours
    elseif ($hours <= 24) {
        return "$hours ".__('tiếng trước');
    }
    //Days
    elseif ($days <= 7) {
        if ($days == 1) {
            return __('Hôm qua');
        } else {
            return "$days ".__('ngày trước');
        }
    }
    //Weeks
    elseif ($weeks <= 4.3) {
        return "$weeks ".__('tuần trước');
    }
    //Months
    elseif ($months <=12) {
        return "$months ".__('tháng trước');
    }
    //Years
    else {
        return "$years ".__('năm trước');
    }
}

function timeAgo2($time_ago)
{
    $time_ago   = date("Y-m-d H:i:s", $time_ago);
    $time_ago   = strtotime($time_ago);
    $time_elapsed   = $time_ago;
    $seconds    = $time_elapsed ;
    $minutes    = round($time_elapsed / 60);
    $hours      = round($time_elapsed / 3600);
    $days       = round($time_elapsed / 86400);
    $weeks      = round($time_elapsed / 604800);
    $months     = round($time_elapsed / 2600640);
    $years      = round($time_elapsed / 31207680);
    // Seconds
    if ($seconds <= 60) {
        return "$seconds giây";
    }
    //Minutes
    elseif ($minutes <= 60) {
        return "$minutes phút";
    }
    //Hours
    elseif ($hours <= 24) {
        return "$hours tiếng";
    }
    //Days
    elseif ($days <= 7) {
        if ($days == 1) {
            return "$days ngày";
        } else {
            return "$days ngày";
        }
    }
    //Weeks
    elseif ($weeks <= 4.3) {
        return "$weeks tuần";
    }
    //Months
    elseif ($months <=12) {
        return "$months tháng";
    }
    //Years
    else {
        return "$years năm";
    }
}
function CheckLiveClone($uid){
    //$json = json_decode(curl_get("https://graph.facebook.com/".$uid."/picture?redirect=false"), true);
    $json = json_decode(curl_get("https://graph2.facebook.com/v3.3/".$uid."/picture?redirect=0"), true);
    if ($json['data']) {
        if (empty($json['data']['height']) && empty($json['data']['width'])) {
            return 'DIE';
        } else {
            return 'LIVE';
        }
    }
    // else if($json['error']){
    //     return 'DIE';
    // }
    else{
        return 'LIVE';
    }
}
function dirToArray($dir)
{
    $result = array();

    $cdir = scandir($dir);
    foreach ($cdir as $key => $value) {
        if (!in_array($value, array(".",".."))) {
            if (is_dir($dir . DIRECTORY_SEPARATOR . $value)) {
                $result[$value] = dirToArray($dir . DIRECTORY_SEPARATOR . $value);
            } else {
                $result[] = $value;
            }
        }
    }

    return $result;
}

 function realFileSize($path)
 {
     if (!file_exists($path)) {
         return false;
     }

     $size = filesize($path);

     if (!($file = fopen($path, 'rb'))) {
         return false;
     }

     if ($size >= 0) {//Check if it really is a small file (< 2 GB)
        if (fseek($file, 0, SEEK_END) === 0) {//It really is a small file
            fclose($file);
            return $size;
        }
     }

     //Quickly jump the first 2 GB with fseek. After that fseek is not working on 32 bit php (it uses int internally)
     $size = PHP_INT_MAX - 1;
     if (fseek($file, PHP_INT_MAX - 1) !== 0) {
         fclose($file);
         return false;
     }

     $length = 1024 * 1024;
     while (!feof($file)) {//Read the file until end
         $read = fread($file, $length);
         $size = bcadd($size, $length);
     }
     $size = bcsub($size, $length);
     $size = bcadd($size, strlen($read));

     fclose($file);
     return $size;
 }
function FileSizeConvert($bytes)
{
    $bytes = floatval($bytes);
    $arBytes = array(
            0 => array(
                "UNIT" => "TB",
                "VALUE" => pow(1024, 4)
            ),
            1 => array(
                "UNIT" => "GB",
                "VALUE" => pow(1024, 3)
            ),
            2 => array(
                "UNIT" => "MB",
                "VALUE" => pow(1024, 2)
            ),
            3 => array(
                "UNIT" => "KB",
                "VALUE" => 1024
            ),
            4 => array(
                "UNIT" => "B",
                "VALUE" => 1
            ),
        );

    foreach ($arBytes as $arItem) {
        if ($bytes >= $arItem["VALUE"]) {
            $result = $bytes / $arItem["VALUE"];
            $result = str_replace(".", ",", strval(round($result, 2)))." ".$arItem["UNIT"];
            break;
        }
    }
    return $result;
}
function GetCorrectMTime($filePath)
{
    $time = filemtime($filePath);

    $isDST = (date('I', $time) == 1);
    $systemDST = (date('I') == 1);

    $adjustment = 0;

    if ($isDST == false && $systemDST == true) {
        $adjustment = 3600;
    } elseif ($isDST == true && $systemDST == false) {
        $adjustment = -3600;
    } else {
        $adjustment = 0;
    }

    return ($time + $adjustment);
}
function DownloadFile($file)
{ // $file = include path
    if (file_exists($file)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename='.basename($file));
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file));
        ob_clean();
        flush();
        readfile($file);
        exit;
    }
}
function getFileType(string $url): string
{
    $filename=explode('.', $url);
    $extension=end($filename);

    switch ($extension) {
        case 'pdf':
            $type=$extension;
            break;
        case 'docx':
        case 'doc':
            $type='word';
            break;
        case 'xls':
        case 'xlsx':
            $type='excel';
            break;
        case 'mp3':
        case 'ogg':
        case 'wav':
            $type='audio';
            break;
        case 'mp4':
        case 'mov':
            $type='video';
            break;
        case 'zip':
        case '7z':
        case 'rar':
            $type='archive';
            break;
        case 'jpg':
        case 'jpeg':
        case 'png':
            $type='image';
            break;
        default:
            $type='alt';
    }

    return $type;
}

function getLocation($ip)
{
    if($ip = '::1'){
        $data = [
            'country' => 'VN'
        ];
        return $data;
    }
    $url = "http://ipinfo.io/" . $ip;
    $location = json_decode(file_get_contents($url), true);
    return $location;
}
function pagination($url, $start, $total, $kmess)
{
    $out[] = ' <div class="paging_simple_numbers"><ul class="pagination">';
    $neighbors = 2;
    if ($start >= $total) $start = max(0, $total - (($total % $kmess) == 0 ? $kmess : ($total % $kmess)));
    else $start = max(0, (int)$start - ((int)$start % (int)$kmess));
    $base_link = '<li class="paginate_button page-item previous "><a class="page-link" href="' . strtr($url, array('%' => '%%')) . 'page=%d' . '">%s</a></li>';
    $out[] = $start == 0 ? '' : sprintf($base_link, $start / $kmess, 'Previous');
    if ($start > $kmess * $neighbors) $out[] = sprintf($base_link, 1, '1');
    if ($start > $kmess * ($neighbors + 1)) $out[] = '<li class="paginate_button page-item previous disabled"><a class="page-link">...</a></li>';
    for ($nCont = $neighbors;$nCont >= 1;$nCont--) if ($start >= $kmess * $nCont) {
        $tmpStart = $start - $kmess * $nCont;
        $out[] = sprintf($base_link, $tmpStart / $kmess + 1, $tmpStart / $kmess + 1);
    }
    $out[] = '<li class="paginate_button page-item previous active"><a class="page-link">' . ($start / $kmess + 1) . '</a></li>';
    $tmpMaxPages = (int)(($total - 1) / $kmess) * $kmess;
    for ($nCont = 1;$nCont <= $neighbors;$nCont++) if ($start + $kmess * $nCont <= $tmpMaxPages) {
        $tmpStart = $start + $kmess * $nCont;
        $out[] = sprintf($base_link, $tmpStart / $kmess + 1, $tmpStart / $kmess + 1);
    }
    if ($start + $kmess * ($neighbors + 1) < $tmpMaxPages) $out[] = '<li class="paginate_button page-item previous disabled"><a class="page-link">...</a></li>';
    if ($start + $kmess * $neighbors < $tmpMaxPages) $out[] = sprintf($base_link, $tmpMaxPages / $kmess + 1, $tmpMaxPages / $kmess + 1);
    if ($start + $kmess < $total)
    {
        $display_page = ($start + $kmess) > $total ? $total : ($start / $kmess + 2);
        $out[] = sprintf($base_link, $display_page, 'Next');
    }
    $out[] = '</ul></div>';
    return implode('', $out);
}

function check_path($path){
    return preg_replace("/[^A-Za-z0-9_-]/", '', check_string($path));
}