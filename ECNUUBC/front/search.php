<?php 
include 'php/action.php';
include_once 'php/function.php';

$allModule = getModuleInfo();

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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">
	<script type="text/javascript" src="js/jquery.js"></script>	
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
    
    <div id="container" class="clearfix">
    	<div id="column1">
    	  <?php 
    	  foreach ($reCurSearch as $cateArt)
    	  {
    	  	?>
    	  				<div class="artical-latest">
    	  				  <div class="latest-text">
    	  				    <p class="latest-head">
    	  				      <a href="./artical.php?id=<?php echo $cateArt['log_ID'];?>"><?php echo $cateArt['log_Title'];?></a>
    	  				    </p>
    	  				    <p class="latest-author">
    	  				      <a href="./teacher.php?id=<?php echo $cateArt['log_AuthorID'];?>"><?php echo $cateArt['log_memName'];?></a>
    	  				      <span style="font-size:13px;color:#b9b9b9;"> | <?php echo date('Y-m-d',$cateArt['log_PostTime']);?></span>
    	  				    </p>
    	  				  </div>
    	  				</div>
    	  				<div class="clear"></div>
    	  	<?php 
    	  }
    	  
    	  ?>
    	   	<div class="clear"></div>
    	   	
    	   	
			<div class="pagination">
			    <?php 
			    if($pageRange > 1)
			    {
			    	$href = "action=cateArt"."&&id=".$content;
			    		
			    	$href = $href."&&pageRange=".($pageRange-1);
			    	?>
			    <a class="prev page-numbers" href="./artical_artical_all.php?<?php echo $href;?>"></a>
			    	<?php 
			    }
			    ?>
				<?php 
// 				echo "Right";
				$startPage = ($pageRange -1)*5 +1;
// 				echo $startPage;
				$endPage = $startPage + 4;
				
				$previousPages = ($pageRange -1)*5;
				if(($pagesize - $previousPages) < 5)
				{
					$endPage = $pagesize;
				}
// 				echo $endPage;
				for($i = $startPage; $i <= $endPage; $i++)
				{
					$href = "action=search"."&&content=".$content;
					$href = $href."&&page=".$i."&&pageRange=".$pageRange;
					?>
				    <a id="page<?php echo $i;?>" class="page-numbers" href="./search.php?<?php echo $href;?>"><?php echo $i;?></a>
					<?php
				}
				
				$temp = $pageRange*5;
				if($temp>$pagesize)
				{
					
				}else{
					$href = "action=cateArt"."&&id=".$content;
					
					$href = $href."&&pageRange=".($pageRange+1);
					?>
					<a class="next page-numbers" href="./artical_artical_all.php?<?php echo $href;?>"></a>
					<?php 
				}
				?>
			</div>
			<!--pagination-->
    	   	
    	</div>
    	
    	
    	
    	
    	
    	<div id="column2">
			<div class="box-border">
				<div class="box-border-content">
					<div class="column-head">
							<b>搜索文章</b>
					</div>
					<div class="search">
        				<form action="search.php" method="get">
            				<input type="text" name="content" id="content" class="input-text" placeholder="搜索" value="">
            				<button type="submit" class="search-btn"></button>
        				</form>
    				</div>
    				
    				
					<div id="all-artical">
						<div class="column-head">
							<a href="./artical_artical_all.php?action=cateArt"><b>主题专辑</b></a>
						</div>
						<!--column-head-->
                      <?php 
					    foreach ($allCateInfo as $key => $value)
					    {
						?>
						<div class="class-one">
						  <a href="./artical_artical_all.php?action=cateArt&&id=<?php echo $value['topcate_ID'];?>"><?php echo $value['topcate_Name'];?></a>
						  <div class="class-two">
						     <ul>
						        <?php 
						        foreach ($value['childCate'] as $key1 => $value1)
						        {
								?>
								<li><a href="./artical_artical_all.php?action=cateArt&&id=<?php echo $value['topcate_ID'];?>"><?php echo $value1['cate_Name'];?></a></li>
								<?php 

						        }
						        ?>
						     </ul>
						  </div>
						</div>
						
						<?php 
					    }
					   ?>
					</div>
					
					
					
					<!--professor-->
										
					<div id="label">
												<!--column-head-->
						
						<!--clearfix-->
					</div>
					<!--label-->

				</div>
				
				<!--box-border-content-->
			</div>
			<!--box-border-->
		</div>
    	<!-- colume2 -->
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
    	
    </div>
    
    	<?php 
	include 'footer.html';
	?>
</body>
