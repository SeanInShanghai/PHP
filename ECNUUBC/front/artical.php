<?php 
include 'php/prefix.php';
include 'php/function.php';
$id = $_GET['id'];
if(empty($_GET['id']))
{
	die();
}

$sqlArt = "SELECT * FROM ubc_post WHERE log_ID = $id";
$reArt = $zbp->db->Query($sqlArt);
if($reArt[0]['log_Tag'] == 4 || $reArt[0]['log_Tag'] == 1 ||$reArt[0]['log_Tag'] == 6 || $reArt[0]['log_Tag'] == 8  )
{
	$type = 1;
}else{
	$type = 0;
}
if(count($reArt) <= 0)
{
	die();
}



$mem_ID = $reArt[0]['log_AuthorID'];
$authorInfo = getAuthorInfo($mem_ID);

$sqlAddArt = "SELECT * FROM ubc_postaddition WHERE log_ID = $id";
$reAddArt = $zbp->db->Query($sqlAddArt);
// echo $reAddArt[0]['log_record'];
?>

<!DOCTYPE html>
<html lang="zh" class="zh" slick-uniqueid="3">
<head meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Global Political Research Center">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" charset="UTF-8"/>
	<title>现代中国与世界联合研究中心</title>
	<link rel="icon" href="./favicon.ico" type="/x-icon"/>
	<link rel="stylesheet" type="text/css" media="screen" href="./css/basic.css">
	<link rel="stylesheet" type="text/css" media="screen" href="./css/column2.css">	
		<link rel="stylesheet" type="text/css" media="screen" href="./css/post.css">	
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
    <?php 
    if($type == 0)
    {
    ?>
	<div id="container" class="clearfix">
		<div id="column1">	
			<div class="post-block">
				<h1 class="post-head"><?php echo $reArt[0]['log_Title'];?></h1>
				<p class="post-time"><?php echo date('Y-m-d',$reArt[0]['log_PostTime']);?></p>
				<div class="post-content">
					<?php echo $reArt[0]['log_Content'];?>
				</div>
				<!--post-content-->
			</div>
			<!--post-block-->
		</div>
		<!--#column1-->
		<div  id="column2">
			<div class="box-border">
				<div class="box-border-content">
					<div class="author clearfix">
						<div class="column-head">
							<b>作者</b>
						</div>
						<!--column-head-->
						<div class="author-img">
							<a href="./teacher.php?id=<?php echo $authorInfo['mem_ID'];?>">
							    <?php 
							    $headPortrait = $authorInfo['mem_headPortrait'];
							    ?>
								<img width="100" height="100" src="<?php echo substr($headPortrait,12,strlen($headPortrait));?>" alt="教师">
							</a>
						</div>
						<div class="author-info">
							<a href="./teacher.php?id=<?php echo $authorInfo['mem_ID'];?>"><p class="author-name"><?php echo $authorInfo['mem_Name'];?></p></a>
							<div class="author-intro">
								<p><?php echo $authorInfo['mem_Intro'];?></p>
							</div>
						</div>
					</div>
					<div class="splitline-grey"></div>
					<div id="popular-artical">
						<div class="column-head">
							<b>相关文章</b>
						</div>
						<!--column-head-->
						<ul class="popular-artical-title clearfix">
						<?php 
						foreach ($authorInfo['papers'] as $paperInfo )
						{
							?>
							<li><a href="./artical.php?id=<?php echo $paperInfo['log_ID'];?>"><?php echo $paperInfo['log_Title'];?></a></li>
							<?php 
						}
						?>
						</ul>
					</div>
					<!--popular-artical-->
				</div>
				<!--box-border-content-->
			</div>
			<!--box-border-->
		</div>
		<!--#column2-->
	</div>
	<!--#container-->
	<?php
    } 
	else 
	{
		?>
	<div id="container" class="clearfix">
		<div id="columnarticalfull">
		<div class="post-block">
				<h1 class="post-head"><?php echo $reArt[0]['log_Title'];?></h1>
				<p class="post-time"><?php echo date('Y-m-d',$reArt[0]['log_PostTime']);?></p>
				<?php 
				if($reAddArt[0]['log_record'] != '')
				{
					$str = $reAddArt[0]["log_record"];
					?>
				<div id="audio-player" style="height:150px;">
				<audio controls="controls">
	  				<source src="<?php echo substr($str,12,strlen($str));?>" type="audio/mpeg">file</source>
				</audio>
				</div>
					<?php 
				}
					
				?>
				
				<div class="post-content">
					<?php echo $reArt[0]['log_Content'];?>
				</div>
				<!--post-content-->
			</div>
			<!--post-block-->
		</div>
	</div>
	<?php 
	}?>
	
	<div id="bottomline"></div>
	<?php 
	include 'footer.html';
	?>
</body>
</html>
