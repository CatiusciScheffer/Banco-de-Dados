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
-- Table structure for table `Pedido`
--

DROP TABLE IF EXISTS `Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedido` (
  `idPedido` int NOT NULL AUTO_INCREMENT,
  `idClientePedido` int DEFAULT NULL,
  `pedido_Descricao` varchar(255) DEFAULT NULL,
  `pedido_Status` enum('Andamento','Processando','Enviado','Entregue','Cancelado') DEFAULT 'Processando',
  `pedido_codRastreio` varchar(45) DEFAULT NULL,
  `pedido_VrlFrete` float DEFAULT NULL,
  `pedido_pagto_boleto` tinyint DEFAULT '0',
  PRIMARY KEY (`idPedido`),
  KEY `FK_pedido_cliente` (`idClientePedido`),
  CONSTRAINT `FK_pedido_cliente` FOREIGN KEY (`idClientePedido`) REFERENCES `Cliente` (`idCliente`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedido`
--

LOCK TABLES `Pedido` WRITE;
/*!40000 ALTER TABLE `Pedido` DISABLE KEYS */;
INSERT INTO `Pedido` VALUES (1,1,'COMPRA APP','Cancelado','',0,0),(2,2,'COMPRA LOJA FÍSICA','Andamento','EBX45639',17.99,0),(3,3,'COMPRA LOJA FÍSICA','Andamento','EBX45640',37.58,0),(4,4,'COMPRA LOJA FÍSICA','Entregue','EBX45633',90.52,0),(5,5,'COMPRA LOJA FÍSICA','Entregue','EBX45700',100.45,0),(6,6,'COMPRA APP','Entregue','EBX44569',30,0),(7,7,'COMPRA APP','Entregue','EBX45258',38,0),(8,8,'COMPRA ONLINE','Entregue','EBX45147',14,0),(9,9,'COMPRA ONLINE','Entregue','EBX41564',12.99,0),(10,10,'COMPRA ONLINE','Entregue','EBX4513',16,0),(11,11,'COMPRA ONLINE','Processando','EBX45456',17.45,0),(12,12,'COMPRA APP','Processando','EBX45789',14.25,1),(13,13,'COMPRA APP','Processando','EBX45456',22.25,1),(14,14,'COMPRA ONLINE','Cancelado','',0,0),(15,1,'COMPRA APP','Andamento','EBX 56985',54,0),(16,2,'COMPRA ONLINE','Cancelado','',0,0),(17,5,'COMPRA LOJA FÍSICA','Entregue','EBA25665',22.85,1),(18,9,'COMPRA APP','Entregue','EBN54668',12.47,0),(19,14,'COMPRA LOJA FÍSICA','Processando','',11.45,0);
/*!40000 ALTER TABLE `Pedido` ENABLE KEYS */;
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
