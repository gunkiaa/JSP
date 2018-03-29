-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `mvc_board`
--

DROP TABLE IF EXISTS `mvc_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mvc_board` (
  `bId` int(4) NOT NULL,
  `bTitle` varchar(100) NOT NULL,
  `bContent` varchar(300) NOT NULL,
  `bName` varchar(20) NOT NULL,
  `bDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bHit` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvc_board`
--

LOCK TABLES `mvc_board` WRITE;
/*!40000 ALTER TABLE `mvc_board` DISABLE KEYS */;
INSERT INTO `mvc_board` VALUES (8,'kimg','gug','Kimgun','2018-03-20 00:35:42',15),(9,'ì??ë??í??ì?¸ì??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 03:37:16',2),(10,'ì??ë??í??ì?¸ì??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 07:36:01',1),(11,'ì??ë??í??ì?¸ì??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 07:37:26',1),(12,'ì??ë??í??ì?¸ì??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 07:41:29',1),(13,'ì??ë??','ì??ë??','Kimgun','2018-03-20 07:42:37',0),(14,'ì??ì?¸','ì??ì?¸','Kimgun','2018-03-20 07:44:33',2),(15,'ì??ë??','ì??ë??','Kimgun','2018-03-20 10:08:15',0),(20,'????','????','??','2018-03-20 10:17:34',1),(21,'안냐세요','안냐세요','김건','2018-03-20 10:18:58',2),(22,'????','????','??','2018-03-20 10:27:23',0),(23,'ewq','ewq','Kimgun','2018-03-20 14:51:24',1),(24,'ì??ë??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 15:51:09',0),(25,'ì??ë??í??ì?¸ì??','ê¹?ê±´ì??ë??ë?¤.','Kimgun','2018-03-20 15:57:00',1),(26,'Hello World','Kimgun ','Kimgun','2018-03-20 15:59:49',8);
/*!40000 ALTER TABLE `mvc_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 11:40:30
