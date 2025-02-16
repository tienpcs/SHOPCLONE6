<?php

$vd = @$_GET['vd'];
echo '<center>';
echo '<h1>Mã Hóa Md5 Online</h1>';

echo '<form action="tools.php" action="get">
Nhập Mật khẩu:<br/>
<input name="act" type="hidden" value="md5" /><br/>
<input name="vd" value="123456" /><br/>
 <input type=submit value="Mã hóa ngay" />
</form><br/>';
if(isset($vd)){
for ($i=1;$i<10;$i++){
if($i==1){ $ma = $vd;}
$ma = md5($ma);
echo '<b>Mã hóa <font color="red">'.$i.'</font> lần</b>:<br/>
<textarea>'.$ma.'</textarea><br/>
';
}
}

echo '</center>';
