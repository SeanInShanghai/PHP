<?php
$countSQL = "SELECT zbp_addtopost.count from zbp_addtopost WHERE log_ID = '$id'";
$countResult = $zbp->db->Query($countSQL);
$myCount = $countResult[0];
if(isset($myCount['count']))
{
	$count = $myCount['count'];
	$count++;
	$updateSQL = "UPDATE zbp_addtopost SET count = '$count' WHERE log_ID = '$id'";
	$zbp->db->Query($updateSQL);
}
?>