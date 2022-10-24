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
-- Table structure for table `OrdemServico`
--

DROP TABLE IF EXISTS `OrdemServico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrdemServico` (
  `idOrdemServico` int NOT NULL AUTO_INCREMENT,
  `idCli_OS` int DEFAULT NULL,
  `idEqui_OS` int DEFAULT NULL,
  `OS_Inicio` date DEFAULT NULL,
  `OS_Conclusao` date DEFAULT NULL,
  `OS_Descricao` varchar(500) DEFAULT NULL,
  `OS_Status` enum('Em Análise','Autorizada','Não Autorizada','Iniciada','Concluída') DEFAULT NULL,
  PRIMARY KEY (`idOrdemServico`),
  KEY `FK_OrdemServico_Equipe` (`idEqui_OS`),
  KEY `FK_OrdemServico_Cliente` (`idCli_OS`),
  CONSTRAINT `FK_OrdemServico_Cliente` FOREIGN KEY (`idCli_OS`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `FK_OrdemServico_Equipe` FOREIGN KEY (`idEqui_OS`) REFERENCES `Equipe` (`idEquipe`)
) ENGINE=InnoDB AUTO_INCREMENT=5070 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrdemServico`
--

LOCK TABLES `OrdemServico` WRITE;
/*!40000 ALTER TABLE `OrdemServico` DISABLE KEYS */;
INSERT INTO `OrdemServico` VALUES (5000,1000,216,'2022-01-10','2022-01-25','Diagnostico ','Em Análise'),(5001,1001,217,'2022-02-12','2022-02-27','Revisão','Autorizada'),(5002,1002,218,'2022-03-15','2022-03-30','Substituir','Não Autorizada'),(5003,1003,219,'2022-04-12','2022-04-27','Substituir','Iniciada'),(5004,1004,220,'2022-01-10','2022-01-25','Limpeza','Concluída'),(5005,1005,221,'2022-01-11','2022-01-26','Limpeza','Em Análise'),(5006,1000,222,'2022-02-13','2022-02-28','Diagnostico Basico','Autorizada'),(5007,1007,223,'2022-03-16','2022-03-31','Revisão','Não Autorizada'),(5008,1008,224,'2022-04-13','2022-04-28','Revisão/Limp/Subst','Iniciada'),(5009,1009,225,'2022-01-11','2022-01-26','Medir / Analizar','Concluída'),(5010,1010,216,'2022-01-12','2022-01-27','Mecanica','Concluída'),(5011,1011,217,'2022-02-14','2022-03-01','C/ Limp. 6 Bicos','Concluída'),(5012,1012,218,'2022-03-17','2022-04-01','Mecanica','Concluída'),(5013,1013,219,'2022-04-14','2022-04-29','Injeção','Em Análise'),(5014,1014,220,'2022-01-12','2022-01-27','Injeção','Em Análise'),(5015,1015,221,'2022-01-13','2022-01-28','C/ Limp. 5 Bicos','Iniciada'),(5016,1016,222,'2022-02-15','2022-03-02','C/ Limp. 5 Bicos','Iniciada'),(5017,1017,223,'2022-03-18','2022-04-02','C/ Limp. 4 Bicos','Iniciada'),(5018,1000,224,'2022-04-15','2022-04-30','C/ Limp. 6 Bicos','Iniciada'),(5019,1019,225,'2022-01-13','2022-01-28','C/ Limp. 4 Bicos','Em Análise'),(5020,1003,222,'2022-01-14','2022-01-29','Regulagem','Autorizada'),(5021,1004,223,'2022-02-16','2022-03-03','Substituir','Não Autorizada'),(5022,1005,224,'2022-03-19','2022-04-03','Substituir','Iniciada'),(5023,1006,225,'2022-04-16','2022-05-01','Com Remoção','Concluída'),(5024,1007,216,'2022-01-14','2022-01-29','Limpeza','Em Análise'),(5025,1008,217,'2022-01-15','2022-01-30','Limpeza','Autorizada'),(5026,1009,218,'2022-02-17','2022-03-04','Revisão','Não Autorizada'),(5027,1012,221,'2022-03-20','2022-04-04','Diagnostico ','Iniciada'),(5028,1013,222,'2022-04-17','2022-05-02','Revisão','Concluída'),(5029,1000,223,'2022-01-15','2022-01-30','Substituir','Concluída'),(5030,1018,224,'2022-01-16','2022-01-31','Substituir','Concluída'),(5031,1019,221,'2022-02-18','2022-03-05','Limpeza','Concluída'),(5033,1000,223,'2022-04-18','2022-05-03','Diagnostico Basico','Em Análise'),(5034,1005,224,'2022-01-16','2022-01-31','Revisão','Iniciada'),(5035,1000,216,'2022-01-10','2022-01-25','Diagnostico ','Em Análise'),(5036,1001,217,'2022-02-12','2022-02-27','Revisão','Autorizada'),(5037,1002,218,'2022-03-15','2022-03-30','Substituir','Não Autorizada'),(5038,1003,219,'2022-04-12','2022-04-27','Substituir','Iniciada'),(5039,1004,220,'2022-01-10','2022-01-25','Limpeza','Concluída'),(5040,1005,221,'2022-01-11','2022-01-26','Limpeza','Em Análise'),(5041,1000,222,'2022-02-13','2022-02-28','Diagnostico Basico','Autorizada'),(5042,1007,223,'2022-03-16','2022-03-31','Revisão','Não Autorizada'),(5043,1008,224,'2022-04-13','2022-04-28','Revisão/Limp/Subst','Iniciada'),(5044,1009,225,'2022-01-11','2022-01-26','Medir / Analizar','Concluída'),(5045,1010,216,'2022-01-12','2022-01-27','Mecanica','Concluída'),(5046,1011,217,'2022-02-14','2022-03-01','C/ Limp. 6 Bicos','Concluída'),(5047,1012,218,'2022-03-17','2022-04-01','Mecanica','Concluída'),(5048,1013,219,'2022-04-14','2022-04-29','Injeção','Em Análise'),(5049,1014,220,'2022-01-12','2022-01-27','Injeção','Em Análise'),(5050,1015,221,'2022-01-13','2022-01-28','C/ Limp. 5 Bicos','Iniciada'),(5051,1016,222,'2022-02-15','2022-03-02','C/ Limp. 5 Bicos','Iniciada'),(5052,1017,223,'2022-03-18','2022-04-02','C/ Limp. 4 Bicos','Iniciada'),(5053,1000,224,'2022-04-15','2022-04-30','C/ Limp. 6 Bicos','Iniciada'),(5054,1019,225,'2022-01-13','2022-01-28','C/ Limp. 4 Bicos','Em Análise'),(5055,1003,222,'2022-01-14','2022-01-29','Regulagem','Autorizada'),(5056,1004,223,'2022-02-16','2022-03-03','Substituir','Não Autorizada'),(5057,1005,224,'2022-03-19','2022-04-03','Substituir','Iniciada'),(5058,1006,225,'2022-04-16','2022-05-01','Com Remoção','Concluída'),(5059,1007,216,'2022-01-14','2022-01-29','Limpeza','Em Análise'),(5060,1008,217,'2022-01-15','2022-01-30','Limpeza','Autorizada'),(5061,1009,218,'2022-02-17','2022-03-04','Revisão','Não Autorizada'),(5062,1012,221,'2022-03-20','2022-04-04','Diagnostico ','Iniciada'),(5063,1013,222,'2022-04-17','2022-05-02','Revisão','Concluída'),(5064,1000,223,'2022-01-15','2022-01-30','Substituir','Concluída'),(5065,1018,224,'2022-01-16','2022-01-31','Substituir','Concluída'),(5066,1019,221,'2022-02-18','2022-03-05','Limpeza','Concluída'),(5068,1000,223,'2022-04-18','2022-05-03','Diagnostico Basico','Em Análise'),(5069,1005,224,'2022-01-16','2022-01-31','Revisão','Iniciada');
/*!40000 ALTER TABLE `OrdemServico` ENABLE KEYS */;
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
