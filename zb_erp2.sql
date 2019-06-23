-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: zb_erp
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangelog` (
  `id` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('201709282202','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-09-28 23:34:07',1,'EXECUTED','7:ca3a38c3a43ee96bf6c7bbf56123d1fc','sql','增加角色bbbb-测试',NULL,'3.1.1'),('201709282227','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-09-28 23:34:07',2,'EXECUTED','7:fa335b3dcabb52f38c4300e35b7c0b4c','sql','删除角色bbbb-测试',NULL,'3.1.1'),('201709282322','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-09-29 22:39:46',3,'EXECUTED','7:adeea7031bd16af361001ce7d93b1e1a','sql','新增系统配置表',NULL,'3.1.1'),('201709292218','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-09-29 22:39:46',4,'EXECUTED','7:f7079f8d7b3fdb92fb6d319789ea9117','sql','新增系统参数数据-公司相关',NULL,'3.1.1'),('201710122314','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-10-18 22:39:27',5,'EXECUTED','7:c0885501076d6473461f074cc68535e7','sql','新增商品属性-数据',NULL,'3.1.1'),('201712102245','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2017-12-10 22:51:30',6,'EXECUTED','7:9b0df7eba9ad678b08fd435be32397b1','sql','更新账户表-是否默认列',NULL,'3.1.1'),('201809122201','jishenghua','liquibase/zb_erp_erp/db.changelog-zb_erp_erp-1.0.xml','2018-10-28 19:56:28',7,'EXECUTED','7:62bde21df811efc41b146eac39da7994','sql','更新用户表-是否系统列',NULL,'3.1.1');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangeloglock` (
  `id` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fie_te`
--

DROP TABLE IF EXISTS `fie_te`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fie_te` (
  `id` int(11) NOT NULL,
  `int_field` int(255) DEFAULT NULL,
  `str_field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fie_te`
--

LOCK TABLES `fie_te` WRITE;
/*!40000 ALTER TABLE `fie_te` DISABLE KEYS */;
/*!40000 ALTER TABLE `fie_te` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sequence`
--

DROP TABLE IF EXISTS `tbl_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sequence` (
  `seq_name` varchar(50) NOT NULL COMMENT '序列名称',
  `min_value` bigint(20) NOT NULL COMMENT '最小值',
  `max_value` bigint(20) NOT NULL COMMENT '最大值',
  `current_val` bigint(20) NOT NULL COMMENT '当前值',
  `increment_val` int(11) NOT NULL DEFAULT '1' COMMENT '增长步数',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sequence表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sequence`
--

LOCK TABLES `tbl_sequence` WRITE;
/*!40000 ALTER TABLE `tbl_sequence` DISABLE KEYS */;
INSERT INTO `tbl_sequence` VALUES ('depot_number_seq',1,999999999999999999,1,1,'单据编号sequence');
/*!40000 ALTER TABLE `tbl_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_acc`
--

DROP TABLE IF EXISTS `zb_erp_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_acc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `acc_name` varchar(50) DEFAULT NULL COMMENT '名称',
  `id_no` varchar(50) DEFAULT NULL COMMENT '编号',
  `InitialAmount` decimal(24,6) DEFAULT NULL COMMENT '期初金额',
  `CurrentAmount` decimal(24,6) DEFAULT NULL COMMENT '当前余额',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `IsDefault` bit(1) DEFAULT NULL COMMENT '是否默认',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='账户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_acc`
--

LOCK TABLES `zb_erp_acc` WRITE;
/*!40000 ALTER TABLE `zb_erp_acc` DISABLE KEYS */;
INSERT INTO `zb_erp_acc` VALUES (4,'南通建行','652346523465234623',1200.000000,215.000000,'建行账户',_binary '\0',NULL,'0'),(9,'流动总账','65234624523452364',2000.000000,393.000000,'现在账户',_binary '',NULL,'0'),(10,'支付宝','123456789@qq.com',10000.000000,NULL,'',_binary '\0',NULL,'0'),(11,'微信','13000000000',10000.000000,NULL,'',_binary '\0',NULL,'0'),(12,'上海农行','65324345234523211',10000.000000,0.000000,'',_binary '\0',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_acc_head`
--

DROP TABLE IF EXISTS `zb_erp_acc_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_acc_head` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Type` varchar(50) DEFAULT NULL COMMENT '类型(支出/收入/收款/付款/转账)',
  `OrganId` bigint(20) DEFAULT NULL COMMENT '单位Id(收款/付款单位)',
  `HandsPersonId` bigint(20) DEFAULT NULL COMMENT '经手人Id',
  `ChangeAmount` decimal(24,6) DEFAULT NULL COMMENT '变动金额(优惠/收款/付款/实付)',
  `TotalPrice` decimal(24,6) DEFAULT NULL COMMENT '合计金额',
  `AccountId` bigint(20) DEFAULT NULL COMMENT '账户(收款/付款)',
  `BillNo` varchar(50) DEFAULT NULL COMMENT '单据编号',
  `BillTime` datetime DEFAULT NULL COMMENT '单据日期',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK9F4C0D8DB610FC06` (`OrganId`),
  KEY `FK9F4C0D8DAAE50527` (`AccountId`),
  KEY `FK9F4C0D8DC4170B37` (`HandsPersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='财务主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_acc_head`
--

LOCK TABLES `zb_erp_acc_head` WRITE;
/*!40000 ALTER TABLE `zb_erp_acc_head` DISABLE KEYS */;
INSERT INTO `zb_erp_acc_head` VALUES (57,'收预付款',8,3,NULL,1000.000000,NULL,'2342134','2017-06-27 00:00:00','',NULL,'0'),(61,'收预付款',9,3,NULL,33.000000,NULL,'SYF2017062901721','2017-06-29 00:00:00','aaaaaa',NULL,'0'),(67,'收预付款',10,4,NULL,2100.000000,NULL,'SYF2017070222414','2017-07-02 00:00:00','',NULL,'0'),(70,'支出',4,3,-60.000000,-60.000000,4,'ZC20170703233735','2017-07-03 00:00:00','',NULL,'0'),(74,'转账',NULL,3,-100.000000,-100.000000,4,'ZZ2017070323489','2017-07-03 00:00:00','',NULL,'0'),(77,'收入',2,3,40.000000,40.000000,4,'SR20170704222634','2017-07-04 00:00:00','',NULL,'0'),(78,'收预付款',9,3,NULL,200.000000,NULL,'SYF201707050257','2017-07-05 00:00:00','',NULL,'0'),(79,'收预付款',9,3,NULL,100.000000,NULL,'SYF20170705076','2017-07-05 00:00:00','',NULL,'0'),(82,'收款',2,3,0.000000,2.600000,NULL,'SK20171008191440','2017-10-09 00:08:11','',NULL,'0'),(83,'付款',1,4,0.000000,-20.000000,NULL,'FK20171008232825','2017-10-08 00:00:00','',NULL,'0'),(84,'收入',2,4,0.000000,21.000000,10,'SR20171009000300','2017-10-09 00:03:00','',NULL,'0'),(85,'收入',2,3,22.000000,22.000000,11,'SR20171009000637','2017-10-09 00:06:37','备注123 备注123 备注123',NULL,'0'),(86,'转账',NULL,4,-22.000000,-22.000000,10,'ZZ20171009000719','2017-10-09 00:07:19','',NULL,'0'),(87,'付款',4,4,10.000000,-33.000000,NULL,'FK20171009000747','2017-10-09 00:07:47','',NULL,'0'),(88,'收款',2,4,0.000000,2.800000,NULL,'SK20171024220754','2017-10-24 22:07:54','',NULL,'0'),(89,'收款',2,4,0.000000,11.000000,NULL,'SK20171030232535','2017-10-30 23:25:35','',NULL,'0'),(90,'收款',2,4,0.000000,10.000000,NULL,'SK20171119231440','2017-11-19 23:14:40','',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_acc_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_acc_item`
--

DROP TABLE IF EXISTS `zb_erp_acc_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_acc_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `HeaderId` bigint(20) NOT NULL COMMENT '表头Id',
  `AccountId` bigint(20) DEFAULT NULL COMMENT '账户Id',
  `inout_itemId` bigint(20) DEFAULT NULL COMMENT '收支项目Id',
  `EachAmount` decimal(24,6) DEFAULT NULL COMMENT '单项金额',
  `remark` varchar(100) DEFAULT NULL COMMENT '单据备注',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK9F4CBAC0AAE50527` (`AccountId`),
  KEY `FK9F4CBAC0C5FE6007` (`HeaderId`),
  KEY `FK9F4CBAC0D203EDC5` (`inout_itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='财务子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_acc_item`
--

LOCK TABLES `zb_erp_acc_item` WRITE;
/*!40000 ALTER TABLE `zb_erp_acc_item` DISABLE KEYS */;
INSERT INTO `zb_erp_acc_item` VALUES (58,57,9,NULL,1000.000000,'',NULL,'0'),(62,61,4,NULL,33.000000,'',NULL,'0'),(68,67,4,NULL,2100.000000,'',NULL,'0'),(71,70,NULL,11,60.000000,'',NULL,'0'),(75,74,9,NULL,100.000000,'',NULL,'0'),(78,77,NULL,14,40.000000,'',NULL,'0'),(79,78,9,NULL,200.000000,'',NULL,'0'),(80,79,9,NULL,100.000000,'',NULL,'0'),(83,82,10,NULL,2.600000,'',NULL,'0'),(84,83,10,NULL,-20.000000,'',NULL,'0'),(85,84,NULL,13,21.000000,'',NULL,'0'),(86,85,NULL,12,22.000000,'44',NULL,'0'),(87,86,11,NULL,22.000000,'',NULL,'0'),(88,87,10,NULL,-33.000000,'',NULL,'0'),(89,88,10,NULL,2.800000,'',NULL,'0'),(90,89,11,NULL,11.000000,'',NULL,'0'),(91,90,12,NULL,10.000000,'',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_acc_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_app`
--

DROP TABLE IF EXISTS `zb_erp_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Number` varchar(50) DEFAULT NULL COMMENT '编号',
  `app_name` varchar(50) DEFAULT NULL COMMENT '名称',
  `Type` varchar(50) DEFAULT NULL COMMENT '类型',
  `Icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `URL` varchar(50) DEFAULT NULL COMMENT '编号',
  `Width` varchar(50) DEFAULT NULL COMMENT '宽度',
  `Height` varchar(50) DEFAULT NULL COMMENT '高度',
  `ReSize` bit(1) DEFAULT NULL COMMENT '是否可改变大小',
  `OpenMax` bit(1) DEFAULT NULL COMMENT '最大化',
  `Flash` bit(1) DEFAULT NULL COMMENT '是否切换',
  `ZL` varchar(50) DEFAULT NULL COMMENT '类型',
  `disp_or` varchar(50) DEFAULT NULL COMMENT '排序',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `Enabled` bit(1) DEFAULT NULL COMMENT '是否启用',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='应用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_app`
--

LOCK TABLES `zb_erp_app` WRITE;
/*!40000 ALTER TABLE `zb_erp_app` DISABLE KEYS */;
INSERT INTO `zb_erp_app` VALUES (3,'00','系统管理','app','0000000004.png','','1240','600',_binary '',_binary '\0',_binary '\0','desk','198','',_binary '','0'),(6,'','个人信息','app','0000000005.png','../user/password.html','600','400',_binary '\0',_binary '\0',_binary '\0','dock','200','',_binary '','0'),(7,'01','基础数据','app','0000000006.png','','1350','630',_binary '',_binary '\0',_binary '\0','desk','120','',_binary '','0'),(22,'03','报表查询','app','0000000022.png','','1350','630',_binary '',_binary '\0',_binary '\0','desk','115','',_binary '','0'),(23,'04','零售管理','app','resizeApi.png','','1350','630',_binary '',_binary '\0',_binary '','desk','025','',_binary '','0'),(24,'05','采购管理','app','buy.png','','1350','630',_binary '',_binary '\0',_binary '','desk','027','',_binary '','0'),(25,'06','销售管理','app','sale.png','','1350','630',_binary '',_binary '\0',_binary '','desk','028','',_binary '','0'),(26,'07','财务管理','app','money.png','','1350','630',_binary '',_binary '\0',_binary '\0','desk','035','',_binary '','0'),(27,'08','仓库管理','app','depot.png','','1350','630',_binary '',_binary '\0',_binary '','desk','029','',_binary '','0');
/*!40000 ALTER TABLE `zb_erp_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_asset`
--

DROP TABLE IF EXISTS `zb_erp_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_asset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `asset_naID` bigint(20) NOT NULL COMMENT '资产名称id',
  `location` varchar(255) DEFAULT NULL COMMENT '位置',
  `labels` varchar(255) DEFAULT NULL COMMENT '标签：以空格为分隔符',
  `status` smallint(6) DEFAULT NULL COMMENT '资产的状态：0==在库，1==在用，2==消费',
  `userID` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `price` decimal(24,6) DEFAULT NULL COMMENT '购买价格',
  `purchasedate` datetime DEFAULT NULL COMMENT '购买日期',
  `periodofvalidity` datetime DEFAULT NULL COMMENT '有效日期',
  `warrantydate` datetime DEFAULT NULL COMMENT '保修日期',
  `assetnum` varchar(255) DEFAULT NULL COMMENT '资产编号',
  `serialnum` varchar(255) DEFAULT NULL COMMENT '资产序列号',
  `supplier` bigint(20) NOT NULL COMMENT '供应商',
  `description` longtext COMMENT '描述信息',
  `addMonth` longtext COMMENT '资产添加时间，统计报表使用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK353690ED9B6CB285` (`asset_naID`),
  KEY `FK353690EDAD45B659` (`create_user`),
  KEY `FK353690ED27D23FE4` (`supplier`),
  KEY `FK353690ED61FE182C` (`update_user`),
  KEY `FK353690ED3E226853` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='资产记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_asset`
--

LOCK TABLES `zb_erp_asset` WRITE;
/*!40000 ALTER TABLE `zb_erp_asset` DISABLE KEYS */;
INSERT INTO `zb_erp_asset` VALUES (1,27,'weizhi','',0,NULL,11.000000,'2016-10-22 00:00:00','2016-10-21 00:00:00','2016-11-03 00:00:00','1231241','123124123',2,'','2016-10','2016-10-22 20:04:48',63,'2016-10-22 20:04:48',63,NULL,'0'),(3,29,'weizhi',NULL,0,NULL,11.000000,'2016-10-22 00:00:00','2016-10-21 00:00:00','2016-11-03 00:00:00','1231241','123124123',2,NULL,NULL,'2017-07-22 18:42:14',NULL,'2017-07-22 18:42:14',NULL,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_asset_cate`
--

DROP TABLE IF EXISTS `zb_erp_asset_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_asset_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `asset_na` varchar(255) NOT NULL COMMENT '资产类型名称',
  `isystem` tinyint(4) NOT NULL COMMENT '是否系统自带 0==系统 1==非系统',
  `description` varchar(500) DEFAULT NULL COMMENT '描述信息',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='资产类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_asset_cate`
--

LOCK TABLES `zb_erp_asset_cate` WRITE;
/*!40000 ALTER TABLE `zb_erp_asset_cate` DISABLE KEYS */;
INSERT INTO `zb_erp_asset_cate` VALUES (14,'递延资产',1,'递延资产',NULL,'0'),(15,'无形资产',1,'无形资产',NULL,'0'),(16,'长期投资',1,'长期投资',NULL,'0'),(17,'固定资产',1,'固定资产',NULL,'0'),(18,'流动资产',1,'流动资产',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_asset_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_asset_na`
--

DROP TABLE IF EXISTS `zb_erp_asset_na`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_asset_na` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `asset_na` varchar(255) NOT NULL COMMENT '资产名称',
  `asset_cateID` bigint(20) NOT NULL COMMENT '资产类型',
  `isystem` smallint(6) NOT NULL COMMENT '是否系统自带 0==系统 1==非系统',
  `description` longtext COMMENT '描述信息',
  `isconsumables` smallint(6) DEFAULT NULL COMMENT '是否为耗材 0==否 1==是 耗材状态只能是消费',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FKA4ADCCF866BC8AD3` (`asset_cateID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='资产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_asset_na`
--

LOCK TABLES `zb_erp_asset_na` WRITE;
/*!40000 ALTER TABLE `zb_erp_asset_na` DISABLE KEYS */;
INSERT INTO `zb_erp_asset_na` VALUES (1,'联想Y450',17,1,'',1,NULL,'0'),(2,'惠普打印机',15,1,'',0,NULL,'0'),(12,'乐萌水杯',16,1,'',1,NULL,'0'),(13,'机顶盒',17,1,'机顶盒',0,NULL,'0'),(14,'TCL电视',17,1,'',1,NULL,'0'),(15,'手机',17,1,'',1,NULL,'0'),(16,'硬盘',16,1,'',0,NULL,'0'),(17,'毛笔',17,1,'',0,NULL,'0'),(18,'杯子',17,1,'',0,NULL,'0'),(19,'建造师证书',15,1,'',0,NULL,'0'),(20,'算量软件',14,1,'',1,NULL,'0'),(21,'cad软件',15,1,'',0,NULL,'0'),(22,'办公桌',17,1,'',0,NULL,'0'),(23,'笔记本',17,1,'笔记本',1,NULL,'0'),(24,'打印机',17,1,'打印机',0,NULL,'0'),(25,'电脑',17,1,'电脑',0,NULL,'0'),(26,'电动车',16,1,'电动车',0,NULL,'0'),(27,'电源线',17,1,'电源线',0,NULL,'0'),(28,'电源线666',17,1,'',0,NULL,'0'),(29,'电源线777',17,1,'',0,NULL,'0'),(30,'电源线8',17,1,'',0,NULL,'0'),(31,'电源线9',17,1,'',0,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_asset_na` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_depot`
--

DROP TABLE IF EXISTS `zb_erp_depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_depot` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '仓库名称',
  `address` varchar(50) DEFAULT NULL COMMENT '仓库地址',
  `warehousing` decimal(24,6) DEFAULT NULL COMMENT '仓储费',
  `truckage` decimal(24,6) DEFAULT NULL COMMENT '搬运费',
  `type` int(10) DEFAULT NULL COMMENT '类型',
  `disp_or` varchar(10) DEFAULT NULL COMMENT '排序',
  `remark` varchar(100) DEFAULT NULL COMMENT '描述',
  `principal` bigint(20) DEFAULT NULL COMMENT '负责人',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='仓库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_depot`
--

LOCK TABLES `zb_erp_depot` WRITE;
/*!40000 ALTER TABLE `zb_erp_depot` DISABLE KEYS */;
INSERT INTO `zb_erp_depot` VALUES (1,'叠石桥店','地址222',33.000000,22.000000,0,'2','上海33',NULL,NULL,'0'),(2,'公司总部','地址12355',44.000000,22.220000,0,'1','总部',NULL,NULL,'0'),(3,'金沙店','地址666',31.000000,4.000000,0,'3','苏州',NULL,NULL,'0'),(4,'1268200294','',NULL,NULL,1,'1','',NULL,NULL,'0'),(5,'1268787965',NULL,NULL,NULL,1,'3','',NULL,NULL,'0'),(6,'1269520625',NULL,NULL,NULL,1,'2','',NULL,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_depot_head`
--

DROP TABLE IF EXISTS `zb_erp_depot_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_depot_head` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Type` varchar(50) DEFAULT NULL COMMENT '类型(出库/入库)',
  `SubType` varchar(50) DEFAULT NULL COMMENT '出入库分类',
  `ProjectId` bigint(20) DEFAULT NULL COMMENT '项目Id',
  `DefaultNumber` varchar(50) DEFAULT NULL COMMENT '初始票据号',
  `Number` varchar(50) DEFAULT NULL COMMENT '票据号',
  `OperPersonName` varchar(50) DEFAULT NULL COMMENT '操作员名字',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `OperTime` datetime DEFAULT NULL COMMENT '出入库时间',
  `OrganId` bigint(20) DEFAULT NULL COMMENT '供应商Id',
  `HandsPersonId` bigint(20) DEFAULT NULL COMMENT '采购/领料-经手人Id',
  `AccountId` bigint(20) DEFAULT NULL COMMENT '账户Id',
  `ChangeAmount` decimal(24,6) DEFAULT NULL COMMENT '变动金额(收款/付款)',
  `AllocationProjectId` bigint(20) DEFAULT NULL COMMENT '调拨时，对方项目Id',
  `TotalPrice` decimal(24,6) DEFAULT NULL COMMENT '合计金额',
  `PayType` varchar(50) DEFAULT NULL COMMENT '付款类型(现金、记账等)',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `Salesman` varchar(50) DEFAULT NULL COMMENT '业务员（可以多个）',
  `AccountIdList` varchar(50) DEFAULT NULL COMMENT '多账户ID列表',
  `AccountMoneyList` varchar(200) DEFAULT '' COMMENT '多账户金额列表',
  `Discount` decimal(24,6) DEFAULT NULL COMMENT '优惠率',
  `DiscountMoney` decimal(24,6) DEFAULT NULL COMMENT '优惠金额',
  `DiscountLastMoney` decimal(24,6) DEFAULT NULL COMMENT '优惠后金额',
  `OtherMoney` decimal(24,6) DEFAULT NULL COMMENT '销售或采购费用合计',
  `OtherMoneyList` varchar(200) DEFAULT NULL COMMENT '销售或采购费用涉及项目Id数组（包括快递、招待等）',
  `OtherMoneyItem` varchar(200) DEFAULT NULL COMMENT '销售或采购费用涉及项目（包括快递、招待等）',
  `AccountDay` int(10) DEFAULT NULL COMMENT '结算天数',
  `Status` varchar(1) DEFAULT '0' COMMENT '状态，0未审核、1已审核、2已转采购|销售',
  `LinkNumber` varchar(50) DEFAULT NULL COMMENT '关联订单号',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK2A80F214CA633ABA` (`AllocationProjectId`),
  KEY `FK2A80F214C4170B37` (`HandsPersonId`),
  KEY `FK2A80F214B610FC06` (`OrganId`),
  KEY `FK2A80F2142888F9A` (`ProjectId`),
  KEY `FK2A80F214AAE50527` (`AccountId`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='单据主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_depot_head`
--

LOCK TABLES `zb_erp_depot_head` WRITE;
/*!40000 ALTER TABLE `zb_erp_depot_head` DISABLE KEYS */;
INSERT INTO `zb_erp_depot_head` VALUES (7,'入库','采购',NULL,'GHDD201708120002','GHDD201708120002','季圣华','2017-08-12 12:04:07','2017-08-12 12:03:23',1,NULL,12,-30.000000,NULL,-36.000000,'现付','abcdefg','',NULL,NULL,10.000000,3.600000,32.400000,30.000000,'[\"10\",\"9\"]','[\"10\",\"20\"]',45,'1',NULL,NULL,'0'),(8,'出库','销售',NULL,'XHDD201708120001','XHDD201708120001','季圣华','2017-08-12 18:10:14','2017-08-12 18:09:45',2,NULL,11,17.000000,NULL,24.000000,'现付','','<7>,<6>',NULL,NULL,22.000000,5.280000,18.720000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(9,'入库','采购',NULL,'GHDD201708120003','GHDD201708120003','季圣华','2017-08-12 21:01:09','2017-08-12 21:00:36',1,NULL,11,-100.000000,NULL,-120.000000,'现付','','',NULL,NULL,10.000000,12.000000,108.000000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(10,'入库','采购',NULL,'GHDD201708120004','GHDD201708120004','季圣华','2017-08-12 21:10:42','2017-08-12 21:10:16',1,NULL,4,-10.000000,NULL,-12.000000,'现付','','',NULL,NULL,10.000000,1.200000,10.800000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(11,'入库','采购',NULL,'GHDD201708120005','jshenghua001','季圣华','2017-08-12 22:07:44','2017-08-12 22:06:37',1,NULL,12,-20.000000,NULL,-24.000000,'现付','','',NULL,NULL,10.000000,2.400000,21.600000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(12,'入库','采购',NULL,'GHDD201708120006','GHDD201708120006','季圣华','2017-08-12 22:17:11','2017-08-12 22:16:35',1,NULL,11,-10.000000,NULL,-12.000000,'现付','','',NULL,NULL,10.000000,1.200000,10.800000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'1',NULL,NULL,'0'),(13,'入库','采购',NULL,'GHDD201708120007','jishenghua3','季圣华','2017-08-12 22:17:52','2017-08-12 22:17:14',1,NULL,4,-20.000000,NULL,-24.000000,'现付','','',NULL,NULL,10.000000,2.400000,21.600000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(14,'入库','采购',NULL,'GHDD201708120008','jishenghua004','季圣华','2017-08-12 22:19:37','2017-08-12 22:19:07',1,NULL,11,-30.000000,NULL,-36.000000,'现付','','',NULL,NULL,10.000000,3.600000,32.400000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'1',NULL,NULL,'0'),(16,'入库','采购',NULL,'GHDD201708120009','jishenghua005','季圣华','2017-08-12 22:26:23','2017-08-12 22:25:14',1,NULL,10,-20.000000,NULL,-24.000000,'现付','','',NULL,NULL,10.000000,2.400000,21.600000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(17,'入库','采购',NULL,'GHDD201708120010','GHDD201708120010','季圣华','2017-08-12 22:28:20','2017-08-12 22:28:02',1,NULL,9,-30.000000,NULL,-36.000000,'现付','','',NULL,NULL,10.000000,3.600000,32.400000,NULL,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(18,'入库','采购',NULL,'GHDD201708120011','GHDD201708120011','季圣华','2017-08-12 22:30:08','2017-08-12 22:29:48',1,NULL,4,-20.000000,NULL,-24.000000,'现付','','',NULL,NULL,10.000000,2.400000,21.600000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(19,'入库','采购',NULL,'GHDD201708120012','GHDD201708120012','季圣华','2017-08-12 22:30:57','2017-08-12 22:29:32',1,NULL,NULL,-10.000000,NULL,-26.400000,'现付','','','[\"4\"]','[\"-10\"]',10.000000,2.640000,23.760000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(20,'入库','采购',NULL,'GHDD201708120013','GHDD201708120013','季圣华','2017-08-12 22:46:43','2017-08-12 22:45:55',1,NULL,10,-23.000000,NULL,-36.000000,'现付','','',NULL,NULL,20.000000,7.200000,28.800000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(21,'入库','采购',NULL,'GHDD201708120014','GHDD201708120014','季圣华','2017-08-12 22:46:52','2017-08-12 22:45:59',1,NULL,11,-20.000000,NULL,-26.400000,'现付','','',NULL,NULL,10.000000,2.640000,23.760000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(22,'入库','采购',NULL,'GHDD201708120015','GHDD201708120015','季圣华','2017-08-12 23:49:32','2017-08-12 23:48:24',1,NULL,11,-20.000000,NULL,-24.000000,'现付','','',NULL,NULL,10.000000,2.400000,21.600000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(23,'入库','采购',NULL,'GHDD201708140001','GHDD201708140001','季圣华','2017-08-14 20:41:54','2017-08-14 20:40:49',1,NULL,4,-300.000000,NULL,-360.000000,'现付','','',NULL,NULL,10.000000,36.000000,324.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(24,'入库','采购',NULL,'GHDD201708150001','GHDD201708150001','季圣华','2017-08-15 21:36:25','2017-08-15 21:35:38',1,NULL,11,-675.000000,NULL,-750.000000,'现付','','',NULL,NULL,10.000000,75.000000,675.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(25,'入库','采购',NULL,'GHDD201708150002','GHDD201708150002','季圣华','2017-08-15 22:31:46','2017-08-15 22:29:47',1,NULL,NULL,-33.000000,NULL,-75.000000,'现付','ababab','','[\"9\",\"10\"]','[\"-22\",\"-11\"]',10.000000,7.500000,67.500000,22.000000,'[\"10\",\"8\"]','[\"11\",\"11\"]',NULL,'0',NULL,NULL,'0'),(26,'入库','采购',NULL,'GHDD201708160001','GHDD201708160001','季圣华','2017-08-16 23:50:35','2017-08-16 23:47:42',4,NULL,9,-162.000000,NULL,-150.000000,'现付','','',NULL,NULL,10.000000,18.000000,162.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(27,'入库','采购',NULL,'GHDD201708180001','GHDD201708180001','季圣华','2017-08-18 00:25:58','2017-08-18 00:25:43',1,NULL,11,-74.250000,NULL,-75.000000,'现付','','',NULL,NULL,10.000000,8.250000,74.250000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(28,'入库','采购',NULL,'GHDD201708270001','GHDD201708270001','季圣华','2017-08-27 23:10:44','2017-08-27 23:06:05',46,NULL,10,-64.800000,NULL,-72.000000,'现付','','',NULL,NULL,10.000000,7.200000,64.800000,10.000000,'[\"10\"]','[\"10\"]',NULL,'0',NULL,NULL,'0'),(29,'出库','销售',NULL,'XSCK201708280001','XSCK201708280001','季圣华','2017-08-28 23:06:40','2017-08-28 23:05:11',2,NULL,11,120.850000,NULL,130.000000,'现付','','<7>',NULL,NULL,10.000000,13.650000,122.850000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(30,'入库','销售退货',NULL,'XSTH201708280001','XSTH201708280001','季圣华','2017-08-28 23:13:08','2017-08-28 23:12:48',2,NULL,10,-48.000000,NULL,-48.000000,'现付','','<5>,<6>',NULL,NULL,0.000000,0.000000,48.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(31,'出库','采购退货',NULL,'CGTH201708280001','CGTH201708280001','季圣华','2017-08-28 23:15:45','2017-08-28 23:15:21',1,NULL,10,28.600000,NULL,26.000000,'现付','','',NULL,NULL,0.000000,0.000000,28.600000,12.000000,'[\"10\"]','[\"12\"]',NULL,'0',NULL,NULL,'0'),(32,'入库','其它',NULL,'QTRK201708280001','QTRK201708280001','季圣华','2017-08-28 23:17:55','2017-08-28 23:17:33',1,NULL,NULL,NULL,NULL,12.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(33,'出库','其它',NULL,'QTCK201708280001','QTCK201708280001','季圣华','2017-08-28 23:21:14','2017-08-28 23:20:36',2,NULL,NULL,NULL,NULL,65.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(37,'出库','调拨',NULL,'DBCK201708280002','DBCK201708280002','季圣华','2017-08-28 23:56:34','2017-08-28 23:56:10',NULL,NULL,NULL,NULL,NULL,1.300000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(38,'出库','调拨',NULL,'DBCK201708290001','DBCK201708290001','季圣华','2017-08-29 00:20:11','2017-08-29 00:19:58',NULL,NULL,NULL,NULL,NULL,2.600000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(41,'出库','零售',NULL,'LSCK201708290002','LSCK201708290002','季圣华','2017-08-29 23:29:39','2017-08-29 23:29:06',7,NULL,10,42.000000,NULL,42.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(42,'出库','零售',NULL,'LSCK201708290003','LSCK201708290003','季圣华','2017-08-29 23:35:12','2017-08-29 23:33:21',7,NULL,11,11.000000,NULL,11.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(43,'出库','零售',NULL,'LSCK201708290004','LSCK201708290004','季圣华','2017-08-29 23:39:44','2017-08-29 23:39:28',7,NULL,9,12.100000,NULL,12.100000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(44,'入库','零售退货',NULL,'LSTH201708290001','LSTH201708290001','季圣华','2017-08-29 23:48:43','2017-08-29 23:46:35',7,NULL,10,-2.200000,NULL,-2.200000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(45,'入库','零售退货',NULL,'LSTH201708290002','LSTH201708290002','季圣华','2017-08-29 23:51:55','2017-08-29 23:51:31',7,NULL,12,-3.300000,NULL,-3.300000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(48,'出库','零售',NULL,'LSCK201708310001','LSCK201708310001','季圣华','2017-08-31 00:30:31','2017-08-31 00:29:10',7,NULL,NULL,12.000000,NULL,12.000000,'现付','','','[\"10\",\"11\"]','[\"15\",\"20\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(49,'出库','零售',NULL,'LSCK201708310002','LSCK201708310002','季圣华','2017-08-31 00:57:40','2017-08-31 00:57:08',7,NULL,NULL,12.000000,NULL,12.000000,'现付','','','[\"9\",\"11\"]','[\"22\",\"11\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(50,'出库','零售',NULL,'LSCK201709030001','LSCK201709030001','季圣华','2017-09-03 12:51:50','2017-09-03 12:51:21',10,NULL,10,22.000000,NULL,22.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(52,'出库','零售',NULL,'LSCK201709040001','LSCK201709040001','季圣华','2017-09-04 21:32:49','2017-09-04 21:31:24',7,NULL,11,24.200000,NULL,24.200000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(53,'出库','零售',NULL,'LSCK201709040002','LSCK201709040002','季圣华','2017-09-04 21:34:02','2017-09-04 21:33:30',7,NULL,9,36.300000,NULL,36.300000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(54,'入库','采购',NULL,'CGRK201709040001','CGRK201709040001','季圣华','2017-09-04 22:20:12','2017-09-04 22:13:00',1,NULL,10,-10.800000,NULL,-12.000000,'现付','','',NULL,NULL,10.000000,1.200000,10.800000,12.000000,'[\"9\"]','[\"12\"]',NULL,'0',NULL,NULL,'0'),(57,'入库','采购',NULL,'CGRK201709050001','CGRK201709050001','季圣华','2017-09-05 22:37:54','2017-09-05 22:37:31',1,NULL,11,-182.520000,NULL,-182.400000,'现付','','',NULL,NULL,0.000000,0.000000,182.520000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(63,'入库','采购',NULL,'CGRK201709170001','CGRK201709170001','季圣华','2017-09-17 21:45:14','2017-09-17 21:44:50',1,NULL,10,-13.200000,NULL,-12.000000,'现付','','',NULL,NULL,0.000000,0.000000,13.200000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(65,'入库','采购',NULL,'CGRK201709170002','CGRK201709170002','季圣华','2017-09-17 21:47:07','2017-09-17 20:45:55',1,NULL,NULL,-42.000000,NULL,-39.000000,'现付','','','[\"12\",\"9\"]','[\"-20\",\"-22\"]',0.000000,0.000000,42.900000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(68,'其它','组装单',NULL,'ZZD2017092000001','ZZD2017092000001','季圣华','2017-09-20 23:29:28','2017-09-20 23:29:13',NULL,NULL,NULL,NULL,NULL,7.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(69,'其它','拆卸单',NULL,'CSD2017092000001','CSD2017092000001','季圣华','2017-09-20 23:40:55','2017-09-20 23:40:41',NULL,NULL,NULL,NULL,NULL,0.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(70,'入库','采购',NULL,'CGRK201709210001','CGRK201709210001','季圣华','2017-09-21 22:37:20','2017-09-21 22:36:37',1,NULL,NULL,-50.000000,NULL,-50.000000,'现付','','','[\"4\",\"9\"]','[\"-10\",\"-40\"]',0.000000,0.000000,50.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(71,'入库','销售退货',NULL,'XSTH201709210001','XSTH201709210001','季圣华','2017-09-21 22:39:00','2017-09-21 22:38:37',2,NULL,11,-48.000000,NULL,-48.000000,'现付','','<6>,<7>',NULL,NULL,0.000000,0.000000,48.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(72,'入库','其它',NULL,'QTRK201709210001','QTRK201709210001','季圣华','2017-09-21 22:39:26','2017-09-21 22:39:14',4,NULL,NULL,NULL,NULL,24.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(73,'出库','销售',NULL,'XSCK201709210001','XSCK201709210001','季圣华','2017-09-21 22:40:01','2017-09-21 22:39:44',2,NULL,11,10.000000,NULL,10.000000,'现付','','<6>',NULL,NULL,0.000000,0.000000,10.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(74,'出库','采购退货',NULL,'CGTH201709210001','CGTH201709210001','季圣华','2017-09-21 22:40:57','2017-09-21 22:40:38',4,NULL,4,5.000000,NULL,5.000000,'现付','','',NULL,NULL,0.000000,0.000000,5.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(75,'出库','其它',NULL,'QTCK201709210001','QTCK201709210001','季圣华','2017-09-21 22:41:15','2017-09-21 22:41:02',2,NULL,NULL,NULL,NULL,13.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(76,'出库','调拨',NULL,'DBCK201709210001','DBCK201709210001','季圣华','2017-09-21 22:41:36','2017-09-21 22:41:19',NULL,NULL,NULL,NULL,NULL,10.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(77,'出库','零售',NULL,'LSCK201709210001','LSCK201709210001','季圣华','2017-09-21 22:42:44','2017-09-21 22:42:21',7,NULL,4,2.200000,NULL,2.200000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(78,'入库','零售退货',NULL,'LSTH201709210001','LSTH201709210001','季圣华','2017-09-21 22:46:07','2017-09-21 22:45:49',7,NULL,4,-2.200000,NULL,-2.200000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(79,'入库','采购',NULL,'CGRK201709210002','CGRK201709210002','季圣华','2017-09-21 23:16:37','2017-09-21 23:16:21',1,NULL,11,-23.760000,NULL,-21.600000,'现付','','',NULL,NULL,0.000000,0.000000,23.760000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(80,'其它','组装单',NULL,'ZZD2017092100001','ZZD2017092100001','季圣华','2017-09-21 23:17:16','2017-09-21 23:16:59',NULL,NULL,NULL,NULL,NULL,5.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(82,'入库','采购',NULL,'CGRK201709220001','CGRK201709220001','季圣华','2017-09-22 23:06:01','2017-09-22 23:05:39',1,NULL,NULL,-50.000000,NULL,-52.000000,'现付','','','[\"11\",\"9\"]','[\"-20\",\"-30\"]',10.000000,5.720000,51.480000,5.000000,'[\"11\",\"10\"]','[\"2\",\"3\"]',NULL,'0',NULL,NULL,'0'),(84,'入库','采购',NULL,'CGRK201709220002','CGRK201709220002','季圣华','2017-09-22 23:22:02','2017-09-22 23:21:48',1,NULL,10,-26.400000,NULL,-24.000000,'现付','','',NULL,NULL,0.000000,0.000000,26.400000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(85,'入库','采购',NULL,'CGRK201709240001','CGRK201709240001','季圣华','2017-09-24 22:46:00','2017-09-24 22:44:35',4,NULL,NULL,-85.000000,NULL,-75.000000,'现付','','','[\"10\",\"9\"]','[\"-20\",\"-65\"]',0.000000,0.000000,87.750000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(87,'出库','销售',NULL,'XSCK201709250001','XSCK201709250001','季圣华','2017-09-25 22:24:08','2017-09-25 22:23:47',2,NULL,10,4.000000,NULL,4.000000,'现付','','<6>',NULL,NULL,0.000000,0.000000,4.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(88,'出库','销售',NULL,'XSCK201709250002','XSCK201709250002','季圣华','2017-09-25 22:36:51','2017-09-25 22:35:09',2,NULL,10,39.600000,NULL,40.000000,'现付','','<7>',NULL,NULL,10.000000,4.400000,39.600000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(89,'入库','零售退货',NULL,'LSTH201709260001','LSTH201709260001','季圣华','2017-09-26 00:26:52','2017-09-26 00:26:19',7,NULL,9,-18.000000,NULL,-18.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(90,'出库','零售',NULL,'LSCK201709260001','LSCK201709260001','季圣华','2017-09-26 22:31:24','2017-09-26 22:29:50',7,NULL,NULL,100.000000,NULL,100.000000,'现付','','','[\"10\",\"11\"]','[\"60\",\"40\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(93,'出库','销售',NULL,'XSCK201710080001','XSCK201710080001','季圣华','2017-10-08 19:12:23','2017-10-08 19:11:44',2,NULL,10,0.000000,NULL,2.600000,'现付','','<7>',NULL,NULL,0.000000,0.000000,2.600000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(94,'出库','销售',NULL,'XSCK201710080002','XSCK201710080002','季圣华','2017-10-08 19:58:55','2017-10-08 19:58:27',5,NULL,9,0.000000,NULL,8.000000,'现付','','<6>',NULL,NULL,0.000000,0.000000,8.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(95,'入库','采购',NULL,'CGRK201710180001','CGRK201710180001','季圣华','2017-10-18 23:21:24','2017-10-18 23:21:12',1,NULL,11,-2.860000,NULL,-2.600000,'现付','','',NULL,NULL,0.000000,0.000000,2.860000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(96,'出库','销售',NULL,'XSCK201710240001','XSCK201710240001','季圣华','2017-10-24 22:04:06','2017-10-24 22:03:08',2,NULL,9,0.000000,NULL,2.800000,'现付','','<7>',NULL,NULL,10.000000,0.280000,2.520000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(97,'入库','采购',NULL,'CGRK201710290001','CGRK201710290001','季圣华','2017-10-29 23:30:47','2017-10-29 23:30:08',4,NULL,10,0.000000,NULL,-200.000000,'现付','','',NULL,NULL,0.000000,0.000000,234.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(98,'入库','采购',NULL,'CGRK201710290002','CGRK201710290002','季圣华','2017-10-29 23:32:07','2017-10-29 23:30:52',4,NULL,10,0.000000,NULL,-300.000000,'现付','','',NULL,NULL,0.000000,0.000000,351.000000,NULL,NULL,NULL,NULL,'1',NULL,NULL,'0'),(99,'入库','采购',NULL,'CGRK201710290003','CGRK201710290003','季圣华','2017-10-29 23:33:45','2017-10-29 23:32:11',4,NULL,11,-10.000000,NULL,-720.000000,'现付','','',NULL,NULL,0.000000,0.000000,842.400000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(101,'出库','调拨',NULL,'DBCK201711020001','DBCK201711020001','季圣华','2017-11-02 22:51:17','2017-11-02 22:48:58',NULL,NULL,NULL,0.000000,NULL,50.000000,'现付','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(102,'出库','零售',NULL,'LSCK201711060001','LSCK201711060001','季圣华','2017-11-06 20:38:46','2017-11-06 20:38:01',7,NULL,NULL,12.000000,NULL,12.000000,'现付','','','[\"9\",\"12\"]','[\"10\",\"2\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(103,'入库','采购',NULL,'CGRK201711070001','CGRK201711070001','季圣华','2017-11-07 21:07:05','2017-11-07 21:06:53',1,NULL,10,-26.400000,NULL,-24.000000,'现付','','',NULL,'',0.000000,0.000000,26.400000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(104,'入库','采购',NULL,'CGRK201711070002','CGRK201711070002','季圣华','2017-11-07 21:07:40','2017-11-07 21:07:08',4,NULL,NULL,-11.000000,NULL,-10.000000,'现付','','','[\"9\",\"11\"]','[\"-10\",\"-1\"]',0.000000,0.000000,11.700000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(105,'出库','销售',NULL,'XSCK201711070001','XSCK201711070001','季圣华','2017-11-07 21:08:48','2017-11-07 21:08:34',2,NULL,10,13.000000,NULL,13.000000,'现付','','<6>',NULL,'',0.000000,0.000000,13.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(106,'出库','销售',NULL,'XSCK201711070002','XSCK201711070002','季圣华','2017-11-07 21:09:20','2017-11-07 21:08:51',2,NULL,NULL,13.000000,NULL,13.000000,'现付','','<5>','[\"9\",\"10\"]','[\"5\",\"8\"]',0.000000,0.000000,13.000000,54.000000,'[\"11\",\"10\"]','[\"21\",\"33\"]',NULL,'0',NULL,NULL,'0'),(107,'入库','采购',NULL,'CGRK201712030001','CGRK201712030001','季圣华','2017-12-03 22:38:36','2017-12-03 22:37:26',4,NULL,9,-1.000000,NULL,-1.000000,'现付','','',NULL,'',0.000000,0.000000,1.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(108,'入库','采购',NULL,'CGRK201712030002','sdfasdfa','季圣华','2017-12-03 22:40:57','2017-12-03 22:40:38',4,NULL,4,-42.120000,NULL,-36.000000,'现付','','',NULL,'',0.000000,0.000000,42.120000,NULL,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(109,'入库','采购',NULL,'CGRK201712030003','CGRK201712030003','季圣华','2017-12-03 22:41:38','2017-12-03 22:41:01',4,NULL,11,-1.400000,NULL,-1.200000,'现付','','',NULL,'',0.000000,0.000000,1.400000,NULL,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(110,'入库','采购',NULL,'CGRK201712050001','CGRK201712050001','季圣华','2017-12-05 23:05:48','2017-12-05 23:05:34',1,NULL,10,-11.000000,NULL,-10.000000,'现付','','',NULL,'',0.000000,0.000000,11.000000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(111,'入库','采购',NULL,'CGRK201712050002','CGRK201712050002','季圣华','2017-12-05 23:12:53','2017-12-05 23:12:40',1,NULL,10,0.000000,NULL,-20.000000,'现付','','',NULL,'',0.000000,0.000000,22.000000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0'),(112,'出库','销售',NULL,'XSCK201712100001','XSCK201712100001','季圣华','2017-12-10 21:07:45','2017-12-10 21:07:25',2,NULL,11,2.600000,NULL,2.600000,'现付','','<>',NULL,'',0.000000,0.000000,2.600000,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(113,'入库','采购',NULL,'CGRK201712100001','CGRK201712100001','季圣华','2017-12-10 23:11:20','2017-12-10 23:11:10',4,NULL,9,-14.520000,NULL,-14.300000,'现付','','',NULL,'',0.000000,0.000000,14.520000,0.000000,'[\"undefined\"]','[\"undefined\"]',NULL,'0',NULL,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_depot_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_depot_item`
--

DROP TABLE IF EXISTS `zb_erp_depot_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_depot_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `HeaderId` bigint(20) NOT NULL COMMENT '表头Id',
  `MaterialId` bigint(20) NOT NULL COMMENT '材料Id',
  `MUnit` varchar(20) DEFAULT NULL COMMENT '商品计量单位',
  `OperNumber` decimal(24,6) DEFAULT NULL COMMENT '数量',
  `BasicNumber` decimal(24,6) DEFAULT NULL COMMENT '基础数量，如kg、瓶',
  `UnitPrice` decimal(24,6) DEFAULT NULL COMMENT '单价',
  `TaxUnitPrice` decimal(24,6) DEFAULT NULL COMMENT '含税单价',
  `AllPrice` decimal(24,6) DEFAULT NULL COMMENT '金额',
  `remark` varchar(200) DEFAULT NULL COMMENT '描述',
  `Img` varchar(50) DEFAULT NULL COMMENT '图片',
  `Incidentals` decimal(24,6) DEFAULT NULL COMMENT '运杂费',
  `DepotId` bigint(20) DEFAULT NULL COMMENT '仓库ID（库存是统计出来的）',
  `AnotherDepotId` bigint(20) DEFAULT NULL COMMENT '调拨时，对方仓库Id',
  `TaxRate` decimal(24,6) DEFAULT NULL COMMENT '税率',
  `TaxMoney` decimal(24,6) DEFAULT NULL COMMENT '税额',
  `TaxLastMoney` decimal(24,6) DEFAULT NULL COMMENT '价税合计',
  `OtherField1` varchar(50) DEFAULT NULL COMMENT '自定义字段1-品名',
  `OtherField2` varchar(50) DEFAULT NULL COMMENT '自定义字段2-型号',
  `OtherField3` varchar(50) DEFAULT NULL COMMENT '自定义字段3-制造商',
  `OtherField4` varchar(50) DEFAULT NULL COMMENT '自定义字段4',
  `OtherField5` varchar(50) DEFAULT NULL COMMENT '自定义字段5',
  `MType` varchar(20) DEFAULT NULL COMMENT '商品类型',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK2A819F475D61CCF7` (`MaterialId`),
  KEY `FK2A819F474BB6190E` (`HeaderId`),
  KEY `FK2A819F479485B3F5` (`DepotId`),
  KEY `FK2A819F47729F5392` (`AnotherDepotId`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='单据子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_depot_item`
--

LOCK TABLES `zb_erp_depot_item` WRITE;
/*!40000 ALTER TABLE `zb_erp_depot_item` DISABLE KEYS */;
INSERT INTO `zb_erp_depot_item` VALUES (7,7,500,'码',30.000000,30.000000,1.200000,1.320000,36.000000,'remark',NULL,NULL,3,NULL,10.000000,3.600000,39.600000,'a','b','c','','',NULL,NULL,'0'),(8,8,500,'码',20.000000,20.000000,1.200000,1.200000,24.000000,'',NULL,NULL,3,NULL,NULL,0.000000,24.000000,'','','','','',NULL,NULL,'0'),(9,9,500,'码',100.000000,100.000000,1.200000,1.320000,120.000000,'',NULL,NULL,3,NULL,10.000000,12.000000,132.000000,'','','','','',NULL,NULL,'0'),(10,10,500,'码',10.000000,10.000000,1.200000,1.320000,12.000000,'',NULL,NULL,3,NULL,10.000000,1.200000,13.200000,'','','','','',NULL,NULL,'0'),(11,11,500,'码',20.000000,20.000000,1.200000,1.320000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','',NULL,NULL,'0'),(12,12,500,'码',10.000000,10.000000,1.200000,1.320000,12.000000,'',NULL,NULL,3,NULL,10.000000,1.200000,13.200000,'','','','','',NULL,NULL,'0'),(13,13,500,'码',20.000000,20.000000,1.200000,1.320000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','',NULL,NULL,'0'),(14,14,500,'码',30.000000,30.000000,1.200000,1.320000,36.000000,'',NULL,NULL,3,NULL,10.000000,3.600000,39.600000,'','','','','',NULL,NULL,'0'),(16,16,500,'码',20.000000,20.000000,1.200000,1.320000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','',NULL,NULL,'0'),(17,17,500,'码',30.000000,30.000000,1.200000,1.320000,36.000000,'',NULL,NULL,3,NULL,10.000000,3.600000,39.600000,'','','','','',NULL,NULL,'0'),(18,18,500,'码',20.000000,20.000000,1.200000,1.320000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','',NULL,NULL,'0'),(19,19,500,'码',22.000000,22.000000,1.200000,1.320000,26.400000,'',NULL,NULL,3,NULL,10.000000,2.640000,29.040000,'','','','','',NULL,NULL,'0'),(20,20,500,'码',30.000000,30.000000,1.200000,1.320000,36.000000,'',NULL,NULL,3,NULL,10.000000,3.600000,39.600000,'','','','','',NULL,NULL,'0'),(21,21,500,'码',22.000000,22.000000,1.200000,1.320000,26.400000,'',NULL,NULL,3,NULL,10.000000,2.640000,29.040000,'','','','','',NULL,NULL,'0'),(22,22,500,'码',20.000000,20.000000,1.200000,1.320000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','',NULL,NULL,'0'),(23,23,517,'箱',10.000000,120.000000,36.000000,36.000000,360.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,360.000000,'','','','','',NULL,NULL,'0'),(24,24,518,'包',10.000000,250.000000,75.000000,75.000000,750.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,750.000000,'','','','','',NULL,NULL,'0'),(25,25,518,'包',1.000000,25.000000,75.000000,75.000000,75.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,75.000000,'','','','','',NULL,NULL,'0'),(26,26,518,'包',2.000000,50.000000,75.000000,90.000000,150.000000,'',NULL,NULL,3,NULL,20.000000,30.000000,180.000000,'','','','','',NULL,NULL,'0'),(27,27,518,'包',1.000000,25.000000,75.000000,82.500000,75.000000,'',NULL,NULL,3,NULL,10.000000,7.500000,82.500000,'','','','','',NULL,NULL,'0'),(28,28,517,'箱',2.000000,24.000000,36.000000,36.000000,72.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,72.000000,'','','','','',NULL,NULL,'0'),(29,29,500,'码',100.000000,100.000000,1.300000,1.370000,130.000000,'',NULL,NULL,3,NULL,5.000000,6.500000,136.500000,'','','','','','',NULL,'0'),(30,30,500,'码',40.000000,40.000000,1.200000,1.200000,48.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,48.000000,'','','','','',NULL,NULL,'0'),(31,31,500,'码',20.000000,20.000000,1.300000,1.430000,26.000000,'',NULL,NULL,3,NULL,10.000000,2.600000,28.600000,'','','','','',NULL,NULL,'0'),(32,32,500,'码',10.000000,10.000000,1.200000,1.320000,12.000000,'',NULL,NULL,3,NULL,10.000000,1.200000,13.200000,'','','','','',NULL,NULL,'0'),(33,33,500,'码',50.000000,50.000000,1.300000,1.430000,65.000000,'',NULL,NULL,3,NULL,10.000000,6.500000,71.500000,'','','','','',NULL,NULL,'0'),(37,37,500,'码',1.000000,1.000000,1.300000,1.300000,1.300000,'',NULL,NULL,3,1,0.000000,0.000000,1.300000,'','','','','',NULL,NULL,'0'),(38,38,500,'码',2.000000,2.000000,1.300000,1.300000,2.600000,'',NULL,NULL,3,1,0.000000,0.000000,2.600000,'','','','','',NULL,NULL,'0'),(41,41,500,'码',20.000000,20.000000,2.100000,2.310000,42.000000,'',NULL,NULL,3,NULL,10.000000,4.200000,46.200000,'','','','','',NULL,NULL,'0'),(42,42,500,'码',10.000000,10.000000,1.100000,1.100000,11.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,11.000000,'','','','','',NULL,NULL,'0'),(43,43,500,'码',11.000000,11.000000,1.100000,1.100000,12.100000,'',NULL,NULL,3,NULL,0.000000,0.000000,12.100000,'','','','','',NULL,NULL,'0'),(44,44,499,'码',1.000000,1.000000,2.200000,2.200000,2.200000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.200000,'','','','','',NULL,NULL,'0'),(45,45,500,'码',3.000000,3.000000,1.100000,1.100000,3.300000,'',NULL,NULL,3,NULL,0.000000,0.000000,3.300000,'','','','','',NULL,NULL,'0'),(48,48,498,'码',10.000000,10.000000,1.200000,1.200000,12.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,12.000000,'','','','','',NULL,NULL,'0'),(49,49,498,'码',10.000000,10.000000,1.200000,1.200000,12.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,12.000000,'','','','','',NULL,NULL,'0'),(50,50,500,'码',20.000000,20.000000,1.100000,1.100000,22.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,22.000000,'','','','','',NULL,NULL,'0'),(52,52,500,'码',22.000000,22.000000,1.100000,1.100000,24.200000,'',NULL,NULL,3,NULL,0.000000,0.000000,24.200000,'','','','','',NULL,NULL,'0'),(53,53,500,'码',33.000000,33.000000,1.100000,1.100000,36.300000,'',NULL,NULL,3,NULL,0.000000,0.000000,36.300000,'','','','','',NULL,NULL,'0'),(54,54,500,'码',10.000000,10.000000,1.200000,1.200000,12.000000,'',NULL,NULL,1,NULL,10.000000,0.000000,12.000000,'','','','','','',NULL,'0'),(57,57,500,'码',2.000000,2.000000,1.200000,1.260000,2.400000,'',NULL,NULL,3,NULL,0.000000,0.120000,2.520000,'','','','','',NULL,NULL,'0'),(63,57,517,'箱',5.000000,60.000000,36.000000,36.000000,180.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,180.000000,'','','','','',NULL,NULL,'0'),(64,63,500,'码',10.000000,10.000000,1.200000,1.320000,12.000000,'',NULL,NULL,3,NULL,10.000000,1.200000,13.200000,'','','','','',NULL,NULL,'0'),(66,65,498,'码',30.000000,30.000000,1.300000,1.430000,39.000000,'',NULL,NULL,3,NULL,10.000000,3.900000,42.900000,'','','','','',NULL,NULL,'0'),(71,68,498,'码',1.000000,1.000000,3.000000,3.000000,3.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,3.000000,'','','','','','组合件',NULL,'0'),(72,68,499,'码',1.000000,1.000000,4.000000,4.000000,4.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,4.000000,'','','','','','普通子件',NULL,'0'),(73,69,498,'码',1.000000,1.000000,0.000000,0.000000,0.000000,'',NULL,NULL,1,NULL,0.000000,0.000000,0.000000,'','','','','','组合件',NULL,'0'),(74,69,499,'码',1.000000,1.000000,0.000000,0.000000,0.000000,'',NULL,NULL,1,NULL,0.000000,0.000000,0.000000,'','','','','','普通子件',NULL,'0'),(75,70,487,'码',50.000000,50.000000,1.000000,1.000000,50.000000,'',NULL,NULL,1,NULL,10.000000,0.000000,50.000000,'','','','','','',NULL,'0'),(76,71,499,'码',20.000000,20.000000,2.400000,2.400000,48.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,48.000000,'','','','','','',NULL,'0'),(77,72,499,'码',10.000000,10.000000,2.400000,2.810000,24.000000,'',NULL,NULL,3,NULL,17.000000,4.080000,28.080000,'','','','','','',NULL,'0'),(78,73,487,'码',10.000000,10.000000,1.000000,1.000000,10.000000,'',NULL,NULL,1,NULL,0.000000,0.000000,10.000000,'','','','','','',NULL,'0'),(79,74,487,'码',5.000000,5.000000,1.000000,1.000000,5.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,5.000000,'','','','','','',NULL,'0'),(80,75,500,'码',10.000000,10.000000,1.300000,1.300000,13.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,13.000000,'','','','','','',NULL,'0'),(81,76,487,'码',10.000000,10.000000,1.000000,1.000000,10.000000,'',NULL,NULL,3,1,0.000000,0.000000,10.000000,'','','','','','',NULL,'0'),(82,77,499,'码',1.000000,1.000000,2.200000,2.200000,2.200000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.200000,'','','','','','',NULL,'0'),(83,78,499,'码',1.000000,1.000000,2.200000,2.200000,2.200000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.200000,'','','','','','',NULL,'0'),(84,79,499,'码',9.000000,9.000000,2.400000,2.640000,21.600000,'',NULL,NULL,3,NULL,10.000000,2.160000,23.760000,'','','','','','',NULL,'0'),(85,80,500,'码',1.000000,1.000000,2.000000,2.000000,2.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.000000,'','','','','','组合件',NULL,'0'),(86,80,498,'码',1.000000,1.000000,3.000000,3.000000,3.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,3.000000,'','','','','','普通子件',NULL,'0'),(88,82,498,'码',40.000000,40.000000,1.300000,1.430000,52.000000,'',NULL,NULL,3,NULL,10.000000,5.200000,57.200000,'','','','','','',NULL,'0'),(90,84,499,'码',10.000000,10.000000,2.400000,2.640000,24.000000,'',NULL,NULL,1,NULL,10.000000,2.400000,26.400000,'','','','','','',NULL,'0'),(91,85,518,'包',1.000000,25.000000,75.000000,87.750000,75.000000,'',NULL,NULL,3,NULL,17.000000,12.750000,87.750000,'','','','','','',NULL,'0'),(93,87,518,'kg',1.000000,1.000000,4.000000,4.000000,4.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,4.000000,'','','','','','',NULL,'0'),(94,88,517,'瓶',10.000000,10.000000,4.000000,4.400000,40.000000,'',NULL,NULL,3,NULL,10.000000,4.000000,44.000000,'','','','','','',NULL,'0'),(95,89,517,'箱',1.000000,12.000000,18.000000,18.000000,18.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,18.000000,'','','','','','',NULL,'0'),(96,90,518,'包',2.000000,50.000000,50.000000,50.000000,100.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,100.000000,'','','','','','',NULL,'0'),(101,94,517,'瓶',2.000000,2.000000,4.000000,4.000000,8.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,8.000000,'','','','','','',NULL,'0'),(102,95,498,'码',2.000000,2.000000,1.300000,1.430000,2.600000,'',NULL,NULL,3,NULL,10.000000,0.260000,2.860000,'','','','','','',NULL,'0'),(103,96,498,'码',2.000000,2.000000,1.400000,1.400000,2.800000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.800000,'','','','','','',NULL,'0'),(104,97,485,'码',200.000000,200.000000,1.000000,1.170000,200.000000,'',NULL,NULL,3,NULL,17.000000,34.000000,234.000000,'','','','','','',NULL,'0'),(105,98,487,'码',300.000000,300.000000,1.000000,1.170000,300.000000,'',NULL,NULL,3,NULL,17.000000,51.000000,351.000000,'','','','','','',NULL,'0'),(106,99,517,'箱',20.000000,240.000000,36.000000,42.120000,720.000000,'',NULL,NULL,3,NULL,17.000000,122.400000,842.400000,'','','','','','',NULL,'0'),(107,100,487,'码',1.000000,1.000000,1.000000,1.000000,1.000000,'',NULL,NULL,4,NULL,0.000000,0.000000,1.000000,'','','','','','',NULL,'0'),(108,101,485,'码',50.000000,50.000000,1.000000,1.000000,50.000000,'',NULL,NULL,3,1,0.000000,0.000000,50.000000,'','','','','','',NULL,'0'),(109,102,498,'码',10.000000,10.000000,1.200000,1.200000,12.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,12.000000,'','','','','','',NULL,'0'),(110,103,499,'码',10.000000,10.000000,2.400000,2.640000,24.000000,'',NULL,NULL,3,NULL,10.000000,2.400000,26.400000,'','','','','','',NULL,'0'),(111,104,487,'码',10.000000,10.000000,1.000000,1.170000,10.000000,'',NULL,NULL,3,NULL,17.000000,1.700000,11.700000,'','','','','','',NULL,'0'),(112,105,499,'码',5.000000,5.000000,2.600000,2.600000,13.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,13.000000,'','','','','','',NULL,'0'),(113,106,499,'码',5.000000,5.000000,2.600000,2.600000,13.000000,'',NULL,NULL,3,NULL,0.000000,0.000000,13.000000,'','','','','','',NULL,'0'),(114,107,487,'码',1.000000,1.000000,1.000000,1.000000,1.000000,'',NULL,NULL,1,NULL,0.000000,0.000000,1.000000,'','','','','','',NULL,'0'),(116,108,517,'箱',1.000000,12.000000,36.000000,42.120000,36.000000,'',NULL,NULL,3,NULL,17.000000,6.120000,42.120000,'','','','','','',NULL,'0'),(117,109,500,'码',1.000000,1.000000,1.200000,1.400000,1.200000,'',NULL,NULL,3,NULL,17.000000,0.200000,1.400000,'','','','','','',NULL,'0'),(118,110,487,'码',10.000000,10.000000,1.000000,1.100000,10.000000,'',NULL,NULL,3,NULL,10.000000,1.000000,11.000000,'','','','','','',NULL,'0'),(119,111,487,'码',20.000000,20.000000,1.000000,1.100000,20.000000,'',NULL,NULL,1,NULL,10.000000,2.000000,22.000000,'','','','','','',NULL,'0'),(120,112,499,'码',1.000000,1.000000,2.600000,2.600000,2.600000,'',NULL,NULL,3,NULL,0.000000,0.000000,2.600000,'','','','','','',NULL,'0'),(121,113,498,'码',1.000000,1.000000,1.300000,1.520000,1.300000,'',NULL,NULL,3,NULL,17.000000,0.220000,1.520000,'','','','','','',NULL,'0'),(122,113,498,'码',10.000000,10.000000,1.300000,1.300000,13.000000,'',NULL,NULL,1,NULL,0.000000,0.000000,13.000000,'','','','','','',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_depot_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_functions`
--

DROP TABLE IF EXISTS `zb_erp_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_functions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Number` varchar(50) DEFAULT NULL COMMENT '编号',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `PNumber` varchar(50) DEFAULT NULL COMMENT '上级编号',
  `URL` varchar(100) DEFAULT NULL COMMENT '链接',
  `State` bit(1) DEFAULT NULL COMMENT '收缩',
  `disp_or` varchar(50) DEFAULT NULL COMMENT '排序',
  `Enabled` bit(1) DEFAULT NULL COMMENT '启用',
  `Type` varchar(50) DEFAULT NULL COMMENT '类型',
  `PushBtn` varchar(50) DEFAULT NULL COMMENT '功能按钮',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='功能模块表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_functions`
--

LOCK TABLES `zb_erp_functions` WRITE;
/*!40000 ALTER TABLE `zb_erp_functions` DISABLE KEYS */;
INSERT INTO `zb_erp_functions` VALUES (1,'00','系统管理','0','',_binary '','0010',_binary '','电脑版','','0'),(2,'01','基础数据','0','',_binary '','0020',_binary '','电脑版','','0'),(11,'0001','系统管理','00','',_binary '\0','0110',_binary '','电脑版',NULL,'0'),(12,'000101','应用管理','0001','../manage/app.html',_binary '\0','0132',_binary '','电脑版','','0'),(13,'000102','角色管理','0001','../manage/role.html',_binary '\0','0130',_binary '','电脑版','','0'),(14,'000103','用户管理','0001','../manage/user.html',_binary '\0','0140',_binary '','电脑版',NULL,'0'),(15,'000104','日志管理','0001','../manage/log.html',_binary '\0','0160',_binary '','电脑版',NULL,'0'),(16,'000105','功能管理','0001','../manage/functions.html',_binary '\0','0135',_binary '','电脑版',NULL,'0'),(21,'0101','商品管理','01','',_binary '\0','0220',_binary '','电脑版',NULL,'0'),(22,'010101','商品类别','0101','../materials/mate_cate.html',_binary '\0','0230',_binary '','电脑版',NULL,'0'),(23,'010102','商品信息','0101','../materials/material.html',_binary '\0','0240',_binary '','电脑版',NULL,'0'),(24,'0102','基本资料','01','',_binary '\0','0250',_binary '','电脑版',NULL,'0'),(25,'01020101','供应商信息','0102','../manage/vendor.html',_binary '\0','0260',_binary '','电脑版','1,2','0'),(26,'010202','仓库信息','0102','../manage/depot.html',_binary '\0','0270',_binary '','电脑版',NULL,'0'),(31,'010206','经手人管理','0102','../materials/person.html',_binary '\0','0284',_binary '','电脑版',NULL,'0'),(32,'0502','采购管理','05','',_binary '\0','0330',_binary '','电脑版','','0'),(33,'050201','采购入库','0502','../materials/purchase_in_list.html',_binary '\0','0340',_binary '','电脑版','3,4,5','0'),(38,'0603','销售管理','06','',_binary '\0','0390',_binary '','电脑版','','0'),(40,'080107','调拨出库','0801','../materials/allocation_out_list.html',_binary '\0','0807',_binary '','电脑版','3,4,5','0'),(41,'060303','销售出库','0603','../materials/sale_out_list.html',_binary '\0','0394',_binary '','电脑版','3,4,5','0'),(44,'0704','财务管理','07','',_binary '\0','0450',_binary '','电脑版','','0'),(59,'030101','库存状况','0301','../reports/in_out_stock_report.html',_binary '\0','0600',_binary '','电脑版',NULL,'0'),(194,'010204','收支项目','0102','../manage/inout_item.html',_binary '\0','0282',_binary '','电脑版',NULL,'0'),(195,'010205','结算账户','0102','../manage/account.html',_binary '\0','0283',_binary '','电脑版',NULL,'0'),(196,'03','报表查询','0','',_binary '','0025',_binary '','电脑版','','0'),(197,'070402','收入单','0704','../financial/item_in.html',_binary '\0','0465',_binary '','电脑版','','0'),(198,'0301','报表查询','03','',_binary '\0','0570',_binary '','电脑版',NULL,'0'),(199,'050204','采购退货','0502','../materials/purchase_back_list.html',_binary '\0','0345',_binary '','电脑版','3,4,5','0'),(200,'060305','销售退货','0603','../materials/sale_back_list.html',_binary '\0','0396',_binary '','电脑版','3,4,5','0'),(201,'080103','其它入库','0801','../materials/other_in_list.html',_binary '\0','0803',_binary '','电脑版','3,4,5','0'),(202,'080105','其它出库','0801','../materials/other_out_list.html',_binary '\0','0805',_binary '','电脑版','3,4,5','0'),(203,'070403','支出单','0704','../financial/item_out.html',_binary '\0','0470',_binary '','电脑版','','0'),(204,'070404','收款单','0704','../financial/money_in.html',_binary '\0','0475',_binary '','电脑版','','0'),(205,'070405','付款单','0704','../financial/money_out.html',_binary '\0','0480',_binary '','电脑版','','0'),(206,'070406','转账单','0704','../financial/giro.html',_binary '\0','0490',_binary '','电脑版','','0'),(207,'030102','结算账户','0301','../reports/account_report.html',_binary '\0','0610',_binary '','电脑版',NULL,'0'),(208,'030103','进货统计','0301','../reports/buy_in_report.html',_binary '\0','0620',_binary '','电脑版',NULL,'0'),(209,'030104','销售统计','0301','../reports/sale_out_report.html',_binary '\0','0630',_binary '','电脑版',NULL,'0'),(210,'040102','零售出库','0401','../materials/retail_out_list.html',_binary '\0','0405',_binary '','电脑版','3,4,5','0'),(211,'040104','零售退货','0401','../materials/retail_back_list.html',_binary '\0','0407',_binary '','电脑版','3,4,5','0'),(212,'070407','收预付款','0704','../financial/advance_in.html',_binary '\0','0495',_binary '','电脑版','','0'),(217,'01020102','客户信息','0102','../manage/customer.html',_binary '\0','0262',_binary '','电脑版','1,2','0'),(218,'01020103','会员信息','0102','../manage/member.html',_binary '\0','0263',_binary '','电脑版','1,2','0'),(219,'000107','资产管理','0001','../asset/asset.html',_binary '\0','0170',_binary '\0','电脑版',NULL,'0'),(220,'010103','计量单位','0101','../manage/unit.html',_binary '\0','0245',_binary '','电脑版',NULL,'0'),(221,'04','零售管理','0','',_binary '','0028',_binary '','电脑版','','0'),(222,'05','采购管理','0','',_binary '','0030',_binary '','电脑版','','0'),(223,'06','销售管理','0','',_binary '','0035',_binary '','电脑版','','0'),(224,'07','财务管理','0','',_binary '','0040',_binary '','电脑版','','0'),(225,'0401','零售管理','04','',_binary '\0','0401',_binary '','电脑版','','0'),(226,'030106','入库明细','0301','../reports/in_detail.html',_binary '\0','0640',_binary '','电脑版','','0'),(227,'030107','出库明细','0301','../reports/out_detail.html',_binary '\0','0645',_binary '','电脑版','','0'),(228,'030108','入库汇总','0301','../reports/in_mate_count.html',_binary '\0','0650',_binary '','电脑版','','0'),(229,'030109','出库汇总','0301','../reports/out_mate_count.html',_binary '\0','0655',_binary '','电脑版','','0'),(232,'080109','组装单','0801','../materials/assemble_list.html',_binary '\0','0809',_binary '','电脑版','3,4,5','0'),(233,'080111','拆卸单','0801','../materials/disassemble_list.html',_binary '\0','0811',_binary '','电脑版','3,4,5','0'),(234,'000105','系统配置','0001','../manage/sys_conf.html',_binary '\0','0165',_binary '','电脑版','','0'),(235,'030110','客户对账','0301','../reports/customer_acc.html',_binary '\0','0660',_binary '','电脑版','','0'),(236,'000106','商品属性','0001','../materials/mate_prop.html',_binary '\0','0168',_binary '','电脑版','','0'),(237,'030111','供应商对账','0301','../reports/vendor_acc.html',_binary '\0','0665',_binary '','电脑版','','0'),(238,'08','仓库管理','0','',_binary '','0038',_binary '','电脑版','','0'),(239,'0801','仓库管理','08','',_binary '\0','0801',_binary '','电脑版','','0'),(240,'010104','序列号','0101','../manage/serialNumber.html',_binary '\0','0246',_binary '','电脑版','','0'),(241,'050202','采购订单','0502','../materials/purchase_orders_list.html',_binary '\0','0335',_binary '','电脑版','3','0'),(242,'060301','销售订单','0603','../materials/sale_orders_list.html',_binary '\0','0392',_binary '','电脑版','3','0'),(243,'000108','机构管理','0001','../manage/organization.html',_binary '','0139',_binary '','电脑版','','0');
/*!40000 ALTER TABLE `zb_erp_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_inout_item`
--

DROP TABLE IF EXISTS `zb_erp_inout_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_inout_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `Type` varchar(20) DEFAULT NULL COMMENT '类型',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收支项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_inout_item`
--

LOCK TABLES `zb_erp_inout_item` WRITE;
/*!40000 ALTER TABLE `zb_erp_inout_item` DISABLE KEYS */;
INSERT INTO `zb_erp_inout_item` VALUES (1,'办公耗材','支出','办公耗材',NULL,'0'),(5,'房租收入','收入','房租收入',NULL,'0'),(7,'利息收入','收入','利息收入',NULL,'0'),(8,'水电费','支出','水电费水电费',NULL,'0'),(9,'快递费','支出','快递费',NULL,'0'),(10,'交通报销费','支出','交通报销费',NULL,'0'),(11,'差旅费','支出','差旅费',NULL,'0'),(12,'全车贴膜-普通','收入','',NULL,'0'),(13,'全车贴膜-高档','收入','',NULL,'0'),(14,'洗车','收入','',NULL,'0'),(15,'保养汽车','收入','',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_inout_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_log`
--

DROP TABLE IF EXISTS `zb_erp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userID` bigint(20) NOT NULL COMMENT '操作用户ID',
  `operation` varchar(500) DEFAULT NULL COMMENT '操作模块名称',
  `clientIP` varchar(50) DEFAULT NULL COMMENT '客户端IP',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '操作状态 0==成功，1==失败',
  `contentdetails` varchar(1000) DEFAULT NULL COMMENT '操作详情',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `FKF2696AA13E226853` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=1743 DEFAULT CHARSET=utf8 COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_log`
--

LOCK TABLES `zb_erp_log` WRITE;
/*!40000 ALTER TABLE `zb_erp_log` DISABLE KEYS */;
INSERT INTO `zb_erp_log` VALUES (1722,63,'登录系统','192.168.1.104','2016-11-27 13:17:17',0,'管理用户：jsh 登录系统','jsh 登录系统',NULL),(1723,63,'登录系统','192.168.1.104','2016-11-27 13:17:30',0,'管理用户：jsh 登录系统','jsh 登录系统',NULL),(1724,63,'退出系统','192.168.1.104','2016-11-27 13:17:48',0,'管理用户：jsh 退出系统','jsh 退出系统',NULL),(1725,65,'登录系统','192.168.1.104','2016-11-27 13:17:52',0,'管理用户：ls 登录系统','ls 登录系统',NULL),(1726,65,'退出系统','192.168.1.104','2016-11-27 13:18:18',0,'管理用户：ls 退出系统','ls 退出系统',NULL),(1727,63,'登录系统','192.168.1.104','2016-11-27 13:18:22',0,'管理用户：jsh 登录系统','jsh 登录系统',NULL),(1728,63,'更新user_bus','192.168.1.104','2016-11-27 13:18:44',0,'更新user_bus的ID为  6 成功！','更新user_bus成功',NULL),(1729,63,'退出系统','192.168.1.104','2016-11-27 13:18:48',0,'管理用户：jsh 退出系统','jsh 退出系统',NULL),(1730,65,'登录系统','192.168.1.104','2016-11-27 13:18:53',0,'管理用户：ls 登录系统','ls 登录系统',NULL),(1731,63,'登录系统','192.168.1.104','2016-12-04 10:38:50',0,'管理用户：jsh 登录系统','jsh 登录系统',NULL),(1732,63,'增加物料','192.168.1.104','2016-12-04 10:40:52',0,'增加物料名称为  11 成功！','增加物料成功',NULL),(1733,63,'更新物料','192.168.1.104','2016-12-04 10:59:57',0,'更新物料ID为  499 成功！','更新物料成功',NULL),(1734,63,'更新物料','192.168.1.104','2016-12-04 11:00:13',0,'更新物料ID为  499 成功！','更新物料成功',NULL),(1735,63,'删除物料','192.168.1.104','2016-12-04 11:00:38',0,'删除物料ID为  499 成功！','删除物料成功',NULL),(1736,63,'增加物料','192.168.1.104','2016-12-04 11:02:35',0,'增加物料名称为  11 成功！','增加物料成功',NULL),(1737,63,'批量删除物料','192.168.1.104','2016-12-04 11:02:41',0,'批量删除物料ID为  500 成功！','批量删除物料成功',NULL),(1738,63,'更新功能','192.168.1.104','2016-12-04 11:04:43',0,'更新功能ID为  26 成功！','更新功能成功',NULL),(1739,63,'增加供应商','192.168.1.104','2016-12-04 11:38:13',0,'增加供应商名称为  aa 成功！','增加供应商成功',NULL),(1740,63,'增加供应商','192.168.1.104','2016-12-04 11:48:36',0,'增加供应商名称为  aaaa 成功！','增加供应商成功',NULL),(1741,63,'删除供应商','192.168.1.104','2016-12-04 11:48:53',0,'删除供应商ID为  3,名称为  aa成功！','删除供应商成功',NULL),(1742,63,'更新供应商','192.168.1.104','2016-12-04 11:48:59',0,'更新供应商ID为  4 成功！','更新供应商成功',NULL);
/*!40000 ALTER TABLE `zb_erp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_mate`
--

DROP TABLE IF EXISTS `zb_erp_mate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_mate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CategoryId` bigint(20) DEFAULT NULL COMMENT '产品类型',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `Mfrs` varchar(50) DEFAULT NULL COMMENT '制造商',
  `Packing` decimal(24,6) DEFAULT NULL COMMENT '包装（KG/包）',
  `SafetyStock` decimal(24,6) DEFAULT NULL COMMENT '安全存量（KG）',
  `Model` varchar(50) DEFAULT NULL COMMENT '型号',
  `Standard` varchar(50) DEFAULT NULL COMMENT '规格',
  `Color` varchar(50) DEFAULT NULL COMMENT '颜色',
  `Unit` varchar(50) DEFAULT NULL COMMENT '单位-单个',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `RetailPrice` decimal(24,6) DEFAULT NULL COMMENT '零售价',
  `LowPrice` decimal(24,6) DEFAULT NULL COMMENT '最低售价',
  `PresetPriceOne` decimal(24,6) DEFAULT NULL COMMENT '预设售价一',
  `PresetPriceTwo` decimal(24,6) DEFAULT NULL COMMENT '预设售价二',
  `UnitId` bigint(20) DEFAULT NULL COMMENT '计量单位Id',
  `FirstOutUnit` varchar(50) DEFAULT NULL COMMENT '首选出库单位',
  `FirstInUnit` varchar(50) DEFAULT NULL COMMENT '首选入库单位',
  `PriceStrategy` varchar(500) DEFAULT NULL COMMENT '价格策略',
  `Enabled` bit(1) DEFAULT NULL COMMENT '启用 0-禁用  1-启用',
  `OtherField1` varchar(50) DEFAULT NULL COMMENT '自定义1',
  `OtherField2` varchar(50) DEFAULT NULL COMMENT '自定义2',
  `OtherField3` varchar(50) DEFAULT NULL COMMENT '自定义3',
  `enableSerialNumber` varchar(1) DEFAULT '0' COMMENT '是否开启序列号，0否，1是',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`),
  KEY `FK675951272AB6672C` (`CategoryId`),
  KEY `UnitId` (`UnitId`)
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8 COMMENT='产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_mate`
--

LOCK TABLES `zb_erp_mate` WRITE;
/*!40000 ALTER TABLE `zb_erp_mate` DISABLE KEYS */;
INSERT INTO `zb_erp_mate` VALUES (485,2,'棉线','a1',NULL,100.000000,'A21-4321','5g','白色','码','',1.000000,1.000000,1.000000,1.000000,NULL,'','','[{\"basic\":{\"Unit\":\"\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '','b2','c3','d4','0',NULL,'0'),(487,1,'网布','制造商b',NULL,100.000000,'12343','10g','','码','',1.000000,1.000000,1.000000,1.000000,NULL,'','','[{\"basic\":{\"Unit\":\"kg\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"包\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '',NULL,NULL,NULL,'0',NULL,'0'),(498,1,'蕾丝','制造商c',NULL,NULL,'B123a','6g','','码','',1.200000,1.000000,1.300000,1.400000,NULL,'','','[{\"basic\":{\"Unit\":\"kg\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"包\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '',NULL,NULL,NULL,'0',NULL,'0'),(499,1,'棉线','制造商d',NULL,NULL,'A21-1234','7g','','码','',2.200000,2.000000,2.400000,2.600000,NULL,'','','[{\"basic\":{\"Unit\":\"kg\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"包\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '',NULL,NULL,NULL,'0',NULL,'0'),(500,1,'纯棉线','制造商e',NULL,NULL,'AAA666','11g','','码','',1.100000,1.000000,1.200000,1.300000,NULL,'','','[{\"basic\":{\"Unit\":\"kg\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"包\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '',NULL,NULL,NULL,'0',NULL,'0'),(517,1,'奶酪','制造商',NULL,NULL,'AAAA','12ml','','','',NULL,NULL,NULL,NULL,8,'瓶','箱','[{\"basic\":{\"Unit\":\"瓶\",\"RetailPrice\":\"1.5\",\"LowPrice\":\"2\",\"PresetPriceOne\":\"3\",\"PresetPriceTwo\":\"4\"}},{\"other\":{\"Unit\":\"箱\",\"RetailPrice\":\"18\",\"LowPrice\":\"24\",\"PresetPriceOne\":\"36\",\"PresetPriceTwo\":\"48\"}}]',_binary '',NULL,NULL,NULL,'0',NULL,'0'),(518,1,'安慕希','伊利',NULL,NULL,'abcd','350ml','银白色','','',NULL,NULL,NULL,NULL,2,'kg','包','[{\"basic\":{\"Unit\":\"kg\",\"RetailPrice\":\"2\",\"LowPrice\":\"1\",\"PresetPriceOne\":\"3\",\"PresetPriceTwo\":\"4\"}},{\"other\":{\"Unit\":\"包\",\"RetailPrice\":\"50\",\"LowPrice\":\"25\",\"PresetPriceOne\":\"75\",\"PresetPriceTwo\":\"100\"}}]',_binary '','','','','0',NULL,'0'),(562,1,'红苹果（蛇果）','',NULL,NULL,'60#','大铁筐','','','',NULL,NULL,NULL,NULL,NULL,'','','[{\"basic\":{\"Unit\":\"\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}},{\"other\":{\"Unit\":\"\",\"RetailPrice\":\"\",\"LowPrice\":\"\",\"PresetPriceOne\":\"\",\"PresetPriceTwo\":\"\"}}]',_binary '','','','','0',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_mate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_mate_cate`
--

DROP TABLE IF EXISTS `zb_erp_mate_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_mate_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `CategoryLevel` smallint(6) DEFAULT NULL COMMENT '等级',
  `ParentId` bigint(20) DEFAULT NULL COMMENT '上级ID',
  `disp_or` varchar(10) DEFAULT NULL COMMENT '显示顺序',
  `status` varchar(1) DEFAULT '0' COMMENT '状态，0系统默认，1启用，2删除',
  `serial_no` varchar(100) DEFAULT NULL COMMENT '编号',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`),
  KEY `FK3EE7F725237A77D8` (`ParentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_mate_cate`
--

LOCK TABLES `zb_erp_mate_cate` WRITE;
/*!40000 ALTER TABLE `zb_erp_mate_cate` DISABLE KEYS */;
INSERT INTO `zb_erp_mate_cate` VALUES (1,'根目录',1,-1,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL),(2,'花边一级A',1,1,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'花边一级B',1,1,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'其他',2,3,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'其他',3,4,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'花边二级A',2,2,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'花边三级A',3,6,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'花边二级B',2,2,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'花边一级C',1,1,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'花边三级B',3,6,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zb_erp_mate_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_mate_prop`
--

DROP TABLE IF EXISTS `zb_erp_mate_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_mate_prop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nativeName` varchar(50) DEFAULT NULL COMMENT '原始名称',
  `enabled` bit(1) DEFAULT NULL COMMENT '是否启用',
  `disp_or` varchar(10) DEFAULT NULL COMMENT '排序',
  `anotherName` varchar(50) DEFAULT NULL COMMENT '别名',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='产品扩展字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_mate_prop`
--

LOCK TABLES `zb_erp_mate_prop` WRITE;
/*!40000 ALTER TABLE `zb_erp_mate_prop` DISABLE KEYS */;
INSERT INTO `zb_erp_mate_prop` VALUES (1,'规格',_binary '','02','规格','0'),(2,'颜色',_binary '','01','颜色','0'),(3,'制造商',_binary '\0','03','制造商','0'),(4,'自定义1',_binary '\0','04','自定义1','0'),(5,'自定义2',_binary '\0','05','自定义2','0'),(6,'自定义3',_binary '\0','06','自定义3','0');
/*!40000 ALTER TABLE `zb_erp_mate_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_orga_user_rel`
--

DROP TABLE IF EXISTS `zb_erp_orga_user_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_orga_user_rel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orga_id` bigint(20) NOT NULL COMMENT '机构id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_blng_orga_dspl_seq` varchar(20) DEFAULT NULL COMMENT '用户在所属机构中显示顺序',
  `delete_flag` char(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='机构用户关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_orga_user_rel`
--

LOCK TABLES `zb_erp_orga_user_rel` WRITE;
/*!40000 ALTER TABLE `zb_erp_orga_user_rel` DISABLE KEYS */;
INSERT INTO `zb_erp_orga_user_rel` VALUES (1,2,64,NULL,'0',NULL,NULL,NULL,NULL,NULL),(2,2,65,NULL,'0',NULL,NULL,NULL,NULL,NULL),(3,3,67,NULL,'0',NULL,NULL,NULL,NULL,NULL),(4,4,84,NULL,'0',NULL,NULL,NULL,NULL,NULL),(5,5,86,NULL,'0',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zb_erp_orga_user_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_organization`
--

DROP TABLE IF EXISTS `zb_erp_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `org_no` varchar(20) DEFAULT NULL COMMENT '机构编号',
  `org_full_name` varchar(500) DEFAULT NULL COMMENT '机构全称',
  `org_abr` varchar(20) DEFAULT NULL COMMENT '机构简称',
  `org_tpcd` varchar(9) DEFAULT NULL COMMENT '机构类型',
  `org_stcd` char(1) DEFAULT NULL COMMENT '机构状态,1未营业、2正常营业、3暂停营业、4终止营业、5已除名',
  `org_parent_no` varchar(20) DEFAULT NULL COMMENT '机构父节点编号',
  `disp_or` varchar(20) DEFAULT NULL COMMENT '机构显示顺序',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `org_create_time` datetime DEFAULT NULL COMMENT '机构创建时间',
  `org_stop_time` datetime DEFAULT NULL COMMENT '机构停运时间',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_organization`
--

LOCK TABLES `zb_erp_organization` WRITE;
/*!40000 ALTER TABLE `zb_erp_organization` DISABLE KEYS */;
INSERT INTO `zb_erp_organization` VALUES (1,'01','根机构','根机构',NULL,'2','-1','1','根机构，初始化存在',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'销售','销售',NULL,'1','01','1','机构表初始化',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'sdf444','sdf444',NULL,'1','01','2','机构表初始化',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'1231','1231',NULL,'1','01','3','机构表初始化',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'23','23',NULL,'1','01','4','机构表初始化',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `zb_erp_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_person`
--

DROP TABLE IF EXISTS `zb_erp_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Type` varchar(20) DEFAULT NULL COMMENT '类型',
  `Name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='经手人表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_person`
--

LOCK TABLES `zb_erp_person` WRITE;
/*!40000 ALTER TABLE `zb_erp_person` DISABLE KEYS */;
INSERT INTO `zb_erp_person` VALUES (3,'财务员','王五-财务',NULL,'0'),(4,'财务员','赵六-财务',NULL,'0'),(5,'业务员','小李',NULL,'0'),(6,'业务员','小军',NULL,'0'),(7,'业务员','小曹',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_role`
--

DROP TABLE IF EXISTS `zb_erp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_role`
--

LOCK TABLES `zb_erp_role` WRITE;
/*!40000 ALTER TABLE `zb_erp_role` DISABLE KEYS */;
INSERT INTO `zb_erp_role` VALUES (4,'管理员',NULL,NULL,NULL,NULL,'0'),(5,'仓管员',NULL,NULL,NULL,NULL,'0'),(6,'aaaa',NULL,NULL,NULL,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_serial_no`
--

DROP TABLE IF EXISTS `zb_erp_serial_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_serial_no` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `material_Id` bigint(20) DEFAULT NULL COMMENT '产品表id',
  `serial_no` varchar(64) DEFAULT NULL COMMENT '序列号',
  `is_Sell` varchar(1) DEFAULT '0' COMMENT '是否卖出，0未卖出，1卖出',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  `create_Time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_Time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `depot_head_Id` bigint(20) DEFAULT NULL COMMENT '单据主表id，用于跟踪序列号流向',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列号表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_serial_no`
--

LOCK TABLES `zb_erp_serial_no` WRITE;
/*!40000 ALTER TABLE `zb_erp_serial_no` DISABLE KEYS */;
/*!40000 ALTER TABLE `zb_erp_serial_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_supplier`
--

DROP TABLE IF EXISTS `zb_erp_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supplier` varchar(255) NOT NULL COMMENT '供应商名称',
  `contacts` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phonenum` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `description` varchar(500) DEFAULT NULL COMMENT '备注',
  `isystem` tinyint(4) DEFAULT NULL COMMENT '是否系统自带 0==系统 1==非系统',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `enabled` bit(1) DEFAULT NULL COMMENT '启用',
  `AdvanceIn` decimal(24,6) DEFAULT '0.000000' COMMENT '预收款',
  `BeginNeedGet` decimal(24,6) DEFAULT NULL COMMENT '期初应收',
  `BeginNeedPay` decimal(24,6) DEFAULT NULL COMMENT '期初应付',
  `AllNeedGet` decimal(24,6) DEFAULT NULL COMMENT '累计应收',
  `AllNeedPay` decimal(24,6) DEFAULT NULL COMMENT '累计应付',
  `fax` varchar(30) DEFAULT NULL COMMENT '传真',
  `telephone` varchar(30) DEFAULT NULL COMMENT '手机',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `taxNum` varchar(50) DEFAULT NULL COMMENT '纳税人识别号',
  `bankName` varchar(50) DEFAULT NULL COMMENT '开户行',
  `accountNumber` varchar(50) DEFAULT NULL COMMENT '账号',
  `taxRate` decimal(24,6) DEFAULT NULL COMMENT '税率',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='供应商/客户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_supplier`
--

LOCK TABLES `zb_erp_supplier` WRITE;
/*!40000 ALTER TABLE `zb_erp_supplier` DISABLE KEYS */;
INSERT INTO `zb_erp_supplier` VALUES (1,'上海某某花边工厂','乔治','','','',1,'供应商',_binary '',0.000000,NULL,20.000000,NULL,NULL,'','','','','','',10.000000,NULL,'0'),(2,'客户AAAA','佩琪','','','',1,'客户',_binary '',24.000000,10.000000,NULL,NULL,NULL,'','','','','','',NULL,NULL,'0'),(4,'苏州新源布料厂','龙哥','13000000000','312341@qq.com','55',1,'供应商',_binary '',0.000000,NULL,44.000000,NULL,NULL,'','','','','','',17.000000,NULL,'0'),(5,'客户BBBB','彪哥','13000000000','666@qq.com','',1,'客户',_binary '',36.000000,20.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(6,'南通宝贝家纺','姗姗','1231','31243@qq.com','备注备注备注',1,'客户',_binary '',0.000000,5.000000,NULL,NULL,NULL,'2134','15678903','地址地址地址','纳税人识别号','开户行','31234124312',0.170000,NULL,'0'),(7,'非会员','宋江','13000000000','123456@qq.com','',1,'会员',_binary '',76.600000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(8,'hy00001','宋江','13000000000','','',1,'会员',_binary '',956.000000,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'0'),(9,'hy00002','吴用','13000000000','','',1,'会员',_binary '',344.000000,NULL,NULL,NULL,NULL,'','','','','','',NULL,NULL,'0'),(10,'1268787965','李逵','82567384','423@qq.com','',1,'会员',_binary '',2122.000000,NULL,NULL,NULL,NULL,'','13000000001','','','','',NULL,NULL,'0'),(45,'666666666','武松','82567384','423@qq.com','',1,'会员',_binary '',2100.000000,0.000000,0.000000,0.000000,0.000000,'','13000000001','','','','',0.000000,NULL,'0'),(46,'南通居梦莱家纺','曹操','','','',1,'供应商',_binary '',0.000000,NULL,NULL,0.000000,0.000000,'','13000000000','','','','',NULL,NULL,'0');
/*!40000 ALTER TABLE `zb_erp_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_sys_conf`
--

DROP TABLE IF EXISTS `zb_erp_sys_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_sys_conf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `company_contacts` varchar(20) DEFAULT NULL COMMENT '公司联系人',
  `company_address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `company_tel` varchar(20) DEFAULT NULL COMMENT '公司电话',
  `company_fax` varchar(20) DEFAULT NULL COMMENT '公司传真',
  `company_post_code` varchar(20) DEFAULT NULL COMMENT '公司邮编',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统参数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_sys_conf`
--

LOCK TABLES `zb_erp_sys_conf` WRITE;
/*!40000 ALTER TABLE `zb_erp_sys_conf` DISABLE KEYS */;
INSERT INTO `zb_erp_sys_conf` VALUES (7,'南通jshERP公司','张三','南通市通州区某某路','0513-10101010','0513-18181818','226300',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_sys_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_unit`
--

DROP TABLE IF EXISTS `zb_erp_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `UName` varchar(50) DEFAULT NULL COMMENT '名称，支持多单位',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='多单位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_unit`
--

LOCK TABLES `zb_erp_unit` WRITE;
/*!40000 ALTER TABLE `zb_erp_unit` DISABLE KEYS */;
INSERT INTO `zb_erp_unit` VALUES (2,'kg,包(1:25)',NULL,'0'),(8,'瓶,箱(1:12)',NULL,'0'),(11,'qwe,sed(1:33)',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_user`
--

DROP TABLE IF EXISTS `zb_erp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) NOT NULL COMMENT '用户姓名--例如张三',
  `loginame` varchar(255) DEFAULT NULL COMMENT '登录用户名--可能为空',
  `password` varchar(50) DEFAULT NULL COMMENT '登陆密码',
  `position` varchar(200) DEFAULT NULL COMMENT '职位',
  `department` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `phonenum` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `ismanager` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否为管理者 0==管理者 1==员工',
  `isystem` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否系统自带数据 ',
  `Status` tinyint(4) DEFAULT '0' COMMENT '状态，0：正常，1：删除，2封禁',
  `description` varchar(500) DEFAULT NULL COMMENT '用户描述信息',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_user`
--

LOCK TABLES `zb_erp_user` WRITE;
/*!40000 ALTER TABLE `zb_erp_user` DISABLE KEYS */;
INSERT INTO `zb_erp_user` VALUES (63,'季圣华','jsh','e10adc3949ba59abbe56e057f20f883e','',NULL,'','',1,1,0,'',NULL,NULL),(64,'张三','zs','e10adc3949ba59abbe56e057f20f883e','',NULL,'','',1,0,0,'',NULL,NULL),(65,'李四','ls','e10adc3949ba59abbe56e057f20f883e','',NULL,'','',1,0,0,'',NULL,NULL),(67,'fas666','asd555',NULL,'asdf333',NULL,'11111@qq.com','222222',1,0,0,'sdf0000',NULL,NULL),(74,'21312sfdfsdf','1231234',NULL,'',NULL,'','',1,0,0,'',NULL,NULL),(84,'123123','jsh123',NULL,'3123',NULL,'','',1,0,0,'',NULL,NULL),(86,'2333','sdf111aaa',NULL,'3232',NULL,'','32323',1,0,0,'33232',NULL,NULL),(87,'122123132','sdfasd1',NULL,'',NULL,'','',1,0,0,'',NULL,NULL),(90,'232343','233',NULL,'',NULL,'','',1,0,0,'',NULL,NULL);
/*!40000 ALTER TABLE `zb_erp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zb_erp_user_bus`
--

DROP TABLE IF EXISTS `zb_erp_user_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zb_erp_user_bus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `Type` varchar(50) DEFAULT NULL COMMENT '类别',
  `KeyId` varchar(50) DEFAULT NULL COMMENT '主ID',
  `Value` varchar(10000) DEFAULT NULL COMMENT '值',
  `BtnStr` varchar(2000) DEFAULT NULL COMMENT '按钮权限',
  `delete_Flag` varchar(1) DEFAULT '0' COMMENT '删除标记，0未删除，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户/角色/模块关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zb_erp_user_bus`
--

LOCK TABLES `zb_erp_user_bus` WRITE;
/*!40000 ALTER TABLE `zb_erp_user_bus` DISABLE KEYS */;
INSERT INTO `zb_erp_user_bus` VALUES (1,'RoleAPP','4','[23][24][25][27][8][26][22][7][3][6]',NULL,'0'),(2,'RoleAPP','5','[8][7][6]',NULL,'0'),(3,'RoleAPP','6','[21][1][8]',NULL,'0'),(4,'RoleAPP','7','[21][1][8][11]',NULL,'0'),(5,'RoleFunctions','4','[13][12][16][243][14][15][234][236][22][23][220][240][25][217][218][26][194][195][31][59][207][208][209][226][227][228][229][235][237][210][211][241][33][199][242][41][200][201][202][40][232][233][197][203][204][205][206][212]','[{\"funId\":\"25\",\"btnStr\":\"1\"},{\"funId\":\"217\",\"btnStr\":\"1\"},{\"funId\":\"218\",\"btnStr\":\"1\"},{\"funId\":\"241\",\"btnStr\":\"3\"},{\"funId\":\"242\",\"btnStr\":\"3\"}]','0'),(6,'RoleFunctions','5','[22][23][25][26][194][195][31][33][200][201][41][199][202]',NULL,'0'),(7,'RoleFunctions','6','[13][12][16][33]','[{\"funId\":\"33\",\"btnStr\":\"4\"}]','0'),(8,'RoleAPP','8','[21][1][8][11][10]',NULL,'0'),(9,'RoleFunctions','7','[168][13][12][16][14][15][189][18][19][132]',NULL,'0'),(10,'RoleFunctions','8','[168][13][12][16][14][15][189][18][19][132][22][23][25][26][27][157][158][155][156][125][31][127][126][128][33][34][35][36][37][39][40][41][42][43][46][47][48][49][50][51][52][53][54][55][56][57][192][59][60][61][62][63][65][66][68][69][70][71][73][74][76][77][79][191][81][82][83][85][89][161][86][176][165][160][28][134][91][92][29][94][95][97][104][99][100][101][102][105][107][108][110][111][113][114][116][117][118][120][121][131][135][123][122][20][130][146][147][138][148][149][153][140][145][184][152][143][170][171][169][166][167][163][164][172][173][179][178][181][182][183][186][187]',NULL,'0'),(11,'RoleFunctions','9','[168][13][12][16][14][15][189][18][19][132][22][23][25][26][27][157][158][155][156][125][31][127][126][128][33][34][35][36][37][39][40][41][42][43][46][47][48][49][50][51][52][53][54][55][56][57][192][59][60][61][62][63][65][66][68][69][70][71][73][74][76][77][79][191][81][82][83][85][89][161][86][176][165][160][28][134][91][92][29][94][95][97][104][99][100][101][102][105][107][108][110][111][113][114][116][117][118][120][121][131][135][123][122][20][130][146][147][138][148][149][153][140][145][184][152][143][170][171][169][166][167][163][164][172][173][179][178][181][182][183][186][187][188]',NULL,'0'),(12,'UserRole','1','[5]',NULL,'0'),(13,'UserRole','2','[6][7]',NULL,'0'),(14,'UserDepot','2','[1][2][6][7]',NULL,'0'),(15,'UserDepot','1','[1][2][5][6][7][10][12][14][15][17]',NULL,'0'),(16,'UserRole','63','[4]',NULL,'0'),(17,'RoleFunctions','13','[46][47][48][49]',NULL,'0'),(18,'UserDepot','63','[1][3]',NULL,'0'),(19,'UserDepot','5','[6][45][46][50]',NULL,'0'),(20,'UserRole','5','[5]',NULL,'0'),(21,'UserRole','64','[5]',NULL,'0'),(22,'UserDepot','64','[1]',NULL,'0'),(23,'UserRole','65','[5]',NULL,'0'),(24,'UserDepot','65','[1]',NULL,'0'),(25,'UserCustomer','64','[5][2]',NULL,'0'),(26,'UserCustomer','65','[6]',NULL,'0'),(27,'UserCustomer','63','[5][2]',NULL,'0');
/*!40000 ALTER TABLE `zb_erp_user_bus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-23 11:36:35
