CREATE DATABASE  IF NOT EXISTS `AcquyGiakhangDB` /*!40100 DEFAULT CHARACTER SET big5 */;
USE `AcquyGiakhangDB`;
-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: AcquyGiakhangDB
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `DONGXE`
--

DROP TABLE IF EXISTS `DONGXE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DONGXE` (
  `MaDongXe` int(11) NOT NULL,
  `TenDongXe` varchar(45) DEFAULT NULL,
  `SoXyLanh` varchar(45) DEFAULT NULL,
  `DongCo` varchar(45) DEFAULT NULL,
  `HopSo` varchar(45) DEFAULT NULL,
  `SoCua` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaDongXe`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DONGXE`
--

LOCK TABLES `DONGXE` WRITE;
/*!40000 ALTER TABLE `DONGXE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DONGXE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HANGXE`
--

DROP TABLE IF EXISTS `HANGXE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HANGXE` (
  `MaHangXe` int(11) NOT NULL,
  `TenHangXe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHangXe`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HANGXE`
--

LOCK TABLES `HANGXE` WRITE;
/*!40000 ALTER TABLE `HANGXE` DISABLE KEYS */;
/*!40000 ALTER TABLE `HANGXE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHACUNGCAP`
--

DROP TABLE IF EXISTS `NHACUNGCAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NHACUNGCAP` (
  `MaNhaCC` varchar(20) NOT NULL,
  `TenNhaCC` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaNhaCC`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHACUNGCAP`
--

LOCK TABLES `NHACUNGCAP` WRITE;
/*!40000 ALTER TABLE `NHACUNGCAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHACUNGCAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SANPHAM`
--

DROP TABLE IF EXISTS `SANPHAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SANPHAM` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(45) DEFAULT NULL,
  `SANPHAMcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANPHAM`
--

LOCK TABLES `SANPHAM` WRITE;
/*!40000 ALTER TABLE `SANPHAM` DISABLE KEYS */;
/*!40000 ALTER TABLE `SANPHAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'AcquyGiakhangDB'
--

--
-- Dumping routines for database 'AcquyGiakhangDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-16 12:10:41
