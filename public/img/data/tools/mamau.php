<?



for($i=1;$i<200;$i++){
	$mau = substr(md5(rand(0,999)),rand(0,10),6);
	echo '<div style="background-color:#'.$mau.'; height:30px;color:#fff;">'.$mau.'</div>';
	}