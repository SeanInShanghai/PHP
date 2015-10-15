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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/activity.css">
	<script type="text/javascript" src="js/jquery.bettertip.pack.js"></script>
	<script type="text/javascript" src="js/jquery-ui.custom.min.js"></script>	
	<script type="text/javascript" src="js/jquery.js"></script>	
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
    <div id="container" class="clearfix">
		<div class="column-head" style="margin-top:100px;">
			<b>知识分子论丛</b>
		</div>
		<?php 
		foreach ($reLCArts as $LCArt)
		{
			?>
			<div class="activity-brief">
<!-- 			  <img class="activity-img" src="./images/activity2.jpg"> -->
			<img class="activity-img" src="<?php echo substr($LCArt['log_pic'],12,strlen($LCArt['log_pic']));?>">
			  <div class="activity-text">
			    <p class="activity-head">
			    	<a href="./activity.php?id=<?php echo $LCArt['log_ID'];?>"><?php echo $LCArt['log_Title'];?></a>
			    </p>
			    <p class="activity-time">
			    	<span style="font-size:13px;color:#b9b9b9;"><?php echo date('Y年m月d日 ',$LCArt['log_PostTime']);?></span>
			    </p>
			  </div>
			</div>
			<?php 
		}
		?>
		<div class="clear"></div>
		<div class="pagination" >
		<?php 
		if($pageRange>1)
		{
			$href="action=activity_list"."&&pageRange=".($pageRange-1);
			?>
			<a class="prev page-numbers" href="./activity_list.php?<?php echo $href;?>"></a>
			<?php 
		}
		?>
		<?php 
			
			$startPage = ($pageRange-1)*5+1;
			$endPage = $startPage + 4;
			
			{
				$previousPages = ($pageRange-1)*5;
			}
			if(($pagesize-$previousPages) < 5)
			{
				$endPage = $pagesize;
			}

			
			for($i = $startPage; $i <= $endPage; $i++)
			{
				$href="action=activity_list"."&&page=".$i."&&pageRange=".$pageRange;
				?>
				<a id="page<?php echo $i;?>" class="page-numbers" href="./activity_list.php?<?php echo $href;?>"><?php echo $i;?></a>
				<?php
			}
			
			$temp = $pageRange*5;
			if($temp >= $pagesize)
			{
				
			}else{
               $href="action=activity_list"."&&pageRange=".($pageRange+1);
               ?>
               <a class="next page-numbers" href="./activity_list.php?<?php echo $href;?>"></a>
               <?php 
			}
		?>
		</div>
		<!--pagination-->
	</div>
	<!--#container-->
			<div id="bottomline"></div>

	<?php 
	include 'footer.html';
	?>
	<script type="text/javascript">
	
	$(document).ready(function(){ 
		$("a[class=active]:last")
		});
	<?php 
	if(isset($_GET['page']))
	{
		$page = $_GET['page'];
		echo "document.getElementById('page$page').style.color = 'black';";
	}
	?>
	</script>
	
</body>
</html>
