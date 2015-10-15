<?php 
include 'function/homebase.php';
?>
<!DOCTYPE html>
<html lang="zh" class="zh" slick-uniqueid="3">
<head meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Global Political Research Center">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="UTF-8"/>
	<!-- <title>世界政治研究中心</title> -->
	<title><?php 
	
	?></title>
	<link rel="icon" href="./favicon.ico" type="/x-icon"/>
	<link rel="stylesheet" type="text/css" media="screen" href="./css/basic.css">
	<link rel="stylesheet" type="text/css" media="screen" href="./css/column2.css">	
		<link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">	
</head>
<body data-mobile-url="/zh/mobile">
	<header>
		<div id="topline"></div>
		<div id="bar"></div>
		<div id="headcontent">
			<div id="logo"></div>
			<nav>
				<ul>
					<li>
						<a href="./home.php">首页</a>
					</li>
					<li>
						<a href="./intro.php">中心介绍</a>
					</li>
					<li>
						<a href="./artical_list.php">文章</a>
					</li>
					<li>
						<a href="./activity_list.php">沙龙</a>
					</li>
				</ul>
			</nav>
		</div>
		<!--headcontent-->
	</header>
	<div id="container" class="clearfix">
		<div id="column1">
			<div class="column-head" style="margin-top:15px;">
				<b>最新发表</b>
				<span style="font-size:13px;color:#b9b9b9;">｜</span>
				<a href="./artical_list.php"><span style="font-size:13px;color:#b9b9b9;">阅读更多 »</span></a>
			</div>
			<!--column-head-->
			
<?php 
//echo "The number of articles:".count($articles);
foreach ($articles as $article)
{
	?>
<div class="artical-latest">
		<?php 
		include 'function/getAddToPost.php'; 
		?>
	<img class="latest-img" src="<?php echo $titleImage;?>">
	<div class="lastest-text">
		<p class="latest-head">
			<!--artial-latest-->
		
			<a href="./artical.php?<?php echo $url; ?>"><?php echo $article->Title;?></a>
		</p>
		<p class="latest-head">
			<a href="./teacher.php"><?php echo $article->Author->StaticName;?></a>
			<span style="font-size:13px;color:#b9b9b9;"> | <?php  echo $article->Time('Y年m月d日');?></span>
		</p>
		<p class="latest-abstract"><?php echo $abstract;?></p>
	</div>
	<div class="clear"></div>
</div>

	<?php 
}

?>
			
		
		</div>
		<!--#column1-->
		<div id="column2">
			<div class="box-border">
				<div class="box-border-content">
					<div id="popular-artical">
						<div class="column-head">
							<b>热门文章</b>
							<span style="font-size:13px;color:#b9b9b9;">｜</span>
							<a href="./artical_list.php"><span style="font-size:13px;color:#b9b9b9;">更多 »</span></a>
						</div>
						<!--column-head-->
						<ul class="popular-artical-title clearfix">
							<li><a href="./artical.php">自我表述：民族团结的助推器？</a></li>
							<li><a href="./artical.html">非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a></li>
							<li><a href="./artical.html">小众“教门”是怎样炼成的？</a></li>
							<li><a href="./artical.html">民生能否换民意?</a></li>
							<li><a href="./artical.html">高绩效的政府容易获得市民信任</a></li>
						</ul>
					</div>
					<!--popular-artical-->
					<div class="splitline"></div>
					<div id="label">
						<div class="column-head">
							<b>热门标签</b>
						</div>
						<?php
						include 'getCata.php';
						?>
						<!--column-head-->
						<div class="clearfix">
							<?php 
							$count = 0;
							foreach($tags as $key => $value)
							{
								$count++;
								if($count%3 != 0){
								?>
							<div class="label-background label-left">
								<a href="./showPaperList.php?action=cate&<?php echo 'cate_ID='.$value['cate_ID'];?>"><?php echo $value['cate_Name'];?></a>
							</div>
								<?php 
								}else{
								?>								
							<div class="label-background">
								<a href="./showPaperList.php?action=cate&<?php echo 'cate_ID='.$value['cate_ID'];?>"><?php echo $value['cate_Name'];?></a>
							</div>
								<?php 
								}

							}
							?>
				
						</div>
						<!--clearfix-->
					</div>
					<!--label-->
					<div class="splitline"></div>
					<div id="professor">
						<div class="column-head">
							<b>教师链接</b>
							<span style="font-size:13px;color:#b9b9b9;">｜</span>
							<a href="./teacher_list.html"><span style="font-size:13px;color:#b9b9b9;">更多 »</span></a>
						</div>
						<?php 
						include 'getMemberlist.php';
						?>
						<!--column-head-->
						<div class="clearfix">
							<?php
							$count = 0; 
							foreach ($members as $member){
								$count++;
								if($count%3 != 0)
								{
								?>
							<div class="professor professor-left">
 								<a href="./teacher.php">
  									<img width="70" height="70" src="./images/head.jpeg" alt="教师1">
 			 					</a>
  								<a class="name" href="./teacher.php"><?php echo $member['mem_Name'];?></a>
  							</div>	
								<?php 
								}else{
								?>
							<div class="professor">
							<a href="./teacher.php">
							<img width="70" height="70" src="./images/head3.jpeg" alt="教师3">
							</a>
							<a class="name" href="./teacher.php"><?php echo $member['mem_Name'];?></a>
							</div>
							<?php 						
								}
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
	<footer>
		<div id="footercontent">
			<div id="bottomlogo">
				<img width="300px;"height="70px;" src="./images/politic_logo.png" alt="教师1">
			</div>
			<div id="link">
				<p style="color:#b9b9b9;margin-bottom:10px;">友情链接</p>
				<div style="width:80px;float:left;">
				<a href="#">链接1</a><br>
				<a href="#">链接2</a><br>
				</div>
				<div style="width:150px;float:left;">
				<a href="#">链接4</a><br>
				<a href="#">链接5</a><br>
				</div>

			</div>
		</div>
	</footer>
</body>
</html>
