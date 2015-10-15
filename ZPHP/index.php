<?php
/**
 * Z-Blog with PHP
 * @author
 * @copyright (C) RainbowSoft Studio
 * @version
 */
//echo "Test";
//echo $_GET['id'];

include './zb_system/function/c_system_base.php';//导入system基本配置的相关文件(但是对显示的index页面没有任何的影响)

$zbp->RedirectInstall();//F 检查是否要跳转到安装界面，只有在数据库已经安装好，或者云网站已经有了的时候才不会执行“跳转到安装界面”

$zbp->CheckGzip();//F 检查并开启Gzip压缩

$zbp->Load();//F 重新建立索引，并导入(对文件的页面没有影响)

$zbp->RedirectInstall(true);//F 坚持重新建立索引之后是否需要重新安装

// //echo $zbp->title;
// //echo "This is my file";

foreach ($GLOBALS['Filter_Plugin_Index_Begin'] as $fpname => &$fpsignal) { $fpname();}//启动php的开始接口，启动
 
//echo count($arti);
 
ViewIndex();//F 显示索引界面
//echo count($articles);
//echo $this->path .  $this->startpage . '.php';
//echo "Test:".count($articles);
//if(isset($GLOBALS['Filter_Plugin_Index_Begin'])) echo count($GLOBALS['Filter_Plugin_Index_Begin'])."Right"; else echo "Wrong";
//if(isset($GLOBALS['Filter_Plugin_Index_End'])) echo count($GLOBALS['Filter_Plugin_Index_End'])."Right"; else echo "Wrong";

// foreach ($GLOBALS['Filter_Plugin_Index_End'] as $fpname => &$fpsignal) { $fpname();}

RunTime();

/*
function ArticleInfo()
{
	global $articles;
	return $articles;
}*/