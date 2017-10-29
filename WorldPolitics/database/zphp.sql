-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-04-24 13:20:32
-- 服务器版本： 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zphp`
--

-- --------------------------------------------------------

--
-- 表的结构 `zbp_addtopost`
--

CREATE TABLE IF NOT EXISTS `zbp_addtopost` (
  `log_ID` int(11) NOT NULL,
  `abstract` text CHARACTER SET gb2312 NOT NULL,
  `keywords` text CHARACTER SET gb2312 NOT NULL,
  `titleImage` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zbp_addtopost`
--

INSERT INTO `zbp_addtopost` (`log_ID`, `abstract`, `keywords`, `titleImage`, `count`) VALUES
(199, 'asd', 'asd', '0', 0),
(201, 'asd', 'asd', '0', 0),
(209, 'asdd', 'asda', '0', 0),
(210, 'asdadas', 'asddasda', '0', 0),
(219, 'asdasd', 'asdasd', '0', 0),
(220, 'asdasd', 'asdasd', '0', 0),
(221, 'asdasd', 'asdasd', '0', 0),
(222, 'j', 'asdasd', '../front/politics/titleImgs/1406019033.jpg', 0),
(231, 'asdasd', 'asdasd', '../front/politics/titleImgs/1406099507.jpg', 0),
(232, 'asdasd', 'asdasd', '../front/politics/titleImgs/1406099521.jpg', 0),
(233, '????1', '???1', '../front/politics/titleImgs/1406099576.jpg', 0),
(237, 'asdasdasdasd', 'asdasdasdas', '../front/politics/titleImgs/1406188746.jpg', 0),
(238, 'asdasdasdad', 'asdsdasdas', '../front/politics/titleImgs/1406188759.jpg', 0),
(239, '??', '???', '../front/politics/titleImgs/1406188952.jpg', 0),
(240, '我的摘要', '??????', '../front/politics/titleImgs/1406189152.jpg', 0),
(241, 'asdasdasd', 'asdasdsad', '../front/politics/titleImgs/1406189777.jpg', 0),
(0, '啊实打实打算', '啊实打实的', '../front/politics/titleImgs/1461467108.jpg', 0),
(252, '沙龙', '??', '../front/politics/titleImgs/1406277391.jpg', 0),
(253, '沙龙', '??', '../front/politics/titleImgs/1406277411.jpg', 0),
(254, '沙龙2', '沙龙3', '../front/politics/titleImgs/1406277661.jpg', 5),
(255, '摘要2', '关键字', '../front/politics/titleImgs/1406522485.jpg', 0),
(256, '阿斯顿', '萨达', '../front/politics/titleImgs/1406522512.jpg', 1),
(257, 'aSsASa', 'aS', '../front/politics/titleImgs/1406523349.jpg', 1),
(258, '', '', '../front/politics/titleImgs/1409034165.jpg', 4),
(259, '', '', '../front/politics/titleImgs/1409042594.jpg', 1),
(260, '', '', '../front/politics/titleImgs/1409042606.jpg', 0),
(261, '', '', '../front/politics/titleImgs/1409042618.jpg', 0),
(262, '', '', '../front/politics/titleImgs/1409042641.jpg', 2),
(263, '啊实打实的', '', '../front/politics/titleImgs/1409042653.jpg', 0),
(264, '所示', '撒大苏打', '../front/politics/titleImgs/1409624843.jpg', 8),
(265, '这是我的新文章', '', '../front/politics/titleImgs/1417065037.jpg', 9),
(266, '我的第一篇文章摘要', '可以', '../front/politics/titleImgs/1444971785.jpg', 5),
(267, '哈哈哈', '是大大', '../front/politics/titleImgs/1461407900.jpeg', 3),
(271, '啊实打实的', '啊实打实的', '../front/politics/titleImgs/1461466276.jpg', 0),
(275, '啊实打实', '啊实打实', '../front/politics/titleImgs/1461467016.jpeg', 1),
(276, 'asda', 'asda', '../front/politics/titleImgs/1461467201.jpg', 1),
(277, 'asda', '阿斯顿', '../front/politics/titleImgs/1461467262.jpeg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `zbp_category`
--

CREATE TABLE IF NOT EXISTS `zbp_category` (
  `cate_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cate_Name` varchar(50) NOT NULL DEFAULT '',
  `cate_Order` int(11) NOT NULL DEFAULT '0',
  `cate_Count` int(11) NOT NULL DEFAULT '0',
  `cate_Alias` varchar(255) NOT NULL DEFAULT '',
  `cate_Intro` text NOT NULL,
  `cate_RootID` int(11) NOT NULL DEFAULT '0',
  `cate_ParentID` int(11) NOT NULL DEFAULT '0',
  `cate_Template` varchar(50) NOT NULL DEFAULT '',
  `cate_LogTemplate` varchar(50) NOT NULL DEFAULT '',
  `cate_Meta` longtext NOT NULL,
  PRIMARY KEY (`cate_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `zbp_category`
--

INSERT INTO `zbp_category` (`cate_ID`, `cate_Name`, `cate_Order`, `cate_Count`, `cate_Alias`, `cate_Intro`, `cate_RootID`, `cate_ParentID`, `cate_Template`, `cate_LogTemplate`, `cate_Meta`) VALUES
(1, '分类1', 0, 115, 'uncategorized', '', 0, 0, '', '', ''),
(3, '分类3', 0, 1, '', '', 0, 0, '', '', ''),
(2, '分类2', 0, 0, '', '', 0, 0, '', '', ''),
(4, 'fenlei4', 0, 1, '', '', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_comment`
--

CREATE TABLE IF NOT EXISTS `zbp_comment` (
  `comm_ID` int(11) NOT NULL AUTO_INCREMENT,
  `comm_LogID` int(11) NOT NULL DEFAULT '0',
  `comm_IsChecking` tinyint(1) NOT NULL DEFAULT '0',
  `comm_RootID` int(11) NOT NULL DEFAULT '0',
  `comm_ParentID` int(11) NOT NULL DEFAULT '0',
  `comm_AuthorID` int(11) NOT NULL DEFAULT '0',
  `comm_Name` varchar(20) NOT NULL DEFAULT '',
  `comm_Email` varchar(50) NOT NULL DEFAULT '',
  `comm_HomePage` varchar(255) NOT NULL DEFAULT '',
  `comm_Content` text NOT NULL,
  `comm_PostTime` int(11) NOT NULL DEFAULT '0',
  `comm_IP` varchar(15) NOT NULL DEFAULT '',
  `comm_Agent` text NOT NULL,
  `comm_Meta` longtext NOT NULL,
  PRIMARY KEY (`comm_ID`),
  KEY `zbp_comm_PT` (`comm_PostTime`),
  KEY `zbp_comm_RIL` (`comm_RootID`,`comm_IsChecking`,`comm_LogID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `zbp_config`
--

CREATE TABLE IF NOT EXISTS `zbp_config` (
  `conf_Name` varchar(255) NOT NULL DEFAULT '',
  `conf_Value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zbp_config`
--

INSERT INTO `zbp_config` (`conf_Name`, `conf_Value`) VALUES
('system', 'a:92:{s:15:"ZC_SITE_TURNOFF";b:0;s:12:"ZC_BLOG_HOST";s:16:"{#ZC_BLOG_HOST#}";s:12:"ZC_BLOG_NAME";s:6:"mysite";s:15:"ZC_BLOG_SUBNAME";s:17:"Good Luck To You!";s:13:"ZC_BLOG_THEME";s:7:"default";s:11:"ZC_BLOG_CSS";s:7:"default";s:17:"ZC_BLOG_COPYRIGHT";s:27:"我在后台的设置板块";s:16:"ZC_BLOG_LANGUAGE";s:5:"zh-CN";s:20:"ZC_BLOG_LANGUAGEPACK";s:11:"SimpChinese";s:16:"ZC_DATABASE_TYPE";s:6:"mysqli";s:14:"ZC_SQLITE_NAME";s:0:"";s:13:"ZC_SQLITE_PRE";s:4:"zbp_";s:15:"ZC_MYSQL_SERVER";s:9:"localhost";s:17:"ZC_MYSQL_USERNAME";s:4:"root";s:17:"ZC_MYSQL_PASSWORD";s:0:"";s:13:"ZC_MYSQL_NAME";s:4:"ZPHP";s:16:"ZC_MYSQL_CHARSET";s:4:"utf8";s:12:"ZC_MYSQL_PRE";s:4:"zbp_";s:15:"ZC_MYSQL_ENGINE";s:6:"MyISAM";s:13:"ZC_MYSQL_PORT";s:4:"3306";s:19:"ZC_MYSQL_PERSISTENT";b:0;s:20:"ZC_USING_PLUGIN_LIST";s:7:"UEditor";s:11:"ZC_YUN_SITE";s:0:"";s:13:"ZC_DEBUG_MODE";b:0;s:20:"ZC_DEBUG_MODE_STRICT";b:0;s:21:"ZC_DEBUG_MODE_WARNING";b:1;s:18:"ZC_DEBUG_MODE_FULL";b:0;s:13:"ZC_BLOG_CLSID";s:22:"53b2c1f07e99b220755945";s:17:"ZC_TIME_ZONE_NAME";s:13:"Asia/Shanghai";s:18:"ZC_UPDATE_INFO_URL";s:31:"http://update.zblogcn.com/info/";s:26:"ZC_PERMANENT_DOMAIN_ENABLE";b:1;s:23:"ZC_MULTI_DOMAIN_SUPPORT";b:0;s:15:"ZC_BLOG_PRODUCT";s:9:"Z-BlogPHP";s:15:"ZC_BLOG_VERSION";s:22:"1.3 Wonce Build 140614";s:20:"ZC_BLOG_PRODUCT_FULL";s:32:"Z-BlogPHP 1.3 Wonce Build 140614";s:20:"ZC_BLOG_PRODUCT_HTML";s:93:"<a href="http://www.zblogcn.com/" title="RainbowSoft Z-BlogPHP" target="_blank">Z-BlogPHP</a>";s:24:"ZC_BLOG_PRODUCT_FULLHTML";s:116:"<a href="http://www.zblogcn.com/" title="RainbowSoft Z-BlogPHP" target="_blank">Z-BlogPHP 1.3 Wonce Build 140614</a>";s:18:"ZC_COMMENT_TURNOFF";b:1;s:24:"ZC_COMMENT_VERIFY_ENABLE";b:0;s:24:"ZC_COMMENT_REVERSE_ORDER";b:0;s:20:"ZC_VERIFYCODE_STRING";s:30:"ABCDEFGHKMNPRSTUVWXYZ123456789";s:19:"ZC_VERIFYCODE_WIDTH";i:90;s:20:"ZC_VERIFYCODE_HEIGHT";i:30;s:18:"ZC_VERIFYCODE_FONT";s:26:"zb_system/defend/arial.ttf";s:16:"ZC_DISPLAY_COUNT";i:5;s:15:"ZC_SEARCH_COUNT";i:25;s:16:"ZC_PAGEBAR_COUNT";i:10;s:25:"ZC_COMMENTS_DISPLAY_COUNT";i:100;s:23:"ZC_DISPLAY_SUBCATEGORYS";b:0;s:13:"ZC_RSS2_COUNT";i:10;s:19:"ZC_RSS_EXPORT_WHOLE";b:1;s:15:"ZC_MANAGE_COUNT";i:50;s:21:"ZC_EMOTICONS_FILENAME";s:4:"face";s:21:"ZC_EMOTICONS_FILETYPE";s:11:"png|gif|jpg";s:21:"ZC_EMOTICONS_FILESIZE";s:2:"16";s:18:"ZC_UPLOAD_FILETYPE";s:185:"jpg|gif|png|jpeg|bmp|psd|wmf|ico|rpm|deb|tar|gz|sit|7z|bz2|zip|rar|xml|xsl|svg|svgz|doc|docx|ppt|pptx|xls|xlsx|wps|chm|txt|pdf|mp3|avi|mpg|rm|ra|rmvb|mov|wmv|wma|swf|fla|torrent|apk|zba";s:18:"ZC_UPLOAD_FILESIZE";i:2;s:15:"ZC_USERNAME_MIN";i:3;s:15:"ZC_USERNAME_MAX";i:50;s:15:"ZC_PASSWORD_MIN";i:8;s:15:"ZC_PASSWORD_MAX";i:20;s:12:"ZC_EMAIL_MAX";i:50;s:15:"ZC_HOMEPAGE_MAX";i:100;s:14:"ZC_CONTENT_MAX";i:1000;s:22:"ZC_ARTICLE_EXCERPT_MAX";i:250;s:22:"ZC_COMMENT_EXCERPT_MAX";i:20;s:14:"ZC_STATIC_MODE";s:6:"ACTIVE";s:16:"ZC_ARTICLE_REGEX";s:18:"{%host%}?id={%id%}";s:13:"ZC_PAGE_REGEX";s:18:"{%host%}?id={%id%}";s:17:"ZC_CATEGORY_REGEX";s:34:"{%host%}?cate={%id%}&page={%page%}";s:15:"ZC_AUTHOR_REGEX";s:34:"{%host%}?auth={%id%}&page={%page%}";s:13:"ZC_TAGS_REGEX";s:34:"{%host%}?tags={%id%}&page={%page%}";s:13:"ZC_DATE_REGEX";s:36:"{%host%}?date={%date%}&page={%page%}";s:14:"ZC_INDEX_REGEX";s:22:"{%host%}?page={%page%}";s:25:"ZC_INDEX_DEFAULT_TEMPLATE";s:5:"index";s:24:"ZC_POST_DEFAULT_TEMPLATE";s:6:"single";s:16:"ZC_SIDEBAR_ORDER";s:78:"calendar|controlpanel|catalog|searchpanel|comments|archives|favorite|link|misc";s:17:"ZC_SIDEBAR2_ORDER";s:0:"";s:17:"ZC_SIDEBAR3_ORDER";s:0:"";s:17:"ZC_SIDEBAR4_ORDER";s:0:"";s:17:"ZC_SIDEBAR5_ORDER";s:0:"";s:14:"ZC_GZIP_ENABLE";b:1;s:21:"ZC_ADMIN_HTML5_ENABLE";b:1;s:27:"ZC_SYNTAXHIGHLIGHTER_ENABLE";b:1;s:20:"ZC_CODEMIRROR_ENABLE";b:1;s:20:"ZC_HTTP_LASTMODIFIED";b:0;s:23:"ZC_MODULE_CATALOG_STYLE";i:0;s:19:"ZC_VIEWNUMS_TURNOFF";b:0;s:20:"ZC_LISTONTOP_TURNOFF";b:0;s:20:"ZC_RELATEDLIST_COUNT";i:10;s:18:"ZC_RUNINFO_DISPLAY";b:1;s:30:"ZC_POST_ALIAS_USE_ID_NOT_TITLE";b:0;}'),
('cache', 'a:12:{s:13:"templates_md5";s:32:"68efe041d9763ef2658396cf3adca2ed";s:16:"reload_statistic";s:693:"<tr><td class=''td20''>当前用户</td><td class=''td30''>{$zbp->user->Name}</td><td class=''td20''>当前版本</td><td class=''td30''>1.3 Wonce Build 140614</td></tr><tr><td class=''td20''>文章总数</td><td>117</td><td>分类总数</td><td>4</td></tr><tr><td class=''td20''>页面总数</td><td>15</td><td>标签总数</td><td>5</td></tr><tr><td class=''td20''>评论总数</td><td>0</td><td>浏览总数</td><td>222</td></tr><tr><td class=''td20''>当前主题/当前样式</td><td>default/default</td><td>用户总数</td><td>8</td></tr><tr><td class=''td20''>离线客户端地址</td><td>{#ZC_BLOG_HOST#}zb_system/xml-rpc/</td><td>系统环境</td><td>WINNT;Apache2.4.9;PHP5.5.11;mysqli;curl</td></tr>";s:21:"reload_statistic_time";i:1461496605;s:18:"system_environment";s:39:"WINNT;Apache2.4.9;PHP5.5.11;mysqli;curl";s:19:"normal_article_nums";s:3:"117";s:17:"reload_updateinfo";s:1367:"<tr><td><!--  -->\n<p><a href="http://blog.zblogcn.com/2015/10/10/82/" target="_blank">大家好，我是“新版应用中心”，向大家打个招呼！ (2015-10-10)</a></p>\n\n<p><a href="http://blog.zblogcn.com/2015/03/09/79/" target="_blank">关于Blind-XXE任意文件读取漏洞及文件包含漏洞的修复说明 (2015-3-9)</a></p>\n\n<p><a href="http://www.zblogcn.com/" style="color:crimson" target="_blank"><b>2015年重磅发布，Z-BlogPHP 1.4 Deeplue 正式版发布了！ (2015-1-31)</b></a></p>\n\n<p><a href="http://blog.zblogcn.com/2015/01/23/77/" target="_blank">Z-Blog官方博客-菠萝阁已切换为Z-BlogPHP 1.4版本(2015-1-25)</a></p>\n\n<p><a href="http://www.zblogcn.com/zblogphp/" target="_blank">Z-BlogPHP 1.3 Wonce 正式版发布了，欢迎下载安装和升级。 (2014-6-14)</a></p>\n\n<p><a href="http://www.zblogcn.com/" target="_blank" style="color:#ff6600"><b>Z-Blog启用新域名：www.zblogcn.com，原官方网站rainbowsoft.org正式变更为zblogcn.com。</b></a></p>\n\n<p><a href="http://bbs.zblogcn.com/thread-83785-1-1.html" target="_blank" style="color:blue">2014年ASP版全新发布！Z-Blog 2.2 Prism Build 140101 发布了。(2014-01-02)</a></p>\n\n<p><a href="http://bbs.zblogcn.com/thread-77001-1-1.html" target="_blank">Z-Blog ASP和PHP的应用中心正式上线了!欢迎开发者进驻。(2013-01-01)</a></p></td></tr>";s:22:"reload_updateinfo_time";i:1461496605;s:17:"ZC_SIDEBAR_ORDER1";s:0:"";s:17:"ZC_SIDEBAR_ORDER2";s:0:"";s:17:"ZC_SIDEBAR_ORDER3";s:0:"";s:17:"ZC_SIDEBAR_ORDER4";s:0:"";s:17:"ZC_SIDEBAR_ORDER5";s:0:"";}'),
('metro', 'a:5:{s:7:"version";s:3:"1.0";s:13:"custom_layout";s:1:"r";s:13:"custom_bodybg";s:56:"#EEEEEE|zb_users/theme/metro/images/bg.jpg|repeat|2|top|";s:11:"custom_hdbg";s:64:"|zb_users/theme/metro/images/headbg.jpg|repeat  fixed|1|top|120|";s:12:"custom_color";s:43:"#5EAAE4| #A3D0F2| #222222| #333333| #FFFFFF";}'),
('AppCentre', 'a:3:{s:12:"enabledcheck";i:1;s:9:"checkbeta";i:0;s:13:"enabledevelop";i:0;}');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_counter`
--

CREATE TABLE IF NOT EXISTS `zbp_counter` (
  `coun_ID` int(11) NOT NULL AUTO_INCREMENT,
  `coun_MemID` int(11) NOT NULL DEFAULT '0',
  `coun_IP` varchar(15) NOT NULL DEFAULT '',
  `coun_Agent` text NOT NULL,
  `coun_Refer` varchar(255) NOT NULL DEFAULT '',
  `coun_Title` varchar(255) NOT NULL DEFAULT '',
  `coun_PostTime` int(11) NOT NULL DEFAULT '0',
  `coun_Description` text NOT NULL,
  `coun_PostData` text NOT NULL,
  `coun_AllRequestHeader` text NOT NULL,
  PRIMARY KEY (`coun_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `zbp_member`
--

CREATE TABLE IF NOT EXISTS `zbp_member` (
  `mem_ID` int(11) NOT NULL AUTO_INCREMENT,
  `mem_Guid` varchar(36) NOT NULL DEFAULT '',
  `mem_Level` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Status` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Name` varchar(50) NOT NULL DEFAULT '',
  `mem_Password` varchar(32) NOT NULL DEFAULT '',
  `mem_Email` varchar(50) NOT NULL DEFAULT '',
  `mem_HomePage` varchar(255) NOT NULL DEFAULT '',
  `mem_IP` varchar(15) NOT NULL DEFAULT '',
  `mem_PostTime` int(11) NOT NULL DEFAULT '0',
  `mem_Alias` varchar(255) NOT NULL DEFAULT '',
  `mem_Intro` text NOT NULL,
  `mem_Articles` int(11) NOT NULL DEFAULT '0',
  `mem_Pages` int(11) NOT NULL DEFAULT '0',
  `mem_Comments` int(11) NOT NULL DEFAULT '0',
  `mem_Uploads` int(11) NOT NULL DEFAULT '0',
  `mem_Template` varchar(50) NOT NULL DEFAULT '',
  `mem_Meta` longtext NOT NULL,
  PRIMARY KEY (`mem_ID`),
  KEY `zbp_mem_Name` (`mem_Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `zbp_member`
--

INSERT INTO `zbp_member` (`mem_ID`, `mem_Guid`, `mem_Level`, `mem_Status`, `mem_Name`, `mem_Password`, `mem_Email`, `mem_HomePage`, `mem_IP`, `mem_PostTime`, `mem_Alias`, `mem_Intro`, `mem_Articles`, `mem_Pages`, `mem_Comments`, `mem_Uploads`, `mem_Template`, `mem_Meta`) VALUES
(1, '53b2c1f0e7aa7799152415', 1, 0, 'fsg', '1b8e57600d75dac7d645a11be715799d', 'shuguang826@gmail.com', 'http://www.baidu.com', '::1', 1404223984, '', 'asdasdasd', 114, 15, 0, 8, '', ''),
(2, '53c5f29db1221202411322', 3, 0, '作者1', 'a9b7b61ce8e79a6651652e1a4ce80546', 'shuguang826@gmail.com', 'da ', '::1', 0, '', '', 2, 0, 0, 0, '', ''),
(3, '53ca2ca029f87588435815', 3, 0, '作者2', 'a63ca643385a2a9aea2facd64b8f9653', 'shuguang826@gmail.com', '', '::1', 0, '', '', 0, 0, 0, 0, '', ''),
(4, '53ca2cb5897be886922863', 6, 0, '作者3', '0d544e321ebe26891032bcb52d685eff', 'shuguang826@gmail.com', '', '::1', 0, '', '', 0, 0, 0, 0, '', ''),
(5, '571b3d2d8e857969544432', 6, 0, '访客', '05acc751bce2bb3f2e94e58bfd753e1f', 'shuguang826@126.com', '', '::1', 0, '', '', 0, 0, 0, 0, '', ''),
(6, '571b3d7b9ccb8828965075', 3, 0, '哈哈', '760d81ca93b2b0cf98d4bcdef183181f', 'shuguang826@126.com', '', '::1', 0, '', '', 1, 0, 0, 0, '', ''),
(7, '571b3ded2b255362448791', 6, 0, '呵呵', '179446fe097251bc05217f82ef3067e2', 'shuguang826@126.com', '', '::1', 0, '华东师范大学', '', 0, 0, 0, 0, '', ''),
(8, '571b43e317aeb285335986', 3, 0, '我是作者', '126d6311022516f2ece112ea8dca38fb', 'shuguang826@126.com', '', '::1', 0, '华东师范大学', '', 0, 0, 0, 0, '', ''),
(9, '571cab2159e2d761903594', 1, 0, 'admin', 'fd09b8617bcce29b4b25bdd4dfb3034e', 'shuguang826@126.com', '', '::1', 0, '', '', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_module`
--

CREATE TABLE IF NOT EXISTS `zbp_module` (
  `mod_ID` int(11) NOT NULL AUTO_INCREMENT,
  `mod_Name` varchar(100) NOT NULL DEFAULT '',
  `mod_FileName` varchar(50) NOT NULL DEFAULT '',
  `mod_Content` text NOT NULL,
  `mod_SidebarID` int(11) NOT NULL DEFAULT '0',
  `mod_HtmlID` varchar(50) NOT NULL DEFAULT '',
  `mod_Type` varchar(5) NOT NULL DEFAULT '',
  `mod_MaxLi` int(11) NOT NULL DEFAULT '0',
  `mod_Source` varchar(50) NOT NULL DEFAULT '',
  `mod_IsHideTitle` tinyint(1) NOT NULL DEFAULT '0',
  `mod_Meta` longtext NOT NULL,
  PRIMARY KEY (`mod_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `zbp_module`
--

INSERT INTO `zbp_module` (`mod_ID`, `mod_Name`, `mod_FileName`, `mod_Content`, `mod_SidebarID`, `mod_HtmlID`, `mod_Type`, `mod_MaxLi`, `mod_Source`, `mod_IsHideTitle`, `mod_Meta`) VALUES
(1, '导航栏', 'navbar', '<li id="nvabar-item-index"><a href="{#ZC_BLOG_HOST#}">首页</a></li>', 0, 'divNavBar', 'ul', 0, 'system', 0, ''),
(2, '日历', 'calendar', '<table id="tbCalendar"><caption><a href="{#ZC_BLOG_HOST#}?date=2016-3">«</a>&nbsp;&nbsp;&nbsp;<a href="{#ZC_BLOG_HOST#}?date=2016-4">2016年4月</a>&nbsp;&nbsp;&nbsp;<a href="{#ZC_BLOG_HOST#}?date=2016-5">»</a></caption><thead><tr><th title="星期一" scope="col"><small>一</small></th><th title="星期二" scope="col"><small>二</small></th><th title="星期三" scope="col"><small>三</small></th><th title="星期四" scope="col"><small>四</small></th><th title="星期五" scope="col"><small>五</small></th><th title="星期六" scope="col"><small>六</small></th><th title="星期日" scope="col"><small>日</small></th></tr></thead><tbody><tr><td class="pad" colspan="4"> </td><td>1</td><td>2</td><td>3</td></tr><tr><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td></tr><tr><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td><a href="{#ZC_BLOG_HOST#}?id=267">23</a></td><td><a href="{#ZC_BLOG_HOST#}?id=271">24</a></td></tr><tr><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td>30</td></tr></tbody></table>', 0, 'divCalendar', 'div', 0, 'system', 1, ''),
(3, '控制面板', 'controlpanel', '<span class="cp-hello">您好,欢迎到访网站!</span><br/><span class="cp-login"><a href="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=login">[管理登陆]</a></span>&nbsp;&nbsp;<span class="cp-vrs"><a href="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=misc&amp;type=vrs">[查看权限]</a></span>', 0, 'divContorPanel', 'div', 0, 'system', 0, ''),
(4, '网站分类', 'catalog', '<li><a href="{#ZC_BLOG_HOST#}?cate=1">分类1</a></li><li><a href="{#ZC_BLOG_HOST#}?cate=3">分类3</a></li><li><a href="{#ZC_BLOG_HOST#}?cate=2">分类2</a></li><li><a href="{#ZC_BLOG_HOST#}?cate=4">fenlei4</a></li>', 0, 'divCatalog', 'ul', 0, 'system', 0, ''),
(5, '搜索', 'searchpanel', '<form name="search" method="post" action="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=search"><input type="text" name="q" size="11" /> <input type="submit" value="搜索" /></form>', 0, 'divSearchPanel', 'div', 0, 'system', 0, ''),
(6, '最新留言', 'comments', '', 0, 'divComments', 'ul', 0, 'system', 0, ''),
(7, '文章归档', 'archives', '<li><a href="{#ZC_BLOG_HOST#}?date=2016-4">2016年4月 (2)</a></li><li><a href="{#ZC_BLOG_HOST#}?date=2015-10">2015年10月 (1)</a></li><li><a href="{#ZC_BLOG_HOST#}?date=2014-9">2014年9月 (1)</a></li><li><a href="{#ZC_BLOG_HOST#}?date=2014-7">2014年7月 (113)</a></li>', 0, 'divArchives', 'ul', 0, 'system', 0, ''),
(8, '站点信息', 'statistics', '<li>文章总数:117</li><li>页面总数:15</li><li>分类总数:4</li><li>标签总数:5</li><li>评论总数:0</li><li>浏览总数:222</li>', 0, 'divStatistics', 'ul', 0, 'system', 0, ''),
(9, '网站收藏', 'favorite', '<li><a href="http://bbs.zblogcn.com/" target="_blank">ZBlogger社区</a></li><li><a href="http://app.zblogcn.com/" target="_blank">Z-Blog应用中心</a></li><li><a href="http://weibo.com/zblogcn" target="_blank">Z-Blog新浪官微</a></li><li><a href="http://t.qq.com/zblogcn" target="_blank">Z-Blog腾讯官微</a></li>', 0, 'divFavorites', 'ul', 0, 'system', 0, ''),
(10, '友情链接', 'link', '<li><a href="http://www.dbshost.cn/" target="_blank" title="独立博客服务 Z-Blog官方主机">DBS主机</a></li>', 0, 'divLinkage', 'ul', 0, 'system', 0, ''),
(11, '图标汇集', 'misc', '<li><a href="http://www.zblogcn.com/" target="_blank"><img src="{#ZC_BLOG_HOST#}zb_system/image/logo/zblog.gif" height="31" width="88" alt="RainbowSoft Studio Z-Blog" /></a></li><li><a href="{#ZC_BLOG_HOST#}feed.php" target="_blank"><img src="{#ZC_BLOG_HOST#}zb_system/image/logo/rss.png" height="31" width="88" alt="订阅本站的 RSS 2.0 新闻聚合" /></a></li>', 0, 'divMisc', 'ul', 0, 'system', 1, ''),
(12, '作者列表', 'authors', '<li><a href="{#ZC_BLOG_HOST#}?auth=1">fsg<span class="article-nums"> (114)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=2">作者1<span class="article-nums"> (2)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=3">作者2<span class="article-nums"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=6">哈哈<span class="article-nums"> (1)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=8">我是作者<span class="article-nums"> (0)</span></a></li>', 0, 'divAuthors', 'ul', 0, 'system', 0, ''),
(13, '最近发表', 'previous', '<li><a href="{#ZC_BLOG_HOST#}?id=271">啊实打实的</a></li><li><a href="{#ZC_BLOG_HOST#}?id=267">这是我的文章</a></li><li><a href="{#ZC_BLOG_HOST#}?id=266">今天的第一篇文章</a></li><li><a href="{#ZC_BLOG_HOST#}?id=264">我的新篇章</a></li><li><a href="{#ZC_BLOG_HOST#}?id=257">asasASa</a></li><li><a href="{#ZC_BLOG_HOST#}?id=256">请问请问请问</a></li><li><a href="{#ZC_BLOG_HOST#}?id=255">为</a></li><li><a href="{#ZC_BLOG_HOST#}?id=241">asdas</a></li><li><a href="{#ZC_BLOG_HOST#}?id=240">我的标题</a></li><li><a href="{#ZC_BLOG_HOST#}?id=239">我的新文章</a></li>', 0, 'divPrevious', 'ul', 0, 'system', 0, ''),
(14, '标签列表', 'tags', '<li><a href="{#ZC_BLOG_HOST#}?tags=1">生活<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=2">哲学<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=3">历史<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=4">政治<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=5">管理<span class="tag-count"> (0)</span></a></li>', 0, 'divTags', 'ul', 0, 'system', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_post`
--

CREATE TABLE IF NOT EXISTS `zbp_post` (
  `log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `log_CateID` smallint(6) NOT NULL DEFAULT '0',
  `log_AuthorID` int(11) NOT NULL DEFAULT '0',
  `log_Tag` varchar(255) NOT NULL DEFAULT '',
  `log_Status` tinyint(4) NOT NULL DEFAULT '0',
  `log_Type` tinyint(4) NOT NULL DEFAULT '0',
  `log_Alias` varchar(255) NOT NULL DEFAULT '',
  `log_IsTop` tinyint(1) NOT NULL DEFAULT '0',
  `log_IsLock` tinyint(1) NOT NULL DEFAULT '0',
  `log_Title` varchar(255) NOT NULL DEFAULT '',
  `log_Intro` text NOT NULL,
  `log_Content` longtext NOT NULL,
  `log_PostTime` int(11) NOT NULL DEFAULT '0',
  `log_CommNums` int(11) NOT NULL DEFAULT '0',
  `log_ViewNums` int(11) NOT NULL DEFAULT '0',
  `log_Template` varchar(50) NOT NULL DEFAULT '',
  `log_Meta` longtext NOT NULL,
  PRIMARY KEY (`log_ID`),
  KEY `zbp_log_PT` (`log_PostTime`),
  KEY `zbp_log_TISC` (`log_Type`,`log_IsTop`,`log_Status`,`log_CateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=278 ;

--
-- 转存表中的数据 `zbp_post`
--

INSERT INTO `zbp_post` (`log_ID`, `log_CateID`, `log_AuthorID`, `log_Tag`, `log_Status`, `log_Type`, `log_Alias`, `log_IsTop`, `log_IsLock`, `log_Title`, `log_Intro`, `log_Content`, `log_PostTime`, `log_CommNums`, `log_ViewNums`, `log_Template`, `log_Meta`) VALUES
(130, 1, 1, '', 0, 0, '', 0, 0, '这是我的第四文章', '<p>你好这是我的第四文章</p>', '<p>你好这是我的第四文章</p>', 1405136793, 0, 16, '', ''),
(131, 4, 1, '', 0, 0, '', 0, 0, '你好这是我的第三文章', '<p>你好这是我的第三文章</p>', '<p>你好这是我的第三文章</p>', 1405480825, 0, 6, '', ''),
(133, 1, 2, '', 0, 0, '', 0, 0, '你好这是我的文章', '<p>你好这是我的一篇文章</p>', '<p>你好这是我的一篇文章</p>', 1405481659, 0, 103, '', ''),
(135, 1, 1, '', 0, 0, '', 0, 0, '今天天气不错', '<p>你好，今天的天气很好啊</p>', '<p>你好，今天的天气很好啊</p>', 1405836750, 0, 0, '', ''),
(136, 1, 1, '', 0, 0, '', 0, 0, '生存还是生活', '<p>要生存还是生活呢。</p>', '<p>要生存还是生活呢。</p>', 1405836774, 0, 0, '', ''),
(137, 1, 1, '', 0, 0, '', 0, 0, '需要的时间', '<p>我们需要的时间是什么呢。天地不仁，以人为刍狗，圣人不仁，以百姓为刍狗。</p>', '<p>我们需要的时间是什么呢。天地不仁，以人为刍狗，圣人不仁，以百姓为刍狗。</p>', 1405836802, 0, 0, '', ''),
(138, 1, 1, '', 0, 0, '', 0, 0, '一起品读道德经', '<p>希望大家能够和我一起来读道德经。</p>', '<p>希望大家能够和我一起来读道德经。</p>', 1405836854, 0, 0, '', ''),
(139, 1, 1, '', 0, 0, '', 0, 0, '华东师范大学详解', '<p>下面我将为大家介绍我的母校华东师范大学。</p>', '<p>下面我将为大家介绍我的母校华东师范大学。</p>', 1405836877, 0, 1, '', ''),
(140, 3, 1, '', 0, 0, '', 0, 0, '这是分类3的一篇文章', '<p>分类3是我新建的一个分类</p>', '<p>分类3是我新建的一个分类</p>', 1405836902, 0, 0, '', ''),
(141, 1, 1, '', 0, 0, '', 0, 0, '回头看不曾走远', '<p>一条小短腿，根本走不远。</p>', '<p>一条小短腿，根本走不远。</p>', 1405837031, 0, 4, '', ''),
(142, 1, 1, '', 0, 0, '', 0, 0, 'dsf', '<p>内容</p>', '<p>内容</p>', 1405928478, 0, 0, '', ''),
(143, 1, 1, '', 0, 0, '', 0, 0, 'biaotin', '<p>内容</p>', '<p>内容</p>', 1405928478, 0, 0, '', ''),
(144, 1, 1, '', 0, 0, '', 0, 0, 'sad', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(145, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(146, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(147, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(148, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(149, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(150, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(151, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1405928478, 0, 0, '', ''),
(152, 1, 1, '', 0, 0, '', 0, 0, 'sad', '<p>asd</p>', '<p>asd</p>', 1405929146, 0, 0, '', ''),
(153, 1, 1, '', 0, 0, '', 0, 0, 'asda', '<p>asd</p>', '<p>asd</p>', 1406017253, 0, 0, '', ''),
(154, 1, 1, '', 0, 0, '', 0, 0, 'sad', '<p>asd</p>', '<p>asd</p>', 1406017435, 0, 0, '', ''),
(155, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406017435, 0, 0, '', ''),
(156, 1, 1, '', 0, 0, '', 0, 0, 'qwe', '<p>qwe</p>', '<p>qwe</p>', 1406017633, 0, 0, '', ''),
(157, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asdasd</p>', '<p>asdasd</p>', 1406017708, 0, 0, '', ''),
(158, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asdas</p>', '<p>asdas</p>', 1406017759, 0, 0, '', ''),
(159, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406017800, 0, 0, '', ''),
(160, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asdsad</p>', '<p>asdsad</p>', 1406017800, 0, 0, '', ''),
(161, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asdsad</p>', '<p>asdsad</p>', 1406017800, 0, 0, '', ''),
(162, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>sdasdddddddddddddddddddd</p>', '<p>sdasdddddddddddddddddddd</p>', 1406018202, 0, 0, '', ''),
(163, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>sdasdddddddddddddddddddd</p>', '<p>sdasdddddddddddddddddddd</p>', 1406018202, 0, 0, '', ''),
(164, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>adsssssssssssssssssss</p>', '<p>adsssssssssssssssssss</p>', 1406018382, 0, 0, '', ''),
(165, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>ddddddddddddddd</p>', '<p>ddddddddddddddd</p>', 1406018506, 0, 0, '', ''),
(166, 1, 1, '', 0, 0, '', 0, 0, 'wqeqw', '<p>qweqweqw</p>', '<p>qweqweqw</p>', 1406018569, 0, 0, '', ''),
(167, 1, 1, '', 0, 0, '', 0, 0, 'wqeqw', '<p>qweqweqw</p>', '<p>qweqweqw</p>', 1406018569, 0, 0, '', ''),
(168, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(169, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(170, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(171, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(172, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(173, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(174, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(175, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(176, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(177, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(178, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(179, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(180, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(181, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(182, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(183, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>aasd</p>', '<p>aasd</p>', 1406018569, 0, 0, '', ''),
(184, 1, 1, '', 0, 0, '', 0, 0, 'wer', '<p>werwr</p>', '<p>werwr</p>', 1406020317, 0, 0, '', ''),
(185, 1, 1, '', 0, 0, '', 0, 0, 'wer', '<p>werwr</p>', '<p>werwr</p>', 1406020317, 0, 0, '', ''),
(186, 1, 1, '', 0, 0, '', 0, 0, 'asdasdad', '<p>asdasssssssssssssssssssssssss</p>', '<p>asdasssssssssssssssssssssssss</p>', 1406020317, 0, 0, '', ''),
(187, 1, 1, '', 0, 0, '', 0, 0, 'asdasdad', '<p>asdasssssssssssssssssssssssss</p>', '<p>asdasssssssssssssssssssssssss</p>', 1406020317, 0, 0, '', ''),
(188, 1, 1, '', 0, 0, '', 0, 0, 'asssssssssssssssssss', '<p>&nbsp;&nbsp;&nbsp;&nbsp;qerrrrrrrrrrrrrrrr<br/></p>', '<p>&nbsp;&nbsp;&nbsp;&nbsp;qerrrrrrrrrrrrrrrr<br/></p>', 1406020317, 0, 0, '', ''),
(189, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(190, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(191, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(192, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(193, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(194, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(195, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406022483, 0, 0, '', ''),
(196, 1, 1, '', 0, 0, '', 0, 0, 'title1', '<p>asdas</p>', '<p>asdas</p>', 1406097590, 0, 0, '', ''),
(197, 1, 1, '', 0, 0, '', 0, 0, 'wqeq', '<p>asd<br/></p>', '<p>asd<br/></p>', 1406097962, 0, 0, '', ''),
(198, 1, 1, '', 0, 0, '', 0, 0, 'wqeq', '<p>asd<br/></p>', '<p>asd<br/></p>', 1406097962, 0, 0, '', ''),
(199, 1, 1, '', 0, 0, '', 0, 0, 'wqeq', '<p>asd<br/></p>', '<p>asd<br/></p>', 1406097962, 0, 0, '', ''),
(200, 1, 1, '', 0, 0, '', 0, 0, 'wqeq', '<p>asd<br/></p>', '<p>asd<br/></p>', 1406097962, 0, 0, '', ''),
(201, 1, 1, '', 0, 0, '', 0, 0, 'wqeq', '<p>asd<br/></p>', '<p>asd<br/></p>', 1406097962, 0, 0, '', ''),
(202, 1, 1, '', 0, 0, '', 0, 0, 'asda', '<p>asd</p>', '<p>asd</p>', 1406097962, 0, 0, '', ''),
(203, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406097962, 0, 0, '', ''),
(204, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406097962, 0, 0, '', ''),
(205, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406098431, 0, 0, '', ''),
(206, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asd</p>', '<p>asd</p>', 1406098431, 0, 0, '', ''),
(207, 1, 1, '', 0, 0, '', 0, 0, 'asd', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(208, 1, 1, '', 0, 0, '', 0, 0, 'asdada', '<p>asdad</p>', '<p>asdad</p>', 1406098431, 0, 0, '', ''),
(209, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asd</p>', '<p>asd</p>', 1406098431, 0, 0, '', ''),
(210, 1, 1, '', 0, 0, '', 0, 0, 'asdasdas', '<p>asdd</p>', '<p>asdd</p>', 1406098431, 0, 0, '', ''),
(211, 1, 1, '', 0, 0, '', 0, 0, 'asdasdas', '<p>asdd</p>', '<p>asdd</p>', 1406098431, 0, 0, '', ''),
(212, 1, 1, '', 0, 0, '', 0, 0, 'asda', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(213, 1, 1, '', 0, 0, '', 0, 0, 'asdad', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(214, 1, 1, '', 0, 0, '', 0, 0, 'asdad', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(215, 1, 1, '', 0, 0, '', 0, 0, 'asdad', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(216, 1, 1, '', 0, 0, '', 0, 0, 'asdad', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(217, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(218, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(219, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(220, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(221, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(222, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(223, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(224, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(225, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(226, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(227, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(228, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asda</p>', '<p>asda</p>', 1406098431, 0, 0, '', ''),
(229, 1, 1, '', 0, 0, '', 0, 0, 'dsfds', '<p>asdasd</p>', '<p>asdasd</p>', 1406098431, 0, 0, '', ''),
(230, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asdass</p>', '<p>asdass</p>', 1406098431, 0, 0, '', ''),
(231, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asdas</p>', '<p>asdas</p>', 1406098431, 0, 0, '', ''),
(232, 1, 1, '', 0, 0, '', 0, 0, 'asdasd', '<p>asdas</p>', '<p>asdas</p>', 1406098431, 0, 0, '', ''),
(233, 1, 1, '', 0, 0, '', 0, 0, '标题1', '<p>正文1</p>', '<p>正文1</p>', 1406098431, 0, 0, '', ''),
(234, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>asdas</p>', '<p>asdas</p>', 1406099586, 0, 2, '', ''),
(235, 1, 1, '', 0, 0, '', 0, 0, 'asdasdasd', '<p>asdasda</p>', '<p>asdasda</p>', 1406188708, 0, 0, '', ''),
(236, 1, 1, '', 0, 0, '', 0, 0, 'asdasdasd', '<p>asdasdasdas</p>', '<p>asdasdasdas</p>', 1406188708, 0, 0, '', ''),
(237, 1, 1, '', 0, 0, '', 0, 0, 'asdasdasd', '<p>asdasdasdas</p>', '<p>asdasdasdas</p>', 1406188708, 0, 0, '', ''),
(238, 1, 1, '', 0, 0, '', 0, 0, 'asdadsasd', '<p>asdasdadas</p>', '<p>asdasdadas</p>', 1406188750, 0, 1, '', ''),
(239, 1, 1, '', 0, 0, '', 0, 0, '我的新文章', '<p>正文<br/></p>', '<p>正文<br/></p>', 1406188924, 0, 0, '', ''),
(240, 1, 1, '', 0, 0, '', 0, 0, '我的标题', '<p>水仙花</p>', '<p>水仙花</p>', 1406189135, 0, 1, '', ''),
(241, 1, 1, '', 0, 0, '', 0, 0, 'asdas', '<p>asdsaaaaaaaaaaaa</p>', '<p>asdsaaaaaaaaaaaa</p>', 1406189765, 0, 1, '', ''),
(256, 1, 2, '', 0, 0, '', 0, 0, '请问请问请问', '<p>阿斯顿</p>', '<p>阿斯顿</p>', 1406522498, 0, 2, '', ''),
(257, 1, 1, '', 0, 0, '', 0, 0, 'asasASa', '<p>zxXX</p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2014/07/20140728125545_34584.jpg" style="float:none;" title="Penguins.jpg"/></p><p></p>', '<p>zxXX</p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2014/07/20140728125545_34584.jpg" style="float:none;" title="Penguins.jpg"/></p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2014/07/20140728125545_70040.jpg" style="float:none;" title="Desert.jpg"/></p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2014/07/20140728125545_12672.jpg" style="float:none;" title="Jellyfish.jpg"/></p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2014/07/20140728125545_58169.jpg" style="float:none;" title="Tulips.jpg"/></p><p><br/></p>', 1406523325, 0, 18, '', ''),
(254, 0, 1, '', 0, 1, '', 0, 0, '沙龙1', '', '<p>sada</p>', 1406277649, 0, 12, '', ''),
(255, 1, 1, '', 0, 0, '', 0, 0, '为', '<p>内容</p>', '<p>内容</p>', 1406522449, 0, 2, '', ''),
(258, 0, 1, '', 0, 1, '', 0, 0, '沙龙2', '', '<p>你好，这是上传的标题图片</p>', 1409034131, 0, 4, '', ''),
(259, 0, 1, '', 0, 1, '', 0, 0, '沙龙3', '', '<p>撒大帝</p>', 1409042575, 0, 1, '', ''),
(260, 0, 1, '', 0, 1, '', 0, 0, '沙龙4', '', '<p>asda的<br/></p>', 1409042595, 0, 0, '', ''),
(261, 0, 1, '', 0, 1, '', 0, 0, '啊实打实', '', '<p>啊实打实大打折的<br/></p>', 1409042607, 0, 0, '', ''),
(262, 0, 1, '', 0, 1, '', 0, 0, '啊实打实大苏打', '', '<p>啊实打实大苏打</p>', 1409042631, 0, 2, '', ''),
(263, 0, 1, '', 0, 1, '', 0, 0, '沙龙7', '', '<p>啊大苏打</p>', 1409042642, 0, 0, '', ''),
(264, 1, 1, '', 0, 0, '', 0, 0, '我的新篇章', '<p>啊实打实的</p>', '<p>啊实打实的</p>', 1409624785, 0, 30, '', ''),
(268, 0, 1, '', 0, 1, '', 0, 0, '我的沙龙', '', '<p>撒打算</p>', 1461407916, 0, 0, '', ''),
(276, 0, 1, '', 0, 1, '', 0, 0, '我的新碟', '', '<p>啊实打实的</p>', 1461467189, 0, 1, '', ''),
(270, 0, 1, '', 0, 1, '', 0, 0, '新的沙龙', '', '<p>啊实打实大</p>', 1461462117, 0, 1, '', ''),
(267, 1, 6, '', 0, 0, '', 0, 0, '这是我的文章', '<p>速度是多少</p>', '<p>速度是多少</p>', 1461407871, 0, 3, '', ''),
(266, 1, 1, '', 0, 0, '', 0, 0, '今天的第一篇文章', '<p>是大大打折</p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2015/10/20151016130250_58348.jpg" style="float: none; width: 348px; height: 315px;" title="金毛2.jpg"/></p><p></p>', '<p>是大大打折</p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2015/10/20151016130250_58348.jpg" style="float: none; width: 348px; height: 315px;" title="金毛2.jpg"/></p><p><img src="{#ZC_BLOG_HOST#}zb_users/upload/2015/10/20151016130250_78378.jpg" style="float: none; width: 357px; height: 472px;" title="Desert.jpg"/></p><p><br/></p>', 1444971706, 0, 5, '', ''),
(271, 1, 1, '', 0, 0, '', 0, 0, '啊实打实的', '<p>啊实打实的</p>', '<p>啊实打实的</p>', 1461466264, 0, 0, '', ''),
(272, 0, 1, '', 0, 1, '', 0, 0, '啊实打实的', '', '<p>撒大苏打</p>', 1461466286, 0, 0, '', ''),
(273, 0, 1, '', 0, 1, '', 0, 0, '打折打得', '', '<p>testasda</p>', 1461466886, 0, 0, '', ''),
(274, 0, 1, '', 0, 1, '', 0, 0, '特', '', '<p>阿德</p>', 1461466886, 0, 1, '', ''),
(275, 0, 1, '', 0, 1, '', 0, 0, '啊大苏打', '', '<p>啊实打实</p>', 1461466886, 0, 1, '', ''),
(277, 0, 1, '', 0, 1, '', 0, 0, 'Asda是', '', '<p>啊实打实</p>', 1461467253, 0, 4, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_tag`
--

CREATE TABLE IF NOT EXISTS `zbp_tag` (
  `tag_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tag_Name` varchar(255) NOT NULL DEFAULT '',
  `tag_Order` int(11) NOT NULL DEFAULT '0',
  `tag_Count` int(11) NOT NULL DEFAULT '0',
  `tag_Alias` varchar(255) NOT NULL DEFAULT '',
  `tag_Intro` text NOT NULL,
  `tag_Template` varchar(50) NOT NULL DEFAULT '',
  `tag_Meta` longtext NOT NULL,
  PRIMARY KEY (`tag_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `zbp_tag`
--

INSERT INTO `zbp_tag` (`tag_ID`, `tag_Name`, `tag_Order`, `tag_Count`, `tag_Alias`, `tag_Intro`, `tag_Template`, `tag_Meta`) VALUES
(1, '生活', 0, 0, '', '', '', ''),
(2, '哲学', 0, 0, '', '', '', ''),
(3, '历史', 0, 0, '', '', '', ''),
(4, '政治', 0, 0, '', '', '', ''),
(5, '管理', 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `zbp_upload`
--

CREATE TABLE IF NOT EXISTS `zbp_upload` (
  `ul_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ul_AuthorID` int(11) NOT NULL DEFAULT '0',
  `ul_Size` int(11) NOT NULL DEFAULT '0',
  `ul_Name` varchar(255) NOT NULL DEFAULT '',
  `ul_SourceName` varchar(255) NOT NULL DEFAULT '',
  `ul_MimeType` varchar(50) NOT NULL DEFAULT '',
  `ul_PostTime` int(11) NOT NULL DEFAULT '0',
  `ul_DownNums` int(11) NOT NULL DEFAULT '0',
  `ul_LogID` int(11) NOT NULL DEFAULT '0',
  `ul_Intro` text NOT NULL,
  `ul_Meta` longtext NOT NULL,
  PRIMARY KEY (`ul_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `zbp_upload`
--

INSERT INTO `zbp_upload` (`ul_ID`, `ul_AuthorID`, `ul_Size`, `ul_Name`, `ul_SourceName`, `ul_MimeType`, `ul_PostTime`, `ul_DownNums`, `ul_LogID`, `ul_Intro`, `ul_Meta`) VALUES
(3, 1, 1161887, '20140716112920_50718.png', 'Aviary Stock Photo 2.png', 'application/octet-stream', 1405481360, 0, 0, '', ''),
(4, 1, 777837, '20140728125545_34584.jpg', 'Penguins.jpg', 'application/octet-stream', 1406523345, 0, 0, '', ''),
(5, 1, 845943, '20140728125545_70040.jpg', 'Desert.jpg', 'application/octet-stream', 1406523345, 0, 0, '', ''),
(6, 1, 775704, '20140728125545_12672.jpg', 'Jellyfish.jpg', 'application/octet-stream', 1406523345, 0, 0, '', ''),
(7, 1, 620890, '20140728125545_58169.jpg', 'Tulips.jpg', 'application/octet-stream', 1406523345, 0, 0, '', ''),
(8, 1, 83918, '20141127131035_44538.jpg', 'stevenzhu-20081213121935-79034.jpg', 'application/octet-stream', 1417065035, 0, 0, '', ''),
(9, 1, 72835, '20151016130250_58348.jpg', '金毛2.jpg', 'application/octet-stream', 1444971770, 0, 0, '', ''),
(10, 1, 845943, '20151016130250_78378.jpg', 'Desert.jpg', 'application/octet-stream', 1444971770, 0, 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
