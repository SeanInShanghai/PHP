<?php
/*
function GetVars($name, $type = 'REQUEST') {
	$array = &$GLOBALS[strtoupper("_$type")];

	if (isset($array[$name])) {
		return $array[$name];
	} else {
		return null;
	}
}

$action = GetVars('act','GET');
//echo $action;
$action2 = GetVars('Title','POST');
//echo $action2;

//if (!isset($_POST['ID'])) echo "No ID"; else echo "Has ID";
*/
/**
 * 提交文章数据
 * @return bool
 */
function PostArticleTest() {
	echo "In this function";
	
	global $zbp;
	if (!isset($_POST['ID'])) return;
	
	if (isset($_COOKIE['timezone'])) {
		$tz = GetVars('timezone', 'COOKIE');
		if (is_numeric($tz)) {
			date_default_timezone_set('Etc/GMT' . sprintf('%+d', -$tz));
		}
		unset($tz);
	}
	
	//echo "ID:".$_POST['ID']."<br>";
	
	if (isset($_POST['Tag'])) {
		$_POST['Tag'] = TransferHTML($_POST['Tag'], '[noscript]');
		$_POST['Tag'] = PostArticle_CheckTagAndConvertIDtoString($_POST['Tag']);
	}
	
	if (isset($_POST['Content'])) {
		$_POST['Content'] = str_replace('<hr class="more" />', '<!--more-->', $_POST['Content']);
		$_POST['Content'] = str_replace('<hr class="more"/>', '<!--more-->', $_POST['Content']);
		if (strpos($_POST['Content'], '<!--more-->') !== false) {
			if (isset($_POST['Intro'])) {
				$_POST['Intro'] = GetValueInArray(explode('<!--more-->', $_POST['Content']), 0);
			}
		} else {
			if (isset($_POST['Intro'])) {
				if ($_POST['Intro'] == '') {
					$_POST['Intro'] = SubStrUTF8($_POST['Content'], $zbp->option['ZC_ARTICLE_EXCERPT_MAX']);
					if (strpos($_POST['Intro'], '<') !== false) {
						$_POST['Intro'] = CloseTags($_POST['Intro']);
					}
				}
			}
		}
	}
	
	if (!isset($_POST['AuthorID'])) {
		$_POST['AuthorID'] = $zbp->user->ID;
	} else {
		if (($_POST['AuthorID'] != $zbp->user->ID) && (!$zbp->CheckRights('ArticleAll'))) {
			$_POST['AuthorID'] = $zbp->user->ID;
		}
		if ($_POST['AuthorID'] == 0)
			$_POST['AuthorID'] = $zbp->user->ID;
	}

	if (isset($_POST['Alias'])) {
		$_POST['Alias'] = TransferHTML($_POST['Alias'], '[noscript]');
	}

	if (isset($_POST['PostTime'])) {
		$_POST['PostTime'] = strtotime($_POST['PostTime']);
	}

	if (!$zbp->CheckRights('ArticleAll')) {
		unset($_POST['IsTop']);
	}

	$article = new Post();
	$pre_author = null;
	$pre_tag = null;
	$pre_category = null;
	
	if (GetVars('ID', 'POST') == 0) {
		if (!$zbp->CheckRights('ArticlePub')) {
			$_POST['Status'] = ZC_POST_STATUS_AUDITING;
		}
	} else {
		$article->LoadInfoByID(GetVars('ID', 'POST'));
		if (($article->AuthorID != $zbp->user->ID) && (!$zbp->CheckRights('ArticleAll'))) {
			$zbp->ShowError(6, __FILE__, __LINE__);
		}
		if ((!$zbp->CheckRights('ArticlePub')) && ($article->Status == ZC_POST_STATUS_AUDITING)) {
			$_POST['Status'] = ZC_POST_STATUS_AUDITING;
		}
		$pre_author = $article->AuthorID;
		$pre_tag = $article->Tag;
		$pre_category = $article->CateID;
	}
	
	foreach ($zbp->datainfo['Post'] as $key => $value) {
		if ($key == 'ID' || $key == 'Meta')	{continue;}
		if (isset($_POST[$key])) {
			$article->$key = GetVars($key, 'POST');//获取所有应该post的值
		}
		//echo $key." ".$article->$key." <br>";
	}
	
	
	
	$article->Type = ZC_POST_TYPE_ARTICLE;
	
	foreach ($GLOBALS['Filter_Plugin_PostArticle_Core'] as $fpname => &$fpsignal) {
		$fpname($article);
	}
	
	FilterPost($article);
	
	FilterMeta($article);

	$article->Save();
	/*
	CountTagArrayString($pre_tag . $article->Tag);
	CountMemberArray(array($pre_author, $article->AuthorID));
	CountCategoryArray(array($pre_category, $article->CateID));
	CountPostArray(array($article->ID));
	CountNormalArticleNums();

	$zbp->AddBuildModule('previous');
	$zbp->AddBuildModule('calendar');
	$zbp->AddBuildModule('comments');
	$zbp->AddBuildModule('archives');
	$zbp->AddBuildModule('tags');
	$zbp->AddBuildModule('authors');

	foreach ($GLOBALS['Filter_Plugin_PostArticle_Succeed'] as $fpname => &$fpsignal)
		$fpname($article);

	return true;
	*/
}




require './function/c_system_base.php';

$zbp->Load();

//echo "This is datainfo array: <br>";
foreach ($zbp->datainfo['Post'] as $key => $value)
{
	//echo "Key:".$key." "."Value:".$value[0]."<br>";
}

$action=GetVars('act','GET');
//echo "Action:".$action;

//$_POST['Title'] = "New Title";
//echo  "My title:".$_POST['Title'];
//echo "My content:".$_POST['Content'];
$_POST['Content'] = "New content";
//echo "My new content:".$_POST['Content']."<br>";

$id = GetVars('Title','Post');

foreach ($GLOBALS['Filter_Plugin_Cmd_Begin'] as $fpname => &$fpsignal) {$fpname();}

if(!$zbp->CheckRights($action)){$zbp->ShowError(6,__FILE__,__LINE__);die();}

switch ($action) {
	case 'ArticlePst':
		PostArticle();//把文章上传，内容保存在数据库中
		//$zbp->BuildModule();
		//$zbp->SetHint('good');
		//echo "Succeed haha";
		//Redirect('cmd.php?act=ArticleMng');
		break;
}




?>