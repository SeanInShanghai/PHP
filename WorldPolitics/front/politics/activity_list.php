<?php
include_once 'prefix.php';
include 'function/action.php';
?>
<?php 
// $count = 6;
// $totalCount = count($allSalons);
// $pagesize = 0;
// if($totalCount % $count == 0)
// {
// 	$pagesize = $totalCount/$count;
// }else{
// 	$pagesize = $totalCount/$count + 1;
// }
// $page = 1;
// $page = $_GET['page'];
// if(empty($page))
// {
// 	$page = 1;
// }
?>
<?php 
// $pageInfo = array($page,$count);

// $salons = getSalons($pageInfo);
// getSalons($pageInfo);
?>
<!DOCTYPE html>
<html lang="zh" class="zh" slick-uniqueid="3">
<head meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Global Political Research Center">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="UTF-8"/>
	<title>世界政治研究中心</title>
	<link rel="icon" href="./favicon.ico" type="/x-icon"/>
	<link rel="stylesheet" type="text/css" media="screen" href="./css/basic.css">	
    <link rel="stylesheet" type="text/css" media="screen" href="./css/activity.css">	
	<link rel="stylesheet" type="text/css" media="screen" href="./css/column2.css">	
    <link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">
</head>
	<style type="text/css">
		#mainbody{
	       margin-left:10%;
	       margin-right:10%;
		}
    </style>
<body data-mobile-url="/zh/mobile">
<div id="mainbody">
<?php 
include 'header.html';
?>
	<div id="container" class="clearfix">
	  <div style="padding-left: 20%;">
		<div class="column-head" style="margin-top:100px;">
			<a href="./activity_list.php?type=0"><b id="onActivity">沙龙活动</b></a>
			<span style="font-size:13px;color:#b9b9b9;">｜</span>
			<a id="endActivity" href="./activity_list.php?type=1"><span style="font-size:13px;">已结束活动 »</span></a>
		</div>
		
		<?php 
		foreach ($curSalons as $salon)
		{
			?>
		<div class="activity-brief">
			<img class="activity-img" src="<?php echo $salon['log_pic'];?>">
				<div class="activity-text">
					<p class="activity-head">
						<a href="./activity.php?<?php echo "id=".$salon['log_ID'];?>"><?php echo $salon['log_Title'];?></a>
					</p>
					<p class="activity-time">
						<span style="font-size:13px;color:#b9b9b9;"><?php echo date('Y年m月d日 H:i ',$salon['log_PostTime']); ?></span>
					</p>
					<p class="activity-abstract"><?php echo $salon['log_abstract'];?></p>
				</div>
		</div>
			
			<?php 
		}
		?>
		
	 </div>
	</div>
	<!--#container-->
	
	<div class="pagination">
			<?php 
// 			if($pagesize/5 == 0)
// 			{
// 				$allPageRange  = $pagesize / 5;
// 			}else{
//                 $allPageRange = (int)($pagesize/5) +1;
// 			}
			if($pageRange > 1 )
			{
// 				$href = "tag_ID=".$tag_ID."&&action=moduleArts";
				$href = $href."pageRange=".($pageRange-1);
			?>
			<a class="prev page-numbers" href="./artical_list.php?<?php echo $href;?>&&type=<?php echo $type?>"></a>
			<?php 
			}
				$startPage = ($pageRange -1)*5 +1;
				$endPage = $startPage + 4;
				$previousPages = ($pageRange -1)*5;
				if(($pagesize - $previousPages) < 5)
				{
					$endPage = $pagesize;
				}

				for($i = $startPage; $i<= $endPage; $i++)
				{
// 					$href = "tag_ID=".$tag_ID."&&action=moduleArts";
 					$href = "page=".$i."&&pageRange=".$pageRange;
					?>
					<a id="page<?php echo $i;?>" class="page-numbers" href="./activity_list.php?<?php echo $href?>&&type=<?php echo $type?>"><?php echo $i?></a>
					
					<?php
					$href = '';
				}
				
				$temp = $pageRange*5;
				if($temp >= $pagesize)
				{
				
				}else{
//                     $href = "tag_ID=".$tag_ID."&&action=moduleArts";
                    $href = $href."&&pageRange=".($pageRange+1);
					?>
					<a class="next page-numbers" href="./activity_list.php?<?php echo $href?>&&type=<?php echo $type?>"></a>
					<?php 
				}
			?>

<!-- 			</div> -->

			<!--     <a class="page-numbers current">1</a>
				<a class="page-numbers" href="./artical_list.html">2</a>
				<a class="page-numbers" href="./artical_list.html">3</a>
				<a class="page-numbers" href="./artical_list.html">4</a>
			 -->	
				<!--  <span class="page-numbers dots">…</span> -->
				<!-- <a class="page-numbers last-number" href="/archive/?paged=51">6</a> -->
<!-- 				<a class="next page-numbers" href="./artical_list.html"></a> -->
				</div>
		<!--	 -->
			<!--pagination-->
	
	
			<div id="bottomline"></div>
		<?php 
		include 'footer.html';
		?>
		<?php 
		if($type == 0){
		    ?>
		<script type="text/javascript">
//         alert(1);
        var obj1 = document.getElementById("onActivity");
        var obj2 = document.getElementById("endActivity");
//         obj1.setAttribute("color","#774848");
        obj1.style.cssText = "color:Black;";
        obj2.style.cssText = "color:#b9b9b9;";
//         alert(1);
		</script>		    
		    <?php 
		}else{
		    ?>
		<script type="text/javascript">
        var obj1 = document.getElementById("onActivity");
        var obj2 = document.getElementById("endActivity");
        obj2.style.cssText = "color:Black;";
        obj1.style.cssText = "color:#b9b9b9;";
		</script>		    
		    <?php 
		}
		?>
  </div>
</body>
</html>
