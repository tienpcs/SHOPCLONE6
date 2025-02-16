<?php
/**
 * 
 * This software is distributed under the GNU GPL v3.0 license.
 * @author Gemorroj
 * @copyright 2008-2012 http://wapinet.ru
 * @license http://www.gnu.org/licenses/gpl-3.0.txt
 * @link http://wapinet.ru/gmanager/
 * @version 0.8.1 beta
 * 
 * PHP version >= 5.2.3
 * 
 */


require './data/bootstrap.php';

///////////////////////////////////////////
//Bảo vệ nhưng có vẻ dư thừa
if(!isset($admincpok)){ header("location: index.php"); chmt(0,'index.php'); exit;}
//KT
/////////////////////////////////////////////

if (Registry::get('current') == '.') {
    Registry::set('current', Gmanager::getInstance()->getcwd() . '/');
    Registry::set('hCurrent', htmlspecialchars(Gmanager::getInstance()->getcwd(), ENT_COMPAT) . '/');
    Registry::set('rCurrent', Helper_View::getRawurl(Gmanager::getInstance()->getcwd()));
}


if (Registry::get('currentType') == 'dir') {
    $archive = null;
} else {
    $archive = Helper_Archive::isArchive(Helper_System::getType(Helper_System::basename(Registry::get('current'))));
}

$f = 0;
$if = isset($_GET['f']);
$ia = isset($_GET['add_archive']);

Gmanager::getInstance()->sendHeader();

echo str_replace('%title%', Registry::get('hCurrent'), Registry::get('top')) . '<div class="w2">' . Language::get('title_index') . '<br/></div>' . Gmanager::getInstance()->head() . Gmanager::getInstance()->langJS();


if (Config::get('Gmanager', 'addressBar')) {
    echo '<div class="edit">
	</div>
	<div class="edit"><form action="index.php?" method="get">
	<div class="bar">';
    if ($ia) {
        echo '<input type="hidden" name="add_archive" value="' . htmlspecialchars($_GET['add_archive']) . '"/>
		<input type="hidden" name="go" value="1"/>';
    }
		echo '<input type="text" name="c" value="' . Registry::get('hCurrent') . '"/> <input type="submit" value="' . Language::get('go') . '"/>
		</div></form></div>';
}

if ($idown = isset($_GET['down'])) {
    $down = '&amp;up';
    $mnem = '&#171;';
} else {
    $down = '&amp;down';
    $mnem = '&#187;';
}

if (!$if) {
    if (!$archive) {

        $itype = '';

        if (isset($_GET['chmod'])) {
            $itype = 'chmod';
            echo '<form action="change.php?c=' . Registry::get('rCurrent') . '&amp;go=1" method="post"><input type="checkbox" onclick="Gmanager.check(this.form,\'check[]\',this.checked)"/> <u>Chọn hết</u>';
        }else{
            $itype = '';
            echo '<form action="change.php?c=' . Registry::get('rCurrent') . '&amp;go=1" method="post"><input type="checkbox" onclick="Gmanager.check(this.form,\'check[]\',this.checked)"/> <u>Chọn hết</u>';
        }
    } elseif ($archive != Archive::FORMAT_GZ) {
        echo '<form action="change.php?c=' . Registry::get('rCurrent') . '&amp;go=1" method="post"><input type="checkbox" onclick="Gmanager.check(this.form,\'check[]\',this.checked)"/> <u>Chọn hết</u>';
    }
}

if ($archive && $archive != Archive::FORMAT_GZ) {
    $obj = new Archive;
    $factory = $obj->setFormat($archive)->setFile(Registry::get('current'))->factory();
    if ($if) {
        echo $factory->lookFile($_GET['f']);
    } else {
        echo $factory->listArchive($idown);
        $f = 1;
    }
} elseif ($archive == Archive::FORMAT_GZ) {
    echo Gmanager::getInstance()->gz(Registry::get('current')) . '<div class="ch"><form action="change.php?c=' . Registry::get('rCurrent') . '&amp;go=1" method="post"><div><input type="submit" name="gz_extract" value="' . Language::get('extract_archive') . '"/></div></form></div>';
    $if = true;
} else {
    echo Gmanager::getInstance()->look(Registry::get('current'), $itype, $idown);
}

