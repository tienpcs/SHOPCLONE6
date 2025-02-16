<?php
/**
 * 
 * This software is distributed under the GNU GPL v3.0 license.
 * @author Gemorroj
 * @copyright 2008-2012 http://wapinet.ru
 * @license http://www.gnu.org/licenses/gpl-3.0.txt
 * @link http://wapinet.ru/gmanager/
 * @version 0.8.1
 * 
 * PHP version >= 5.2.3
 * 
 */
 
//Load info file
if(empty($fix_url)){ $fix_url = '.';}
require_once($fix_url.'/data/inc/info.php');
require_once($fix_url.'/data/lang/'.$setngonngu);
//$chuyenngu[''];
session_start();
if($settatloi == 'ok'){error_reporting(0);}
//Sửa lỗi mã
	if (get_magic_quotes_gpc())
	{
	if (!function_exists("strips"))
	{
	function strips(&$arr,$k="")
	{if (is_array($arr))
	{foreach($arr as $k=>$v)
	{if (strtoupper($k) != "GLOBALS")
	{strips($arr["$k"]);}}
	} else {
	$arr = stripslashes($arr);}}}
	strips($GLOBALS);}

//Chức năng
function div($b,$n){
	return '<div class="'.$b.'">'.$n.'</div>';
}
function lienket($b,$n){
	return '<a rel="nofollow"  href="'.$b.'">'.$n.'</a>';
}
function trove(){
	return '<a rel="nofollow"  href="'.$_SERVER['HTTP_REFERER'].'"><< Quay lại</a>';
}
function tieude($n){
	return '<div class="title">'.$n.'</div>';
}
function noidung($n){
	return '<div class="list1">'.$n.'</div>';
}
function hinhanh($n){
	return '<img src="'.$n.'" alt="" /> ';
}
function xuongdong($n){
	return '<p></p>';
}
function cbjs($n){
	echo '<script>alert("'.$n.'");</script>';
}
function chmt($tg,$url){
	echo '<meta http-equiv="refresh" content="'.$tg.';'.$url.'">';
}
function ctime($t){ 
if($t>=3600){ $dv = 'giờ'; $tt = round($t/3600);}
elseif($t>=60 && $t<3600){ $dv = 'phút'; $tt = round($t/60);}
elseif($t==''){ $dv = 'giây'; $tt = '0';}
else{$dv = 'giây'; $tt = $t;}
 return "$tt $dv";
}


////////////////////////////
//Phien ban
	$vers = '2.4f';
////////////////////////////
//head foot
	$head = '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi">
		<head><title>'.$chuyenngu['tt'].'</title>
			<meta http-equiv="Content-Type" content="charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="'.$fix_url.'/data/vtr/'.(empty($_COOKIE['setstyle']) ? 'macdinh.css':$_COOKIE['setstyle']).'"/>
			<script type="text/javascript" src="'.$fix_url.'/data/js.js"></script>
		<script type="text/javascript" src="'.$fix_url.'/data/js.source.js"></script>
		</head><body>
		<div class="header" align="center"><a href="'.$fix_url.'/index.php"><h1> LPanel '.$vers.' </h1></a>
		 </div>
		';
    $end = '<div class="header" align="center">
		 
		<h2><a href="'.$fix_url.'/index.php?info">V'.$vers.' - Tmc</a></h2>
		</div></body></html>
		';
