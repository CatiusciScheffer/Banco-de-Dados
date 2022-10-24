CREATE DATABASE  IF NOT EXISTS `oficina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oficina`;
-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: oficina
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

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
-- Table structure for table `Equipe`
--

DROP TABLE IF EXISTS `Equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipe` (
  `idEquipe` int NOT NULL AUTO_INCREMENT,
  `idMec_Equip` int DEFAULT NULL,
  `equip_Nome` enum('Manutenção','Revisão','Conserto') DEFAULT NULL,
  `equip_EspEquipe` enum('Refrigeração','Pintura e Chapeação','Elétrica','Manutenção','Conserto','Revisão') DEFAULT 'Revisão',
  PRIMARY KEY (`idEquipe`),
  KEY `FK_Equipe_Mecanico` (`idMec_Equip`),
  CONSTRAINT `FK_Equipe_Mecanico` FOREIGN KEY (`idMec_Equip`) REFERENCES `Mecanico` (`idMecanico`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipe`
--

LOCK TABLES `Equipe` WRITE;
/*!40000 ALTER TABLE `Equipe` DISABLE KEYS */;
INSERT INTO `Equipe` VALUES (216,2005,'Manutenção','Elétrica'),(217,2000,'Revisão','Revisão'),(218,2003,'Conserto','Pintura e Chapeação'),(219,2008,'Manutenção','Refrigeração'),(220,2007,'Revisão','Elétrica'),(221,2001,'Manutenção','Manutenção'),(222,2002,'Revisão','Revisão'),(223,2004,'Conserto','Revisão'),(224,2006,'Conserto','Conserto'),(225,2009,'Manutenção','Manutenção');
/*!40000 ALTER TABLE `Equipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20  0:51:30
