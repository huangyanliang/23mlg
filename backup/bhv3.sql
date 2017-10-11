-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-08-16 02:19:08
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bhv3`
--

-- --------------------------------------------------------

--
-- 表的结构 `bh_aboutus`
--

CREATE TABLE IF NOT EXISTS `bh_aboutus` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bh_aboutus`
--

INSERT INTO `bh_aboutus` (`Id`, `sty`, `topic`, `domain`, `pic`, `intro`, `keyword`, `metades`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(1, 1, '关于我们', '', '', '', '', '', '', NULL, 1, 1, '2017-05-18 16:38:59'),
(2, 1, '联系我们', '', '', '', '', '', '', NULL, 1, 2, '2017-05-15 09:02:39');

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminauth`
--

CREATE TABLE IF NOT EXISTS `bh_adminauth` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL COMMENT '//方法名称',
  `tid` int(2) NOT NULL DEFAULT '0' COMMENT '//上级所属 0表示顶级栏目',
  `isext` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//扩展图标',
  `isspecial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//特殊权限 不控制显示但是 未勾选仍旧没权限',
  `isopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否展开',
  `title` char(42) DEFAULT NULL COMMENT '//方法中文名',
  `linkurl` varchar(150) DEFAULT NULL COMMENT '//链接',
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//sty 区分模块',
  `isimportant` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否重要权限',
  `icon` char(20) DEFAULT NULL COMMENT '//图标',
  `tables` char(30) DEFAULT NULL COMMENT '//数据表区分模块',
  `martables` char(35) DEFAULT NULL COMMENT '//二级表区分模块',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//权限排序',
  `date` datetime DEFAULT NULL COMMENT '//修改时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- 转存表中的数据 `bh_adminauth`
--

INSERT INTO `bh_adminauth` (`Id`, `name`, `tid`, `isext`, `isspecial`, `isopen`, `title`, `linkurl`, `sty`, `isimportant`, `icon`, `tables`, `martables`, `ord`, `date`) VALUES
(1, '', 0, 0, 0, 1, '系统管理', '', 1, 0, '', '', '', 1, '2016-12-07 15:36:14'),
(2, '', 0, 0, 0, 0, '网站管理', '', 1, 0, '', '', '', 2, '2016-12-07 15:36:19'),
(7, '', 1, 1, 0, 1, '管理首页', '', 1, 0, 'gears', '', '', 1, '2016-12-07 15:34:25'),
(8, '', 1, 1, 0, 1, '管理员设置', '', 0, 0, 'cog', '', '', 2, '2016-09-19 18:07:25'),
(9, '', 1, 1, 0, 1, '数据库管理', '', 0, 0, 'database', '', '', 3, '2016-09-19 18:07:37'),
(12, 'system/sysmod', 7, 0, 0, 1, '系统设置', 'system/sysmod', 1, 1, '', '', '', 1, '2016-12-07 15:35:06'),
(13, 'System/syslogs', 1, 1, 0, 1, '日志管理', 'System/syslogs', 1, 0, 'cloud', '', '', 5, '2016-09-19 18:09:31'),
(14, 'System/syspic', 1, 0, 0, 1, '图片管理', 'System/syspic', 1, 0, 'picture', '', '', 6, '2016-09-19 18:10:05'),
(15, '', 1, 0, 0, 1, '广告管理', '', 1, 0, 'flag', '', '', 4, '2017-05-13 14:40:22'),
(16, 'Index/dataonline', 1, 1, 0, 1, '访问统计', 'Index/dataonline', 1, 0, 'line-chart', '', '', 7, '2016-09-19 18:14:29'),
(92, '', 2, 1, 0, 1, '产品管理', '', 1, 0, 'puzzle-piece', '', '', 4, '2016-12-19 08:47:52'),
(18, 'System/ipfilter', 7, 0, 0, 1, 'Ip过滤设置', 'System/ipfilter', 1, 0, '', '', '', 3, '2016-09-19 18:17:15'),
(19, 'System/adminauth', 8, 0, 0, 1, '栏目管理', 'System/adminauth', 1, 1, '', '', '', 1, '2016-10-08 14:31:47'),
(20, 'System/userlist', 8, 0, 0, 1, '管理用户', 'System/userlist', 1, 0, '', '', '', 3, '2016-09-19 18:18:31'),
(21, 'System/history', 8, 0, 0, 1, '登录日志', 'System/history', 1, 0, '', '', '', 4, '2016-09-19 18:19:07'),
(22, 'System/databackup', 9, 0, 0, 1, '数据库备份', 'System/databackup', 1, 0, '', '', '', 1, '2016-09-19 18:19:27'),
(23, 'System/databackuplist', 9, 0, 0, 1, '查看备份', 'System/databackuplist', 1, 0, '', '', '', 2, '2016-09-19 18:19:52'),
(88, 'website/onlinelist', 2, 1, 0, 1, '在线客户管理', 'website/onlinelist,tables=onlineqq', 1, 0, 'user', 'onlineqq', '', 7, '2016-12-09 19:59:22'),
(86, 'website/message', 2, 1, 0, 1, '留言信息管理', 'website/message,tables=message', 1, 0, 'commenting', 'message', '', 4, '2016-12-09 20:29:57'),
(87, 'website/linkslist', 2, 1, 0, 1, '友情链接管理', 'website/linkslist,tables=links', 1, 0, 'link', 'links', '', 6, '2016-12-09 19:59:35'),
(85, 'website/datalist', 83, 1, 0, 1, '资料管理', 'website/datalist,tables=information&martables=inftype', 1, 0, '', 'information', 'inftype', 2, '2016-12-09 19:57:07'),
(82, 'website/aboutlist', 2, 1, 0, 1, '关于我们管理', 'website/aboutlist,tables=aboutus', 1, 0, 'cube', 'aboutus', '', 1, '2017-03-31 21:49:52'),
(83, '', 2, 1, 0, 1, '新闻资讯管理', '', 1, 0, 'list-alt', '', '', 3, '2016-12-09 19:55:48'),
(84, 'website/datatypelist', 83, 1, 0, 1, '类别管理', 'website/datatypelist,tables=inftype', 1, 0, '', 'inftype', '', 1, '2016-12-09 19:56:31'),
(96, 'website/datatypelist', 15, 1, 0, 1, '广告类目', 'website/datatypelist,tables=advtype', 1, 0, '', 'advtype', '', 1, '2017-04-07 16:05:45'),
(91, 'website/datalist', 89, 1, 0, 1, '资料管理', 'website/datalist,tables=information&martables=inftype&sty=2', 2, 0, '', 'information', 'inftype', 2, '2016-12-09 20:06:02'),
(97, 'System/advlist', 15, 1, 0, 1, '广告管理', 'System/advlist', 1, 0, '', '', '', 2, '2017-04-07 15:44:51'),
(95, 'Product/productlist', 92, 1, 0, 1, '产品管理', 'Product/productlist,tables=product', 1, 0, '', 'product', '', 3, '2016-12-19 08:50:27'),
(94, 'Product/promtaglist', 92, 1, 0, 1, '子类管理', 'Product/promtaglist,tables=promtag', 1, 0, '', 'promtag', '', 2, '2016-12-19 08:49:27'),
(93, 'Product/proctaglist', 92, 1, 0, 1, '类别管理', 'Product/proctaglist,tables=proctag', 1, 0, '', 'proctag', '', 1, '2016-12-19 08:48:37'),
(90, 'website/datatypelist', 89, 1, 0, 1, '类别管理', 'website/datatypelist,tables=inftype&sty=2', 2, 0, '', 'inftype', '', 1, '2016-12-09 20:05:10'),
(89, '', 2, 1, 0, 1, '案例管理', '', 1, 0, 'globe', '', '', 2, '2016-12-09 20:01:52'),
(77, 'System/admindepartment', 8, 1, 0, 1, '部门管理', 'System/admindepartment', 1, 0, '', '', '', 2, '2016-09-24 14:36:41'),
(78, 'System/syswater', 7, 0, 1, 1, '水印设置', 'System/syswater', 1, 0, '', '', '', 4, '2016-10-08 09:34:38');

-- --------------------------------------------------------

--
-- 表的结构 `bh_admindepartment`
--

CREATE TABLE IF NOT EXISTS `bh_admindepartment` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL COMMENT '//topic',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bh_admindepartment`
--

INSERT INTO `bh_admindepartment` (`Id`, `topic`, `auth`, `ord`, `date`) VALUES
(1, '超级管理员', '1,7,12,18,78,8,19,77,20,21,9,22,23,13,14,16,2,89,90,91,15,96,97,83,84,85,92,93,94,95,86,82,87,88', 1, '2017-04-07 15:44:28');

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminrecord`
--

CREATE TABLE IF NOT EXISTS `bh_adminrecord` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL COMMENT '//管理员用户名',
  `ip` char(20) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `bh_adminrecord`
--

INSERT INTO `bh_adminrecord` (`Id`, `user`, `ip`, `date`) VALUES
(1, 'admin', '192.168.0.11', '2017-07-06 17:44:08'),
(2, 'admin', '0.0.0.0', '2017-07-06 17:51:37'),
(3, 'admin', '192.168.0.73', '2017-07-06 17:54:04'),
(4, 'admin', '192.168.0.8', '2017-07-07 09:39:05'),
(5, 'admin', '0.0.0.0', '2017-07-10 08:17:46'),
(6, 'admin', '192.168.0.73', '2017-07-10 14:12:32'),
(7, 'admin', '192.168.0.9', '2017-07-10 14:14:45'),
(8, 'admin', '0.0.0.0', '2017-07-21 08:17:48'),
(9, 'admin', '0.0.0.0', '2017-07-24 10:58:24'),
(10, 'admin', '0.0.0.0', '2017-07-27 08:26:50'),
(11, 'admin', '0.0.0.0', '2017-07-27 12:39:41'),
(12, 'admin', '0.0.0.0', '2017-07-27 14:36:06'),
(13, 'admin', '0.0.0.0', '2017-07-28 08:06:04'),
(14, 'admin', '0.0.0.0', '2017-07-28 11:41:26'),
(15, 'admin', '0.0.0.0', '2017-07-29 08:20:04'),
(16, 'Admin', '0.0.0.0', '2017-07-29 09:22:42'),
(17, 'admin', '0.0.0.0', '2017-07-29 12:02:11'),
(18, 'admin', '0.0.0.0', '2017-07-29 15:25:53'),
(19, 'admin', '0.0.0.0', '2017-07-31 08:15:50'),
(20, 'admin', '0.0.0.0', '2017-07-31 08:45:44'),
(21, 'Admin', '0.0.0.0', '2017-07-31 08:56:01'),
(22, 'admin', '0.0.0.0', '2017-07-31 20:34:01'),
(23, 'admin', '0.0.0.0', '2017-08-01 08:12:19'),
(24, 'admin', '0.0.0.0', '2017-08-16 08:13:10');

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminuser`
--

CREATE TABLE IF NOT EXISTS `bh_adminuser` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `depid` int(2) NOT NULL DEFAULT '0' COMMENT '//部门ID',
  `user` char(25) DEFAULT NULL COMMENT '//登录名称',
  `userpass` char(42) DEFAULT NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL DEFAULT '654321' COMMENT '//随机码',
  `realname` char(30) DEFAULT NULL COMMENT '//管理员名称',
  `email` char(50) DEFAULT NULL COMMENT '//后台邮箱',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `count` int(2) DEFAULT '0' COMMENT '//累计登录次数',
  `last_ip` char(30) DEFAULT NULL COMMENT '//最后登录Ip',
  `last_time` datetime DEFAULT NULL COMMENT '//最后登录时间',
  `reg_time` datetime DEFAULT NULL COMMENT '//注册时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bh_adminuser`
--

INSERT INTO `bh_adminuser` (`Id`, `depid`, `user`, `userpass`, `randcode`, `realname`, `email`, `auth`, `count`, `last_ip`, `last_time`, `reg_time`) VALUES
(1, 1, 'admin', 'f99f737e8df464187be93e1fb4e61802', '493071', 'admin', 'admin@163.com', '', 398, '0.0.0.0', '2017-08-16 08:13:10', '2015-05-25 17:54:12');

-- --------------------------------------------------------

--
-- 表的结构 `bh_advdata`
--

CREATE TABLE IF NOT EXISTS `bh_advdata` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` char(200) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片路径',
  `picwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//广告宽度',
  `picheight` int(4) NOT NULL DEFAULT '0' COMMENT '//广告高度',
  `ctag` int(4) DEFAULT '0' COMMENT '//广告分类，数据保留',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `linkurl` varchar(200) DEFAULT '###' COMMENT '//链接地址',
  `remark` char(50) DEFAULT NULL COMMENT '//广告备注',
  `hit` int(4) DEFAULT '1' COMMENT '//点击率',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//广告排序',
  `date` datetime DEFAULT NULL COMMENT '//广告发布时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_advdata`
--

INSERT INTO `bh_advdata` (`Id`, `topic`, `pic`, `picwidth`, `picheight`, `ctag`, `enabled`, `linkurl`, `remark`, `hit`, `ord`, `date`) VALUES
(1, '广告', '', 0, 0, 1, 1, '###', '', 1, 1, '2017-07-31 16:05:06');

-- --------------------------------------------------------

--
-- 表的结构 `bh_advtype`
--

CREATE TABLE IF NOT EXISTS `bh_advtype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_advtype`
--

INSERT INTO `bh_advtype` (`Id`, `sty`, `domain`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, '', '首页banner广告 1920*360', NULL, 1, 1, '2017-07-28 14:31:37');

-- --------------------------------------------------------

--
-- 表的结构 `bh_information`
--

CREATE TABLE IF NOT EXISTS `bh_information` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `topic` char(200) DEFAULT NULL COMMENT '//新闻标题',
  `tag` varchar(50) DEFAULT NULL COMMENT '//TAG标签',
  `inftype` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `standard` char(50) NOT NULL,
  `place` char(100) NOT NULL,
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `topicsize` char(20) DEFAULT NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否加粗',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻点击率',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `pic` varchar(100) DEFAULT NULL COMMENT '//新闻配图',
  `filename` varchar(200) DEFAULT NULL COMMENT '//fielname',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `content` text COMMENT '//新闻内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `bh_information`
--

INSERT INTO `bh_information` (`Id`, `sty`, `topic`, `tag`, `inftype`, `standard`, `place`, `topiccolor`, `topicsize`, `isstrong`, `source`, `author`, `keyword`, `metades`, `hit`, `istop`, `ishot`, `pic`, `filename`, `intro`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(4, 1, '在互联网时代，如何才能玩转O2O呢？', NULL, 1, '', '', NULL, NULL, 0, '明良广', 'baiheng', '在互联网时代，如何才能玩转O2O呢？', '在互联网时代，如何才能玩转O2O呢？', 0, 0, 0, '', NULL, 'O2O是把将线下的商务机会与互联网结合，这就为传统的企业开辟了新的市场渠道，现在传统企业的生意越来越不容易做，成本逐渐增高，而通过O2O的方法，	可以降低营销的成本，开辟新的市场渠道。比如：在南京有个姓王的小伙子，自己经营...', '', '', 1, 1, '2017-05-12 09:03:38'),
(5, 1, '10年磨一剑，专注于互联网产品建设', NULL, 1, '', '', NULL, NULL, 0, '南昌大学', '南昌大学', '', '', 0, 0, 0, '', NULL, '		民政部、市民政局调研团领导视察合影	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。			...', '<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<img data-s="300,640" data-type="jpeg" data-src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciad88vFnkG6Rw4vLuQ5bXibjA6QBkogH86WTGzuiaFDCibFF2YjtyTF2aq1A/0?wx_fmt=jpeg" data-ratio="0.665" data-w="800" _width="100%" class="" src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciad88vFnkG6Rw4vLuQ5bXibjA6QBkogH86WTGzuiaFDCibFF2YjtyTF2aq1A/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1" data-fail="0" style="margin:0px;padding:0px;height:auto !important;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;line-height:25.6px;width:670px;visibility:visible !important;" />\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;text-indent:0em;white-space:normal;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;box-sizing:border-box !important;word-wrap:break-word !important;"></span><span style="margin:0px;padding:0px;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;font-size:14px;color:#888888;">民政部、市民政局调研团领导视察合影</span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;text-indent:2em;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;line-height:1.6;text-indent:2em;box-sizing:border-box !important;word-wrap:break-word !important;"></span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<img data-s="300,640" data-type="jpeg" data-src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciadJiaicCtMKicdv0YJ1NR4xskQl298n2M6vtnPmOSzsEBgyXrfj7oZj4m5w/0?wx_fmt=jpeg" data-ratio="0.75" data-w="1280" _width="100%" class="" src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciadJiaicCtMKicdv0YJ1NR4xskQl298n2M6vtnPmOSzsEBgyXrfj7oZj4m5w/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1" data-fail="0" style="margin:0px;padding:0px;height:auto !important;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;width:670px;visibility:visible !important;" />\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;line-height:1.6;text-indent:2em;box-sizing:border-box !important;word-wrap:break-word !important;"></span><span style="margin:0px;padding:0px;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;font-size:14px;color:#888888;">调研团领导听取相关工作汇报</span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;text-indent:32px;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;box-sizing:border-box !important;word-wrap:break-word !important;">长久以来志愿者一直单向付出，自己反而不受益。“志愿者回馈”服务顾名思义就是为他们提供“回馈福利”，让“好人有好报”。回馈的最终目的不在于物质和服务上的“福利兑换”，而是通过形式的创新来实现正能量的双向循环。</span><span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;line-height:1.6;text-indent:0em;box-sizing:border-box !important;word-wrap:break-word !important;">&nbsp;&nbsp;</span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;text-indent:32px;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;line-height:1.6;text-indent:0em;box-sizing:border-box !important;word-wrap:break-word !important;"></span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<img data-s="300,640" data-type="jpeg" data-src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciad21oPoA3WC7BRdISeVxzzorgc44GNRteibuIic1Km4vKoE78Uc3E0N3PA/0?wx_fmt=jpeg" data-ratio="0.5322997416020672" data-w="774" _width="100%" class="" src="http://mmbiz.qpic.cn/mmbiz_jpg/MPObO4geql7ud5onpnxrGFoqyiby07ciad21oPoA3WC7BRdISeVxzzorgc44GNRteibuIic1Km4vKoE78Uc3E0N3PA/640?wx_fmt=jpeg&amp;tp=webp&amp;wxfrom=5&amp;wx_lazy=1" data-fail="0" style="margin:0px;padding:0px;height:auto !important;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;width:670px;visibility:visible !important;" />\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;font-size:14px;color:#888888;">市局领导与民政部领导进行项目探讨 ——市民政局杨宝山处长（右三）、周玉副处长（左二)，市社区服务中心主任孟蓉齐（左三），东城民政局局长李小洁（右二），东城民政局副调研员张景辉（右一）</span>\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;max-width:100%;clear:both;min-height:1em;color:#3E3E3E;font-family:''Helvetica Neue'', Helvetica, ''Hiragino Sans GB'', ''Microsoft YaHei'', Arial, sans-serif;font-size:16px;line-height:25.6px;white-space:normal;text-indent:32px;box-sizing:border-box !important;background-color:#FFFFFF;">\r\n	<span style="margin:0px;padding:0px;max-width:100%;font-family:微软雅黑, sans-serif;box-sizing:border-box !important;word-wrap:break-word !important;">“易拾光志愿者回馈”是由北京市社区服务中心、志愿北京联合支持，在东城区试点，由北京众联社区服务中心理事单位-为爱助力（北京）文化科技有限公司开发运营。作为北京市</span>\r\n</p>', '', 1, 1, '2017-07-27 12:39:44'),
(6, 1, '为爱助力—民政部、市民政局领导调研“易拾光”', NULL, 1, '', '', NULL, NULL, 0, '', '', '', '', 0, 0, 0, '', NULL, '民政部、市民政局调研团领导视察合影	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。			...', '<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/f55f57defeaa205.jpg" data-ratio="0.665" data-w="800" style="line-height:25.6px;height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;text-indent:0em;white-space:normal;text-align:center;">\r\n	<span style="font-size:16px;font-family:微软雅黑, sans-serif;"></span><span style="font-size:14px;color:#888888;">民政部、市民政局调研团领导视察合影</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。\r\n</p>\r\n<p>\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:2em;"></span> \r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/47ecfaf3ee3450f.jpg" data-ratio="0.75" data-w="1280" style="height:auto;" /> \r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:2em;"></span><span style="font-size:14px;color:#888888;">调研团领导听取相关工作汇报</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">长久以来志愿者一直单向付出，自己反而不受益。“志愿者回馈”服务顾名思义就是为他们提供“回馈福利”，让“好人有好报”。回馈的最终目的不在于物质和服务上的“福利兑换”，而是通过形式的创新来实现正能量的双向循环。</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:0em;">&nbsp;&nbsp;</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:0em;"></span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/a2226616f64fa5f.jpg" data-ratio="0.5322997416020672" data-w="774" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<span style="font-size:14px;color:#888888;">市局领导与民政部领导进行项目探讨 ——市民政局杨宝山处长（右三）、周玉副处长（左二)，市社区服务中心主任孟蓉齐（左三），东城民政局局长李小洁（右二），东城民政局副调研员张景辉（右一）</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光志愿者回馈”是由北京市社区服务中心、志愿北京联合支持，在东城区试点，由北京众联社区服务中心理事单位-为爱助力（北京）文化科技有限公司开发运营。作为北京市志愿服务工作的优秀项目，自上线以来得到相关政府部门、基层社区、志愿者的大力支持和持续关注。</span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/64b6f9cb09a8551.jpg" data-ratio="0.6258992805755396" data-w="695" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="color:#888888;"><span style="font-size:14px;">民政部社会工作司巡视员 许启大 指导工作</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;text-indent:32px;line-height:1.6;">&nbsp;</span></span><span style="font-family:微软雅黑, sans-serif;font-size:16px;text-indent:32px;line-height:1.6;"> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">此次，由民政部社会工作司巡视员许启大、社会工作司志愿服务工作处处长李红梅带队，由民政部社会工作司志愿服务工作处万敏、程杰，北京市民政局基层政权和社区建设处处长杨宝山、副处长周玉，北京市社区服务中心主任孟蓉齐、网络管理部主任陈熹，北京市东城区民政局局长李小洁、副调研员张景辉等领导，组成调研团对“易拾光志愿者回馈”进行实地考察。</span> \r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="font-size:14px;"></span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/00d678526bf5e42.jpg" data-ratio="0.6219974715549936" data-w="791" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="color:#888888;"><span style="font-size:14px;">调研团听取易拾光项目汇报</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;">&nbsp;</span></span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;"></span> \r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/7338b1d96c916a8.jpg" data-ratio="0.75" data-w="800" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-size:14px;color:#888888;">易拾光联合创始人张天赐向调研团进行讲解</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;"></span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">调研团领导在听取志愿回馈服务系统的介绍，了解回馈平台运营的模式后，非常肯定志愿回馈的服务模式，<span style="background:white;">对“易拾光”平台</span>给予高度的评价，并建议“易拾光”的志愿回馈模式可以寻求机遇尝试向全国推广。</span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/563482143d282b5.jpg" data-ratio="0.6742712294043093" data-w="789" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;text-indent:0em;">\r\n	<span style="font-size:16px;font-family:微软雅黑, sans-serif;"></span><span style="font-size:14px;color:#888888;">民政部社会工作司志服务工作处处长 李红梅提出相关建议</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;"></span> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光志愿者回馈”平台面向全北京的165万志愿者，有着两大核心优势。首选，是自主研发了志愿服务时间等值兑换成“时间币”的换算系统，“时间币”可以用来完成兑换、交易、捐赠等多种交互；其次，北京地区唯一个打通了志愿北京官方数据库。只要是注册志愿者就可同步到易拾光，其服务时间可以被读取并获得官方出具的电子证明。</span> \r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/2bc0de396cea9b1.jpg" style="height:auto;" data-ratio="0.7570422535211268" data-w="568" /> \r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="color:#888888;">&nbsp;<span style="font-size:14px;">向调研团领导介绍志愿者之家（线下服务站）情况 &nbsp;一</span></span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光”作为公益市场化的践行者，构建了线上回馈平台+线下系列社区服务的市场化运营模式（社区志愿者服务站、社区大集、社区大讲堂等）。线上直接面向165万社区志愿者群体，线下已经在北京市东城、朝阳、海淀、丰台、石景山等区的多个街道、社区进行落地试运行。同时，正在与多家知名连锁服务机构进行对接与战略合作（商超、便利店、医疗、教育等），充分发挥互联网在社会资源配置中的优化和集成作用，让互联网与社区志愿服务进行深度融合。</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;">&nbsp;</span> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/20df2b5947f162e.jpg" data-ratio="0.665" data-w="800" style="height:auto;" /> \r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-size:14px;color:#888888;">&nbsp;&nbsp;&nbsp;&nbsp;向调研团领导介绍志愿者之家（线下服务站）情况 二</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光”发现，志愿者作为社区的活跃分子，在社区有着先天的号召力、凝聚力与传播力。易拾光通过公益市场化的运营模式，为企业与社区进行对接，为优质产品商和服务商，提供以公益为先导的品牌曝光与市场推广服务。在有效降低公益服务交易成本的同时，为志愿者持续提供“善者不亏，行之则久”的回馈服务。</span> \r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;"></span> \r\n</p>\r\n<section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;text-align:center;font-size:24px;color:#F96E57;word-wrap:break-word !important;">\r\n<p style="max-box-sizing:border-box;min-height:1em;word-wrap:break-word !important;">\r\n	<strong style="max-box-sizing:border-box;word-wrap:break-word !important;">让爱传递，为爱助力</strong> \r\n</p>\r\n</section></section></section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:10px;margin-bottom:10px;max-box-sizing:border-box;text-align:center;font-size:17.6px;word-wrap:break-word !important;"><img class="" data-ratio="0.9753363228699552" src="/bhv4.0/public/kindedit/attached/image/20170731/f9d1c21a905f82c.jpg" data-type="jpeg" data-w="446" width="46%" style="box-sizing:border-box;vertical-align:middle;word-wrap:break-word !important;visibility:visible !important;width:308.188px !important;" /></section></section><section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:-10px;margin-bottom:10px;max-box-sizing:border-box;transform:translate3d(0px, 0px, 0px);text-align:center;word-wrap:break-word !important;"><section class="" style="padding:10px;max-box-sizing:border-box;display:inline-block;width:301.5px;border:1px solid #F96E57;word-wrap:break-word !important;background-color:#C30219;"><section class="" powered-by="xiumi.us" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;word-wrap:break-word !important;"><img class="" data-ratio="1" src="/bhv4.0/public/kindedit/attached/image/20170731/0469cd0397a89e7.jpg" data-type="jpeg" data-w="344" width="100%" style="box-sizing:border-box;vertical-align:middle;word-wrap:break-word !important;visibility:visible !important;width:279.5px !important;" /></section></section><section class="" powered-by="xiumi.us" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:5px;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;color:#FFFFFF;font-size:10px;word-wrap:break-word !important;">\r\n<p style="max-box-sizing:border-box;min-height:1em;word-wrap:break-word !important;">\r\n	易拾光志愿者回馈\r\n</p>\r\n</section></section></section></section></section></section>\r\n<p>\r\n	<br />\r\n</p>', '', 1, 1, '2017-07-31 12:40:51'),
(7, 1, '如何摆脱APP开发推广的困局', NULL, 1, '', '', NULL, NULL, 0, '', '', '', '', 0, 0, 0, '', NULL, '点击↑↑↑蓝色文字关注我们		&nbsp; &nbsp; &nbsp; &nbsp;移动互联网的发展，给人们的生活带来了巨大的颠覆，也彻底改变了整个互联网的产业格局。据相关的数据显示，到2016年全球App下载次数将达到...', '<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;"><section class="_135editor" data-tools="135编辑器" data-id="89093" style="border:0px none;"><section style="padding:10px 10px;"><section style="width:100%;" data-width="100%"><section style="float:left;width:69px;height:60px;"><img style="width:100%;display:block;" src="/bhv4.0/public/kindedit/attached/image/20170731/896cef231e2a508.jpg" data-width="100%" data-type="png" data-ratio="0.8695652173913043" data-w="69" /></section><section style="float:left;width:auto;height:60px;"><section style="padding-right:10px;padding-left:10px;height:25px;border:2px dashed #80AD44;border-radius:5px;line-height:25px;font-size:12px;text-align:center;color:#80AD44;margin-top:25px;">点击↑↑↑蓝色文字关注我们</section></section></section></section><section style="width:100%;clear:both;" data-width="100%"></section></section>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<br />\r\n</p>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp; &nbsp;移动互联网的发展，给人们的生活带来了巨大的颠覆，也彻底改变了整个互联网的产业格局。据相关的数据显示，到2016年全球App下载次数将达到3000亿次。而国内的移动互联网也随着百度、腾讯、阿里、360等几大巨头的涉足，微信、手机支付宝、手机淘宝这些重量级应用产品的火热逐渐成熟。手机游戏、移动支付、移动社交、移动媒体这些领域的发展，不仅产生了众多的需求，同时也诞生了一大批以移动APP开发推广为生的公司和开发。对于众多的移动APP开发者来说，移动互联网是一座“看得见”，“摸不着”的金矿，虽然可以挖掘的价值尽在眼前，但激烈的竞争，难以获取的用户流量、不清晰的商业模式、高昂的推广成本却成为横在移动APP开发面前的几座大山。</span> \r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="86486" style="font-size:16px;border:0px none;box-sizing:border-box;"><section style="margin:30px;color:#27502C;background-color:#A4D2A9;"><section style="width:16px;height:50px;border-left-width:1px;border-left-style:solid;border-color:#A4D2A9;box-sizing:border-box;display:inline-block;margin-top:-20px;margin-left:-4px;background-color:#FEFEFE;transform:rotate(45deg);-webkit-transform:rotate(45deg);-moz-transform:rotate(45deg);-ms-transform:rotate(45deg);-o-transform:rotate(45deg);"></section><section data-style="text-align: center;color:rgb(255,255,255);" style="color:#3E3E3E;"><section style="color:inherit;text-align:center;margin-top:-30px;margin-bottom:-30px;line-height:2.1;">\r\n<p style="white-space:normal;">\r\n	<span style="color:#FFFFFF;font-size:18px;" class="135brush" data-brushtype="text">门槛低赚钱少难推广</span> \r\n</p>\r\n</section></section></section></section>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp; &nbsp;虽说国内移动互联网是有着上亿级用户的大金矿，但是目前聚集的开发者也相当之多。这个领域可以说是门槛较低。有一定的技术，几个人就可以组建一个团队成立开发公司。甚至一些个人也可以从事APP开发。整个国内移动互联网，已经有超过百万的开发者，上万家移动APP开发公司。但是极低的门槛下，却是推广成本的高昂。毕竟大的互联网公司一般都有自己的appp开发团队。而对于中小互联网公司的移动app开发需求，则到了你争我夺的程度。想要开发一个成功的产品，需要一定的资金投入，想让产品投入市场成功获得用户，不仅需要时间周期，更是需要大量的推广资金来面对激烈的竞争。很多APP开发公司都没有见到马云说的“明天的太阳”，大多数都倒在了黎明前夜。</span> \r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="86486" style="font-size:16px;border:0px none;box-sizing:border-box;"><section style="margin:30px;color:#27502C;background-color:#A4D2A9;"><section style="width:16px;height:50px;border-left-width:1px;border-left-style:solid;border-color:#A4D2A9;box-sizing:border-box;display:inline-block;margin-top:-20px;margin-left:-4px;background-color:#FEFEFE;transform:rotate(45deg);-webkit-transform:rotate(45deg);-moz-transform:rotate(45deg);-ms-transform:rotate(45deg);-o-transform:rotate(45deg);"></section><section data-style="text-align: center;color:rgb(255,255,255);" style="color:#3E3E3E;"><section style="color:inherit;text-align:center;margin-top:-30px;margin-bottom:-30px;line-height:2.1;">\r\n<p style="white-space:normal;">\r\n	<span style="color:#FFFFFF;font-size:18px;" class="135brush" data-brushtype="text">APP推广需要平台支持找对渠道</span> \r\n</p>\r\n</section></section></section></section>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp;&nbsp;</span> \r\n</p>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp; &nbsp;几万元就成创业的低门槛，没有个几百万无法推广的高营销成本，让众多APP开发公司和开发者难赚钱。没有一个稳定的商业模式，其开发的APP更是无法经受移动互联网快速产品换代周期，推广难以短期内见到成效，产品从开发到宣传到最终上线周期过长，大多生命力都很短，还没推出多久，就已经无法适应市场需求。而一些APP开发者也因为市场竞争激烈急于求成，开发出来的产品往往用户体验不佳，这就造成了恶性循环，难以在巨头林立的移动互联网市场下，找到立足点。</span> \r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="86486" style="font-size:16px;border:0px none;box-sizing:border-box;"><section style="margin:30px;color:#27502C;background-color:#A4D2A9;"><section style="width:16px;height:50px;border-left-width:1px;border-left-style:solid;border-color:#A4D2A9;box-sizing:border-box;display:inline-block;margin-top:-20px;margin-left:-4px;background-color:#FEFEFE;transform:rotate(45deg);-webkit-transform:rotate(45deg);-moz-transform:rotate(45deg);-ms-transform:rotate(45deg);-o-transform:rotate(45deg);"></section><section data-style="text-align: center;color:rgb(255,255,255);" style="color:#3E3E3E;"><section style="color:inherit;text-align:center;margin-top:-30px;margin-bottom:-30px;line-height:2.1;">\r\n<p style="white-space:normal;">\r\n	<span style="color:#FFFFFF;font-size:18px;" class="135brush" data-brushtype="text">推广宣传交流供求信息平台</span><span style="font-size:14px;line-height:2;">&nbsp; &nbsp;</span> \r\n</p>\r\n</section></section></section></section>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp; &nbsp;电商有阿里巴巴、慧聪网这样的信息平台，地方行业性的网站也能够在分类信息网站发布供求信息。但是移动app开发却缺少一个这样的平台。而现在个人网站和APP开发者之间的界限也越来越模糊，更多的站长投身APP开发，很多APP开发者也在积极与站长合作，帮网站定制APP，依托网站流量进行推广。A5交易作为国内最大的站长信息交流和网站交易平台，有着数百万的站长用户基础，也正在积极拥抱移动互联网，通过打造一个APP开发和需求信息发布的平台，让更多的开发者能找到有需求的用户，让有APP开发需求的用户能找到满意的开发者。</span> \r\n</p>\r\n<p style="font-size:16px;white-space:normal;">\r\n	<span style="font-size:14px;line-height:2;">&nbsp; &nbsp; &nbsp; &nbsp;南昌APP制作开发公司--明良广十年从事网站建设、微信公众号开发、APP开发等业务，为众多企业搭建了自己公众号，简单方便用户管理。我们以科学规范的流程，勤奋专注的态度，为客户提供全方位的设计服务。专注ui设计，以设计驱动企业价值的持续增长，实现您的商业目标！</span> \r\n</p>\r\n</section>\r\n<p>\r\n	<img data-ratio="0.2" src="/bhv4.0/public/kindedit/attached/image/20170731/67ade671a82d188.jpg" data-type="jpeg" data-w="500" style="display:inline;" title="猫抓毛线球引导分享" />&nbsp;\r\n</p>', '', 1, 1, '2017-07-31 13:06:27'),
(8, 1, '为爱助力—民政部、市民政局领导调研“易拾光”', NULL, 1, '', '', NULL, NULL, 0, '', '', '', '', 0, 0, 0, '', NULL, '		民政部、市民政局调研团领导视察合影	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。			...', '<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/a3d136499704c13.jpg" data-ratio="0.665" data-w="800" style="line-height:25.6px;height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;text-indent:0em;white-space:normal;text-align:center;">\r\n	<span style="font-size:16px;font-family:微软雅黑, sans-serif;"></span><span style="font-size:14px;color:#888888;">民政部、市民政局调研团领导视察合影</span>\r\n</p>\r\n<p style="text-indent:2em;">\r\n	2017年1月18日，由民政部、市民政局等单位组成的领导调研团，莅临“易拾光”办公所在地，对“易拾光”志愿回馈平台进行调研和考察。\r\n</p>\r\n<p>\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:2em;"></span>\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/7a38dd64dee6353.jpg" data-ratio="0.75" data-w="1280" style="height:auto;" />\r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:2em;"></span><span style="font-size:14px;color:#888888;">调研团领导听取相关工作汇报</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">长久以来志愿者一直单向付出，自己反而不受益。“志愿者回馈”服务顾名思义就是为他们提供“回馈福利”，让“好人有好报”。回馈的最终目的不在于物质和服务上的“福利兑换”，而是通过形式的创新来实现正能量的双向循环。</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:0em;">&nbsp;&nbsp;</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:0em;"></span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/a3451efeb8b1a48.jpg" data-ratio="0.5322997416020672" data-w="774" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<span style="font-size:14px;color:#888888;">市局领导与民政部领导进行项目探讨 ——市民政局杨宝山处长（右三）、周玉副处长（左二)，市社区服务中心主任孟蓉齐（左三），东城民政局局长李小洁（右二），东城民政局副调研员张景辉（右一）</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光志愿者回馈”是由北京市社区服务中心、志愿北京联合支持，在东城区试点，由北京众联社区服务中心理事单位-为爱助力（北京）文化科技有限公司开发运营。作为北京市志愿服务工作的优秀项目，自上线以来得到相关政府部门、基层社区、志愿者的大力支持和持续关注。</span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/1f41705110bd8a4.jpg" data-ratio="0.6258992805755396" data-w="695" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="color:#888888;"><span style="font-size:14px;">民政部社会工作司巡视员 许启大 指导工作</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;text-indent:32px;line-height:1.6;">&nbsp;</span></span><span style="font-family:微软雅黑, sans-serif;font-size:16px;text-indent:32px;line-height:1.6;"> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">此次，由民政部社会工作司巡视员许启大、社会工作司志愿服务工作处处长李红梅带队，由民政部社会工作司志愿服务工作处万敏、程杰，北京市民政局基层政权和社区建设处处长杨宝山、副处长周玉，北京市社区服务中心主任孟蓉齐、网络管理部主任陈熹，北京市东城区民政局局长李小洁、副调研员张景辉等领导，组成调研团对“易拾光志愿者回馈”进行实地考察。</span>\r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="font-size:14px;"></span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/b74942aa97f7db5.jpg" data-ratio="0.6219974715549936" data-w="791" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="color:#888888;"><span style="font-size:14px;">调研团听取易拾光项目汇报</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;">&nbsp;</span></span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;"></span>\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/449a7c5691223b9.jpg" data-ratio="0.75" data-w="800" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-size:14px;color:#888888;">易拾光联合创始人张天赐向调研团进行讲解</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;text-indent:32px;"></span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">调研团领导在听取志愿回馈服务系统的介绍，了解回馈平台运营的模式后，非常肯定志愿回馈的服务模式，<span style="background:white;">对“易拾光”平台</span>给予高度的评价，并建议“易拾光”的志愿回馈模式可以寻求机遇尝试向全国推广。</span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/7159f743e363e76.jpg" data-ratio="0.6742712294043093" data-w="789" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;text-indent:0em;">\r\n	<span style="font-size:16px;font-family:微软雅黑, sans-serif;"></span><span style="font-size:14px;color:#888888;">民政部社会工作司志服务工作处处长 李红梅提出相关建议</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;"></span>\r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光志愿者回馈”平台面向全北京的165万志愿者，有着两大核心优势。首选，是自主研发了志愿服务时间等值兑换成“时间币”的换算系统，“时间币”可以用来完成兑换、交易、捐赠等多种交互；其次，北京地区唯一个打通了志愿北京官方数据库。只要是注册志愿者就可同步到易拾光，其服务时间可以被读取并获得官方出具的电子证明。</span>\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/f42f0b19166a329.jpg" style="height:auto;" data-ratio="0.7570422535211268" data-w="568" />\r\n</p>\r\n<p style="text-align:center;">\r\n	<span style="color:#888888;">&nbsp;<span style="font-size:14px;">向调研团领导介绍志愿者之家（线下服务站）情况 &nbsp;一</span></span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光”作为公益市场化的践行者，构建了线上回馈平台+线下系列社区服务的市场化运营模式（社区志愿者服务站、社区大集、社区大讲堂等）。线上直接面向165万社区志愿者群体，线下已经在北京市东城、朝阳、海淀、丰台、石景山等区的多个街道、社区进行落地试运行。同时，正在与多家知名连锁服务机构进行对接与战略合作（商超、便利店、医疗、教育等），充分发挥互联网在社会资源配置中的优化和集成作用，让互联网与社区志愿服务进行深度融合。</span><span style="font-family:微软雅黑, sans-serif;font-size:16px;line-height:1.6;">&nbsp;</span>\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;">\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/f20088ebac0e28a.jpg" data-ratio="0.665" data-w="800" style="height:auto;" />\r\n</p>\r\n<p style="line-height:25.6px;white-space:normal;text-align:center;">\r\n	<span style="font-size:14px;color:#888888;">&nbsp;&nbsp;&nbsp;&nbsp;向调研团领导介绍志愿者之家（线下服务站）情况 二</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;">“易拾光”发现，志愿者作为社区的活跃分子，在社区有着先天的号召力、凝聚力与传播力。易拾光通过公益市场化的运营模式，为企业与社区进行对接，为优质产品商和服务商，提供以公益为先导的品牌曝光与市场推广服务。在有效降低公益服务交易成本的同时，为志愿者持续提供“善者不亏，行之则久”的回馈服务。</span>\r\n</p>\r\n<p style="text-indent:32px;">\r\n	<span style="font-size:16px;font-family:微软雅黑,sans-serif;"></span>\r\n</p>\r\n<section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;text-align:center;font-size:24px;color:#F96E57;word-wrap:break-word !important;">\r\n<p style="max-box-sizing:border-box;min-height:1em;word-wrap:break-word !important;">\r\n	<strong style="max-box-sizing:border-box;word-wrap:break-word !important;">让爱传递，为爱助力</strong>\r\n</p>\r\n</section></section></section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:10px;margin-bottom:10px;max-box-sizing:border-box;text-align:center;font-size:17.6px;word-wrap:break-word !important;"><img class="" data-ratio="0.9753363228699552" src="/bhv4.0/public/kindedit/attached/image/20170731/020cb151f5cb8c4.jpg" data-type="jpeg" data-w="446" width="46%" style="box-sizing:border-box;vertical-align:middle;word-wrap:break-word !important;visibility:visible !important;width:308.188px !important;" /></section></section><section class="" powered-by="xiumi.us" style="color:#3E3E3E;font-family:微软雅黑;font-size:16px;letter-spacing:1px;line-height:25.6px;text-align:justify;white-space:normal;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:-10px;margin-bottom:10px;max-box-sizing:border-box;transform:translate3d(0px, 0px, 0px);text-align:center;word-wrap:break-word !important;"><section class="" style="padding:10px;max-box-sizing:border-box;display:inline-block;width:301.5px;border:1px solid #F96E57;word-wrap:break-word !important;background-color:#C30219;"><section class="" powered-by="xiumi.us" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;word-wrap:break-word !important;"><img class="" data-ratio="1" src="/bhv4.0/public/kindedit/attached/image/20170731/6f32e8a3d8d49c4.jpg" data-type="jpeg" data-w="344" width="100%" style="box-sizing:border-box;vertical-align:middle;word-wrap:break-word !important;visibility:visible !important;width:279.5px !important;" /></section></section><section class="" powered-by="xiumi.us" style="max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="margin-top:5px;max-box-sizing:border-box;word-wrap:break-word !important;"><section class="" style="max-box-sizing:border-box;color:#FFFFFF;font-size:10px;word-wrap:break-word !important;">\r\n<p style="max-box-sizing:border-box;min-height:1em;word-wrap:break-word !important;">\r\n	易拾光志愿者回馈\r\n</p>\r\n</section></section></section></section></section></section>\r\n<p>\r\n	<br />\r\n</p>', '', 1, 1, '2017-07-31 14:43:11');
INSERT INTO `bh_information` (`Id`, `sty`, `topic`, `tag`, `inftype`, `standard`, `place`, `topiccolor`, `topicsize`, `isstrong`, `source`, `author`, `keyword`, `metades`, `hit`, `istop`, `ishot`, `pic`, `filename`, `intro`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(9, 1, '据说，智商160以下的人，点进来都只能看到空白一片！', NULL, 1, '', '', NULL, NULL, 0, '', '新东方南昌学校', '', '', 0, 0, 0, '', NULL, '	如果你看到了这段话，那么恭喜你，你是一个乐于思考，善于发现细节的人。你智商超群，已经超过了绝大部分的普通人。 	为了奖励优秀的你，答对我们下方的三道问题并留言说出答案 	我们会在全部答对的观众留言中选取点赞...', '<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;font-size:16px;"><section data-role="outer" label="Powered by 135editor.com"><section data-role="outer" label="Powered by 135editor.com"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="89913" style="border:0px none;box-sizing:border-box;"><section data-id="us517730" class="_135editor" style="border:0px none;box-sizing:border-box;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="89913" style="border:0px none;box-sizing:border-box;"><section data-id="us517730" class="_135editor" style="border:0px none;box-sizing:border-box;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:400px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;text-align:left;line-height:1.75em;">\r\n	<span style="font-size:14px;"><span style="color:#7F7F7F;letter-spacing:0px;">如果你看到了这段话，那么恭喜你，你是一个乐于思考，善于发现细节的人。你</span><strong><span style="letter-spacing:0px;">智商超群</span></strong><span style="color:#7F7F7F;letter-spacing:0px;">，已经超过了绝大部分的普通人。</span></span> \r\n</p>\r\n<p style="margin-bottom:10px;text-align:left;line-height:1.75em;">\r\n	<span style="font-size:14px;"><span style="color:#7F7F7F;letter-spacing:0px;">为了奖励优秀的你，</span><strong><span style="letter-spacing:0px;">答对我们下方的三道问题并留言说出答案</span></strong></span> \r\n</p>\r\n<p style="margin-bottom:10px;text-align:left;line-height:1.75em;">\r\n	<span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">我们会在全部答对的观众留言中选取</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">点赞前三位</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">送上</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">“南昌万达主题乐园”</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">门票一张，并随机抽取</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">10位</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">全部答对幸运观众送上</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">“精美U型枕”</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">一个，及</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">20位</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">幸运观众送上</span><strong style="font-size:14px;line-height:1.75em;"><span style="letter-spacing:0px;">“新东方定制VR眼镜”</span></strong><span style="font-size:14px;line-height:1.75em;color:#7F7F7F;letter-spacing:0px;">一个&nbsp;！</span> \r\n</p>\r\n<p style="margin-bottom:10px;text-align:left;line-height:1.75em;">\r\n	<span style="color:#7F7F7F;letter-spacing:0px;font-size:14px;">我们会在下一次推送中公布<strong>中奖名单</strong>，奖品可到新东方校区直接领取噢<img src="/bhv4.0/public/kindedit/attached/image/20170731/8f77d04847900e0.jpg" class="" data-ratio="1" data-w="25" data-type="gif" /></span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="420" xmlns="http://www.w3.org/2000/svg" style="margin-top:-400px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="420" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;"><br />\r\n</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;"><br />\r\n</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;"><br />\r\n</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;">昨晚的南昌八一广场<br />\r\n</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;">场面实在让人震撼</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;">点击背景音乐</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;">一起来看图</span>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<br />\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<qqmusic class="res_iframe qqmusic_iframe js_editor_qqmusic" scrolling="no" frameborder="0" musicid="105007778" mid="003G3pZx4RsRBs" albumurl="/i/u/000LVPON1qeNiu.jpg" audiourl="http://ws.stream.qqmusic.qq.com/C1000016dUWf1JAzw9.m4a?fromtag=46" music_name="歌唱祖国" singer="音乐舞蹈史诗《东方红》合唱队&nbsp;-&nbsp;世纪歌典&nbsp;合唱篇" play_length="188000" src="/cgi-bin/readtemplate?t=tmpl/qqmusic_tmpl&amp;singer=%E9%9F%B3%E4%B9%90%E8%88%9E%E8%B9%88%E5%8F%B2%E8%AF%97%E3%80%8A%E4%B8%9C%E6%96%B9%E7%BA%A2%E3%80%8B%E5%90%88%E5%94%B1%E9%98%9F%20-%20%E4%B8%96%E7%BA%AA%E6%AD%8C%E5%85%B8%20%E5%90%88%E5%94%B1%E7%AF%87&amp;music_name=%E6%AD%8C%E5%94%B1%E7%A5%96%E5%9B%BD"></qqmusic>\r\n	</p>\r\n	<p style="text-align:center;line-height:1.75em;">\r\n		<span style="color:#888888;"></span>\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/45226f180ef9bd9.jpg" class="" data-ratio="1.2272727272727273" data-w="440" style="height:auto;" /><span style="line-height:1.75em;text-align:center;"></span>\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/0841ea4b5d42d43.jpg" class="" data-ratio="0.75" data-w="1280" />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<span style="max-font-size:18px;box-sizing:border-box !important;word-wrap:break-word !important;">汹涌澎湃的爱国热情！</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<span style="max-font-size:18px;box-sizing:border-box !important;word-wrap:break-word !important;"><br style="max-box-sizing:border-box !important;word-wrap:break-word !important;" />\r\n</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<iframe class="video_iframe" data-vidtype="2" allowfullscreen="" frameborder="0" data-ratio="1.7647058823529411" data-w="480" scrolling="no" data-src="https://v.qq.com/iframe/preview.html?vid=x1322f8ppf2&amp;width=500&amp;height=375&amp;auto=0">\r\n		</iframe>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		来来来\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		随意感受一下\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/e395a87524d4f42.jpg" class="" data-ratio="0.4613545816733068" data-w="1255" />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/0869652d8c57f07.jpg" class="" data-ratio="0.4595028067361668" data-w="1247" />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		天桥上都挤满了人\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/1d882ba86bee3b2.jpg" class="" data-ratio="0.6874340021119324" data-w="947" />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/7b68cf1cd7c5548.jpg" class="" data-ratio="0.5678601165695254" data-w="1201" />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/c5b75ba57666862.jpg" style="height:auto;" class="" data-ratio="1.2545454545454546" data-w="440" />\r\n	</p>\r\n	<p>\r\n		<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/ae2a5e51f96f699.jpg" style="height:auto;" class="" data-ratio="1.3294392523364487" data-w="428" />\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n		<br />\r\n	</p>\r\n<section style="max-color:#3E3E3E;font-size:16px;line-height:28.4444px;white-space:normal;border:0px none;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" style="margin:0.8em auto 0.3em;max-border:none;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-css="border-color: rgb(250, 140, 0);color: rgb(255, 255, 255);display: inline-block;font-size: 1em;font-weight: bold;text-align: center;text-decoration: inherit;width: 100%" style="max-border-color:#B30112;color:#FFFFFF;display:inline-block;font-size:1em;font-weight:bold;text-align:center;text-decoration:inherit;width:670px;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-css="background-color:#f58fc6;color:inherit;font-size: 1em;line-height: 1.2em;padding: 0.5em" style="padding:0.5em;max-color:inherit;font-size:1em;line-height:1.2em;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#B30112;"><span style="max-line-height:25.6px;box-sizing:border-box !important;word-wrap:break-word !important;">四个方向可进入八一广场</span></section><section data-css="border-bottom-color:#f58fc6;border-left-color: transparent !important;border-left-style: solid !important;border-left-width: 1em !important;border-right-color: transparent !important;border-right-style: solid !important;border-right-width: 1em !important;border-top-color:#f58fc6;border-top-style: solid;border-top-width: 0.6em;height: 10px;margin-left: auto;margin-right: auto;width: 0px" style="margin-right:auto;margin-left:auto;max-border-bottom-color:#F58FC6;border-top-color:#B30112;border-top-style:solid;border-top-width:0.6em;height:10px;width:0px;box-sizing:border-box !important;word-wrap:break-word !important;border-left-color:transparent !important;border-left-style:solid !important;border-left-width:1em !important;border-right-color:transparent !important;border-right-style:solid !important;border-right-width:1em !important;"></section></section></section><section style="max-width:0px;height:0px;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;"></section></section>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;"><br style="max-box-sizing:border-box !important;word-wrap:break-word !important;" />\r\n</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">1、西北方向（万达广场门口）</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">2、东南方向（孺子东路）的两座过街天桥</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">3、北京西路口的地下通道</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">4、地铁1号线八一广场站G出口</span>\r\n	</p>\r\n	<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;"><br />\r\n</span>\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;font-size:16px;line-height:25.6px;white-space:normal;">\r\n	<p style="text-align:center;">\r\n		<img src="/bhv4.0/public/kindedit/attached/image/20170731/78c8fedc8d08c60.jpg" class="" data-ratio="0.6333333333333333" data-w="150" />\r\n	</p>\r\n	<p style="text-align:center;">\r\n		<br />\r\n	</p>\r\n</section>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;font-size:16px;line-height:25.6px;white-space:normal;max-box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;"><section class="" data-tools="135编辑器" data-id="89989" style="color:#3E3E3E;max-box-sizing:border-box;border:0px none;text-align:center;word-wrap:break-word !important;"><section style="max-display:inline-block;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-brushtype="text" style="padding-right:25px;padding-left:25px;max-box-sizing:border-box;float:left;font-size:18px;height:30px;border-style:solid none solid solid;border-top-width:2px;border-bottom-width:2px;border-left-width:2px;border-top-color:#F77979;border-bottom-color:#F77979;border-left-color:#F77979;line-height:25px;color:#F77979;word-wrap:break-word !important;"><span style="max-color:#888888;font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">现场鸽碎碎念</span></section><section style="margin-left:-13px;max-float:left;box-sizing:border-box !important;word-wrap:break-word !important;"><img class="" data-ratio="0.94" src="/bhv4.0/public/kindedit/attached/image/20170731/0cdc939e5ae7c6f.jpg" data-type="png" data-w="50" width="32px" style="display:block;box-sizing:border-box !important;word-wrap:break-word !important;visibility:visible !important;width:32px !important;" /></section></section></section><section data-role="paragraph" class="" style="max-line-height:25.6px;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" style="margin-top:20px;max-box-sizing:border-box !important;word-wrap:break-word !important;"><section style="margin-top:-3px;padding:15px;max-box-sizing:border-box;border:1px dashed #F09710;border-radius:10px;word-wrap:break-word !important;"><section style="margin-top:10px;max-box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">南昌八一广场</span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">这两天受到广泛关注</span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">全省市民涌入八一广场</span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">感受让人震撼的华彩</span>\r\n	</p>\r\n	<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="color:#888888;">人员密集</span>\r\n	</p>\r\n	<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="color:#888888;">鸽也要提醒一句</span>\r\n	</p>\r\n	<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="color:#888888;">您可以选择稍后时间前往</span>\r\n	</p>\r\n	<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="color:#888888;">不一定非要赶在这几天</span>\r\n	</p>\r\n	<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<br />\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">如果你觉得有提醒家人的必要</span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">就请给鸽<span style="max-line-height:1.75em;">点个大拇指</span></span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">让鸽的工资多一点</span>\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<br />\r\n	</p>\r\n</section></section></section></section>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<br />\r\n	</p>\r\n	<p style="color:#3E3E3E;max-min-height:1em;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n		<img class="" data-ratio="0.55625" src="/bhv4.0/public/kindedit/attached/image/20170731/30f993d11cac02c.jpg" data-type="jpeg" data-w="640" style="font-family:微软雅黑, ''Microsoft YaHei'', Arial, sans-serif;line-height:25.6px;white-space:pre-wrap;box-sizing:border-box !important;word-wrap:break-word !important;width:auto !important;visibility:visible !important;" />\r\n	</p>\r\n</section>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n<a name="undefined"></a> \r\n</center>\r\n</section></section></section></section>\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:400px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;line-height:25.6px;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">这么优秀的你，一定来自新东方</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;line-height:25.6px;color:#7F7F7F;">\r\n	<br />\r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;line-height:25.6px;color:#7F7F7F;">\r\n	<img src="/bhv4.0/public/kindedit/attached/image/20170731/b199fd1c8a36b1f.jpg" class="" data-ratio="0.36184857423795475" data-w="1017" data-type="jpeg" /> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<br />\r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">南昌新东方</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">耕耘十载，不忘初心</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">用心教育，培养人才</span></strong> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="420" xmlns="http://www.w3.org/2000/svg" style="margin-top:-400px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="420" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section></section></section>\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;margin-right:auto;margin-left:auto;transform:rotateZ(0deg);" data-width="100%">\r\n<p style="white-space:normal;line-height:normal;margin-bottom:10px;">\r\n	<span style="line-height:28.8px;font-size:14px;color:#7F7F7F;">下面，你准备好开始做题了吗？</span> \r\n</p>\r\n<p style="white-space:normal;color:#7F7F7F;line-height:normal;margin-bottom:10px;">\r\n	<span style="line-height:22.4px;font-size:14px;">可千万不要吝啬你的聪明才智噢~</span> \r\n</p>\r\n<p style="white-space:normal;color:#7F7F7F;line-height:normal;margin-bottom:10px;">\r\n	<span style="font-size:14px;"><span style="line-height:22.4px;">如果不会的话，</span>试着看下<strong>“线索”</strong>噢~</span> \r\n</p>\r\n<p style="white-space:normal;color:#7F7F7F;line-height:normal;margin-bottom:10px;">\r\n	<span style="font-size:14px;">在<strong>本</strong><strong>公众号上回复关键词</strong>就有答案提示噢</span> \r\n</p>\r\n<p style="white-space:normal;color:#7F7F7F;line-height:normal;margin-bottom:10px;">\r\n	<span style="font-size:14px;">文末就有二维码，你想要的都有噢！</span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;">\r\n	<span style="font-size:14px;">新东方泡泡少儿难度基础试题</span> \r\n</p>\r\n<p style="text-align:left;">\r\n	<strong><span style="color:#333333;letter-spacing:0px;font-size:14px;">1.设1=5，2=10，3=15，4=20，那么5=？</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">A.25</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">B.30</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">C.1</span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;text-align:left;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;">\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;line-height:25.6px;color:#7F7F7F;">\r\n	<img src="/bhv4.0/public/kindedit/attached/image/20170731/7e85aae57b540e9.jpg" style="line-height:inherit;z-index:-1;cursor:pointer;" class="" data-ratio="0.09652509652509653" data-w="777" data-type="png" /> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;line-height:28px;">上面那道试题有难到你吗？优秀的你自然so easy</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="line-height:28px;font-size:14px;">线索：</span><strong style="font-size:14px;line-height:28px;">“泡泡少儿”</strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;">下面是进阶版试题了噢，可<span style="line-height:25.6px;">别忘了线索功能</span></span> \r\n</p>\r\n</section></section></section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;">\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="line-height:25.6px;">\r\n	<span style="font-size:14px;">新东方优能中学难度进阶试题</span><span style="color:#333333;letter-spacing:0px;font-size:14px;"></span> \r\n</p>\r\n<p style="line-height:25.6px;text-align:left;">\r\n	<strong><span style="color:#333333;letter-spacing:0px;font-size:14px;">2.你用相同的话问别人，别人每次回答的都不同，如果问的不是时间那会是什么呢？</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">A.还有多少作业没写？</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">B.我问了你几个问题？</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;text-align:left;line-height:normal;">\r\n	<span style="font-size:14px;">C.手机还有多少流量？</span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;line-height:normal;">\r\n	<span style="line-height:25.6px;white-space:pre-wrap;font-size:14px;color:#7F7F7F;"><img src="/bhv4.0/public/kindedit/attached/image/20170731/cb75d3dd2fbb926.jpg" class="" data-ratio="0.23684210526315788" data-w="304" data-type="png" /></span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;line-height:normal;">\r\n	<span style="line-height:25.6px;white-space:pre-wrap;font-size:14px;color:#7F7F7F;">上面这道题是不是有点难呢?</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;"><span style="line-height:inherit;">最难的来了，线索奉上</span>：<strong>“优能中学”</strong></span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;line-height:normal;">\r\n	<span style="color:#333333;font-size:14px;letter-spacing:0px;line-height:25.6px;white-space:pre-wrap;">新东方国外考试难度高阶试题</span> \r\n</p>\r\n<p style="text-align:left;line-height:normal;">\r\n	<strong><span style="color:#333333;letter-spacing:0px;font-size:14px;">3.英语26个字母中，E和T不见了，还剩几个字母？</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="color:#7F7F7F;font-size:14px;">A.21</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="color:#7F7F7F;font-size:14px;">B.24</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;text-align:left;line-height:normal;">\r\n	<span style="color:#7F7F7F;font-size:14px;">C.26</span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;text-align:left;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;">\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n</section></section><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;">哇！</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;">WHAT？</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;">这道题需要好好想想噢！</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<span style="font-size:14px;">小编也思考了很久的人生才做出来了呢~</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<strong><span style="font-size:14px;">线索：“出国留学”</span></strong> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;">\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p>\r\n	<img src="/bhv4.0/public/kindedit/attached/image/20170731/58e069a4831e850.jpg" class="" data-ratio="0.4315286624203822" data-w="628" data-type="jpeg" /> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<span style="font-size:14px;">聪明的你都会做吗？<br />\r\n</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">可千万别忘记把你的答案留言给我们噢！</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<span style="font-size:14px;">按照约定，</span><span style="font-size:14px;line-height:inherit;">我们会送出惊喜大奖噢~</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="font-size:14px;">同时也请保护好您的智商，天气炎热可别晒坏了噢！</span></strong> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;">\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n<section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;">\r\n	<span style="color:#7F7F7F;font-size:14px;line-height:25.6px;">不要暴露我的套路以及国家机密噢！</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<strong><span style="line-height:25.6px;font-size:14px;">麻烦大家在留言区陪我演一场好戏好吗？</span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<span style="line-height:25.6px;font-size:14px;">嗯，都来谴责我这个</span> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;">\r\n	<span style="line-height:25.6px;font-size:14px;">不负责任，用一段空白图文欺骗你们的小编吧<img src="/bhv4.0/public/kindedit/attached/image/20170731/8f77d04847900e0.jpg" class="" data-ratio="1" data-w="25" data-type="gif" /></span> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section class="_135editor" data-tools="135编辑器" data-id="88350" style="border:0px none;box-sizing:border-box;"><section class="layout" style="margin-right:auto;margin-left:auto;"><section style="height:180px;overflow-x:hidden;overflow-y:auto;text-align:center;box-sizing:border-box;padding:10px;border:1px solid #EEEEEE;"><section class="_135editor" style="border:0px none;box-sizing:border-box;">\r\n<p style="margin-bottom:10px;white-space:normal;line-height:normal;">\r\n	<strong><span style="line-height:22.4px;font-size:14px;color:#7F7F7F;">关注“新东方南昌学校”</span></strong><strong><span style="line-height:22.4px;font-size:14px;color:#7F7F7F;"><strong style="line-height:normal;"><span style="line-height:22.4px;">答案都在这里！</span></strong></span></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<strong><img src="/bhv4.0/public/kindedit/attached/image/20170731/ded0de7fab1b2ae.jpg" class="" data-ratio="1" data-w="100" data-type="jpeg" /></strong> \r\n</p>\r\n<p style="margin-bottom:10px;white-space:normal;color:#7F7F7F;line-height:normal;">\r\n	<strong><span style="font-size:14px;">拉回顶端也可找到我噢~</span></strong> \r\n</p>\r\n</section></section>\r\n<center class="hiddenIn135" style="box-sizing:border-box;">\r\n	<svg width="100%" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-top:-180px;box-sizing:border-box;transform:rotateZ(0deg);-webkit-transform:rotateZ(0deg);-moz-transform:rotateZ(0deg);-ms-transform:rotateZ(0deg);-o-transform:rotateZ(0deg);"><rect width="100%" height="200" style="fill:#FEFEFE;box-sizing:border-box;"></rect></svg><a name="undefined"></a> \r\n</center>\r\n</section></section>\r\n<p style="line-height:1.75em;text-align:center;white-space:normal;">\r\n	<br />\r\n</p>\r\n</section></section></section></section></section>\r\n<p>\r\n	<br />\r\n</p>', '', 1, 1, '2017-07-31 14:47:22');
INSERT INTO `bh_information` (`Id`, `sty`, `topic`, `tag`, `inftype`, `standard`, `place`, `topiccolor`, `topicsize`, `isstrong`, `source`, `author`, `keyword`, `metades`, `hit`, `istop`, `ishot`, `pic`, `filename`, `intro`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(10, 1, '震撼！震撼！震撼！10多万人的南昌八一广场  你见过吗？我忍不住跟着唱起来', NULL, 1, '', '', NULL, NULL, 0, '', '都市现场', '', '', 0, 0, 0, '', NULL, '				昨晚的南昌八一广场	场面实在让人震撼	点击背景音乐	一起来看图					...', '<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;"><br />\r\n</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;"><br />\r\n</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;"><br />\r\n</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;">昨晚的南昌八一广场<br />\r\n</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;">场面实在让人震撼</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;">点击背景音乐</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;">一起来看图</span>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<br />\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<qqmusic class="res_iframe qqmusic_iframe js_editor_qqmusic" scrolling="no" frameborder="0" musicid="105007778" mid="003G3pZx4RsRBs" albumurl="/i/u/000LVPON1qeNiu.jpg" audiourl="http://ws.stream.qqmusic.qq.com/C1000016dUWf1JAzw9.m4a?fromtag=46" music_name="歌唱祖国" singer="音乐舞蹈史诗《东方红》合唱队&nbsp;-&nbsp;世纪歌典&nbsp;合唱篇" play_length="188000" src="/cgi-bin/readtemplate?t=tmpl/qqmusic_tmpl&amp;singer=%E9%9F%B3%E4%B9%90%E8%88%9E%E8%B9%88%E5%8F%B2%E8%AF%97%E3%80%8A%E4%B8%9C%E6%96%B9%E7%BA%A2%E3%80%8B%E5%90%88%E5%94%B1%E9%98%9F%20-%20%E4%B8%96%E7%BA%AA%E6%AD%8C%E5%85%B8%20%E5%90%88%E5%94%B1%E7%AF%87&amp;music_name=%E6%AD%8C%E5%94%B1%E7%A5%96%E5%9B%BD"></qqmusic>\r\n</p>\r\n<p style="text-align:center;line-height:1.75em;">\r\n	<span style="color:#888888;"></span>\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/2c1fe783410076d.jpg" class="" data-ratio="1.2272727272727273" data-w="440" style="height:auto;" /><span style="line-height:1.75em;text-align:center;"></span>\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="jpeg" src="/bhv4.0/public/kindedit/attached/image/20170731/e8ffb27331043c7.jpg" class="" data-ratio="0.75" data-w="1280" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<span style="max-font-size:18px;box-sizing:border-box !important;word-wrap:break-word !important;">汹涌澎湃的爱国热情！</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<span style="max-font-size:18px;box-sizing:border-box !important;word-wrap:break-word !important;"><br style="max-box-sizing:border-box !important;word-wrap:break-word !important;" />\r\n</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<iframe class="video_iframe" data-vidtype="2" allowfullscreen="" frameborder="0" data-ratio="1.7647058823529411" data-w="480" scrolling="no" data-src="https://v.qq.com/iframe/preview.html?vid=x1322f8ppf2&amp;width=500&amp;height=375&amp;auto=0">\r\n	</iframe>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	来来来\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	随意感受一下\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/e1323170f09719f.jpg" class="" data-ratio="0.4613545816733068" data-w="1255" />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/dfa9a18e8b3c59e.jpg" class="" data-ratio="0.4595028067361668" data-w="1247" />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	天桥上都挤满了人\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/24bfe04b98a5b11.jpg" class="" data-ratio="0.6874340021119324" data-w="947" />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/ce8f2ca92f56cdb.jpg" class="" data-ratio="0.5678601165695254" data-w="1201" />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/a6cb5fe0a6d2351.jpg" style="height:auto;" class="" data-ratio="1.2545454545454546" data-w="440" />\r\n</p>\r\n<p>\r\n	<img data-s="300,640" data-type="png" src="/bhv4.0/public/kindedit/attached/image/20170731/70ae40bcf0399cd.jpg" style="height:auto;" class="" data-ratio="1.3294392523364487" data-w="428" />\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;font-size:16px;line-height:25.6px;white-space:normal;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<section style="max-color:#3E3E3E;font-size:16px;line-height:28.4444px;white-space:normal;border:0px none;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" style="margin:0.8em auto 0.3em;max-border:none;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-css="border-color: rgb(250, 140, 0);color: rgb(255, 255, 255);display: inline-block;font-size: 1em;font-weight: bold;text-align: center;text-decoration: inherit;width: 100%" style="max-border-color:#B30112;color:#FFFFFF;display:inline-block;font-size:1em;font-weight:bold;text-align:center;text-decoration:inherit;width:670px;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-css="background-color:#f58fc6;color:inherit;font-size: 1em;line-height: 1.2em;padding: 0.5em" style="padding:0.5em;max-color:inherit;font-size:1em;line-height:1.2em;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#B30112;"><span style="max-line-height:25.6px;box-sizing:border-box !important;word-wrap:break-word !important;">四个方向可进入八一广场</span></section><section data-css="border-bottom-color:#f58fc6;border-left-color: transparent !important;border-left-style: solid !important;border-left-width: 1em !important;border-right-color: transparent !important;border-right-style: solid !important;border-right-width: 1em !important;border-top-color:#f58fc6;border-top-style: solid;border-top-width: 0.6em;height: 10px;margin-left: auto;margin-right: auto;width: 0px" style="margin-right:auto;margin-left:auto;max-border-bottom-color:#F58FC6;border-top-color:#B30112;border-top-style:solid;border-top-width:0.6em;height:10px;width:0px;box-sizing:border-box !important;word-wrap:break-word !important;border-left-color:transparent !important;border-left-style:solid !important;border-left-width:1em !important;border-right-color:transparent !important;border-right-style:solid !important;border-right-width:1em !important;"></section></section></section><section style="max-width:0px;height:0px;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;"></section></section>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;"><br style="max-box-sizing:border-box !important;word-wrap:break-word !important;" />\r\n</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">1、西北方向（万达广场门口）</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">2、东南方向（孺子东路）的两座过街天桥</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">3、北京西路口的地下通道</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">4、地铁1号线八一广场站G出口</span>\r\n</p>\r\n<p style="max-min-height:1em;color:#3E3E3E;white-space:normal;font-size:14px;text-indent:2em;line-height:2em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;font-size:16px;line-height:25.6px;white-space:normal;">\r\n<p style="text-align:center;">\r\n	<img src="/bhv4.0/public/kindedit/attached/image/20170731/79357d3fc1210fd.jpg" class="" data-ratio="0.6333333333333333" data-w="150" />\r\n</p>\r\n<p style="text-align:center;">\r\n	<br />\r\n</p>\r\n</section>\r\n<p>\r\n	<br />\r\n</p>\r\n<section data-role="outer" label="Powered by 135editor.com" style="font-family:微软雅黑;font-size:16px;line-height:25.6px;white-space:normal;max-box-sizing:border-box !important;word-wrap:break-word !important;background-color:#FFFFFF;"><section class="" data-tools="135编辑器" data-id="89989" style="color:#3E3E3E;max-box-sizing:border-box;border:0px none;text-align:center;word-wrap:break-word !important;"><section style="max-display:inline-block;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" data-brushtype="text" style="padding-right:25px;padding-left:25px;max-box-sizing:border-box;float:left;font-size:18px;height:30px;border-style:solid none solid solid;border-top-width:2px;border-bottom-width:2px;border-left-width:2px;border-top-color:#F77979;border-bottom-color:#F77979;border-left-color:#F77979;line-height:25px;color:#F77979;word-wrap:break-word !important;"><span style="max-color:#888888;font-size:16px;box-sizing:border-box !important;word-wrap:break-word !important;">现场鸽碎碎念</span></section><section style="margin-left:-13px;max-float:left;box-sizing:border-box !important;word-wrap:break-word !important;"><img class="" data-ratio="0.94" src="/bhv4.0/public/kindedit/attached/image/20170731/a5bc1d4996bc5e8.jpg" data-type="png" data-w="50" width="32px" style="display:block;box-sizing:border-box !important;word-wrap:break-word !important;visibility:visible !important;width:32px !important;" /></section></section></section><section data-role="paragraph" class="" style="max-line-height:25.6px;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;"><section class="" style="margin-top:20px;max-box-sizing:border-box !important;word-wrap:break-word !important;"><section style="margin-top:-3px;padding:15px;max-box-sizing:border-box;border:1px dashed #F09710;border-radius:10px;word-wrap:break-word !important;"><section style="margin-top:10px;max-box-sizing:border-box !important;word-wrap:break-word !important;">\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">南昌八一广场</span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">这两天受到广泛关注</span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">全省市民涌入八一广场</span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">感受让人震撼的华彩</span>\r\n</p>\r\n<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="color:#888888;">人员密集</span>\r\n</p>\r\n<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="color:#888888;">鸽也要提醒一句</span>\r\n</p>\r\n<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="color:#888888;">您可以选择稍后时间前往</span>\r\n</p>\r\n<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="color:#888888;">不一定非要赶在这几天</span>\r\n</p>\r\n<p style="max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<br />\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">如果你觉得有提醒家人的必要</span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">就请给鸽<span style="max-line-height:1.75em;">点个大拇指</span></span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<span style="max-color:#888888;box-sizing:border-box !important;word-wrap:break-word !important;">让鸽的工资多一点</span>\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;line-height:1.75em;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<br />\r\n</p>\r\n</section></section></section></section>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:justify;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<br />\r\n</p>\r\n<p style="color:#3E3E3E;max-min-height:1em;text-align:center;box-sizing:border-box !important;word-wrap:break-word !important;">\r\n	<img class="" data-ratio="0.55625" src="/bhv4.0/public/kindedit/attached/image/20170731/48e110346c0ad63.jpg" data-type="jpeg" data-w="640" style="font-family:微软雅黑, ''Microsoft YaHei'', Arial, sans-serif;line-height:25.6px;white-space:pre-wrap;box-sizing:border-box !important;word-wrap:break-word !important;width:auto !important;visibility:visible !important;" />\r\n</p>\r\n</section>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', 1, 1, '2017-07-31 14:50:26');

-- --------------------------------------------------------

--
-- 表的结构 `bh_inftype`
--

CREATE TABLE IF NOT EXISTS `bh_inftype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `bh_inftype`
--

INSERT INTO `bh_inftype` (`Id`, `sty`, `domain`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, '', '新闻资讯', NULL, 1, 1, '2016-07-22 20:51:23'),
(2, 1, '', '商城公告', NULL, 2, 1, '2016-07-22 20:51:41');

-- --------------------------------------------------------

--
-- 表的结构 `bh_links`
--

CREATE TABLE IF NOT EXISTS `bh_links` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//保留字段',
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_links`
--

INSERT INTO `bh_links` (`Id`, `sty`, `topic`, `pic`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(1, 1, '明良广', '', 'http://www.jxbh.cn', 1, 1, '2017-05-12 09:46:23');

-- --------------------------------------------------------

--
-- 表的结构 `bh_message`
--

CREATE TABLE IF NOT EXISTS `bh_message` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//留言类型(保留)',
  `topic` char(200) DEFAULT '如内容' COMMENT '//留言主题',
  `address` varchar(250) DEFAULT NULL COMMENT '//联系地址',
  `content` text COMMENT '//留言内容',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '//是否处理',
  `user` char(20) DEFAULT NULL COMMENT '//留言名称',
  `tel` char(35) DEFAULT NULL COMMENT '//联系电话',
  `email` char(50) DEFAULT NULL COMMENT '//联系email',
  `phone` char(35) DEFAULT NULL COMMENT '//联系手机',
  `ip` char(20) DEFAULT NULL COMMENT '//留言人IP',
  `date` datetime DEFAULT NULL COMMENT '//留言时间',
  `recontent` text COMMENT '//回复内容',
  `redate` datetime DEFAULT NULL COMMENT '//回复时间',
  PRIMARY KEY (`Id`),
  KEY `type` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bh_message`
--

INSERT INTO `bh_message` (`Id`, `sty`, `topic`, `address`, `content`, `enabled`, `user`, `tel`, `email`, `phone`, `ip`, `date`, `recontent`, `redate`) VALUES
(2, 0, '在线反馈', '我的地址', '我的内容如内容', 0, '王德华', '5606355', '454545@qq.com', '13035425444', NULL, '2017-07-19 10:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bh_online`
--

CREATE TABLE IF NOT EXISTS `bh_online` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `actionid` char(45) DEFAULT NULL COMMENT '//actionid',
  `action` char(100) NOT NULL COMMENT '访问地址',
  `refer` text NOT NULL COMMENT '来源页面',
  `ip` char(20) NOT NULL COMMENT 'IP',
  `agent` char(20) NOT NULL COMMENT '浏览器',
  `hit` int(4) NOT NULL DEFAULT '1' COMMENT '点击率',
  `day` date DEFAULT NULL COMMENT '//访问日期',
  `uid` int(4) NOT NULL DEFAULT '0' COMMENT '//uid',
  `stime` int(11) DEFAULT '0' COMMENT '//开始时间',
  `etime` int(11) NOT NULL DEFAULT '0' COMMENT '//结束时间',
  PRIMARY KEY (`Id`),
  KEY `action` (`action`,`ip`,`day`),
  KEY `day` (`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `bh_online`
--

INSERT INTO `bh_online` (`Id`, `actionid`, `action`, `refer`, `ip`, `agent`, `hit`, `day`, `uid`, `stime`, `etime`) VALUES
(1, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 2, '2017-05-16', 0, 1494905946, 0),
(2, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 9, '2017-05-17', 0, 1495022978, 0),
(3, 'eb7638686137fc42677f757118df6ce9', 'http://localhost/bhv3.0/Home/index/index.html', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 2, '2017-05-17', 0, 1495022048, 0),
(4, '6d9d4a4899dcfdac89269f0bfa923dab', 'http://localhost/bhv3.0/index/index.html', 'http://localhost/bhv3.0/Home/index/index.html', '0.0.0.0', 'Google', 1, '2017-05-17', 0, 1495022049, 1495022978),
(5, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/Home/index/index.html', '0.0.0.0', 'Google', 1, '2017-05-18', 0, 1495094568, 0),
(6, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 5, '2017-05-19', 0, 1495191110, 0),
(7, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 2, '2017-05-20', 0, 1495262162, 0),
(8, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-05-22', 0, 1495424655, 0),
(9, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-06-15', 0, 1497492747, 0),
(10, 'eb7638686137fc42677f757118df6ce9', 'http://localhost/bhv3.0/Home/index/index.html', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-06-19', 0, 1497862319, 0),
(11, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-06-21', 0, 1498006535, 0),
(12, '9f7d4d8d1d86ab473fab3163daeca18d', 'http://localhost/bhonline/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1035, '2017-06-21', 0, 1498054169, 0),
(13, '9f7d4d8d1d86ab473fab3163daeca18d', 'http://localhost/bhonline/', 'http://localhost/bhonline/', '0.0.0.0', 'Google', 374, '2017-06-22', 0, 1498119017, 0),
(14, '9f7d4d8d1d86ab473fab3163daeca18d', 'http://localhost/bhonline/', 'http://localhost/bhonline/', '0.0.0.0', 'Google', 24, '2017-06-23', 0, 1498219473, 0),
(15, 'eb7638686137fc42677f757118df6ce9', 'http://localhost/bhv3.0/Home/index/index.html', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-06-26', 0, 1498437068, 0),
(16, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/Home/index/index.html', '0.0.0.0', 'Google', 1, '2017-06-26', 0, 1498457690, 0),
(17, '9f7d4d8d1d86ab473fab3163daeca18d', 'http://localhost/bhonline/', 'http://localhost/bhonline/', '0.0.0.0', 'Google', 7, '2017-06-30', 0, 1498828806, 0),
(18, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-07-10', 0, 1499666933, 0),
(19, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-07-11', 0, 1499758620, 0),
(20, 'e897eb69f9d9d0f2d7e7b9d01f431ae0', 'http://localhost/miaojixiang/', 'http://localhost/miaojixiang/', '0.0.0.0', 'Google', 1, '2017-07-17', 0, 1500283216, 0),
(21, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 2, '2017-07-21', 0, 1500640437, 0),
(22, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 1, '2017-07-24', 0, 1500865095, 0),
(23, '7db0c1d49f887855895d833033eb1ccf', 'http://localhost/bhv3.0/', 'http://localhost/bhv3.0/', '0.0.0.0', 'Google', 2, '2017-07-27', 0, 1501140005, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bh_onlineqq`
--

CREATE TABLE IF NOT EXISTS `bh_onlineqq` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '// 1表示业务2表示技术3表示备案',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `amount` varchar(100) DEFAULT NULL COMMENT '//账户',
  `weixin` char(100) DEFAULT NULL COMMENT '//图片',
  `phone` char(20) DEFAULT NULL COMMENT '//手机号码',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_onlineqq`
--

INSERT INTO `bh_onlineqq` (`Id`, `sty`, `type`, `topic`, `amount`, `weixin`, `phone`, `ord`, `enabled`, `date`) VALUES
(1, 1, 0, '明良广', '282441445', '', '', 1, 1, '2017-07-31 08:30:18');

-- --------------------------------------------------------

--
-- 表的结构 `bh_proctag`
--

CREATE TABLE IF NOT EXISTS `bh_proctag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_proctag`
--

INSERT INTO `bh_proctag` (`Id`, `sty`, `domain`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, '', '手机配件', NULL, 1, 1, '2017-06-01 10:06:33');

-- --------------------------------------------------------

--
-- 表的结构 `bh_product`
--

CREATE TABLE IF NOT EXISTS `bh_product` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `topic` char(200) DEFAULT NULL COMMENT '//产品名称',
  `tag` varchar(150) DEFAULT NULL COMMENT '//TAG标签',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//产品分类',
  `mtag` int(4) NOT NULL DEFAULT '0' COMMENT '//mtag',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//产品点击率',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门产品',
  `pic` varchar(100) DEFAULT NULL COMMENT '//产品配图',
  `intro` varchar(250) DEFAULT NULL COMMENT '//产品简介',
  `content` text COMMENT '//产品内容',
  `linkurl` varchar(250) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `ord` int(4) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `inftype` (`ctag`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_product`
--

INSERT INTO `bh_product` (`Id`, `sty`, `topic`, `tag`, `ctag`, `mtag`, `topiccolor`, `source`, `author`, `keyword`, `metades`, `hit`, `istop`, `ishot`, `pic`, `intro`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(1, 0, 'IPHONE6 plus手机', NULL, 1, 1, NULL, NULL, NULL, '', '', 0, 1, 0, '', 'IPHONE6 plus手机', '', NULL, 1, 1, '2017-06-01 10:07:12');

-- --------------------------------------------------------

--
-- 表的结构 `bh_promtag`
--

CREATE TABLE IF NOT EXISTS `bh_promtag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//所属大类',
  `topic` char(50) NOT NULL COMMENT '//分类名称',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) NOT NULL DEFAULT '1' COMMENT '//排序',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否启用',
  `date` datetime NOT NULL COMMENT '//更新时间',
  PRIMARY KEY (`Id`),
  KEY `ctag` (`ctag`),
  FULLTEXT KEY `topic` (`topic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bh_promtag`
--

INSERT INTO `bh_promtag` (`Id`, `sty`, `ctag`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, 1, '钢化膜', NULL, 2, 1, '2017-06-01 10:06:52'),
(2, 1, 1, '耳塞', NULL, 1, 1, '2017-06-01 10:07:07');

-- --------------------------------------------------------

--
-- 表的结构 `bh_systemconfig`
--

CREATE TABLE IF NOT EXISTS `bh_systemconfig` (
  `Id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `metatitle` char(250) DEFAULT NULL COMMENT '//title',
  `metades` char(250) DEFAULT NULL COMMENT '//网站描述',
  `metakey` char(250) DEFAULT NULL COMMENT '//关键词',
  `logo` char(50) DEFAULT NULL COMMENT '//logo路径',
  `companyname` char(200) DEFAULT NULL COMMENT '//公司名称',
  `companyurl` char(150) DEFAULT NULL COMMENT '//公司链接',
  `address` char(250) DEFAULT NULL COMMENT '//公司地址',
  `email` char(50) DEFAULT NULL COMMENT '//企业邮箱',
  `tel` char(50) DEFAULT NULL COMMENT '//企业电话',
  `contact` char(100) DEFAULT NULL COMMENT '//联系人',
  `mobile` char(20) DEFAULT NULL COMMENT '//手机号码',
  `fax` char(30) DEFAULT NULL COMMENT '//传真',
  `qq` char(20) DEFAULT NULL COMMENT '//qq号码',
  `weixinpic` varchar(100) DEFAULT NULL COMMENT '//微信二维码',
  `weibourl` varchar(200) DEFAULT NULL COMMENT '//微博链接',
  `icpnote` char(50) DEFAULT NULL COMMENT '//icp备案号',
  `c_reg` tinyint(1) DEFAULT '0' COMMENT '//关闭注册',
  `shieldip` text COMMENT '//需要屏蔽的IP',
  `iptips` char(200) DEFAULT NULL COMMENT '//过滤IP提示语',
  `c_site` tinyint(1) DEFAULT '0' COMMENT '//关闭项目',
  `c_text` char(250) DEFAULT '升级中……' COMMENT '//关闭说明',
  `sys_parameter` text COMMENT '//系统参数',
  `sys_code` text COMMENT '//第三方代码（ex:百度）',
  `sys_notice` varchar(250) DEFAULT NULL COMMENT '//通知，紧急通知',
  `mailsmtp` char(50) CHARACTER SET ucs2 NOT NULL COMMENT '//邮件Smtp',
  `mailport` char(10) CHARACTER SET ucs2 NOT NULL DEFAULT '25' COMMENT '//邮件端口',
  `mailname` char(50) DEFAULT NULL COMMENT '//邮箱名称',
  `mailpass` char(50) DEFAULT NULL COMMENT '//邮箱密码',
  `wordfilter` text COMMENT '//词汇过滤',
  `regread` text COMMENT '//注册须知',
  `copy_info` varchar(200) DEFAULT NULL COMMENT '//页尾版权信息',
  `iswater` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否开启水印功能',
  `fontpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpic` char(50) DEFAULT NULL COMMENT '//水印图片',
  `fonttext` char(50) DEFAULT NULL COMMENT '//文字水印',
  `fontsize` int(4) NOT NULL DEFAULT '20' COMMENT '//文字大小',
  `fontcolor` char(50) NOT NULL DEFAULT '#ffffff' COMMENT '//文字颜色',
  `facetype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//facetype',
  `rotation` smallint(1) NOT NULL DEFAULT '0' COMMENT '//旋转',
  `wateralpha` tinyint(1) NOT NULL DEFAULT '100' COMMENT '//alpha值',
  `picsize` int(4) NOT NULL DEFAULT '0' COMMENT '//上传大小（图片）',
  `filesize` int(4) NOT NULL DEFAULT '0' COMMENT '//文件上传大小',
  `picsuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传图片的后缀',
  `filesuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传的非图片的后缀',
  `picmaxwidth` int(4) NOT NULL COMMENT '//图片超过尺寸裁剪',
  `picmaxsize` int(4) NOT NULL DEFAULT '0' COMMENT '//当大小大于 该值时也进行裁剪 0表示不进行操作',
  `cropwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//裁剪至',
  `islog` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志功能',
  `isclear` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志清理',
  `isonline` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否开启收集信息',
  `isqq` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否显示客服',
  `urlmodel` tinyint(1) NOT NULL DEFAULT '2' COMMENT '//urlmodel',
  `urlsuffix` char(10) DEFAULT NULL COMMENT '//定义静态后缀',
  `adminpage` smallint(1) NOT NULL DEFAULT '0' COMMENT '//配置分页值',
  `brokerage` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '//佣金',
  `regpoint` int(5) DEFAULT '0',
  `userset` varchar(500) DEFAULT NULL COMMENT '//预留会员信息',
  `adminpath` char(20) DEFAULT NULL COMMENT '//后台',
  `date` datetime DEFAULT NULL COMMENT '//更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_systemconfig`
--

INSERT INTO `bh_systemconfig` (`Id`, `metatitle`, `metades`, `metakey`, `logo`, `companyname`, `companyurl`, `address`, `email`, `tel`, `contact`, `mobile`, `fax`, `qq`, `weixinpic`, `weibourl`, `icpnote`, `c_reg`, `shieldip`, `iptips`, `c_site`, `c_text`, `sys_parameter`, `sys_code`, `sys_notice`, `mailsmtp`, `mailport`, `mailname`, `mailpass`, `wordfilter`, `regread`, `copy_info`, `iswater`, `fontpos`, `waterpos`, `waterpic`, `fonttext`, `fontsize`, `fontcolor`, `facetype`, `rotation`, `wateralpha`, `picsize`, `filesize`, `picsuffix`, `filesuffix`, `picmaxwidth`, `picmaxsize`, `cropwidth`, `islog`, `isclear`, `isonline`, `isqq`, `urlmodel`, `urlsuffix`, `adminpage`, `brokerage`, `regpoint`, `userset`, `adminpath`, `date`) VALUES
(1, 'BHCMS 4.0', 'BHCMS 4.0', 'BHCMS 4.0', '', '', '', '', '', '', '', '', '', NULL, '', '', '赣ICP备88888888号-1', 0, '192.198.6.1', '您的IP将禁用一段时间。', 0, '网站项目维护中...', '', '', '', 'smtp.163.com', '25', '', '', 'cao|艹|草', '<p style="white-space:normal;">\r\n	一、用户信息的提供\r\n</p>\r\n<p style="white-space:normal;">\r\n	为保障用户的合法权益，避免在服务时因用户注册资料与真实情况不符而发生纠纷，请用户注册时务必按照真实、全面、准确的原则填写。对因用户自身原因而造成的不能服务情况，中国婚庆糖果网概不负责。如果用户提供的资料包含有不正确的信息，本网保留结束该用户使用服务资格的权利。&nbsp;\r\n</p>', '', 0, 9, 9, '', 'JXBH.CN', 36, '#1ea5d7', 5, 0, 25, 10240, 10240, 'jpg,gif,png,jpeg', 'doc,docx,rar,xlsx,mp4', 1200, 2, 1000, 1, 1, 0, 1, 2, NULL, 15, 0.00, 0, 'user,admin,bh', '', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;