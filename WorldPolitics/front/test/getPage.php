<?php
include 'prefix.php';
// $cate = 0;
// if($cate != null)
// {
// 	echo "Not null <br>";
// }else echo "Null <br>";
// $pages = ViewList(null, null, null, null, null);
// // echo count($pages);

// // include 'prefix.php';
// $allArticles = ViewList(null, null, null, null, null);
// echo count($allArticles);

$SQL = "SELECT * FROM zbp_post WHERE log_Type = 1";
$result = $zbp->db->Query($SQL);
echo count($result);
echo "<br>";
echo $result[0]['log_ID'];
?>