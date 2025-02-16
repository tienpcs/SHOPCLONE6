<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => __('Nâng Cấp Tài Khoản').' | '.$CMSNT->site('title'),
    'desc'   => $CMSNT->site('description'),
    'keyword' => $CMSNT->site('keywords')
];
$body['header'] = '

';
$body['footer'] = '

';

require_once(__DIR__.'/../../../models/is_user.php');
if ($CMSNT->site('status_napthe') != 1) {
    redirect(base_url(''));
}
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?>
<div class="content-page">
    <h3 class="text-center">Các Cấp Bậc Tài Khoản</h3>
<div class="container-fluid">
   <div class="row">
      <div class="col-sm-12">
         <div class="card">
            <div class="card-body">
               <div class="table-responsive pricing pt-2">
                  <table id="my-table" class="table">
                     <thead>
                        <tr>
                           <th class="text-center prc-wrap"></th>
                           <th class="text-center prc-wrap">
                              <div class="prc-box">
                                 <div class="h3 pt-4">0 VNĐ<small>/1 Tháng</small>
                                 </div> <span class="type">Thành Viên</span>
                              </div>
                           </th>
                           <th class="text-center prc-wrap">
                              <div class="prc-box">
                                 <div class="h3 pt-4">200.000 VNĐ<small>/1 Tháng</small>
                                 </div> <span class="type">CTV</span>
                              </div>
                           </th>
                           <th class="text-center prc-wrap">
                              <div class="prc-box">
                                 <div class="h3 pt-4">500.000 VNĐ<small>/1 Tháng</small>
                                 </div> <span class="type">Đại lý</span>
                              </div>
                           </th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <th class="text-center" scope="row">Các Tính Năng Cơ Bản</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Tích Hợp API
</th>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Hỗ Trợ Mua Hàng
</th>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Bán Hàng Trên Web</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Nhận Vé Vòng Quay
</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                             </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Chiết Khấu Thành Viên</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                          <th class="text-center" scope="row">Nhận Vé Vòng Quay
</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                             </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Ưu Đãi Mua Hàng Cực Khủng</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <th class="text-center" scope="row">Ưu Đãi Nạp Tiền Cực Khủng</th>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell active">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                           <td class="text-center child-cell">
                              <svg xmlns="http://www.w3.org/2000/svg" class="text-primary" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                              </svg>
                           </td>
                        </tr>
                        <tr>
                           <td class="text-center">
                           <td class="text-center"> <a href="#" class="btn btn-primary mt-3">Đang Dùng</a>
                           </td>
                           <td class="text-center"> <a href="/client/recharge" class="btn btn-primary mt-3">Nâng Ngay</a>
                           </td>
                           <td class="text-center"> <a href="/client/recharge" class="btn btn-primary mt-3">Nâng Ngay</a>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
      </div>
</div>
<!-- Wrapper End-->
<?php require_once(__DIR__.'/footer.php');?>