CREATE DATABASE  IF NOT EXISTS `scada` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scada`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: scada
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ownername` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'企业','搜狐公司','张朝阳','-1900','朝阳区','王宇'),(2,'居民','003','吴青峰','+120','海淀区','黎光'),(3,'居民','008','李珊珊','+45','朝阳区','王宇'),(5,'企业','平乐园小学','李珊珊','+1390','朝阳区','王宇'),(6,'qq','qq','qq','qq','qq','qq');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `resident` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'朝阳区','王宇','45032','356'),(2,'海淀区','黎光','38677','278'),(6,'东城区','段莹莹','56777','210'),(7,'东城区','张小泉','53700','219');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets_machineroom`
--

DROP TABLE IF EXISTS `assets_machineroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets_machineroom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets_machineroom`
--

LOCK TABLES `assets_machineroom` WRITE;
/*!40000 ALTER TABLE `assets_machineroom` DISABLE KEYS */;
INSERT INTO `assets_machineroom` VALUES (1,'机房1','机房一号房','就是一个备注而已1'),(3,'机房2','机房二号房','就是一个备注而已2'),(4,'机房4','机房4号房','就是一个备注而已4');
/*!40000 ALTER TABLE `assets_machineroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ownername` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `presentmonth` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,'企业','网易公司','丁磊','789423.10','23489.60','5677.80','海淀区'),(2,'居民','001','张三','789.10','65.20','24.40','朝阳区');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge`
--

