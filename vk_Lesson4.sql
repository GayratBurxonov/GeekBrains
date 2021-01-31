-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users1_idx` (`admin_id`),
  CONSTRAINT `fk_communities_users1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'dignissimos','Pariatur fugiat exercitationem laudantium voluptatem.',32),(2,'voluptatibus','Ab placeat sed odit dolorem eveniet.',55),(3,'deleniti',NULL,79),(4,'consequatur',NULL,91),(5,'officiis','Beatae officia pariatur voluptatum autem.',28),(6,'qui',NULL,90),(7,'nostrum','Dolorum harum veniam enim et aut enim possimus.',6),(8,'ex','Necessitatibus velit veniam vel nihil.',73),(9,'labore','Eius perspiciatis eveniet velit eaque doloremque sint in.',79),(10,'dolorem',NULL,79);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '-1 - rejected\n0 - request\n1 - accepted',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`from_users_id`,`to_users_id`),
  KEY `fk_friend_requests_users1_idx` (`from_users_id`),
  KEY `fk_friend_requests_users2_idx` (`to_users_id`),
  CONSTRAINT `fk_friend_requests_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (2,62,-1,'2004-05-22 17:03:30','2004-01-16 05:48:10'),(2,90,-1,'2011-06-16 04:13:43',NULL),(3,67,1,'2019-02-09 14:43:41','1990-08-30 21:54:31'),(3,85,-1,'1992-05-12 10:50:36',NULL),(4,54,0,'1985-11-28 15:00:37','2004-01-14 07:55:36'),(7,58,1,'2013-10-03 19:49:44',NULL),(8,87,1,'2007-07-23 02:48:24',NULL),(9,90,-1,'1993-03-03 00:17:13','1994-06-11 18:23:45'),(12,61,-1,'1982-10-23 06:15:44',NULL),(12,94,1,'2003-05-04 07:27:39',NULL),(13,91,-1,'2002-07-27 12:54:38','2009-07-16 10:53:11'),(16,8,0,'1990-03-12 05:43:09',NULL),(16,37,1,'2011-02-19 11:24:46','2007-03-13 15:11:24'),(18,26,0,'1971-07-27 00:33:21','1970-04-05 10:52:58'),(18,96,-1,'2009-08-17 08:13:31',NULL),(18,98,-1,'1998-12-21 19:49:42','1976-04-01 04:28:44'),(20,38,0,'1999-05-17 20:40:55','2006-05-21 00:09:02'),(20,51,-1,'2000-06-28 06:11:02','2002-03-01 02:04:29'),(21,70,0,'2001-08-10 13:14:55',NULL),(23,46,-1,'2015-01-29 21:06:44','1993-12-14 10:22:12'),(23,56,-1,'1997-07-08 11:18:39',NULL),(24,67,1,'2012-09-07 04:19:05',NULL),(25,78,1,'2013-07-12 03:40:42',NULL),(27,64,0,'1974-09-18 05:46:47',NULL),(28,26,-1,'2007-01-03 20:25:27','1999-07-12 14:26:39'),(29,23,1,'2019-06-16 21:22:18','2010-02-05 08:09:36'),(30,28,0,'1991-01-01 02:07:34',NULL),(31,10,0,'1993-08-26 00:29:44',NULL),(31,43,1,'1988-01-01 04:49:18','2020-02-24 03:39:16'),(31,51,1,'2016-05-31 06:58:24','2007-08-01 02:24:20'),(32,56,1,'2006-08-25 01:15:38','2003-07-01 11:13:43'),(34,31,-1,'2004-07-25 12:38:33',NULL),(34,86,0,'1988-08-27 03:49:58','1985-04-13 21:28:02'),(35,100,1,'2011-10-09 05:49:19',NULL),(36,41,0,'1972-06-27 14:37:12',NULL),(37,20,-1,'1997-05-14 03:13:55','2002-09-18 02:34:58'),(38,29,1,'2002-08-29 09:00:06',NULL),(38,92,-1,'1981-04-30 15:02:39','2002-01-23 20:10:56'),(40,90,0,'1976-02-17 00:15:23',NULL),(41,25,0,'1970-11-09 03:24:19',NULL),(44,20,0,'2014-10-11 23:44:29','1975-04-06 17:32:59'),(44,51,1,'2014-08-11 09:55:24','1976-03-07 22:42:55'),(45,47,1,'1979-09-21 13:15:05',NULL),(46,23,0,'2014-06-25 05:14:52',NULL),(47,31,0,'1977-01-17 13:54:36',NULL),(47,49,1,'2015-06-26 14:28:50','1971-03-01 02:10:45'),(47,51,0,'1974-03-01 01:51:08','1996-07-06 10:07:13'),(49,52,-1,'2009-03-23 16:35:13','1990-01-20 10:02:07'),(49,99,0,'2017-07-04 11:25:12',NULL),(51,4,1,'2006-05-26 10:48:22',NULL),(51,65,-1,'1998-11-02 06:33:24','1990-03-06 01:31:06'),(51,87,-1,'2009-09-24 05:36:14',NULL),(52,13,-1,'1999-07-19 10:58:20',NULL),(52,40,-1,'2004-01-29 06:36:26','1982-06-30 07:03:21'),(53,82,0,'1985-08-28 13:23:14','1996-05-20 10:30:53'),(54,34,-1,'1993-05-19 05:23:02','1974-08-15 18:53:35'),(55,23,0,'2005-06-24 20:45:20','2018-03-23 15:14:13'),(56,39,-1,'1986-12-09 19:02:54','1984-07-18 20:49:10'),(57,11,0,'2007-01-14 11:10:01','1987-05-17 03:09:11'),(58,80,-1,'1982-04-24 04:29:01',NULL),(61,3,-1,'2013-12-16 03:52:07','1991-09-01 10:32:33'),(61,80,0,'2003-06-05 00:44:50',NULL),(63,55,-1,'1992-05-19 06:42:19','1978-12-02 04:41:29'),(65,45,1,'2010-09-25 03:31:44',NULL),(66,22,0,'1970-10-16 15:18:57','1984-12-06 17:07:28'),(67,20,0,'2003-11-05 04:46:39','1974-08-09 21:49:51'),(67,93,-1,'2003-12-20 05:32:57',NULL),(68,75,1,'1979-04-20 15:49:05','2016-11-12 04:09:21'),(70,49,1,'2010-10-04 23:57:41',NULL),(71,48,1,'2009-07-29 00:40:43','2009-01-23 01:14:33'),(71,59,1,'1982-12-09 09:57:28',NULL),(73,21,1,'2011-05-08 13:49:17',NULL),(73,82,1,'2014-06-15 19:31:13','1992-01-06 23:55:35'),(73,87,0,'1986-11-06 17:58:05',NULL),(74,11,0,'1990-11-09 08:25:46','2013-05-23 10:36:08'),(75,76,1,'1982-11-07 11:19:02',NULL),(76,4,0,'2001-06-20 20:16:47',NULL),(76,55,-1,'1989-12-16 02:56:07','1986-09-03 22:45:33'),(77,20,0,'1980-05-31 21:40:44',NULL),(78,9,1,'1983-07-01 06:33:07',NULL),(79,5,0,'2009-02-01 14:56:39',NULL),(79,43,0,'1997-02-18 10:21:42',NULL),(80,44,-1,'2009-11-22 14:34:11',NULL),(83,22,0,'2006-08-01 01:03:51','2015-01-23 07:29:55'),(86,39,-1,'2020-07-12 22:18:24',NULL),(86,58,1,'2002-02-07 23:47:43','2005-05-03 09:26:52'),(86,73,1,'2000-04-16 15:15:49',NULL),(88,45,1,'1999-01-10 15:19:02',NULL),(88,82,-1,'2005-02-10 06:46:58',NULL),(90,27,0,'2016-06-12 18:48:54',NULL),(91,35,1,'2018-10-15 05:06:35',NULL),(93,26,-1,'2017-06-21 17:53:11','2002-12-31 01:01:53'),(93,38,0,'1978-10-08 01:40:55','2018-10-17 19:01:11'),(93,54,1,'2011-03-08 03:32:35','2005-11-09 09:32:22'),(93,63,0,'1999-03-23 15:13:53','1975-10-26 09:27:59'),(94,42,1,'1986-05-12 22:23:14','1982-06-26 16:23:45'),(95,41,-1,'2013-05-14 04:47:01','2002-02-25 09:47:45'),(97,4,0,'1985-12-27 19:14:54','2004-02-22 12:17:41'),(97,64,0,'2002-02-27 18:47:13',NULL),(98,70,-1,'2004-09-19 05:44:19',NULL);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `posts_id` int unsigned DEFAULT NULL,
  `messages_id` int unsigned DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_posts` (`users_id`,`posts_id`),
  UNIQUE KEY `user_media` (`users_id`,`media_id`),
  UNIQUE KEY `users_messages` (`users_id`,`messages_id`),
  KEY `fk_likes_users1_idx` (`users_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  KEY `fk_likes_posts1_idx` (`posts_id`),
  KEY `fk_likes_messages1_idx` (`messages_id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_messages1` FOREIGN KEY (`messages_id`) REFERENCES `messages` (`id`),
  CONSTRAINT `fk_likes_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_likes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (101,78,NULL,NULL,65,'2007-09-28 23:35:28'),(102,10,37,NULL,NULL,'2011-07-01 16:20:22'),(103,80,NULL,4,NULL,'1980-09-11 23:07:42'),(104,60,NULL,NULL,75,'2001-08-29 17:17:56'),(105,61,93,NULL,NULL,'2008-12-04 14:41:06'),(106,49,NULL,92,NULL,'1995-11-16 11:48:57'),(107,64,NULL,NULL,23,'1991-03-13 03:42:23'),(108,34,57,NULL,NULL,'1985-07-05 12:25:41'),(109,36,NULL,76,NULL,'2007-10-06 12:34:45'),(110,66,NULL,NULL,45,'2014-08-10 21:26:35'),(111,52,62,NULL,NULL,'1980-01-07 23:20:04'),(112,25,NULL,86,NULL,'2007-05-10 05:14:51'),(113,89,NULL,NULL,37,'1999-02-14 22:53:21'),(114,93,89,NULL,NULL,'1982-05-06 14:15:48'),(115,66,NULL,79,NULL,'1984-10-09 07:05:32'),(116,34,NULL,NULL,70,'1997-12-21 21:19:36'),(117,33,86,NULL,NULL,'2018-05-07 07:52:11'),(118,31,NULL,43,NULL,'1970-01-26 00:28:16'),(119,34,NULL,NULL,58,'1977-05-22 03:05:41'),(120,3,79,NULL,NULL,'2009-03-06 17:25:40'),(121,29,NULL,28,NULL,'1999-04-14 19:01:50'),(122,28,NULL,NULL,93,'1974-09-25 22:02:28'),(123,58,56,NULL,NULL,'2013-09-17 00:17:54'),(124,60,NULL,60,NULL,'2003-07-11 08:34:43'),(125,86,NULL,NULL,16,'2016-06-01 22:31:43'),(126,46,33,NULL,NULL,'1982-09-10 19:04:44'),(127,40,NULL,36,NULL,'1977-05-06 18:28:51'),(128,70,NULL,NULL,98,'1994-09-09 20:36:08'),(129,16,60,NULL,NULL,'2018-12-10 00:34:01'),(131,53,NULL,NULL,12,'2020-03-16 17:19:15'),(132,28,48,NULL,NULL,'1992-06-21 02:35:24'),(133,22,NULL,29,NULL,'1998-07-29 08:38:34'),(134,28,NULL,NULL,67,'2014-11-05 09:27:46'),(135,18,82,NULL,NULL,'2015-04-30 05:29:02'),(136,59,NULL,86,NULL,'1994-12-06 17:59:08'),(137,100,NULL,NULL,40,'1994-01-12 17:33:18'),(138,2,54,NULL,NULL,'2013-07-15 07:45:41'),(139,81,NULL,66,NULL,'1986-09-29 15:45:55'),(140,73,NULL,NULL,94,'1970-08-13 17:22:19'),(141,64,49,NULL,NULL,'2020-12-31 13:25:52'),(142,76,NULL,58,NULL,'1978-04-19 13:21:50'),(143,88,NULL,NULL,46,'1984-09-19 17:23:45'),(144,7,66,NULL,NULL,'1987-06-19 22:37:41'),(145,71,NULL,47,NULL,'2006-07-14 10:04:41'),(146,93,NULL,NULL,73,'2000-07-03 08:14:15'),(147,8,91,NULL,NULL,'1992-04-03 14:47:23'),(149,50,NULL,NULL,25,'1977-12-30 11:01:05'),(150,39,73,NULL,NULL,'2008-06-25 22:43:16'),(151,39,NULL,72,NULL,'2004-06-29 17:53:04'),(152,65,NULL,NULL,36,'1970-12-17 14:30:53'),(153,31,98,NULL,NULL,'1972-09-08 06:27:27'),(154,81,NULL,96,NULL,'2012-09-30 13:47:12'),(155,23,NULL,NULL,83,'1995-07-24 09:46:53'),(156,77,40,NULL,NULL,'1971-09-15 10:36:10'),(157,73,NULL,51,NULL,'1979-01-08 04:44:28'),(158,94,NULL,NULL,32,'1973-01-04 04:56:19'),(159,67,8,NULL,NULL,'1976-05-20 20:37:25'),(160,100,NULL,67,NULL,'1992-01-30 15:47:13'),(161,27,NULL,NULL,7,'1986-06-08 23:27:08'),(162,6,50,NULL,NULL,'2020-06-21 03:41:03'),(163,26,NULL,10,NULL,'2001-06-28 16:50:19'),(164,1,NULL,NULL,74,'1991-08-02 04:09:21'),(165,37,79,NULL,NULL,'2008-11-18 22:47:11'),(166,47,NULL,62,NULL,'1992-05-06 11:24:39'),(168,68,11,NULL,NULL,'2019-09-17 21:12:02'),(169,85,NULL,1,NULL,'1996-02-24 20:47:59'),(170,63,NULL,NULL,89,'1998-03-01 06:57:35'),(171,57,27,NULL,NULL,'2016-12-10 00:04:18'),(172,43,NULL,31,NULL,'1987-09-07 09:16:12'),(173,98,NULL,NULL,44,'2003-11-18 20:51:57'),(174,36,71,NULL,NULL,'1996-10-28 05:06:12'),(175,9,NULL,93,NULL,'2016-06-21 04:05:00'),(176,13,NULL,NULL,97,'1975-06-15 22:31:54'),(177,64,70,NULL,NULL,'1991-06-12 00:05:40'),(178,65,NULL,15,NULL,'2001-08-18 02:57:06'),(179,30,NULL,NULL,72,'2002-10-07 15:52:39'),(180,25,9,NULL,NULL,'1971-03-27 04:16:51'),(181,24,NULL,66,NULL,'1995-12-16 02:47:49'),(182,30,NULL,NULL,38,'1980-12-18 20:41:01'),(183,25,16,NULL,NULL,'1981-05-20 18:51:18'),(184,67,NULL,34,NULL,'2014-12-14 09:08:01'),(185,53,NULL,NULL,17,'2005-01-12 04:46:09'),(186,22,72,NULL,NULL,'1988-02-21 13:30:57'),(187,77,NULL,24,NULL,'1999-11-14 22:18:54'),(188,25,NULL,NULL,48,'1991-03-04 06:18:18'),(189,34,89,NULL,NULL,'1984-04-28 16:53:09'),(190,12,NULL,1,NULL,'1987-07-06 14:50:06'),(191,46,NULL,NULL,12,'1986-12-13 17:37:47'),(192,98,7,NULL,NULL,'1970-11-09 09:22:56'),(193,26,NULL,66,NULL,'1996-02-15 06:44:14'),(194,70,NULL,NULL,47,'2004-05-19 15:59:48'),(195,18,22,NULL,NULL,'1986-07-15 20:49:11'),(196,97,NULL,90,NULL,'2015-04-28 14:19:02'),(197,59,NULL,NULL,71,'2016-07-21 16:52:44'),(198,28,94,NULL,NULL,'2000-06-17 09:57:15'),(199,9,NULL,85,NULL,'1983-05-20 02:59:23'),(200,86,NULL,NULL,11,'1998-01-01 15:19:37');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `users_id` int unsigned DEFAULT NULL,
  `file` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blob` blob,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_media_types1_idx` (`media_types_id`),
  KEY `fk_media_users1_idx` (`users_id`),
  CONSTRAINT `fk_media_media_types1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,2,10,'video/vnd.dece.sd',NULL,NULL,'1984-05-28 16:37:23','1984-08-19 19:28:44'),(2,3,67,'application/vnd.dece.data',NULL,NULL,'1992-06-08 03:38:24',NULL),(3,3,42,'application/vnd.las.las+xml',NULL,NULL,'2019-11-27 10:29:03',NULL),(4,2,8,'application/vnd.uiq.theme',NULL,NULL,'2019-01-21 00:41:32',NULL),(5,3,84,'image/vnd.fpx',NULL,NULL,'2016-07-01 05:01:27','2004-10-14 03:19:29'),(6,2,1,'application/x-zmachine',NULL,NULL,'2003-12-25 07:36:40',NULL),(7,2,96,'application/x-7z-compressed',NULL,NULL,'2006-09-01 15:21:53','1970-10-02 22:00:31'),(8,1,54,'audio/x-flac',NULL,NULL,'2016-01-10 00:25:52','1973-05-07 15:58:21'),(9,3,2,'application/lost+xml',NULL,NULL,'2011-02-14 09:04:41','1980-05-25 19:48:54'),(10,3,30,'model/x3d+xml',NULL,NULL,'2005-08-17 08:29:23',NULL),(11,2,69,'application/x-zmachine',NULL,NULL,'2003-10-27 05:35:53',NULL),(12,3,52,'application/java-archive',NULL,NULL,'2001-10-27 03:18:30',NULL),(13,3,41,'application/widget',NULL,NULL,'1993-06-01 19:26:00','1985-01-04 21:26:41'),(14,2,34,'application/vnd.xfdl',NULL,NULL,'1976-11-18 18:33:44',NULL),(15,1,12,'application/vnd.oasis.opendocument.presentati',NULL,NULL,'1980-03-03 11:58:44',NULL),(16,1,90,'application/vnd.oasis.opendocument.spreadshee',NULL,NULL,'2010-08-05 21:37:48',NULL),(17,1,66,'model/vrml',NULL,NULL,'1979-05-24 08:48:04','1982-06-01 09:17:14'),(18,3,85,'audio/x-flac',NULL,NULL,'1985-03-05 12:30:24','2004-07-10 23:15:29'),(19,2,68,'text/csv',NULL,NULL,'2018-12-07 19:42:02','2014-07-11 23:38:49'),(20,1,52,'application/x-latex',NULL,NULL,'1979-07-15 11:59:51','1987-04-26 21:01:39'),(21,1,38,'audio/adpcm',NULL,NULL,'1981-04-16 16:20:39',NULL),(22,3,55,'application/vnd.sun.xml.impress.template',NULL,NULL,'1996-05-21 21:29:33','1975-07-13 04:20:08'),(23,1,23,'application/x-xz',NULL,NULL,'1980-11-11 23:01:55','2015-11-08 03:27:07'),(24,3,72,'audio/x-mpegurl',NULL,NULL,'2005-05-31 09:55:26','1987-05-10 16:04:53'),(25,2,52,'application/x-font-woff',NULL,NULL,'1994-05-10 20:17:08','1978-08-15 06:49:35'),(26,2,71,'application/vnd.oasis.opendocument.formula',NULL,NULL,'1988-09-13 09:26:14',NULL),(27,2,34,'application/x-7z-compressed',NULL,NULL,'1973-09-10 18:22:17','1970-01-20 16:29:15'),(28,2,58,'audio/mpeg',NULL,NULL,'1971-02-22 03:48:37',NULL),(29,1,39,'application/x-debian-package',NULL,NULL,'1998-10-27 10:18:06','1988-07-04 15:10:11'),(30,2,44,'image/sgi',NULL,NULL,'1971-07-05 02:54:24',NULL),(31,3,39,'image/vnd.wap.wbmp',NULL,NULL,'1988-04-07 21:40:55',NULL),(32,2,44,'application/vnd.kidspiration',NULL,NULL,'1990-01-07 01:13:58',NULL),(33,2,90,'video/mj2',NULL,NULL,'2014-10-12 08:18:57','2014-03-03 21:20:37'),(34,1,48,'application/vnd.trid.tpt',NULL,NULL,'1996-03-23 18:29:48',NULL),(35,3,54,'image/jpeg',NULL,NULL,'1994-06-06 02:45:32','1997-12-11 09:37:41'),(36,3,17,'application/x-subrip',NULL,NULL,'1977-09-23 10:48:11','1979-07-19 12:02:17'),(37,3,86,'application/vnd.ms-powerpoint.slide.macroenab',NULL,NULL,'2014-12-22 23:48:05',NULL),(38,2,35,'text/vnd.graphviz',NULL,NULL,'2019-01-26 14:17:20',NULL),(39,1,66,'audio/x-wav',NULL,NULL,'1994-04-19 05:06:22',NULL),(40,1,57,'application/vnd.mozilla.xul+xml',NULL,NULL,'2016-10-10 18:48:10',NULL),(41,2,52,'application/x-x509-ca-cert',NULL,NULL,'2003-05-21 01:29:49',NULL),(42,3,24,'application/x-bittorrent',NULL,NULL,'1992-02-07 10:14:17',NULL),(43,3,19,'application/msword',NULL,NULL,'1996-08-03 06:51:16',NULL),(44,1,25,'video/vnd.dece.pd',NULL,NULL,'1981-03-22 23:54:53',NULL),(45,3,57,'image/vnd.fujixerox.edmics-rlc',NULL,NULL,'1991-04-29 19:13:19',NULL),(46,1,73,'application/x-texinfo',NULL,NULL,'1994-01-18 14:53:18','2002-03-19 13:19:57'),(47,1,16,'text/prs.lines.tag',NULL,NULL,'1988-08-15 07:18:56',NULL),(48,1,68,'text/calendar',NULL,NULL,'1992-07-13 19:21:44',NULL),(49,3,23,'application/ogg',NULL,NULL,'1979-04-09 13:58:47',NULL),(50,2,23,'application/x-director',NULL,NULL,'1987-01-04 05:41:43',NULL),(51,3,62,'application/vnd.kde.kivio',NULL,NULL,'2012-08-09 23:02:11','1994-08-03 21:32:49'),(52,2,64,'application/vnd.lotus-freelance',NULL,NULL,'1984-01-18 05:01:15',NULL),(53,1,7,'application/x-t3vm-image',NULL,NULL,'1998-03-18 16:10:36',NULL),(54,1,52,'application/vnd.llamagraphics.life-balance.de',NULL,NULL,'1997-03-09 02:39:21',NULL),(55,3,29,'application/xv+xml',NULL,NULL,'2012-04-30 02:35:43',NULL),(56,3,60,'audio/x-pn-realaudio-plugin',NULL,NULL,'2001-02-10 18:50:28',NULL),(57,2,65,'application/vnd.lotus-screencam',NULL,NULL,'2005-12-12 04:11:55','1995-01-13 23:04:24'),(58,2,86,'application/vnd.ms-excel.addin.macroenabled.1',NULL,NULL,'2003-04-20 22:10:15',NULL),(59,2,93,'application/vnd.kidspiration',NULL,NULL,'1973-12-18 08:42:14',NULL),(60,2,60,'image/ief',NULL,NULL,'1999-07-08 12:27:58',NULL),(61,3,90,'application/x-conference',NULL,NULL,'2005-10-17 21:46:54',NULL),(62,2,75,'application/vnd.rig.cryptonote',NULL,NULL,'1997-02-13 18:55:06','2015-10-08 00:25:05'),(63,3,58,'application/vnd.ufdl',NULL,NULL,'2020-03-12 12:56:29','2000-02-08 04:43:52'),(64,3,66,'application/vnd.enliven',NULL,NULL,'2019-09-25 12:52:02',NULL),(65,3,55,'video/x-ms-asf',NULL,NULL,'1987-05-19 18:53:56',NULL),(66,1,81,'application/pkix-pkipath',NULL,NULL,'1999-01-12 02:32:56',NULL),(67,3,38,'audio/basic',NULL,NULL,'1982-10-06 16:03:47',NULL),(68,1,35,'application/x-msbinder',NULL,NULL,'2016-01-21 16:25:52',NULL),(69,1,63,'application/atom+xml',NULL,NULL,'1974-03-02 02:38:51',NULL),(70,3,51,'application/x-subrip',NULL,NULL,'2013-04-20 11:38:15','2008-08-29 22:28:15'),(71,3,41,'application/x-msclip',NULL,NULL,'2005-09-03 08:02:13',NULL),(72,2,92,'application/vnd.ms-powerpoint',NULL,NULL,'1975-06-05 09:37:12','1997-04-04 01:43:05'),(73,3,8,'audio/x-mpegurl',NULL,NULL,'2020-12-14 17:31:52',NULL),(74,2,46,'application/vnd.sun.xml.writer',NULL,NULL,'2010-01-29 02:32:51','1980-01-22 17:39:04'),(75,1,45,'application/xv+xml',NULL,NULL,'1979-10-14 10:41:22',NULL),(76,3,73,'text/plain',NULL,NULL,'2003-01-02 06:24:43','1983-04-06 22:45:01'),(77,2,82,'application/vnd.stepmania.stepchart',NULL,NULL,'1984-02-23 22:11:31',NULL),(78,2,55,'image/vnd.dece.graphic',NULL,NULL,'1986-07-07 00:01:12',NULL),(79,2,31,'text/vnd.in3d.3dml',NULL,NULL,'1991-07-12 01:50:28','2009-04-06 02:36:27'),(80,2,51,'text/vnd.curl.mcurl',NULL,NULL,'2001-04-09 03:54:55',NULL),(81,3,35,'application/vnd.ms-officetheme',NULL,NULL,'2009-01-09 21:38:12','1974-04-21 23:14:50'),(82,2,94,'application/vnd.ms-pki.seccat',NULL,NULL,'2019-12-09 06:07:46',NULL),(83,2,20,'application/xspf+xml',NULL,NULL,'2010-03-14 12:25:04','2008-03-26 10:05:54'),(84,3,17,'application/vnd.wt.stf',NULL,NULL,'1983-09-17 21:36:06',NULL),(85,1,54,'application/vnd.oasis.opendocument.text-web',NULL,NULL,'1996-10-21 22:26:08','1994-07-01 20:33:59'),(86,1,77,'application/java-vm',NULL,NULL,'2016-10-06 18:08:12',NULL),(87,3,12,'application/vnd.shana.informed.package',NULL,NULL,'1988-01-13 20:25:34',NULL),(88,2,88,'application/vnd.ecowin.chart',NULL,NULL,'2007-06-23 08:35:44',NULL),(89,1,55,'application/x-gramps-xml',NULL,NULL,'1974-06-05 20:26:02','2020-02-02 00:42:46'),(90,1,22,'application/vnd.oasis.opendocument.formula',NULL,NULL,'1989-12-12 20:27:19',NULL),(91,1,70,'application/x-wais-source',NULL,NULL,'1991-12-07 10:26:07',NULL),(92,2,11,'application/vnd.epson.msf',NULL,NULL,'1983-11-07 04:34:18',NULL),(93,1,49,'video/quicktime',NULL,NULL,'1996-01-22 16:32:49',NULL),(94,2,88,'audio/x-ms-wax',NULL,NULL,'2009-10-29 10:43:43','1974-10-31 20:39:58'),(95,3,79,'application/x-rar-compressed',NULL,NULL,'2001-01-12 11:21:01',NULL),(96,1,44,'application/x-font-type1',NULL,NULL,'2020-02-27 02:49:32',NULL),(97,1,82,'video/vnd.dece.video',NULL,NULL,'1984-03-10 18:36:30','2008-11-01 01:56:54'),(98,1,12,'application/vnd.oasis.opendocument.text',NULL,NULL,'1991-03-15 05:37:52','1982-12-27 08:47:55'),(99,3,18,'application/vnd.lotus-organizer',NULL,NULL,'1970-02-20 12:32:12',NULL),(100,2,79,'application/vnd.hal+xml',NULL,NULL,'1970-12-20 12:12:19',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'video'),(2,'audio'),(3,'img');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` datetime DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users1_idx` (`from_users_id`),
  KEY `fk_messages_users2_idx` (`to_users_id`),
  KEY `fk_messages_media1_idx` (`media_id`),
  CONSTRAINT `fk_messages_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_messages_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,8,58,'Incidunt ut maxime et non aperiam.','2007-10-29 17:50:44',NULL,51),(2,24,30,'Est hic cupiditate magnam et pariatur commodi.','1978-11-02 07:17:50',NULL,NULL),(3,38,37,'Quo ex aspernatur qui.','1981-06-20 21:11:17','2001-05-14 16:02:18',76),(4,46,35,'Culpa voluptatem blanditiis qui sunt voluptates velit vel.','2011-01-01 23:25:18',NULL,NULL),(5,90,44,'Veniam hic facere cumque quis.','2011-05-10 11:34:45','1975-10-24 16:07:56',65),(6,59,66,'Nemo ipsa inventore alias est repellendus sed quisquam.','1985-12-10 01:30:19','2016-03-06 08:45:23',NULL),(7,68,52,'Deserunt aut nobis voluptas perferendis voluptatem voluptatem.','1985-02-19 09:59:18','2013-07-24 07:11:42',31),(8,71,59,'Ratione amet enim est similique enim nesciunt rerum.','1993-09-19 12:38:58','1974-07-18 21:01:41',NULL),(9,34,12,'Molestiae blanditiis repudiandae officia asperiores quia voluptatem aut.','1984-02-06 16:23:51',NULL,37),(10,41,100,'Debitis ab eum voluptatem assumenda alias velit excepturi eum.','2015-10-25 22:08:35','2007-02-17 00:25:31',NULL),(11,37,8,'Qui minus sit alias et blanditiis dolore occaecati autem.','1970-08-09 10:59:58','1985-01-31 13:38:15',1),(12,88,32,'Voluptates qui ea excepturi cum aut et.','1993-11-22 04:22:46','1975-02-18 22:44:42',NULL),(13,29,69,'Quia cumque enim dignissimos suscipit.','2002-08-03 21:34:47',NULL,67),(14,4,15,'Optio voluptatem voluptatem eos voluptatibus omnis perspiciatis facilis.','2003-08-16 00:25:57',NULL,NULL),(15,95,4,'Ut omnis quia odio.','2020-06-25 02:09:11',NULL,44),(16,59,63,'Non assumenda iusto ducimus nesciunt eos quia.','1996-05-11 09:33:40','1989-05-04 01:58:47',NULL),(17,7,30,'Minima vel voluptas explicabo omnis ut.','1976-12-08 05:12:46','2017-04-06 23:05:33',61),(18,38,1,'Vero ea sed consequuntur inventore sunt et.','1985-06-11 10:50:02',NULL,NULL),(19,83,34,'Nobis expedita repellat distinctio aut architecto.','1978-09-08 02:40:23','2001-06-06 04:05:13',31),(20,19,75,'Hic assumenda reprehenderit quia iste rerum officia reprehenderit.','1980-02-28 20:29:58','1971-09-29 05:36:30',NULL),(21,61,12,'Accusantium aspernatur omnis animi sequi distinctio voluptas.','1986-02-03 02:06:20',NULL,39),(22,61,100,'Quaerat sit vel illum expedita corrupti et qui.','1976-05-27 05:51:23','2004-08-28 01:31:47',NULL),(23,91,28,'Nostrum sit non rem dolor sit odio.','2009-10-07 14:32:35','2008-04-19 14:51:07',38),(24,57,31,'Voluptatem aspernatur officia in deleniti fugit placeat.','1971-01-08 17:32:45',NULL,NULL),(25,58,26,'Quis similique est eaque repellat quasi qui provident dolores.','1999-09-14 12:24:05',NULL,56),(26,1,85,'Ipsum excepturi rerum dolorem ipsa qui ad.','2009-12-09 14:13:58','1980-02-28 03:39:30',NULL),(27,10,91,'Et asperiores eos consequatur quod.','2002-03-08 11:33:41','2019-03-12 01:36:16',48),(28,71,28,'Unde nostrum eaque quisquam molestiae eveniet expedita consectetur.','1970-10-20 10:17:21',NULL,NULL),(29,90,11,'Eveniet facilis soluta quos quidem.','2007-08-22 06:22:20','1980-05-24 00:31:47',82),(30,21,29,'Culpa voluptatem ullam corporis aliquid velit sapiente.','2012-10-24 09:53:11',NULL,NULL),(31,51,90,'Blanditiis sed et molestias dolorum magnam.','2011-04-14 15:05:39','1981-02-12 06:35:40',68),(32,89,50,'Non quam laborum amet eligendi.','1982-10-11 19:20:08',NULL,NULL),(33,58,41,'Nisi eum enim praesentium quia qui laborum.','1995-06-02 11:01:04',NULL,95),(34,96,98,'Corrupti assumenda officiis dignissimos ex praesentium occaecati.','1975-02-06 18:55:17',NULL,NULL),(35,47,55,'Dolorem placeat quo repellendus quisquam magnam ea libero.','1982-12-08 22:21:23','1983-01-16 04:47:20',51),(36,3,56,'Omnis dolorum et incidunt qui quam.','2014-07-13 10:38:19',NULL,NULL),(37,20,66,'Asperiores fugit perspiciatis nihil expedita asperiores recusandae.','1985-05-08 02:43:05','2014-04-22 00:27:10',27),(38,67,37,'Aspernatur velit sed delectus voluptatem libero.','1994-10-21 14:03:20',NULL,NULL),(39,15,26,'Voluptas sapiente quod quisquam tempore provident.','1981-11-10 11:45:43',NULL,65),(40,96,46,'Nam iusto eligendi eos doloribus voluptatem voluptatibus nesciunt.','1975-11-11 08:33:03',NULL,NULL),(41,52,97,'Quia animi adipisci neque quae.','2013-11-16 05:38:41',NULL,83),(42,20,85,'Natus totam esse quas exercitationem.','2017-06-14 15:21:38','1975-12-26 19:23:40',NULL),(43,87,43,'Necessitatibus voluptatibus odio autem aliquam.','1974-05-16 12:45:08','2006-03-11 19:59:39',74),(44,81,38,'Quo sunt dolore molestiae atque veritatis porro explicabo.','1984-03-01 16:42:33','2010-11-13 12:04:18',NULL),(45,6,84,'Maxime dolor unde sed aut.','1971-12-19 17:37:05','1982-03-27 15:24:32',25),(46,56,86,'Deserunt quam ut debitis.','2007-08-05 08:48:46','2002-06-09 14:16:18',NULL),(47,91,6,'Tempore cumque iusto ratione dicta.','2006-11-05 18:52:01',NULL,46),(48,18,73,'Inventore voluptatem eaque autem sunt nemo porro tenetur.','2018-10-03 12:39:54','2012-03-02 01:30:20',NULL),(49,72,87,'Velit aut esse sit impedit.','2006-07-27 22:26:01','1973-04-14 17:48:55',8),(50,36,83,'Ratione omnis asperiores sed eius velit.','2020-04-07 23:31:12','2012-08-29 11:32:08',NULL),(51,29,35,'Voluptatem debitis in qui voluptatem voluptate ex.','1972-10-09 08:26:21',NULL,50),(52,12,55,'Molestiae quis corrupti accusamus inventore.','2003-06-30 16:03:43','2006-09-13 19:07:41',NULL),(53,44,41,'Excepturi in numquam modi.','1976-10-26 11:22:53','1978-07-20 20:36:45',77),(54,17,21,'Deserunt cumque vel nulla quidem.','1976-11-17 09:25:20','2001-09-02 16:32:53',NULL),(55,88,26,'Iusto mollitia consequatur possimus eveniet ut aperiam laboriosam distinctio.','2016-03-07 07:28:06','1990-04-22 22:05:46',98),(56,12,82,'Eum sapiente voluptates delectus eum.','2014-08-11 05:08:58',NULL,NULL),(57,93,73,'Harum voluptate fugit enim aut non itaque non ut.','2010-12-19 14:16:25',NULL,89),(58,38,90,'Nihil velit illo et.','2018-07-18 19:43:38',NULL,NULL),(59,20,61,'Necessitatibus et accusamus quisquam laboriosam.','1971-05-20 15:40:20','1989-04-07 14:10:22',49),(60,27,96,'Doloremque aspernatur nesciunt optio veniam consectetur.','1996-08-14 06:50:15',NULL,NULL),(61,80,25,'Cumque sed qui quibusdam aliquid.','1982-03-06 05:58:59','2014-11-14 05:18:14',66),(62,30,36,'Laudantium recusandae consequuntur sequi sequi.','1992-12-27 22:36:41',NULL,NULL),(63,64,80,'Aut possimus sunt assumenda eum eos voluptatibus placeat dolorum.','1988-10-02 11:50:49',NULL,60),(64,40,97,'Sequi facere sit maxime quisquam pariatur.','2010-06-16 09:16:55',NULL,NULL),(65,54,84,'Aut est vitae reprehenderit laudantium omnis tenetur.','2004-07-01 14:45:13','1978-07-09 00:10:46',6),(66,51,96,'Quia similique quidem ullam id culpa qui et.','1970-07-24 05:33:03','1972-08-19 02:04:57',NULL),(67,35,88,'Amet quis natus deserunt dolor dicta eum qui.','1976-10-26 03:28:24',NULL,59),(68,24,26,'In tempore cum consequuntur voluptate.','2018-07-26 11:08:41','1991-03-06 03:37:37',NULL),(69,85,45,'Inventore minima optio hic dolorem voluptate explicabo explicabo.','1991-05-29 17:52:28',NULL,9),(70,33,72,'Aut voluptate aut debitis.','2016-01-17 03:33:11','2005-08-12 01:21:27',NULL),(71,64,52,'Odit qui impedit alias voluptas nisi harum.','2015-01-16 20:31:40','1980-12-01 23:22:58',29),(72,29,81,'Cumque ex nihil sapiente nisi dolorem facere ea rerum.','2012-11-13 21:28:00',NULL,NULL),(73,48,44,'Harum vero ipsa repellat sed magni et aut.','2002-12-02 14:35:55','1979-03-04 05:11:57',44),(74,8,84,'Aut sed accusamus corporis nostrum.','2003-06-26 02:21:48',NULL,NULL),(75,88,38,'Consequuntur ut facere exercitationem sunt tempore.','2013-12-31 19:18:12',NULL,24),(76,93,89,'Repellat quibusdam doloribus minus officiis voluptatem nulla omnis sed.','1977-01-11 18:41:16','2006-01-03 03:48:02',NULL),(77,80,23,'Quaerat eligendi reprehenderit perspiciatis consequatur quam.','1993-11-22 00:35:39','1981-03-03 19:21:17',7),(78,39,46,'Ab dolorem eum laboriosam quibusdam.','2014-08-09 19:24:23',NULL,NULL),(79,87,30,'Omnis ut iste voluptatem incidunt officiis voluptatem.','1986-11-09 00:05:03',NULL,77),(80,95,62,'Sunt ea saepe adipisci tenetur soluta dolorem officiis nihil.','1996-09-11 01:52:38',NULL,NULL),(81,99,25,'Occaecati tenetur optio quo ut.','2011-10-30 15:58:02','1976-10-13 02:17:55',100),(82,28,54,'Quisquam quo occaecati quasi sed omnis eveniet placeat.','1996-02-27 09:48:38','1972-07-25 03:53:29',NULL),(83,92,2,'Alias repellendus alias sint assumenda.','1984-07-15 14:27:48',NULL,24),(84,36,9,'Quasi dolores soluta consequatur.','2006-03-15 08:17:39','1998-08-21 04:59:03',NULL),(85,76,97,'Occaecati voluptates modi aut mollitia quis dolorem.','1980-05-22 10:16:06',NULL,45),(86,100,90,'Aut adipisci voluptatem labore.','2014-10-21 12:46:32',NULL,NULL),(87,19,69,'Maiores iure non voluptatum.','1973-07-18 11:25:54','2017-09-23 18:29:53',55),(88,26,8,'Quia dolor quis eos et reiciendis.','2014-01-25 15:23:52','1991-12-30 09:05:52',NULL),(89,59,94,'Laborum culpa harum explicabo est at provident.','1971-08-14 18:35:33','2016-11-28 20:02:43',30),(90,35,89,'Ut placeat rerum porro eos temporibus autem dignissimos.','1991-09-01 16:00:39',NULL,NULL),(91,83,87,'Quas quo ut aut id.','2000-04-11 15:54:35',NULL,17),(92,83,15,'Rem enim autem eum ipsum.','2017-09-14 06:25:03','1979-06-09 22:32:31',NULL),(93,62,6,'Sunt autem itaque et sequi accusantium illum.','1983-01-15 04:20:15','1982-09-15 21:29:57',72),(94,86,42,'At qui harum aspernatur qui commodi voluptate consequatur.','1989-08-20 17:44:18','2005-06-15 07:39:51',NULL),(95,93,17,'Saepe eligendi incidunt sit non quisquam suscipit.','1979-07-25 14:00:35',NULL,77),(96,38,17,'Non quae quia velit itaque.','2009-12-25 18:09:55',NULL,NULL),(97,70,35,'Qui illo ex quasi natus et dolore modi.','1972-09-25 18:10:53','2004-08-10 04:12:06',36),(98,25,61,'Voluptates aut quisquam qui et aperiam ab.','1973-12-28 10:22:16','1975-05-03 22:09:41',NULL),(99,26,19,'Consequatur earum saepe est temporibus et deleniti et blanditiis.','1989-11-30 01:54:00','1971-04-24 06:07:40',37),(100,55,54,'Veritatis molestiae dolores nemo accusamus.','1972-03-14 06:58:24','1985-11-26 16:48:18',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned DEFAULT NULL,
  `users_id` int unsigned NOT NULL,
  `communities_id` int unsigned DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1_idx` (`users_id`),
  KEY `fk_posts_communities1_idx` (`communities_id`),
  KEY `fk_posts_media1_idx` (`media_id`),
  KEY `fk_posts_posts1_idx` (`post_id`),
  CONSTRAINT `fk_posts_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_posts_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_posts_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,NULL,7,1,'Beatae quia iste voluptates fuga in.',NULL,'2007-12-27 10:43:39'),(2,NULL,85,9,'Eius modi explicabo id ut a quam quia.',NULL,'1977-02-03 20:04:52'),(3,NULL,93,NULL,'Consequatur eaque labore maiores expedita consequatur error architecto.',65,'1970-10-07 00:53:43'),(4,NULL,94,3,'Recusandae earum impedit velit non suscipit recusandae excepturi ea.',NULL,'2004-12-11 15:49:32'),(5,NULL,87,4,'Laboriosam dolorum culpa nobis est a in nobis.',NULL,'1996-06-27 21:05:59'),(6,NULL,72,NULL,'Eos laboriosam ea quod autem est.',41,'1976-01-14 21:44:39'),(7,NULL,74,3,'Ipsa velit maiores cupiditate dolorem quam rerum autem.',NULL,'1981-07-24 02:52:48'),(8,NULL,94,7,'Sint eius odio tenetur possimus similique.',NULL,'1991-02-07 07:06:28'),(9,NULL,4,NULL,'Doloribus voluptatem sint sunt omnis et libero.',5,'2014-04-19 17:21:22'),(10,NULL,23,9,'Maiores iure voluptate laborum amet vel et.',NULL,'2006-08-26 00:26:05'),(11,NULL,45,10,'Quas eligendi excepturi illum consectetur atque possimus dolore sit.',NULL,'1997-08-15 07:59:12'),(12,NULL,10,NULL,'Accusantium sed dignissimos sed dolor.',89,'2005-04-18 02:14:42'),(13,NULL,88,7,'Incidunt qui numquam cumque molestiae architecto eveniet.',NULL,'1982-07-18 13:35:59'),(14,NULL,52,7,'Dignissimos temporibus consequatur et atque dolores et.',NULL,'1972-08-31 04:11:44'),(15,NULL,73,NULL,'Hic quos rerum reprehenderit dicta est quis.',53,'1997-05-20 17:00:12'),(16,NULL,13,2,'Voluptates dolores ut iste accusamus quia.',NULL,'1972-11-28 19:51:34'),(17,NULL,53,10,'Minima sed tenetur magni et.',NULL,'2019-09-16 13:25:44'),(18,NULL,4,NULL,'Exercitationem repudiandae error ut quasi nostrum maxime.',94,'1983-02-01 19:41:15'),(19,NULL,1,9,'Ipsam adipisci harum voluptas ut.',NULL,'1983-05-06 20:14:54'),(20,NULL,6,2,'Tenetur voluptas vel ratione voluptatem aperiam.',NULL,'2009-08-25 19:11:42'),(21,NULL,4,NULL,'Et qui facere repudiandae ad animi nam architecto.',53,'1970-07-09 06:55:23'),(22,NULL,5,7,'Modi odio nisi autem nesciunt vel qui in.',NULL,'2012-07-07 12:28:35'),(23,NULL,93,6,'Sint explicabo provident ratione.',NULL,'1992-12-20 02:56:07'),(24,NULL,89,NULL,'Numquam reprehenderit nostrum doloremque vel reprehenderit earum deleniti.',56,'1991-05-15 19:54:40'),(25,NULL,10,8,'Debitis tempore consequatur commodi optio iure.',NULL,'1984-11-16 13:40:56'),(26,NULL,62,9,'Consequuntur sunt dolorum temporibus minus eligendi aut.',NULL,'2009-01-13 11:22:49'),(27,NULL,72,NULL,'Quisquam atque unde quisquam et explicabo dolores ab.',16,'2004-08-09 18:01:10'),(28,NULL,3,5,'Molestiae provident eaque nihil ea aspernatur facere nihil.',NULL,'1989-12-21 12:49:07'),(29,NULL,96,5,'Alias ipsa maiores quis asperiores harum repudiandae.',NULL,'1998-10-05 08:48:14'),(30,NULL,75,NULL,'Excepturi quod et blanditiis dolorem.',4,'1997-06-11 22:35:08'),(31,NULL,37,6,'Amet dolores nihil amet aut.',NULL,'1985-01-02 01:28:05'),(32,NULL,90,6,'Mollitia architecto et minima reprehenderit quaerat vero.',NULL,'1988-03-23 22:10:07'),(33,NULL,18,NULL,'Eos qui maiores ad.',79,'1991-06-10 07:48:05'),(34,NULL,12,4,'Explicabo eius nostrum cum.',NULL,'1992-11-10 21:39:11'),(35,NULL,68,5,'Molestiae est temporibus similique sunt ea.',NULL,'1993-01-04 14:52:17'),(36,NULL,72,NULL,'Quidem qui error harum pariatur nobis voluptatem molestiae.',48,'2018-08-19 22:24:32'),(37,NULL,95,9,'Dolor veniam sit necessitatibus omnis quae.',NULL,'1985-07-08 16:51:03'),(38,NULL,11,9,'Debitis deleniti quo veniam accusantium quis.',NULL,'1992-02-13 17:21:40'),(39,NULL,13,NULL,'Beatae dicta est molestiae voluptas sit.',79,'1996-02-19 01:33:32'),(40,NULL,5,6,'Praesentium nesciunt ducimus atque.',NULL,'2005-06-30 19:12:35'),(41,NULL,9,10,'Amet autem dolorem est totam debitis.',NULL,'1972-07-02 18:18:02'),(42,NULL,69,NULL,'Architecto ea corrupti modi assumenda qui velit voluptate ut.',41,'2013-01-10 01:30:49'),(43,NULL,94,10,'Nam aliquam pariatur optio aut laboriosam.',NULL,'1996-10-09 22:24:53'),(44,NULL,73,1,'Harum qui minima explicabo.',NULL,'1997-05-30 06:50:27'),(45,NULL,56,NULL,'Eos sit dolore dolorem suscipit rerum aperiam.',79,'2018-11-07 04:11:23'),(46,NULL,15,5,'Tempore qui ut ut illo a et mollitia.',NULL,'1979-02-05 21:51:50'),(47,NULL,63,5,'Enim velit et maiores maiores similique.',NULL,'2016-04-23 06:25:38'),(48,NULL,51,NULL,'Voluptas sint iure nobis soluta vel modi.',56,'1995-12-18 18:12:00'),(49,NULL,84,7,'Autem sunt atque qui.',NULL,'1983-03-27 10:46:54'),(50,NULL,62,8,'Omnis sint enim nihil sequi eum dolores.',NULL,'2008-09-01 11:00:35'),(51,NULL,91,NULL,'Velit et dignissimos soluta.',82,'2013-09-28 09:20:32'),(52,NULL,73,5,'Odio enim ratione aliquam vero.',NULL,'2018-07-18 09:44:31'),(53,NULL,14,5,'Esse fuga consequuntur non itaque.',NULL,'2014-06-19 06:44:12'),(54,NULL,5,NULL,'Adipisci laudantium fuga ut autem consequuntur consequatur natus ab.',70,'1988-09-21 13:03:40'),(55,NULL,35,7,'Ut aperiam quia accusantium quis aliquid.',NULL,'2007-11-12 13:05:44'),(56,NULL,14,9,'Nihil vel ut expedita quibusdam sit.',NULL,'1975-10-30 01:41:45'),(57,NULL,3,NULL,'Modi aspernatur aliquam repellat repudiandae fugit assumenda consequatur.',41,'1971-08-13 00:50:24'),(58,NULL,74,10,'Qui sapiente aspernatur expedita accusantium et ducimus vitae.',NULL,'2007-10-07 06:46:34'),(59,NULL,30,8,'Placeat doloribus molestiae voluptatem voluptatum est.',NULL,'2007-12-05 07:38:03'),(60,NULL,66,NULL,'Eum non odit possimus fugiat incidunt qui et in.',32,'2004-07-28 03:01:21'),(61,NULL,56,4,'Deserunt et neque voluptatem quia quia voluptatem.',NULL,'1981-04-04 06:02:33'),(62,NULL,38,1,'Nostrum aut qui quibusdam corporis.',NULL,'1973-10-13 05:49:57'),(63,NULL,100,NULL,'Corrupti repellat ut veniam tempora qui quibusdam.',100,'1978-06-22 11:02:45'),(64,NULL,60,3,'Nemo quam incidunt consequatur necessitatibus.',NULL,'1987-11-19 05:28:27'),(65,NULL,30,6,'Voluptatum inventore et voluptas quasi dolores.',NULL,'2019-12-16 13:23:57'),(66,NULL,78,NULL,'Illum non minus voluptatem voluptatibus.',66,'2014-08-11 10:03:05'),(67,NULL,74,8,'Quod quia ut impedit enim.',NULL,'2018-04-29 11:13:06'),(68,NULL,14,5,'Molestiae nulla temporibus quis culpa.',NULL,'2019-08-03 10:48:33'),(69,NULL,8,NULL,'Aut autem et sed nemo temporibus architecto.',87,'2017-10-10 20:02:11'),(70,NULL,69,5,'In fuga dolorum veritatis ab mollitia quae.',NULL,'1997-01-26 12:54:41'),(71,NULL,1,10,'Minima rerum nesciunt et earum exercitationem enim dolore.',NULL,'2001-10-01 10:51:33'),(72,NULL,11,NULL,'Esse quia voluptatem non et perferendis et.',65,'1995-04-02 04:04:36'),(73,NULL,70,4,'Magnam sint deserunt exercitationem soluta.',NULL,'2016-11-29 17:04:41'),(74,NULL,69,10,'Consequatur non quibusdam eum beatae id commodi.',NULL,'1998-12-29 22:10:57'),(75,NULL,83,NULL,'Rem similique distinctio consequatur quis.',61,'2020-03-10 19:40:38'),(76,NULL,66,1,'Nobis ut dolor quia quaerat.',NULL,'1986-09-30 00:01:27'),(77,NULL,31,8,'Vero labore corrupti dolores possimus eum ipsam.',NULL,'2009-01-11 06:50:17'),(78,NULL,42,NULL,'Aut aliquid voluptatem praesentium nesciunt molestias ad ea.',51,'2011-10-09 00:01:14'),(79,NULL,49,10,'Laboriosam rerum quis et praesentium voluptate consequuntur voluptatem.',NULL,'1987-08-01 17:57:05'),(80,NULL,36,7,'Dicta dolorem iste quo nesciunt ipsa sed.',NULL,'2005-11-17 14:30:41'),(81,NULL,64,NULL,'Non nihil aspernatur aliquam minima impedit.',68,'1976-10-07 19:14:07'),(82,NULL,24,8,'Omnis magnam est harum ut asperiores autem.',NULL,'2017-12-07 22:38:45'),(83,NULL,89,5,'Saepe incidunt exercitationem et porro adipisci consequatur tenetur.',NULL,'2008-12-19 04:57:16'),(84,NULL,70,NULL,'Quo corporis quis totam qui illum ut.',33,'2007-01-19 20:36:44'),(85,NULL,74,10,'Sapiente voluptatibus praesentium in explicabo.',NULL,'1992-12-21 04:39:34'),(86,NULL,35,7,'Quibusdam perferendis commodi aliquid quaerat qui.',NULL,'2013-08-27 21:28:58'),(87,NULL,66,NULL,'Quas quam possimus et qui sint animi.',33,'1991-06-04 20:38:13'),(88,NULL,70,4,'Explicabo voluptatibus commodi blanditiis cum ea incidunt quidem.',NULL,'1972-08-25 07:38:48'),(89,NULL,21,9,'Saepe iusto ut sint dolores voluptatem cumque.',NULL,'2015-09-27 22:55:23'),(90,NULL,48,NULL,'Facilis blanditiis voluptas impedit.',83,'1999-10-01 17:53:02'),(91,NULL,17,9,'Debitis occaecati minus illo dolor consequatur ipsa.',NULL,'1972-08-15 02:44:56'),(92,NULL,85,1,'Ut laboriosam saepe voluptatem.',NULL,'1986-07-16 07:34:18'),(93,NULL,88,NULL,'Illum sapiente nemo quod aspernatur.',68,'1971-04-10 00:49:59'),(94,NULL,26,7,'Sint sit vitae officia alias.',NULL,'2000-07-12 00:57:46'),(95,NULL,58,4,'Eligendi sunt voluptate iure ut sed et numquam eum.',NULL,'1974-11-24 22:01:46'),(96,NULL,15,NULL,'Exercitationem amet nam natus reiciendis.',40,'2014-05-26 03:45:09'),(97,NULL,73,4,'Dolor quam natus assumenda cumque distinctio laborum et.',NULL,'1970-10-03 09:47:09'),(98,NULL,6,1,'Corrupti mollitia at molestiae animi.',NULL,'1983-03-10 18:57:27'),(99,NULL,28,NULL,'Omnis sit cupiditate pariatur sapiente minus vel amet.',50,'1992-03-14 07:43:07'),(100,NULL,45,8,'Dolor inventore et soluta et sint optio.',NULL,'2017-06-25 14:02:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `firstname` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_users_idx` (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Tanya','Rutherford','f','2007-01-27','1758 Loyce Pine Suite 289','2015-05-27 11:28:32',40),(2,'Lilyan','O\'Kon','f','1978-12-20','864 Alisha Harbor Suite 313','1999-01-09 09:49:43',55),(3,'Ibrahim','Buckridge','m','1991-05-22','27634 Nolan Ridge Apt. 906','1978-08-25 02:09:23',40),(4,'Tito','Donnelly','f','2009-08-08','45548 Reinger Islands Suite 807','2012-10-26 18:39:30',53),(5,'Keegan','Parker','f','1999-02-03','32160 Carmel Row','2009-10-31 23:52:32',75),(6,'Eusebio','Miller','f','1986-04-09','52495 June Radial Apt. 820','1976-09-11 05:35:06',75),(7,'Erna','Ankunding','f','1998-01-28','8775 Carlotta Squares Apt. 359','1983-04-18 01:25:25',95),(8,'Jade','Kertzmann','m','1992-12-12','837 Franecki Flats','1986-12-25 13:03:29',40),(9,'Stephania','Stokes','f','2013-10-06','046 Adrian Prairie','1979-12-31 17:40:21',60),(10,'Aryanna','Brakus','m','2007-10-24','10265 Abernathy Ramp Suite 839','2011-08-16 01:40:42',89),(11,'Katelyn','Sipes','m','1988-01-09','4621 Kyla Trafficway Apt. 182','1983-02-19 07:27:47',5),(12,'Keira','O\'Kon','f','1970-05-27','035 Koelpin Cliff','2004-03-10 19:01:03',59),(13,'Susie','Price','f','2006-05-25','03249 Foster Spring','2017-04-13 14:13:10',67),(14,'Julia','Stanton','m','2013-06-18','27886 Albertha View','1982-09-24 03:17:36',11),(15,'Nicola','Kirlin','m','2004-03-19','228 Dave Prairie','2013-10-24 11:21:32',56),(16,'Leda','Goyette','f','1973-05-21','2063 Norris Views Suite 642','1984-11-23 09:29:46',37),(17,'Xavier','Ruecker','f','2012-05-01','51639 Beth Locks Apt. 439','2018-05-19 03:02:21',97),(18,'Daryl','Cronin','f','2018-02-28','1481 Braden Parkway Suite 849','1989-04-18 16:21:14',2),(19,'Lorna','Welch','m','2005-01-21','1000 Feil Point','1974-01-28 15:57:41',97),(20,'Leonor','Gleason','f','2000-01-21','0730 Quigley Inlet Apt. 485','2013-01-27 03:38:49',56),(21,'Calista','Jaskolski','f','1975-08-16','220 Yost Plaza','2018-02-21 16:18:56',66),(22,'Santino','Veum','f','2002-03-25','737 Witting Flat Apt. 833','1986-11-23 20:20:10',44),(23,'Ford','Haag','f','2001-07-09','2730 Frami Loaf','2020-09-29 05:08:34',84),(24,'Queen','King','f','1988-10-28','5578 Johann Plain Suite 724','1983-01-02 22:25:56',44),(25,'Eugenia','Cummings','f','2016-04-17','8539 Loy Fields Apt. 110','1971-09-16 01:41:17',54),(26,'Sheridan','Corkery','m','2010-03-19','0341 Medhurst Flats','1988-06-15 09:24:01',30),(27,'Archibald','Stark','m','1979-06-24','3371 Kling Divide','1998-12-04 07:44:56',8),(28,'Kaleb','Powlowski','f','1978-11-13','877 Rowe Crest','2020-01-22 16:44:43',34),(29,'Rebeca','Goyette','m','1984-02-05','5579 Lance Land Apt. 337','2020-02-11 02:25:38',38),(30,'Colt','Jenkins','m','1981-12-03','7645 Leanna Drive Suite 127','2004-06-17 18:45:46',44),(31,'Travis','Walsh','f','1974-12-03','525 Rohan Cliff','2020-09-03 15:40:56',39),(32,'Tobin','Crist','f','1978-09-29','570 Aliza Locks Apt. 249','1995-10-12 18:24:37',78),(33,'Tania','Predovic','f','1990-12-17','59169 Tyson Camp','2006-11-14 10:54:11',99),(34,'Franz','Klocko','m','2016-10-07','7897 Sterling Trace Apt. 587','1994-03-01 02:58:31',79),(35,'Ezekiel','Emmerich','f','1978-09-10','729 Aaron Forks Apt. 874','1992-10-07 17:25:19',31),(36,'Willis','Cummerata','f','2001-01-07','4619 Jany Trafficway Suite 770','2005-09-11 17:30:00',73),(37,'Melisa','Schamberger','m','1994-10-09','9142 Stehr Squares Suite 263','1974-11-12 01:11:15',53),(38,'Madaline','Heaney','f','1995-07-28','0377 Emmerich Ports Suite 918','1995-10-20 04:10:03',26),(39,'Willow','Gulgowski','m','2009-10-21','839 Ebony Plains Apt. 802','2017-03-30 20:58:07',12),(40,'Frida','Hilll','f','1994-07-04','598 Maxime Pike','2013-12-10 15:58:37',12),(41,'Rigoberto','Dickinson','m','2003-11-02','1634 Mustafa Cliff','1972-06-18 22:30:45',14),(42,'Alia','Hirthe','m','1973-05-29','0380 Jerde Coves','1975-03-30 22:17:52',16),(43,'Cora','Effertz','m','1975-05-16','1874 Alison Stream Suite 841','1976-08-17 09:43:38',71),(44,'Arden','Smith','m','2008-04-01','445 Kimberly Station','1993-02-11 11:36:05',81),(45,'Casandra','Stokes','m','2013-01-05','7076 Nyah Lodge','1993-11-03 17:01:10',27),(46,'Annabelle','Wehner','m','1990-09-14','95772 Martin Springs','2005-05-27 23:21:31',27),(47,'Morris','Hodkiewicz','m','2019-01-08','1050 Ronaldo Ranch Apt. 084','2016-12-03 06:14:50',17),(48,'Sandra','Bode','f','1998-06-23','6388 Price Club','1995-06-21 13:15:37',24),(49,'Jaqueline','Wisozk','f','1978-10-05','4635 VonRueden Harbors','2010-10-06 15:02:32',29),(50,'Terence','Wehner','m','1972-03-09','664 Mills Burg','1997-12-04 22:26:50',13),(51,'Hosea','Huels','m','1988-01-30','655 Jarrell Plain','2011-07-07 03:11:52',79),(52,'Sallie','Stiedemann','f','1990-01-29','6335 Goodwin Pass Apt. 082','1975-01-09 00:01:54',94),(53,'Aurelia','Paucek','f','1984-04-14','8107 Keegan Terrace Apt. 643','2012-10-23 14:25:03',57),(54,'Dax','Herzog','m','2014-09-28','28284 Willie Inlet','1996-06-26 13:05:33',63),(55,'Bette','Nader','m','2006-11-05','4655 Allen Estates Suite 456','1994-02-04 08:15:02',38),(56,'Hershel','Johns','m','1982-07-03','7810 Kassulke Points','1972-09-18 18:35:44',11),(57,'Norma','Hilpert','m','2001-04-10','88923 Becker Ridge Apt. 386','2001-07-21 07:03:49',93),(58,'Ashtyn','Brown','f','1984-04-19','19192 Palma Ranch Apt. 294','2012-07-12 05:06:20',46),(59,'Joey','Homenick','f','1997-06-13','30904 Boyer Cape Suite 613','1987-12-26 18:13:33',45),(60,'Alysson','Hagenes','f','2007-04-06','1369 Lubowitz River Apt. 912','2006-04-21 20:30:28',30),(61,'Norene','Thompson','m','2013-09-27','2136 Shields Brook Apt. 599','1979-07-02 01:22:22',89),(62,'Hillard','VonRueden','f','1977-09-29','0120 Gregory Walk Suite 232','1998-04-16 17:15:59',84),(63,'Mayra','Johns','f','1971-08-09','8086 Nicolas Hill','1970-01-07 11:39:54',8),(64,'Martin','Mertz','f','1982-10-29','976 Stamm Island Suite 898','1986-12-13 06:49:38',87),(65,'Josianne','Boyer','f','2008-04-08','17171 Tyree Springs','1984-01-15 01:38:19',62),(66,'Filiberto','Waters','f','1992-06-07','3954 Conroy Course Suite 122','1992-10-26 05:35:34',38),(67,'Janie','Gusikowski','m','1970-11-08','0968 Betsy Plaza','1995-10-06 06:34:42',60),(68,'Reyes','Daniel','f','2014-03-03','486 Lindgren Cove','1980-08-17 19:14:43',15),(69,'Constantin','Streich','m','1976-12-28','767 Scottie Shoals','2004-12-22 00:26:23',63),(70,'Roel','O\'Connell','m','1980-02-16','06088 Karen Wall','2000-07-21 23:57:20',71),(71,'Katelynn','Murray','m','2014-11-01','3530 Hills Well Apt. 801','1996-07-11 21:40:47',27),(72,'Joan','Mraz','f','1970-07-21','394 Bednar Unions','2010-03-28 15:32:48',77),(73,'Landen','Ruecker','f','2012-09-23','3897 Yost Vista','2001-12-28 23:10:29',87),(74,'Thelma','Zboncak','m','1970-11-17','33517 Pierce Drives Suite 137','2006-06-19 18:13:35',98),(75,'Esther','Friesen','m','1994-09-15','23473 Zemlak Port','2014-09-21 09:18:57',57),(76,'Jarrell','Flatley','m','2004-10-25','226 Parker Cliffs Suite 070','1987-01-12 10:03:54',14),(77,'Raymond','Koelpin','f','1971-10-06','141 Schiller Shoal','2004-01-06 11:11:03',24),(78,'Renee','Parker','f','1982-07-28','6762 Smith Falls','1995-05-22 02:10:09',74),(79,'Murl','Jacobson','m','2011-06-25','00808 Zion Shores','1998-08-02 15:32:23',37),(80,'Ashton','Quigley','m','2003-05-20','932 Alisa Expressway','1970-11-14 09:56:26',52),(81,'Cortney','D\'Amore','m','2020-10-14','32209 Lilian Underpass','1986-02-21 02:43:50',87),(82,'Bert','Toy','m','1992-02-14','06088 Connie Vista','2000-10-29 19:36:24',16),(83,'Estell','Borer','f','2006-10-10','236 Balistreri Common Suite 182','2000-02-18 17:18:01',46),(84,'Kiley','Romaguera','f','1994-06-28','60422 Nasir Springs','1971-05-09 07:04:48',43),(85,'Mariano','Cole','m','2017-06-12','8345 Kling Falls','2006-02-10 09:26:14',78),(86,'Carlo','Reynolds','f','1995-06-18','7277 Stiedemann Dale','1990-12-22 23:03:46',84),(87,'Alba','Sauer','f','2001-11-25','0132 Moore Crossing','1981-03-17 15:05:54',54),(88,'Justyn','Mayer','m','2020-01-13','698 Mohr Club Suite 080','2020-04-14 07:48:53',70),(89,'Blake','Leuschke','m','1990-11-04','8977 Roob Ville','1997-10-25 15:02:24',29),(90,'Samson','Koch','f','2014-06-16','2677 Aletha Meadow','2001-10-30 20:15:31',98),(91,'Karley','Cole','m','1995-06-22','16089 Bradly Drives','1991-12-01 22:12:34',100),(92,'Orlando','Waelchi','f','1988-05-29','07221 Goyette Cove','1992-09-26 10:52:42',18),(93,'Trudie','Macejkovic','f','1972-01-12','042 Kiana Track','1984-08-05 22:08:33',81),(94,'Araceli','Nicolas','m','1998-03-14','43146 Rowe Ranch','2015-10-20 05:29:37',7),(95,'Orion','Mertz','f','1994-01-01','0838 Victor Hill Apt. 105','2015-04-05 13:10:30',5),(96,'Summer','Jast','m','1978-03-11','1095 Mertie Centers Suite 110','1993-08-30 14:24:28',43),(97,'Brielle','Hane','m','1982-03-16','94702 Reichert Ways','2000-12-09 21:00:45',45),(98,'Toney','Hintz','m','1994-07-09','9927 Wilhelm Islands Apt. 076','1977-02-10 19:15:07',64),(99,'Herbert','Wisoky','f','1980-03-30','7874 Medhurst Rue','2020-04-27 01:15:38',57),(100,'Isabelle','Cruickshank','m','1984-07-30','77289 Batz Village Apt. 067','2011-06-15 06:29:02',8);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'o\'kon.katelynn@example.org',79772204694,'ea2521c59a04b46ff12e0c907b4b276f19b67ba5'),(2,'ywalker@example.org',79277507228,'2d66a42f9e426404f0855a1379443be3aaa3ad67'),(3,'xvandervort@example.com',79420768473,'0efc5f4f26c39ca778a9159311ef43fe241f2d82'),(4,'critchie@example.net',79707708416,'d3fa22bcfd67a3009c3bd6add90ab29087ab3a5b'),(5,'mitchell.brandy@example.net',79127163771,'fd17c64544ce905a80afb88d4103408fc62bd337'),(6,'kennedy20@example.net',79420232243,'425bbdd4c1a83a42c8ea2a288e94fa17c4c1e39b'),(7,'collins.titus@example.net',79214459802,'6f2be9a8b94aa20223ec78797720c0f86f2911ce'),(8,'dicki.vicky@example.net',79793278419,'be83dd04500469e411575b48f286105883935c6b'),(9,'ebauch@example.org',79778061870,'9ef080f7564d5e99f77c77473b03586f3331fbf6'),(10,'sparker@example.com',79497441217,'7f8611eb3d44fc68e17273701e3ac964f45accf0'),(11,'witting.anabel@example.net',79342510822,'441e763b8c389bcec2a301dceb33ef196acd5426'),(12,'swest@example.com',79513849512,'d4cac57719b6c995e7dba5facd23985d2704b612'),(13,'smitham.aimee@example.net',79491692191,'8fdbd8a993c26ef4ece50dcf9338df5e4f199459'),(14,'ogulgowski@example.net',79285466860,'7d35949e04977fdb38bb0a5650db95a6fe075645'),(15,'titus.dickinson@example.com',79988171210,'8f644a7753520f71a5ff7fe700ab292691edb315'),(16,'xfisher@example.com',79379899422,'f7d4822eb81f503db1d6a58106189d9abac96b70'),(17,'reichert.marian@example.net',79928439990,'60e3b1f8a687c86913ad14925b9ffe32a45f65a6'),(18,'lera.hilll@example.net',79207771164,'5a69e882eed228c9ff7112104b414098e9f6b681'),(19,'rickie.bogan@example.net',79344015133,'a536d14509bad1ff4c722f361483a5175183befb'),(20,'fred.johnson@example.org',79048084190,'b65e58d0500b7a4096d3687b44b6aad75e6c63fc'),(21,'donato63@example.org',79370748981,'bc8b6f1147bd14947c7603145c31efde906a1f5e'),(22,'assunta.murray@example.com',79559844640,'0a7ab5ca1719e200790d228bb63e173c889305e5'),(23,'sim.marquardt@example.com',79617165622,'cf22dcda4b8887f1e41156fc6d26b12815fe8b3a'),(24,'kuhn.santino@example.org',79998223089,'49a2d454f454604feef25cb383ed68f9294dfae0'),(25,'smitham.ari@example.com',79035786435,'66322eb00083a92e82d18190e2343f3f579e1cdf'),(26,'brown.o\'hara@example.org',79816459770,'d377a81640339fd9ad721769b717615dd75fe7f3'),(27,'brycen.wisozk@example.com',79506503530,'3808bc8eeb067a643405bd5af3b3a93ad975a05f'),(28,'glover.silas@example.net',79121213221,'cc9a73c48d074abe254291b239fbe0d11ba1f492'),(29,'armstrong.lula@example.net',79629373101,'b7e15a432c44d0485611b3ee4150e60b77b2c096'),(30,'juliet97@example.net',79021506439,'d4742e4f9d7367d8d7e0bb984f7a50df0b00c620'),(31,'wrath@example.org',79029722207,'84d89506d4392066f673df001f6b2b6fa6b97a9f'),(32,'zoe.zboncak@example.org',79732407098,'9612962361d2c66468726e75eec20771b3ed482b'),(33,'amills@example.com',79702357083,'a95090196f952563734b5c3d566012860f1873d8'),(34,'mcole@example.com',79785505241,'e1d82a2a8db2ca302ece0aac64a13c24ca763dee'),(35,'clotilde96@example.org',79583922815,'cd1aae81b306d8240b3a0de1a48a12339e1802b5'),(36,'salvador.schaefer@example.com',79368779689,'b6342b0b83d6cca9748cd016eb80d0ee15c12fee'),(37,'bert.borer@example.net',79663309577,'fda9099b5bdcb2a01868075a41cd3bdc4751a817'),(38,'burdette33@example.com',79875939896,'c895d3a543a1cba81edbbd426e7f02fa802b5ebb'),(39,'harber.dandre@example.com',79228928493,'6d0c180bb4fb77dc760454487e4679f7dc156324'),(40,'kihn.johanna@example.org',79146508728,'b6919d8bab08c225df54491c71f1b0e68700e5ea'),(41,'angeline.wisozk@example.net',79739626911,'4b06e6b389e3997c4039ec004e7279d5e8bb1b61'),(42,'o\'connell.pierce@example.org',79955784668,'139fa33f3fd0e9f11cfbc17a158d35e5a816168a'),(43,'odickinson@example.net',79618071616,'40fe959f97520787469abf893071a6d8d43b2d82'),(44,'parker.vernon@example.org',79189278826,'bb8aed9ceea95acd2683d2ab2fe1b98f345a3b52'),(45,'chloe58@example.org',79834092312,'3ac13979f6c50a3a6d0a7b7676fba2327d824854'),(46,'brandy.smith@example.org',79553739037,'5031cb0740902f0ebaa68220606def75f61b299e'),(47,'jacobs.roderick@example.org',79564891145,'0f8e0fdf0777523ca98d0855a3a0c874e4191138'),(48,'ortiz.estella@example.org',79601991791,'9dd43b6423eb47c047ecd8afa271ac915362f38e'),(49,'feil.fredrick@example.com',79527327600,'7c6a9b4e55bca1fd4df2dfec48865cbc7343e926'),(50,'rrodriguez@example.net',79735740987,'bb1a8b693e36e150f01840185d6d998c43d99edc'),(51,'edison.pfannerstill@example.org',79451150103,'cac59c1bd24706ee7ae6c3420deba227a56a3444'),(52,'elyse71@example.org',79286017959,'78f9156ea557c91f2e521b76df5a5782dfec6e60'),(53,'schneider.viola@example.com',79968845047,'807423e591cbedd3eebd8fc6721e27f376fa4771'),(54,'gilbert09@example.net',79776145759,'c2deccaf64ddadf150d588929361e73a16b8ceb2'),(55,'shanelle.kiehn@example.com',79216863157,'185f05f19ec3b89b12ed69e0193b8af7a6cab3b1'),(56,'jhamill@example.net',79293328618,'509c657802eee037dcf2723dd2fe8de9e2a2aa82'),(57,'sally49@example.net',79022654981,'de4b04052e4c97089c3d8098f7290da4a28e290c'),(58,'ztillman@example.com',79831164696,'8ab4bd9f402588ad887708108aabc3ca3c52f813'),(59,'bkerluke@example.net',79462964653,'cd41a80ddf7e2de52827a94daaef04bed9bf9986'),(60,'salma27@example.net',79493543283,'51808511797ceadefc63d0af6a86caf66c52d763'),(61,'luther43@example.net',79194101948,'b4e1cd1f6587deef4048cf4598f6c24039b96a5c'),(62,'frank.hermiston@example.com',79067104845,'e9cfaf3ddd1ed0b5d6e8273e0eedc9aa07919907'),(63,'stanton.kobe@example.com',79746376008,'9a4486f629e5fd346fc504b07a0131877f4248e8'),(64,'doyle.samara@example.net',79142950223,'a88257026cfd297d652f1566cdc880344dc06fa0'),(65,'retta.prohaska@example.net',79053255988,'e2db362324fcf92a2d7e47d12680893e1ae76b23'),(66,'adell41@example.org',79296453527,'e4faa16d2354b234dff4b0445f630367dd856c01'),(67,'dach.stephanie@example.org',79862604254,'8684e731018deb995ed00004dc789c23f97a4c8e'),(68,'ned.lesch@example.com',79654395166,'491fb928547e14c966ef6d7066348240324b3801'),(69,'alvera.armstrong@example.com',79985188878,'f9d0a0883e7a3acb5ef73ef03509e9c37e7a9013'),(70,'lorenza.dietrich@example.net',79119415891,'cb3daff43e6a9afea8a6d2eb1fc6de46a9294b9f'),(71,'emmett.auer@example.com',79422357360,'b9d3c3b8c6d1d30f8c3352c057bd6f7133180dc9'),(72,'ppowlowski@example.org',79556774114,'3f8fd9cd8f9e724d3a705071a7fdb006014027bb'),(73,'dickens.savanah@example.com',79971862072,'6ad46836d46258c924bffe3129d1d5b0fc7c04c1'),(74,'kozey.alvina@example.org',79699480175,'ed42f007bc018d9ea7129e7a6e5f400eb2716cf9'),(75,'rmonahan@example.com',79705280053,'99cac5eeffe575b8f5d59d6910ecefc2b73cf681'),(76,'wilhelm.bogisich@example.net',79645201425,'5f61ea6bd9fcda258b29c039deb872a36c94cc87'),(77,'simone.lesch@example.com',79048635850,'8284cdfc89ba2740d08a25b819482c856c1bbc18'),(78,'adolf55@example.net',79184664011,'67da8f9d76dc049f0d7a5990154d61d8fb127f16'),(79,'hillary09@example.net',79116535417,'e0f253c26fa4eac2a50197ab0ceac2331807c7ec'),(80,'dortha.graham@example.org',79513986096,'d2dfc419bb91c92a5d9efb291bd53b42875137ca'),(81,'cathy.rohan@example.com',79138509788,'0bbc8f62313cab1509d5a440e25aec11f09e2d77'),(82,'eichmann.ralph@example.org',79617200000,'f4ed103757e12475154bbb081ee13aba0ed93f1b'),(83,'jbalistreri@example.com',79255318408,'1c19c610967cb0bcb8455e83378dd9862e5a5b85'),(84,'mlangosh@example.org',79126538738,'2e60f0ca6bf784830cae1c6f61445e83f897d92a'),(85,'berry.medhurst@example.com',79937571559,'c9558c34402e6a37baf098c9d256fb83122ee542'),(86,'farrell.naomi@example.com',79411879364,'052c7488faf0cf2b70701c95a3e49e16bf1c40fb'),(87,'bayer.teagan@example.net',79444103671,'bf17f80b89af092f72ea33c7ee485fbb9a9e722a'),(88,'breitenberg.rocio@example.com',79145948118,'01f3bd7c94ae6b8109a0abbea213843dfc4f1229'),(89,'kian.renner@example.com',79021339593,'267392b57111d47606881373ae229243ccc2ae6d'),(90,'nwiegand@example.net',79193435758,'23d1801f6d8f3826186178482c9bd8ab0c6d2047'),(91,'vhuel@example.org',79800777522,'01718014ef92afee985655d5a77d9ce0e40210ce'),(92,'bbashirian@example.org',79522412606,'9d319c73cb9d0f559a78d54c9b3954c4e026a38e'),(93,'delores19@example.net',79183031809,'cabd19aa15efb0817774b74d578e66b26e8de009'),(94,'akeeling@example.com',79525347480,'7394a070b2791c880f053f4aff46da2e72ea2511'),(95,'tad.cole@example.com',79347014752,'954e8ddc346e098128fbccba519d44970e39e85b'),(96,'ewuckert@example.net',79640146526,'ee3be0b68d838e1eedea3f216ffb10a859c441a7'),(97,'fay.jett@example.com',79329946847,'b3eef5874809d86493b8604cded67e19ae509ab7'),(98,'anicolas@example.org',79757657961,'0f824dc468deda9a7a232cb64767380faf265f6e'),(99,'ashly15@example.net',79459798680,'fe76a11b97f2147090a203cec78e3d8619926b01'),(100,'vwalker@example.org',79447206163,'daba262633ea90cf2f0a2fdb3db1cad0f37cb09c');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communities` (
  `communities_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  PRIMARY KEY (`communities_id`,`users_id`),
  KEY `fk_users_communities_communities1_idx` (`communities_id`),
  KEY `fk_users_communities_users1_idx` (`users_id`),
  CONSTRAINT `fk_users_communities_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_users_communities_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,1),(1,3),(1,12),(1,14),(1,53),(1,64),(1,81),(1,100),(2,3),(2,31),(2,53),(2,57),(2,66),(2,70),(2,81),(2,100),(3,4),(3,8),(3,30),(3,31),(3,35),(3,58),(3,62),(3,65),(3,75),(3,77),(3,87),(3,94),(4,5),(4,15),(4,20),(4,22),(4,26),(4,27),(4,39),(4,41),(4,52),(4,57),(4,62),(4,65),(4,82),(4,98),(4,99),(5,3),(5,16),(5,35),(5,43),(5,49),(5,51),(5,53),(5,64),(6,10),(6,24),(6,32),(6,33),(6,47),(6,52),(6,55),(6,73),(6,88),(6,96),(7,8),(7,12),(7,50),(7,51),(7,58),(7,67),(7,73),(7,87),(7,94),(7,99),(8,8),(8,10),(8,25),(8,46),(8,57),(8,65),(8,86),(8,91),(8,100),(9,59),(9,62),(9,63),(9,66),(9,70),(9,97),(10,4),(10,9),(10,24),(10,28),(10,30),(10,31),(10,65),(10,72),(10,87);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 16:59:09
