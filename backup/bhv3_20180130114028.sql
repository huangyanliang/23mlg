/* This file is created by MySQLReback 2018-01-30 11:40:28 */
 /* 创建表结构 `bh_aboutus`  */
 DROP TABLE IF EXISTS `bh_aboutus`;/* MySQLReback Separation */ CREATE TABLE `bh_aboutus` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_aboutus` */
 INSERT INTO `bh_aboutus` VALUES ('1','1','关于我们',null,null,null,null,null,null,null,'1','1','2017-05-18 16:38:59'),('2','1','联系我们',null,null,null,null,null,null,null,'1','2','2017-05-15 09:02:39');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminauth`  */
 DROP TABLE IF EXISTS `bh_adminauth`;/* MySQLReback Separation */ CREATE TABLE `bh_adminauth` (
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
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminauth` */
 INSERT INTO `bh_adminauth` VALUES ('1',null,'0','0','0','1','系统管理',null,'1','0',null,null,null,'1','2016-12-07 15:36:14'),('2',null,'0','0','0','0','网站管理',null,'1','0',null,null,null,'2','2016-12-07 15:36:19'),('7',null,'1','1','0','1','管理首页',null,'1','0','gears',null,null,'1','2016-12-07 15:34:25'),('8',null,'1','1','0','1','管理员设置',null,'0','0','cog',null,null,'2','2016-09-19 18:07:25'),('9',null,'1','1','0','1','数据库管理',null,'0','0','database',null,null,'3','2016-09-19 18:07:37'),('12','system/sysmod','7','0','0','1','系统设置','system/sysmod','1','1',null,null,null,'1','2016-12-07 15:35:06'),('13','System/syslogs','1','1','0','1','日志管理','System/syslogs','1','0','cloud',null,null,'5','2016-09-19 18:09:31'),('14','System/syspic','1','0','0','1','图片管理','System/syspic','1','0','picture',null,null,'6','2016-09-19 18:10:05'),('15',null,'1','0','0','1','广告管理',null,'1','0','flag',null,null,'4','2017-05-13 14:40:22'),('16','Index/dataonline','1','1','0','1','访问统计','Index/dataonline','1','0','line-chart',null,null,'7','2016-09-19 18:14:29'),('92',null,'2','1','0','1','产品管理',null,'1','0','puzzle-piece',null,null,'4','2016-12-19 08:47:52'),('18','System/ipfilter','7','0','0','1','Ip过滤设置','System/ipfilter','1','0',null,null,null,'3','2016-09-19 18:17:15'),('19','System/adminauth','8','0','0','1','栏目管理','System/adminauth','1','1',null,null,null,'1','2016-10-08 14:31:47'),('20','System/userlist','8','0','0','1','管理用户','System/userlist','1','0',null,null,null,'3','2016-09-19 18:18:31'),('21','System/history','8','0','0','1','登录日志','System/history','1','0',null,null,null,'4','2016-09-19 18:19:07'),('22','System/databackup','9','0','0','1','数据库备份','System/databackup','1','0',null,null,null,'1','2016-09-19 18:19:27'),('23','System/databackuplist','9','0','0','1','查看备份','System/databackuplist','1','0',null,null,null,'2','2016-09-19 18:19:52'),('88','website/onlinelist','2','1','0','1','在线客户管理','website/onlinelist,tables=onlineqq','1','0','user','onlineqq',null,'7','2016-12-09 19:59:22'),('86','website/message','2','1','0','1','留言信息管理','website/message,tables=message','1','0','commenting','message',null,'4','2016-12-09 20:29:57'),('87','website/linkslist','2','1','0','1','友情链接管理','website/linkslist,tables=links','1','0','link','links',null,'6','2016-12-09 19:59:35'),('85','website/datalist','83','1','0','1','资料管理','website/datalist,tables=information&martables=inftype','1','0',null,'information','inftype','2','2016-12-09 19:57:07'),('82','website/aboutlist','2','1','0','1','关于我们管理','website/aboutlist,tables=aboutus','1','0','cube','aboutus',null,'1','2017-03-31 21:49:52'),('83',null,'2','1','0','1','新闻资讯管理',null,'1','0','list-alt',null,null,'3','2016-12-09 19:55:48'),('84','website/datatypelist','83','1','0','1','类别管理','website/datatypelist,tables=inftype','1','0',null,'inftype',null,'1','2016-12-09 19:56:31'),('96','website/datatypelist','15','1','0','1','广告类目','website/datatypelist,tables=advtype','1','0',null,'advtype',null,'1','2017-04-07 16:05:45'),('91','website/datalist','89','1','0','1','资料管理','website/datalist,tables=information&martables=inftype&sty=2','2','0',null,'information','inftype','2','2016-12-09 20:06:02'),('97','System/advlist','15','1','0','1','广告管理','System/advlist','1','0',null,null,null,'2','2017-04-07 15:44:51'),('95','Product/productlist','92','1','0','1','产品管理','Product/productlist,tables=product','1','0',null,'product',null,'3','2016-12-19 08:50:27'),('94','Product/promtaglist','92','1','0','1','子类管理','Product/promtaglist,tables=promtag','1','0',null,'promtag',null,'2','2016-12-19 08:49:27'),('93','Product/proctaglist','92','1','0','1','类别管理','Product/proctaglist,tables=proctag','1','0',null,'proctag',null,'1','2016-12-19 08:48:37'),('90','website/datatypelist','89','1','0','1','类别管理','website/datatypelist,tables=inftype&sty=2','2','0',null,'inftype',null,'1','2016-12-09 20:05:10'),('89',null,'2','1','0','1','案例管理',null,'1','0','globe',null,null,'2','2016-12-09 20:01:52'),('77','System/admindepartment','8','1','0','1','部门管理','System/admindepartment','1','0',null,null,null,'2','2016-09-24 14:36:41'),('78','System/syswater','7','1','1','1','水印设置','System/syswater','1','0',null,null,null,'4','2016-10-08 09:34:38');/* MySQLReback Separation */
 /* 创建表结构 `bh_admindepartment`  */
 DROP TABLE IF EXISTS `bh_admindepartment`;/* MySQLReback Separation */ CREATE TABLE `bh_admindepartment` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL COMMENT '//topic',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_admindepartment` */
 INSERT INTO `bh_admindepartment` VALUES ('1','超级管理员','1,7,12,18,78,8,19,77,20,21,9,22,23,13,14,16,2,89,90,91,15,96,97,83,84,85,92,93,94,95,86,82,87,88','1','2017-04-07 15:44:28');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminrecord`  */
 DROP TABLE IF EXISTS `bh_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `bh_adminrecord` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL COMMENT '//管理员用户名',
  `ip` char(20) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminrecord` */
 INSERT INTO `bh_adminrecord` VALUES ('1','admin','192.168.0.11','2017-07-06 17:44:08'),('2','admin','0.0.0.0','2017-07-06 17:51:37'),('3','admin','192.168.0.73','2017-07-06 17:54:04'),('4','admin','192.168.0.8','2017-07-07 09:39:05'),('5','admin','0.0.0.0','2017-07-10 08:17:46'),('6','admin','192.168.0.73','2017-07-10 14:12:32'),('7','admin','192.168.0.9','2017-07-10 14:14:45'),('8','admin','0.0.0.0','2017-07-21 08:17:48'),('9','admin','0.0.0.0','2017-07-24 10:58:24'),('10','admin','0.0.0.0','2017-07-27 08:26:50'),('11','admin','0.0.0.0','2017-07-27 12:39:41'),('12','admin','0.0.0.0','2017-07-27 14:36:06'),('13','admin','0.0.0.0','2017-07-28 08:06:04'),('14','admin','0.0.0.0','2017-07-28 11:41:26'),('15','admin','0.0.0.0','2017-07-29 08:20:04'),('16','Admin','0.0.0.0','2017-07-29 09:22:42'),('17','admin','0.0.0.0','2017-07-29 12:02:11'),('18','admin','0.0.0.0','2017-07-29 15:25:53'),('19','admin','0.0.0.0','2017-07-31 08:15:50'),('20','admin','0.0.0.0','2017-07-31 08:45:44'),('21','Admin','0.0.0.0','2017-07-31 08:56:01'),('22','admin','0.0.0.0','2017-07-31 20:34:01'),('23','admin','0.0.0.0','2017-08-01 08:12:19'),('24','admin','0.0.0.0','2017-08-16 08:13:10'),('25','admin','0.0.0.0','2017-10-11 14:05:39'),('26','admin','0.0.0.0','2017-10-11 14:09:04'),('27','admin','0.0.0.0','2017-10-11 16:19:11'),('28','admin','0.0.0.0','2017-10-12 10:14:48'),('29','admin','0.0.0.0','2017-10-12 14:54:07'),('30','admin','0.0.0.0','2018-01-30 11:23:59');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminuser`  */
 DROP TABLE IF EXISTS `bh_adminuser`;/* MySQLReback Separation */ CREATE TABLE `bh_adminuser` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminuser` */
 INSERT INTO `bh_adminuser` VALUES ('1','1','admin','7784bbd11bf931be8b520f7da2df9ebb','064655','admin','admin@163.com',null,'404','0.0.0.0','2018-01-30 11:23:59','2015-05-25 17:54:12');/* MySQLReback Separation */
 /* 创建表结构 `bh_advdata`  */
 DROP TABLE IF EXISTS `bh_advdata`;/* MySQLReback Separation */ CREATE TABLE `bh_advdata` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advdata` */
 INSERT INTO `bh_advdata` VALUES ('1','广告',null,'0','0','1','1','###',null,'1','1','2017-07-31 16:05:06');/* MySQLReback Separation */
 /* 创建表结构 `bh_advtype`  */
 DROP TABLE IF EXISTS `bh_advtype`;/* MySQLReback Separation */ CREATE TABLE `bh_advtype` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advtype` */
 INSERT INTO `bh_advtype` VALUES ('1','1',null,'首页banner广告 1920*360',null,'1','1','2017-07-28 14:31:37');/* MySQLReback Separation */
 /* 创建表结构 `bh_information`  */
 DROP TABLE IF EXISTS `bh_information`;/* MySQLReback Separation */ CREATE TABLE `bh_information` (
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_inftype`  */
 DROP TABLE IF EXISTS `bh_inftype`;/* MySQLReback Separation */ CREATE TABLE `bh_inftype` (
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_inftype` */
 INSERT INTO `bh_inftype` VALUES ('1','1',null,'新闻资讯',null,'1','1','2016-07-22 20:51:23'),('2','1',null,'商城公告',null,'2','1','2016-07-22 20:51:41');/* MySQLReback Separation */
 /* 创建表结构 `bh_links`  */
 DROP TABLE IF EXISTS `bh_links`;/* MySQLReback Separation */ CREATE TABLE `bh_links` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//保留字段',
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_links` */
 INSERT INTO `bh_links` VALUES ('1','1','百恒网络',null,'http://www.jxbh.cn','1','1','2017-05-12 09:46:23');/* MySQLReback Separation */
 /* 创建表结构 `bh_message`  */
 DROP TABLE IF EXISTS `bh_message`;/* MySQLReback Separation */ CREATE TABLE `bh_message` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_message` */
 INSERT INTO `bh_message` VALUES ('2','0','在线反馈','我的地址','我的内容如内容','0','王德华','5606355','454545@qq.com','13035425444',null,'2017-07-19 10:00:00',null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_online`  */
 DROP TABLE IF EXISTS `bh_online`;/* MySQLReback Separation */ CREATE TABLE `bh_online` (
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_online` */
 INSERT INTO `bh_online` VALUES ('1','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','2','2017-05-16','0','1494905946','0'),('2','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','9','2017-05-17','0','1495022978','0'),('3','eb7638686137fc42677f757118df6ce9','http://localhost/bhv3.0/Home/index/index.html','http://localhost/bhv3.0/','0.0.0.0','Google','2','2017-05-17','0','1495022048','0'),('4','6d9d4a4899dcfdac89269f0bfa923dab','http://localhost/bhv3.0/index/index.html','http://localhost/bhv3.0/Home/index/index.html','0.0.0.0','Google','1','2017-05-17','0','1495022049','1495022978'),('5','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/Home/index/index.html','0.0.0.0','Google','1','2017-05-18','0','1495094568','0'),('6','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','5','2017-05-19','0','1495191110','0'),('7','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','2','2017-05-20','0','1495262162','0'),('8','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-05-22','0','1495424655','0'),('9','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-06-15','0','1497492747','0'),('10','eb7638686137fc42677f757118df6ce9','http://localhost/bhv3.0/Home/index/index.html','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-06-19','0','1497862319','0'),('11','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-06-21','0','1498006535','0'),('12','9f7d4d8d1d86ab473fab3163daeca18d','http://localhost/bhonline/','http://localhost/bhv3.0/','0.0.0.0','Google','1035','2017-06-21','0','1498054169','0'),('13','9f7d4d8d1d86ab473fab3163daeca18d','http://localhost/bhonline/','http://localhost/bhonline/','0.0.0.0','Google','374','2017-06-22','0','1498119017','0'),('14','9f7d4d8d1d86ab473fab3163daeca18d','http://localhost/bhonline/','http://localhost/bhonline/','0.0.0.0','Google','24','2017-06-23','0','1498219473','0'),('15','eb7638686137fc42677f757118df6ce9','http://localhost/bhv3.0/Home/index/index.html','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-06-26','0','1498437068','0'),('16','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/Home/index/index.html','0.0.0.0','Google','1','2017-06-26','0','1498457690','0'),('17','9f7d4d8d1d86ab473fab3163daeca18d','http://localhost/bhonline/','http://localhost/bhonline/','0.0.0.0','Google','7','2017-06-30','0','1498828806','0'),('18','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-07-10','0','1499666933','0'),('19','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-07-11','0','1499758620','0'),('20','e897eb69f9d9d0f2d7e7b9d01f431ae0','http://localhost/miaojixiang/','http://localhost/miaojixiang/','0.0.0.0','Google','1','2017-07-17','0','1500283216','0'),('21','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','2','2017-07-21','0','1500640437','0'),('22','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','1','2017-07-24','0','1500865095','0'),('23','7db0c1d49f887855895d833033eb1ccf','http://localhost/bhv3.0/','http://localhost/bhv3.0/','0.0.0.0','Google','2','2017-07-27','0','1501140005','0');/* MySQLReback Separation */
 /* 创建表结构 `bh_onlineqq`  */
 DROP TABLE IF EXISTS `bh_onlineqq`;/* MySQLReback Separation */ CREATE TABLE `bh_onlineqq` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_onlineqq` */
 INSERT INTO `bh_onlineqq` VALUES ('1','1','0','百恒科技','282441445',null,null,'1','1','2017-07-31 08:30:18');/* MySQLReback Separation */
 /* 创建表结构 `bh_proctag`  */
 DROP TABLE IF EXISTS `bh_proctag`;/* MySQLReback Separation */ CREATE TABLE `bh_proctag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_proctag` */
 INSERT INTO `bh_proctag` VALUES ('1','1',null,'手机配件',null,'1','1','2017-06-01 10:06:33');/* MySQLReback Separation */
 /* 创建表结构 `bh_product`  */
 DROP TABLE IF EXISTS `bh_product`;/* MySQLReback Separation */ CREATE TABLE `bh_product` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_product` */
 INSERT INTO `bh_product` VALUES ('1','0','IPHONE6 plus手机',null,'1','1',null,null,null,null,null,'0','1','0',null,'IPHONE6 plus手机',null,null,'1','1','2017-06-01 10:07:12'),('2','1','茶农',null,'1','2',null,null,null,null,null,'0','0','0','20171011/59ddd7160a0f8.jpg','	在此处输入标题	在此处输入内容...','<h3>\r\n	<img align=\"left\" height=\"100\" style=\"margin-right:10px;\" width=\"100\" />在此处输入标题\r\n</h3>\r\n<p>\r\n	在此处输入内容\r\n</p>',null,'1','1','2017-10-11 16:30:22');/* MySQLReback Separation */
 /* 创建表结构 `bh_promtag`  */
 DROP TABLE IF EXISTS `bh_promtag`;/* MySQLReback Separation */ CREATE TABLE `bh_promtag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_promtag` */
 INSERT INTO `bh_promtag` VALUES ('1','1','1','钢化膜',null,'2','1','2017-06-01 10:06:52'),('2','1','1','耳塞',null,'1','1','2017-06-01 10:07:07');/* MySQLReback Separation */
 /* 创建表结构 `bh_systemconfig`  */
 DROP TABLE IF EXISTS `bh_systemconfig`;/* MySQLReback Separation */ CREATE TABLE `bh_systemconfig` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_systemconfig` */
 INSERT INTO `bh_systemconfig` VALUES ('1','BHCMS 4.0','BHCMS 4.0','BHCMS 4.0',null,null,null,null,null,null,null,null,null,null,null,null,'赣ICP备88888888号-1','0','192.198.6.1','您的IP将禁用一段时间。','0','网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,'cao|艹|草','<p style=\"white-space:normal;\">\r\n	一、用户信息的提供\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	为保障用户的合法权益，避免在服务时因用户注册资料与真实情况不符而发生纠纷，请用户注册时务必按照真实、全面、准确的原则填写。对因用户自身原因而造成的不能服务情况，中国婚庆糖果网概不负责。如果用户提供的资料包含有不正确的信息，本网保留结束该用户使用服务资格的权利。&nbsp;\r\n</p>',null,'0','9','9',null,'JXBH.CN','36','#1ea5d7','5','0','25','10240','10240','jpg,gif,png,jpeg','doc,docx,rar,xlsx,mp4','1200','2','1000','1','1','0','1','2',null,'15','0.00','0','user,admin,bh',null,'0000-00-00 00:00:00');/* MySQLReback Separation */