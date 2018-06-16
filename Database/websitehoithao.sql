CREATE DATABASE  IF NOT EXISTS `websitehoithao` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `websitehoithao`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 35.198.251.138    Database: websitehoithao
-- ------------------------------------------------------
-- Server version	5.7.14-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='f79ece29-6d56-11e8-807b-42010a940011:1-405623';

--
-- Table structure for table `post1`
--

DROP TABLE IF EXISTS `post1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post1` (
  `Pid` int(11) NOT NULL AUTO_INCREMENT,
  `PostName` varchar(100) NOT NULL,
  `PostContent` varchar(20001) NOT NULL,
  `Ptl` varchar(15) DEFAULT NULL,
  `Pdate` date NOT NULL,
  `P` varchar(10) DEFAULT NULL,
  `P1` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post1`
--

LOCK TABLES `post1` WRITE;
/*!40000 ALTER TABLE `post1` DISABLE KEYS */;
INSERT INTO `post1` VALUES (12,'Việt Nam đã đón gần 140 lượt máy bay dự hội nghị APEC','Tính đến chiều 7/11, 3 sân bay Đà','công nghệ','2017-12-27','Duyet',1),(13,'Chiều 7/11, trao đổi với Zing.vn','ông Võ Huy Cường, Cục','Giáo Dục','2017-12-27','Duyet',1),(14,'Chúng tôi vẫn chưa thể thông tin chính xác','Chúng tôi vẫn chưa thể thông tin chính xác','Công Nghệ','2017-12-27','Duyet',1),(15,'Chúng tôi vẫn chưa thể thông tin chính xác','Chúng tôi vẫn chưa thể thông tin chính xác','Giải Trí','2017-12-27','chua duyet',3),(16,'Chúng tôi vẫn chưa thể thông tin chính xác','Chúng tôi vẫn chưa thể thông tin chính xác','Giải Trí','2017-12-27','Tu choi',3),(17,'Chúng tôi vẫn chưa thể thông tin chính xác','Chúng tôi vẫn chưa thể thông tin chính xác','Công Nghệ','2017-12-27','Duyet',3),(56,'Bai viet tan cong XSS <script>prompt(\"vui long dang nhap lai\");</script>','Noi dung bai viet','CÃ´ng nghá»','2018-06-15','chua duyet',1);
/*!40000 ALTER TABLE `post1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `TopicID` int(11) NOT NULL AUTO_INCREMENT,
  `TopicName` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`TopicID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'Công Nghệ'),(2,'Cuộc Sống'),(3,'Giải Trí'),(4,'Giáo Dục'),(5,'Thế Giới');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeuser`
--

DROP TABLE IF EXISTS `typeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeuser` (
  `TypeUserID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeUserName` varchar(100) NOT NULL,
  PRIMARY KEY (`TypeUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeuser`
--

LOCK TABLES `typeuser` WRITE;
/*!40000 ALTER TABLE `typeuser` DISABLE KEYS */;
INSERT INTO `typeuser` VALUES (1,'Admin'),(2,'Editer'),(3,'Writer');
/*!40000 ALTER TABLE `typeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `UserPass` varchar(100) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL DEFAULT '1',
  `PhoneNumber` varchar(15) NOT NULL,
  `Quyen` varchar(15) DEFAULT NULL,
  `date` date NOT NULL,
  `MagagerID` int(11) DEFAULT NULL,
  `userscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ThienPhan','123456','Phan Minh Thiện','Nam','01697421797','Admin','1997-12-12',NULL,NULL),(2,'PhieuHuynh','123456','Trần Huỳnh Phiêu','Nữ','0989346582','Admin','1997-12-12',NULL,NULL),(4,'ThuyHuynh','123456','Huỳnh Thị Thuý','Nữ','0123 456 7890','Writer','1997-12-01',NULL,NULL),(5,'NghiaLam','123456','Lâm Thành Nghĩa','Nam','0169 742 1799','Writer','1997-12-02',NULL,NULL),(6,'HanhTran','123456','Trần Thị Thuý Hạnh','Nam','0122 436 7123','Writer','1997-12-02',NULL,NULL),(7,'TuanTran','123456','Trần Thanh Tuấn','Nam','0917 955 561','Writer','1997-12-12',NULL,NULL),(8,'TuVuong','123456','Vương Thanh Tú','Nữ','0165 367 3760','Reviewer','1997-12-12',NULL,NULL),(9,'KieuPham','123456','Phạm Vương Thanh Kiều','Nam','0939 123 789','Reviewer','1997-12-12',NULL,NULL),(12,'minhthong','zaqxsw12','Nguyen Minh Thong','Nam','','Admin','1997-01-08',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:21:40