DROP TABLE IF EXISTS `charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `operatename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge`
--

LOCK TABLES `charge` WRITE;
/*!40000 ALTER TABLE `charge` DISABLE KEYS */;
INSERT INTO `charge` VALUES (1,'居民','002','朝阳区','钱多多','100','123','2015-07-10','张倩'),(2,'居民','008','朝阳区','吴宇','200','178','2015-07-16','张倩'),(5,'企业','搜狐公司','朝阳区','张朝阳','30000','50000','2015-07-09','张倩'),(6,'11','11','11','11','11','111','111','11');
/*!40000 ALTER TABLE `charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `ownername` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'居民','001','朝阳区','3','张三','男','1979-10-16','朝阳区南磨房21号','010-86543241'),(2,'居民','002','朝阳区','5','李四','男','1989-11-14','朝阳区南磨房12号','010-67432222'),(3,'居民','003','海淀区','2','吴青峰','男','1988-02-02','海淀区苏州街77号','010-77652221'),(4,'企业','网易公司','海淀区','488','丁磊','男','1971-10-01','海淀区中关村东路1号','400-600-8500'),(5,'企业','搜狐公司','朝阳区','350','张朝阳','男','1964-06-14','朝阳区平乐园100号','400-800-8000'),(6,'企业','平乐园小学','朝阳区','1390','李珊珊','女','1970-02-04','朝阳区平乐园56号','13312345678'),(7,'11','11','11','21','11','11','2013-11-11','12','12'),(8,'11','11','11','21','11','11','2013-11-11','12','12'),(9,'33','33','33','33','33','33','2013-11-11','33','33'),(10,'as','as','asa','sas','as','as','2014-11-11','qw','as');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csrm`
--

DROP TABLE IF EXISTS `csrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csrm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `researchname` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `contactway` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csrm`
--

LOCK TABLES `csrm` WRITE;
/*!40000 ALTER TABLE `csrm` DISABLE KEYS */;
INSERT INTO `csrm` VALUES (1,'居民','001','张三','2015-06-21','电话','13399998888','8','无','朝阳区','王宇','无'),(2,'居民','007','吴晓青','2015-07-09','电话','13599991234',NULL,'无','朝阳区','王宇','无'),(3,'居民','009','张天翼','2014-12-12','电话','13599991000','9','无','朝阳区','王宇','无'),(4,'居民','008','张天','2014-12-12','电话','110','9','无','朝阳区','王宇','无');
/*!40000 ALTER TABLE `csrm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `device_ruletype` varchar(255) DEFAULT NULL,
  `device_rulename` varchar(255) DEFAULT NULL,
  `device_pipletype` varchar(255) DEFAULT NULL,
  `device_state` varchar(255) DEFAULT NULL,
  `device_elec` varchar(255) DEFAULT NULL,
  `device_station` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,40100002,'01厂站仪表001','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL),(2,40100003,'01厂站仪表002','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL),(3,40100004,'01厂站仪表003','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL),(4,40100005,'01厂站仪表004','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL),(5,40200006,'01厂站仪表005','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','串口','投入','0.23千伏',NULL),(6,40100007,'01厂站仪表006','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','串口','投入','0.23千伏',NULL),(7,40100008,'01厂站仪表007','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL),(8,40100009,'01厂站仪表008','仪表','MODBUS','MODBUS(CRP_Modbus.dll)','网络','投入','0.23千伏',NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documenturl`
--

DROP TABLE IF EXISTS `documenturl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documenturl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) DEFAULT NULL,
  `doc_user` varchar(255) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `doc_date` datetime DEFAULT NULL,
  `doc_author` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `doc_subtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documenturl`
--

LOCK TABLES `documenturl` WRITE;
/*!40000 ALTER TABLE `documenturl` DISABLE KEYS */;
INSERT INTO `documenturl` VALUES (1,'CSS2.0_DOC.chm',NULL,'D:\\apache-tomcat-7.0.62\\webapps\\scada\\upload\\CSS2.0_DOC.chm','2015-07-27 09:53:33',NULL,NULL,NULL);
/*!40000 ALTER TABLE `documenturl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elecase`
--

DROP TABLE IF EXISTS `elecase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elecase` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elecase`
--

LOCK TABLES `elecase` WRITE;
/*!40000 ALTER TABLE `elecase` DISABLE KEYS */;
INSERT INTO `elecase` VALUES (1,'梦幻','2015-08-31 16:44:52','将装置ID：40100002改为40100002\r\n将当前状态：维修改为故障\r\n','0987654321`','source'),(2,'梦幻','2015-08-31 21:44:04','将装置ID：40100002改为40100002\n将当前状态：投入改为维修\n',NULL,'source'),(3,'梦幻','2015-08-31 21:46:52','将装置ID：40100002 改为 40100002\n将当前状态：故障 改为 维修\n',NULL,'source'),(4,'梦幻','2015-09-01 13:43:54','将当前状态：维修 改为 投入\n',NULL,'source'),(5,'梦幻','2015-09-04 20:31:00','将装置名：测试厂站06 改为 测试厂站05\r\n','1234567','problem'),(6,'梦幻','2015-09-04 20:34:44','将告警等级：重要 改为 次要\n将告警等级：工况类告警 改为 人工类告警\n',NULL,'problem'),(7,'梦幻','2015-09-04 20:35:40','将装置名：01厂站仪表002 改为 01厂站仪表0023\n将装置名：测试厂站05 改为 测试厂站12\n将告警信息：01厂站仪表002 装置投入，机器号:1 改为 01厂站仪表002 装置投入\n将告警等级：次要 改为 一般\n将对象名：设备节点表:401000002 改为 设备节点表:4010000023\n将告警信息：装置投入 改为 装置投入1\n将告警等级：人工类告警 改为 其他类告警\n',NULL,'problem'),(8,'梦幻','2015-10-11 11:49:23','将装置类型：仪表 改为 通信管理机\n将电压等级：0.1千伏 改为 0.23千伏\n',NULL,'source');
/*!40000 ALTER TABLE `elecase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `feedbackname` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `contactway` varchar(255) DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'企业','搜狐公司','张朝阳','2015-06-25','01089673821','电话','电费太贵','Y','朝阳区','王宇','无'),(2,'居民','003','吴青峰','2015-06-27','13819342689','电话','电表不准','N','海淀区','黎光','无'),(3,'居民','007','吴晓青','2014-12-12','13599991098','电话',NULL,'否','朝阳区','王宇','无');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_inbox`
--

DROP TABLE IF EXISTS `mail_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_inbox` (
  `message_name` varchar(200) NOT NULL,
  `repository_name` varchar(100) NOT NULL,
  `message_state` varchar(30) NOT NULL,
  `error_message` varchar(200) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `recipients` text NOT NULL,
  `remote_host` varchar(255) NOT NULL,
  `remote_addr` varchar(20) NOT NULL,
  `message_body` longblob NOT NULL,
  `message_attributes` longblob,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`repository_name`,`message_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_inbox`
--

LOCK TABLES `mail_inbox` WRITE;
/*!40000 ALTER TABLE `mail_inbox` DISABLE KEYS */;
INSERT INTO `mail_inbox` VALUES ('Mail1439689423188-0','chenxiaoxiao','root',NULL,'menghan@scada.com','chenxiaoxiao@scada.com','localhost','127.0.0.1','Return-Path: <menghan@scada.com>\r\nDelivered-To: chenxiaoxiao@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 341\r\n          for <chenxiaoxiao@scada.com>;\r\n          Sun, 16 Aug 2015 09:43:42 +0800 (CST)\r\nDate: Sun, 16 Aug 2015 09:43:42 +0800\r\nFrom: \"menghan@scada.com\" <menghan@scada.com>\r\nTo: chenxiaoxiao <chenxiaoxiao@scada.com>\r\nSubject: =?GB2312?B?0tG3osvN08q8/rLiytQ=?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <201508160943420607290@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart851180441562_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart851180441562_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\n0tG3osvN08q8/rLiytTS0beiy83Tyrz+suLK1NLRt6LLzdPKvP6y4srU0tG3osvN08q8/rLiytTS\r\n0beiy83Tyrz+suLK1NLRt6LLzdPKvP6y4srU0tG3osvN08q8/rLiytTS0beiy83Tyrz+suLK1NLR\r\nt6LLzdPKvP6y4srU0tG3osvN08q8/rLiytTS0beiy83Tyrz+suLK1NLRt6LLzdPKvP6y4srU0tG3\r\nosvN08q8/rLiytTS0beiy83Tyrz+suLK1NLRt6LLzdPKvP6y4srU0tG3osvN08q8/rLiytTS0bei\r\ny83Tyrz+suLK1NLRt6LLzdPKvP6y4srU0tG3osvN08q8/rLiytShow0K\r\n\r\n------=_001_NextPart851180441562_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span></span>=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=\r\n=B2=E2=CA=D4<span style=3D\"font-size: 10.5pt; line-height: 1.5; background=\r\n-color: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span st=\r\nyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=D2=\r\n=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10=\r\n.5pt; line-height: 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=\r\n=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=\r\n=D4</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-c=\r\nolor: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span styl=\r\ne=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=D2=\r\n=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10=\r\n.5pt; line-height: 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=\r\n=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=\r\n=D4</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-c=\r\nolor: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span styl=\r\ne=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=D2=\r\n=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10=\r\n.5pt; line-height: 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=\r\n=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=\r\n=D4</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-c=\r\nolor: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span styl=\r\ne=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=D2=\r\n=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10=\r\n.5pt; line-height: 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=\r\n=CA=BC=FE=B2=E2=CA=D4</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=\r\n=D4</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-c=\r\nolor: window;\">=D2=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4</span><span styl=\r\ne=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=D2=\r\n=D1=B7=A2=CB=CD=D3=CA=BC=FE=B2=E2=CA=D4=A1=A3</span></div>=0A</body></html=\r\n>\r\n------=_001_NextPart851180441562_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-16 09:43:43'),('Mail1439617708223-0','menghan','root',NULL,'chenxiaoxiao@scada.com','menghan@scada.com','localhost','127.0.0.1','Return-Path: <chenxiaoxiao@scada.com>\r\nDelivered-To: menghan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 903\r\n          for <menghan@scada.com>;\r\n          Sat, 15 Aug 2015 13:48:27 +0800 (CST)\r\nDate: Sat, 15 Aug 2015 13:48:27 +0800\r\nFrom: \"chenxiaoxiao@scada.com\" <chenxiaoxiao@scada.com>\r\nTo: menghan <menghan@scada.com>\r\nSubject: =?GB2312?B?z+7Ev734tsg=?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <201508151348274921736@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart686065372782_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart686065372782_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\nyv2+3b/ixeTWw83qs8mjrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+\r\n3b/ixeTWw83qs8mjrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/i\r\nxeTWw83qs8mjrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/ixeTW\r\nw83qs8mjrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/ixeTWw83q\r\ns8mjrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/ixeTWw83qs8mj\r\nrLu3vrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/ixeTWw83qs8mjrLu3\r\nvrO07r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qO7yv2+3b/ixeTWw83qs8mjrLu3vrO0\r\n7r2ozeqzyaOstPOyv7fWxKO/6bmmxNzS0b6tyrXP1qGjDQo=\r\n\r\n------=_001_NextPart686065372782_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span></span>=CA=FD=BE=DD=BF=E2=C5=E4=D6=C3=\r\n=CD=EA=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=C9=A3=AC=B4=F3=B2=BF=\r\n=B7=D6=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=D6=A3=BB<span style=3D=\r\n\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=CA=FD=BE=\r\n=DD=BF=E2=C5=E4=D6=C3=CD=EA=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=\r\n=C9=A3=AC=B4=F3=B2=BF=B7=D6=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=\r\n=D6=A3=BB</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgr=\r\nound-color: window;\">=CA=FD=BE=DD=BF=E2=C5=E4=D6=C3=CD=EA=B3=C9=A3=AC=BB=\r\n=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=C9=A3=AC=B4=F3=B2=BF=B7=D6=C4=A3=BF=E9=B9=\r\n=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=D6=A3=BB</span><span style=3D\"font-size: 10=\r\n.5pt; line-height: 1.5; background-color: window;\">=CA=FD=BE=DD=BF=E2=C5=\r\n=E4=D6=C3=CD=EA=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=C9=A3=AC=B4=\r\n=F3=B2=BF=B7=D6=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=D6=A3=BB</spa=\r\nn><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: wi=\r\nndow;\">=CA=FD=BE=DD=BF=E2=C5=E4=D6=C3=CD=EA=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=\r\n=BD=A8=CD=EA=B3=C9=A3=AC=B4=F3=B2=BF=B7=D6=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=\r\n=BE=AD=CA=B5=CF=D6=A3=BB</span><span style=3D\"font-size: 10.5pt; line-heig=\r\nht: 1.5; background-color: window;\">=CA=FD=BE=DD=BF=E2=C5=E4=D6=C3=CD=EA=\r\n=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=C9=A3=AC=B4=F3=B2=BF=B7=D6=\r\n=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=D6=A3=BB</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=CA=FD=\r\n=BE=DD=BF=E2=C5=E4=D6=C3=CD=EA=B3=C9=A3=AC=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=\r\n=B3=C9=A3=AC=B4=F3=B2=BF=B7=D6=C4=A3=BF=E9=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=\r\n=CF=D6=A3=BB</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=CA=FD=BE=DD=BF=E2=C5=E4=D6=C3=CD=EA=B3=C9=A3=AC=\r\n=BB=B7=BE=B3=B4=EE=BD=A8=CD=EA=B3=C9=A3=AC=B4=F3=B2=BF=B7=D6=C4=A3=BF=E9=\r\n=B9=A6=C4=DC=D2=D1=BE=AD=CA=B5=CF=D6=A1=A3</span></div>=0A</body></html>\r\n------=_001_NextPart686065372782_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-15 13:48:28'),('Mail1439618502559-1','menghan','root',NULL,'wangnan@scada.com','menghan@scada.com','localhost','127.0.0.1','Return-Path: <wangnan@scada.com>\r\nDelivered-To: menghan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 369\r\n          for <menghan@scada.com>;\r\n          Sat, 15 Aug 2015 14:01:42 +0800 (CST)\r\nDate: Sat, 15 Aug 2015 14:01:42 +0800\r\nFrom: \"wangnan@scada.com\" <wangnan@scada.com>\r\nTo: menghan <menghan@scada.com>\r\nSubject: =?GB2312?B?c3ByaW5nzsS1tUhUTUyw5g==?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <201508151401424829278@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart567453515608_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart567453515608_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\nc3ByaW5nzsS1tQ0Kc3ByaW5nzsS1tQ0Kc3ByaW5nzsS1tQ0Kc3ByaW5nzsS1tQ0K\r\n\r\n------=_001_NextPart567453515608_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><font color=3D\"#00ffff\"><span></span>spring=\r\n=CE=C4=B5=B5</font></div><div style=3D\"font-size: 21px;\"><font color=3D\"#f=\r\nf6600\">spring=CE=C4=B5=B5</font></div><div style=3D\"font-size: 32px;\"><fon=\r\nt color=3D\"#ff99cc\">spring=CE=C4=B5=B5</font></div><div style=3D\"font-size=\r\n: 43px;\"><font color=3D\"#808080\">spring=CE=C4=B5=B5</font></div>=0A</body>=\r\n</html>\r\n------=_001_NextPart567453515608_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-15 14:01:43'),('Mail1439618766947-2','menghan','root',NULL,'chenxiaoxiao@scada.com','menghan@scada.com','localhost','127.0.0.1','Return-Path: <chenxiaoxiao@scada.com>\r\nDelivered-To: menghan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 670;\r\n          Sat, 15 Aug 2015 14:06:06 +0800 (CST)\r\nDate: Sat, 15 Aug 2015 14:06:06 +0800\r\nFrom: \"chenxiaoxiao@scada.com\" <chenxiaoxiao@scada.com>\r\nTo: menghan <menghan@scada.com>, \r\n	wangnan <wangnan@scada.com>\r\nSubject: =?GB2312?B?yLrTyrz+t6LLzQ==?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <2015081514060666108010@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart157717223288_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart157717223288_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\nyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LL\r\nzci608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/rei\r\ny82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy83IutPKvP63osvNo6zIutPKvP63\r\nosvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPK\r\nvP63osvNo6zIutPKvP63osvNyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzQ0K\r\n\r\n------=_001_NextPart157717223288_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span></span>=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC<span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color=\r\n: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-=\r\nsize: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=\r\n=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</spa=\r\nn><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: wi=\r\nndow;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span><span style=3D\"font-size: 10.5=\r\npt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span s=\r\ntyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5p=\r\nt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span s=\r\ntyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5p=\r\nt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgroun=\r\nd-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgroun=\r\nd-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</=\r\nspan><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color:=\r\n window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-s=\r\nize: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=\r\n=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span></di=\r\nv>=0A</body></html>\r\n------=_001_NextPart157717223288_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-15 14:06:07'),('Mail1439636026946-0','menghan','root',NULL,'yuanming@scada.com','menghan@scada.com','localhost','127.0.0.1','Return-Path: <yuanming@scada.com>\r\nDelivered-To: menghan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 32\r\n          for <menghan@scada.com>;\r\n          Sat, 15 Aug 2015 18:53:45 +0800 (CST)\r\nDate: Sat, 15 Aug 2015 18:53:45 +0800\r\nFrom: \"yuanming@scada.com\" <yuanming@scada.com>\r\nTo: menghan <menghan@scada.com>\r\nSubject: =?GB2312?B?t6LGsbGoz/o=?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <201508151853455196381@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart843504577540_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart843504577540_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\nwKy7+NPKvP6y4srUo6zArLv408q8/rLiytSjrMCsu/jTyrz+suLK1KOswKy7+NPKvP6y4srUDQo=\r\n\r\n------=_001_NextPart843504577540_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span style=3D\"font-size: 10.5pt; line-heig=\r\nht: 1.5; background-color: window;\">=C0=AC=BB=F8=D3=CA=BC=FE=B2=E2=CA=D4=\r\n=A3=AC=C0=AC=BB=F8=D3=CA=BC=FE=B2=E2=CA=D4=A3=AC=C0=AC=BB=F8=D3=CA=BC=FE=\r\n=B2=E2=CA=D4=A3=AC=C0=AC=BB=F8=D3=CA=BC=FE=B2=E2=CA=D4</span><span></span>=\r\n</div>=0A</body></html>\r\n------=_001_NextPart843504577540_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-15 18:53:47'),('Mail1439618766958-3','wangnan','root',NULL,'chenxiaoxiao@scada.com','wangnan@scada.com','localhost','127.0.0.1','Return-Path: <chenxiaoxiao@scada.com>\r\nDelivered-To: wangnan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 670;\r\n          Sat, 15 Aug 2015 14:06:06 +0800 (CST)\r\nDate: Sat, 15 Aug 2015 14:06:06 +0800\r\nFrom: \"chenxiaoxiao@scada.com\" <chenxiaoxiao@scada.com>\r\nTo: menghan <menghan@scada.com>, \r\n	wangnan <wangnan@scada.com>\r\nSubject: =?GB2312?B?yLrTyrz+t6LLzQ==?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <2015081514060666108010@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart157717223288_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart157717223288_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\nyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LL\r\nzci608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/rei\r\ny82jrMi608q8/reiy82jrMi608q8/reiy82jrMi608q8/reiy83IutPKvP63osvNo6zIutPKvP63\r\nosvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPKvP63osvNo6zIutPK\r\nvP63osvNo6zIutPKvP63osvNyLrTyrz+t6LLzaOsyLrTyrz+t6LLzaOsyLrTyrz+t6LLzQ0K\r\n\r\n------=_001_NextPart157717223288_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span></span>=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC<span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color=\r\n: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-=\r\nsize: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=\r\n=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</spa=\r\nn><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: wi=\r\nndow;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span><span style=3D\"font-size: 10.5=\r\npt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span s=\r\ntyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5p=\r\nt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span s=\r\ntyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5p=\r\nt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=\r\n=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; bac=\r\nkground-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgroun=\r\nd-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=\r\n=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgroun=\r\nd-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=\r\n=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=\r\n=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; lin=\r\ne-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</=\r\nspan><span style=3D\"font-size: 10.5pt; line-height: 1.5; background-color:=\r\n window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-s=\r\nize: 10.5pt; line-height: 1.5; background-color: window;\">=C8=BA=D3=CA=BC=\r\n=FE=B7=A2=CB=CD=A3=AC</span><span style=3D\"font-size: 10.5pt; line-height:=\r\n 1.5; background-color: window;\">=C8=BA=D3=CA=BC=FE=B7=A2=CB=CD</span></di=\r\nv>=0A</body></html>\r\n------=_001_NextPart157717223288_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-15 14:06:07'),('Mail1439689476783-1','wangnan','root',NULL,'menghan@scada.com','wangnan@scada.com','localhost','127.0.0.1','Return-Path: <menghan@scada.com>\r\nDelivered-To: wangnan@scada.com\r\nReceived: from 127.0.0.1 ([127.0.0.1])\r\n          by menghan-PC (JAMES SMTP Server 2.3.2) with SMTP ID 914\r\n          for <wangnan@scada.com>;\r\n          Sun, 16 Aug 2015 09:44:36 +0800 (CST)\r\nDate: Sun, 16 Aug 2015 09:44:36 +0800\r\nFrom: \"menghan@scada.com\" <menghan@scada.com>\r\nTo: wangnan <wangnan@scada.com>\r\nSubject: =?GB2312?B?08q8/tLRt6LLzbLiytQy?=\r\nX-Priority: 3\r\nX-Has-Attach: no\r\nX-Mailer: Foxmail 7, 2, 7, 21[cn]\r\nMime-Version: 1.0\r\nMessage-ID: <201508160944367030601@scada.com>\r\nContent-Type: multipart/alternative;\r\n	boundary=\"----=_001_NextPart334507785054_=----\"\r\n\r\nThis is a multi-part message in MIME format.\r\n\r\n------=_001_NextPart334507785054_=----\r\nContent-Type: text/plain;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: base64\r\n\r\n08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLi\r\nytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LL\r\nzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLR\r\nt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQy08q8\r\n/tLRt6LLzbLiytQy08q8/tLRt6LLzbLiytQyoaMNCg==\r\n\r\n------=_001_NextPart334507785054_=----\r\nContent-Type: text/html;\r\n	charset=\"GB2312\"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n<html><head><meta http-equiv=3D\"content-type\" content=3D\"text/html; charse=\r\nt=3DGB2312\"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=\r\nt-family: =CE=A2=C8=ED=D1=C5=BA=DA; color: rgb(0, 0, 0); line-height: 1.5;=\r\n }</style></head><body>=0A<div><span></span>=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=\r\n=B2=E2=CA=D42<span style=3D\"font-size: 10.5pt; line-height: 1.5; backgroun=\r\nd-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span =\r\nstyle=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size=\r\n: 10.5pt; line-height: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=\r\n=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size: 10.5pt; line-hei=\r\nght: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=\r\n=CA=D42</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgrou=\r\nnd-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span=\r\n style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size=\r\n: 10.5pt; line-height: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=\r\n=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size: 10.5pt; line-hei=\r\nght: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=\r\n=CA=D42</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgrou=\r\nnd-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span=\r\n style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size=\r\n: 10.5pt; line-height: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=\r\n=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size: 10.5pt; line-hei=\r\nght: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=\r\n=CA=D42</span><span style=3D\"font-size: 10.5pt; line-height: 1.5; backgrou=\r\nnd-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span=\r\n style=3D\"font-size: 10.5pt; line-height: 1.5; background-color: window;\">=\r\n=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size=\r\n: 10.5pt; line-height: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=\r\n=B7=A2=CB=CD=B2=E2=CA=D42</span><span style=3D\"font-size: 10.5pt; line-hei=\r\nght: 1.5; background-color: window;\">=D3=CA=BC=FE=D2=D1=B7=A2=CB=CD=B2=E2=\r\n=CA=D42=A1=A3</span></div>=0A</body></html>\r\n------=_001_NextPart334507785054_=------\r\n\r\n','��\0sr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','2015-08-16 09:44:37');
/*!40000 ALTER TABLE `mail_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_users`
--

DROP TABLE IF EXISTS `mail_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_users` (
  `username` varchar(64) NOT NULL,
  `pwdHash` varchar(50) DEFAULT NULL,
  `pwdAlgorithm` varchar(20) DEFAULT NULL,
  `useForwarding` smallint(6) DEFAULT NULL,
  `forwardDestination` varchar(255) DEFAULT NULL,
  `useAlias` smallint(6) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_users`
--

LOCK TABLES `mail_users` WRITE;
/*!40000 ALTER TABLE `mail_users` DISABLE KEYS */;
INSERT INTO `mail_users` VALUES ('chenfa','+XaiaVJsXMq81suBz0+yjBTO','SHA',0,NULL,0,NULL),('chenxiaoxiao','psohcKH7xoBJew0wwT+/tGVE','SHA',0,NULL,0,NULL),('menghan','W5nKroslbBgt2D4O5ilukOQf','SHA',0,NULL,0,NULL),('wangnan','nmB7dmqJgnEuTZ+kWyhQ0uYU','SHA',0,NULL,0,NULL),('yuanming','eaAUzryukpUZylf6WP3hHUcG','SHA',0,NULL,0,NULL);
/*!40000 ALTER TABLE `mail_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_mailblacklist`
--

DROP TABLE IF EXISTS `mails_mailblacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_mailblacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mailName` varchar(255) DEFAULT NULL,
  `mailAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_mailblacklist`
--

LOCK TABLES `mails_mailblacklist` WRITE;
/*!40000 ALTER TABLE `mails_mailblacklist` DISABLE KEYS */;
INSERT INTO `mails_mailblacklist` VALUES (1,'广告','qwert@scada.com'),(3,'垃圾信息','asd@121.com');
/*!40000 ALTER TABLE `mails_mailblacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_spamidentify`
--

DROP TABLE IF EXISTS `mails_spamidentify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_spamidentify` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_spamidentify`
--

LOCK TABLES `mails_spamidentify` WRITE;
/*!40000 ALTER TABLE `mails_spamidentify` DISABLE KEYS */;
INSERT INTO `mails_spamidentify` VALUES (1,'信用卡'),(2,'理财'),(10,'发票'),(11,'贷款'),(17,'收据'),(18,'集资');
/*!40000 ALTER TABLE `mails_spamidentify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish`
--

DROP TABLE IF EXISTS `publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish`
--

LOCK TABLES `publish` WRITE;
/*!40000 ALTER TABLE `publish` DISABLE KEYS */;
INSERT INTO `publish` VALUES (3,'333','2015-08-07 14:31:07','33333划分等级可发布大幅is大房间开户送担保发生地方你剪短发uhtuoewhtnvjkdfhguayoiewtjbvajbg    ','梦幻','党群工作'),(4,'333','2015-08-07 14:25:27','333',NULL,'党群工作'),(7,'浣犲ソ','2015-08-07 13:50:13','浣犲ソ鍚�\n',NULL,'浼犵粺'),(8,'你好','2015-08-07 13:52:52','你好吗',NULL,'传统'),(9,'hai','2015-08-07 14:10:58','瀵圭?',NULL,'生产技术管理'),(10,'阿斯蒂芬','2015-08-07 14:06:02','阿斯蒂芬',NULL,'行政管理'),(11,'范德萨','2015-08-07 14:06:16','发',NULL,'财务审计'),(12,'齐4234','2015-08-07 14:26:55','1342354',NULL,'党群工作');
/*!40000 ALTER TABLE `publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse`
--

DROP TABLE IF EXISTS `pulse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pulse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pulse_code` int(11) DEFAULT NULL,
  `pulse_name` varchar(255) DEFAULT NULL,
  `pulse_station` varchar(255) DEFAULT NULL,
  `pulse_device` varchar(255) DEFAULT NULL,
  `pulse_int` int(11) DEFAULT NULL,
  `pulse_float` float DEFAULT NULL,
  `pulse_basicvalue` int(11) DEFAULT NULL,
  `pulse_fullcodevalue` int(11) DEFAULT NULL,
  `pulse_factor` float DEFAULT NULL,
  `pulse_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse`
--

LOCK TABLES `pulse` WRITE;
/*!40000 ALTER TABLE `pulse` DISABLE KEYS */;
INSERT INTO `pulse` VALUES (1,NULL,NULL,'测试厂站01',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pulse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicequality`
--

DROP TABLE IF EXISTS `servicequality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicequality` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventtype` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `servicename` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `contactway` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `operatename` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicequality`
--

LOCK TABLES `servicequality` WRITE;
/*!40000 ALTER TABLE `servicequality` DISABLE KEYS */;
INSERT INTO `servicequality` VALUES (1,'故障报修','居民','002','李四','2015-06-22','lisi@sina.com','朝阳区','张亮','9','无'),(2,'业务咨询','居民','001','张三','2015-07-06','010-86543241','朝阳区','李梅梅','7','态度不好'),(3,'业务咨询','企业','平乐园小学','赵青','2015-07-15','13599904321','朝阳区','李丽','9','无');
/*!40000 ALTER TABLE `servicequality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssh_user`
--

DROP TABLE IF EXISTS `ssh_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssh_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssh_user`
--

LOCK TABLES `ssh_user` WRITE;
/*!40000 ALTER TABLE `ssh_user` DISABLE KEYS */;
INSERT INTO `ssh_user` VALUES (1,'444','555'),(2,'4144','5255');
/*!40000 ALTER TABLE `ssh_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_configure`
--

DROP TABLE IF EXISTS `sys_configure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_configure` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sysName` varchar(255) DEFAULT NULL,
  `sysTitle` varchar(255) DEFAULT NULL,
  `sysLogoAddr` varchar(255) DEFAULT NULL,
  `sysBottomMsg` varchar(255) DEFAULT NULL,
  `sessionTime` int(11) DEFAULT NULL,
  `pageSize` int(11) DEFAULT NULL,
  `pageWidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_configure`
--

LOCK TABLES `sys_configure` WRITE;
/*!40000 ALTER TABLE `sys_configure` DISABLE KEYS */;
INSERT INTO `sys_configure` VALUES (1,'scada','scada系统','Lighthouse.jpg','Copyright &copy;14项目组',1000,4,10);
/*!40000 ALTER TABLE `sys_configure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fault`
--

DROP TABLE IF EXISTS `sys_fault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fault` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `equipmentId` varchar(255) DEFAULT NULL,
  `equipmentType` varchar(255) DEFAULT NULL,
  `equipmentFailureTime` datetime DEFAULT NULL,
  `equipmentFailureReason` varchar(255) DEFAULT NULL,
  `equipmentRepairContent` varchar(255) DEFAULT NULL,
  `equipmentPersonInCharge` varchar(255) DEFAULT NULL,
  `equipmentMaintenance` varchar(255) DEFAULT NULL,
  `equipmentRepairTime` datetime DEFAULT NULL,
  `eqequipmentRepairCounts` int(11) DEFAULT NULL,
  `equipmentRemark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fault`
--

LOCK TABLES `sys_fault` WRITE;
/*!40000 ALTER TABLE `sys_fault` DISABLE KEYS */;
INSERT INTO `sys_fault` VALUES (1,'1001','服务器','2014-12-12 00:00:00','服务器不能启动','服务器不能正常使用','孟晗','menghan','2014-12-14 00:00:00',1,'无'),(2,'1102','路由器','2014-12-13 00:00:00','路由器灯不亮','路由器不能正常使用','孟晗','menghan','2014-12-14 00:00:00',1,'尽快修好'),(6,'1005','计算机','2015-07-26 21:07:14','死机','不能开机','孟晗','menghan','2015-07-26 21:07:14',1,'无'),(7,'1004','服务器','2015-08-07 22:33:57','死机','死机','han','meng','2015-08-07 22:33:57',1,'无');
/*!40000 ALTER TABLE `sys_fault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `didWhat` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (3,'梦幻','登录了系统','2015-08-19 22:03:07'),(4,'梦幻','登录了系统','2015-08-19 22:40:11'),(5,'梦幻','登录了系统','2015-08-19 22:55:40'),(6,'梦幻','登录了系统','2015-08-19 22:57:17'),(7,'梦幻','退出了系统','2015-08-19 22:57:25'),(8,'梦幻','登录了系统','2015-08-19 22:57:39'),(9,'梦幻','登录了系统','2015-08-20 08:58:45'),(10,'梦幻','登录了系统','2015-08-20 09:00:53'),(11,'梦幻','调用了class com.scada.service.impl.UserRightServiceImpl的delete方法','2015-08-20 09:01:58'),(12,'梦幻','登录了系统','2015-08-20 09:52:21'),(13,'梦幻','登录了系统','2015-08-20 09:53:54'),(14,'梦幻','登录了系统','2015-08-20 10:26:43'),(15,'梦幻','登录了系统','2015-08-20 10:27:06'),(16,'梦幻','登录了系统','2015-08-20 10:27:54'),(17,'梦幻','登录了系统','2015-08-20 10:28:05'),(18,'梦幻','登录了系统','2015-08-20 10:28:34'),(19,'梦幻','登录了系统','2015-08-20 10:30:50'),(20,'梦幻','登录了系统','2015-08-20 10:31:44'),(21,'梦幻','登录了系统','2015-08-20 10:31:55'),(22,'梦幻','登录了系统','2015-08-20 10:32:12'),(23,'梦幻','登录了系统','2015-08-20 10:32:38'),(24,'梦幻','登录了系统','2015-08-20 10:32:51'),(25,'梦幻','登录了系统','2015-08-20 10:33:15'),(26,'梦幻','登录了系统','2015-08-20 10:33:37'),(27,'梦幻','登录了系统','2015-08-20 10:34:24'),(28,'梦幻','登录了系统','2015-08-20 10:34:39'),(29,'梦幻','登录了系统','2015-08-20 10:34:47'),(30,'梦幻','登录了系统','2015-08-20 10:36:00'),(31,'梦幻','退出了系统','2015-08-20 10:36:01'),(32,'梦幻','登录了系统','2015-08-20 10:36:12'),(33,'梦幻','退出了系统','2015-08-20 10:36:14'),(34,'梦幻','登录了系统','2015-08-20 11:00:51'),(35,'梦幻','登录了系统','2015-08-20 11:00:59'),(36,'梦幻','登录了系统','2015-08-20 11:01:07'),(37,'梦幻','登录了系统','2015-08-20 11:30:29'),(38,'梦幻','登录了系统','2015-08-20 13:01:36'),(39,'梦幻','登录了系统','2015-08-20 13:01:53'),(40,'梦幻','登录了系统','2015-08-20 13:02:14'),(41,'梦幻','登录了系统','2015-08-20 13:02:29'),(42,'梦幻','登录了系统','2015-08-20 13:03:50'),(43,'梦幻','登录了系统','2015-08-20 13:04:22'),(44,'梦幻','退出了系统','2015-08-20 13:04:34'),(45,'梦幻','登录了系统','2015-08-20 13:59:58'),(46,'梦幻','登录了系统','2015-08-20 14:00:34'),(47,'梦幻','登录了系统','2015-08-20 14:00:42'),(48,'梦幻','退出了系统','2015-08-20 14:00:51'),(49,'梦幻','登录了系统','2015-08-20 14:01:03'),(50,'梦幻','登录了系统','2015-08-20 14:16:55'),(51,'梦幻','登录了系统','2015-08-20 15:20:13'),(52,'梦幻','登录了系统','2015-08-20 15:20:40'),(53,'梦幻','登录了系统','2015-08-20 15:21:07'),(54,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的save方法','2015-08-20 15:21:15'),(55,'梦幻','登录了系统','2015-08-20 15:22:27'),(56,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 15:22:35'),(57,'梦幻','登录了系统','2015-08-20 15:23:04'),(58,'梦幻','登录了系统','2015-08-20 15:31:03'),(59,'梦幻','登录了系统','2015-08-20 15:31:38'),(60,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 15:31:46'),(61,'梦幻','登录了系统','2015-08-20 19:04:11'),(62,'梦幻','登录了系统','2015-08-20 19:08:39'),(63,'梦幻','登录了系统','2015-08-20 19:18:06'),(64,'梦幻','登录了系统','2015-08-20 19:18:32'),(65,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 19:18:40'),(66,'梦幻','登录了系统','2015-08-20 19:38:24'),(67,'梦幻','登录了系统','2015-08-20 19:48:52'),(68,'梦幻','登录了系统','2015-08-20 19:57:33'),(69,'梦幻','登录了系统','2015-08-20 20:02:34'),(70,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:03:23'),(71,'梦幻','登录了系统','2015-08-20 20:11:10'),(72,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:12:25'),(73,'梦幻','登录了系统','2015-08-20 20:12:35'),(74,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:16:43'),(75,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:18:10'),(76,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:24:51'),(77,'梦幻','登录了系统','2015-08-20 20:24:58'),(78,'梦幻','登录了系统','2015-08-20 20:30:46'),(79,'梦幻','登录了系统','2015-08-20 20:31:14'),(80,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:38:57'),(81,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:39:01'),(82,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:39:27'),(83,'梦幻','登录了系统','2015-08-20 20:52:48'),(84,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 20:54:32'),(85,'梦幻','登录了系统','2015-08-20 21:00:20'),(86,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 21:01:43'),(87,'梦幻','登录了系统','2015-08-20 21:03:52'),(88,'梦幻','登录了系统','2015-08-20 21:15:32'),(89,'梦幻','登录了系统','2015-08-20 21:19:45'),(90,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 21:19:54'),(91,'梦幻','登录了系统','2015-08-20 21:21:49'),(92,'梦幻','登录了系统','2015-08-20 21:27:42'),(93,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-20 21:28:10'),(94,'梦幻','登录了系统','2015-08-20 21:28:16'),(95,'梦幻','登录了系统','2015-08-22 14:16:29'),(96,'梦幻','登录了系统','2015-08-22 14:32:31'),(97,'梦幻','登录了系统','2015-08-22 14:32:56'),(98,'梦幻','登录了系统','2015-08-22 14:33:32'),(99,'梦幻','登录了系统','2015-08-22 14:36:18'),(100,'梦幻','登录了系统','2015-08-22 14:47:30'),(101,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-22 14:48:05'),(102,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-22 14:48:29'),(103,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-22 14:48:33'),(104,'梦幻','登录了系统','2015-08-22 14:48:38'),(105,'梦幻','登录了系统','2015-08-22 15:28:05'),(106,'梦幻','登录了系统','2015-08-23 14:40:41'),(107,'梦幻','登录了系统','2015-08-23 14:55:38'),(108,'梦幻','登录了系统','2015-08-26 13:50:50'),(109,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-26 13:51:00'),(110,'梦幻','登录了系统','2015-08-26 13:59:51'),(111,'梦幻','登录了系统','2015-08-26 14:22:26'),(113,'梦幻','登录了系统','2015-08-26 14:40:22'),(114,'梦幻','登录了系统','2015-08-26 17:54:36'),(115,'梦幻','登录了系统','2015-08-26 17:55:31'),(116,'梦幻','登录了系统','2015-08-26 18:15:30'),(120,'梦幻','登录了系统','2015-08-26 21:43:05'),(123,'梦幻','登录了系统','2015-08-27 16:39:41'),(124,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-27 16:39:54'),(125,'梦幻','登录了系统','2015-08-27 18:01:27'),(126,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-27 18:01:36'),(127,'梦幻','登录了系统','2015-08-27 18:02:41'),(128,'梦幻','登录了系统','2015-08-27 18:04:53'),(129,'梦幻','登录了系统','2015-08-27 18:05:25'),(130,'梦幻','登录了系统','2015-08-27 18:06:36'),(131,'梦幻','登录了系统','2015-08-27 18:09:09'),(132,'梦幻','登录了系统','2015-08-27 18:17:19'),(133,'梦幻','登录了系统','2015-08-27 18:17:42'),(134,'梦幻','登录了系统','2015-08-27 18:18:31'),(135,'梦幻','登录了系统','2015-08-27 20:25:29'),(136,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-27 20:25:36'),(137,'梦幻','登录了系统','2015-08-27 21:20:14'),(138,'梦幻','登录了系统','2015-08-31 14:15:40'),(139,'梦幻','登录了系统','2015-08-31 14:29:34'),(140,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 14:37:43'),(141,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 14:40:14'),(142,'梦幻','登录了系统','2015-08-31 14:51:18'),(143,'梦幻','登录了系统','2015-08-31 14:52:09'),(144,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 14:56:19'),(145,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:03:45'),(146,'梦幻','登录了系统','2015-08-31 15:04:05'),(147,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:05:20'),(148,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:11:35'),(149,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:11:37'),(150,'梦幻','登录了系统','2015-08-31 15:11:42'),(151,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:13:47'),(152,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:15:35'),(153,'梦幻','登录了系统','2015-08-31 15:20:25'),(154,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:25:34'),(155,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:27:13'),(156,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:31:55'),(157,'梦幻','退出了系统','2015-08-31 15:41:12'),(158,'梦幻','登录了系统','2015-08-31 15:42:49'),(159,'梦幻','调用了class com.scada.service.impl.SysConfigServiceImpl的update方法','2015-08-31 15:43:15'),(160,'梦幻','登录了系统','2015-08-31 16:05:23'),(161,'梦幻','登录了系统','2015-09-09 22:26:31'),(162,'梦幻','登录了系统','2015-10-09 19:50:42'),(163,'梦幻','退出了系统','2015-10-09 20:27:51'),(164,'梦幻','登录了系统','2015-10-09 20:28:35'),(165,'梦幻','退出了系统','2015-10-09 20:39:06'),(166,'梦幻','登录了系统','2015-10-09 21:15:49'),(167,'梦幻','登录了系统','2015-10-09 21:49:04'),(168,'梦幻','登录了系统','2015-10-09 22:19:23'),(169,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:19:38'),(170,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:20:51'),(171,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:21:29'),(172,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:21:46'),(173,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:23:27'),(174,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:24:18'),(175,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:24:23'),(176,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:24:24'),(177,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:24:27'),(178,'梦幻','调用了class com.scada.service.impl.SysSafetyServiceImpl的update方法','2015-10-09 22:24:29'),(179,'梦幻','登录了系统','2015-10-11 21:53:25'),(180,'梦幻','退出了系统','2015-10-11 21:54:50'),(181,'梦幻','登录了系统','2015-10-11 23:44:03'),(182,'梦幻','登录了系统','2015-10-12 11:34:38'),(183,'梦幻','登录了系统','2015-10-12 11:45:08'),(184,'梦幻','登录了系统','2015-10-12 12:00:51'),(185,'梦幻','登录了系统','2015-10-12 12:17:09'),(186,'梦幻','登录了系统','2015-10-12 13:27:27'),(187,'梦幻','登录了系统','2015-10-12 13:32:55'),(188,'梦幻','登录了系统','2015-10-12 13:36:05'),(189,'梦幻','登录了系统','2015-10-12 13:41:25'),(190,'梦幻','登录了系统','2015-10-12 13:46:18');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_saftey`
--

DROP TABLE IF EXISTS `sys_saftey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_saftey` (
  `sysId` int(11) NOT NULL AUTO_INCREMENT,
  `isEnableLog` bit(1) DEFAULT NULL,
  `ipLockTime` int(11) DEFAULT NULL,
  `loginFailureCount` int(11) DEFAULT NULL,
  `isIPAccessProhibited` bit(1) DEFAULT NULL,
  PRIMARY KEY (`sysId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_saftey`
--

LOCK TABLES `sys_saftey` WRITE;
/*!40000 ALTER TABLE `sys_saftey` DISABLE KEYS */;
INSERT INTO `sys_saftey` VALUES (1,'',100,4,'\0');
/*!40000 ALTER TABLE `sys_saftey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactTel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isDuty` varchar(255) DEFAULT NULL,
  `onDutyDate` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rightsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_2n5scdnrxopq9btfgbqwlxdxy` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'孟晗','meng','han','男','2015-07-15','平谷','15001185667','menghanmh@qq.com','否','2015-07-15 00:00:00','无',5),(2,'梦幻','admin','admin','男','2015-07-15','北京','15001185667','398116621@qq.com','是','2015-07-15 00:00:00','超级管理员',10);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_right`
--

DROP TABLE IF EXISTS `sys_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rightId` int(11) DEFAULT NULL,
  `dataAcquisition` bit(1) DEFAULT NULL,
  `coordinatedDispatch` bit(1) DEFAULT NULL,
  `unifiedDatabase` bit(1) DEFAULT NULL,
  `applicationShow` bit(1) DEFAULT NULL,
  `serviceOperation` bit(1) DEFAULT NULL,
  `customerService` bit(1) DEFAULT NULL,
  `comprehensiveOffice` bit(1) DEFAULT NULL,
  `wanSystem` bit(1) DEFAULT NULL,
  `websiteSystem` bit(1) DEFAULT NULL,
  `mailSystem` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_right`
--

LOCK TABLES `sys_user_right` WRITE;
/*!40000 ALTER TABLE `sys_user_right` DISABLE KEYS */;
INSERT INTO `sys_user_right` VALUES (1,5,'','','\0','\0','','','\0','','',''),(15,10,'','','','','','','','','','');
/*!40000 ALTER TABLE `sys_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemsetting`
--

DROP TABLE IF EXISTS `systemsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemsetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemsetting`
--

LOCK TABLES `systemsetting` WRITE;
/*!40000 ALTER TABLE `systemsetting` DISABLE KEYS */;
INSERT INTO `systemsetting` VALUES (1,'朝阳区','王宇','A0001','开启','无'),(2,'朝阳区','王宇','A0002','开启','无'),(3,'朝阳区','王宇','B0001','开启','无'),(4,'朝阳区','王宇','B0002','关闭','无'),(5,'海淀区','黎光','A0001','关闭','无'),(6,'海淀区','黎光','A0002','开启','无'),(7,'海淀区','黎光','B0001','开启','无'),(8,'海淀区','黎光','C0001','关闭','无'),(9,'西城区','段莹莹','B0009','关闭','无');
/*!40000 ALTER TABLE `systemsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telecommand`
--

DROP TABLE IF EXISTS `telecommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telecommand` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `telec_code` int(11) DEFAULT NULL,
  `telec_name` varchar(255) DEFAULT NULL,
  `telec_station` varchar(255) DEFAULT NULL,
  `telec_device` varchar(255) DEFAULT NULL,
  `telec_type` varchar(255) DEFAULT NULL,
  `telec_value` int(11) DEFAULT NULL,
  `telec_displacement` int(11) DEFAULT NULL,
  `telec_maxdisplacement` int(11) DEFAULT NULL,
  `telec_polarity` varchar(255) DEFAULT NULL,
  `telec_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telecommand`
--

LOCK TABLES `telecommand` WRITE;
/*!40000 ALTER TABLE `telecommand` DISABLE KEYS */;
INSERT INTO `telecommand` VALUES (1,406000002,NULL,'测试厂站01','01厂站仪表001','预告信号',0,0,0,'正极性','遥信正常'),(2,406000003,NULL,'测试厂站01','01厂站仪表002','手车',0,0,0,'负极性','遥信正常'),(3,406000004,NULL,'测试厂站01','01厂站仪表003','保护信号',0,0,0,'正极性','遥信正常'),(4,406000005,NULL,'测试厂站01','01厂站仪表004','弹簧',0,0,0,'正极性','遥信正常');
/*!40000 ALTER TABLE `telecommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telemetring`
--

DROP TABLE IF EXISTS `telemetring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telemetring` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tele_code` int(11) DEFAULT NULL,
  `tele_name` varchar(255) DEFAULT NULL,
  `tele_station` varchar(255) DEFAULT NULL,
  `tele_device` varchar(255) DEFAULT NULL,
  `tele_type` varchar(255) DEFAULT NULL,
  `tele_int` int(11) DEFAULT NULL,
  `tele_float` float DEFAULT NULL,
  `tele_state` varchar(255) DEFAULT NULL,
  `tele_basicvalue` float DEFAULT NULL,
  `tele_factor` float DEFAULT NULL,
  `tele_threshold` float DEFAULT NULL,
  `tele_deadvalue` float DEFAULT NULL,
  `tele_filtering` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telemetring`
--

LOCK TABLES `telemetring` WRITE;
/*!40000 ALTER TABLE `telemetring` DISABLE KEYS */;
INSERT INTO `telemetring` VALUES (1,407000129,NULL,'测试厂站01','01厂站仪表001','A相电压',0,0,'遥测正常',0,0,0,0,0),(2,407000130,NULL,'测试厂站01','01厂站仪表002','首端有功',0,0,'遥测正常',0,0,0,0,0),(3,407000131,NULL,'测试厂站01','01厂站仪表003','无功出力',0,0,'遥测正常',0,0,0,0,0),(4,407000132,NULL,'测试厂站01','01厂站仪表004','A相电流',0,0,'遥测正常',0,0,0,0,0),(5,407000133,NULL,'测试厂站01','01厂站仪表005','B相电流',0,0,'遥测正常',0,0,0,0,0),(6,407000134,NULL,'测试厂站02','02厂站仪表001','无功功率',0,0,'遥测正常',0,0,0,0,0),(7,407000135,NULL,'测试厂站02','02厂站仪表002','量测值',0,0,'遥测正常',0,0,0,0,0),(8,407000136,NULL,'测试厂站02','02厂站仪表003','AB线电压',0,0,'遥测正常',0,0,0,0,0),(9,407000137,NULL,'测试厂站02','02厂站仪表004','A相电流',0,0,'遥测正常',0,0,0,0,0);
/*!40000 ALTER TABLE `telemetring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniform_workorder`
--

DROP TABLE IF EXISTS `uniform_workorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniform_workorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workOrderId` int(11) DEFAULT NULL,
  `workOrderApplicant` varchar(255) DEFAULT NULL,
  `workOrderDeal` varchar(255) DEFAULT NULL,
  `workOrderIssuer` varchar(255) DEFAULT NULL,
  `workOrderAcceptance` varchar(255) DEFAULT NULL,
  `workOrderApproval` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniform_workorder`
--

LOCK TABLES `uniform_workorder` WRITE;
/*!40000 ALTER TABLE `uniform_workorder` DISABLE KEYS */;
INSERT INTO `uniform_workorder` VALUES (1,1,'qw','er','ty','ui','op'),(2,2,'sd','fg','hj','kl','mn'),(7,112,'as','qw','as','asas','xas');
/*!40000 ALTER TABLE `uniform_workorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warning`
--

DROP TABLE IF EXISTS `warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `warning_time` datetime DEFAULT NULL,
  `warning_type` varchar(255) DEFAULT NULL,
  `warning_subtype` varchar(255) DEFAULT NULL,
  `warning_level` varchar(255) DEFAULT NULL,
  `station` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `warning_obj` varchar(255) DEFAULT NULL,
  `warning_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning`
--

LOCK TABLES `warning` WRITE;
/*!40000 ALTER TABLE `warning` DISABLE KEYS */;
INSERT INTO `warning` VALUES (1,NULL,'其他类告警','装置投入1','一般','测试厂站12','01厂站仪表0023','设备节点表:4010000023','01厂站仪表002 装置投入'),(2,'2015-07-23 15:34:22','遥测类告警','装置投入','重要',NULL,'01厂站仪表008','设备节点表:401000008','01厂站仪表008 装置投入，机器号:1'),(3,'2015-07-23 15:34:26','遥信类告警','装置投入','重要',NULL,'01厂站仪表005','设备节点表:401000005','01厂站仪表005 装置投入，机器号:1'),(4,'2015-07-23 15:34:27','人工类告警','人工投入','次要','测试厂站01\r\n','01厂站仪表003','设备节点表:401000003','01厂站仪表001 人工投入，用户ID:admin,机器号:1'),(5,'2015-07-23 15:34:30','工况类告警','装置投入','次要','测试厂站01\r\n','01厂站仪表006','设备节点表:401000006','01厂站仪表006 装置投入，机器号:1'),(6,'2015-07-23 15:34:30','工况类告警','装置退出','次要','测试厂站01\r\n','01厂站仪表007','设备节点表:401000007','01厂站仪表007 装置投入，机器号:1'),(7,'2015-07-23 15:34:31','人工类告警','人工退出','次要','测试厂站01\r\n',NULL,'厂站表:2010000001','厂站表:厂站状态:[测试厂站001] 人工退出，用户ID:admin'),(8,'2015-07-23 15:34:32','工况类告警','装置投入','次要','测试厂站01\r\n','01厂站仪表004','设备节点表:401000004','01厂站仪表004 装置投入，机器号:1'),(9,'2015-07-23 15:34:33','工况类告警','装置退出','次要','测试厂站01\r\n','01厂站仪表009','设备节点表:401000009','01厂站仪表009 装置投入，机器号:1');
/*!40000 ALTER TABLE `warning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12 13:50:41