//$cookrand = @$_COOKIE['marand']; if(empty($cookrand)){ $cookrand = @$_SESSION['marand'];}
//if(empty($cookrand)){$marand = substr(md5(rand(0,9999)),3,5); setcookie("marand",$marand,time()+30); $_SESSION['marand']=$marand;}
//////////////////]//]//
//TRánh google
$khoabot = $_SESSION['khoabot'];
if(empty($khoabot)){ $khoabot = $_COOKIE['khoabot'];}
if(preg_match("/bot/",$_SERVER['HTTP_USER_AGENT'] && $setxacnhannham=='ok') && $setxacnhannham=='ok'){ exit;}
if($khoabot=='' && $setxacnhannham=='ok'){
	//if($setboqua=='ok'){ chmt(0,'index.php'); exit;}
	$_SESSION['khoabot'] = time();
	@setcookie("khoabot",time(),time()+1800);
	echo cbjs($chuyenngu['welcome']);
		echo $chuyenngu['hihi'];
		//chmt(3,'index.php');
	exit;
}
/////////////////////////
//Khóa kiểm tra
$cookban = $_COOKIE['ban'];
if(empty($cookban)){ $cookban = $_SESSION['ban'];}
$tgcl = $cookban-time();
if($tgcl<='0'){ $tgcl=''; $cookban = '';}
$ctgcl = ctime($tgcl);
///////////////////
if(empty($_COOKIE['setstyle']) || $_COOKIE['setstyle']!==$setstyle){@setcookie("setstyle",$setstyle,time()+24*365*3600);}
if(isset($_COOKIE['lpanel_auth'])){$lpanel_auth = $_COOKIE['lpanel_auth'];}else{$lpanel_auth = $_SESSION['lpanel_auth'];}
//Đặt cấu hình đăng nhập
$chl = explode("|||",base64_decode($lpanel_auth));
$cadmin = $chl[1]; $cpass = $chl[2];
///////////////////////////////////////]/
//
//Khóa chính

$kiemtra_mahoa_ht = base64_encode('LPanel|||'.$setadmin.'|||'.$setpass);
if($cadmin==$setadmin && $cpass==$setpass && $kiemtra_mahoa_ht==$lpanel_auth){
	$admincpok = 'OK';
}
/////////////////////////////////////////////////////
//
//

