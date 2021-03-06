﻿# Host: localhost  (Version: 5.0.41-community-nt)
# Date: 2013-05-14 21:31:29
# Generator: MySQL-Front 5.3  (Build 2.77)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `exam`;
CREATE DATABASE `exam` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `exam`;

#
# Source for table "b_education_type"
#

DROP TABLE IF EXISTS `b_education_type`;
CREATE TABLE `b_education_type` (
  `education_index` int(10) unsigned NOT NULL auto_increment,
  `education_name` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`education_index`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "b_education_type"
#

INSERT INTO `b_education_type` VALUES (1,'本科生'),(2,'研究生');

#
# Source for table "b_organization"
#

DROP TABLE IF EXISTS `b_organization`;
CREATE TABLE `b_organization` (
  `organization_id` int(10) unsigned NOT NULL auto_increment,
  `org_name` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "b_organization"
#

INSERT INTO `b_organization` VALUES (1,'机电与信息工程学院'),(2,'商学院'),(3,'文化传播学院'),(4,'翻译学院');

#
# Source for table "b_post_type"
#

DROP TABLE IF EXISTS `b_post_type`;
CREATE TABLE `b_post_type` (
  `post_index` int(10) unsigned NOT NULL auto_increment,
  `post_name` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`post_index`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "b_post_type"
#

INSERT INTO `b_post_type` VALUES (1,'软件工程'),(2,'计算机'),(3,'通信工程'),(4,'市场营销'),(5,'工商管理'),(6,'金融'),(7,'国际贸易'),(8,'新闻'),(9,'英语');

#
# Source for table "ex_adminuser"
#

DROP TABLE IF EXISTS `ex_adminuser`;
CREATE TABLE `ex_adminuser` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_adminuser"
#

INSERT INTO `ex_adminuser` VALUES (1,'admin','admin');

#
# Source for table "ex_baseinfo"
#

DROP TABLE IF EXISTS `ex_baseinfo`;
CREATE TABLE `ex_baseinfo` (
  `b_id` varchar(3) NOT NULL default '',
  `b_type` varchar(3) default '0',
  `b_value` varchar(200) default NULL,
  `b_comments` varchar(200) default NULL,
  PRIMARY KEY  (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_baseinfo"
#

INSERT INTO `ex_baseinfo` VALUES ('001','001','e_type','试卷类型'),('002','002','e_state','试卷状态'),('003','003','q_type','题型'),('004','004','sex','性别'),('005','005','state','用户状态'),('006','006','q_class','题库类别'),('007','007','q_knowledge','知识点'),('008','008','q_difficulty','题目难度'),('009','009','t_state','考卷状态'),('010','010','operation','业务类别'),('011','011','e_grade','评分方式'),('012','','',''),('013','','',''),('014','','',''),('015','','',''),('016','','',''),('017','','',''),('018','','',''),('019','','',''),('020','','',''),('021','','',''),('022','','',''),('023','','',''),('024','','',''),('025','','',''),('026','','',''),('027','','',''),('028','','',''),('029','','',''),('030','','',''),('031','001','基础知识',''),('032','001','能力测试',''),('033','001','实验操作',''),('034','','',''),('035','','',''),('036','','',''),('037','','',''),('038','002','已生成未分配',''),('039','002','已分配未进行',''),('040','002','已结束',''),('041','002','进行中',''),('042','','',''),('043','','',''),('044','','',''),('045','','',''),('046','','',''),('047','003','单选题',''),('048','003','多选题',''),('049','003','填空题',''),('050','003','简答题',''),('051','','',''),('052','','',''),('053','','',''),('054','','',''),('055','','',''),('056','004','男',''),('057','004','女',''),('058','','',''),('059','','',''),('060','','',''),('061','','',''),('062','','',''),('063','005','有效',''),('064','005','冻结',''),('065','','',''),('066','','',''),('067','','',''),('068','','',''),('069','','',''),('070','006','软件测试',''),('071','006','操作系统',''),('072','006','市场营销',''),('073','006','英语翻译',''),('074','','',''),('075','','',''),('076','','',''),('077','007','基础知识',''),('078','007','能力测试',''),('079','007','实验操作',''),('080','','',''),('081','','',''),('082','','',''),('083','','',''),('084','','',''),('085','008','难',''),('086','008','中',''),('087','008','易',''),('088','','',''),('089','','',''),('090','','',''),('091','','',''),('092','','',''),('093','009','已考完未评分',''),('094','009','未考',''),('095','009','考试中',''),('096','009','待考',''),('097','009','已评分',''),('098','','',''),('099','','',''),('100','','',''),('101','','',''),('102','','',''),('103','010','一',''),('104','010','二',''),('105','010','三',''),('106','010','四',''),('107','','',''),('108','','',''),('109','','',''),('110','','',''),('111','011','手工',''),('112','011','自动',''),('113','','',''),('114','','',''),('115','','',''),('116','','',''),('117','','',''),('118','','',''),('119','','',''),('120','','',''),('121','','',''),('122','','',''),('123','','',''),('124','','',''),('125','','',''),('126','','',''),('127','','',''),('128','','',''),('129','','',''),('130','','','');

#
# Source for table "ex_examinationpaper"
#

DROP TABLE IF EXISTS `ex_examinationpaper`;
CREATE TABLE `ex_examinationpaper` (
  `e_id` int(10) unsigned NOT NULL auto_increment,
  `e_name` varchar(100) default NULL,
  `e_type` varchar(3) default NULL,
  `e_timer` int(10) unsigned default '0',
  `e_idlist` text,
  `e_begin` datetime NOT NULL default '0000-00-00 00:00:00',
  `e_end` datetime NOT NULL default '0000-00-00 00:00:00',
  `e_examineelist` text,
  `e_grade` varchar(3) default NULL,
  `e_passvalue` int(10) unsigned default '0',
  `e_total` int(10) unsigned default '0',
  `e_state` varchar(3) default NULL,
  PRIMARY KEY  (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_examinationpaper"
#

INSERT INTO `ex_examinationpaper` VALUES (1,'测试考试','030',100,'1','2013-05-07 08:00:00','2013-05-07 10:00:00','<',NULL,60,100,'040'),(2,'2012-2013学年期中考试','031',30,'@@##8##7##6##5##4##3@@##14##13##12##11##10##9@@##19##18##16##15@@##21','2013-02-17 00:00:00','2013-02-18 00:00:00','##aaaa0001##aaaa0002##aaaa0003',NULL,60,100,'040'),(4,'2012-2013学年期末考试','033',30,'@@##22##8##7##23##5@@##12##11##10##9##2@@##18##16##15@@##21##20##17','2013-02-19 00:00:00','2013-02-20 00:00:00','##aaaa0001##aaaa0002##aaaa0003##aaaa0004',NULL,60,100,'040');

#
# Source for table "ex_examinationpaper_detail"
#

DROP TABLE IF EXISTS `ex_examinationpaper_detail`;
CREATE TABLE `ex_examinationpaper_detail` (
  `e_id` int(10) unsigned NOT NULL default '0',
  `q_id` int(10) unsigned NOT NULL default '0',
  `q_seq` int(10) unsigned default NULL,
  `q_type` varchar(3) default NULL,
  `q_value` float default NULL,
  `q_standard` text,
  PRIMARY KEY  (`e_id`,`q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_examinationpaper_detail"
#

INSERT INTO `ex_examinationpaper_detail` VALUES (2,3,NULL,NULL,NULL,NULL),(2,4,NULL,NULL,NULL,NULL),(2,5,NULL,NULL,NULL,NULL),(2,6,NULL,NULL,NULL,NULL),(2,7,NULL,NULL,NULL,NULL),(2,8,NULL,NULL,NULL,NULL),(2,9,NULL,NULL,NULL,NULL),(2,10,NULL,NULL,NULL,NULL),(2,11,NULL,NULL,NULL,NULL),(2,12,NULL,NULL,NULL,NULL),(2,13,NULL,NULL,NULL,NULL),(2,14,NULL,NULL,NULL,NULL),(2,15,NULL,NULL,NULL,NULL),(2,16,NULL,NULL,NULL,NULL),(2,18,NULL,NULL,NULL,NULL),(2,19,NULL,NULL,NULL,NULL),(2,21,NULL,NULL,NULL,NULL),(4,2,NULL,NULL,NULL,NULL),(4,5,NULL,NULL,NULL,NULL),(4,7,NULL,NULL,NULL,NULL),(4,8,NULL,NULL,NULL,NULL),(4,9,NULL,NULL,NULL,NULL),(4,10,NULL,NULL,NULL,NULL),(4,11,NULL,NULL,NULL,NULL),(4,12,NULL,NULL,NULL,NULL),(4,15,NULL,NULL,NULL,NULL),(4,16,NULL,NULL,NULL,NULL),(4,17,NULL,NULL,NULL,NULL),(4,18,NULL,NULL,NULL,NULL),(4,20,NULL,NULL,NULL,NULL),(4,21,NULL,NULL,NULL,NULL),(4,22,NULL,NULL,NULL,NULL),(4,23,NULL,NULL,NULL,NULL);

#
# Source for table "ex_examinee"
#

DROP TABLE IF EXISTS `ex_examinee`;
CREATE TABLE `ex_examinee` (
  `EXAMINEE_ID` varchar(8) NOT NULL default '',
  `PASSWORD` varchar(10) default NULL,
  `NAME` varchar(20) default NULL,
  `SEX` varchar(3) default NULL,
  `AGE` int(10) unsigned default NULL,
  `ORGANIZATION_ID` varchar(9) default NULL,
  `POST_INDEX` int(10) unsigned default NULL,
  `STATE` varchar(3) default NULL,
  `OPERATION` varchar(3) default NULL,
  `EDUCATION_INDEX` int(10) unsigned default NULL,
  `ADDRESS` varchar(80) default NULL,
  `PHONE` varchar(40) default NULL,
  `MOBILE` varchar(40) default NULL,
  `EMAIL` varchar(40) default NULL,
  `REMARK` varchar(200) default NULL,
  PRIMARY KEY  (`EXAMINEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_examinee"
#

INSERT INTO `ex_examinee` VALUES ('aaaa0001','aaaa0001','aaaa0001','056',22,'1',1,'063','105',1,'','',NULL,'',''),('aaaa1111','aaaa1111','123','056',22,'1',1,'063','105',1,'','',NULL,'',''),('abcd1234','abcd1234','abca1234','057',20,'3',1,'063','105',1,'','',NULL,'',''),('bbbb1111','bbbb1111','456','057',20,'2',4,'063','103',2,'','',NULL,'','');

#
# Source for table "ex_question"
#

DROP TABLE IF EXISTS `ex_question`;
CREATE TABLE `ex_question` (
  `Q_ID` int(10) unsigned NOT NULL auto_increment,
  `Q_CLASS` varchar(3) default NULL,
  `Q_KNOWLEDGE` varchar(3) default NULL,
  `Q_VALUE` float default NULL,
  `Q_TYPE` varchar(3) default NULL,
  `Q_DIFFICULTY` varchar(3) default NULL,
  `Q_CONTENT` text,
  `Q_ANSWER` text,
  `Q_STANDARD` text,
  `Q_PICTURE` varchar(100) default NULL,
  PRIMARY KEY  (`Q_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_question"
#

INSERT INTO `ex_question` VALUES (1,'070','077',10,NULL,'086','Java???????','??##??##??##??','B',''),(2,'070','077',5,'048','085','1+1=?，这个问题出得有水平吗？','不好说##有水平##胡扯##无所谓##无聊','AB',''),(3,'070','077',5,'047','085','在Java的世界里面，struts是什么？','mvc框架##cvs框架##aaa框架##bbb框架','A',''),(4,'070','077',5,'047','087','1+2=？','1##3##4##5','B',''),(5,'070','077',5,NULL,'085','sin(PI)=? ','1##-1##0##2','B',''),(6,'070','077',5,'047','086','湖北的省会城市是哪里？','北京##上海##武汉##西安','C',''),(7,'070','078',5,'047','086','抗日战争打了几年？','1##2##9##8','D',''),(8,'070','077',5,NULL,'087','???????','???##????##?????##????','A',''),(9,'070','077',5,'048','086','下列哪些是中国国产的品牌？','TCL##Haier##Panasonic##Baidu##Sony','ABD',''),(10,'070','077',5,'048','085','J2EE可以用来做什么？','做网站##做饭##做系统##做卫生##做火箭','AC',''),(11,'070','077',5,'048','085','下列哪些是J2EE中的技术？','JSP##Servlet##XML##IIS##ADO','ABC',''),(12,'070','077',5,'048','086','开水多少度才沸腾？','一般情况100度##我不关心##视情况而定##问水把##这是谁出的题目？','AC',''),(13,'070','079',5,'048','085','喝什么茶对身体的帮助是最好？','绿茶##红茶##龙井##冰红茶##无所谓啦','AC',''),(14,'070','078',5,'048','085','诗仙李白是什么人？','中国人##汉朝人##唐朝人##武汉人##男人','ACE',''),(15,'070','078',5,'049','085','中国的载人飞船：神舟（  ）号，在（）年度飞向太空成功！','','6,2005',''),(16,'070','077',10,'049','085','神舟六号飞船的飞天英雄是哪两位：（  ），（  ）！','','费俊龙,聂海胜',''),(17,'070','077',5,'050','085','Hibernate是用来干什么的，简单描述其特点？','','OR-Mapping产品，用来进行数据库持久层处理。','hibernate_logo_1.gif'),(18,'070','077',5,'049','086','中国足球队在（ ）年冲进世界杯，进了（ ）球？ ','','2002,0',''),(19,'070','079',10,'049','085','抗日战争的胜利方是（ ）方，打了（ ）年？','','中国,8',''),(20,'070','077',8,'050','085','抗日战争和程序开发有什么关系吗？请简述其内涵和外延。','','瞎扯',''),(21,'070','077',20,'050','085','谈恋爱要趁早？！请你根据自己的体会，用Java或者C语言编写出恋爱与男女之间的接口程序。（请附上注释，代码不能超过5行）','','瞎扯',''),(22,'070','077',5,'047','085','2+3=？','6##5##7##1','B',''),(23,'070','077',5,'047','085','7777+8888-7777=？','1##8888##2##0','B','');

#
# Source for table "ex_testpaper"
#

DROP TABLE IF EXISTS `ex_testpaper`;
CREATE TABLE `ex_testpaper` (
  `t_id` int(10) unsigned NOT NULL auto_increment,
  `EXAMINEE_ID` char(8) default NULL,
  `E_ID` int(10) unsigned default NULL,
  `T_BEGIN` datetime default NULL,
  `T_END` datetime default NULL,
  `T_PASSVALUE` float default NULL,
  `E_AUTOVALUE` int(10) unsigned default NULL,
  `E_MANUALVALUE` int(10) unsigned default NULL,
  `T_TOTAL` float default NULL,
  `T_STATE` char(3) default NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_testpaper"
#

INSERT INTO `ex_testpaper` VALUES (4,'aaaa0001',2,'2013-02-17 18:02:00','2013-02-17 18:04:03',60,60,18,78,'097'),(5,'aaaa0002',2,'2013-02-17 17:56:21',NULL,60,0,0,-1,'096'),(6,'aaaa0003',2,NULL,NULL,60,NULL,NULL,-1,'096'),(17,'aaaa0001',4,'2013-02-19 17:37:14','2013-02-19 17:37:44',60,50,29,79,'097'),(18,'aaaa0002',4,'2013-02-19 17:37:55','2013-02-19 17:38:21',60,50,43,93,'097'),(19,'aaaa0003',4,'2013-02-19 17:38:32','2013-02-19 17:38:56',60,50,30,80,'097'),(20,'aaaa0004',4,'2013-02-19 17:39:16','2013-02-19 17:39:46',60,45,30,75,'097');

#
# Source for table "ex_testpaperdetail"
#

DROP TABLE IF EXISTS `ex_testpaperdetail`;
CREATE TABLE `ex_testpaperdetail` (
  `T_ID` int(10) unsigned NOT NULL default '0',
  `Q_ID` int(10) unsigned NOT NULL default '0',
  `T_ANSWER` text,
  `T_VALUE` float default '0',
  PRIMARY KEY  (`T_ID`,`Q_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "ex_testpaperdetail"
#

INSERT INTO `ex_testpaperdetail` VALUES (4,3,'A',5),(4,4,'B',5),(4,5,'B',5),(4,6,'C',5),(4,7,'D',5),(4,8,'A',5),(4,9,'ABD',5),(4,10,'AC',5),(4,11,'ABC',5),(4,12,'AC',5),(4,13,'AC',5),(4,14,'ACE',5),(4,15,'6,2005',5),(4,16,'xxx,xxx,',0),(4,18,'2002,0',5),(4,19,'china,8',8),(4,21,'xxxxxx',0),(5,3,NULL,-1),(5,4,NULL,-1),(5,5,NULL,-1),(5,6,NULL,-1),(5,7,NULL,-1),(5,8,NULL,-1),(5,9,NULL,-1),(5,10,NULL,-1),(5,11,NULL,-1),(5,12,NULL,-1),(5,13,NULL,-1),(5,14,NULL,-1),(5,15,NULL,-1),(5,16,NULL,-1),(5,18,NULL,-1),(5,19,NULL,-1),(5,21,NULL,-1),(6,3,NULL,-1),(6,4,NULL,-1),(6,5,NULL,-1),(6,6,NULL,-1),(6,7,NULL,-1),(6,8,NULL,-1),(6,9,NULL,-1),(6,10,NULL,-1),(6,11,NULL,-1),(6,12,NULL,-1),(6,13,NULL,-1),(6,14,NULL,-1),(6,15,NULL,-1),(6,16,NULL,-1),(6,18,NULL,-1),(6,19,NULL,-1),(6,21,NULL,-1),(17,2,'AB',5),(17,5,'B',5),(17,7,'D',5),(17,8,'A',5),(17,9,'ABD',5),(17,10,'AC',5),(17,11,'ABC',5),(17,12,'AC',5),(17,15,'',3),(17,16,'',8),(17,17,'',5),(17,18,'',5),(17,20,'',8),(17,21,'',0),(17,22,'B',5),(17,23,'B',5),(18,2,'AB',5),(18,5,'B',5),(18,7,'D',5),(18,8,'A',5),(18,9,'ABD',5),(18,10,'AC',5),(18,11,'ABC',5),(18,12,'AC',5),(18,15,'',5),(18,16,'',5),(18,17,'',5),(18,18,'',5),(18,20,'',8),(18,21,'',15),(18,22,'B',5),(18,23,'B',5),(19,2,'AB',5),(19,5,'B',5),(19,7,'D',5),(19,8,'A',5),(19,9,'ABD',5),(19,10,'AC',5),(19,11,'ABC',5),(19,12,'AC',5),(19,15,'',5),(19,16,'',8),(19,17,'',5),(19,18,'',5),(19,20,'',5),(19,21,'',2),(19,22,'B',5),(19,23,'B',5),(20,2,'AB',5),(20,5,'B',5),(20,7,'D',5),(20,8,'A',5),(20,9,'ABDE',0),(20,10,'AC',5),(20,11,'ABC',5),(20,12,'AC',5),(20,15,'',5),(20,16,'',5),(20,17,'',5),(20,18,'',5),(20,20,'',5),(20,21,'',5),(20,22,'B',5),(20,23,'B',5);

#
# Source for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`test`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "test"
#

INSERT INTO `test` VALUES ('1234'),('abcd');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
