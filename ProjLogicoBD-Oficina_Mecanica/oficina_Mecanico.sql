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
-- Table structure for table `Mecanico`
--

DROP TABLE IF EXISTS `Mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mecanico` (
  `idMecanico` int NOT NULL AUTO_INCREMENT,
  `idEnd_Mec` int DEFAULT NULL,
  `mec_NomeCompleto` varchar(45) DEFAULT NULL,
  `mec_EspMecanico` enum('Ar-Condicionado','Pintor','Chapeador','Elétrico','Hidráulico','Suspensão','Mecânico Geral') DEFAULT 'Mecânico Geral',
  PRIMARY KEY (`idMecanico`),
  KEY `FK_Mecanico_Endereco` (`idEnd_Mec`),
  CONSTRAINT `FK_Mecanico_Endereco` FOREIGN KEY (`idEnd_Mec`) REFERENCES `Endereco` (`idEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mecanico`
--

LOCK TABLES `Mecanico` WRITE;
/*!40000 ALTER TABLE `Mecanico` DISABLE KEYS */;
INSERT INTO `Mecanico` VALUES (2000,3019,'ADROALDO DAS NEVES','Mecânico Geral'),(2001,3020,'JOÃO MARIA DE JESUS','Hidráulico'),(2002,3021,'AFRÂNIO SOUZA','Suspensão'),(2003,3022,'MARCO AURÉLIO','Pintor'),(2004,3023,'JUDAS DA SILVA','Mecânico Geral'),(2005,3024,'JÚLIO CESAR SANTOS','Elétrico'),(2006,3025,'LEANDRO DOS ANJOS CRUZ','Chapeador'),(2007,3026,'VLADIMIR BERNARDES','Mecânico Geral'),(2008,3027,'ROBSON SILVA','Ar-Condicionado'),(2009,3028,'RODRIGO MARTINS','Suspensão');
/*!40000 ALTER TABLE `Mecanico` ENABLE KEYS */;
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
