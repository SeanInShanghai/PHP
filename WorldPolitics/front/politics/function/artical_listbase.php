<?php 
include 'prefix.php';
include 'function/action.php';
?>
<?php $allArticles = ViewList(null, null, null, null, null);?>
<?php 
/*
$count = 3;
$totalCount = count($allArticles);
//echo $totalCount;
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
*/
include 'getMemberlist.php';
include 'getCata.php';

?>