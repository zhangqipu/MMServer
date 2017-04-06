CREATE DATABASE  IF NOT EXISTS `maimang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `maimang`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: maimang
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '收货人名称',
  `phone` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `area` varchar(255) DEFAULT NULL COMMENT '所在地区',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `user_id` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_address` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('7199216c191a11e7b35dd4be3bebe9cd','张齐朴','15919878375','深圳市 南山区','广东省 深圳市 南山区 科兴科学园','9a32ec34191511e7b35dd4be3bebe9cd',0),('849adc42191a11e7b35dd4be3bebe9cd','张齐朴','15919878375','深圳市 南山区','广东省 深圳市 南山区 科苑北路','9a32ec34191511e7b35dd4be3bebe9cd',0),('8af844f8191a11e7b35dd4be3bebe9cd','张齐朴','15919878375','深圳市 南山区','广东省 深圳市 南山区 腾讯大厦','9a32ec34191511e7b35dd4be3bebe9cd',0),('91e68810191a11e7b35dd4be3bebe9cd','张齐朴','15919878375','深圳市 南山区','广东省 深圳市 南山区 科苑立交','9a32ec34191511e7b35dd4be3bebe9cd',0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `object_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '帖子标题',
  `content` varchar(255) DEFAULT NULL COMMENT '帖子内容',
  `read_num` int(11) DEFAULT NULL COMMENT '阅读数量',
  `period` varchar(45) DEFAULT NULL COMMENT '期刊',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1),
  `user_id` varchar(255) DEFAULT NULL COMMENT '发布的用户',
  PRIMARY KEY (`object_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_post` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('07650cde191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:35:24.2','9a32ec34191511e7b35dd4be3bebe9cd'),('1c97af6c191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:35:59.7','9a32ec34191511e7b35dd4be3bebe9cd'),('1d029dc2191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:00.4','9a32ec34191511e7b35dd4be3bebe9cd'),('1d39bd52191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:00.8','9a32ec34191511e7b35dd4be3bebe9cd'),('1d7dc948191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:01.2','9a32ec34191511e7b35dd4be3bebe9cd'),('1dbf30ea191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:01.7','9a32ec34191511e7b35dd4be3bebe9cd'),('1e076158191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:02.1','9a32ec34191511e7b35dd4be3bebe9cd'),('1e42e444191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:02.5','9a32ec34191511e7b35dd4be3bebe9cd'),('1e83f146191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:02.9','9a32ec34191511e7b35dd4be3bebe9cd'),('1ec7f40e191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:03.4','9a32ec34191511e7b35dd4be3bebe9cd'),('1f06a21c191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:03.8','9a32ec34191511e7b35dd4be3bebe9cd'),('1f463378191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:04.2','9a32ec34191511e7b35dd4be3bebe9cd'),('1f84c52a191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:04.6','9a32ec34191511e7b35dd4be3bebe9cd'),('1fcac502191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:05.1','9a32ec34191511e7b35dd4be3bebe9cd'),('2010f644191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:05.5','9a32ec34191511e7b35dd4be3bebe9cd'),('2059004c191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:06.0','9a32ec34191511e7b35dd4be3bebe9cd'),('209c2c32191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:06.5','9a32ec34191511e7b35dd4be3bebe9cd'),('20d5b880191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:06.8','9a32ec34191511e7b35dd4be3bebe9cd'),('211f4b6c191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:07.3','9a32ec34191511e7b35dd4be3bebe9cd'),('216aeb3a191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:07.8','9a32ec34191511e7b35dd4be3bebe9cd'),('29eef062191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:22.1','9a32ec34191511e7b35dd4be3bebe9cd'),('2a11423e191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:22.3','9a32ec34191511e7b35dd4be3bebe9cd'),('2a32849e191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:22.5','9a32ec34191511e7b35dd4be3bebe9cd'),('2a4ba8c0191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:22.7','9a32ec34191511e7b35dd4be3bebe9cd'),('2a61e25c191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:22.9','9a32ec34191511e7b35dd4be3bebe9cd'),('2a798ede191a11e7b35dd4be3bebe9cd','实力测评! | 适合每个人的瘦身方法, 你先瘦,她们随意','很多妹子觉得瘦身很难坚持不下来,其实很简单,人人都能减肥,就看你想不想.',0,'第三期 减肥','http://olg4p7z9i.bkt.clouddn.com/post_img.png',0,'2017-04-04 09:36:23.0','9a32ec34191511e7b35dd4be3bebe9cd');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `introduction` varchar(255) DEFAULT NULL COMMENT '商品介绍',
  `style` varchar(45) DEFAULT NULL COMMENT '商品样式',
  `price` float NOT NULL DEFAULT '0' COMMENT '商品价格',
  `photo` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `object_id` varchar(255) NOT NULL,
  `nick_name` varchar(45) DEFAULT NULL COMMENT '用户昵称',
  `head_image` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `phone` varchar(45) DEFAULT NULL COMMENT '手机号',
  `unionid` varchar(255) DEFAULT NULL COMMENT '微信unionid',
  `sex` varchar(45) DEFAULT NULL COMMENT '性别',
  `role` varchar(45) DEFAULT NULL COMMENT '角色',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('9a32ec34191511e7b35dd4be3bebe9cd','张齐朴','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','15919878375',NULL,'男','普通用户',0),('b9b714a4191511e7b35dd4be3bebe9cd','朱小雄','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','15919878375',NULL,'男','普通用户',0),('c563ef7a191511e7b35dd4be3bebe9cd','杨家豪','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','15919878375',NULL,'男','普通用户',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-06 11:11:42
