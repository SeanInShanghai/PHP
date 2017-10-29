<?php
include '../../config.php';
include 'prefix.php';
?>
<?php 
$allArticles = ViewList(null, null, null, null, null);

$count = 5;
$totalCount = count($allArticles);
$pagesize = 0;
if($totalCount % $count == 0)
{
	$pagesize = $totalCount/$count;
}else{
	$pagesize = $totalCount/$count + 1;
}
$page = 1;
$page = $_GET['page'];
if(empty($page))
{
	$page = 1;
}
$pageInfo = array($page,$count);
$articles = ViewList($pageInfo, null, null, null, null);
?>