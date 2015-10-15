<?php
include 'prefix.php';
include 'function.php';

$url = $_SERVER['REQUEST_URI'];
if($url)
{
	$urlArr = explode('/',$url);
	if($urlArr[count($urlArr)-1] == "")
	{
		$action = "home";
	}else{
		$action = getActionFromUrl($url);
	}
}
if(isset($_GET['action']))
{
	$action = $_GET['action'];
}

switch ($action)
{
	case "home":
// 		echo "home";
      //#六个模块显示
	  $sqlTags = "SELECT * FROM ubc_tag LIMIT 0, 7";
      $reTags = $zbp->db->Query($sqlTags);
      
//       var_dump($reTags);
      
        //#中心预告
      $cenPreTag_ID = $reTags[0]['tag_ID'];
      $sqlCenPre = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $cenPreTag_ID  order by log_PostTime desc LIMIT 0, 3" ;
      $reCenPres = $zbp->db->Query($sqlCenPre);
        //#===中心预告===
        
        //#中国思想研究
      $cnThRes_ID = $reTags[1]['tag_ID'];
      $sqlCnThRes = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $cnThRes_ID order by log_PostTime desc LIMIT 0, 3";
      $reCnThRes = $zbp->db->Query($sqlCnThRes);
        //#===中国思想研究===
        
        //#中心新闻
      $cenNewsTag_ID = $reTags[2]['tag_ID'];
      $sqlCenNews = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $cenNewsTag_ID order by log_PostTime desc LIMIT 0, 3";
      $reCenNews = $zbp->db->Query($sqlCenNews);
        //#===中心新闻===
        
        //#西方思想研究
      $weThRes_Tag = $reTags[3]['tag_ID'];
      $sqlWeThRes = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $weThRes_Tag order by log_PostTime desc LIMIT 0, 5";
      $reWeThRes = $zbp->db->Query($sqlWeThRes);
        //#===西方思想研究===
        
        //#中心制作
      $cenMake_Tag = $reTags[4]['tag_ID'];
      $sqlCenMake = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $cenMake_Tag order by log_PostTime desc LIMIT 0, 3";
      $reCenMake = $zbp->db->Query($sqlCenMake);
        //#===中心制作===
        
        //#现场与对话
      $scenDial_Tag = $reTags[5]['tag_ID'];
      $sqlScenDial = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $scenDial_Tag order by log_PostTime desc LIMIT 0, 5";
      $reScenDial = $zbp->db->Query($sqlScenDial);
        //#===现场与对话===
      
        //#讲座录音
      $lecRec_Tag = $reTags[6]['tag_ID'];
      $sqllecRec = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $lecRec_Tag order by log_PostTime desc LIMIT 0, 2";
//       echo $sqllecRec;
      $relecRec = $zbp->db->Query($sqllecRec);
      //#===六个模块显示===
      
        //#slider功能
      $sqlSliders = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $cenNewsTag_ID order by log_PostTime desc LIMIT 0, 5";
      $reSliders = $zbp->db->Query($sqlSliders);
      $slCount = 0;
      foreach ($reSliders as $reSlider)
      {
      	$log_ID = $reSlider['log_ID'];
      	$sqlAddInfo = "SELECT * FROM ubc_postaddition WHERE log_ID = $log_ID";
//       	echo $sqlAddInfo;
      	$reAddInfo = $zbp->db->Query($sqlAddInfo);
      	$pic = $reAddInfo[0]['log_pic'];
      	$abstract = $reAddInfo[0]['log_abstract'];
      	$reSliders[$slCount]['log_pic'] = $pic;
//       	echo $reSlidersp[$slCount]['log_pic'];
      	$slCount++;
      }
      
        //#===slider功能
      
      
      //#右侧显示信息
      $allCateInfo = array();
      showTheme($allCateInfo);
      //#===右侧显示信息===
	  break;
	case "activity_list":
      //得到全部的知识份子论丛文章，log_Type = 1
	  //#知识份子论丛文章
	  $sqlAllLCArts = "SELECT * FROM ubc_post WHERE log_Type = 1 order by log_PostTime desc";
	  $reAllLCArts = $zbp->db->Query($sqlAllLCArts);
	  
	  $count = 6; //每页显示6篇论丛文章
	  $totalCount = count($reAllLCArts);//论丛文章全部数量
	  $pagesize = 0; //一共需要展示的页数
	  
	  if($totalCount % $count == 0)
	  {
	  	$pagesize = $totalCount/$count;
	  }else{
	  	$pagesize = (int)($totalCount/$count) + 1;
	  }
	  
	  $page = 1; //当前页码，默认为1
	  
	  $pageRange = 1; //页码段，没五页为一个页码段，默认为1
	  
	  if(empty($_GET['pageRange']))
	  {
	  	$pageRange = 1;
	  }else{
	  	$pageRange = $_GET['pageRange'];
	  	$page = ($pageRange-1) * 5 + 1;
	  }
	  
	  if(!empty($_GET['page']))
	  {
	  	 $page = $_GET['page'];
	  }
	  
	  
	  $offset = ($page - 1) * $count;
	  $sqlLCArts = "SELECT * FROM ubc_post WHERE log_Type = 1 order by log_PostTime desc LIMIT $count OFFSET $offset";
	  $reLCArts = $zbp->db->Query($sqlLCArts);
	  
	  $lccount = 0;
	  foreach ($reLCArts as $reLCArt)
	  {
	  	$log_ID = $reLCArt['log_ID'];
	  	$sqlPostAddition = "SELECT * FROM ubc_postaddition WHERE log_ID = '$log_ID'";
	  	$rePostAddition = $zbp->db->Query($sqlPostAddition);
	  	$reLCArts[$lccount]['log_abstract'] = $rePostAddition[0]['log_abstract'];
	  	
	  	$reLCArts[$lccount]['log_pic'] = $rePostAddition[0]['log_pic'];
// 	  	echo $rePostAddition[0]['log_pic'];
// 	  	echo $lccount;
	  	$reLCArts[$lccount]['log_record'] = $rePostAddition[0]['log_record'];
	  	$lccount++;
	  }
		break;
	
	case 'moduleArts':
		$tag_ID = $_GET['tag_ID'];
		$sqlTagInfo = "SELECT * FROM ubc_tag WHERE tag_ID = $tag_ID ";
		$reTagInfo = $zbp->db->Query($sqlTagInfo);
		
		$sqlTagArts = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = $tag_ID order by log_PostTime desc";
		$reTagArts = $zbp->db->Query($sqlTagArts);
		
		
		/**
		 * 分页查找
		 */
		$totalCount = count($reTagArts);
		$count = 5;//每页显示5个
		$pagesize = 0;//记录一共需要的页码
		if($totalCount % $count == 0)
		{
			$pagesize = $totalCount/$count;
		}else{
			$pagesize = (int)($totalCount/$count) + 1;
		}
		
		$page = 1;//当前页码
		$pageRange = 1;//页码范围，每5个页码为一个范围
		if(empty($_GET['pageRange']))
		{
			$pageRange = 1;
		}else{
			$pageRange = $_GET['pageRange'];
		}
		
		if(!empty($_GET['page']))
		{
			$page = $_GET['page'];
		}else{
			$page = ($pageRange - 1)* 5 +1;
		}
		
		$offset = ($page - 1)*$count;
		$sqlCurArts = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_Tag = $tag_ID order by log_PostTime desc LIMIT $count OFFSET $offset";
		$reCurArts = $zbp->db->Query($sqlCurArts);
		
		$tmpcount = 0;
		foreach ($reCurArts as $reCurArt)
		{
			$log_ID = $reCurArt['log_ID'];
			$sqlAddCurArt = "SELECT * FROM ubc_postaddition WHERE log_ID = $log_ID";
// 			echo $sqlAddCurArt."<br>";
			$reAddCurArt = $zbp->db->Query($sqlAddCurArt);
			$abstract = $reAddCurArt[0]['log_abstract'];
			$pic = $reAddCurArt[0]['log_pic'];
			$reCurArts[$tmpcount]['log_abstract'] = $abstract;
			$reCurArts[$tmpcount]['log_pic'] = $pic;
			
			$mem_ID = $reCurArt['log_AuthorID'];
			$sqlAuthorInfo = "SELECT * FROM ubc_member WHERE mem_ID = $mem_ID";
			$reAuthroInfo = $zbp->db->Query($sqlAuthorInfo);
			$reCurArts[$tmpcount]['log_AuthorName'] = $reAuthroInfo[0]['mem_Name'];
			
			
			$tmpcount++;
// 			$reCurArt[$tmpcount][''];
		}

		//#右侧显示信息
		$allCateInfo = array();
		showTheme($allCateInfo);
		//#===右侧显示信息===
		
		
		//#slider功能
		$sqlSliders = "SELECT * FROM ubc_post WHERE log_Type = 0 and log_cateID = 0 and log_Tag = 4 order by log_PostTime desc LIMIT 0, 5";
// 		echo $sqlSliders;
		$reSliders = $zbp->db->Query($sqlSliders);
		$slCount = 0;
		foreach ($reSliders as $reSlider)
		{
			$log_ID = $reSlider['log_ID'];
			$sqlAddInfo = "SELECT * FROM ubc_postaddition WHERE log_ID = $log_ID";
			//       	echo $sqlAddInfo;
			$reAddInfo = $zbp->db->Query($sqlAddInfo);
			$pic = $reAddInfo[0]['log_pic'];
			$abstract = $reAddInfo[0]['log_abstract'];
			$reSliders[$slCount]['log_pic'] = $pic;
			//       	echo $reSlidersp[$slCount]['log_pic'];
			$slCount++;
		}
		
		
		//#===slider功能
		
		
		break;
	case 'cateArt':
		$id = $_GET['id'];//top 分类的id
		
		$sqlTopCate = "SELECT * FROM ubc_top_category WHERE  topcate_ID = '$id'";
		$reTopCate = $zbp->db->Query($sqlTopCate);
		
		if(count($reTopCate) < 1)
		{
			die();
		}
		
		$sqlChildCate = "SELECT * FROM ubc_category WHERE  cate_ParentID = $id";
		$reChildCate = $zbp->db->Query($sqlChildCate);
		
		$childeCateIDs = array();
		$counter = 0;
		foreach ($reChildCate as $childeCate)
		{
			$counter++;
			$childeCateIDs[] = $childeCate['cate_ID'];
		}
		$str = implode(',', $childeCateIDs);
		
		$sqlAllTopCateArts = "SELECT * FROM ubc_post WHERE log_Tag = 0 and  log_CateID in ($str)";
// 		echo $sqlAllTopCateArts;
		$reAllTopCateArts = $zbp->db->Query($sqlAllTopCateArts);
		
		
		/*找到一个开始查询的offset
		 * */
		$sqlSearch = "SELECT * FROM ubc_post WHERE log_Tag = 0 and  ";
		if(isset($_GET['childCateID']))//如果是在子目录中查找，sql变为从子目录中查找
		{
			$childCateID = $_GET['childCateID'];
			$sqlSearch = $sqlSearch . " log_CateID = '$childCateID' ";
			$reSearch = $zbp->db->Query($sqlSearch);
		}else{
			$sqlSearch = $sqlAllTopCateArts;
			$reSearch = $zbp->db->Query($sqlSearch);
		}
		$totalCount = count($reSearch);//查询全部的文章数量
		$count = 5;//每次显示五篇文章
		$pagesize = 0; //显示全部文章所需要的页码数量
		if($totalCount % $count == 0)
		{
			$pagesize = $totalCount / $count;
		}else{
			$pagesize = (int)($totalCount/$count) + 1;
		}
		$page = 1;//当前页码，初始化为1
		$pageRange = 1;//当前页码段，初始化也为1（每5页一个页码段）
		if(empty($_GET['pageRange']))
		{
			$pageRange = 1;
		}else{
			$pageRange = $_GET['pageRange'];
		}
		if(!empty($_GET['page']))
		{
			$page = $_GET['page'];
		}else {
			$page = ($pageRange-1)*5+1;
		}
		
		/*获取本页所需要的文章
		 * */
		$offset = ($page - 1)*$count;
		$sqlCurArts = $sqlSearch." order by log_PostTime desc "." LIMIT $count OFFSET $offset";
// 		echo $sqlCurArts;
		$reCurArts = $zbp->db->Query($sqlCurArts);
		

	    $curCount= 0;
		foreach ($reCurArts as $reCurArt)
		{
			$log_AuthorID = $reCurArt['log_AuthorID'];
			$sqlMemberInfo = "SELECT * FROM ubc_member WHERE mem_ID = '$log_AuthorID'";
			$reMemberInfo = $zbp->db->Query($sqlMemberInfo);
			$reCurArts[$curCount]['log_memName'] = $reMemberInfo[0]['mem_Name'];
			$curCount++;
		}
		
		
		
		//#右侧显示信息
		$allCateInfo = array();
		showTheme($allCateInfo);
		//#===右侧显示信息===
		
		break;
	case 'teacher_list':
// 		echo "OK";
		$sqlAllTeachs = "SELECT * FROM ubc_member WHERE mem_Level = 3 order by mem_ID";
		$reAllTeachs = $zbp->db->Query($sqlAllTeachs);
		$count = 0;
		foreach ($reAllTeachs as $reAllTeach)
		{
			$mem_ID = $reAllTeach['mem_ID'];
			$sqlMemAddtion = "SELECT * FROM ubc_memaddition WHERE mem_ID = '$mem_ID'";
			$reMemAddtion = $zbp->db->Query($sqlMemAddtion);
			$reAllTeachs[$count]['mem_headPortrait'] = $reMemAddtion[0]['mem_headPortrait'];
			$reAllTeachs[$count]['mem_weibo'] = $reMemAddtion[0]['mem_weibo'];
			$count++;
		}
		break;
	case 'teacher':
		if(!isset($_GET['id']))
		{
			die();
		}
		$id = $_GET['id'];
		
		$sqlBaseInfo = "SELECT * FROM ubc_member WHERE mem_ID = '$id'";
		$reBaseInfo = $zbp->db->Query($sqlBaseInfo);
		$sqlAddInfo = "SELECT * FROM ubc_memaddition WHERE mem_ID = '$id'";
		$reAddInfo = $zbp->db->Query($sqlAddInfo);
		
		$reBaseInfo[0]['mem_headPortrait'] = $reAddInfo[0]['mem_headPortrait'];
		$reBaseInfo[0]['mem_weibo'] = $reAddInfo[0]['mem_weibo'];
		
		if($reBaseInfo[0]['mem_ID'] == 1)
		{
			die();
		}
		
		$sqlTeAllArts = "SELECT * FROM ubc_post  WHERE log_AuthorID = $id";
		$reTeAllArts = $zbp->db->Query($sqlTeAllArts);
		$count = 4;//每页显示4篇
		$totalCount = count($reTeAllArts);
		$pagesize = 0;//全部页码
		if($totalCount % $count == 0)
		{
			$pagesize = $totalCount/$count;
		}else{
			$pagesize = (int)($totalCount/$count) + 1;
		}
		$page = 1;
		$pageRange = 1;
		
		if(empty($_GET['pageRange']))
		{
			$pageRange = 1;
		}else{
			$page = ($pageRange-1)*$count + 1;
		}
		if(!empty($_GET['page']))
		{
			$page = $_GET['page'];
		}
		$offset = ($page - 1) * $count;
		$sqlSearch = "SELECT * FROM ubc_post WHERE log_AuthorID= $id order by log_PostTime desc LIMIT $count OFFSET $offset";
// 		echo $sqlSearch;
		$reSearch = $zbp->db->Query($sqlSearch);
		
		$arCount = 0;
		foreach ($reSearch as $search)
		{
			$log_ID = $search['log_ID'];
			$sqlAddInfo = "SELECT * FROM ubc_postaddition WHERE log_ID = $log_ID";
			$reAddInfo = $zbp->db->Query($sqlAddInfo);
			$abstract = $reAddInfo[0]['log_abstract'];
			$reSearch[$arCount]['log_abstract'] = $abstract;
// 			echo $abstract;
			$arCount++;
		}
		break;
	case 'search':
		
		
		$content = $_GET['content'];
		$sqlSearch = "SELECT * FROM ubc_post WHERE log_Type = 0 and (log_Title like '%$content%' or log_Intro like 'content' or log_Content like '$content') order by log_PostTime desc LIMIT $count OFFSET $offset";
		$reSearch = $zbp->db->Query($sqlSearch);
		
		$count = 5;
		$totalCount = count($reSearch);
		$pagesize = 0;//To record the total page quantity for all salons
		if($totalCount % $count == 0)
		{
			$pagesize = $totalCount/$count;
		}else{
			$pagesize = (int)($totalCount/$count) + 1;
		}
		$page = 1;
		$pageRange = 1;
		$pageRange = $_GET['pageRange'];
		if(empty($pageRange))
		{
			$pageRange = 1;
		}else{
			$page = ($pageRange-1)*5+1;
		}
		if(!empty($_GET['page']))
		{
			$page = $_GET['page'];
		}
		$offset = ($page - 1)*$count;
		$sqlCurSearch = "SELECT * FROM ubc_post WHERE log_Type = 0 and (log_Title like '%$content%' or log_Intro like 'content' or log_Content like '$content') order by log_PostTime desc LIMIT $count OFFSET $offset";
// 		echo  $sqlCurSearch; 
		$reCurSearch = $zbp->db->Query($sqlCurSearch);
		
		$count = 0;
		foreach ($reCurSearch as $curSearch)
		{
			$mem_ID = $curSearch['log_AuthorID'];
			$sqlMemAddtion = "SELECT * FROM ubc_member WHERE mem_ID = '$mem_ID'";
// 			echo $sqlMemAddtion;
			$reMemAddtion = $zbp->db->Query($sqlMemAddtion);
			$reCurSearch[$count]['log_memName'] = $reMemAddtion[0]['mem_Name'];
			$count++;
		}
		
		if($_GET['content'] == '')
		{
			$reCurSearch = [];
// 			die();
		}
		
		//#右侧显示信息
		$allCateInfo = array();
		showTheme($allCateInfo);
		//#===右侧显示信息===
		
		break;
	default:
		die();
}