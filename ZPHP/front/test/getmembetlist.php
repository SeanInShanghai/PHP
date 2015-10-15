<?php
error_reporting(0);

include '../../zb_system/function/c_system_base.php';


$zbp->RedirectInstall();//F 检查是否要跳转到安装界面，只有在数据库已经安装好，或者云网站已经有了的时候才不会执行“跳转到安装界面”

$zbp->CheckGzip();//F 检查并开启Gzip压缩

$zbp->Load();//F 重新建立索引，并导入(对文件的页面没有影响)

$sql = "SELECT * FROM zbp_member";
$array = $zbp->db->Query($sql);
return $array;
?>