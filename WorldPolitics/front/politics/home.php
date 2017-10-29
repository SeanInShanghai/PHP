<?php 
// include 'function/homebase.php';
include 'prefix.php';
include 'function/action.php';
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
		<script type="text/javascript" src="./js/jquery-1.4.2.min.js"></script>	
	<style type="text/css">
		.tl {
           left: 0;
         }

        .tl, .tr {
		    opacity: 0.5;
		    position: absolute;
		    bottom: 160px;
		    margin-top: 6px;
		    cursor: pointer;
		    z-index: 21;
	     }
	     .tr {
	    	right: 0;
		}
        #slide-box .thumb-wrap {
    		height: 365px;
		}
		#mainbody{
	       margin-left:10%;
	       margin-right:10%;
		}

	</style>
</head>
<body data-mobile-url="/zh/mobile">
 <div id="mainbody">
    <?php 
    include 'header.html';
    ?>
<!-- 	<header> -->
<!-- 		<div id="topline"></div> -->
<!-- 		<div id="bar"></div> -->
<!-- 		<div id="headcontent"> -->
<!-- 			<div id="logo"></div> -->
<!-- 			<nav> -->
<!-- 				<ul> -->
<!-- 					<li> -->
<!-- 						<a href="./home.php">首页</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="./intro.php">中心介绍</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="./teacher_list.html">教师列表</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="./artical_list.php">文章</a> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="./activity_list.php">沙龙</a> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 			</nav> -->
<!-- 		</div> -->
		<!--headcontent-->
<!-- 	</header> -->
	<div id="container" class="clearfix">
	    <div id="showimg">
<!-- 	         <img id="myimg" src="./images/showimg.jpg"  alt="LOGO" /> -->
	    			<div id="slide-box">
				<ul rel="slide-data" style="display: none;">

<!-- 				<li>
				    <p class='data-title'>我是Title</p>
				    <p class='data-url'>./artical.php?id=1</p>
					<p class='data-description'>描述描述描述</p>
					<p class='data-thumb' >./images/showimg.jpg</p>
				</li> -->
				<?php 
				foreach ($threeNewsArr as $tmpnews){
				    ?>
				 <li>
				    <p class='data-title'><?php echo $tmpnews['log_Title']?></p>
				    <p class='data-url'>./artical.php?id=<?php echo $tmpnews['log_ID']?></p>
					<p class='data-description'><?php echo $tmpnews['log_Title']?></p>
					<p class='data-thumb' ><?php echo $tmpnews['titleImage'];?></p>
				</li>
				    <?php 
				}
				?>

				</ul>
		
				<div class="thumb-wrap">
					<div><a href="" id="myimg"><img id="myimg" rel="thumb" src=""  alt="" /></a></div>
					<img class="tl" rel="tl" alt="" src="./images/left.png" title="点击切换到上一张" /> 
					<img class="tr" rel="tr"  alt="" src="./images/right.png" title="点击切换到下一张" />
					<div class="shadow" rel="shadow"></div>
					<p class="description" rel="description">2010年7月23日，加拿大一架F-18战斗机为航空展进行预演时坠毁，飞行员在最后一刻逃生</p>
				</div>
			</div>
			<!--slide-->
	    </div>
	    		<div id="column">
			<div id="left-content">
			    <div class="inner-title"><h1>欢迎词</h1></div>
<!-- 			    <div class="inner-content" id="left-inner-content">我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是左边的内容我是</div> -->
			<div class="inner-content" id="left-inner-content">
			<?php echo $welcomeContent;?>
			</div>
			</div>
			<div id="center-content">
			    <div  class="inner-content">
					<div class="center-content">
					    <div class="inner-title" id="upper-inner-title"><h1>新闻</h1></div>
						<div class="artical-latest">
								<img class="latest-img" src="<?php echo $news['titleImage'];?>">
								<div class="lastest-text">
									<p class="latest-head">
										<!--artial-latest-->
									
										<a href="./artical.php?id=<?php echo $news['log_ID']?>"><?php echo $news['log_Title']?></a>
									</p>
									<p class="latest-head">
										<a href="./teacher.php"><?php echo $news['log_AuthorID'];?></a>
										<span style="font-size:13px;color:#b9b9b9;"> | <?php echo date("Y年m月d日",$news[0]['log_PostTime']);?></span>
									</p>
							
								</div>
								<div class="clear"></div>
						</div>
					</div>
					<div class="center-content">
					    <div class="inner-title" id="lower-inner-title"><h1>近期活动</h1></div>
						<div class="artical-latest">
								<img class="latest-img" src="<?php echo $activity['titleImage'];?>">
								<div class="lastest-text">
									<p class="latest-head">
										<!--artial-latest-->
									
										<a href="./activity.php?id=<?php echo $activity['log_ID']?>"><?php echo $activity['log_Title'];?></a>
									</p>
									<p class="latest-head">
										<a href="./teacher.php"><?php echo $activity['log_AuthorID']?></a>
										<span style="font-size:13px;color:#b9b9b9;"> | <?php echo date("Y年m月d日",$activity['log_PostTime']);?></span>
									</p>
								
								</div>
								<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<div id="right-content">
			    <div class="inner-title"><h1>最新文章</h1></div>
			    <div class="inner-content" id="right-inner-content">
					<div class="artical-latest">
								<img class="latest-img" src="<?php echo $newArticalRe[0]['titleImage']?>">
								<div class="lastest-text">
									<p class="latest-head">
										<!--artial-latest-->
									
										<a href="./artical.php?id=<?php echo $newArticalRe[0]['log_ID']?>"><?php echo $newArticalRe[0]['log_Title']?></a>
									</p>
									<p class="latest-head">
										<a href="./teacher.php"><?php echo $newArticalRe[0]['log_AuthorID']?></a>
										<span style="font-size:13px;color:#b9b9b9;"> | <?php echo date("Y年m月d日",$newArticalRe[0]['log_PostTime']);?></span>
									</p>
							
								</div>
								<div class="clear"></div>
						</div>
					<div class="artical-latest">
								<img class="latest-img" src="<?php echo $newArticalRe[1]['titleImage'];?>">
								<div class="lastest-text">
									<p class="latest-head">
										<!--artial-latest-->
									
										<a href="./artical.php?id=<?php echo $newArticalRe[1]['log_ID']?>"><?php echo $newArticalRe[1]['log_Title']?></a>
									</p>
									<p class="latest-head">
										<a href="./teacher.php"><?php echo $newArticalRe[0]['log_AuthorID']?></a>
										<span style="font-size:13px;color:#b9b9b9;"> | <?php echo date("Y年m月d日",$newArticalRe[1]['log_PostTime']);?></span>
									</p>
							
								</div>
								<div class="clear"></div>
						</div>
				</div>
			</div>
		</div>
		<?php 
		include 'footer.html';
		?>
		<script type="text/javascript" src="./js/slide-a.js"></script>
	</div>
</body>
</html>
