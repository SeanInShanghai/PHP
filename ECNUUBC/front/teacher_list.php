<?php
include 'php/action.php'; 
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
	<div id="container" class="clearfix">
		<div class="column-head" style="margin-top:80px;">
			<b>全部教师</b>
		</div>
		<?php 
		foreach ($reAllTeachs as $reAllTeach)
		{
			
			?>
			<div class="teacher-brief">
			   <img width="70" height="70" src="<?php echo substr($reAllTeach['mem_headPortrait'],12,strlen($reAllTeach['mem_headPortrait']));?>" alt="教师1">
			   <a class="teacher-brief-name" href="./teacher.php?id=<?php echo $reAllTeach['mem_ID'];?>"><?php echo $reAllTeach['mem_Name'];?></a>
			   <p><?php echo $reAllTeach['mem_Alias']; ?></p>
			</div>
			<?php
		}
		?>
	</div>
	<!--#container-->
			<div id="bottomline"></div>
	<?php 
	include 'footer.html';
	?>
</body>
</html>
