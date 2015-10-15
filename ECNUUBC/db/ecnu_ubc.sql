-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2014-11-17 03:24:13
-- 服务器版本: 5.6.14
-- PHP 版本: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ecnu_ubc`
--

-- --------------------------------------------------------

--
-- 表的结构 `ubc_category`
--

CREATE TABLE IF NOT EXISTS `ubc_category` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `ubc_category`
--

INSERT INTO `ubc_category` (`cate_ID`, `cate_Name`, `cate_Order`, `cate_Count`, `cate_Alias`, `cate_Intro`, `cate_RootID`, `cate_ParentID`, `cate_Template`, `cate_LogTemplate`, `cate_Meta`) VALUES
(1, '未分类', 0, 0, 'uncategorized', '', 0, 0, '', '', ''),
(16, '耳机目录33', 0, 1, '', '', 0, 8, '', '', ''),
(12, '二级目录1', 0, 5, '', '', 5, 5, '', '', ''),
(13, '二级目录2', 0, 1, '', '', 5, 5, '', '', ''),
(14, '二级目录3', 0, 0, '', '', 7, 7, '', '', ''),
(15, '二级目录4', 0, 4, '', '', 0, 7, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_comment`
--

CREATE TABLE IF NOT EXISTS `ubc_comment` (
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
  KEY `ubc_comm_PT` (`comm_PostTime`),
  KEY `ubc_comm_RIL` (`comm_RootID`,`comm_IsChecking`,`comm_LogID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ubc_config`
--

CREATE TABLE IF NOT EXISTS `ubc_config` (
  `conf_Name` varchar(255) NOT NULL DEFAULT '',
  `conf_Value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ubc_config`
--

INSERT INTO `ubc_config` (`conf_Name`, `conf_Value`) VALUES
('system', 'a:99:{s:15:"ZC_SITE_TURNOFF";b:0;s:12:"ZC_BLOG_HOST";s:16:"{#ZC_BLOG_HOST#}";s:12:"ZC_BLOG_NAME";s:39:"现代中国与世界联合研究中心";s:15:"ZC_BLOG_SUBNAME";s:17:"Good Luck To You!";s:13:"ZC_BLOG_THEME";s:7:"default";s:11:"ZC_BLOG_CSS";s:7:"default";s:17:"ZC_BLOG_COPYRIGHT";s:39:"你好，现在的地方是中心介绍";s:16:"ZC_BLOG_LANGUAGE";s:5:"zh-CN";s:20:"ZC_BLOG_LANGUAGEPACK";s:11:"SimpChinese";s:16:"ZC_DATABASE_TYPE";s:6:"mysqli";s:14:"ZC_SQLITE_NAME";s:0:"";s:13:"ZC_SQLITE_PRE";s:4:"zbp_";s:15:"ZC_MYSQL_SERVER";s:9:"localhost";s:17:"ZC_MYSQL_USERNAME";s:4:"root";s:17:"ZC_MYSQL_PASSWORD";s:0:"";s:13:"ZC_MYSQL_NAME";s:8:"ecnu_ubc";s:16:"ZC_MYSQL_CHARSET";s:4:"utf8";s:12:"ZC_MYSQL_PRE";s:4:"ubc_";s:15:"ZC_MYSQL_ENGINE";s:6:"MyISAM";s:13:"ZC_MYSQL_PORT";s:4:"3306";s:19:"ZC_MYSQL_PERSISTENT";b:0;s:20:"ZC_USING_PLUGIN_LIST";s:17:"AppCentre|UEditor";s:11:"ZC_YUN_SITE";s:0:"";s:13:"ZC_DEBUG_MODE";b:0;s:20:"ZC_DEBUG_MODE_STRICT";b:0;s:21:"ZC_DEBUG_MODE_WARNING";b:1;s:13:"ZC_BLOG_CLSID";s:22:"5448dbea957ca250112220";s:17:"ZC_TIME_ZONE_NAME";s:13:"Asia/Shanghai";s:18:"ZC_UPDATE_INFO_URL";s:31:"http://update.zblogcn.com/info/";s:26:"ZC_PERMANENT_DOMAIN_ENABLE";b:0;s:23:"ZC_MULTI_DOMAIN_SUPPORT";b:0;s:15:"ZC_BLOG_PRODUCT";s:9:"Z-BlogPHP";s:15:"ZC_BLOG_VERSION";s:22:"1.3 Wonce Build 140614";s:20:"ZC_BLOG_PRODUCT_FULL";s:32:"Z-BlogPHP 1.3 Wonce Build 140614";s:20:"ZC_BLOG_PRODUCT_HTML";s:93:"<a href="http://www.zblogcn.com/" title="RainbowSoft Z-BlogPHP" target="_blank">Z-BlogPHP</a>";s:24:"ZC_BLOG_PRODUCT_FULLHTML";s:116:"<a href="http://www.zblogcn.com/" title="RainbowSoft Z-BlogPHP" target="_blank">Z-BlogPHP 1.3 Wonce Build 140614</a>";s:18:"ZC_COMMENT_TURNOFF";b:0;s:24:"ZC_COMMENT_VERIFY_ENABLE";b:0;s:24:"ZC_COMMENT_REVERSE_ORDER";b:0;s:20:"ZC_VERIFYCODE_STRING";s:30:"ABCDEFGHKMNPRSTUVWXYZ123456789";s:19:"ZC_VERIFYCODE_WIDTH";i:90;s:20:"ZC_VERIFYCODE_HEIGHT";i:30;s:18:"ZC_VERIFYCODE_FONT";s:26:"zb_system/defend/arial.ttf";s:16:"ZC_DISPLAY_COUNT";i:10;s:15:"ZC_SEARCH_COUNT";i:25;s:16:"ZC_PAGEBAR_COUNT";i:10;s:25:"ZC_COMMENTS_DISPLAY_COUNT";i:100;s:23:"ZC_DISPLAY_SUBCATEGORYS";b:0;s:13:"ZC_RSS2_COUNT";i:10;s:19:"ZC_RSS_EXPORT_WHOLE";b:1;s:15:"ZC_MANAGE_COUNT";i:50;s:21:"ZC_EMOTICONS_FILENAME";s:4:"face";s:21:"ZC_EMOTICONS_FILETYPE";s:11:"png|gif|jpg";s:21:"ZC_EMOTICONS_FILESIZE";s:2:"16";s:18:"ZC_UPLOAD_FILETYPE";s:185:"jpg|gif|png|jpeg|bmp|psd|wmf|ico|rpm|deb|tar|gz|sit|7z|bz2|zip|rar|xml|xsl|svg|svgz|doc|docx|ppt|pptx|xls|xlsx|wps|chm|txt|pdf|mp3|avi|mpg|rm|ra|rmvb|mov|wmv|wma|swf|fla|torrent|apk|zba";s:18:"ZC_UPLOAD_FILESIZE";i:14;s:15:"ZC_USERNAME_MIN";i:3;s:15:"ZC_USERNAME_MAX";i:50;s:15:"ZC_PASSWORD_MIN";i:8;s:15:"ZC_PASSWORD_MAX";i:20;s:12:"ZC_EMAIL_MAX";i:50;s:15:"ZC_HOMEPAGE_MAX";i:100;s:14:"ZC_CONTENT_MAX";i:1000;s:22:"ZC_ARTICLE_EXCERPT_MAX";i:250;s:22:"ZC_COMMENT_EXCERPT_MAX";i:20;s:14:"ZC_STATIC_MODE";s:6:"ACTIVE";s:16:"ZC_ARTICLE_REGEX";s:18:"{%host%}?id={%id%}";s:13:"ZC_PAGE_REGEX";s:18:"{%host%}?id={%id%}";s:17:"ZC_CATEGORY_REGEX";s:34:"{%host%}?cate={%id%}&page={%page%}";s:15:"ZC_AUTHOR_REGEX";s:34:"{%host%}?auth={%id%}&page={%page%}";s:13:"ZC_TAGS_REGEX";s:34:"{%host%}?tags={%id%}&page={%page%}";s:13:"ZC_DATE_REGEX";s:36:"{%host%}?date={%date%}&page={%page%}";s:14:"ZC_INDEX_REGEX";s:22:"{%host%}?page={%page%}";s:25:"ZC_INDEX_DEFAULT_TEMPLATE";s:5:"index";s:24:"ZC_POST_DEFAULT_TEMPLATE";s:6:"single";s:16:"ZC_SIDEBAR_ORDER";s:78:"calendar|controlpanel|catalog|searchpanel|comments|archives|favorite|link|misc";s:17:"ZC_SIDEBAR2_ORDER";s:0:"";s:17:"ZC_SIDEBAR3_ORDER";s:0:"";s:17:"ZC_SIDEBAR4_ORDER";s:0:"";s:17:"ZC_SIDEBAR5_ORDER";s:0:"";s:14:"ZC_GZIP_ENABLE";b:0;s:21:"ZC_ADMIN_HTML5_ENABLE";b:1;s:27:"ZC_SYNTAXHIGHLIGHTER_ENABLE";b:1;s:20:"ZC_CODEMIRROR_ENABLE";b:1;s:20:"ZC_HTTP_LASTMODIFIED";b:0;s:23:"ZC_MODULE_CATALOG_STYLE";i:0;s:19:"ZC_VIEWNUMS_TURNOFF";b:0;s:20:"ZC_LISTONTOP_TURNOFF";b:0;s:20:"ZC_RELATEDLIST_COUNT";i:10;s:18:"ZC_RUNINFO_DISPLAY";b:1;s:30:"ZC_POST_ALIAS_USE_ID_NOT_TITLE";b:0;s:10:"ADD_NAME_1";s:0:"";s:10:"ADD_NAME_2";s:0:"";s:10:"ADD_NAME_3";s:0:"";s:10:"ADD_NAME_4";s:0:"";s:16:"FRIEND_ADDRESS_1";s:0:"";s:16:"FRIEND_ADDRESS_2";s:0:"";s:16:"FRIEND_ADDRESS_3";s:0:"";s:16:"FRIEND_ADDRESS_4";s:0:"";}'),
('cache', 'a:7:{s:13:"templates_md5";s:32:"68efe041d9763ef2658396cf3adca2ed";s:16:"reload_statistic";s:687:"<tr><td class=''td20''>当前用户</td><td class=''td30''>{$zbp->user->Name}</td><td class=''td20''>当前版本</td><td class=''td30''>1.3 Wonce Build 140614</td></tr><tr><td class=''td20''>文章总数</td><td>8</td><td>分类总数</td><td>5</td></tr><tr><td class=''td20''>页面总数</td><td>1</td><td>分类总数</td><td>6</td></tr><tr><td class=''td20''>评论总数</td><td>0</td><td>浏览总数</td><td>1</td></tr><tr><td class=''td20''>当前主题/当前样式</td><td>default/default</td><td>用户总数</td><td>1</td></tr><tr><td class=''td20''>离线客户端地址</td><td>{#ZC_BLOG_HOST#}zb_system/xml-rpc/</td><td>系统环境</td><td>WINNT;Apache2.4.7;PHP5.5.6;mysqli;curl</td></tr>";s:21:"reload_statistic_time";i:1415503451;s:18:"system_environment";s:38:"WINNT;Apache2.4.7;PHP5.5.6;mysqli;curl";s:19:"normal_article_nums";s:2:"21";s:17:"reload_updateinfo";s:1093:"<tr><td><p><a href="http://www.zblogcn.com/zblogphp/" target="_blank" style="color:crimson"><b>Z-BlogPHP 1.3 Wonce 正式版发布了，欢迎下载安装和升级。 (2014-6-14)</b></a></p>\r\n\r\n<p><a href="http://www.zblogcn.com/" target="_blank" style="color:#ff6600"><b>Z-Blog启用新域名：www.zblogcn.com，原官方网站www.rainbowsoft.org正式变更为www.zblogcn.com。</b></a></p>\r\n\r\n<p><a href="http://www.zblogcn.com/zblogphp/" target="_blank" style="color:crimson">2014年重磅发布，Z-BlogPHP 1.2 Hippo 正式版发布了！ (2014-2-20)</a></p>\r\n\r\n<p><a href="http://bbs.zblogcn.com/thread-83785-1-1.html" target="_blank" style="color:blue">2014年ASP版全新发布！Z-Blog 2.2 Prism Build 140101 发布了。(2014-01-02)</a></p>\r\n\r\n<p><a href="http://www.zblogcn.com/zblogphp/" target="_blank">Z-BlogPHP 1.1 Taichi 正式版已于2013年12月21号发布，欢迎下载！(2013-12-22)</a></p>\r\n\r\n<p><a href="http://bbs.zblogcn.com/thread-77001-1-1.html" target="_blank">Z-Blog ASP和PHP的应用中心正式上线了!欢迎开发者进驻。(2013-01-01)</a></p></td></tr>";s:22:"reload_updateinfo_time";i:1415503451;}'),
('AppCentre', 'a:4:{s:12:"enabledcheck";i:1;s:9:"checkbeta";i:0;s:13:"enabledevelop";i:0;s:13:"lastchecktime";i:1415503451;}');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_counter`
--

CREATE TABLE IF NOT EXISTS `ubc_counter` (
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
-- 表的结构 `ubc_memaddition`
--

CREATE TABLE IF NOT EXISTS `ubc_memaddition` (
  `mem_ID` int(11) NOT NULL,
  `mem_headPortrait` varchar(200) NOT NULL,
  `mem_weibo` varchar(200) NOT NULL,
  PRIMARY KEY (`mem_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ubc_memaddition`
--

INSERT INTO `ubc_memaddition` (`mem_ID`, `mem_headPortrait`, `mem_weibo`) VALUES
(2, '../../front/resources/headPortrait/1415804117.jpg', ''),
(4, '../../front/resources/headPortrait/1415804656.jpg', 'ww'),
(5, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_member`
--

CREATE TABLE IF NOT EXISTS `ubc_member` (
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
  KEY `ubc_mem_Name` (`mem_Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `ubc_member`
--

INSERT INTO `ubc_member` (`mem_ID`, `mem_Guid`, `mem_Level`, `mem_Status`, `mem_Name`, `mem_Password`, `mem_Email`, `mem_HomePage`, `mem_IP`, `mem_PostTime`, `mem_Alias`, `mem_Intro`, `mem_Articles`, `mem_Pages`, `mem_Comments`, `mem_Uploads`, `mem_Template`, `mem_Meta`) VALUES
(1, '5448dbeb664d6350985094', 1, 0, 'admin', 'a8e0a29e51cf8a7ead9cc13b9aa8b6c0', '', '', '127.0.0.1', 1414061035, '', '', 15, 1, 0, 0, '', ''),
(2, '5463713574549154797907', 3, 0, 'test1', '9e59e4ba8bc2a65e8e5a6767946a79b0', 'shuguang826@126.com', 'http://ww', '::1', 0, 'test', 'asdas', 1, 0, 0, 0, '', ''),
(4, '546376eac5a9b503248579', 3, 0, '作者2', '297c637882888605942c9bd830f6d284', 'shuguang826@126.com', 'http://ss', '::1', 0, '哈哈', '', 5, 0, 0, 0, '', ''),
(5, '546848a1d0b5b667095874', 1, 0, 'admintest', 'aac22ccae7ef38823538f883b7e8eea4', 'shuguang826@126.com', 'http://sss', '::1', 0, 'nonike', '', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_module`
--

CREATE TABLE IF NOT EXISTS `ubc_module` (
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
-- 转存表中的数据 `ubc_module`
--

INSERT INTO `ubc_module` (`mod_ID`, `mod_Name`, `mod_FileName`, `mod_Content`, `mod_SidebarID`, `mod_HtmlID`, `mod_Type`, `mod_MaxLi`, `mod_Source`, `mod_IsHideTitle`, `mod_Meta`) VALUES
(1, '导航栏', 'navbar', '<li id="nvabar-item-index"><a href="{#ZC_BLOG_HOST#}">首页</a></li>', 0, 'divNavBar', 'ul', 0, 'system', 0, ''),
(2, '日历', 'calendar', '<table id="tbCalendar"><caption><a href="{#ZC_BLOG_HOST#}?date=2014-10">«</a>&nbsp;&nbsp;&nbsp;<a href="{#ZC_BLOG_HOST#}?date=2014-11">2014年11月</a>&nbsp;&nbsp;&nbsp;<a href="{#ZC_BLOG_HOST#}?date=2014-12">»</a></caption><thead><tr><th title="星期一" scope="col"><small>一</small></th><th title="星期二" scope="col"><small>二</small></th><th title="星期三" scope="col"><small>三</small></th><th title="星期四" scope="col"><small>四</small></th><th title="星期五" scope="col"><small>五</small></th><th title="星期六" scope="col"><small>六</small></th><th title="星期日" scope="col"><small>日</small></th></tr></thead><tbody><tr><td class="pad" colspan="5"> </td><td>1</td><td>2</td></tr><tr><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td><a href="{#ZC_BLOG_HOST#}?id=148">16</a></td></tr><tr><td><a href="{#ZC_BLOG_HOST#}?id=154">17</a></td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td></tr><tr><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td>30</td></tr></tbody></table>', 0, 'divCalendar', 'div', 0, 'system', 1, ''),
(3, '控制面板', 'controlpanel', '<span class="cp-hello">您好,欢迎到访网站!</span><br/><span class="cp-login"><a href="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=login">[管理登陆]</a></span>&nbsp;&nbsp;<span class="cp-vrs"><a href="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=misc&amp;type=vrs">[查看权限]</a></span>', 0, 'divContorPanel', 'div', 0, 'system', 0, ''),
(4, '网站分类', 'catalog', '<li><a href="{#ZC_BLOG_HOST#}?cate=1">未分类</a></li>', 0, 'divCatalog', 'ul', 0, 'system', 0, ''),
(5, '搜索', 'searchpanel', '<form name="search" method="post" action="{#ZC_BLOG_HOST#}zb_system/cmd.php?act=search"><input type="text" name="q" size="11" /> <input type="submit" value="搜索" /></form>', 0, 'divSearchPanel', 'div', 0, 'system', 0, ''),
(6, '最新留言', 'comments', '', 0, 'divComments', 'ul', 0, 'system', 0, ''),
(7, '文章归档', 'archives', '<li><a href="{#ZC_BLOG_HOST#}?date=2014-11">2014年11月 (21)</a></li>', 0, 'divArchives', 'ul', 0, 'system', 0, ''),
(8, '站点信息', 'statistics', '<li>文章总数:8</li><li>页面总数:1</li><li>分类总数:5</li><li>分类总数:6</li><li>评论总数:0</li><li>浏览总数:1</li>', 0, 'divStatistics', 'ul', 0, 'system', 0, ''),
(9, '网站收藏', 'favorite', '<li><a href="http://bbs.zblogcn.com/" target="_blank">ZBlogger社区</a></li><li><a href="http://app.zblogcn.com/" target="_blank">Z-Blog应用中心</a></li><li><a href="http://weibo.com/zblogcn" target="_blank">Z-Blog新浪官微</a></li><li><a href="http://t.qq.com/zblogcn" target="_blank">Z-Blog腾讯官微</a></li>', 0, 'divFavorites', 'ul', 0, 'system', 0, ''),
(10, '友情链接', 'link', '<li><a href="http://www.dbshost.cn/" target="_blank" title="独立博客服务 Z-Blog官方主机">DBS主机</a></li>', 0, 'divLinkage', 'ul', 0, 'system', 0, ''),
(11, '图标汇集', 'misc', '<li><a href="http://www.zblogcn.com/" target="_blank"><img src="{#ZC_BLOG_HOST#}zb_system/image/logo/zblog.gif" height="31" width="88" alt="RainbowSoft Studio Z-Blog" /></a></li><li><a href="{#ZC_BLOG_HOST#}feed.php" target="_blank"><img src="{#ZC_BLOG_HOST#}zb_system/image/logo/rss.png" height="31" width="88" alt="订阅本站的 RSS 2.0 新闻聚合" /></a></li>', 0, 'divMisc', 'ul', 0, 'system', 1, ''),
(12, '作者列表', 'authors', '<li><a href="{#ZC_BLOG_HOST#}?auth=1">admin<span class="article-nums"> (15)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=2">test1<span class="article-nums"> (1)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=4">作者2<span class="article-nums"> (5)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?auth=5">admintest<span class="article-nums"> (0)</span></a></li>', 0, 'divAuthors', 'ul', 0, 'system', 0, ''),
(13, '最近发表', 'previous', '<li><a href="{#ZC_BLOG_HOST#}?id=148">讲座录音3</a></li><li><a href="{#ZC_BLOG_HOST#}?id=147">现场与对话1</a></li><li><a href="{#ZC_BLOG_HOST#}?id=146">西方思想研究1</a></li><li><a href="{#ZC_BLOG_HOST#}?id=145">讲座录音2</a></li><li><a href="{#ZC_BLOG_HOST#}?id=144">中心新作1</a></li><li><a href="{#ZC_BLOG_HOST#}?id=143">中国思想1</a></li><li><a href="{#ZC_BLOG_HOST#}?id=142">新闻3</a></li><li><a href="{#ZC_BLOG_HOST#}?id=141">新闻2</a></li><li><a href="{#ZC_BLOG_HOST#}?id=140">新闻1</a></li><li><a href="{#ZC_BLOG_HOST#}?id=139">预告6</a></li>', 0, 'divPrevious', 'ul', 0, 'system', 0, ''),
(14, '标签列表', 'tags', '<li><a href="{#ZC_BLOG_HOST#}?tags=1">中心预告<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=3">中国思想研究<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=4">中心新闻<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=5">西方思想研究<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=6">中心新作<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=7">现场与对话<span class="tag-count"> (0)</span></a></li><li><a href="{#ZC_BLOG_HOST#}?tags=8">讲座录音<span class="tag-count"> (0)</span></a></li>', 0, 'divTags', 'ul', 0, 'system', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_post`
--

CREATE TABLE IF NOT EXISTS `ubc_post` (
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
  KEY `ubc_log_PT` (`log_PostTime`),
  KEY `ubc_log_TISC` (`log_Type`,`log_IsTop`,`log_Status`,`log_CateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- 转存表中的数据 `ubc_post`
--

INSERT INTO `ubc_post` (`log_ID`, `log_CateID`, `log_AuthorID`, `log_Tag`, `log_Status`, `log_Type`, `log_Alias`, `log_IsTop`, `log_IsLock`, `log_Title`, `log_Intro`, `log_Content`, `log_PostTime`, `log_CommNums`, `log_ViewNums`, `log_Template`, `log_Meta`) VALUES
(134, 0, 1, '1', 0, 0, '', 0, 0, '中心预告1', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148563, 0, 0, '', ''),
(136, 0, 1, '1', 0, 0, '', 0, 0, '中心预告3', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148838, 0, 0, '', ''),
(135, 0, 1, '1', 0, 0, '', 0, 0, '中心预告2', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148810, 0, 0, '', ''),
(137, 0, 1, '1', 0, 0, '', 0, 0, '预告4', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148859, 0, 0, '', ''),
(138, 0, 1, '1', 0, 0, '', 0, 0, '预告5', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148878, 0, 0, '', ''),
(139, 0, 1, '1', 0, 0, '', 0, 0, '预告6', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比\r\n亚等非洲三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研\r\n究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p><br/></p>', 1416148895, 0, 0, '', ''),
(140, 0, 1, '4', 0, 0, '', 0, 0, '新闻1', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p>\r\n				\r\n				\r\n			\r\n			\r\n		\r\n		\r\n		</p><div id="column2">\r\n			<div class="box-border">\r\n				<div class="box-border-content">\r\n					<div class="author clearfix">\r\n						<div class="column-head">\r\n							<strong>作者</strong>\r\n						</div>\r\n						\r\n						\r\n						<div class="author-info">\r\n							<a><p class="author-name">作者</p></a>\r\n							<div class="author-intro">\r\n								<p>作者简介，如华东师范大学政治学系教授。研究兴趣：如政治学等等。不超过两百个字。</p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					\r\n					<div id="popular-artical">\r\n						<div class="column-head">\r\n							<strong>相关文章</strong>\r\n						</div>\r\n						\r\n						<ul class="popular-artical-title clearfix list-paddingleft-2"><li><p><a>自我表述：民族团结的助推器？</a></p></li><li><p><a>非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a></p></li><li><p><a>小众“教门”是怎样炼成的？</a></p></li><li><p><a>民生能否换民意?</a></p></li><li><p><a>高绩效的政府容易获得市民信任</a></p></li></ul>\r\n					</div>\r\n					\r\n				</div>\r\n				\r\n			</div>\r\n			\r\n		</div><p><br/></p>', 1416149480, 0, 0, '', ''),
(141, 0, 1, '4', 0, 0, '', 0, 0, '新闻2', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p>\r\n				\r\n				\r\n			\r\n			\r\n		\r\n		\r\n		</p><div id="column2">\r\n			<div class="box-border">\r\n				<div class="box-border-content">\r\n					<div class="author clearfix">\r\n						<div class="column-head">\r\n							<strong>作者</strong>\r\n						</div>\r\n						\r\n						<div class="author-img">\r\n							<a>\r\n								<img src="{#ZC_BLOG_HOST#}zb_users/plugin/UEditor/themes/default/images/spacer.gif" alt="教师" word_img="file:///C:/Users/FSG/Downloads/UBC%202/UBC/UBC/images/head.jpeg" style="background:url({#ZC_BLOG_HOST#}zb_users/plugin/UEditor/themes/default/images/word.gif) no-repeat center center;border:1px solid #ddd" height="100" width="100"/>\r\n							</a>\r\n						</div>\r\n						<div class="author-info">\r\n							<a><p class="author-name">作者</p></a>\r\n							<div class="author-intro">\r\n								<p>作者简介，如华东师范大学政治学系教授。研究兴趣：如政治学等等。不超过两百个字。</p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					\r\n					<div id="popular-artical">\r\n						<div class="column-head">\r\n							<strong>相关文章</strong>\r\n						</div>\r\n						\r\n						<ul class="popular-artical-title clearfix list-paddingleft-2"><li><p><a>自我表述：民族团结的助推器？</a></p></li><li><p><a>非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a></p></li><li><p><a>小众“教门”是怎样炼成的？</a></p></li><li><p><a>民生能否换民意?</a></p></li><li><p><a>高绩效的政府容易获得市民信任</a></p></li></ul>\r\n					</div>\r\n					\r\n				</div>\r\n				\r\n			</div>\r\n			\r\n		</div><p><br/></p>', 1416149541, 0, 0, '', ''),
(142, 0, 1, '4', 0, 0, '', 0, 0, '新闻3', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n			</p>', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p>\r\n					</p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p>\r\n					</p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p>\r\n					</p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p>\r\n					</p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p>\r\n					</p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p>\r\n					</p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲日益增长的投资和利益。</p><p>\r\n				\r\n				\r\n			\r\n			\r\n		\r\n		\r\n		</p><div id="column2">\r\n			<div class="box-border">\r\n				<div class="box-border-content">\r\n					<div class="author clearfix">\r\n						<div class="column-head">\r\n							<strong>作者</strong>\r\n						</div>\r\n						\r\n						<div class="author-img">\r\n							<a>\r\n								<img src="{#ZC_BLOG_HOST#}zb_users/plugin/UEditor/themes/default/images/spacer.gif" alt="教师" word_img="file:///C:/Users/FSG/Downloads/UBC%202/UBC/UBC/images/head.jpeg" style="background:url({#ZC_BLOG_HOST#}zb_users/plugin/UEditor/themes/default/images/word.gif) no-repeat center center;border:1px solid #ddd" height="100" width="100"/>\r\n							</a>\r\n						</div>\r\n						<div class="author-info">\r\n							<a><p class="author-name">作者</p></a>\r\n							<div class="author-intro">\r\n								<p>作者简介，如华东师范大学政治学系教授。研究兴趣：如政治学等等。不超过两百个字。</p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					\r\n					<div id="popular-artical">\r\n						<div class="column-head">\r\n							<strong>相关文章</strong>\r\n						</div>\r\n						\r\n						<ul class="popular-artical-title clearfix list-paddingleft-2"><li><p><a>自我表述：民族团结的助推器？</a></p></li><li><p><a>非此或彼 | 恐怖袭击与公众态度：以南北苏丹为例</a></p></li><li><p><a>小众“教门”是怎样炼成的？</a></p></li><li><p><a>民生能否换民意?</a></p></li><li><p><a>高绩效的政府容易获得市民信任</a></p></li></ul>\r\n					</div>\r\n					\r\n				</div>\r\n				\r\n			</div>\r\n			\r\n		</div><p><br/></p>', 1416149589, 0, 0, '', '');
INSERT INTO `ubc_post` (`log_ID`, `log_CateID`, `log_AuthorID`, `log_Tag`, `log_Status`, `log_Type`, `log_Alias`, `log_IsTop`, `log_IsLock`, `log_Title`, `log_Intro`, `log_Content`, `log_PostTime`, `log_CommNums`, `log_ViewNums`, `log_Template`, `log_Meta`) VALUES
(143, 0, 2, '3', 0, 0, '', 0, 0, '中国思想1', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p><br/></p>', '<p>上\r\n个月，中国国务院总理李克强对非洲四国进行了访问，期间签署多个经贸大单，引起广泛关注。就在李总理抵达非洲前4天，美国国务卿克里也对埃塞俄比亚等非洲\r\n三国进行了访问。相较而言，克里的访问显得黯然失色，反响也较为有限。美国一些智库和政策研究人士关于美国对非政策也多有争论。近日，兰德公司研究员<strong>Larry Hanauer</strong>和<strong>Lyle Morris</strong>就联合撰文指出，在非洲，美国应向中国学习，多打“经济牌”。</p><p><br/></p><p>文章认为，中美两国对非政策的出发点有着明显差别。中国的注意力更多放在与非洲国家的经济合作，以及由此带来的长期经济利益上。过去十\r\n年，中国对非贸易额年均增长30%，已成为非洲最大的贸易伙伴。而美国更多试图在地区扮演“和平制造者” \r\n的角色，关注点更多放在反恐、反海盗、解决地区国家冲突上。</p><p><br/></p><p>因此，克里和李克强非洲之行的议题完全不同。克里在非洲之行中，着力推动地区的民主进程，与地区国家商讨合作打击活跃在东非的 “基地”\r\n \r\n组织。同时，克里还试图居中调停，解决南苏丹、刚果东部和中非共和国的暴力冲突。而李克强的非洲之行则为非洲国家带去了120亿美元的援助，双方签订的合\r\n作项目超过60个。文章指出，尽管经常有人质疑，非洲一些国家的政治腐败和不透明，大大降低了中国经济援助非洲的效率，但如此大的经济投入，也反映了中国\r\n介入非洲经济发展的程度，和未来进一步与非洲加强经济合作的决心。</p><p><br/></p><p>文章认为，相较于中国，美国政府在推动对非经贸合作的力度上就小了很多。根据美国海外私人投资公司（The U.S. Overseas\r\n Private Investment \r\nCorporation）的数据显示，1974年以来，只有63亿美元被用来促进美国在非洲的投资。而美国贸易和发展署1981年以来在促进对非贸易上仅\r\n投入了9000万美元——年均仅约300万美元。</p><p><br/></p><p>投入和产出往往成正比。中非贸易额在2000年时还微不足道，但到了2012年已达1985亿美元，而同期美非贸易额只有1000亿美\r\n元，是中非贸易额的一半。渣打银行的数据进一步显示，到2015年，中非贸易额将达到2800亿美元。尽管国际社会对中非经贸合作多有批评，认为中国是在\r\n掠夺非洲资源。但实际上，即便美国曾通过旨在促进非洲商品出口的法令，但目前美非贸易仍然以石油、天然气等自然资源为主。以2011年为例，在当年美国从\r\n非洲进口的产品中，有4/5是各类自然资源。近两年奥巴马总统也推出了一系列计划，旨在推进美非经贸合作，但是目前为止仍然没有什么实质性进展，这也让外\r\n界怀疑美国在这个问题上的诚意。</p><p><br/></p><p>文章指出，经济建设和安全建设对非洲同样重要。目前，中国在加大经贸投入的同时，也在扩大参与地区安全事务的力度，包括派出维和部队到非\r\n洲维和，参与打击索马里海盗的国际多边行动等。对美国来说，向中国学习，加大与非洲经贸联系，不仅有利于美国企业利益和非洲的经济发展，对于促进非洲地区\r\n安全和稳定也大有帮助。</p><p><br/></p><p>其实，对于中美两个大国而言，在非洲绝非“零和博弈”，相互学习和合作的领域有很多。上个月，中国工程人员在喀麦隆遭遇疑似“博科圣地”\r\n恐怖分子绑架，就充分暴露出中国当前在非洲安全投入和参与安全机制建设上的滞后。在这方面，中国还需要补很多课。因此，在美国向中国学习，加大与非洲经贸\r\n合作的同时，中国也应向美国学习，加大对非洲安全投入，更有针对性地参加非洲安全建设，这样才能更好地保护自己在非洲</p><p><br/></p>', 1416149842, 0, 0, '', ''),
(149, 12, 1, '0', 0, 0, '', 0, 0, '文章1', '<p>这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里</p>', '<p>这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文</p>', 1416154932, 0, 0, '', ''),
(144, 0, 1, '6', 0, 0, '', 0, 0, '中心新作1', '<p>中心新作1中心新作1中心新作1中心新作1</p>', '<p>中心新作1中心新作1中心新作1中心新作1</p>', 1416151408, 0, 0, '', ''),
(145, 0, 1, '8', 0, 0, '', 0, 0, '讲座录音2', '<p>录音啊<br/></p>', '<p>录音啊<br/></p>', 1416152603, 0, 0, '', ''),
(146, 0, 1, '5', 0, 0, '', 0, 0, '西方思想研究1', '<p>西方<br/></p>', '<p>西方<br/></p>', 1416152814, 0, 0, '', ''),
(147, 0, 1, '7', 0, 0, '', 0, 0, '现场与对话1', '<p>下火车那个<br/></p>', '<p>下火车那个<br/></p>', 1416152866, 0, 0, '', ''),
(148, 0, 1, '8', 0, 0, '', 0, 0, '讲座录音3', '<p>这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字</p>', '<p>这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿这里是录音文字稿</p>', 1416153410, 0, 0, '', ''),
(150, 13, 4, '0', 0, 0, '', 0, 0, '文章2', '<p>这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里</p>', '<p>这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文这里是文章正文<br/></p>', 1416154991, 0, 0, '', ''),
(151, 12, 4, '0', 0, 0, '', 0, 0, '新文章', '<p>第三方啊的身份<br/></p>', '<p>第三方啊的身份<br/></p>', 1416155387, 0, 0, '', ''),
(152, 12, 4, '0', 0, 0, '', 0, 0, '未命名', '<p>发<br/></p>', '<p>发<br/></p>', 1416155431, 0, 0, '', ''),
(153, 12, 4, '0', 0, 0, '', 0, 0, '大师傅', '<p>大师傅<br/></p>', '<p>大师傅<br/></p>', 1416155444, 0, 0, '', ''),
(154, 12, 4, '0', 0, 0, '', 0, 0, '大师傅俄方', '<p>士大夫<br/></p>', '<p>士大夫<br/></p>', 1416155460, 0, 0, '', ''),
(155, 0, 1, '1', 0, 1, '', 0, 0, '论丛1', '', '<p>目录<br/></p>', 1416155519, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_postaddition`
--

CREATE TABLE IF NOT EXISTS `ubc_postaddition` (
  `log_ID` int(11) NOT NULL,
  `log_abstract` varchar(200) CHARACTER SET gb2312 DEFAULT NULL,
  `log_pic` varchar(200) DEFAULT NULL,
  `log_record` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`log_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ubc_postaddition`
--

INSERT INTO `ubc_postaddition` (`log_ID`, `log_abstract`, `log_pic`, `log_record`) VALUES
(40, 'asdadsa', '', '../../front/resources/record/1415801083.mp3'),
(43, 'etert', '', '../../front/resources/record/1415860706.mp3'),
(44, '思想研究', '', '../../front/resources/record/1416035294.mp3'),
(134, '中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1中心预告1', '../../front/resources/lcimage/1416148808.png', ''),
(135, '预告', '../../front/resources/lcimage/1416148836.png', ''),
(136, '啦啦啦啦啦', '../../front/resources/lcimage/1416148856.png', ''),
(137, '啦啦啦啦啦', '../../front/resources/lcimage/1416148874.png', ''),
(138, '啊士大夫撒', '../../front/resources/lcimage/1416148893.png', ''),
(139, '士大夫', '../../front/resources/lcimage/1416148907.png', ''),
(140, '新闻1', '../../front/resources/lcimage/1416149540.png', ''),
(141, '新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻', '../../front/resources/lcimage/1416149583.jpg', ''),
(142, '新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻新闻', '../../front/resources/lcimage/1416149612.jpg', ''),
(143, '中国思想', '', ''),
(144, '中心新作1中心新作1', '../../front/resources/lcimage/1416151449.png', '../../front/resources/record/1416151449.mp3'),
(145, '录音', '../../front/resources/lcimage/1416152673.jpg', '../../front/resources/record/1416152673.mp3'),
(146, '西方', '', ''),
(147, '下海沧', '', ''),
(148, '这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3这里是录音3', '../../front/resources/lcimage/1416154309.png', '../../front/resources/record/1416154309.mp3'),
(149, '这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要这里显示摘要', '', ''),
(150, '这里是文章2', '', ''),
(151, '士大夫啊', '', ''),
(152, '地方', '', ''),
(153, '发', '', ''),
(154, '士大夫', '', ''),
(155, '', '../../front/resources/lcimage/1416155537.png', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_tag`
--

CREATE TABLE IF NOT EXISTS `ubc_tag` (
  `tag_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tag_Name` varchar(255) NOT NULL DEFAULT '',
  `tag_Order` int(11) NOT NULL DEFAULT '0',
  `tag_Count` int(11) NOT NULL DEFAULT '0',
  `tag_Alias` varchar(255) NOT NULL DEFAULT '',
  `tag_Intro` text NOT NULL,
  `tag_Template` varchar(50) NOT NULL DEFAULT '',
  `tag_Meta` longtext NOT NULL,
  PRIMARY KEY (`tag_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ubc_tag`
--

INSERT INTO `ubc_tag` (`tag_ID`, `tag_Name`, `tag_Order`, `tag_Count`, `tag_Alias`, `tag_Intro`, `tag_Template`, `tag_Meta`) VALUES
(1, '中心预告', 0, 0, '', '', '', ''),
(3, '中国思想研究', 0, 0, '', '', '', ''),
(4, '中心新闻', 0, 0, '', '', '', ''),
(5, '西方思想研究', 0, 0, '', '', '', ''),
(6, '中心新作', 0, 0, '', '', '', ''),
(7, '现场与对话', 0, 0, '', '', '', ''),
(8, '讲座录音', 0, 0, '讲座录音', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ubc_top_category`
--

CREATE TABLE IF NOT EXISTS `ubc_top_category` (
  `topcate_ID` int(11) NOT NULL AUTO_INCREMENT,
  `topcate_Name` varchar(50) NOT NULL DEFAULT '',
  `topcate_Order` int(11) NOT NULL DEFAULT '0',
  `topcate_Count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topcate_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ubc_top_category`
--

INSERT INTO `ubc_top_category` (`topcate_ID`, `topcate_Name`, `topcate_Order`, `topcate_Count`) VALUES
(7, '一级目录2', 0, 0),
(5, '一级目录1', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ubc_upload`
--

CREATE TABLE IF NOT EXISTS `ubc_upload` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
