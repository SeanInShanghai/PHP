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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/artical-column2.css">	
	<link rel="stylesheet" type="text/css" media="screen" href="./css/preview.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<style type="text/css">
    a{
/* 	  color:#B9B9B9; */
    }
    </style>	
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
	<div id="container" class="clearfix">
		<div id="column1">
			<div class="column-head" style="margin-top:15px;">
			<?php
			$curHref = "action=cateArt"."&&id=".$id; 
			?>
				<a id="parentCate<?php echo $id;?>" href="./artical_artical_all.php?<?php echo $curHref;?>"><?php echo $reTopCate[0]['topcate_Name'];?>&nbsp;&nbsp;|&nbsp;&nbsp;
				<?php 
				$counter = 0;
				foreach ($reChildCate as $childCate)
				{
					$counter++;
				?>
				<a id="childCateID<?php echo $childCate['cate_ID'];?>" href="./artical_artical_all.php?<?php echo $curHref."&&childCateID=".$childCate['cate_ID'];?>"><?php echo $childCate['cate_Name'];?></a>
				<?php 
					if(count($reChildCate) == $counter)
					{
						
					}else{
						echo "&nbsp;&nbsp;|&nbsp;&nbsp;";
					}
				}
				?>
				
				
			</div>
			<script type= "text/javascript" >
			<?php 
			echo "document.getElementById('parentCate$id').style.color = 'red';";
			if(isset($_GET['childCateID']))
			{
				$mychildcateid = $_GET['childCateID'];
				echo "document.getElementById('childCateID$mychildcateid').style.color = 'red';";
			}
			?>
			</script>
			<?php 
			foreach ($reCurArts as $cateArt)
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
			<!--column-head-->

			<!--artial-latest-->
			<div class="clear"></div>
			<div class="pagination">
			<?php 
			if($pageRange > 1)
			{
				$href = "action=cateArt"."&&id=".$id;
				if(isset($_GET['childCateID']))
				{
					$href = $href."&&childCateID=".$_GET['childCateID'];
				}
				$href = $href."&&pageRange=".($pageRange-1);
				?>
				<a class="prev page-numbers" href="./artical_artical_all.php?<?php echo $href;?>"></a>
				<?php 
				
			}
			?>
				<?php 
				$startPage = ($pageRange -1)*5 +1;
				$endPage = $startPage + 4;
				$previousPages = ($pageRange -1)*5;
				if(($pagesize - $previousPages) < 5)
				{
					$endPage = $pagesize;
				}
				for($i = $startPage; $i <= $endPage; $i++)
				{
					$href = "action=cateArt"."&&id=".$id;
					if(isset($_GET['childCateID']))
					{
						$href = $href."&&childCateID=".$_GET['childCateID'];
					}
					$href = $href."&&page=".$i."&&pageRange=".$pageRange;
					?>
				    <a id="page<?php echo $i;?>" class="page-numbers" href="./artical_artical_all.php?<?php echo $href;?>"><?php echo $i;?></a>
					<?php
// 					if($i == $page)
// 					{
// 						echo "<script type= text/javascript >";
// 						// 					echo 'document.getElementById("page".$i).stype.color = "black";';
// 						echo "document.getElementById('page$i').style.color = 'black';";
// 						echo "</script>";
// 					}
				}
				
				$temp = $pageRange*5;
				if($temp>$pagesize)
				{
					
				}else{
					$href = "action=cateArt"."&&id=".$id;
					if(isset($_GET['childCateID']))
					{
						$href = $href."&&childCateID=".$_GET['childCateID'];
					}
					$href = $href."&&pageRange=".($pageRange+1);
					?>
					<a class="next page-numbers" href="./artical_artical_all.php?<?php echo $href;?>"></a>
					<?php 
				}
				?>
			</div>
			<!--pagination-->
		</div>
		<!--#column1-->
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
					<div class="splitline"></div>					
					<div id="label">
						<div class="column-head">
							<b>全部版块</b>
						</div>
						<!--column-head-->
						<div class="clearfix">
						    <?php 
						    $count = 0;
						    foreach ($allModule as $module)
						    {
						    	if($count %2 ==0)
						    	{
						    		
						    	
						    	?>
						    <div class="label-background label-left">
								<a href="artical_preview.php?tag_ID=<?php echo $module['tag_ID'];?>&&action=moduleArts"><?php echo $module['tag_Name'];?></a>
							</div>	
						    	<?php
						    	}else{
                                ?>
                            <div class="label-background">
								<a href="artical_preview.php?tag_ID=<?php echo $module['tag_ID'];?>&&action=moduleArts"><?php echo $module['tag_Name'];?></a>
							</div>
                                <?php 
								} 
								$count++;
						    }
						    ?>
						</div>
						<!--clearfix-->
					</div>
					<!--label-->


				</div>
				<!--box-border-content-->
			</div>
			<!--box-border-->
		</div>
		<!--#column2-->
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
