<?php 
include 'prefix.php';
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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/teacher.css">	
	<style type="text/css">
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
	<div id="container" class="clearfix" style="margin-bottom:100px;">
		<div class="column-head" style="margin-top:100px;margin-left:100px">
			<b>中心介绍</b>
		</div>
		<p style="text-align:center;"><?php echo $zbp->option['ZC_BLOG_COPYRIGHT'];?></p>
	</div>
	<!--#container-->
			<div id="bottomline"></div>
		<?php 
		include 'footer.html';
		?>
	</div>
</body>
</html>
