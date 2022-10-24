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
-- Table structure for table `Veiculo`
--

DROP TABLE IF EXISTS `Veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Veiculo` (
  `idVeiculo` int NOT NULL AUTO_INCREMENT,
  `idCli_Vei` int DEFAULT NULL,
  `idEqu_Vei` int DEFAULT NULL,
  `idOrdSer_Vei` int DEFAULT NULL,
  `vei_Marca` varchar(45) DEFAULT NULL,
  `vei_Modelo` varchar(45) DEFAULT NULL,
  `vei_Ano` char(4) DEFAULT NULL,
  `vei_Cor` varchar(15) DEFAULT NULL,
  `vei_Placa` char(8) NOT NULL,
  PRIMARY KEY (`idVeiculo`),
  KEY `FK_Veiculo_Cliente` (`idCli_Vei`),
  KEY `FK_Veiculo_Equipe` (`idEqu_Vei`),
  KEY `FK_Veiculo_OrdServico` (`idOrdSer_Vei`),
  CONSTRAINT `FK_Veiculo_Cliente` FOREIGN KEY (`idCli_Vei`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `FK_Veiculo_Equipe` FOREIGN KEY (`idEqu_Vei`) REFERENCES `Equipe` (`idEquipe`),
  CONSTRAINT `FK_Veiculo_OrdServico` FOREIGN KEY (`idOrdSer_Vei`) REFERENCES `OrdemServico` (`idOrdemServico`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Veiculo`
--

LOCK TABLES `Veiculo` WRITE;
/*!40000 ALTER TABLE `Veiculo` DISABLE KEYS */;
INSERT INTO `Veiculo` VALUES (1,1000,216,5010,'FORD','KA','2020','VERMELHO','KCD-3856'),(2,1002,217,5011,'CITROEN','C4','2019','AZUL','JZG-9181'),(3,1006,218,5012,'FIAT','FIORINO','2015','PRETA','HZC-1080'),(4,1005,219,5013,'PEUGEOT','208','2016','PRATA','HJK-8925'),(5,1007,220,5014,'VOLKSWAGEM','GOL','2016','BRANCO','KID-7214'),(6,1010,221,5015,'FIAT','ARGO','2013','VERDE','KVL-0604'),(7,1009,222,5016,'PEUGEOT','308','2021','PRETO','HXE-8713'),(8,1002,223,5017,'FORD','FIESTA','2018','AZUL','JZS-7352'),(9,1002,224,5018,'FIAT','PÁLIO','2015','BRANCO','GHU-4032'),(10,1002,225,5020,'RENAULT','SANDERO','2013','PRATA','JDE-4900'),(11,1000,216,5019,'FORD','FOCUS','2020','PRETO','IUV-8108'),(12,1012,218,5021,'FORD','FUSION','2022','AZUL','NEH-0743'),(13,1019,216,5022,'FIAT','UNO','2010','BRANCO','JVD-2501'),(14,1013,225,5023,'FORD','S10','2020','AZUL','NCX-5793'),(15,1015,220,5024,'GM','ONIX','2018','PRETO','LWG-3000'),(16,1014,217,5025,'FORD','KA','2021','VERMELHO','JOI-2264'),(17,1015,218,5026,'CITROEN','C5','2020','AZUL','FVK-3680'),(18,1016,219,5027,'FIAT','FIORINO','2016','PRETA','NAN-4533'),(19,1017,220,5029,'PEUGEOT','209','2017','PRATA','HWR-2484'),(20,1018,221,5030,'VOLKSWAGEM','GOL','2017','BRANCO','HEC-1495'),(21,1019,222,5031,'FIAT','ARGO','2014','VERDE','JOC-6629'),(22,1018,223,5028,'PEUGEOT','309','2022','PRETO','NCW-8748'),(23,1017,224,5033,'FORD','FIESTA','2019','AZUL','MYQ-9677'),(24,1015,225,5034,'FIAT','PÁLIO','2016','BRANCO','ING-2323'),(26,1008,217,5035,'FORD','FOCUS','2021','PRETO','JTH-2100'),(27,1014,219,5036,'FORD','FUSION','2023','AZUL','JMM-8194'),(28,1015,217,5037,'FIAT','UNO','2011','BRANCO','MGN-5241'),(30,1017,221,5038,'GM','ONIX','2019','PRETO','MYV-6757'),(31,1018,218,5039,'FORD','KA','2022','VERMELHO','NAF-7833'),(32,1019,219,5040,'CITROEN','C6','2021','AZUL','HPO-4959'),(34,1019,221,5041,'PEUGEOT','210','2018','PRATA','HBL-8478'),(35,1018,222,5042,'VOLKSWAGEM','GOL','2018','BRANCO','MZR-0846'),(36,1001,221,5043,'FORD','KA','2021','VERMELHO','HST-7894'),(37,1013,218,5044,'CITROEN','C5','2020','AZUL','NES-5791'),(39,1014,220,5045,'PEUGEOT','209','2017','PRATA','MPX-8586'),(40,1016,221,5046,'VOLKSWAGEM','GOL','2017','BRANCO','MMQ-2188'),(41,1015,222,5047,'FIAT','ARGO','2014','VERDE','IBN-5386'),(42,1016,223,5048,'PEUGEOT','309','2022','PRETO','DPT-8208'),(43,1017,224,5049,'FORD','FIESTA','2019','AZUL','JHO-4291'),(44,1018,225,5050,'FIAT','PÁLIO','2016','BRANCO','JUB-0042'),(47,1019,220,5051,'FORD','FUSION','2023','AZUL','HUN-0019'),(48,1018,218,5052,'FIAT','UNO','2011','BRANCO','JLT-4794'),(49,1016,222,5053,'FORD','S11','2021','AZUL','JYG-7123'),(50,1009,219,5054,'GM','ONIX','2019','PRETO','HMT-9242'),(51,1015,220,5055,'FORD','KA','2022','VERMELHO','MZS-2015'),(52,1016,222,5056,'CITROEN','C6','2021','AZUL','IUZ-0014'),(53,1018,223,5057,'FIAT','FIORINO','2017','PRETA','KMU-7247'),(54,1019,222,5058,'PEUGEOT','210','2018','PRATA','KHF-8094'),(57,1019,221,5059,'PEUGEOT','310','2023','PRETO','AER-8303'),(58,1002,222,5060,'FORD','FIESTA','2020','AZUL','NEI-4825'),(59,1014,223,5061,'FIAT','PÁLIO','2017','BRANCO','NAQ-0105'),(61,1015,225,5062,'FORD','FUSION','2024','AZUL','HAV-8866'),(64,1017,219,5063,'FORD','KA','2023','VERMELHO','IBN-3904'),(65,1018,221,5064,'CITROEN','C7','2022','AZUL','MOT-5010'),(66,1019,219,5065,'PEUGEOT','211','2019','PRATA','MVF-4684'),(70,1019,223,5066,'FIAT','FIORINO','2017','PRETA','HOO-4430'),(71,1017,224,5069,'PEUGEOT','210','2018','PRATA','MUZ-5389'),(72,1010,223,5068,'VOLKSWAGEM','GOL','2018','BRANCO','IAF-3051');
/*!40000 ALTER TABLE `Veiculo` ENABLE KEYS */;
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
