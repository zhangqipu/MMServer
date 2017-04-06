CREATE DATABASE  IF NOT EXISTS `cuo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cuo`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cuo
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
-- Table structure for table `bankcard`
--

DROP TABLE IF EXISTS `bankcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankcard` (
  `object_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL COMMENT '哪个用户绑定银行卡',
  `card_holder` varchar(45) DEFAULT NULL,
  `pre_phone` varchar(45) DEFAULT NULL COMMENT '预留手机号',
  `card_number` varchar(255) DEFAULT NULL COMMENT '卡号',
  `bank_name` varchar(45) DEFAULT NULL COMMENT '开户银行',
  `bank_branch` varchar(45) DEFAULT NULL COMMENT '开户支行',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_bankcard_idx` (`user_id`),
  CONSTRAINT `fk_user_bankcard` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankcard`
--

LOCK TABLES `bankcard` WRITE;
/*!40000 ALTER TABLE `bankcard` DISABLE KEYS */;
INSERT INTO `bankcard` VALUES ('aee0b9e4088f11e78b89328a1ef77c89','b670176407b111e78b89328a1ef77c89','张齐朴','15919878375','62330219632215781233325','建设银行','新岸线支行',0);
/*!40000 ALTER TABLE `bankcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `object_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT 'banner 图片',
  `address` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `type` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES ('09aaff2b07c911e78b89328a1ef77000','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://www.baidu.com','BannerTypeCustom',0),('09aaff2b07c911e78b89328a1ef77111','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://www.baidu.com','BannerTypeCustom',0),('09aaff2b07c911e78b89328a1ef77333','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://www.baidu.com','BannerTypeHome',0),('09aaff2b07c911e78b89328a1ef77444','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://www.baidu.com','BannerTypeHome',0);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bidding`
--

DROP TABLE IF EXISTS `bidding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bidding` (
  `object_id` varchar(255) NOT NULL,
  `designer_id` varchar(255) DEFAULT NULL COMMENT '参与竞标的设计师id',
  `custom_id` varchar(255) DEFAULT NULL COMMENT '定制需求id',
  `content` varchar(255) DEFAULT NULL COMMENT '参与竞标说话内容',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_bidding_idx` (`designer_id`),
  KEY `fk_custom_bidding_idx` (`custom_id`),
  CONSTRAINT `fk_custom_bidding` FOREIGN KEY (`custom_id`) REFERENCES `custom` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_bidding` FOREIGN KEY (`designer_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bidding`
--

LOCK TABLES `bidding` WRITE;
/*!40000 ALTER TABLE `bidding` DISABLE KEYS */;
INSERT INTO `bidding` VALUES ('4c5c4faa0b8811e7b1d6cb968e056e1b','8e8d170407c911e78b89328a1ef77c89','f61ddbe60a7411e78afc0d75255c5bb4','这个想法不错我一定能够帮您实现！',0);
/*!40000 ALTER TABLE `bidding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '咨询或教学名称',
  `introduction` varchar(255) DEFAULT NULL COMMENT '介绍',
  `photos` varchar(1000) DEFAULT NULL COMMENT '珠宝图片网址数组',
  `videos` varchar(1000) DEFAULT NULL COMMENT '珠宝视频网址数组',
  `date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1) COMMENT '发布日期',
  `scan_num` int(11) DEFAULT NULL COMMENT '浏览数量',
  `user_id` varchar(255) DEFAULT NULL COMMENT '发布者id',
  `type` varchar(45) DEFAULT NULL COMMENT '类型(咨询 教学)',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES ('1110176407b111e78b89328a1ef77c89','耳环','耳环又称耳坠，是古时候女子的饰物之一，常戴在耳朵的饰品。而在古代，耳环又称为珥、珰。在材料上，耳环都是金属为主，也有些可能是石头、木、或其他相似的硬物料。而现今，也有用塑料作为材料的耳环。虽说现代装扮开放，不管男女都可以佩戴耳环，但习惯于并喜欢佩戴耳环的现今还是女性比较多。','http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-27 06:47:18.8',0,NULL,'资讯',0),('2220176407b111e78b89328a1ef77c89',NULL,'胸针','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-27 06:47:18.8',0,NULL,'教学',0);
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `object_id` varchar(255) NOT NULL,
  `jewelry_id` varchar(255) DEFAULT NULL COMMENT '被评论的珠宝或作品id',
  `custom_id` varchar(255) DEFAULT NULL COMMENT '发布定制需求id',
  `post_id` varchar(255) DEFAULT NULL,
  `reviewer_id` varchar(255) DEFAULT NULL COMMENT '评论者id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1) COMMENT '评论日期',
  `praise_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_jewelry_user_idx` (`jewelry_id`),
  KEY `fk_user_comment_idx` (`reviewer_id`),
  KEY `fk_custom_comment` (`custom_id`),
  CONSTRAINT `fk_custom_comment` FOREIGN KEY (`custom_id`) REFERENCES `custom` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jewelry_comment` FOREIGN KEY (`jewelry_id`) REFERENCES `jewelry` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_comment` FOREIGN KEY (`reviewer_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('65aa97010b7111e7b1d6cb968e056e1b',NULL,'f61ddbe60a7411e78afc0d75255c5bb4',NULL,'8e8d170407c911e78b89328a1ef77c89','这个需求我可以做哦！','2017-03-18 08:25:31.8',NULL,0),('adc4323f0d5911e7a30a8fd88b315414',NULL,NULL,'05fce7f00d4d11e7a30a8fd88b315414','8e8d170407c911e78b89328a1ef77c89','我是夜店之王！','2017-03-20 10:40:47.6',NULL,0),('c19ea0ae07c811e78b89328a1ef77c89','2aacde1007c711e78b89328a1ef77c89',NULL,NULL,'b670176407b111e78b89328a1ef77c89','项链不错','2017-03-13 07:39:15.5',NULL,0);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom`
--

DROP TABLE IF EXISTS `custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom` (
  `object_id` varchar(255) NOT NULL,
  `introduction` varchar(255) DEFAULT NULL COMMENT '定制需求介绍',
  `price` float DEFAULT NULL COMMENT '设计费',
  `days` int(11) NOT NULL DEFAULT '0' COMMENT '周期',
  `position` varchar(45) DEFAULT NULL COMMENT '穿戴位置 (手镯 耳环)',
  `style` varchar(45) DEFAULT NULL COMMENT '珠宝风格 (生活 搞笑)',
  `location` varchar(255) DEFAULT NULL COMMENT '发布位置',
  `photos` varchar(1000) DEFAULT NULL COMMENT '珠宝图片网址数组',
  `videos` varchar(255) DEFAULT NULL COMMENT '珠宝视频网址数组',
  `date` timestamp(1) NULL DEFAULT NULL COMMENT '发布日期',
  `comment_num` int(11) DEFAULT NULL COMMENT '评论数量',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `bidding_num` int(11) DEFAULT '0' COMMENT '竞标人数',
  `user_id` varchar(255) DEFAULT NULL COMMENT '发布者id',
  `designer_id` varchar(255) DEFAULT NULL COMMENT '竞标成功的设计师id',
  `design_photos` varchar(1000) DEFAULT NULL COMMENT '设计图',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_jewelry_idx` (`user_id`),
  KEY `f_user_custom1_idx` (`designer_id`),
  CONSTRAINT `f_user_custom1` FOREIGN KEY (`designer_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_custom` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom`
--

LOCK TABLES `custom` WRITE;
/*!40000 ALTER TABLE `custom` DISABLE KEYS */;
INSERT INTO `custom` VALUES ('f61ddbe60a7411e78afc0d75255c5121','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusFinished',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0),('f61ddbe60a7411e78afc0d75255c5122','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusUndertake',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0),('f61ddbe60a7411e78afc0d75255c5bb4','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusBiding',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0),('f61ddbe60a7411e78afc0d75255c5bb5','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusDesigning',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0),('f61ddbe60a7411e78afc0d75255c5bb6','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusWaiting',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0),('f61ddbe60a7411e78afc0d75255c5bb7','耳环',0,0,'耳环','生活','深证','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'2017-03-29 06:48:24.4',0,'BiddingStatusFinished',0,'b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',0);
/*!40000 ALTER TABLE `custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic`
--

DROP TABLE IF EXISTS `dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic` (
  `object_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `jewelry_id` varchar(255) DEFAULT NULL,
  `be_concerned_id` varchar(255) DEFAULT NULL,
  `custom_id` varchar(255) DEFAULT NULL COMMENT '发布需求动态',
  `type` varchar(45) DEFAULT NULL COMMENT '动态类型 (用户 作品)',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_dynamic_idx` (`user_id`),
  KEY `fk_jewelry_dynamic_idx` (`jewelry_id`),
  KEY `fk_user_dynamic_idx1` (`be_concerned_id`),
  KEY `fk_custom_dynamic_idx` (`custom_id`),
  CONSTRAINT `fk_custom_dynamic` FOREIGN KEY (`custom_id`) REFERENCES `custom` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jewelry_dynamic` FOREIGN KEY (`jewelry_id`) REFERENCES `jewelry` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_dynamic` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_dynamic1` FOREIGN KEY (`be_concerned_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic`
--

LOCK TABLES `dynamic` WRITE;
/*!40000 ALTER TABLE `dynamic` DISABLE KEYS */;
INSERT INTO `dynamic` VALUES ('061dab4609e111e78afc0d75255c5bb4','b670176407b111e78b89328a1ef77c89','2aacde1007c711e78b89328a1ef77c89',NULL,NULL,'DynamicTypeJewelry',0),('e8c1e37e0abd11e78afc0d75255c5bb4','09aaff2b07c911e78b89328a1ef77c89','f543db5c07c011e79989328a1ef77c89',NULL,NULL,'DynamicTypeJewelry',1),('f624f6c20a7411e78afc0d75255c5b00','b670176407b111e78b89328a1ef77c89',NULL,'8e8d170407c911e78b89328a1ef77c89',NULL,'DynamicTypeUser',0);
/*!40000 ALTER TABLE `dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identity`
--

DROP TABLE IF EXISTS `identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identity` (
  `object_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL COMMENT '将要被认证用户id',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(45) DEFAULT NULL COMMENT '真实性别',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `type` varchar(45) DEFAULT NULL COMMENT '认证类型',
  `mail` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `qualification` varchar(255) DEFAULT NULL COMMENT '资历证明',
  `id_number_up` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `id_number_down` varchar(255) DEFAULT NULL COMMENT '身份证反面',
  `other` varchar(255) DEFAULT NULL COMMENT '其他',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_identity_idx` (`user_id`),
  CONSTRAINT `fk_user_identity` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identity`
--

LOCK TABLES `identity` WRITE;
/*!40000 ALTER TABLE `identity` DISABLE KEYS */;
INSERT INTO `identity` VALUES ('c9f4e16f08a511e78b89328a1ef77c89','b670176407b111e78b89328a1ef77c89','张齐朴','M','420322199889632321','身份证','zhangqipu@163.com','15919878375','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://olg4p7z9i.bkt.clouddn.com/cat.png','http://olg4p7z9i.bkt.clouddn.com/cat.png',0);
/*!40000 ALTER TABLE `identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jewelry`
--

DROP TABLE IF EXISTS `jewelry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jewelry` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '珠宝名称',
  `introduction` varchar(255) DEFAULT NULL COMMENT '珠宝介绍',
  `photos` varchar(1000) DEFAULT NULL COMMENT '珠宝图片网址数组',
  `videos` varchar(255) DEFAULT NULL COMMENT '珠宝视频网址数组',
  `position` varchar(45) DEFAULT NULL COMMENT '穿戴位置 (手镯 耳环)',
  `style` varchar(45) DEFAULT NULL COMMENT '珠宝风格 (生活 搞笑)',
  `date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1) COMMENT '发布日期',
  `location` varchar(255) DEFAULT NULL COMMENT '发布位置',
  `praise_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  `comment_num` int(11) DEFAULT NULL COMMENT '评论数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `status` varchar(45) DEFAULT NULL COMMENT '状态 (原创 估价 商品)',
  `user_id` varchar(255) DEFAULT NULL COMMENT '发布者id',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_jewelry_idx` (`user_id`),
  CONSTRAINT `fk_user_jewelry` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jewelry`
--

LOCK TABLES `jewelry` WRITE;
/*!40000 ALTER TABLE `jewelry` DISABLE KEYS */;
INSERT INTO `jewelry` VALUES ('2aac231007c711e78b89328a1ef77c89','项链','故事讲述了小公务员的妻子玛蒂尔德为参加一次晚会，向朋友借了一串钻石项链，来炫耀自己的美丽。不料，项链在回家途中不慎丢失。她只得借钱买了新项链还给朋友。为了偿还债务，她节衣缩食，为别人打短工，整整劳苦了十年。最后，得知所借的项链原是一串假钻石项链。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'项链','生活','2017-04-01 07:26:22.4','深圳',0,0,NULL,'已实现','8e8d170407c911e78b89328a1ef77c89',0),('2aacde1007c711e78b89328a1ef77c89','项链','故事讲述了小公务员的妻子玛蒂尔德为参加一次晚会，向朋友借了一串钻石项链，来炫耀自己的美丽。不料，项链在回家途中不慎丢失。她只得借钱买了新项链还给朋友。为了偿还债务，她节衣缩食，为别人打短工，整整劳苦了十年。最后，得知所借的项链原是一串假钻石项链。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'项链','生活','2017-03-29 06:48:24.4','深圳',0,0,NULL,'正在估价','b670176407b111e78b89328a1ef77c89',0),('af64181007c111e71189328a1ef77c89','戒指','戒指是一种戴在手指上的装饰品，任何人都可以佩戴。佩戴戒指的习俗源远流长，不同的地方对不同的佩戴方式有着不同的代表含义。材料可以是金属、宝石、塑料、木或骨质等。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'戒指','生活','2017-04-01 07:26:10.7','深圳',0,0,NULL,'等待开模','8e8d170407c911e78b89328a1ef77c89',0),('af64181007c111e78b89328a1ef77c89','戒指','戒指是一种戴在手指上的装饰品，任何人都可以佩戴。佩戴戒指的习俗源远流长，不同的地方对不同的佩戴方式有着不同的代表含义。材料可以是金属、宝石、塑料、木或骨质等。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'戒指','生活','2017-03-29 06:48:24.4','深圳',0,0,NULL,'正在开模','b670176407b111e78b89328a1ef77c89',0),('f543db5777c011e78b89328a1ef71237','耳环','耳环又称耳坠，是古时候女子的饰物之一，常戴在耳朵的饰品。而在古代，耳环又称为珥、珰。在材料上，耳环都是金属为主，也有些可能是石头、木、或其他相似的硬物料。而现今，也有用塑料作为材料的耳环。虽说现代装扮开放，不管男女都可以佩戴耳环，但习惯于并喜欢佩戴耳环的现今还是女性比较多。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'耳环','生活','2017-04-01 07:25:48.2','深圳',0,0,NULL,'待发货','09aaff2b07c911e78b89328a1ef77c89',0),('f543db5c07c011e78559328a1ef71236','胸针','胸针，又称胸花，是一种使用搭钩别在衣服上的珠宝，也可认为是装饰性的别针。一般为金属质地，上嵌宝石、珐琅等。可以用做纯粹装饰或兼有固定衣服（例如长袍、披风、围巾等）的功能。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'胸针','生活','2017-03-29 06:48:24.4','深圳',0,0,NULL,'已实现','b670176407b111e78b89328a1ef77c89',0),('f543db5c07c011e78b83328a1ef71234','手链','一种首饰，配戴在手腕部位的链条，多为金属制，特别是银制，也有矿石，水晶等制的。 区别于手镯和手环，手链是链状的，以祈求平安，镇定心志和美观为主要用途。','http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'手链','情趣','2017-04-01 07:26:40.6','深圳',0,0,NULL,'已实现','09aaff2b07c911e78b89328a1ef77c89',0),('f543db5c07c011e78b89328a1ef77c89','耳环','耳环又称耳坠，是古时候女子的饰物之一，常戴在耳朵的饰品。而在古代，耳环又称为珥、珰。在材料上，耳环都是金属为主，也有些可能是石头、木、或其他相似的硬物料。而现今，也有用塑料作为材料的耳环。虽说现代装扮开放，不管男女都可以佩戴耳环，但习惯于并喜欢佩戴耳环的现今还是女性比较多。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'耳环','生活','2017-03-31 09:55:34.6','深圳',0,0,20.2,'已实现','b670176407b111e78b89328a1ef77c89',0),('f543db5c07c011e79989328a1ef77c89','耳环','耳环又称耳坠，是古时候女子的饰物之一，常戴在耳朵的饰品。而在古代，耳环又称为珥、珰。在材料上，耳环都是金属为主，也有些可能是石头、木、或其他相似的硬物料。而现今，也有用塑料作为材料的耳环。虽说现代装扮开放，不管男女都可以佩戴耳环，但习惯于并喜欢佩戴耳环的现今还是女性比较多。','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png',NULL,'耳环','生活','2017-04-01 07:26:33.4','深圳',0,0,NULL,'已实现','8e8d170407c911e78b89328a1ef77c89',0);
/*!40000 ALTER TABLE `jewelry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylike`
--

DROP TABLE IF EXISTS `mylike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylike` (
  `object_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL COMMENT '点赞用户id',
  `jewelry_id` varchar(255) DEFAULT NULL COMMENT '被点赞珠宝id',
  `be_concerned_id` varchar(255) DEFAULT NULL COMMENT '被关注者id',
  `type` varchar(45) DEFAULT NULL COMMENT '关注类型 (user jewelry)',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_user_mylike1_idx` (`user_id`),
  KEY `fk_user_mylike2_idx` (`jewelry_id`),
  KEY `fk_user_mylike3_idx` (`be_concerned_id`),
  CONSTRAINT `fk_user_mylike1` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_mylike2` FOREIGN KEY (`jewelry_id`) REFERENCES `jewelry` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_mylike3` FOREIGN KEY (`be_concerned_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylike`
--

LOCK TABLES `mylike` WRITE;
/*!40000 ALTER TABLE `mylike` DISABLE KEYS */;
INSERT INTO `mylike` VALUES ('a7076ec00aa711e78afc0d75255c0000','8e8d170407c911e78b89328a1ef77c89',NULL,'09aaff2b07c911e78b89328a1ef77c89','LikeTypeUser',0),('a7076ec00aa711e78afc0d75255c5bb4','09aaff2b07c911e78b89328a1ef77c89','f543db5c07c011e79989328a1ef77c89',NULL,'LikeTypeJewelry',0);
/*!40000 ALTER TABLE `mylike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `object_id` varchar(255) NOT NULL,
  `out_trade_no` varchar(255) NOT NULL COMMENT '订单编号',
  `subject` varchar(45) DEFAULT NULL COMMENT '商品名称',
  `body` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `total_amount` float DEFAULT '0' COMMENT '商品总价格',
  `status` varchar(45) DEFAULT NULL COMMENT '订单状态',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '帖子名称',
  `content` varchar(255) DEFAULT NULL COMMENT '帖子内容',
  `photos` varchar(1000) DEFAULT NULL COMMENT '帖子图片',
  `subject_id` varchar(255) DEFAULT NULL COMMENT '基于哪个主题的帖子',
  `user_id` varchar(255) DEFAULT NULL,
  `praise_num` int(11) DEFAULT '0' COMMENT '帖子点赞数',
  `comment_num` int(11) DEFAULT '0' COMMENT '帖子评论数',
  `date` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1),
  `location` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_subject_post` (`subject_id`),
  KEY `fk_user_post` (`user_id`),
  CONSTRAINT `fk_subject_post` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_post` FOREIGN KEY (`user_id`) REFERENCES `user` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('05fce7f00d4d11e7a30a8fd88b315414','夜店之魂','夜店之魂','http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png,http://olg4p7z9i.bkt.clouddn.com/cat.png','dc79b8e00d4811e7a30a8fd88b315414','b670176407b111e78b89328a1ef77c89',0,0,'2017-03-20 09:10:12.2','深圳',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `object_id` varchar(255) NOT NULL,
  `comment_id` varchar(255) DEFAULT NULL COMMENT '基于那个评论的id',
  `replier_id` varchar(255) DEFAULT NULL COMMENT '回复者id',
  `reply_to_id` varchar(255) DEFAULT NULL COMMENT '被回复者id',
  `content` varchar(255) DEFAULT NULL COMMENT '回复内容',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES ('107fde1b0b7211e7b1d6cb968e056e1b','65aa97010b7111e7b1d6cb968e056e1b','09aaff2b07c911e78b89328a1ef77c89','b670176407b111e78b89328a1ef77c89','我也可以做的，我有更加成熟的方案。',0),('55286dbb07c911e78b89328a1ef77c89','c19ea0ae07c811e78b89328a1ef77c89','09aaff2b07c911e78b89328a1ef77c89','b670176407b111e78b89328a1ef77c89','是真的不错',0),('a23e362a07c911e78b89328a1ef77c89','c19ea0ae07c811e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','b670176407b111e78b89328a1ef77c89','是真的不错。。。',0),('e7824b8c0d5911e7a30a8fd88b315414','adc4323f0d5911e7a30a8fd88b315414','b670176407b111e78b89328a1ef77c89','8e8d170407c911e78b89328a1ef77c89','哈哈哈！',0);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `object_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '专题名称',
  `introduction` varchar(255) DEFAULT NULL COMMENT '专题介绍',
  `image` varchar(45) DEFAULT NULL COMMENT '专题图片',
  `rule` varchar(255) DEFAULT NULL COMMENT '规则',
  `join_num` int(11) DEFAULT '0' COMMENT '参与人数',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('dc79b8e00d4811e7a30a8fd88b315414','夜店','《夜店》是北京橙天华音音乐制作有限公司出品的一部喜剧电影，影片由杨庆执导，徐峥，李小璐等人主演。影片讲述了在一个小型的24小时超市里发生的一场让人啼笑皆非的抢劫故事。影片已于2009年7月24日在中国大陆上映。','http://olg4p7z9i.bkt.clouddn.com/cat.png','规则就是没有规则',1,0);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `object_id` varchar(255) NOT NULL,
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `nick_name` varchar(45) DEFAULT NULL COMMENT '昵称',
  `head_image_url` varchar(255) DEFAULT NULL COMMENT '用户头像网址',
  `sex` varchar(45) DEFAULT NULL COMMENT '性别 ("N" "M" "F")',
  `role` varchar(45) DEFAULT NULL,
  `fans_num` int(11) DEFAULT '0' COMMENT '粉丝数量',
  `works_num` int(11) DEFAULT '0',
  `back_image_url` varchar(255) DEFAULT NULL COMMENT '个人展示背景',
  `introduction` varchar(255) DEFAULT NULL COMMENT '个人介绍',
  `unionid` varchar(45) DEFAULT NULL COMMENT '微信unionid',
  `bank_card_id` varchar(255) DEFAULT NULL COMMENT '绑定的银行卡信息id',
  `identity_id` varchar(255) DEFAULT NULL COMMENT '认证身份信息id',
  `concern_num` int(11) DEFAULT NULL COMMENT ' 关注数',
  `is_deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `fk_bankcard_user_idx` (`bank_card_id`),
  KEY `fk_identity_user_idx` (`identity_id`),
  CONSTRAINT `fk_bankcard_user` FOREIGN KEY (`bank_card_id`) REFERENCES `bankcard` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_identity_user` FOREIGN KEY (`identity_id`) REFERENCES `identity` (`object_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('09aaff2b07c911e78b89328a1ef77c89','15919886352','朱晓雄','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','M','RoleTypeDesigner',0,0,NULL,'见过疾风吧',' ',NULL,NULL,0,0),('8e8d170407c911e78b89328a1ef77c89','15919886351','程顺晓','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','M','RoleTypeDesigner',0,0,NULL,'见过疾风吧',' ',NULL,NULL,0,0),('b670176407b111e78b89328a1ef77c89','15919878375','张齐朴','http://olg4p7z9i.bkt.clouddn.com/lilianjie.png','M','RoleTypeDreamer',0,0,NULL,'见过疾风吧',' ','aee0b9e4088f11e78b89328a1ef77c89','c9f4e16f08a511e78b89328a1ef77c89',0,0);
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

-- Dump completed on 2017-04-01 17:09:19
