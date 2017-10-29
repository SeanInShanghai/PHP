<?php 
include 'myprefix.php';
include "function.php";

$url = $_SERVER['REQUEST_URI'];
// echo $url;

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
		$count = 4;
		$page = 1;
		$page = $_GET['page'];
		if(empty($page))
		{
			$page = 1;
		}
		$pageInfo = array($page,$count);
		$articles = ViewList($pageInfo, null, null, null, null);
		
		/*
		 * 右侧显示信息
		 */
		//热门标签
		$tagSQL = "SELECT * FROM zbp_category LIMIT 6";
		$tags = $zbp->db->Query($tagSQL);
	
		//热门教师
		$sql = "SELECT * FROM zbp_member WHERE mem_Level = 3 LIMIT 6";
		$members = $zbp->db->Query($sql);
		
		
		/*
		 * 新闻
		 * */
		$newsCateSQL = "SELECT * FROM zbp_category WHERE cate_Name = '新闻'";
		$newsCate = $zbp->db->Query($newsCateSQL);
// 		var_dump($newsCate);
		$cateID = $newsCate[0]['cate_ID'];
		$newSQL = "SELECT * FROM zbp_post WHERE log_CateID = '$cateID' order by log_PostTime desc LIMIT 1";
		$newsArr = $zbp->db->Query($newSQL);
		$news_log_ID = $newsArr[0]['log_ID'];
		$news_addSQL = "SELECT * FROM zbp_addtopost WHERE log_ID = '$news_log_ID'";
		$news_add = $zbp->db->Query($news_addSQL);
		$news = $newsArr[0];
		$news['abstract'] = $news_add[0]['abstract'];
		$news['keywords'] = $news_add[0]['keywords'];
		$news['titleImage'] = substr($news_add[0]['titleImage'], 18);
// 		var_dump($news);

		/**
		 * 活动
		 * */
		$activitySQL = "SELECT * FROM zbp_post WHERE log_Type = 1 order by log_PostTime desc LIMIT 1";
		$activityArr = $zbp->db->Query($activitySQL);
		$activity_log_ID = $activity[0]['log_ID'];
		$activity_addSQL = "SELECT * FROM zbp_addtopost WHERE log_ID = '$activity_log_ID'";
		$activity_add = $zbp->db->Query($activity_addSQL);
		$activity = $activityArr[0];
		$activity['abstract'] = $activity_add[0]['abstract'];
		$activity['keywords'] = $activity_add[0]['keywords'];
		$activity['titleImage'] = substr($activity_add[0]['titleImage'], 18);
// 		var_dump($activity);


		/*
		 * 欢迎词
		* */
		$welcomeCateSQL = "SELECT * FROM zbp_category WHERE cate_Name = '欢迎词'";
		$welcomeCate = $zbp->db->Query($newsCateSQL);
		// 		var_dump($newsCate);
		$welcomeCateID = $welcomeCate[0]['cate_ID'];
		$welcomeSQL = "SELECT * FROM zbp_post WHERE log_CateID = '$welcomeCateID' order by log_PostTime desc LIMIT 1";
		$welcome = $zbp->db->Query($welcomeSQL);
		// 		var_dump($news);
		
