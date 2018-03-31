-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: board
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
  `bTitle` varchar(40) DEFAULT NULL,
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
INSERT INTO `mvc_board` VALUES (2,'김건','안녕','김건','2018-03-31 04:43:40',0),(5,'안녕','김건','김건','2018-03-31 04:50:04',2),(6,'김건입니다','내일 모레 학교에 갑니다.','김건','2018-03-31 04:50:36',0);
/*!40000 ALTER TABLE `mvc_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvc_user`
--

DROP TABLE IF EXISTS `mvc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mvc_user` (
  `uID` varchar(20) NOT NULL,
  `uPW` varchar(20) NOT NULL,
  `uName` varchar(45) NOT NULL,
  `uGender` varchar(45) NOT NULL,
  `uEmail` varchar(45) NOT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvc_user`
--

LOCK TABLES `mvc_user` WRITE;
/*!40000 ALTER TABLE `mvc_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvc_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-31 20:29:50
