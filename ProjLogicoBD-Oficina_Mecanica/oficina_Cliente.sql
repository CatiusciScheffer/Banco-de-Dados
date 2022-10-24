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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `idEndCli` int DEFAULT NULL,
  `cli_Cliente` varchar(60) NOT NULL,
  `cli_Tipo` enum('Pessoa Física','Pessoa Jurídica') DEFAULT 'Pessoa Física',
  `cli_CPF` char(11) DEFAULT NULL,
  `cli_CNPJ` char(17) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `FK_Cliente_Endereco` (`idEndCli`),
  CONSTRAINT `FK_Cliente_Endereco` FOREIGN KEY (`idEndCli`) REFERENCES `Endereco` (`idEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1000,3000,'MARCELO CAMPOS FARIAS','Pessoa Física','02365987452',''),(1001,3000,'ALESSANDRA DAS NEVES BRAGA','Pessoa Física','3932075285',''),(1002,3001,'CRISTIANE DE OLIVEIRA GOMES','Pessoa Física','66524725034',''),(1003,3002,'DAIANE DOS SANTOS DA SILVA','Pessoa Física','41723807869',''),(1004,3003,'EDELYNE LOUIS','Pessoa Física','1963954025',''),(1005,3004,'EDILEA MAGNO PIRES DE SOUZA','Pessoa Física','62801740004',''),(1006,3005,'FERNANDA SILVA DA SILVEIRA','Pessoa Física','7450927489',''),(1007,3006,'FRANCIELE HENTGES DE ANDRADE','Pessoa Física','94278709072',''),(1008,3007,'GISIANE DA ROSA','Pessoa Física','85385093068',''),(1009,3008,'INDAIARA OLIVEIRA DA LUZ','Pessoa Física','89903412053',''),(1010,3009,'IVANA AGUEDA MACHADO','Pessoa Física','60013582062',''),(1011,3010,'JANDIRA LOPES FERREIRA','Pessoa Física','98611313020',''),(1012,3011,'JOSE FABRICIO BISPO REIS','Pessoa Física','2061418074',''),(1013,3012,'JOSIMARA DA SILVA TRAJANO','Pessoa Física','85476579087',''),(1014,3013,'JULIANA LEAL CARDOSO DE SOUZA','Pessoa Física','98324250000',''),(1015,3014,'MGM BAZAR LTDA','Pessoa Jurídica','','12548963000145'),(1016,3015,'BIG VARIEDADES LTDA','Pessoa Jurídica','','12547896000215'),(1017,3016,'AMBEBA LTDA','Pessoa Jurídica','','45897458000322'),(1018,3017,'AZAMBUJA LTDA','Pessoa Jurídica','','45879642000645'),(1019,3018,'M&M ELETRÔNICOS LTDA','Pessoa Jurídica','','12547963000148');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
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