if(isset($_GET['reset'])){
	echo $head;
		echo tieude($chuyenngu['resetpass']);
		if(isset($_POST['code']) && empty($cookban)){
			$layqmk = file_get_contents($fix_url.'/data/inc/qmk.php');
			if($thoigianqmk>0){
				@chmod($fix_url.'/data/inc/qmk.php',0666);
				$fp = fopen($fix_url.'/data/inc/qmk.php','w');
				fwrite($fp,rand(00000,99999999));
				fclose($fp);
			}
			if(strlen($_POST['code'])>'10' && strlen($layqmk)>5 && $_POST['code'] == $layqmk){
				$catvb22 = explode("-",$layqmk);
				$thoigianqmk = '1800'+$catvb22[1]-time();
				
				if($thoigianqmk>0){
					$lp_cauhinh = $setadmin.'|||'.$setpass;
					setcookie("lpanel_auth", base64_encode('LPanel|||'.$lp_cauhinh),time()+24*1*3600);
					$_SESSION['lpanel_auth'] = base64_encode('LPanel|||'.$setadmin.'|||'.$setpass);
					echo 
					cbjs("Chúc mừng! Nhấn ok để tiếp tục!....")
					.noidung("Chúc mừng! Nhấn ok để tiếp tục ....")
					.chmt('0','index.php');
				}else{
					setcookie("ban",time()+$setthoigianban,$setthoigianban);$_SESSION['ban']=time()+$setthoigianban;
					echo noidung('Bạn bị chặn '.$ctgcl.' giây. Mã bạn nhập đã hết hạn!!').chmt('0','index.php?qmk');

				}
			}else{
				setcookie("ban",time()+$setthoigianban,$setthoigianban);$_SESSION['ban']=time()+$setthoigianban;
				echo noidung("Mã bạn nhập là không đúng hoặc chưa chờ hết $tgcl giây khi bị chặn!!").chmt('0','index.php?qmk');
				
			}
		}else{
			//echo cbjs('Nhập sai sẽ bị khóa '.ctime($setthoigianban).' nên bạn hãy nhập cẩn thận, chính xác ....');
			echo '<div class="list1">';
			echo '<form method="post" action="index.php?reset&">
			Nhập Code:<br/>
			<input type="text" name="code" value="'.@$_GET['code'].'"/><br/>
		'.(empty($cookban) ? '<input type="submit"  value="Đồng ý"/>':'Xin chờ '.$ctgcl.' để thử lại!'.chmt($tgcl,'index.php?qmk')).'</form>
			</div>';
		}

	echo $end; exit;
}elseif(isset($_GET['qmk'])){
echo $head;

	
	echo tieude("Quên mật khẩu");
	$email = @$_POST['email'];
	$da1 = @$_POST['da1'];
	$da2 = @$_POST['da2'];
	if(isset($email)){
		if($email == $setmail && empty($cookban)){
		$rand = 'MXN-'.time().'-'.date("d/m/Y-H:i:s").'-'.md5(md5(rand(0,9999999999999)).'Khó đoán vậy đóa');
		@chmod($fix_url.'/data/inc/qmk.php',0666);
		$fp = fopen($fix_url.'/data/inc/qmk.php','w');
		$urlqmk = 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['SCRIPT_NAME'].'?reset&code='.$rand;
		fwrite($fp,$rand);
		fclose($fp);
			$options="Content-type:text/html;charset=utf-8\r\nFrom:LPanel $ver\r\nReply-to:LPanel";
			$noidungm = 'Xin chào! Ai đó hoặc bạn đã yêu cầu lấy lại mật khẩu qua mail cho Lpanel! Chúng tôi cung cấp cho bạn 1 code để đăng nhập:
			
			Code của bạn là: '.$rand.' 
			
			Hoặc vào đây: '.$urlqmk.'
						
			Hãy sao chép nó và Làm theo hướng dẫn của hệ thống!
			
		    (Từ trang chính của LPanel, Vào Quên mât khẩu > nhập code > )
			
			Lưu ý nó chỉ có thể swr dụng từ thời điểm này đến 30 phút nữa. Sau 30 phút nó sẽ hết hạn. Nhập chính xác vì nếu màn hình điện thoại bạn nhỏ có thể khi copy có kí tự xuống dòng, bạn cần phải xóa nó đi.
			';
			if(mail($setmail,'Quên mật khẩu',$noidungm,$options)){
				echo noidung('Vui lòng check mail!<br/>
					Sau đó copy mã rồi <a rel="nofollow"  href="index.php?reset">vào đây</a> để khôi phục.');
			}else{
				echo noidung("Xin lỗi! Host không hổ trợ!");
			}
		}else{
		echo noidung("Nhập sai E-Mail hoặc mã xác nhận rồi bạn! Hoặc chưa hết thời gian bị chặn!");
			setcookie("ban",time()+$setthoigianban,$setthoigianban);$_SESSION['ban']=time()+$setthoigianban;
			echo cbjs('Bạn bị khóa '.ctime($setthoigianban).' giây vì nhập sai hoặc chưa chờ hết '.ctime($setthoigianban).' giây vui lòng thử lại sau '.ctime($tgcl).' .... :3').chmt(0,'index.php?qmk') ;
			echo trove();
		}
	}elseif(isset($da1) && isset($da2)){
	//if(file_exists('./data/inc/khoa.php')){ mkfil('./data/inc/khoa.php');}
	//$ktkhoa = file_get_contents('./data/inc/khoa.php');
	//if(empty($ktkhoa) || $ktkhoa=='0'){ $ktkhoa =time();}
	//$tght = time()-$ktkhoa;
	//$tgcl = $setthoigianban-$tght;
	//echo $tght;
		if($setcauhoibimat == 'ok' && empty($cookban) &&  $setda1 == $da1 && $setda2 == $da2){
			$lp_cauhinh = $setadmin.'|||'.$setpass;
			setcookie("lpanel_auth", base64_encode('LPanel|||'.$lp_cauhinh),time()+24*1*3600);
			$_SESSION['lpanel_auth'] = base64_encode('LPanel|||'.$lp_cauhinh);
			echo cbjs("Tải lại trang để tiếp tục nếu nó không thực hiện tự động ....").chmt(0,'index.php');

		}else{
		//$fkhoa = fopen('./data/inc/khoa.php','w');
			setcookie("ban",time()+$setthoigianban,$setthoigianban);$_SESSION['ban']=time()+$setthoigianban;
		//fwrite($fkhoa,time());
		echo cbjs('Bạn bị khóa '.ctime($setthoigianban).' giây vì nhập sai hoặc chưa chờ hết '.ctime($setthoigianban).' giây vui lòng thử lại sau '.ctime($tgcl).' ....').chmt(0,'index.php?qmk') ;
		echo trove();
		}
		
	}else{
		if(!empty($cookban)){ 
				cbjs("Bạn bị khóa $ctgcl vì nhập sai ... vui lòng chờ hết thời gian trên để thử lại ...").chmt($tgcl,'index.php?qmk&');
				echo 'Thử lại sau '.$ctgcl.' .....';
		}else{
			echo '<div class="list1">';
			echo '<b>Lấy mật khẩu bằng Email</b> (Chỉ dành cho những host hổ trợ mail(); )<br/> 
			<div class="gmenu"><ul><form method="post" action="index.php?qmk&">
			Nhập Email:<br/>
			<input type="text" name="email" value=""/><br/>
			<input type="submit" value="Quên mật khẩu"/></form>
			
			<img src="data/vtr/img/pass.png" alt=""/> <a rel="nofollow"  href="index.php?reset">Nhập code</a>
			</ul></div> ';
			if($setcauhoibimat =='ok' && strlen($setda1)>6 && strlen($setda2)>6){
			echo '<b>Lấy mật khẩu bằng câu hỏi bí mật</b>
			<div class="gmenu">
			<ul>
			<form method="post" action="index.php?qmk&">
			<font color=red >'.$setch1.'</font>:<br/>
			Đáp án 1: <input type="text" name="da1" size="5" value=""/><br/>
			<font color=red >'.$setch2.'</font>:<br/>
			Đáp án 2: <input type="text" name="da2" size="5"  value=""/><br/>';
			
			echo '<input type="submit" value="Lấy lại mật khẩu"/>';
			
			echo '</form>
			</ul></div>
			<div class="rmenu">
			Nếu nhập sai thì chức năng sẽ tạm khóa trong <font color=red >'.ctime($setthoigianban).'</font>, hãy cẩn thận khi nhập!<br/>
			Chỉ nhập dữ liệu vào 1 trong 2 cách trên.
			</div>';
			}
			echo '</div>';
		}
	}
	echo $end; exit;
}elseif(isset($_GET['info'])){
	echo $head;
	echo '<div class="title">Tác giả</div>
			<div class="list1">
				- Phpminiadmin 1.9.14<br/>
				- Editarea 0.8.2<br/>
				- Gmanager 0.8.1 by Gemorroj<br/>
				- SuperDumper vh by VuThanhLai.<br/>
				- Icon lấy từ wapftp.<br/>
				- c99.php cắt ra.<br/>
	-> Mod, secure, fix ... v'.$vers.' by <a rel="nofollow"  href="http://fb.com/xtmc9x">Tmc</a><br/>
	</div><div class="title">Giới thiệu</div>
	<div class="list1">+ Lpanel là gói tổng hợp của các code khác chuyên dụng để làm wap và fix lại.<br/>
	<ul>- Saoluu.php vh thêm một số phần, lưu cookie trong vòng 1 năm, ....</ul>
	<ul>- Gmanager 0.8.1 mod giao diện giống wapftp, công cụ sửa vb từng trang, 
	đăng nhập tiện lợi.</ul>
	<ul>- c99.php làm gọn là cho phù hợp với giao diện mobile. đầy đủ chức năng từ an toàn đến nguy hiểm.</ul>
	<ul>-> Lpanel tổng hợp lại các code thành 1 gói, fix các lỗi của các code, Menu login 
	giúp bảo mật và tăng tính bảo mật các code trên.</ul>
Phiên bản: 2.4<br/>
	+ Ngày: 1/1/2015<br/>
	+ Truy cập vào chủ đề trên daivietpda.vn để biết thêm thông tin !	
<br/>
Phiên bản: 2.4f<br/>
	+ Ngày: 1/11/2017<br/>
	+
	+ Truy cập vào tab Lpanel trên <a href="http://botay.pro">BoTay.Pro</a> để biết thêm thông tin<div class="title">Trở về</div>
	<div class="list1"><img src="data/vtr/img/quay.png" alt=""/> <a rel="nofollow"  href="index.php"> Quản lí</a></div>

';
	echo $end;exit;
}elseif(isset($_GET['exit'])){
//////////////////////////////////////////////////
//Thoát đăng nhập
	setcookie("lpanel_auth",'',time()+24*365*3600);
	$_SESSION['lpanel_auth'] = '';
	session_destroy();
	echo '<script>alert('.$chuyenngu['thoatra'].');</script>'.chmt(0,'index.php');
	@header("location: index.php");
	exit;
}elseif(isset($_GET['caidat']) &&  $admincpok=='OK'){
	echo $head;
	echo tieude("Thiết lập code");
	echo '<img src="data/vtr/icon/php.png" alt=""/>
	 <a href="index.php?doidangnhap"> Đổi thông tin đăng nhập</a><br/>';

	echo '<img src="data/vtr/icon/php.png" alt=""/>
	 <a href="index.php?tuychonqmk"> Cài đặt quên mật khẩu</a><br/>';

	 echo '<img src="data/vtr/icon/php.png" alt=""/>
	 <a href="index.php"> Chỉnh thiết lập LPanel</a><br/>';

	 echo '<img src="data/vtr/icon/php.png" alt=""/>
	 <a href="index.php"> Bảo mật code</a><br/>';

	echo '.... để bản sau vậy. giờ chưa cần đâu .....!';
	echo $end;exit;
}elseif(isset($_GET['set']) && $admincpok=='OK'){
	echo $head;
	$nten = @$_POST['nten'];
	$npass = @$_POST['npass'];
	$doipass = @$_POST['doipass'];
	$doicss = @$_POST['doicss'];
	$ngonngu = @$_POST['ngonngu'];
	if($doicss=='1'){ $cssmoi = @$_POST['style'];}else{ $cssmoi = $setstyle;}
	if($doipass=='1'){ $mkmoi = md5(md5($npass));}else{ $mkmoi = $setpass;}
	if($doipass=='1'){ $mkmoi = md5(md5($npass));}else{ $mkmoi = $setpass;}
	if($ngonngu!=='00'){$ngonngu = $ngonngu;}else{$ngonngu=$setngonngu;}
	
	if(strlen($nten)>2 && (strlen($mkmoi)>3)){
		if(!file_exists('./data/inc/info.php')){ mkfile('./data/inc/info.php');}
		@chmod('./data/inc/info.php', 0755);
		$fp = fopen('./data/inc/info.php','w');
if(fwrite($fp,'<?php
//////////////////////////////////////////////////////
//			Gmanager mod by Tmc
//			File này lưu trử thông tin đăng nhập
//			Sửa cận thận
//			Mật khẩu phải mã hoá md5 2 lần trước khi viết vào
//////////////////////////////////////////////////////
//Phần thông tin đăng nhập
$setadmin = "'.$nten.'";
//Mật khẩu được mã hoá
$setpass = "'.$mkmoi.'";
//số dòng chỉnh sửa
$setdong = "'.$_POST['dong'].'";
//Công cụ sửa văn bản
$setedit = "'.$_POST['edit'].'";
//Giao diện
$setstyle = "'.$cssmoi.'";
//Email Admin
$setmail = "'.$_POST['email'].'";
//Câu hỏi bí mật
$setcauhoibimat = "'.$_POST['cauhoibimat'].'";
$setch1 = "'.$_POST['ch1'].'";$setch2 = "'.$_POST['ch2'].'";
$setda1 = "'.$_POST['da1'].'";$setda2 = "'.$_POST['da2'].'";
//Thời gian chặn một truy cập nguy hiểm
$setthoigianban = "'.$_POST['thoigianban'].'";
//Phương thức đăng nhập
$settype = "'.$_POST['type'].'";
//Chặn index trang
$setxacnhannham = "'.@$_POST['xacnhannham'].'";
//Tắt thông báo lỗi
$settatloi = "'.@$_POST['tatloi'].'";
//Ngôn ngữ
$setngonngu = "'.$ngonngu.'";
//Chặn boot index
$setgoogle = "'.@$_POST['google'].'";
//Thời gian thực thi sửa văn bản
setcookie("edit",$setedit,time()+24*365*3600);
setcookie("ngonngu",$setngonngu,time()+24*365*3600);
//Tmc - fb.com/xtmc9x
')){
			echo cbjs($chuyenngu['thanhcong']);
		}else{
			echo cbjs($chuyenngu['thatbai']);
		}
		echo '<div class="gmenu">Tải lại trang nếu trang không tự tải lại ....!</div>'.chmt(0,'index.php');
					echo $end; exit;
		}
		fclose($fp);
	echo '<div class="title">Cài đặt</div>';
	echo '<div class="list1">
	<b>'.$chuyenngu['doicaidat'].'</b><br/>
	<form method="post" action="index.php?set"/>
	<div class="rmenu">
		<b><font color=red >'.$chuyenngu['kieucaidat'].' *</font></b><br/>
		<input type="radio" '.($settype=="0" ? 'checked="checked"':'').' name="type" value="0"/> '.$chuyenngu['basic'].'
		<input type="radio" '.($settype=="1" ? 'checked="checked"':'').' name="type" value="1"/> '.$chuyenngu['auth'].'<br/>
	</div><div class="gmenu">
	'.$chuyenngu['ntaikhoan'].' **:<br/>
	<input type="text" name="nten" value="'.$cadmin.'"/><br/>
	'.$chuyenngu['nmatkhau'].' **:<br/>
	<input type="checkbox" value="1" name="doipass"/> <input type="text" name="npass" value=""/>
	</div><div class="rmenu">
		<b>'.$chuyenngu['macdinhtool'].':</b><br/>';
		echo '<input type="radio" name="edit" '.($setedit=='d' ? 'checked="checked"':'').' value="d"/> '.$chuyenngu['congcu'].' Gmanager (G).<br/>';
		echo '<input type="radio" name="edit" '.($setedit=='t' ? 'checked="checked"':'').' value="t"/> '.$chuyenngu['congcu'].' Tmc (T).<br/>';
		echo '<b>'.$chuyenngu['tuychon'].':</b><br/>
		'.$chuyenngu['sodong'].':<br/>
		<input type="text" name="dong" value="50"/>
	</div><div class="gmenu">
		'.$chuyenngu['mailkhoiphuc'].' :<br/>
		<input type="text" name="email" value="'.$setmail.'"/><br/>
		<input type="checkbox" value="ok" name="cauhoibimat"  '.($setcauhoibimat=='ok' ? 'checked="checked"':'').' /> <font color=red >'.$chuyenngu['sudungcauhoi'].'.</font><br/>
		'.$chuyenngu['cauhoi1'].' 1:<br/>
		<input type="text" name="ch1" value="'.$setch1.'"/><br/>
			<ul>'.$chuyenngu['dapan1'].'  <input type="text" name="da1" value="'.$setda1.'"/></ul> 
		'.$chuyenngu['cauhoi2'].':<br/>
		<input type="text" name="ch2" value="'.$setch2.'"/><br/>
			<ul>'.$chuyenngu['dapan2'].' <input type="text" name="da2" value="'.$setda2.'"/></ul> 
	</div><div class="rmenu">
		<b>'.$chuyenngu['ngonngu'].':</b><br/>
		<select name="ngonngu">
		<option value="00">+ '.$chuyenngu['nhutruoc'].'</option>
		<option value="vi.php">+ VI (Việt Nam)</option>
		<option value="en.php">+ EN (English)</option>
		</select><br/>
		<b>'.$chuyenngu['baomat'].':</b><br/>
		'.$chuyenngu['thoigiankhoa'].': 
		<select name="thoigianban">
		<option value="'.$setthoigianban.'">+ '.$chuyenngu['nhutruoc'].': '.ctime($setthoigianban).'</option>
		<option value="30">+ 30 '.$chuyenngu['giay'].'</option>
		<option value="60">+ 1 '.$chuyenngu['phut'].'</option>
		<option value="120">+ 2 '.$chuyenngu['phut'].'</option>
		<option value="300">+ 5 '.$chuyenngu['phut'].'</option>
		<option value="600">+ 10 '.$chuyenngu['phut'].'</option>
		<option value="900">+ 15 '.$chuyenngu['phut'].'</option>
		<option value="1800">+ 30 '.$chuyenngu['phut'].'</option>
		<option value="3600">+ 1 '.$chuyenngu['gio'].'</option>
		<option value="7200">+ 2 '.$chuyenngu['gio'].'</option>
		<option value="0">+ Không sử dụng/Not used</option>
		<select><br/>
		<input type="checkbox" value="ok"  '.($setxacnhannham=='ok' ? 'checked="checked"':'').' name="xacnhannham"/> <font color="red">'.$chuyenngu['batbaove'].'</font><br/>
		</div><div class="gmenu">
		<b>'.$chuyenngu['tuychinh'].' :</b><br/>
		<input type="checkbox" value="ok"  '.($setgoogle=='ok' ? 'checked="checked"':'').' name="google"/> '.$chuyenngu['chanbot'].'.<br/>
		<input type="checkbox" value="ok"  '.($settatloi=='ok' ? 'checked="checked"':'').' name="tatloi"/> '.$chuyenngu['tatloi'].' (error_reporting(0)).<br/>
		<input type="checkbox" value="1" name="doicss"/> '.$chuyenngu['doichude'].'
		<select name="style">';
		$tms = opendir('./data/vtr');
		while($r = readdir($tms)){
			if(preg_match("/.css/",$r)){
				echo '<option value="'.$r.'">'.$r.'</option>';
			}
		}
		echo '</select><br/>
	</div><div class="rmenu">
	<input type="submit" name="ok" value="'.$chuyenngu['thaydoi'].'"/></form>
	</div>
	'.$chuyenngu['huongdancaidat'].'
	</div>';
	echo $end; exit;

}else{
	if($settype=='1') {
			if (!isset($_SERVER['PHP_AUTH_USER']) || $setadmin!==$_SERVER['PHP_AUTH_USER'] || $setpass!==md5(md5($_SERVER['PHP_AUTH_PW'])))
			{
					header('WWW-Authenticate: Basic realm="Nhap tai khoan, mat khau:"');
					header('HTTP/1.0 401 Unauthorized');
					exit();
			}else{$lp_cauhinh = $_SERVER['PHP_AUTH_USER'].'|||'.md5(md5($_SERVER['PHP_AUTH_PW'])); $_SESSION['lpanel_auth']=base64_encode('LPanel:'.$lp_cauhinh);
			}
	}else{
		if(isset($_POST['admin']) && isset($_POST['pass']) && empty($cookban)){
			if(md5(md5($_POST['pass']))==$setpass && $_POST['admin']==$setadmin){
					$lp_cauhinh = $_POST['admin'].'|||'.md5(md5($_POST['pass']));
					setcookie("lpanel_auth", base64_encode('LPanel|||'.$lp_cauhinh),time()+24*365*3600);
					$_SESSION['lpanel_auth'] = base64_encode('LPanel|||'.$lp_cauhinh);
					chmt(0,'index.php');exit;
				}else{
					setcookie("ban",time()+$setthoigianban,$setthoigianban);$_SESSION['ban']=time()+$setthoigianban;
					cbjs('Bạn bị khóa '.ctime($setthoigianban).' vì nhập sai nick hoặc mật khẩu. Vui lòng thử lại sau '.ctime($setthoigianban).'!!');
					chmt("0","index.php");
					exit;
			}
		}else{
			if($admincpok!=='OK'){
				echo $head;
				echo '
				<div class="gmenu">'.$chuyenngu['moidangnhap'].'</div>

				<div class="list1">
					<form method="post" action="index.php">
					<img src="data/vtr/img/user.png" alt=""/> '.$chuyenngu['taikhoan'].':<br/>
					<input type="text" name="admin" value="'.$cadmin.'"/><br/>
					<img src="data/vtr/img/pass.png" alt=""/> '.$chuyenngu['matkhau'].':<br/>
					<input type="password" name="pass" value=""/><br/>
					'.(empty($cookban) ? '<input type="submit" value="'.$chuyenngu['login'].'"/>':' '.$chuyenngu['wait'].' <font color=red>'.$ctgcl.'</font> '.$chuyenngu['trying'].'!').'</form>
					 '.hinhanh('data/vtr/img/Key.png').' '.lienket("index.php?qmk",$chuyenngu['qmk']).'</div>
					<div class="list1">
					'.$chuyenngu['chuy'].'
				</div>';
				echo $end; exit;
			}
		}
	}
}

if($admincpok!=='OK'){ exit;}






define('GMANAGER_START', microtime(true));
define('GMANAGER_PATH', dirname(__FILE__));

new Config($fix_url.'/data/inc/config.ini');

set_include_path(
    get_include_path() . PATH_SEPARATOR .
    GMANAGER_PATH . DIRECTORY_SEPARATOR . '/lib' . PATH_SEPARATOR .
    GMANAGER_PATH . DIRECTORY_SEPARATOR . '/lib' . DIRECTORY_SEPARATOR . 'PEAR'
);
class Language
{
    private static $_lng = array();

    /**
     * setLanguage
     * 
     * @param string $lng
     */
    public static function setLanguage ($lng = 'vi')
    {
	$ngonngu = $_COOKIE['ngonngu']; if($ngonngu==''){$ngonngu='en.php';}
	self::$_lng = require_once GMANAGER_PATH . '/lng/' . $ngonngu;
    }


    /**
     * get
     * 
     * @param  string $str
     * @return string
     */
    public static function get ($str)
    {
        return self::$_lng[$str];
    }
}


/**
 * Autoloader
 *
 * @param string $class
 */
function __autoload ($class)
{
    require GMANAGER_PATH . '/lib/' . str_replace('_', '/', $class) . '.php';
}
	 $fix_url = '';
       Registry::set('top', '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi">
		<head><title>'.$chuyenngu['tt'].'</title>
			<meta http-equiv="Content-Type" content="charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="'.$fix_url.'data/vtr/'.(empty($_COOKIE['setstyle']) ? 'macdinh.css':$_COOKIE['setstyle']).'"/>
			<script type="text/javascript" src="'.$fix_url.'data/js.js"></script>
		<script type="text/javascript" src="'.$fix_url.'data/js.source.js"></script>
		</head><body>
		<div class="header" align="center"><a href="'.$fix_url.'index.php"><h1> LPanel '.$vers.' </h1></a>
		<p align="left">
		<img src="'.$fix_url.'data/vtr/img/FolderUp.png" alt=""/> <a href="'.$fix_url.'index.php">'.$chuyenngu['trangchu'].'</a> | 
		<img src="'.$fix_url.'data/vtr/img/pma.png" alt=""/> <a href="'.$fix_url.'tools.php">'.$chuyenngu['congcu'].'</a> |
		<img src="'.$fix_url.'data/vtr/img/cpanel.png" alt=""/> <a href="'.$fix_url.'index.php?set">'.$chuyenngu['caidat'].'</a> | 
		<img src="'.$fix_url.'data/vtr/img/exit.png" alt=""/>  <a href="'.$fix_url.'index.php?exit">'.$chuyenngu['thoat'].'</a></p></div>
		
		');
        Registry::set('foot', '<div class="header" align="center">
		<div align="left">
		<img src="'.$fix_url.'data/vtr/img/FolderUp.png" alt=""/> <a href="'.$fix_url.'index.php">'.$chuyenngu['trangchu'].'</a> | 
		<img src="'.$fix_url.'data/vtr/img/pma.png" alt=""/> <a href="'.$fix_url.'tools.php">'.$chuyenngu['congcu'].'</a> |
		<img src="'.$fix_url.'data/vtr/img/cpanel.png" alt=""/> <a href="'.$fix_url.'index.php?set">'.$chuyenngu['caidat'].'</a> | 
		<img src="'.$fix_url.'data/vtr/img/exit.png" alt=""/>  <a href="'.$fix_url.'index.php?exit">'.$chuyenngu['thoat'].'</a></p></div>
		<h2><a href="index.php?info">V'.$vers.' - Tmc</a></h2>
		</div></body></html>');
