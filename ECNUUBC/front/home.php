<?php include 'php/action.php';?>


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
	<link href="./css/ui.css" type="text/css" rel="stylesheet" rev="stylesheet" media="screen" />
	<script type="text/javascript" src="./js/jquery-1.4.2.min.js"></script>
</head>
<body data-mobile-url="/zh/mobile">

    <?php 
    include 'header.html';
    ?>

	<div id="container" class="clearfix">
		<div id="column1">
			<div id="slide-box"">
				<ul rel="slide-data" style="display: none;">
				<?php 
				foreach ($reSliders as $reSlider)
				{
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
					<p class="description" rel="description">2010年7月23日，加拿大一架F-18战斗机为航空展进行预演时坠毁，飞行员在最后一刻逃生</p>
				</div>
			</div>
			<!--slide-->
			<div class="columnA">
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>中心预告</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $cenPreTag_ID?>&&action=moduleArts"><span style="font-size:13px;color:#b9b9b9;">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					  foreach ($reCenPres as $cenPre)
					  {
					  	?>
					  	<li><a href="./artical.php?id=<?php echo $cenPre['log_ID'];?>"><?php echo $cenPre['log_Title'];?></a></li>
					  	<?php 
					  }
					?>
					</ul>
				</div>
				<!--homepage-part-->
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>中心新闻</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $cenNewsTag_ID;?>&&action=moduleArts">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($reCenNews as $CenNews)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $CenNews['log_ID'];?>"><?php echo $CenNews['log_Title'];?></a></li>
						<?php
					}
					?>
					</ul>
				</div>
				<!--homepage-part-->
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>中心新作</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $cenMake_Tag;?>&&action=moduleArts"><span style="font-size:13px;color:#b9b9b9;">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($reCenMake as $cenMake)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $cenMake['log_ID'];?>"><?php echo $cenMake['log_Title'];?></a></li>
						<?php
					}
					?>
					</ul>
				</div>
				
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>讲座录音</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $lecRec_Tag;?>&&action=moduleArts"><span style="font-size:13px;color:#b9b9b9;">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($relecRec as $lecRec)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $lecRec['log_ID'];?>"><?php echo $lecRec['log_Title'];?></a></li>
						<?php 					}
					?>
					</ul>
				</div>
				<!--homepage-part-->
			</div>
			<!--columnA-->
			<div class="columnB">
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>中国思想研究</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $cnThRes_ID;?>&&action=moduleArts">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($reCnThRes as $cnThRe)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $cnThRe['log_ID']; ?>"><?php echo $cnThRe['log_Title'];?></a></li>
						<?php 
					}
					?>
					</ul>
				</div>
				<!--homepage-part-->
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>西方思想研究</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $weThRes_Tag;?>&&action=moduleArts">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($reWeThRes as $weThRe)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $weThRe['log_ID'];?>"><?php echo $weThRe['log_Title'];?></a></li>
						<?php 
						
					}
					?>
					</ul>
				</div>
				<!--homepage-part-->
				<div class="homepage-part">
					<div class="homepage-part-head" style="margin-top:15px;">
						<b>现场与对话</b>
						<span style="font-size:13px;color:#b9b9b9;">｜</span>
						<a href="./artical_preview.php?tag_ID=<?php echo $scenDial_Tag;?>&&action=moduleArts">阅读更多 »</span></a>
					</div>
					<!--column-head-->
					<ul>
					<?php 
					foreach ($reScenDial as $scenDial)
					{
						?>
						<li><a href="./artical.php?id=<?php echo $scenDial['log_ID'];?>"><?php echo $scenDial['log_Title'];?></a></li>
						<?php 
					}
					?>
					</ul>
				</div>
				<!--homepage-part-->
			</div>
			<!--columnB-->
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
	<script type="text/javascript" src="./js/slide-a.js"></script>
</body>
</html>
