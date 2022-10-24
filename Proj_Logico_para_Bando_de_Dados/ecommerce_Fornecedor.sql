-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
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
-- Table structure for table `Fornecedor`
--

DROP TABLE IF EXISTS `Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `fornecedor_CNPJ` char(17) NOT NULL,
  `fornecedor_RazaSocial` varchar(60) NOT NULL,
  `fornecedor_NomeFantasia` varchar(25) DEFAULT NULL,
  `fornecedor_Logradouro` varchar(35) DEFAULT NULL,
  `fornecedor_numero` varchar(5) DEFAULT NULL,
  `fornecedor_complemento` varchar(25) DEFAULT 'Sem',
  `fornecedor_Bairro` varchar(20) DEFAULT NULL,
  `fornecedor_CEP` char(8) DEFAULT NULL,
  `fornecedor_Municipio` varchar(40) DEFAULT NULL,
  `fornecedor_UF` char(7) DEFAULT 'SP',
  `fornecedor_Pais` varchar(25) DEFAULT 'Brasil',
  `fornecedor_email` varchar(60) NOT NULL,
  `fornecedor_celular` char(11) DEFAULT NULL,
  `fornecedor_telefone` char(10) NOT NULL,
  PRIMARY KEY (`idFornecedor`),
  UNIQUE KEY `Fornecedor` (`fornecedor_CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedor`
--

LOCK TABLES `Fornecedor` WRITE;
/*!40000 ALTER TABLE `Fornecedor` DISABLE KEYS */;
INSERT INTO `Fornecedor` VALUES (1,'04526978000145','MGM BAZAR LTDA','MGM','AVENIDA ANDRADAS','3600','DEFAULT','NAVEGANTES','94935130','RIO DE JANEIRO','RJ','DEFAULT','AMSNJDJD@gmail.com','21985425578','2134569887'),(2,'45698752000125','BIG VARIEDADES LTDA','BIG','AVENIDA SÃO MARCOS','458','DEFAULT','MARINHA','91963458','PORTO ALEGRE','RS','DEFAULT','amsndjhf@gmail.com','51987528597','5134785236'),(3,'45871236000154','AMBEBA LTDA','AMEBA','AVENIDA SILVA SÓ','458','DEFAULT','CENTRO','94963852','BAHIA','BA','DEFAULT','csdhsldsljdjdls@gmail.com','65985264478','6534125698'),(4,'02365874000156','AZAMBUJA LTDA','AZAMBUJA','AVENIDA MARIANTES','123','DEFAULT','PARTENON','91258645','FORTALEZA','CE','DEFAULT','jshdkshd@gmail.com','88987526985','8834568923'),(5,'89756325000148','M&M ELETRÔNICOS LTDA','','AVENIDA PROTÁSIO ALVES','4560','DEFAULT','LINDOIA','85963123','RIO BRANCO','PR','DEFAULT','ssjhshdkskksksks@gmail.com','75987524578','7534256989');
/*!40000 ALTER TABLE `Fornecedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 19:39:44
