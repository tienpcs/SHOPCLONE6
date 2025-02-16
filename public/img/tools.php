<?php

require_once('./data/bootstrap.php');
///////////////////////////////////////////
//Bảo vệ nhưng có vẻ dư thừa
if(!isset($admincpok)){ header("location: index.php"); chmt(0,'index.php'); exit;}
//KT
/////////////////////////////////////////////

echo Registry::get('top');
///////////////////////////////////////////////////////////////////////////////
//Công cụ GET
///////////////////////////////////////////////////////////////////////////////
$act = @$_GET['act'];

if(file_exists('data/tools/'.$act.'.php'))
{
$surl = './tools.php?';

require_once('data/tools/'.$act.'.php');
}
else{


echo'

'.tieude($chuyenngu['qlfile']).'
<img src="data/vtr/icon/php.png" alt=""/> <a href="index.php"><font color=red>'.$chuyenngu['cgamana'].'</font></a><br/> 
'.tieude($chuyenngu['qlsql']).'
<img src="data/vtr/img/pma.png" alt=""/>  <a href="saoluu/index.php"><font color=red>PHPminiAdmin SQL</font></a><br/> 
<img src="data/vtr/icon/sql.png" alt=""/>  <a href="tools.php?act=saoluu"><font color=red>'.$chuyenngu['saoluusql'].'</font></a><br/>
'.tieude($chuyenngu['mahoa']).'
<img src="data/vtr/img/pass.png" alt=""/>  <a href="tools.php?act=md5">'.$chuyenngu['mahoamd5'].'</a><br/> 
'.tieude($chuyenngu['tonghop']).'
<img src="data/vtr/icon/exe.png" alt=""/> <a href="change.php?go=eval&c=./">'.$chuyenngu['chayphp'].'</a><br/> 
<img src="data/vtr/img/Info.png" alt=""/> <a href="tools.php?act=phpinfo">'.$chuyenngu['phpinfo'].'</a><br/> 
<img src="data/vtr/icon/htm.png" alt=""/> <a href="tools.php?act=html">'.$chuyenngu['chay'].' HTML/CSS</a><br/> 
<img src="data/vtr/icon/css.png" alt=""/> <a href="tools.php?act=mamau">'.$chuyenngu['htmlcode'].'</a><br/> 
<img src="data/vtr/icon/sql.png" alt=""/>   <a href="change.php?go=mysql&c=./">'.$chuyenngu['chay'].' MySQL</a><br/> 
<img src="data/vtr/img/cpanel.png" alt=""/>   <a href="change.php?go=sqlite&c=./">'.$chuyenngu['chay'].' MySQLite</a><br/> 
<img src="data/vtr/img/pma.png" alt=""/>   <a href="change.php?go=sql_installer&c=./">'.$chuyenngu['taocaidat'].' MySQL</a><br/> 
<img src="data/vtr/img/next.gif" alt=""/>   <a href="change.php?go=scan&c=./">'.$chuyenngu['kiemtra'].' Header URL</a><br/> 
<img src="data/vtr/img/Email.png" alt=""/>   <a href="change.php?go=send_mail&c=./">'.$chuyenngu['gui'].' E-Mail</a><br/> ';

}


echo Registry::get('foot');
