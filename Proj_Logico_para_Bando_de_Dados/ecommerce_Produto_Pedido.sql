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
-- Table structure for table `Produto_Pedido`
--

DROP TABLE IF EXISTS `Produto_Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto_Pedido` (
  `idProdPed` int NOT NULL,
  `idPedProd` int NOT NULL,
  `pedprod_Quantidade` int DEFAULT '1',
  `pedprod_Status` enum('Disponível','Sem Estoque') DEFAULT 'Disponível',
  `pedprod_VLR_unitario` float DEFAULT NULL,
  `pedprod_dataPedido` date DEFAULT NULL,
  PRIMARY KEY (`idProdPed`,`idPedProd`),
  KEY `FK_prodPedido_pedido` (`idPedProd`),
  CONSTRAINT `FK_prodPedido_pedido` FOREIGN KEY (`idPedProd`) REFERENCES `Pedido` (`idPedido`),
  CONSTRAINT `FK_prodPedido_produto` FOREIGN KEY (`idProdPed`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_Pedido`
--

LOCK TABLES `Produto_Pedido` WRITE;
/*!40000 ALTER TABLE `Produto_Pedido` DISABLE KEYS */;
INSERT INTO `Produto_Pedido` VALUES (9,1,1,'Disponível',35.63,'2022-03-18'),(10,2,10,'Disponível',300.58,'2022-04-26'),(11,3,9,'Disponível',300.46,'2022-01-02'),(11,15,23,'Disponível',150.99,'2022-07-15'),(12,4,6,'Disponível',1489.25,'2022-04-23'),(13,5,15,'Disponível',158.79,'2022-05-31'),(14,6,123,'Sem Estoque',189.56,'2022-04-22'),(15,7,22,'Disponível',500.89,'2022-04-28'),(15,17,56,'Disponível',1589.56,'2022-05-08'),(15,18,2,'Disponível',1489.5,'2022-06-15'),(16,8,40,'Disponível',2000.26,'2022-03-14'),(16,19,156,'Sem Estoque',204.89,'2022-09-15'),(17,9,10,'Disponível',456.48,'2022-01-15'),(18,10,1,'Disponível',220.35,'2022-02-15'),(19,11,3,'Disponível',1500.99,'2022-06-30'),(20,12,8,'Disponível',2500.59,'2022-05-11'),(21,13,5,'Disponível',2560.19,'2022-04-22'),(22,14,1,'Disponível',200,'2022-09-17'),(22,16,3,'Disponível',1503.88,'2022-04-02');
/*!40000 ALTER TABLE `Produto_Pedido` ENABLE KEYS */;
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
