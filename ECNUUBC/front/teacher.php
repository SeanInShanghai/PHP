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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">	
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" media="screen" href="./css/scrollbar.css">	
	<script type="text/javascript" src="./js/jquery-1.4.2.min.js"></script>	
	<script type="text/javascript" src="./js/jquery.tinyscrollbar.min.js"></script>	
	<script type="text/javascript">
	$(document).ready(function()
	{
	$("#scrollbar").tinyscrollbar();
	});
               
	</script>
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
	<div id="container" class="clearfix">
		<div id="teacher">
			<img class="teacher-img" src="<?php echo substr($reBaseInfo[0]['mem_headPortrait'], 12, strlen($reBaseInfo[0]['mem_headPortrait']));?>" alt="教师1">
			<div id="teacher-info">
				<h1 class="teacher-name"><?php echo $reBaseInfo[0]['mem_Name'];?></h1>
				<p class="teacher-title"><?php  echo $reBaseInfo[0]['mem_Alias']?></p>
				<p class="teacher-contact"><?php echo $reBaseInfo[0]['mem_Email'];?></br><?php echo $reBaseInfo[0]['mem_HomePage'];?></p>
			</div>
			<div id="teacher-abstract">
			    <div id="scrollbar" class="scrolled-text">
				<div class="scrollbar" style="height: 193px;">
				<div class="track" style="height: 193px;">
				<div class="thumb" style="top: 0px; height: 111.523952095808px;">
				<div class="end">
				</div>
				</div>
				</div>
				</div>
				<div class="viewport">
				<div class="overview" style="top: 0px;">
				<p><?php echo $reBaseInfo[0]['mem_Alias'];?></p>
				</div>
				</div>
				</div>
				
			</div>
		</div>
		<!--#teacher-->
		<div class="splitline"></div>
		<div class="teacher-artical">
		<?php
		$count =0; 
		foreach ($reSearch as $search)
		{
			if($count % 2 == 0)
			{
			?>
			<div class="latest-text teacher-artical-info">
			<p class="latest-head">
			<a href="./artical.php?id=<?php echo $search['log_ID'];?>"><?php echo $search['log_Title'];?></a>
			</p>
			<p class="latest-abstract">
			<?php echo  $search['log_abstract'];?>
			</p>
			</div>
			<?php
			}else{
            ?>
			<div class="latest-text">
			<p class="latest-head">
			<a href="./artical.php?id=<?php echo $search['log_ID'];?>"><?php echo $search['log_Title'];?></a>
			</p>
			<p class="latest-abstract">
			<?php echo  $search['log_abstract'];?>
			</p>
			</div>
			<?php
			}
			$count++;
		}
		?>
		</div>
		<!--teacher-artical-->
		<div class="clear"></div>
		<div class="pagination">
		<?php 
		if($pageRange>1)
		{
			$href="id=".$id."&&action=teacher"."&&pageRange=".($pageRange-1);
			?>
			<a class="prev page-numbers" href="./teacher.php?<?php echo $href;?>"></a>
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
				$href="id=".$id."&&action=teacher"."&&page=".$i."&&pageRange=".$pageRange;
				?>
				<a id="page<?php echo $i;?>" class="page-numbers" href="./teacher.php?<?php echo $href;?>"><?php echo $i;?></a>
				<?php
			}
			
			$temp = $pageRange*5;
			if($temp >= $pagesize)
			{
				
			}else{
               $href="id=".$id."&&action=teacher"."&&pageRange=".($pageRange+1);
               ?>
               <a class="next page-numbers" href="./teacher.php?<?php echo $href;?>"></a>
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
