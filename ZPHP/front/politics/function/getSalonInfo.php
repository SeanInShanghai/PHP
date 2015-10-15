<?php
include_once 'prefix.php';
$log_ID = $salon['log_ID'];
// echo $log_ID;
$salonSQL = "SELECT * FROM zbp_addtopost where log_ID = '$log_ID'";
// echo $salonSQL;
$salonInfo = $zbp->db->Query($salonSQL);
// echo "Size".count($salonInfo);
// echo "No em".$salonInfo[0]['log_ID'];
$mysalon = array();
$mysalon = $salonInfo[0];
// foreach ($salonInfo as $test)
// {
// 	echo $test['log_ID'];
// }
?>