// 		$string  = '我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是';
// 		echo mb_strlen($string,'utf-8')."   hhahahha " ;
		$welcomeContent = $welcome[0]['log_Content'];
		$welcomeContent = mb_substr($welcomeContent,0,240, 'utf-8');
		
		/**
		 * 最新文章
		 */
		$newArticalSQL = "SELECT * FROM zbp_post, zbp_category WHERE log_Type = 0 and zbp_post.log_CateID = zbp_category.cate_ID and zbp_post.log_CateID <> '$news_log_ID' and zbp_post.log_CateID <> '$welcomeCateID' order by log_PostTime desc LIMIT 2 ";
		$newArticalRe = $zbp->db->Query($newArticalSQL);

        $count = 0;
        foreach ($newArticalRe as $newArtical){
            $log_ID = $newArtical['log_ID'];
            $add_topostSQL = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";

            $add_topostSQLRe = $zbp->db->Query($add_topostSQL);
            $newArtical['abstract'] = $add_topostSQLRe[0]['abstract'];
            $newArtical['keywords'] = $add_topostSQLRe[0]['keywords'];
            $newArtical['titleImage'] = substr($add_topostSQLRe[0]['titleImage'], 18);

            $newArticalRe[$count]['abstract'] = $add_topostSQLRe[0]['abstract'];
            $newArticalRe[$count]['keywords'] = $add_topostSQLRe[0]['keywords'];
            $newArticalRe[$count]['titleImage'] = substr($add_topostSQLRe[0]['titleImage'], 18);
            $count += 1;
        }
        
        
        /*
         * 三篇新闻图片
         * */
   
        $threeNewSQL = "SELECT * FROM zbp_post WHERE log_CateID = '$cateID' order by log_PostTime desc LIMIT 3";
        $threeNewsArr = $zbp->db->Query($threeNewSQL);

        $count = 0;
        foreach ($threeNewsArr as $tmpnews){
            $log_ID = $tmpnews['log_ID'];
            $add_topostSQL = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";
        
            $add_topostSQLRe = $zbp->db->Query($add_topostSQL);
            $tmpnews['abstract'] = $add_topostSQLRe[0]['abstract'];
            $tmpnews['keywords'] = $add_topostSQLRe[0]['keywords'];
            $tmpnews['titleImage'] = substr($add_topostSQLRe[0]['titleImage'], 18);
        
            $threeNewsArr[$count]['abstract'] = $add_topostSQLRe[0]['abstract'];
            $threeNewsArr[$count]['keywords'] = $add_topostSQLRe[0]['keywords'];
            $threeNewsArr[$count]['titleImage'] = substr($add_topostSQLRe[0]['titleImage'], 18);
            $count += 1;
        }
//         var_dump($threeNewsArr);
		break;
		
	case 'teacher_list':
// 				echo "OK";
		$sqlAllTeachs = "SELECT * FROM zbp_member WHERE mem_Level = 3 order by mem_ID";
		$reAllTeachs = $zbp->db->Query($sqlAllTeachs);
		
		$sqlLCArts = "SELECT * FROM zbp_post";
		$reLCArts = $zbp->db->Query($sqlLCArts);
// 		echo count($reLCArts);
// 		echo "OK";
		break;
	case 'artical_list':


		
		$sqlALLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0";
		$reALLCArts = $zbp->db->Query($sqlALLCArts);
	
		$count = 3; //每页显示3篇论丛文章
		$totalCount = count($reALLCArts);//论丛文章全部数量
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
			
			//判断pageRange是否存在sql注入危险
			$is_number = ctype_digit($pageRange);
			if($is_number != 1)
				$pageRange = 1;
			$page = ($pageRange-1) * 5 + 1;
		}
		

		
		if(!empty($_GET['page']))
		{
			$page = $_GET['page'];
			//判断page是否存在sql注入危险
			$is_number = ctype_digit($page);
			if($is_number != 1)
				$page = 1;
		}
		
// 		echo $page;
		
		$offset = ($page - 1) * $count;
		
		$sqlLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0 order by log_PostTime desc LIMIT $count OFFSET $offset";
		$reLCArts = $zbp->db->Query($sqlLCArts);

		$lccount = 0;
		foreach ($reLCArts as $reLCArt)
		{
			$log_ID = $reLCArt['log_ID'];

			$sqlPostAddition = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";
			$rePostAddition = $zbp->db->Query($sqlPostAddition);

			$imgArr = explode('/', $rePostAddition[0]['titleImage']);
			$reLCArts[$lccount]['log_abstract'] = $rePostAddition[0]['abstract'];
			$reLCArts[$lccount]['log_pic'] = $imgArr[3]."/".$imgArr[4];
			
			$lccount += 1;

		}

		break;
	case 'activity_list':
	    if(empty($_GET['type'])){//默认是显示还没有开始的沙龙
	        $type = 0;
	    }else{
	        $type = $_GET['type'];
	    }
	    
	    $curTime = time();
// 	    echo $curTime;
	    
	    if($type == 0){
	        $allSalonsSQL = "SELECT * FROM zbp_post WHERE log_PostTime >= '$curTime' and log_Type = 1 order by log_PostTime desc";
	    }else{
	        $allSalonsSQL = "SELECT * FROM zbp_post WHERE log_PostTime < '$curTime' and log_Type = 1 order by log_PostTime desc";
	    }
	    

// 		$allSalonsSQL = "SELECT * FROM zbp_post WHERE log_Type = 1 order by log_PostTime desc";
		$salons = $zbp->db->Query($allSalonsSQL);
