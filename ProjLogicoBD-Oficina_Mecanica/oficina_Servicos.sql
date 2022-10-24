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
-- Table structure for table `Servicos`
--

DROP TABLE IF EXISTS `Servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servicos` (
  `idServicos` int NOT NULL AUTO_INCREMENT,
  `serv_Descricao` varchar(250) DEFAULT NULL,
  `serv_ValorUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idServicos`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicos`
--

LOCK TABLES `Servicos` WRITE;
/*!40000 ALTER TABLE `Servicos` DISABLE KEYS */;
INSERT INTO `Servicos` VALUES (500,'Aparelho Scaner -Testar Sistema Eletronico',85.3),(501,'Atuador da Marcha Lenta (Ka Fiesta Courrier)',96.8),(502,'Bomba Eletrica Com Remoção do Tanque',550.2),(503,'Bomba Eletrica Sem Remoção do Tanque',110.5),(504,'Corpo de Borboleta Mono-Ponto',85.31),(505,'Corpo de Borboleta Mult-Point',96.9),(506,'Injeção Eletronica',550.21),(507,'Sistema de Ignição Eletronica Mapeada',110.6),(508,'Sonda Lambda',85.32),(509,'Pressão / Vazão Sistema de Alimentação',96.1),(510,'Regulagem Eletronica de Motor 02 Carburadores',2000.12),(511,'Regulagem Eletronica de Motor Blazer / S10 V6',3025.3),(512,'Regulagem Eletronica de Motor Carburado',1500.58),(513,'Regulagem Eletronica de Motor Injeção Mono-Ponto',1256.32),(514,'Regulagem Eletronica de Motor Injeção Mult-Point',1259.45),(515,'Regulagem Eletronica de Motor Marea 20v',1498.42),(516,'Regulagem Eletronica de Motor Marea Turbo',1302.25),(517,'Regulagem Eletronica de Motor Palio/Siena 16v',1496.25),(518,'Regulagem Eletronica de Motor Ranger 4.0 V6',2001.25),(519,'Regulagem Eletronica de Motor Tempra Turbo',2560.25),(520,'Regular Valvula Motor Endura (Ka Fiesta Courrier)',1800.7),(521,'Filtro de Combustivel Externo',250.58),(522,'Filtro de Combustivel Sob o Para-Lama',320.89),(523,'Limpeza de Bico Injetor em Ultra Som (Cada)',200.58),(524,'Pescador Com Remoção do Tanque',500.2),(525,'Pescador Sem Remoção do Tanque',450.25),(526,'Sistema de Canister',150.2);
/*!40000 ALTER TABLE `Servicos` ENABLE KEYS */;
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
