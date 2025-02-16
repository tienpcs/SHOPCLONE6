<?
//include '../bootstrap.php';

echo tieude('Test thử code html');
echo trove();
echo '<script>
/*
	Created by: Jonathan Lau 
	Web Site: http://lauweijie7715.excell.org
*/
function update(){
  document.getElementById("dynamic").innerHTML = document.input.html.value
  setTimeout("update()",80);
}

</script>
	<!--
    	This script downloaded from www.JavaScriptBank.com
    	Come to view and download over 2000+ free javascript at www.JavaScriptBank.com
	-->
<p>
Bạn hãy dán code html/css vào ô bên dưới rồi kết quả sẽ hiện ngay bên dưới ô nhập!.</p>
<form name="input">
  <textarea rows="7" cols="50" name="html">
  <h1>Ví dụ thẻ h1</h1>
  <p>Có một nội dung <b>trong thẻ B</b></p>
</textarea>
</form>
<div id="dynamic">
</div>

<script type="text/javascript">
<!--
  update();
//-->
</script>
	<!--
    	This script downloaded from www.JavaScriptBank.com
    	Come to view and download over 2000+ free javascript at www.JavaScriptBank.com
	-->';