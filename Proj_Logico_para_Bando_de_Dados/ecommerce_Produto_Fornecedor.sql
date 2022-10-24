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
-- Table structure for table `Produto_Fornecedor`
--

DROP TABLE IF EXISTS `Produto_Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto_Fornecedor` (
  `idFornProd` int NOT NULL,
  `idProdForn` int NOT NULL,
  `fornprod_Qtd` int DEFAULT '1',
  PRIMARY KEY (`idFornProd`,`idProdForn`),
  KEY `FK_prodForn_produto` (`idProdForn`),
  CONSTRAINT `FK_prodForn_fornecedor` FOREIGN KEY (`idFornProd`) REFERENCES `Fornecedor` (`idFornecedor`),
  CONSTRAINT `FK_prodForn_produto` FOREIGN KEY (`idProdForn`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_Fornecedor`
--

LOCK TABLES `Produto_Fornecedor` WRITE;
/*!40000 ALTER TABLE `Produto_Fornecedor` DISABLE KEYS */;
INSERT INTO `Produto_Fornecedor` VALUES (1,2,1101),(1,7,1200),(1,12,110),(1,17,358),(1,22,1500),(2,1,10),(2,6,56),(2,11,126),(2,16,563),(2,21,259),(3,5,28),(3,10,431),(3,15,145),(3,20,3569),(4,4,3001),(4,9,520),(4,14,76),(4,19,100),(5,3,458),(5,8,100),(5,13,89),(5,18,1896);
/*!40000 ALTER TABLE `Produto_Fornecedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 19:39:43
