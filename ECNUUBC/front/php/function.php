<?php

/**
 * 显示主页右边栏的目录信息
 */
function showTheme(&$allCateInfo)
{
	global  $zbp;
	//$zbp->db->Query("SELECT * FROM top_category");
	$allCateInfo = array();
	$sqlTopCates = "SELECT * FROM ubc_top_category order by topcate_ID asc";
	$reTopCates = $zbp->db->Query($sqlTopCates);
	
	foreach ($reTopCates as $reTopCate)
	{
		$tempCate = array();
		$tmpArr  = array();
		$top_CateID = $reTopCate['topcate_ID'];
		$sqlCate = "SELECT * FROM ubc_category WHERE cate_ParentID = '$top_CateID'";
		$reCates = $zbp->db->Query($sqlCate);
		foreach ($reCates as $reCate)
		{
			$cate_ID = $reCate['cate_ID'];
			$cate_Name = $reCate['cate_Name'];
			$tempCate['cate_ID'] = $cate_ID;
			$tempCate['cate_Name'] = $cate_Name;
			$tmpArr[] = $tempCate;
		}
		$reTopCate['childCate'] = $tmpArr;
		$allCateInfo[] = $reTopCate;
	}
	return "OK";
}

/**
 * 根据URL地址得到Action， 比如home.php，那么action= 'home';
 * */
function getActionFromUrl($url)
{
	$arr1 = explode('/',$url);
	$len = count($arr1);
    $url2 = $arr1[$len - 1];
	$arr2 = explode('.',$url2);
	return $arr2[count($arr2) - 2];
}

/*获取作者信息
 * */
function  getAuthorInfo($id){
	global  $zbp;
	$sqlBaseInfo = "SELECT * FROM ubc_member WHERE mem_ID = '$id'";
	$reBaseInfo = $zbp->db->Query($sqlBaseInfo);
	$sqlAddInfo = "SELECT * FROM ubc_memaddition WHERE mem_ID = '$id'";
	$reAddInfo = $zbp->db->Query($sqlAddInfo);
	
	$reBaseInfo[0]['mem_headPortrait'] = $reAddInfo[0]['mem_headPortrait'];
	$reBaseInfo[0]['mem_weibo'] = $reAddInfo[0]['mem_weibo'];
	
    $paperInfo = array();
    $sqlPapers = "SELECT * FROM ubc_post WHERE log_AuthorID = '$id' order by log_ID desc LIMIT 6";
    $rePapers = $zbp->db->Query($sqlPapers);
    $paperInfo = $rePapers;
    $reBaseInfo[0]['papers'] = $paperInfo;
	
	return $reBaseInfo[0];
}

/*获取全部板块信息
 * */
function getModuleInfo()
{
	global  $zbp;
	$sqlAllInfo = "SELECT * FROM ubc_tag order by tag_ID";
	$reAllModule = $zbp->db->Query($sqlAllInfo);
	return $reAllModule;
}
?>