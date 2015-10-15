<?php
$pos1 = stripos($article->Url,'?');
$url = substr($article->Url,$pos1+1);
$table = 'zbp_addtopost';
$myurl = substr($url, 3);
$SQL = "SELECT * FROM $table WHERE log_ID = '$myurl'";
$result = $zbp->db->Query($SQL);
$titleImage = $result[0]['titleImage'];
$titleImage = substr($titleImage, 18);
$abstract = $result[0]['abstract'];
?>