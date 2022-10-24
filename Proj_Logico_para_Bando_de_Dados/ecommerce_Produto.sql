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
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `produto_Nome` varchar(45) NOT NULL,
  `produto_Marca` varchar(30) DEFAULT NULL,
  `produto_Modelo` varchar(20) DEFAULT NULL,
  `produto_categoria` enum('Eletrônicos','Eletrodomésticos','Cama, Mesa e Banho','Utilidades domésticas','Vestuário','Calçados','Ferramentas') NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES (1,'NOTEBOOK 17','ASUS','JOY','Eletrônicos'),(2,'NOTEBOOK 14','HP','JOY','Eletrônicos'),(3,'CELULAR','SANSUNG','A30','Eletrônicos'),(4,'MONITOR 32\"','SANSUNG','SLIM','Eletrônicos'),(5,'LENÇOL QUEEN','CASAHOME','QUEEN','Cama, Mesa e Banho'),(6,'LUMINÁRIA','LUMINIX','SOBREPOR','Utilidades domésticas'),(7,'FOGÃO','BRITÂNIA','F0486','Eletrodomésticos'),(8,'GELADEIRA','CONSUL','F46','Eletrodomésticos'),(9,'MÁQUINA DE LAVAR ROUPAS','BRITÂNIA','MQ23','Eletrodomésticos'),(10,'BATEDEIRA','BRITÂNIA','BAT01','Eletrodomésticos'),(11,'FACA DE CHURRASCO','TRAMONTINA','CHURRAS01','Utilidades domésticas'),(12,'CAMISA SOCIAL','CASUS','CAM','Vestuário'),(13,'CALÇA JEANS','TOPPER','MASCULINA','Vestuário'),(14,'SAPATO MASCULINO','PEGADA','SAP458','Calçados'),(15,'FURADEIRA E PARAFUSADEIRA','BACKDDECKER','F46','Utilidades domésticas'),(16,'TV','LG','49','Eletrodomésticos'),(17,'MOUSE','MULTILASER','OPTICO','Eletrônicos'),(18,'VÍDEO GAME','PLAYSTATION','5','Eletrônicos'),(19,'CONTROLE','TV','X26','Eletrônicos'),(20,'LIQUIDIFICADOR','BRITÂNIA','LIQ452','Eletrodomésticos'),(21,'PANO DE PRATO','CASAHOME','MESQUAD','Cama, Mesa e Banho'),(22,'NETBOOK 18.1','DELL','D256','Eletrônicos');
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
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
