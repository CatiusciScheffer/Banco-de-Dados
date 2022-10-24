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
-- Table structure for table `Produto_VT`
--

DROP TABLE IF EXISTS `Produto_VT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto_VT` (
  `idProduto_VT` int NOT NULL,
  `idProdutoVendedorTerceiro` int NOT NULL,
  `produtoVT_Qtd` int DEFAULT '1',
  PRIMARY KEY (`idProduto_VT`,`idProdutoVendedorTerceiro`),
  KEY `FK_ProdutoVT_Produto` (`idProdutoVendedorTerceiro`),
  CONSTRAINT `FK_ProdutoVT_Produto` FOREIGN KEY (`idProdutoVendedorTerceiro`) REFERENCES `Produto` (`idProduto`),
  CONSTRAINT `FK_ProdutoVT_VendedorTerceiro` FOREIGN KEY (`idProduto_VT`) REFERENCES `VendedorTerceiro` (`idVendTerc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_VT`
--

LOCK TABLES `Produto_VT` WRITE;
/*!40000 ALTER TABLE `Produto_VT` DISABLE KEYS */;
INSERT INTO `Produto_VT` VALUES (1,2,159),(1,7,369),(1,12,103),(1,17,125),(2,1,357),(2,6,963),(2,11,205),(2,16,345),(3,5,258),(3,10,300),(3,15,147),(3,18,456),(4,4,741),(4,9,147),(4,14,99),(5,3,115),(5,8,852),(5,13,896);
/*!40000 ALTER TABLE `Produto_VT` ENABLE KEYS */;
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
