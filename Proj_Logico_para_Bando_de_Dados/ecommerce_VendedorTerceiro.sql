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
-- Table structure for table `VendedorTerceiro`
--

DROP TABLE IF EXISTS `VendedorTerceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VendedorTerceiro` (
  `idVendTerc` int NOT NULL AUTO_INCREMENT,
  `vendTerc_CNPJ` char(17) NOT NULL,
  `vendTerc_RazaSocial` varchar(60) NOT NULL,
  `vendTerc_NomeFantasia` varchar(25) DEFAULT NULL,
  `vendTerc_Logradouro` varchar(35) DEFAULT NULL,
  `vendTerc_numero` varchar(5) DEFAULT NULL,
  `vendTerc_complemento` varchar(25) DEFAULT NULL,
  `vendTerc_Bairro` varchar(20) DEFAULT NULL,
  `vendTerc_CEP` char(8) DEFAULT NULL,
  `vendTerc_Municipio` varchar(40) DEFAULT NULL,
  `vendTerc_UF` char(7) DEFAULT 'SP',
  `vendTerc_Pais` varchar(25) DEFAULT 'Brasil',
  `vendTerc_email` varchar(60) NOT NULL,
  `vendTerc_celular` char(11) DEFAULT NULL,
  `vendTerc_telefone` char(10) NOT NULL,
  PRIMARY KEY (`idVendTerc`),
  UNIQUE KEY `VendedorTerceiro` (`vendTerc_CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VendedorTerceiro`
--

LOCK TABLES `VendedorTerceiro` WRITE;
/*!40000 ALTER TABLE `VendedorTerceiro` DISABLE KEYS */;
INSERT INTO `VendedorTerceiro` VALUES (1,'32145698000145','TBT BAZAR & VARIEDADE LTDA','MGM','AVENIDA ANDRADE NEVES','3600','DEFAULT','NAVEGANTES','94935130','RIO BRANCO','DEFAULT','DEFAULT','DSDmans@gmail.com','21985424587','2134569874'),(2,'75963154000178','BCC ATACADO DE ELETRÔNICOS LTDA','BIG','AVENIDA SÃO PAULO','458','DEFAULT','MARINHA','91963458','PORTO FELIZ','DEFAULT','DEFAULT','forn22@gmail.com','51987521234','5134785246'),(3,'15342679000156','CELSO VAREJO LTDA','AMEBA','AVENIDA SILVA MARIA','458','DEFAULT','CENTRO','94963852','ARMINDO CORRÊA','DEFAULT','DEFAULT','dieskfs@gmail.com','65985267896','6534125612'),(4,'45678912000256','ARNICA SABARÁ LTDA','AZAMBUJA','AVENIDA MARTA ESTEVES','123','DEFAULT','PARTENON','91258645','CÁGADOS','DEFAULT','DEFAULT','diasjdjjd@gmail.com','88987524552','8834568919'),(5,'52396587000345','TCBO ELETRÔNICOS LTDA','','AVENIDA PROTÁSIO SOARES','4560','DEFAULT','LINDOIA','85963123','RIO PARDO','DEFAULT','DEFAULT','armando5565@gmail.com','75987524415','7534256973');
/*!40000 ALTER TABLE `VendedorTerceiro` ENABLE KEYS */;
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
