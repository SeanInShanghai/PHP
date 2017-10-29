<?php 
include 'prefix.php';
include 'function/action.php';
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
	<link rel="stylesheet" type="text/css" media="screen" href="./css/latest-artical.css">	
</head>
<body data-mobile-url="/zh/mobile">
	<?php 
	include 'header.html';
	?>
	<div id="container" class="clearfix">
		<div id="teacher">
			<img class="teacher-img" src="./images/head.jpeg" alt="教师1">
			<div id="teacher-info">
				<h1 class="teacher-name"><?php echo $teacher['mem_Name'];?></h1>
				<p class="teacher-title"><?php echo $teacher['mem_Alias'];?></p>
				<p class="teacher-contact"><?php echo $teacher['mem_Email'];?></br>没有电话<br><?php echo $teacher['mem_HomePage'];?></p>
			</div>
			<div id="teacher-abstract">
				<p><?php echo $teacher['mem_Intro'];?></p>
			</div>
		</div>
		<!--#teacher-->
		<div class="splitline"></div>
	<div class="teacher-artical">
	
	<?php
	   $count = 0; 
	   foreach ($reTeaPapers as $reTeaPaper)
	   {
	   	  if($count % 2 == 0)
	   	  {
	   	  	?>
	   	<div class="latest-text teacher-artical-info">
			<p class="latest-head">
				<a href="./artical.php?id=<?php echo $reTeaPapers[$count]['log_ID'];?>"><?php echo $reTeaPapers[$count]['log_Title'];?></a>
			</p>
			<p class="latest-abstract"><?php echo $reTeaPapers[$count]['log_Abstract'];?></p>
		</div>	
	   	  	<?php 
	   	  }else{
           ?>
         <div class="latest-text">
			<p class="latest-head">
				<a href="./artical.php?id=<?php echo $reTeaPapers[$count]['log_ID'];?>"><?php echo $reTeaPapers[$count]['log_Title'];?></a>
			</p>
            <p class="latest-abstract"><?php echo $reTeaPapers[$count]['log_Abstract'];?></p>
		 </div> 
           <?php 
          }
          
          $count += 1;
	   }
	?>
	
		
		
<!-- 		<div class="latest-text teacher-artical-info"> -->
<!-- 			<p class="latest-head"> -->
<!-- 				<a href="./artical.html">非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a> -->
<!-- 			</p> -->
<!-- 			<p class="latest-abstract">经历过骚乱的人虽然相信分治会导致其他地区的独立诉求，甚至并不能维持北苏丹地区的和平，但他们更在意的是分治能够带来个人安全上的保障。</p> -->
<!-- 		</div>	 -->
<!-- 		<div class="latest-text"> -->
<!-- 			<p class="latest-head"> -->
<!-- 				<a href="./artical.html">非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a> -->
<!-- 			</p> -->
<!-- 			<p class="latest-abstract">经历过骚乱的人虽然相信分治会导致其他地区的独立诉求，甚至并不能维持北苏丹地区的和平，但他们更在意的是分治能够带来个人安全上的保障。</p> -->
<!-- 		</div> -->
	</div>
		<!--teacher-artical-->
		<div class="clear"></div>
		<div>
			<a href="./artical_list.php" style="font-size:14px; color:#ccc;">阅读更多 »</a>
		</div>
	</div>
	<!--#container-->
			<div id="bottomline"></div>
		<?php 
		include 'footer.html';
		?>
</body>
</html>
