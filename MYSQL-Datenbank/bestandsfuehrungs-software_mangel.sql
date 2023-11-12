-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bestandsfuehrungs-software
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `mangel`
--

DROP TABLE IF EXISTS `mangel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mangel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `beschreibung` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `beschreibung` (`beschreibung`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangel`
--

LOCK TABLES `mangel` WRITE;
/*!40000 ALTER TABLE `mangel` DISABLE KEYS */;
INSERT INTO `mangel` VALUES (2,'Beschädigte Verpackung'),(18,'Beschädigte Ware bei Lieferung'),(13,'Defekte Verschlüsse oder Verriegelungen'),(15,'Elektrische Fehler oder Störungen'),(3,'Falsche Farbe geliefert'),(19,'Falsche Menge bei Lieferung'),(20,'Falsches Produkt bei Lieferung'),(9,'Fehlende Etiketten oder Kennzeichnungen'),(1,'Fehlende Gebrauchsanleitung'),(12,'Fehlende Montageanleitung'),(10,'Fehlende Schutzverpackung'),(16,'Fehlende Sicherheitshinweise'),(4,'Fehlendes Zubehör'),(8,'Kratzer oder Schrammen am Produkt'),(5,'Lose oder fehlende Teile'),(6,'Produkt beschädigt bei Lieferung'),(7,'Qualitätsmangel am Produkt'),(14,'Schlechte Lackierung oder Oberflächenqualität'),(11,'Sichtbare Produktionsfehler'),(17,'Verspätete Lieferung');
/*!40000 ALTER TABLE `mangel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 16:22:06
