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
-- Table structure for table `Pagamento`
--

DROP TABLE IF EXISTS `Pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pagamento` (
  `idPagamento` int NOT NULL AUTO_INCREMENT,
  `idClientePagto` int NOT NULL,
  `idPedidoPagto` int DEFAULT NULL,
  `pagto_Tipo` enum('Cartão Crédito','Cartão Débito','Pix','Boleto') DEFAULT 'Pix',
  `pagto_cartao_num` varchar(15) DEFAULT NULL,
  `pagto_cartao_validade` char(5) DEFAULT 'MM/AA',
  `pagto_cartão_cvv` smallint DEFAULT '0',
  PRIMARY KEY (`idPagamento`,`idClientePagto`),
  KEY `FK_pagamento_pedido` (`idPedidoPagto`),
  CONSTRAINT `FK_pagamento_pedido` FOREIGN KEY (`idPedidoPagto`) REFERENCES `Pedido` (`idPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pagamento`
--

LOCK TABLES `Pagamento` WRITE;
/*!40000 ALTER TABLE `Pagamento` DISABLE KEYS */;
INSERT INTO `Pagamento` VALUES (1,14,14,'Pix','','',0),(41,13,13,'Pix',NULL,'MM/AA',0),(42,12,12,'Pix',NULL,'MM/AA',0),(43,11,11,'Boleto',NULL,'MM/AA',0),(44,10,10,'Boleto',NULL,'MM/AA',0),(45,9,9,'Boleto',NULL,'MM/AA',0),(46,8,8,'Cartão Crédito','456912361458','01/26',0),(47,7,7,'Cartão Crédito','789452146325','05/23',0),(48,6,6,'Cartão Crédito','458798564587','05/27',0),(49,5,5,'Cartão Crédito','123656985458','02/29',0),(50,4,4,'Cartão Débito',NULL,'MM/AA',0),(51,3,3,'Cartão Débito',NULL,'MM/AA',0),(52,2,2,'Pix',NULL,'MM/AA',0),(53,1,1,'Pix',NULL,'MM/AA',0);
/*!40000 ALTER TABLE `Pagamento` ENABLE KEYS */;
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
