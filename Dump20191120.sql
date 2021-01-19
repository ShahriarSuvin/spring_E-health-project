CREATE DATABASE  IF NOT EXISTS `ehealthcare` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ehealthcare`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: ehealthcare
-- ------------------------------------------------------
-- Server version	5.1.60-community

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
-- Table structure for table `addreceiptionist`
--

DROP TABLE IF EXISTS `addreceiptionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addreceiptionist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `phnNo` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addreceiptionist`
--

LOCK TABLES `addreceiptionist` WRITE;
/*!40000 ALTER TABLE `addreceiptionist` DISABLE KEYS */;
INSERT INTO `addreceiptionist` VALUES (1,'dhaka','rabiul.idb40@gmail.com','rabiul','dfd','123654','dfef','robi'),(7,'dhaka','rabiul.idb40@gmail.com','rabiul','dfd','123654','dfef','robi'),(8,'dhaka','rabiul.idb40@gmail.com','rabiul islam','dfd','123654','dfef','robi'),(9,'dhaka','rubayetislam7372@gmail.com','abdul alim','123654','12365489','basc','alim'),(10,'dhaka','rabiul.idb40@gmail.com','rabiul islam','123','123654','bsc','rabiul'),(11,'khulna','w3alim@gmail.com','abdul alim','123','12365489','msc','alim');
/*!40000 ALTER TABLE `addreceiptionist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorregistration`
--

DROP TABLE IF EXISTS `doctorregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorregistration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `demail` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `dpass` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `regiNo` varchar(255) DEFAULT NULL,
  `roomNo` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `visitHour` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorregistration`
--

LOCK TABLES `doctorregistration` WRITE;
/*!40000 ALTER TABLE `doctorregistration` DISABLE KEYS */;
INSERT INTO `doctorregistration` VALUES (4,'rabiul@gmail.com','Psycology','consultant','Rothi','123','1.jpg','MBBS, FCPS, FRCS','456789','101','rothi','10am- 5 pm'),(5,'w3@gmail.com','Dental',' sr. consultant','Abdul alim','123','2.jpg','MBBS, FRCS','456','102','alim','10am- 5 pm'),(6,'rabiul@gmail.com','Cardiology','consultant','rabiul islam','123','4.jpg','MBBS, FCPS','123654','103','robi','10am- 4 pm'),(7,'rabiul@gmail.com','Neurology','consultant','Rothi','123',NULL,'MBBS, FCPS, FRCS','456789','101','rothi','10am- 5 pm');
/*!40000 ALTER TABLE `doctorregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlineappointment`
--

DROP TABLE IF EXISTS `onlineappointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onlineappointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pAddress` varchar(255) DEFAULT NULL,
  `pAge` varchar(255) DEFAULT NULL,
  `pDepertment` varchar(255) DEFAULT NULL,
  `pDoctor` varchar(255) DEFAULT NULL,
  `pEmail` varchar(255) DEFAULT NULL,
  `pGender` varchar(255) DEFAULT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `token` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineappointment`
--

LOCK TABLES `onlineappointment` WRITE;
/*!40000 ALTER TABLE `onlineappointment` DISABLE KEYS */;
INSERT INTO `onlineappointment` VALUES (1,'dhaka','20','Dental','Cardiology','rab@gmail.com','Male','rabiul',0),(2,'doidjoje','jdj','Dental','Neurology','adoralim121@gmail.com','Male','fggrfgf',110776),(3,'dhaka','20','Cardiology','Rabiul Islam','adoralim121@gmail.com','Male','rabiul',83178),(4,'khulna','25','Neurology','Rothi','w3alim@gmail.com','Male','abdul alim',97109),(5,'khulna','25','Neurology','Rothi','w3alim@gmail.com','Male','abdul alim',97109),(6,'','','Neurology','Rothi','','Male','',2503),(7,'dhaka','20','Neurology','Rothi','w3alim@gmail.com','Male','rabiul',61271),(8,'dhaka','20','Neurology','Rothi','fahanadewan2019@gmail.com','Female','rabiul',19022),(9,'dhaka','20','Cardiology','Abdullah Asif','adoralim121@gmail.com','Male','abdul alim',82112),(10,'dhaka','20','Cardiology','Abdullah Asif','adoralim121@gmail.com','Male','abdul alim',82112),(11,'dhaka','20','Cardiology','Abdullah Asif','adoralim121@gmail.com','Male','abdul alim',10776),(12,'dhaka','25','Dental','Rothi','fahanadewan2019@gmail.com','Female','Rothi akter',26803);
/*!40000 ALTER TABLE `onlineappointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'2019-10-27 09:00:59','rabiul.idb40@gmail.com','','abdul','alim','$2a$10$5M02RNueaDe2QNvUKIF.BezI6QNwZPwTZYulJZVMxwpstovFfWCvW','user','2019-10-27 09:00:59','admin'),(2,'2019-11-20 13:10:57','rabiul.rabi91@gmail.com','','rabiul','islam','$2a$10$onPTqVOotmVeXgbCN8TTCuaXDa6XLfLJT7p53rLC/i/0B6p2DGk6a','user','2019-11-20 13:10:57','robiul'),(3,'2019-11-20 13:11:34','abdullah@gmail.com','','abdullah','asif','$2a$10$p.mvc6l4D.7ReTPCExX4SOVfAclDlHaVbAo/B2aRZ7uTmTVV7NDl2','user','2019-11-20 13:11:34','asif'),(4,'2019-11-20 13:12:14','w3alim@gmail.com','','alim','alim','$2a$10$.tING4LkJrlEV7/FMBOfTOldYj0iE81jbaZujc9Ok3GvGOkEYG3x.','user','2019-11-20 13:12:14','alim');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermessage`
--

DROP TABLE IF EXISTS `usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermessage`
--

LOCK TABLES `usermessage` WRITE;
/*!40000 ALTER TABLE `usermessage` DISABLE KEYS */;
INSERT INTO `usermessage` VALUES (5,'rabiul.rabi91@gmail.com','hellow how are you','rabiul'),(6,'farhanadewan2019@gmail.com','hello','rothi akter');
/*!40000 ALTER TABLE `usermessage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 13:14:19
