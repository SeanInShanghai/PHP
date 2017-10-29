<?php 
include 'function/artical_listbase.php';
// echo "oooo";
include_once 'function/action.php';
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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/column2.css">	
		<link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">	
</head>
<body data-mobile-url="/zh/mobile">
<?php 
include 'header.html';
?>
	<div id="container" class="clearfix">
		<div id="column1">
			<div class="column-head" style="margin-top:15px;display:none">
				<a href="#"><b>最新文章</b></a>
				<!--  <span style="font-size:13px;color:#b9b9b9;">｜</span>-->
				<a href="#"><b>最热文章</b></a>
			</div>
			<!--column-head-->

			<!-- paper list -->

			
		

<?php 
// echo $reLCArts[1]['log_pic'];
foreach($reLCArts as $reLCArt)
{
	?>
<div class="artical-latest">
   <img class="latest-img" src="<?php echo $reLCArt['log_pic'];?>">
   <div class="lastest-text">
		<p class="latest-head">
			<!--artial-latest-->
			<a href="./artical.php?<?php echo "id=".$reLCArt['log_ID']; ?>"><?php echo $reLCArt['log_Title'];?></a>
		</p>
		<p class="latest-head">
			<a href="./teacher.php"><?php echo $reLCArt['log_AuthorID'];?></a>
			<span style="font-size:13px;color:#b9b9b9;margin-left: -350px;"> | <?php  echo date("Y年m月d日",$reLCArt['log_PostTime']);?></span>
		</p>
		<p class="latest-abstract"><?php echo $reLCArt['log_abstract'];?></p>
	</div>
	<div class="clear"></div>
</div>
	<?php 
}
?>
    	<!--artial-latest-->
			 
			
			<div class="clear"></div>
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
				$href = $href."&&content=".$content;
			?>
			<a class="prev page-numbers" href="./search.php?<?php echo $href;?>"></a>
			<?php 
			}
				$startPage = ($pageRange -1)*5 +1;
				$endPage = $startPage + 4;
// 				echo $startPage;
// 				echo $endPage;
				$previousPages = ($pageRange -1)*5;
				if(($pagesize - $previousPages) < 5)
				{
					$endPage = $pagesize;
				}
				
				for($i = $startPage; $i<= $endPage; $i++)
				{
// 					$href = "tag_ID=".$tag_ID."&&action=moduleArts";
					$href = "page=".$i."&&pageRange=".$pageRange;
					$href = $href."&&content=".$content;
										
					?>
					<a id="page<?php echo $i;?>" class="page-numbers" href="./search.php?<?php echo $href?>"><?php echo $i?></a>
					<?php
					$href = '';
				}
				
				$temp = $pageRange*5;
				if($temp >= $pagesize)
				{
				
				}else{
//                     $href = "tag_ID=".$tag_ID."&&action=moduleArts";
                    $href = $href."&&pageRange=".($pageRange+1);
                    $href = $href."&&content=".$content;
					?>
					<a class="next page-numbers" href="./search.php?<?php echo $href?>"></a>
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
		</div>
		<!--#column1-->
		<div id="column2">
			<div class="box-border">
				<div class="box-border-content">
					<div class="column-head" >
							<b>筛选文章</b>
							<span style="font-size:13px;color:#b9b9b9;">｜</span>
							<a href="./artical_list.php"><span style="font-size:13px;color:#b9b9b9;">全部 »</span></a>
					</div>
					<div class="search">
        			    <form action="./search.php" method="get">
            				<input type="text" name="conent" id="s" class="input-text" placeholder="搜索" value="">
            				<button class="search-btn"></button>
        				</form>
        				<p>搜索内容：<?php echo $content;?></p>
    				</div>
					<div id="label" style="display:none">
						<div class="column-head">
							<b>标签筛选</b>
						</div>
						<!--column-head-->
						<div class="clearfix">
						<?php 
						foreach ($tags as $key => $value)
						{
							?>
							<div class="label-background label-left">
								<a href="./showPaperList.php?action=cate&<?php echo 'cate_ID='.$value['cate_ID'];?>"><?php echo  $value['cate_Name'];?></a>
							</div>
							<?php 
						}
						?>
						
						</div>
						<!--clearfix-->
					</div>
					<!--label-->
					<div class="splitline" style="display:none"></div>
					<div id="professor-all" style="display:none">
						<div class="column-head">
							<b>作者筛选</b>
						</div>
						<!--column-head-->
						<div class="clearfix">
						 <?php
							foreach ($members as $key => $value)
							{
								?>
								
								<div class="label-background label-left">
								<a href="#"><?php echo $value['mem_Name'];?></a>
							</div>
								<?php 
								
							}
						 ?>
						 
						
					
						</div>
						<!--clearfix-->
					</div>
					<!--professor-->
				</div>
				<!--box-border-content-->
			</div>
			<!--box-border-->
		</div>
		<!--#column2-->
	</div>
	<!--#container-->
			<div id="bottomline"></div>
		<?php 
		include 'footer.html';
		?>
</body>
</html>
