/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yingjizhiyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yingjizhiyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yingjizhiyuanguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-15 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-03-15 11:41:54');

/*Table structure for table `jichusheshi` */

DROP TABLE IF EXISTS `jichusheshi`;

CREATE TABLE `jichusheshi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '设施名称 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '设施图片',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '设施简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='基础设施';

/*Data for the table `jichusheshi` */

insert  into `jichusheshi`(`id`,`name`,`img_photo`,`jianjie_content`) values (1,'设施名称1','http://localhost:8080/yingjizhiyuanguanli/file/download?fileName=1615554757152.jpg','<img src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615554757157.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615554757157.jpg\">\r\n');

/*Table structure for table `kejituandui` */

DROP TABLE IF EXISTS `kejituandui`;

CREATE TABLE `kejituandui` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '团队名称 Search',
  `fuzheren` varchar(200) DEFAULT NULL COMMENT '团队负责人 Search',
  `team_time` timestamp NULL DEFAULT NULL COMMENT '团队创建时间',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '团队简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='科技团队';

/*Data for the table `kejituandui` */

insert  into `kejituandui`(`id`,`name`,`fuzheren`,`team_time`,`jianjie_content`) values (1,'团队名称1','团队负责人1','2021-03-12 21:08:47','团队简介1\r\n');

/*Table structure for table `kejizhuangbei` */

DROP TABLE IF EXISTS `kejizhuangbei`;

CREATE TABLE `kejizhuangbei` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '装备名称 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '装备图片',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '装备简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='科技装备';

/*Data for the table `kejizhuangbei` */

insert  into `kejizhuangbei`(`id`,`name`,`img_photo`,`jianjie_content`) values (1,'装备名称1','http://localhost:8080/yingjizhiyuanguanli/file/download?fileName=1615555814770.jpg','装备简介1<img src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615555810174.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615555810174.jpg\">\r\n');

/*Table structure for table `keyanchengguo` */

DROP TABLE IF EXISTS `keyanchengguo`;

CREATE TABLE `keyanchengguo` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '成果名称 Search',
  `kjtd_types` int(11) DEFAULT NULL COMMENT '研发团队',
  `team_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '成果简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='科研成果';

/*Data for the table `keyanchengguo` */

insert  into `keyanchengguo`(`id`,`name`,`kjtd_types`,`team_time`,`jianjie_content`) values (1,'成果名称1',1,'2021-03-12 21:26:23','成果简介1\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','modnnb4bfqn77mjs7fzlykqqqu0lgqia','2021-03-04 11:02:31','2021-03-15 18:27:01'),(6,1,'111','users','应急科技人才','gm6mzdsl5uvawch974ba992tw1ycem3f','2021-03-15 17:14:17','2021-03-15 18:14:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-01 00:00:00');

/*Table structure for table `yanfapingtai` */

DROP TABLE IF EXISTS `yanfapingtai`;

CREATE TABLE `yanfapingtai` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '平台名称 Search',
  `yanfaxiangm` varchar(200) DEFAULT NULL COMMENT '研发项目',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '团队简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='研发平台';

/*Data for the table `yanfapingtai` */

insert  into `yanfapingtai`(`id`,`name`,`yanfaxiangm`,`jianjie_content`) values (1,'平台名称1','研发项目1','团队简介1\r\n');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`role`) values (1,'小金','111','111','http://localhost:8080/yingjizhiyuanguanli/file/download?fileName=1615555884020.jpg',1,'17796312333','应急科技人才'),(2,'小札','222','222','http://localhost:8080/yingjizhiyuanguanli/file/download?fileName=1615555876635.jpg',2,'12312312333','应急科技人才');

/*Table structure for table `ziliaoku` */

DROP TABLE IF EXISTS `ziliaoku`;

CREATE TABLE `ziliaoku` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '资料名称 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '资料图片',
  `jianjie_content` varchar(200) DEFAULT NULL COMMENT '资料介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资料库';

/*Data for the table `ziliaoku` */

insert  into `ziliaoku`(`id`,`name`,`img_photo`,`jianjie_content`) values (1,'资料名称1','http://localhost:8080/yingjizhiyuanguanli/file/download?fileName=1615555851686.jpg','<img src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615555851686.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/yingjizhiyuanguanli/upload/1615555851686.jpg\">资料介绍1\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
