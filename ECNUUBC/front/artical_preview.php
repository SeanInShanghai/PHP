<?php 
if(empty($_GET['action']) || empty($_GET['tag_ID']))
{
	die();
}
include 'php/action.php';
include_once 'php/function.php';

$allModule = getModuleInfo();

$tag_ID = $_GET['tag_ID'];
if($tag_ID == 1 || $tag_ID == 8)
{
	$isPic = 1;
}else{
	$isPic = 0;
}

if($tag_ID == 1)
{
	$absSty = 1;
}else if($tag_ID == 8)
{
	$absSty = 2;
}else{
	$absSty = 3;
}

if($tag_ID == 1)
{
	$showType = 1;
}else if($tag_ID == 4)
{
	$showType = 2;
}else if($tag_ID == 6)
{
	$showType =3;
}else if($tag_ID == 8)
{
	$showType = 4;
}else {
	$showType = 5;
}

if($tag_ID == 4 || $tag_ID == 8)
{
	$isShowAuth = 0;
}else{
	$isShowAuth = 1;
}

if($tag_ID == 8)
{
	$comPic = 1;
}else if($tag_ID == 1)
{
	$comPic = 0;
}

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
	<link href="./css/ui.css" type="text/css" rel="stylesheet" rev="stylesheet" media="screen" />
	<script type="text/javascript" src="./js/jquery-1.4.2.min.js"></script>	
</head>
<body data-mobile-url="/zh/mobile">
	<?php 
    include 'header.html';
    ?>
	<div id="container" class="clearfix">
		<div id="column1">
			<div class="column-head" style="margin-top:15px;">
				<a href="#"><b><?php echo $reTagInfo[0]['tag_Name'];?></b></a>
			</div>
			
			<?php 
// 			echo $showType;
			if($showType == 2)//中心新闻
			{
// 				echo "OK";
				?>
			
			<div id="slide-box"">
				<ul rel="slide-data" style="display: none;">
				<?php 
// 				echo count($reSliders);
				foreach ($reSliders as $reSlider)
				{
// 					echo "ok";
					?>
				<li>
				   <p class='data-title'></p>
				    <p class='data-url'>./artical.php<?php echo "?id=".$reSlider['log_ID'];?></p>
					<p class='data-description'><?php echo $reSlider['log_Title'];?></p>
					<p class='data-thumb'><?php echo substr($reSlider['log_pic'],12,strlen($reSlider['log_pic']));?></p>
				</li>
					<?php 
				}
				?>
				</ul>
		
				<div class="thumb-wrap">
					<div><a href=""><img rel="thumb" src="" width="600" height="365" alt="" /></a></div>
					<img class="tl" rel="tl" alt="" src="./images/left.png" title="点击切换到上一张" /> 
					<img class="tr" rel="tr"  alt="" src="./images/right.png" title="点击切换到下一张" />
					<div class="shadow" rel="shadow"></div>
					<p class="description" rel="description"></p>
				</div>
			</div>
			
				<?php 
			}
			?>
			
			<!--column-head-->
            <?php 
            foreach ($reCurArts as $tagArt)
            {
            	?>
			<div class="artical-latest">
				<div class="latest-text">
				    <?php 
				    if($isPic == 1)
				    {
				    	if($comPic == 1)//扁平的图片
				    	{
				    		?>
				    		<img class="latest-img2" src="<?php echo substr($tagArt['log_pic'],12,strlen($tagArt['log_pic']));?>">
				    		<?php 
				    	}else{//正常的图片
					    ?>
						<img class="latest-img" src="<?php echo substr($tagArt['log_pic'],12,strlen($tagArt['log_pic']));?>">
						<?php 
					     }
				    }else{
				    	
				    }
					?>
					<p class="latest-head">
						<a href="./artical.php?id=<?php echo $tagArt['log_ID'];?>"><?php echo $tagArt['log_Title'];?></a>
					</p>
					<p class="latest-author">
					<?php 
					if($isShowAuth == 1)
					{
						?>
						<a href="./teacher.php?id=<?php echo $tagArt['log_AuthorID'];?>"><?php echo $tagArt['log_AuthorName'];?></a>
						<span style="font-size:13px;color:#b9b9b9;"> | 2014-06-23</span>
						<?php 
					}else {
					?>
						<span style="font-size:13px;color:#b9b9b9;"><?php echo date('Y年m月d日 ',$tagArt['log_PostTime']);?></span>
					<?php }?>
					</p>
					<?php 
					if($absSty == 1)
					{
						?>
						<p class="latest-abstract1"><?php echo $tagArt['log_abstract'];?></p>
						<?php 
					}else if($absSty == 2){
 						?>
 						<p class="latest-abstract2"><?php echo $tagArt['log_abstract'];?></p>
 						<?php 
					}else{
                        ?>
                       <p class="latest-abstract"><?php echo $tagArt['log_abstract'];?></p> 
                        <?php 
					}
					?>
					
				</div>
			</div>    
			<div class="clear"></div>   	
            	<?php 
            }
            ?>
	
			<!--artial-latest-->
			<div class="clear"></div>
			<div class="pagination">
			<?php 
// 			if($pagesize/5 == 0)
// 			{
// 				$allPageRange  = $pagesize / 5;
// 			}else{
//                 $allPageRange = (int)($pagesize/5) +1;
// 			}
			if($pageRange > 1 )
			{
				$href = "tag_ID=".$tag_ID."&&action=moduleArts";
				$href = $href."&&pageRange=".($pageRange-1);
			?>
			<a class="prev page-numbers" href="./artical_preview.php?<?php echo $href;?>"></a>
			<?php 
			}
				$startPage = ($pageRange -1)*5 +1;
				$endPage = $startPage + 4;
				$previousPages = ($pageRange -1)*5;
				if(($pagesize - $previousPages) < 5)
				{
					$endPage = $pagesize;
				}
				
				for($i = $startPage; $i<= $endPage; $i++)
				{
					$href = "tag_ID=".$tag_ID."&&action=moduleArts";
					$href = $href."&&page=".$i."&&pageRange=".$pageRange;
										
					?>
					<a id="page<?php echo $i;?>" class="page-numbers" href="./artical_preview.php?<?php echo $href?>"><?php echo $i?></a>
					<?php 
				}
				
				$temp = $pageRange*5;
				if($temp >= $pagesize)
				{
				
				}else{
                    $href = "tag_ID=".$tag_ID."&&action=moduleArts";
                    $href = $href."&&pageRange=".($pageRange+1);
					?>
					<a class="next page-numbers" href="./artical_preview.php?<?php echo $href?>"></a>
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
							<b>筛选文章</b>
					</div>
					<div class="search">
        				<form action="search.php" method="get">
            				<input type="text" name="content" id="content" class="input-text" placeholder="搜索" value="">
            				<button type="submit" class="search-btn"></button>
        				</form>
    				</div>
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
					<div class="splitline"></div>
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
	<script type="text/javascript" src="./js/slide-a.js"></script>
</body>
</html>