// 		echo $allSalonsSQL;
				
		// 		$offSet = ($pageNo - 1)*$count;
		// 		$salonsSQL = "SELECT * FROM zbp_post WHERE log_Type = 1 LIMIT $count OFFSET $offSet";
		// 		$salons = $zbp->db->Query($salonsSQL);
		$count = 6; //每页显示6个活动
		$totalCount = count($salons);//论丛文章全部数量
		$pagesize = 0; //一共需要展示的页数
		
		if($totalCount % $count == 0)
		{
		    $pagesize = $totalCount/$count;
		}else{
		    $pagesize = (int)($totalCount/$count) + 1;
		}
// 		echo $totalCount;
// 		echo $pagesize;
		$page = 1; //当前页码，默认为1
		
			
		$pageRange = 1; //页码段，没五页为一个页码段，默认为1
			
		if(empty($_GET['pageRange']))
		{
		    $pageRange = 1;
		}else{
		    $pageRange = $_GET['pageRange'];
		    	
		    //判断pageRange是否存在sql注入危险
		    $is_number = ctype_digit($pageRange);
		    if($is_number != 1)
		        $pageRange = 1;
		    $page = ($pageRange-1) * 5 + 1;
		}
		
		
		
		if(!empty($_GET['page']))
		{
		    $page = $_GET['page'];
		    //判断page是否存在sql注入危险
		    $is_number = ctype_digit($page);
		    if($is_number != 1)
		        $page = 1;
		}
		
		// 		echo $page;
		
		$offset = ($page - 1) * $count;
		
		if($type == 0)
		{
		    $curSalonsSQL = "SELECT * FROM zbp_post WHERE log_PostTime >= '$curTime' and log_Type = 1 order by log_PostTime desc LIMIT $count OFFSET $offset";
		}else{
		    $curSalonsSQL = "SELECT * FROM zbp_post WHERE log_PostTime < '$curTime' and log_Type = 1 order by log_PostTime desc LIMIT $count OFFSET $offset";
		}
// 		$curSalonsSQL = "SELECT * FROM zbp_post WHERE log_Type = 1 order by log_PostTime desc LIMIT $count OFFSET $offset";
		$curSalons = $zbp->db->Query($curSalonsSQL);
		
		$lccount = 0;
		foreach($curSalons as $curSalon){
		    $log_ID = $curSalon['log_ID'];
		   
		    $sqlPostAddition = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";
		    $rePostAddition = $zbp->db->Query($sqlPostAddition);
		
		    $imgArr = explode('/', $rePostAddition[0]['titleImage']);
		    $curSalons[$lccount]['log_abstract'] = $rePostAddition[0]['abstract'];
		    $curSalons[$lccount]['log_pic'] = $imgArr[3]."/".$imgArr[4];
		 
		    $lccount += 1;
		}

		break;
	case 'teacher':
// 		echo "ok";
		$teacherID = $_GET["id"];
		
		$teacherSQL = "SELECT * FROM zbp_member WHERE mem_ID = $teacherID";
// 		echo $teacherSQL;
		$teacher = $zbp->db->Query($teacherSQL);
		$teacher = $teacher[0];
		
		$teacherPapers = "SELECT * FROM zbp_post WHERE log_AuthorID = $teacherID ORDER BY log_PostTime desc LIMIT 4";
		$reTeaPapers = $zbp->db->Query($teacherPapers);
// 		echo count($reteacherPapers);
// 		echo $teacherPapers;
// 		var_dump($teacher[0]);
		break;
	case 'showPaperList':

		$type = $_GET['type'];
		if(empty($_GET['type'])){
		    $type = 'cate';
		}else{
		    $type = $_GET['type'];
		}
		$url = '';
		switch($type)
		{
			case 'cate':
				$cateID = $_GET['cate_ID'];
				$url = " and log_CateID = $cateID";
				break;
			case 'author':
				$memID = $_GET['mem_ID'];
				$url = " and log_AuthorID = $memID";
				break;
			default:
			    die();
				break;
		}
		if($url == ''){
		    die();
		}
		$sqlALLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0".$url;
