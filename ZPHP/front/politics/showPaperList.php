<?php
$action = $_GET['action'];
switch($action)
{
	case 'cate':
		$cateID = $_GET['cate_ID'];
		//echo "CATEID".$cateID;
		include 'cateList.php';
		
		break;
	case 'author':
		$memID = $_GET['mem_ID'];
		break;
		
	default:
		break;
}
?>