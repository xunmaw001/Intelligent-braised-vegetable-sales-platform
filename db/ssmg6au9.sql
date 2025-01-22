-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmg6au9
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmg6au9`
--

/*!40000 DROP DATABASE IF EXISTS `ssmg6au9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmg6au9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmg6au9`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380617922 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-04-08 01:06:52',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-04-08 01:06:52',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-04-08 01:06:52',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-04-08 01:06:52',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-04-08 01:06:52',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-04-08 01:06:52',16,'宇宙银河系月球1号','月某','13823888886','是'),(1649380617921,'2022-04-08 01:16:57',1649380370629,'北京路5号','王强','13823877774','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'lucaixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380868143 DEFAULT CHARSET=utf8 COMMENT='售后服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2022-04-08 01:06:52',1,1,'提问1','回复1',1),(62,'2022-04-08 01:06:52',2,2,'提问2','回复2',2),(63,'2022-04-08 01:06:52',3,3,'提问3','回复3',3),(64,'2022-04-08 01:06:52',4,4,'提问4','回复4',4),(65,'2022-04-08 01:06:52',5,5,'提问5','回复5',5),(66,'2022-04-08 01:06:52',6,6,'提问6','回复6',6),(1649380812837,'2022-04-08 01:20:11',1649380370629,NULL,'如果有问题，用户可以这里向管理员发送售后服务信息',NULL,0),(1649380868142,'2022-04-08 01:21:08',1649380370629,1,NULL,'管理员查看回复售后服务信息',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslucaixinxi`
--

DROP TABLE IF EXISTS `discusslucaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslucaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380773610 DEFAULT CHARSET=utf8 COMMENT='卤菜信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslucaixinxi`
--

