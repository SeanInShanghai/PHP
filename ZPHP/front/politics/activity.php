<?php 
$id = $_GET['id'];
// echo $id;
include 'getArticle.php';

include 'function/manageCount.php';

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
		<div class="column-head" style="margin-top:100px; margin-bottom:100px;">
			<b>沙龙介绍</b>
		</div>
		<div class="activity-block">
			<!-- <img src="./images/activity2.jpg"> -->
			<div class="activity-intro">
				<!-- <h1>第20期沙龙活动预告</h1> -->
				<h1><?php echo $article->Title;?></h1>
				<!-- <p>日期：2014年6月29日 13:30</p> -->
				<p><?php echo $article->Time('Y年m月d日');?></p>
				<!-- <p>地点：第一教学楼201</p>-->	
						
			</div>
		</div>
		<div class="activity-content">
				<p><?php echo $article->Content;?></p>
		</div>
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
