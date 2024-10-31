/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmg08o4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmg08o4` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmg08o4`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-21 17:45:38',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-21 17:45:38',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-21 17:45:38',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-21 17:45:38',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-21 17:45:38',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-21 17:45:38',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `changjianwenti` */

DROP TABLE IF EXISTS `changjianwenti`;

CREATE TABLE `changjianwenti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wentimingcheng` varchar(200) DEFAULT NULL COMMENT '问题名称',
  `wentileixing` varchar(200) DEFAULT NULL COMMENT '问题类型',
  `wentitupian` varchar(200) DEFAULT NULL COMMENT '问题图片',
  `wentineirong` longtext COMMENT '问题内容',
  `jiejuefangfa` longtext COMMENT '解决方法',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='常见问题';

/*Data for the table `changjianwenti` */

insert  into `changjianwenti`(`id`,`addtime`,`wentimingcheng`,`wentileixing`,`wentitupian`,`wentineirong`,`jiejuefangfa`,`faburiqi`) values (31,'2021-03-21 17:45:38','问题名称1','问题类型1','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian1.jpg','问题内容1','解决方法1','2021-03-21'),(32,'2021-03-21 17:45:38','问题名称2','问题类型2','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian2.jpg','问题内容2','解决方法2','2021-03-21'),(33,'2021-03-21 17:45:38','问题名称3','问题类型3','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian3.jpg','问题内容3','解决方法3','2021-03-21'),(34,'2021-03-21 17:45:38','问题名称4','问题类型4','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian4.jpg','问题内容4','解决方法4','2021-03-21'),(35,'2021-03-21 17:45:38','问题名称5','问题类型5','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian5.jpg','问题内容5','解决方法5','2021-03-21'),(36,'2021-03-21 17:45:38','问题名称6','问题类型6','http://localhost:8080/ssmg08o4/upload/changjianwenti_wentitupian6.jpg','问题内容6','解决方法6','2021-03-21');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='问题反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-03-21 17:45:38',1,1,'提问1','回复1',1),(52,'2021-03-21 17:45:38',2,2,'提问2','回复2',2),(53,'2021-03-21 17:45:38',3,3,'提问3','回复3',3),(54,'2021-03-21 17:45:38',4,4,'提问4','回复4',4),(55,'2021-03-21 17:45:38',5,5,'提问5','回复5',5),(56,'2021-03-21 17:45:38',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmg08o4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmg08o4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmg08o4/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusschangjianwenti` */

DROP TABLE IF EXISTS `discusschangjianwenti`;

CREATE TABLE `discusschangjianwenti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='常见问题评论表';

/*Data for the table `discusschangjianwenti` */

insert  into `discusschangjianwenti`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-21 17:45:38',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-21 17:45:38',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-21 17:45:38',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-21 17:45:38',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-21 17:45:38',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-21 17:45:38',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusspiaowuxinxi` */

DROP TABLE IF EXISTS `discusspiaowuxinxi`;

CREATE TABLE `discusspiaowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='票务信息评论表';

/*Data for the table `discusspiaowuxinxi` */

insert  into `discusspiaowuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-21 17:45:38',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-21 17:45:38',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-21 17:45:38',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-21 17:45:38',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-21 17:45:38',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-21 17:45:38',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyanyuanjianjie` */

DROP TABLE IF EXISTS `discussyanyuanjianjie`;

CREATE TABLE `discussyanyuanjianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='演员简介评论表';

/*Data for the table `discussyanyuanjianjie` */

insert  into `discussyanyuanjianjie`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-21 17:45:38',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-21 17:45:38',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-21 17:45:38',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-21 17:45:38',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-21 17:45:38',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-21 17:45:38',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`),
  UNIQUE KEY `shouji` (`shouji`),
  UNIQUE KEY `shenfenzheng` (`shenfenzheng`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`shenfenzheng`,`money`) values (11,'2021-03-21 17:45:38','会员1','123456','姓名1','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang1.jpg','男','13823888881','440300199101010001',100),(12,'2021-03-21 17:45:38','会员2','123456','姓名2','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang2.jpg','男','13823888882','440300199202020002',100),(13,'2021-03-21 17:45:38','会员3','123456','姓名3','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang3.jpg','男','13823888883','440300199303030003',100),(14,'2021-03-21 17:45:38','会员4','123456','姓名4','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang4.jpg','男','13823888884','440300199404040004',100),(15,'2021-03-21 17:45:38','会员5','123456','姓名5','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang5.jpg','男','13823888885','440300199505050005',100),(16,'2021-03-21 17:45:38','会员6','123456','姓名6','http://localhost:8080/ssmg08o4/upload/huiyuan_touxiang6.jpg','男','13823888886','440300199606060006',100);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-21 17:45:38','标题1','简介1','http://localhost:8080/ssmg08o4/upload/news_picture1.jpg','内容1'),(92,'2021-03-21 17:45:38','标题2','简介2','http://localhost:8080/ssmg08o4/upload/news_picture2.jpg','内容2'),(93,'2021-03-21 17:45:38','标题3','简介3','http://localhost:8080/ssmg08o4/upload/news_picture3.jpg','内容3'),(94,'2021-03-21 17:45:38','标题4','简介4','http://localhost:8080/ssmg08o4/upload/news_picture4.jpg','内容4'),(95,'2021-03-21 17:45:38','标题5','简介5','http://localhost:8080/ssmg08o4/upload/news_picture5.jpg','内容5'),(96,'2021-03-21 17:45:38','标题6','简介6','http://localhost:8080/ssmg08o4/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'piaowuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `piaowuxinxi` */

