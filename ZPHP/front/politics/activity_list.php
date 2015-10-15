<?php
include 'function/getSalons.php';
?>
<?php 
$count = 6;
$totalCount = count($allSalons);
$pagesize = 0;
if($totalCount % $count == 0)
{
	$pagesize = $totalCount/$count;
}else{
	$pagesize = $totalCount/$count + 1;
}
$page = 1;
$page = $_GET['page'];
if(empty($page))
{
	$page = 1;
}
?>
<?php 
$pageInfo = array($page,$count);

$salons = getSalons($pageInfo);
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
		<div class="column-head" style="margin-top:100px;">
			<b>沙龙活动</b>
			<span style="font-size:13px;color:#b9b9b9;">｜</span>
			<a href="#"><span style="font-size:13px;color:#b9b9b9;">已结束活动 »</span></a>
		</div>
		
		<?php 
		foreach ($salons as $salon)
		{
			include 'function/getSalonInfo.php';
// 			echo $salon['log_ID'];
// 			echo "My id:". $salonInfo['log_ID'];
			?>
		<div class="activity-brief">
			<img class="activity-img" src="<?php echo substr($mysalon['titleImage'],18);?>">
				<div class="activity-text">
					<p class="activity-head">
						<a href="./activity.php?<?php echo "id=".$mysalon['log_ID'];?>"><?php echo $salon['log_Title'];?></a>
					</p>
					<p class="activity-time">
						<span style="font-size:13px;color:#b9b9b9;"><?php echo date('Y年m月d日 H:i ',$salon['log_PostTime']); ?></span>
					</p>
					<p class="activity-abstract">本期沙龙，我们将邀请三位嘉宾，探讨免除学杂费政策是否推高了民众对政府进一步加大义务教育支出的期待？中央政府的支持度是否得到了显著提升？</p>
				</div>
		</div>
			
			<?php 
		}
		?>
		
	
	</div>
	<!--#container-->
	
	<!-- pagination -->
	<div class="pagination">
	<?php
			 
			for($i = 1; $i <= $pagesize; $i++)
			{
				?>
				<a class="page-numbers" href="./artical_list.php?<?php echo "page=".$i;?>"><?php echo $i;?></a>
				<?php 
			}
	?>
	</div>
	<!-- #pagination -->
	
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
