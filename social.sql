-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: social
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add user2',8,'add_user2'),(23,'Can change user2',8,'change_user2'),(24,'Can delete user2',8,'delete_user2');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$dX3kjQCvP8l2$6iiS9VijWf20UeHCarkMq+X95N6dyxhuVRERck5HMIU=','2015-08-03 06:44:39',1,'root','','','d@d.com',1,1,'2015-07-21 09:04:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'user','xss','user'),(8,'user2','xss','user2');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('l4nrqtpz19l12m74p6bxv3d1ww7tglnk','ZTkxNjhhOGM4NWIxYmI0NDFhMDdkNTcwNDA0NDJjOGNhZDZiZTg2NTp7fQ==','2015-08-05 01:46:47'),('ud48ur0nbaqx4bmt4xa6k4pymwy5snr0','ZTkxNjhhOGM4NWIxYmI0NDFhMDdkNTcwNDA0NDJjOGNhZDZiZTg2NTp7fQ==','2015-08-05 01:45:35'),('lcbmqhvmtdh2ut1utyxj6jb9bxkum5v1','ZTkxNjhhOGM4NWIxYmI0NDFhMDdkNTcwNDA0NDJjOGNhZDZiZTg2NTp7fQ==','2015-08-05 03:02:03'),('eemwievjh9lnyh52qv9hoskfki5epovs','ZTkxNjhhOGM4NWIxYmI0NDFhMDdkNTcwNDA0NDJjOGNhZDZiZTg2NTp7fQ==','2015-08-05 06:39:43'),('1np6b92sa7gacf77ga46n58fn1dp4a9x','M2E4Njk1ZWZiNWJlNWQ1MzVjNzZkNGU0YmZmNDAyZTJhZGIyOTliMTp7Il9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2015-08-17 06:44:39'),('jn8zspftnorasovpflypokg20kmwa9lv','ZTkxNjhhOGM4NWIxYmI0NDFhMDdkNTcwNDA0NDJjOGNhZDZiZTg2NTp7fQ==','2015-08-05 03:01:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xss_user`
--

DROP TABLE IF EXISTS `xss_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xss_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `mail` varchar(75) NOT NULL,
  `card` varchar(19) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `ip` char(15) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `qq` varchar(11) NOT NULL,
  `address` longtext NOT NULL,
  `site` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xss_user`
--

LOCK TABLES `xss_user` WRITE;
/*!40000 ALTER TABLE `xss_user` DISABLE KEYS */;
INSERT INTO `xss_user` VALUES (1,'11','xieshangke\r','xieshangke12@sina.com','','','','','','',''),(2,'','kjgfjkhjdf@qq.comGTKYUUTYGF','TKYUUTYGF','','','','','','',''),(3,'','miaosha10\r','280455484@qq.com','','','','','','',''),(4,'111','475365682ypydtx\r','47536568@qq.com','','','','','','',''),(5,'','101010\r','khysn@163.com','','','','','','',''),(6,'','801121\r','cilren@63.com','','','','','','',''),(7,'','276529\r','jingjiangq@qq.com','','','','','','',''),(8,'','luo13237406405\r','609860131@qq.com','','','','','','',''),(9,'11','111111\r','yanglian58@163.com','','','','','','',''),(10,'','123456789\r','929892628@qq.com','','','','','','',''),(11,'','777777\r','771964206@qq.com','','','','','','',''),(12,'','WODEKEAIA=\r','yanshaojia@126.com','','','','','','',''),(13,'','454332806\r','peng454332806@qq.com','','','','','','',''),(14,'','1111111111qq\r','tingtingpeipei1314@yahoo.cn','','','','','','',''),(15,'','13435011886\r','sglqs@126.com','','','','','','',''),(16,'','mdd..,78\r','7765@qq.com','','','','','','',''),(17,'','197909\r','114942276@qq.com','','','','','','',''),(18,'','19830217\r','xuyonggang1982@126.com','','','','','','',''),(19,'','816623132313\r','wangqichao123.com@qq.com','','','','','','',''),(20,'','q159753\r','1012187096@qq.com','','','','','','',''),(21,'','020568\r','dwydwy0205@sina.com','','','','','','',''),(22,'','789789789q\r','781011130@qq.com','','','','','','',''),(23,'','yue123456\r','huihuui20060531@163.com','','','','','','',''),(24,'','741019123\r','tommy741019123@yahoo.cn','','','','','','',''),(25,'','83102704\r','lhb1258@163.co','','','','','','',''),(26,'','364062c\r','422249498@qq.com','','','','','','',''),(27,'','jun0792500a\r','hunanxuejun@126.com','','','','','','',''),(28,'','123456\r','yhczbj@126.com','','','','','','',''),(29,'','wxf198402025110\r','wxf5iio@126.com','','','','','','',''),(30,'','780517ab\r','325314@qq.com','','','','','','',''),(31,'','a62323212\r','971880665@qq.com','','','','','','',''),(32,'','123456\r','weijt@163.com','','','','','','',''),(33,'','518118\r','renguangpeng52018@163.com','','','','','','',''),(34,'','chaijintian\r','864837178@qq.com','','','','','','',''),(35,'','s20632446s\r','qingzh@126.com','','','','','','',''),(36,'','198187\r','251702270@1qq.com','','','','','','',''),(37,'','f021211l8911\r','Corina11@yeah.com','','','','','','',''),(38,'','19650825\r','lianshenzhao@1yahu.com','','','','','','',''),(39,'','64887151\r','qwq_406255925@qq.com','','','','','','',''),(40,'','123456\r','aiyaoyongxin@126.com','','','','','','',''),(41,'','YANGYAHUI1992\r','www.122353486@pp.com','','','','','','',''),(42,'','shizebin\r','253823292@qq.com','','','','','','',''),(43,'','YUMEN.1996861030\r','58332292@qq.com','','','','','','',''),(44,'','wupeishuaivs\r','wupeishuaivs@qq.com','','','','','','',''),(45,'','lhy15056013033\r','lhy240939204@qq.com','','','','','','',''),(46,'','1390977507040521\r','qinghai40521@163.com','','','','','','',''),(47,'','123456\r','xindeli186@126.com','','','','','','',''),(48,'','8150939123\r','chenrui169@163.com','','','','','','',''),(49,'','pass600123\r','sss315@qq.com','','','','','','',''),(50,'','52558866789lei\r','yukileilei@hotmail.com','','','','','','',''),(51,'','14141414\r','chinazhujp@126.com','','','','','','',''),(52,'','700623\r','zgbjohn@126.com','','','','','','',''),(53,'','521521ling\r','870737077@qq.com','','','','','','',''),(54,'','102183\r','jihengchang@163.com','','','','','','',''),(55,'','dds24234234234243\r','ewrewrerew@sina.com','','','','','','',''),(56,'','123456\r','185669240@qq.com','','','','','','',''),(57,'','www66020\r','181229876458@qq.com','','','','','','',''),(58,'','123456789ly\r','luli721028@163.com','','','','','','',''),(59,'','1378563\r','373774602@QQ.com','','','','','','',''),(60,'','wo795096\r','zjpyxcx@126.com','','','','','','',''),(61,'','1314512\r','86057692@mail.net','','','','','','',''),(62,'','33445910zqq\r','313438431@163.com','','','','','','',''),(63,'','mbx19870425\r','maobixiong@126.com','','','','','','',''),(64,'','810120\r','872604759@qq.com','','','','','','',''),(65,'','crr580322\r','chenrr322@163.com','','','','','','',''),(66,'','618349275\r','adong618@qq.com','','','','','','',''),(67,'','hujiaping\r','793455565@qq.com','','','','','','',''),(68,'','hanxin!2903860\r','782035633@qq.com','','','','','','',''),(69,'','7762232\r','516533736@qq.com','','','','','','',''),(70,'','8911249\r','540838674@qq.com','','','','','','',''),(71,'','wugang123\r','564598184@qq.com','','','','','','',''),(72,'','ainiyiwannian123\r','lvhaixiaohei@163.com','','','','','','',''),(73,'','xiaowei120612..\r','303577328@qq.com','','','','','','',''),(74,'','hc14803\r','huajiahuaxi@hotmail.com','','','','','','',''),(75,'','xygya8972551\r','yin526202443@qq.com','','','','','','',''),(76,'','112288@qq.comiugoufgo','ugoufgo','','','','','','',''),(77,'','654321\r','caozhededi@qq.com','','','','','','',''),(78,'','657816\r','ZHANGHA987729@126.com','','','','','','',''),(79,'','94997487693\r','skywujinfeng@qq.com','','','','','','',''),(80,'','112233adbe\r','250169025@qq.com','','','','','','',''),(81,'','==========\r','371794177@qq.com','','','','','','',''),(82,'','741609\r','yaohuiqiong@tom.com','','','','','','',''),(83,'','xudemin\r','xu_lei.1025@yahoo.com.cn','','','','','','',''),(84,'','5809200\r','zh360@163.com','','','','','','',''),(85,'','suxiaolin0726\r','840862005@QQ.com','','','','','','',''),(86,'','ly112233\r','120135883@qq.com','','','','','','',''),(87,'','123456789\r','359283539@qq.com','','','','','','',''),(88,'','763375\r','aa245039147@qq.com','','','','','','',''),(89,'','521521abcdefg\r','he.chaojie@hotmail.com','','','','','','',''),(90,'','1999713821\r','www.xuehua54855@126.com','','','','','','',''),(91,'','000000abcabc\r','375998288@qq.com','','','','','','',''),(92,'','www5122551\r','a1925283507@qq.com','','','','','','',''),(93,'','123916\r','wenxin-8256@163.com','','','','','','',''),(94,'','zouyufeng\r','xuyuanyan@163.com','','','','','','',''),(95,'','lovewtt1314\r','81284420@qq.com','','','','','','',''),(96,'','13647803358\r','657776335@qq.com','','','','','','',''),(97,'','474654040\r','305145614@qq.com','','','','','','',''),(98,'','1101112\r','yoyo831112@hotmail.com','','','','','','','');
/*!40000 ALTER TABLE `xss_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xss_user2`
--

DROP TABLE IF EXISTS `xss_user2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xss_user2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `mail` varchar(75) NOT NULL,
  `card` varchar(19) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `ip` char(15) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `qq` varchar(11) NOT NULL,
  `address` longtext NOT NULL,
  `site` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xss_user2`
--

LOCK TABLES `xss_user2` WRITE;
/*!40000 ALTER TABLE `xss_user2` DISABLE KEYS */;
INSERT INTO `xss_user2` VALUES (1,'','htjailal820823\r','htjailal@163.com','','','','','','',''),(2,'11','13385110898\r','eastoo2@sina.com','','','','','','',''),(3,'','881130wanjin\r','tao656770797@sina.com','','','','','','',''),(4,'','gs7034514551?.\r','418514485@qq.com','','','','','','',''),(5,'','llg567\r','liliguo.888@163.com','','','','','','',''),(6,'','65760521\r','liudongfeng258@163.com','','','','','','',''),(7,'','zhulixiu770\r','zhulixiu770@163.com','','','','','','',''),(8,'','877534\r','45466845@qq.com','','','','','','',''),(9,'11','871105\r','543319333@qq.com','','','','','','',''),(10,'','871224\r','471081741@qq.com','','','','','','',''),(11,'','660122\r','abc13371665143@163.com','','','','','','',''),(12,'','123456\r','1079015621@qq.com','','','','','','',''),(13,'','zhaojiangtao1982\r','zhaojiangtao518518@126.com','','','','','','',''),(14,'','4113221985\r','lhtaiwq@163.com','','','','','','',''),(15,'','CAO55371299ZL\r','gstwczl@163.cnm','','','','','','',''),(16,'','ye19870812\r','taziliang333@163.com','','','','','','',''),(17,'','4444444\r','4444444@qq.com','','','','','','',''),(18,'','QQ6941967aa\r','qq763721064@y.cn','','','','','','',''),(19,'','ttttt226226\r','327215331@qq.com','','','','','','',''),(20,'','680924\r','hyjsxy9@sina.com','','','','','','',''),(21,'','326159487\r','410058890@qq.com','','','','','','',''),(22,'','517258wangwang\r','xiangnibugai@163.com','','','','','','',''),(23,'','19791115myq\r','316718740@qq.com','','','','','','',''),(24,'','wq13018076990\r','571719173@qq.com','','','','','','',''),(25,'','zxw415612\r','zxwtm99@yahoo.con','','','','','','',''),(26,'','ccc437482510\r','ccc13864047762@163.com','','','','','','',''),(27,'','liminmin323\r','867589491@qq.com','','','','','','',''),(28,'','258258','82789601@qq.com','','','','','','','');
/*!40000 ALTER TABLE `xss_user2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-31 11:00:50