DROP TABLE IF EXISTS `piaowuxinxi`;

CREATE TABLE `piaowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaowumingcheng` varchar(200) NOT NULL COMMENT '票务名称',
  `piaowutupian` varchar(200) DEFAULT NULL COMMENT '票务图片',
  `yanchuchengshi` varchar(200) NOT NULL COMMENT '演出城市',
  `yanchudidian` varchar(200) NOT NULL COMMENT '演出地点',
  `yanchushijian` datetime NOT NULL COMMENT '演出时间',
  `jieshushijian` datetime NOT NULL COMMENT '结束时间',
  `yanchumingdan` varchar(200) DEFAULT NULL COMMENT '演出名单',
  `zuoweileixing` varchar(200) NOT NULL COMMENT '座位类型',
  `piaowubeizhu` varchar(200) DEFAULT NULL COMMENT '票务备注',
  `xuanchuanshipin` varchar(200) DEFAULT NULL COMMENT '宣传视频',
  `yanchuxiangqing` longtext COMMENT '演出详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='票务信息';

/*Data for the table `piaowuxinxi` */

insert  into `piaowuxinxi`(`id`,`addtime`,`piaowumingcheng`,`piaowutupian`,`yanchuchengshi`,`yanchudidian`,`yanchushijian`,`jieshushijian`,`yanchumingdan`,`zuoweileixing`,`piaowubeizhu`,`xuanchuanshipin`,`yanchuxiangqing`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (21,'2021-03-21 17:45:38','票务名称1','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian1.jpg','演出城市1','演出地点1','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单1','普通','票务备注1','','演出详情1','2021-03-21 17:45:38',1,99.9,20,'1,3,5,7,9'),(22,'2021-03-21 17:45:38','票务名称2','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian2.jpg','演出城市2','演出地点2','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单2','普通','票务备注2','','演出详情2','2021-03-21 17:45:38',2,99.9,20,'1,3,5,7,9'),(23,'2021-03-21 17:45:38','票务名称3','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian3.jpg','演出城市3','演出地点3','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单3','普通','票务备注3','','演出详情3','2021-03-21 17:45:38',3,99.9,20,'1,3,5,7,9'),(24,'2021-03-21 17:45:38','票务名称4','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian4.jpg','演出城市4','演出地点4','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单4','普通','票务备注4','','演出详情4','2021-03-21 17:45:38',4,99.9,20,'1,3,5,7,9'),(25,'2021-03-21 17:45:38','票务名称5','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian5.jpg','演出城市5','演出地点5','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单5','普通','票务备注5','','演出详情5','2021-03-21 17:45:38',5,99.9,20,'1,3,5,7,9'),(26,'2021-03-21 17:45:38','票务名称6','http://localhost:8080/ssmg08o4/upload/piaowuxinxi_piaowutupian6.jpg','演出城市6','演出地点6','2021-03-21 17:45:38','2021-03-21 17:45:38','演出名单6','普通','票务备注6','','演出详情6','2021-03-21 17:45:38',6,99.9,20,'1,3,5,7,9');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','645o27hu31e17vbcg6zte35sh3vhmo0t','2021-03-21 17:48:13','2021-03-21 18:48:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-21 17:45:38');

/*Table structure for table `yanyuanjianjie` */

DROP TABLE IF EXISTS `yanyuanjianjie`;

CREATE TABLE `yanyuanjianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `xiangshengjiaose` varchar(200) NOT NULL COMMENT '相声角色',
  `zuopindaibiao` longtext COMMENT '作品代表',
  `renwujieshao` longtext COMMENT '人物介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='演员简介';

/*Data for the table `yanyuanjianjie` */

insert  into `yanyuanjianjie`(`id`,`addtime`,`xingming`,`touxiang`,`chushengriqi`,`xiangshengjiaose`,`zuopindaibiao`,`renwujieshao`) values (41,'2021-03-21 17:45:38','岳云鹏','http://localhost:8080/ssmg08o4/upload/1616320183364.jpg','1980-01-07','捧哏','作品代表1','<p>	岳云鹏，本名岳龙刚，1985年4月15日出生于河南省濮阳市<a href=\"https://baike.baidu.com/item/%E5%8D%97%E4%B9%90%E5%8E%BF/2551537\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">南乐县</a>，中国内地相声、影视男演员<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;。</p><p>	2004年，投身相声界，拜<a href=\"https://baike.baidu.com/item/%E9%83%AD%E5%BE%B7%E7%BA%B2/175780\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">郭德纲</a>为师，主攻<a href=\"https://baike.baidu.com/item/%E7%9B%B8%E5%A3%B0/197857\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">相声</a>、<a href=\"https://baike.baidu.com/item/%E5%A4%AA%E5%B9%B3%E6%AD%8C%E8%AF%8D/1794170\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">太平歌词</a>、<a href=\"https://baike.baidu.com/item/%E7%AB%B9%E6%9D%BF%E4%B9%A6/2323710\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">竹板书</a>。2005年，首次登台演出。</p><p>	2012年，主演<a href=\"https://baike.baidu.com/item/%E5%8D%A2%E5%8D%AB%E5%9B%BD/10096288\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">卢卫国</a>执导的喜剧电影《<a href=\"https://baike.baidu.com/item/%E5%B0%B1%E6%98%AF%E9%97%B9%E7%9D%80%E7%8E%A9%E7%9A%84/690158\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">就是闹着玩的</a>》。2013年在北京举办相声专场。<a href=\"https://baike.baidu.com/item/2014%E5%B9%B4%E4%B8%AD%E5%A4%AE%E7%94%B5%E8%A7%86%E5%8F%B0%E6%98%A5%E8%8A%82%E8%81%94%E6%AC%A2%E6%99%9A%E4%BC%9A/1692244\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">2014年中央电视台春节联欢晚会</a>参演小品《<a href=\"https://baike.baidu.com/item/%E6%89%B0%E6%B0%91%E4%BA%86%E6%82%A8/23436124\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">扰民了您</a>》获得春晚节目三等奖。<a href=\"https://baike.baidu.com/item/2015%E5%B9%B4%E4%B8%AD%E5%A4%AE%E7%94%B5%E8%A7%86%E5%8F%B0%E6%98%A5%E8%8A%82%E8%81%94%E6%AC%A2%E6%99%9A%E4%BC%9A/7059749\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">2015年中央电视台春节联欢晚会</a>与<a href=\"https://baike.baidu.com/item/%E5%AD%99%E8%B6%8A/3723464\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">孙越</a>表演相声《<a href=\"https://baike.baidu.com/item/%E6%88%91%E5%BF%8D%E4%B8%8D%E4%BA%86/16807154\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">我忍不了</a>》。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[2]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;同年主演喜剧电影《<a href=\"https://baike.baidu.com/item/%E7%85%8E%E9%A5%BC%E4%BE%A0/15702188\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">煎饼侠</a>》和电视剧《<a href=\"https://baike.baidu.com/item/%E5%85%88%E7%94%9F%EF%BC%8C%E4%BD%A0%E5%93%AA%E4%BD%8D\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">先生，你哪位</a>》，其改编的《<a href=\"https://baike.baidu.com/item/%E4%BA%94%E7%8E%AF%E4%B9%8B%E6%AD%8C/1000284\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">五环之歌</a>》也成为了《煎饼侠》的推广曲。2015年12月加盟央视一套户外真人秀《<a href=\"https://baike.baidu.com/item/%E4%BA%86%E4%B8%8D%E8%B5%B7%E7%9A%84%E6%8C%91%E6%88%98/18593535\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">了不起的挑战</a>》和<a href=\"https://baike.baidu.com/item/%E6%B5%99%E6%B1%9F%E5%8D%AB%E8%A7%86/868580\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">浙江卫视</a>真人秀《<a href=\"https://baike.baidu.com/item/%E8%A5%BF%E6%B8%B8%E5%A5%87%E9%81%87%E8%AE%B0/18731129\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">西游奇遇记</a>》。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[3-5]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;2016年1月加盟<a href=\"https://baike.baidu.com/item/%E4%B8%9C%E6%96%B9%E5%8D%AB%E8%A7%86/1224127\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">东方卫视</a>明星喜剧竞赛真人秀《<a href=\"https://baike.baidu.com/item/%E6%AC%A2%E4%B9%90%E5%96%9C%E5%89%A7%E4%BA%BA%E7%AC%AC%E4%BA%8C%E5%AD%A3/19160099\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">欢乐喜剧人第二季</a>》并获得总冠军；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[6-7]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;4月主演电影《<a href=\"https://baike.baidu.com/item/%E5%A4%A7%E9%97%B9%E5%A4%A9%E7%AB%BA/16966722\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">大闹天竺</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[8]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;5月主演电影《<a href=\"https://baike.baidu.com/item/%E4%BB%8E%E4%BD%A0%E7%9A%84%E5%85%A8%E4%B8%96%E7%95%8C%E8%B7%AF%E8%BF%87/16325805\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">从你的全世界路过</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[9]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;7月主演电影《<a href=\"https://baike.baidu.com/item/%E7%96%AF%E5%B2%B3%E6%92%AC%E4%BD%B3%E4%BA%BA/19820877\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">疯岳撬佳人</a>》<span style=\"color: rgb(51, 102, 204);\">&nbsp;[10]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;8月主演电影《<a href=\"https://baike.baidu.com/item/%E6%AC%A2%E4%B9%90%E5%96%9C%E5%89%A7%E4%BA%BA/19878858\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">欢乐喜剧人</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[11]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;9月加盟<a href=\"https://baike.baidu.com/item/%E6%B5%99%E6%B1%9F%E5%8D%AB%E8%A7%86/868580\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">浙江卫视</a>喜剧竞演综艺节目《<a href=\"https://baike.baidu.com/item/%E5%96%9C%E5%89%A7%E6%80%BB%E5%8A%A8%E5%91%98/19914118\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">喜剧总动员</a>》<span style=\"color: rgb(51, 102, 204);\">&nbsp;[12]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;、主演电影《<a href=\"https://baike.baidu.com/item/%E6%96%AD%E7%89%87%E4%B9%8B%E9%99%A9%E9%80%94%E5%A4%BA%E5%AE%9D/21504577\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">断片之险途夺宝</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[13]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;12月加盟<a href=\"https://baike.baidu.com/item/%E6%B1%9F%E8%8B%8F%E5%8D%AB%E8%A7%86/6570703\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">江苏卫视</a>户外明星挑战类真人秀《<a href=\"https://baike.baidu.com/item/%E6%88%91%E4%BB%AC%E7%9A%84%E6%8C%91%E6%88%98/20155165\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">我们的挑战</a>》。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[14]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;2017年2月加盟<a href=\"https://baike.baidu.com/item/%E6%B5%99%E6%B1%9F%E5%8D%AB%E8%A7%86/868580\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">浙江卫视</a>美食传情感恩真人秀《<a href=\"https://baike.baidu.com/item/%E7%86%9F%E6%82%89%E7%9A%84%E5%91%B3%E9%81%93%E7%AC%AC%E4%BA%8C%E5%AD%A3/20387453\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">熟悉的味道第二季</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[15-16]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;4月主演电影《<a href=\"https://baike.baidu.com/item/%E5%A6%96%E9%93%83%E9%93%83\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">妖铃铃</a>》，饰演徐天宇；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[17]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;8月主演电影《<a href=\"https://baike.baidu.com/item/%E7%A5%96%E5%AE%97%E5%8D%81%E4%B9%9D%E4%BB%A3\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">祖宗十九代</a>》，饰演贝小贝；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[18]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;12月主演电影《<a href=\"https://baike.baidu.com/item/%E9%BC%A0%E8%83%86%E8%8B%B1%E9%9B%84/20791869\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">鼠胆英雄</a>》，饰演闫大海。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[19]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;2018年4月加盟<a href=\"https://baike.baidu.com/item/%E6%B1%9F%E8%8B%8F%E5%8D%AB%E8%A7%86/6570703\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">江苏卫视</a>音乐唱作真人秀《<a href=\"https://baike.baidu.com/item/%E6%97%A0%E9%99%90%E6%AD%8C%E8%B0%A3%E5%AD%A3/22484465\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">无限歌谣季</a>》；<span style=\"color: rgb(51, 102, 204);\">&nbsp;[20]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;6月加盟《<a href=\"https://baike.baidu.com/item/SNL/5403151\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">SNL</a>》中国版《<a href=\"https://baike.baidu.com/item/%E5%91%A8%E5%85%AD%E5%A4%9C%E7%8E%B0%E5%9C%BA/22548904\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">周六夜现场</a>》<span style=\"color: rgb(51, 102, 204);\">&nbsp;[21]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;。</p><p>	2019年8月，福布斯发布中国100名人榜，岳云鹏位列93位</p><p><img src=\"http://localhost:8080/ssmg08o4/upload/1616320179431.jpg\"></p>'),(42,'2021-03-21 17:45:38','姓名2','http://localhost:8080/ssmg08o4/upload/yanyuanjianjie_touxiang2.jpg','2021-03-21','捧哏','作品代表2','人物介绍2'),(43,'2021-03-21 17:45:38','姓名3','http://localhost:8080/ssmg08o4/upload/yanyuanjianjie_touxiang3.jpg','2021-03-21','捧哏','作品代表3','人物介绍3'),(44,'2021-03-21 17:45:38','姓名4','http://localhost:8080/ssmg08o4/upload/yanyuanjianjie_touxiang4.jpg','2021-03-21','捧哏','作品代表4','人物介绍4'),(45,'2021-03-21 17:45:38','姓名5','http://localhost:8080/ssmg08o4/upload/yanyuanjianjie_touxiang5.jpg','2021-03-21','捧哏','作品代表5','人物介绍5'),(46,'2021-03-21 17:45:38','姓名6','http://localhost:8080/ssmg08o4/upload/yanyuanjianjie_touxiang6.jpg','2021-03-21','捧哏','作品代表6','人物介绍6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
