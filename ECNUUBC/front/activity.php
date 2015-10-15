<?php 
include 'php/prefix.php';
$id = $_GET['id'];

if($id == '')
{
	die();
}

$sqlArticle = "SELECT * FROM ubc_post WHERE log_ID = $id";
$reArticle = $zbp->db->Query($sqlArticle);

if(count($reArticle) <= 0)
{
	die();
}

$sqlPostAddition = "SELECT * FROM ubc_postaddition WHERE log_ID = '$id'";
$rePostAddition = $zbp->db->Query($sqlPostAddition);
$reArticle[0]['log_abstract'] = $rePostAddition[0]['log_abstract'];
$reArticle[0]['log_pic'] = $rePostAddition[0]['log_pic'];
$reArticle[0]['log_record'] = $rePostAddition[0]['log_record'];

$mem_ID = $reArticle[0]['log_AuthorID'];

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
</head>
<body data-mobile-url="/zh/mobile">
    <?php 
    include 'header.html';
    ?>
	<div id="container" class="clearfix">
		<div class="column-head" style="margin-top:100px; margin-bottom:100px;">
			<b>知识分子论丛</b>
		</div>
		<div class="activity-block">
			<img src="<?php echo substr($reArticle[0]['log_pic'], 12, strlen($reArticle[0]['log_pic']));?>">
			<div class="activity-intro">
				<h1><?php echo $reArticle[0]['log_Title'];?></h1>		
			</div>
		</div>
		<div class="activity-content">
           <?php echo $reArticle[0]['log_Content'];?>
		</div>
	</div>
	<!--#container-->
			<div id="bottomline"></div>
	<?php 
	include 'footer.html';
	?>
</body>
</html>
