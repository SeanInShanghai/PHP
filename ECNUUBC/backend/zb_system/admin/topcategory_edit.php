<?php
/**
 * Z-Blog with PHP
 * @author
 * @copyright (C) RainbowSoft Studio
 * @version 2.0 2013-07-05
 */

require '../function/c_system_base.php';
require '../function/c_system_admin.php';

$zbp->CheckGzip();
$zbp->Load();

$action='TopCategoryEdt';
if (!$zbp->CheckRights($action)) {$zbp->ShowError(6,__FILE__,__LINE__);die();}

$blogtitle=$lang['msg']['top_category_edit'];

require $blogpath . 'zb_system/admin/admin_header.php';
require $blogpath . 'zb_system/admin/admin_top.php';

?>
<?php

$cateid=null;
if(isset($_GET['id'])){$cateid = (integer)GetVars('id','GET');}else{$cateid = 0;}

$topcate=$zbp->GetNewTopCategoryByID($cateid);


$p=null;

//$p .='<option value="0">' . $lang['msg']['none'] . '</option>';



?>

<div id="divMain">
  <div class="divHeader2"><?php echo $lang['msg']['top_category_edit']?></div>
  <div class="SubMenu"></div>
  <div id="divMain2" class="edit category_edit">
	<form id="edit" name="edit" method="post" action="#">
	  <input id="edtID" name="ID" type="hidden" value="<?php echo $topcate['topcate_ID'];?>" />
	  <p>
		<span class="title"><?php echo $lang['msg']['name']?>:</span><span class="star">(*)</span><br />
		<input id="edtName" class="edit" size="40" name="Name" maxlength="50" type="text" value="<?php echo $topcate['topcate_Name'];?>" />
	  </p>

	  <p>
		<span class="title"><?php echo $lang['msg']['order']?>:</span><br />
		<input id="edtOrder" class="edit" size="40" name="Order" type="text" value="<?php echo $topcate['topcate_Order'];?>" />
	  </p>

	  <p>
		<span class="title"><?php echo $lang['msg']['template']?>:</span><br />
		<select class="edit" size="1" name="Template" id="cmbTemplate">
<?php echo CreateOptoinsOfTemplate($cate->Template);?>
		</select><input type="hidden" name="edtTemplate" id="edtTemplate" value="<?php echo $cate->Template;?>" />
	  </p>
	  <p>
		<span class="title"><?php echo $lang['msg']['category_aritles_default_template']?>:</span><br />
		<select class="edit" size="1" name="LogTemplate" id="cmbLogTemplate">
<?php echo CreateOptoinsOfTemplate($cate->LogTemplate);?>
		</select>
	  </p>
	  <p>
		<label><span class="title"><?php echo $lang['msg']['add_to_navbar']?>:</span>   <input type="text" name="AddNavbar" id="edtAddNavbar" value="<?php echo (int)$zbp->CheckItemToNavbar('category',$cate->ID)?>" class="checkbox" /></label>
	  </p>
    <!-- 1号输出接口 -->
       <div id='response' class='editmod2'>
<?php
foreach ($GLOBALS['Filter_Plugin_Category_Edit_Response'] as $fpname => &$fpsignal) {$fpname();}
?>
	   </div>
	  <p>
		<input type="submit" class="button" value="<?php echo $lang['msg']['submit']?>" id="btnPost" onclick="return checkInfo();" />
	  </p>
	</form>
	<script type="text/javascript">
function checkInfo(){
  document.getElementById("edit").action="../cmd.php?act=TopCategoryPst";

  if(!$("#edtName").val()){
    alert("<?php echo $lang['error']['72']?>");
    return false
  }

}
	</script>
	<script type="text/javascript">ActiveLeftMenu("aTopCategoryMng");</script>
	<script type="text/javascript">AddHeaderIcon("<?php echo $zbp->host . 'zb_system/image/common/category_32.png';?>");</script>
  </div>
</div>


<?php
require $blogpath . 'zb_system/admin/admin_footer.php';

RunTime();
?>