<?php

require_once('./data/bootstrap.php');
///////////////////////////////////////////
//Bảo vệ nhưng có vẻ dư thừa
if(!isset($admincpok)){ header("location: index.php"); chmt(0,'index.php'); exit;}
//KT
/////////////////////////////////////////////

if(isset($_GET['f']) && isset($_GET['d'])){
$f = @$_GET['f'];
$d = @$_GET['d'];

echo Registry::get('top');

echo '<div class="title">Tuỳ chọn</div>';
echo'<div class="list1"><img src="data/vtr/img/quay.png" alt="back"/> <a href="'.$_SERVER['HTTP_REFERER'].'">'.$chuyenngu['back'].'</a></div>
<div style="display:none;"><span id="chF">Kiểm tra file hoặc thư mục</span><span id="delN">Bạn có chắc muốn xóa?</span></div>';
echo '<div class="list1">';
if(is_file($d.$f)){
echo '
<img src="data/vtr/img/sua.png" alt=""/>  '.$chuyenngu['chinhsua'].' <a href="edit.php?'.$d.$f.'">G</a> |  
	<a href="tools.php?f='.$f.'&act=f&ft=edit&d='.$d.'">S</a> | 
	<a href="suavb.php?f='.$d.$f.'">T</a><br/>
<img src="data/vtr/img/option.png" alt=""/>  <a href="change.php?'.$d.$f.'"> '.$chuyenngu['thaydoi'].'</a><br/>
<img src="data/vtr/img/xem.png" alt=""/>  <a href="tools.php?act=f&f='.$f.'&ft=code&white=1&d='.$d.'"> '.$chuyenngu['xemnd'].'</a><br/>
<img src="data/vtr/img/tick.png" alt=""/>  <a href="edit.php?go=validator&c='.$d.$f.'"> '.$chuyenngu['ktloi'].' XML</a><br/>
<img src="data/vtr/img/tick.jpg" alt=""/>  <a href="edit.php?go=syntax&c='.$d.$f.'"> '.$chuyenngu['ktloi'].' PHP</a><br/>
<img src="data/vtr/img/hex.png" alt=""/>  <a href="tools.php?act=f&f='.$f.'&ft=info&d'.$d.'"> '.$chuyenngu['xemma'].' HEX</a><br/>
<img src="data/vtr/img/down.png" alt=""/>  <a href="change.php?get='.$d.$f.'"> '.$chuyenngu['tai'].'</a><br/>
<img src="data/vtr/img/Info.png" alt=""/>  <a href="tools.php?f='.$f.'&act=f&ft=info&d='.$d.'"> '.$chuyenngu['info'].'</a><br/>
<img src="data/vtr/img/Key.png" alt=""/>  <a href="change.php?go=chmod&c='.$f.'"> '.$chuyenngu['thaydoi'].' (CHMOD)</a><br/>
<img src="data/vtr/img/xoa.png" alt=""/>  <a href="change.php?go=del&c='.$f.'"  onclick="return (Gmanager.checkForm(document.forms[1],"check[]") &amp;&amp; Gmanager.delNotify());" "> '.$chuyenngu['xoa'].'</a><br/>
';
}else{
echo '
<img src="data/vtr/img/FolderUp.png" alt=""/>  <a href="index.php?'.$d.$f.'"> '.$chuyenngu['mo'].'</a><br/>
<img src="data/vtr/img/next.gif" alt=""/>  <a href="change.php?'.$d.$f.'"> '.$chuyenngu['thaydoi'].'</a><br/>
<img src="data/vtr/img/Key.png" alt=""/>  <a href="change.php?go=chmod&c='.$f.'"> '.$chuyenngu['thaydoi'].' (CHMOD)</a><br/>
<img src="data/vtr/img/xoa.png" alt=""/>  <a href="change.php?go=del&c='.$f.'"  onclick="return (Gmanager.checkForm(document.forms[1],"check[]") &amp;&amp; Gmanager.delNotify());" > '.$chuyenngu['xoa'].'</a><br/>
';
}
echo '</div>';


echo  Registry::get('foot');
;
}else{
header("location: index.php");
}
