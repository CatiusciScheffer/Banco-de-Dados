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
-- Table structure for table `Materiais`
--

DROP TABLE IF EXISTS `Materiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Materiais` (
  `idMateriais` int NOT NULL AUTO_INCREMENT,
  `mat_Descricao` varchar(250) DEFAULT NULL,
  `mat_ValorUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idMateriais`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materiais`
--

LOCK TABLES `Materiais` WRITE;
/*!40000 ALTER TABLE `Materiais` DISABLE KEYS */;
INSERT INTO `Materiais` VALUES (50,'buzina',150.25),(51,'cabo do velocímetro',85.09),(52,'chave de seta',121.56),(53,'chave de seta c/ air bag',289.5),(54,'cilindro de ignição',589.6),(55,'distribuidor',1250.2),(56,'farol',250.89),(57,'interruptor da ventuinha (cebolão)',63.23),(58,'interruptor de farol',89.25),(59,'interruptor de marcha ré',45.6),(60,'interruptor de óleo motor',63.24),(61,'interruptor de temperatura injeção',89.26),(62,'interruptor de temperatura painel',45.7),(63,'interruptor luz de freio',63.25),(64,'lâmpada de direção (seta)',45.3),(65,'lâmpada de farol',25.6),(66,'lâmpada de freio',23.69),(67,'lâmpada de lanterna',89.5),(68,'lâmpada de ré',54.6),(69,'motor do limpador de pára-brisa',150.26),(70,'motor do limpador do vigia',85.1),(71,'painel de instrumentos',121.57),(72,'válvula termostática',289.51),(73,'ventilador do radiador',589.61),(74,'vidro de acionamento elétrico',1250.21),(75,'motor de partida',250.9),(76,'partida à frio',63.24),(77,'bóia tanque combustível c/ vigia',89.26),(78,'bóia tanque combustível s/ vigia',45.7),(79,'bomba d´água',63.25),(80,'bomba de combustível',89.27),(81,'bomba de combustível externa',45.8),(82,'bomba de combustível interna c/ vigia',63.26),(83,'bomba de combustível interna s/ vigia',45.4),(84,'bomba de óleo',25.7),(85,'bomba de óleo',23.7),(86,'cabeçote 12V',89.6),(87,'cabeçote 12V',54.7),(88,'cabeçote 16V',150.27),(89,'cabeçote 16V',85.11),(90,'cabeçote 20V',121.58),(91,'cabeçote 20V',289.52),(92,'cabeçote 8V',589.62),(93,'cabeçote 8V',1250.22),(94,'cabo de acelerador',250.91),(95,'cabo de afogador',63.25),(96,'comando de válvulas 12V',89.27),(97,'comando de válvulas 16V',45.8),(98,'comando de válvulas 20V',63.26),(99,'comando de válvulas 8V',89.28),(100,'correia do motor poli V única',45.9),(101,'coxim do motor',63.27),(102,'engrenagem girabrequim c/ correia',45.5),(103,'fluido de freio',25.8),(104,'gargalo tanque combustível',23.71),(105,'junta de cabeçote 12V',89.7),(106,'junta de cabeçote 16V',54.8),(107,'junta de cabeçote 20V',150.28),(108,'junta de cabeçote 8V',85.12),(109,'junta do cárter motor',121.59),(110,'junta tampa de válvula',289.53),(111,'mangueira radiador / motor (todas)',589.63),(112,'motor',1250.23),(113,'polia tensora',250.92),(114,'radiador',63.26),(115,'reservatório d´agua do radiador',89.28),(116,'respiro do motor',45.9),(117,'retentor comandos de válvulas',63.27),(118,'retentor de polia do motor',89.29),(119,'retentor traseiro motor (volante)',45.1),(120,'selo do bloco do motor',63.28),(121,'selo do cabeçote frontal',45.6),(122,'sub quadro motor',25.9),(123,'tanque de combustível',23.72),(124,'tanque de combustível',89.8),(125,'tubo alimentação de combustível',54.9),(126,'tubo de água motor',150.29),(127,'tubo retorno de combustível',85.13),(128,'válvulas',121.6);
/*!40000 ALTER TABLE `Materiais` ENABLE KEYS */;
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
