<?php
include 'prefix.php';
$allSalonsSQL = "SELECT * FROM zbp_post WHERE log_Type = 1";
// $allSalons = $zbp->db->Query($allSalonsSQL);
$salons = $zbp->db->Query($allSalonsSQL);
$allSalonsSQL = $salons;




function getSalons($pageInfo)
{
	global $zbp;	
	include_once 'prefix.php';
	$pageNo = $pageInfo[0];
	$count = $pageInfo[1];
	
	$offSet = ($pageNo - 1)*$count;
	
	$salonsSQL = "SELECT * FROM zbp_post WHERE log_Type = 1 LIMIT $count OFFSET $offSet";
	$salons = $zbp->db->Query($salonsSQL);
	return  $salons;
}
?>