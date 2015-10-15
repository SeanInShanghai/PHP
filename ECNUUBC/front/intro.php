<?php 
include 'php/prefix.php';
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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/teacher.css">	
</head>
<body data-mobile-url="/zh/mobile">
	
	<?php 
	include 'header.html';
	?>
		<div id="container" class="clearfix" style="min-height:50%;">
		<div class="column-head" style="margin-top:100px; padding-bottom:30px;">
			<b>中心介绍</b>
		</div>
		<div>
		<p style="text-align:left;"><?php echo $zbp->option['ZC_BLOG_COPYRIGHT'];?></p>	
		</div>
	</div>
	<!--#container-->
			<div id="bottomline"></div>
	<?php 
	include 'footer.html';
	?>
</body>
</html>