if (Gmanager::getInstance()->file_exists(Registry::get('current')) || Registry::get('currentType') == 'link') {
    if ($archive) {
        $d = Helper_View::getRawurl(dirname(Registry::get('current')));
        $found = '<div class="rb" align="right">
		' . Language::get('create') . ' 
		<a href="change.php?go=create_file&amp;c=' . $d . '">' . Language::get('file') . '</a>
		/ <a href="change.php?go=create_dir&amp;c=' . $d . '">' . Language::get('dir') . '</a><br/>
		<a href="change.php?go=upload&amp;c=' . $d . '">' . Language::get('upload') . '</a><br/>
		<a href="change.php?go=mod&amp;c=' . $d . '">' . Language::get('mod') . '</a><br/>
		</div>
	';
    } else {
        $found = '
		<form action="' . $_SERVER['PHP_SELF'] . '?' . htmlspecialchars($_SERVER['QUERY_STRING'], ENT_COMPAT, 'UTF-8') . '" method="post"><div>
		<input name="limit" value="' . Registry::get('limit') . '" type="text" onkeypress="return Gmanager.number(event)" class="pinput"/>
		<input type="submit" value="' . Language::get('limit') . '"/></div></form>
		
		<div class="rb">' . Language::get('create') . ' 
		<a href="change.php?go=create_file&amp;c=' . Registry::get('rCurrent') . '">
		' . Language::get('file') . '</a> |  
		<a href="change.php?go=create_dir&amp;c=' . Registry::get('rCurrent') . '">
		' . Language::get('dir') . '</a> |  
		<a href="change.php?go=upload&amp;c=' . Registry::get('rCurrent') . '">' . Language::get('upload') . '</a> 
		  |  
		<a href="change.php?go=mod&amp;c=' . Registry::get('rCurrent') . '">' . Language::get('mod') . '</a><br/>
		</div>';
    }
} else {
    $found = '<div class="red">' . Language::get('not_found') . '(' . Registry::get('hCurrent') . ')' . '<br/></div>';
}


$tm = '<div class="rb">' . round(microtime(true) - GMANAGER_START, 4) . ' / ' . Helper_View::formatSize(memory_get_peak_usage()) . '<br/></div>';

if (!$if && !$f && !$ia) {
    echo '<div class="ch">
		<input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="full_chmod" value="' . Language::get('chmod') . '"/> 
		<input onclick="return (Gmanager.checkForm(document.forms[1],\'check[]\') &amp;&amp; Gmanager.delNotify());" type="submit" name="full_del" value="' . Language::get('del') . '"/> <input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="full_rename" value="' . Language::get('change') . '"/> <input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="fname" value="' . Language::get('rename') . '"/> 
		<input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="create_archive" value="' . Language::get('create_archive') . '"/>
		</div></form>
		' . $found . $tm . Registry::get('foot');
} elseif ($f) {
    echo '<div class="ch">
	<input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="full_extract" value="' . Language::get('extract_file') . '"/> <input type="submit" name="mega_full_extract" value="' . Language::get('extract_archive') . '"/>';
    if ($archive != Archive::FORMAT_RAR) {
        echo '
		<input type="submit" name="add_archive" value="' . Language::get('add_archive') . '"/>
		<input onclick="return (Gmanager.checkForm(document.forms[1],\'check[]\') &amp;&amp; Gmanager.delNotify());" type="submit" name="del_archive" value="' . Language::get('del') . '"/>
		';
    }
    echo '
	      </div></form>
		  ' . $found . $tm . Registry::get('foot');
} elseif ($ia) {
    echo '<div class="ch">
	<input type="hidden" name="add_archive" value="' . rawurlencode($_GET['add_archive']) . '"/>
	<input onclick="return Gmanager.checkForm(document.forms[1],\'check[]\');" type="submit" name="name" value="' . Language::get('add_archive') . '"/>
	</div></form>
	' . $found . $tm . Registry::get('foot');
} else {
    echo $found . $tm . Registry::get('foot');
}
exit;