// 		echo $sqlALLCArts;
		$reALLCArts = $zbp->db->Query($sqlALLCArts);
		
		$count = 3; //每页显示3篇论丛文章
		$totalCount = count($reALLCArts);//论丛文章全部数量
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
		    	
		    //判断pageRange是否存在sql注入危险
		    $is_number = ctype_digit($pageRange);
		    if($is_number != 1)
		        $pageRange = 1;
		    $page = ($pageRange-1) * 5 + 1;
		}
		
		
		
		if(!empty($_GET['page']))
		{
		    $page = $_GET['page'];
		    //判断page是否存在sql注入危险
		    $is_number = ctype_digit($page);
		    if($is_number != 1)
		        $page = 1;
		}
		
		// 		echo $page;
		
		$offset = ($page - 1) * $count;
		
		$sqlLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0 ".$url." order by log_PostTime desc LIMIT $count OFFSET $offset";
		$reLCArts = $zbp->db->Query($sqlLCArts);
		
		$lccount = 0;
		foreach ($reLCArts as $reLCArt)
		{
		    $log_ID = $reLCArt['log_ID'];
		
		    $sqlPostAddition = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";
		    $rePostAddition = $zbp->db->Query($sqlPostAddition);
		
		    $imgArr = explode('/', $rePostAddition[0]['titleImage']);
		    $reLCArts[$lccount]['log_abstract'] = $rePostAddition[0]['abstract'];
		    $reLCArts[$lccount]['log_pic'] = $imgArr[3]."/".$imgArr[4];
		    	
		    $lccount += 1;
		
		}
		
		$tagSQL = "SELECT * FROM zbp_category LIMIT 3";
		$tags = $zbp->db->Query($tagSQL);
		
		$sql = "SELECT * FROM zbp_member";
		$members = $zbp->db->Query($sql);
		
		break;
	case 'search':
	    
	    $content = '';
	    
	    if(!empty($_GET['content'])){
	        $content = $_GET['content'];
	    }
	
	    $sqlUrl = " and log_Content like '%".$content."%' or"." log_Title like '%".$content."%' or"." log_Intro like '%".$content."%'";
	    
	    $sqlALLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0".$sqlUrl;
// 	    echo $sqlALLCArts;
	    $reALLCArts = $zbp->db->Query($sqlALLCArts);
	    
	    $count = 3; //每页显示3篇论丛文章
	    $totalCount = count($reALLCArts);//论丛文章全部数量
	    $pagesize = 0; //一共需要展示的页数
	    
	    if($totalCount % $count == 0)
	    {
	        $pagesize = $totalCount/$count;
	    }else{
	        $pagesize = (int)($totalCount/$count) + 1;
	    }
	    
	    $page = 1; //当前页码，默认为1
	    
// 	    echo $pagesize;
	    	
	    $pageRange = 1; //页码段，没五页为一个页码段，默认为1
	    	
	    if(empty($_GET['pageRange']))
	    {
	        $pageRange = 1;
	    }else{
	        $pageRange = $_GET['pageRange'];
	        	
	        //判断pageRange是否存在sql注入危险
	        $is_number = ctype_digit($pageRange);
	        if($is_number != 1)
	            $pageRange = 1;
	        $page = ($pageRange-1) * 5 + 1;
	    }
	    
	    
	    
	    if(!empty($_GET['page']))
	    {
	        $page = $_GET['page'];
	        //判断page是否存在sql注入危险
	        $is_number = ctype_digit($page);
	        if($is_number != 1)
	            $page = 1;
	    }
	    
	    // 		echo $page;
	    
	    $offset = ($page - 1) * $count;
	    
	    $sqlLCArts = "SELECT * FROM zbp_post WHERE log_Type = 0 ".$sqlUrl." order by log_PostTime desc LIMIT $count OFFSET $offset";
	    $reLCArts = $zbp->db->Query($sqlLCArts);
	    
	    $lccount = 0;
	    foreach ($reLCArts as $reLCArt)
	    {
	        $log_ID = $reLCArt['log_ID'];
	    
	        $sqlPostAddition = "SELECT * FROM zbp_addtopost WHERE log_ID = '$log_ID'";
	        $rePostAddition = $zbp->db->Query($sqlPostAddition);
	    
	        $imgArr = explode('/', $rePostAddition[0]['titleImage']);
	        $reLCArts[$lccount]['log_abstract'] = $rePostAddition[0]['abstract'];
	        $reLCArts[$lccount]['log_pic'] = $imgArr[3]."/".$imgArr[4];
	        	
	        $lccount += 1;
	    
	    }
	    
	    break;
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


?>