/*
MySQL Backup
Source Server Version: 5.5.47
Source Database: blogwebsite_db
Date: 2016/9/3 19:36:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `article_tb`
-- ----------------------------
DROP TABLE IF EXISTS `article_tb`;
CREATE TABLE `article_tb` (
  `title` varchar(45) DEFAULT NULL,
  `articleIndex` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT NULL,
  `artidate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章时间戳',
  `category` varchar(10) DEFAULT NULL COMMENT '文章分类：动态|随笔(1|2)',
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_user_article_idx` (`userId`),
  CONSTRAINT `fk_user_article` FOREIGN KEY (`userId`) REFERENCES `user_tb` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user_tb`
-- ----------------------------
DROP TABLE IF EXISTS `user_tb`;
CREATE TABLE `user_tb` (
  `userId` varchar(45) NOT NULL,
  `nickName` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `whitelist`
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whiteusers` varchar(45) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `article_tb` VALUES ('bobo','904046646','cai','2016-07-30 17:04:56','1','78'), ('各供热管','5656','cai','2016-07-30 17:05:00','1','79'), ('','-2000768457','cai','2016-07-30 17:05:03','1','80'), ('4月','6767','cai','2016-07-30 17:05:05','1','81'), ('测试','9090','cai','2016-07-30 17:05:07','1','82'), ('人间四月天','-47100735','cai','2016-07-30 17:05:11','2','83'), ('的非官方个','-316716398','cai','2016-07-30 17:05:13','1','84'), ('互联网行业的鄙视链之面面观','1714047415','cai','2016-07-30 17:05:16','2','85'), ('dsf','f','cai','2016-07-30 17:05:20','1','86'), ('dfv','dvd','cai','2016-07-30 17:05:22','2','87'), ('ddd','257995990','cai','2016-07-30 16:38:49','1','88'), ('如果','d','cai','2016-07-30 16:32:38','2','89'), ('dv','41','cai','2016-07-31 19:18:29',NULL,'90'), ('w',NULL,NULL,'2016-07-31 20:17:01',NULL,'91'), ('xxxxx','-84021178','cai','2016-07-31 20:33:05','2','92'), ('tyh','-1794601216','cai','2016-07-31 20:38:06','1','96'), ('鸡汤','-1781054683','cai','2016-07-31 20:40:08','1','97');
INSERT INTO `user_tb` VALUES ('cai','d','d');
INSERT INTO `whitelist` VALUES ('1','cai','杭州'), ('2','qq','武汉'), ('3','蔡清','杭州');