LOCK TABLES `discusslucaixinxi` WRITE;
/*!40000 ALTER TABLE `discusslucaixinxi` DISABLE KEYS */;
INSERT INTO `discusslucaixinxi` VALUES (101,'2022-04-08 01:06:52',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-08 01:06:52',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-08 01:06:52',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-08 01:06:52',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-08 01:06:52',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-08 01:06:52',6,6,'用户名6','评论内容6','回复内容6'),(1649380773609,'2022-04-08 01:19:33',1649380531518,1649380370629,'001','好吃',NULL);
/*!40000 ALTER TABLE `discusslucaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucaifenlei`
--

DROP TABLE IF EXISTS `lucaifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lucaifenlei` varchar(200) DEFAULT NULL COMMENT '卤菜分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='卤菜分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucaifenlei`
--

LOCK TABLES `lucaifenlei` WRITE;
/*!40000 ALTER TABLE `lucaifenlei` DISABLE KEYS */;
INSERT INTO `lucaifenlei` VALUES (31,'2022-04-08 01:06:52','卤菜分类1'),(32,'2022-04-08 01:06:52','卤菜分类2'),(33,'2022-04-08 01:06:52','卤菜分类3'),(34,'2022-04-08 01:06:52','卤菜分类4'),(35,'2022-04-08 01:06:52','卤菜分类5'),(36,'2022-04-08 01:06:52','卤菜分类6');
/*!40000 ALTER TABLE `lucaifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucaixinxi`
--

DROP TABLE IF EXISTS `lucaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lucaimingcheng` varchar(200) DEFAULT NULL COMMENT '卤菜名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lucaifenlei` varchar(200) DEFAULT NULL COMMENT '卤菜分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `zhizuoriqi` date DEFAULT NULL COMMENT '制作日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `lucaixiangqing` longtext COMMENT '卤菜详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jf` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380531519 DEFAULT CHARSET=utf8 COMMENT='卤菜信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucaixinxi`
--

LOCK TABLES `lucaixinxi` WRITE;
/*!40000 ALTER TABLE `lucaixinxi` DISABLE KEYS */;
INSERT INTO `lucaixinxi` VALUES (41,'2022-04-08 01:06:52','卤菜名称1','upload/1649380168422.webp','卤菜分类1','规格1','口味1','2022-04-08','保质期1','<p>卤菜详情1</p>','商家账号1','商家名称1','商家地址1','2022-04-13 14:40:18',4,10000,99.9),(42,'2022-04-08 01:06:52','卤菜名称2','upload/1649380190066.webp','卤菜分类2','规格2','口味2','2022-04-08','保质期2','<p>卤菜详情2</p>','商家账号2','商家名称2','商家地址2','2022-04-08 09:12:55',5,10000,99.9),(43,'2022-04-08 01:06:52','卤菜名称3','upload/1649380209557.webp','卤菜分类3','规格3','口味3','2022-04-08','保质期3','<p>卤菜详情3</p>','商家账号3','商家名称3','商家地址3','2022-04-08 09:10:05',4,10000,99.9),(44,'2022-04-08 01:06:52','卤菜名称4','upload/1649380232458.webp','卤菜分类4','规格4','口味4','2022-04-08','保质期4','<p>卤菜详情4</p>','商家账号4','商家名称4','商家地址4','2022-04-08 09:10:28',5,10000,99.9),(45,'2022-04-08 01:06:52','卤菜名称5','upload/1649380251871.webp','卤菜分类5','规格5','口味5','2022-04-08','保质期5','<p>卤菜详情5</p>','商家账号5','商家名称5','商家地址5','2022-04-08 09:10:47',6,10000,99.9),(46,'2022-04-08 01:06:52','卤菜名称6','upload/1649380273059.webp','卤菜分类6','规格6','口味6','2022-04-08','保质期6','<p>卤菜详情6</p>','商家账号6','商家名称6','商家地址6','2022-04-08 09:11:57',9,10000,99.9),(1649380531518,'2022-04-08 01:15:30','卤耳朵','upload/1649380474208.webp','卤菜分类2','800g','微辣','2022-04-08','三天','<p><strong>智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台</strong><img src=\"http://localhost:8080/ssmg6au9/upload/1649380528167.webp\"><strong>智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台智能卤菜销售平台</strong></p>','002','新作卤味','人民北路5号','2022-04-08 09:19:36',11,500,26);
/*!40000 ALTER TABLE `lucaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'lucaixinxi' COMMENT '商品表名',
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
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380657264 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1649380657263,'2022-04-08 01:17:37','2022489173785472920','lucaixinxi',1649380370629,1649380531518,'卤耳朵','upload/1649380474208.webp',2,26,26,52,52,1,'已完成','北京路5号','13823877774','王强','<p>商家发货后输入物流信息</p>','002');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `jf` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380449799 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2022-04-08 01:06:52','商家账号1','123456','商家名称1','upload/shangjia_tupian1.jpg','联系人1','13823888881','商家地址1',10000,100),(22,'2022-04-08 01:06:52','商家账号2','123456','商家名称2','upload/shangjia_tupian2.jpg','联系人2','13823888882','商家地址2',10000,100),(23,'2022-04-08 01:06:52','商家账号3','123456','商家名称3','upload/shangjia_tupian3.jpg','联系人3','13823888883','商家地址3',10000,100),(24,'2022-04-08 01:06:52','商家账号4','123456','商家名称4','upload/shangjia_tupian4.jpg','联系人4','13823888884','商家地址4',10000,100),(25,'2022-04-08 01:06:52','商家账号5','123456','商家名称5','upload/shangjia_tupian5.jpg','联系人5','13823888885','商家地址5',10000,100),(26,'2022-04-08 01:06:52','商家账号6','123456','商家名称6','upload/shangjia_tupian6.jpg','联系人6','13823888886','商家地址6',10000,100),(1649380449798,'2022-04-08 01:14:09','002','123456','新作卤味','upload/1649380461810.webp','陈先生','13823899996','人民北路5号',0,0);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','q3wcltqv3mnlaaha540hqc34jxtus5sk','2022-04-08 01:08:46','2022-04-13 07:40:18'),(2,21,'商家账号1','shangjia','商家','busehcothxg1khirsa6a1pt58bclctqr','2022-04-08 01:09:16','2022-04-08 02:09:17'),(3,22,'商家账号2','shangjia','商家','l2ikw0f2sb6xzsxutplnqszgfeo9q1ev','2022-04-08 01:09:42','2022-04-08 02:09:43'),(4,23,'商家账号3','shangjia','商家','qp4u7tpkp9le5memx5ptrscci60bol4x','2022-04-08 01:10:00','2022-04-08 02:10:01'),(5,24,'商家账号4','shangjia','商家','824q3lmg94n35c89wl5m91bz1mf0tpcj','2022-04-08 01:10:22','2022-04-08 02:10:23'),(6,25,'商家账号5','shangjia','商家','e879e8kliin8vyehvkufc77yekyojhsa','2022-04-08 01:10:44','2022-04-08 02:10:44'),(7,26,'商家账号6','shangjia','商家','zdijks5xnvo1egmaoclgkyah3nktc9y0','2022-04-08 01:11:04','2022-04-08 02:11:05'),(8,1649380370629,'001','yonghu','用户','5ldji7et5pogx3nkya0bdx1fx6bckf6y','2022-04-08 01:12:54','2022-04-08 02:19:02'),(9,1649380449798,'002','shangjia','商家','s9ehok9f8exubrkpbbnycbqrj3zw7zcv','2022-04-08 01:14:14','2022-04-08 02:20:18'),(10,1,'abo','users','管理员','j508xlb9g2zl06e5eibf4xx5hndv8jcj','2022-04-08 01:20:32','2022-04-08 02:20:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-08 01:06:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jf` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380370630 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-08 01:06:52','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男','13823888881',10000,100),(12,'2022-04-08 01:06:52','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男','13823888882',10000,100),(13,'2022-04-08 01:06:52','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男','13823888883',10000,100),(14,'2022-04-08 01:06:52','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男','13823888884',10000,100),(15,'2022-04-08 01:06:52','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男','13823888885',10000,100),(16,'2022-04-08 01:06:52','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男','13823888886',10000,100),(1649380370629,'2022-04-08 01:12:50','001','123456','王强','upload/1649380420111.jpg','男','13823877774',52,448);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianzixun`
--

DROP TABLE IF EXISTS `zaixianzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lucaimingcheng` varchar(200) DEFAULT NULL COMMENT '卤菜名称',
  `lucaifenlei` varchar(200) DEFAULT NULL COMMENT '卤菜分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `zixunneirong` longtext COMMENT '咨询内容',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649380589656 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianzixun`
--

LOCK TABLES `zaixianzixun` WRITE;
/*!40000 ALTER TABLE `zaixianzixun` DISABLE KEYS */;
INSERT INTO `zaixianzixun` VALUES (51,'2022-04-08 01:06:52','卤菜名称1','卤菜分类1','口味1','商家账号1','咨询内容1','2022-04-08 09:06:52','用户账号1','用户姓名1','手机号码1','是',''),(52,'2022-04-08 01:06:52','卤菜名称2','卤菜分类2','口味2','商家账号2','咨询内容2','2022-04-08 09:06:52','用户账号2','用户姓名2','手机号码2','是',''),(53,'2022-04-08 01:06:52','卤菜名称3','卤菜分类3','口味3','商家账号3','咨询内容3','2022-04-08 09:06:52','用户账号3','用户姓名3','手机号码3','是',''),(54,'2022-04-08 01:06:52','卤菜名称4','卤菜分类4','口味4','商家账号4','咨询内容4','2022-04-08 09:06:52','用户账号4','用户姓名4','手机号码4','是',''),(55,'2022-04-08 01:06:52','卤菜名称5','卤菜分类5','口味5','商家账号5','咨询内容5','2022-04-08 09:06:52','用户账号5','用户姓名5','手机号码5','是',''),(56,'2022-04-08 01:06:52','卤菜名称6','卤菜分类6','口味6','商家账号6','咨询内容6','2022-04-08 09:06:52','用户账号6','用户姓名6','手机号码6','是',''),(1649380589655,'2022-04-08 01:16:28','卤耳朵','卤菜分类2','微辣','002','<p>输入要咨询的内容</p>','2022-04-08 09:16:20','001','王强','13823877774','是','审核回复咨询信息');
/*!40000 ALTER TABLE `zaixianzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 11:35:14
