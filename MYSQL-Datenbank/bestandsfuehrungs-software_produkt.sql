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
-- Table structure for table `produkt`
--

DROP TABLE IF EXISTS `produkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkt` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `kategorie` int NOT NULL,
  `hersteller` int NOT NULL,
  `artikelnummer` int NOT NULL,
  `beschreibung` varchar(255) DEFAULT NULL,
  `bestellt` int DEFAULT '0',
  `lager` int DEFAULT '0',
  `disponiert` int DEFAULT '0',
  `einkaufspreis` decimal(15,2) NOT NULL,
  `verkaufspreis` decimal(15,2) NOT NULL,
  `regalnummer` int DEFAULT '0',
  `fachnummer` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `artikelnummer` (`artikelnummer`),
  KEY `kategorie` (`kategorie`),
  KEY `hersteller` (`hersteller`),
  CONSTRAINT `produkt_ibfk_1` FOREIGN KEY (`kategorie`) REFERENCES `kategorie` (`ID`),
  CONSTRAINT `produkt_ibfk_2` FOREIGN KEY (`hersteller`) REFERENCES `hersteller` (`ID`),
  CONSTRAINT `produkt_chk_1` CHECK (((`artikelnummer` > 9999999) and (`artikelnummer` < 100000000)))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkt`
--

LOCK TABLES `produkt` WRITE;
/*!40000 ALTER TABLE `produkt` DISABLE KEYS */;
INSERT INTO `produkt` VALUES (1,1,27,44995947,'AquaLux LED Regenduschkopf',33,46,4,63.99,79.99,21,9),(2,1,7,85382787,'Luna Badezimmerschrank mit Spiegeltür',31,40,6,103.99,129.99,36,100),(3,1,27,19174011,'TouchFree Automatischer Seifenspender',33,185,5,31.99,39.99,20,232),(4,2,3,50747129,'ProfiCraft Schlagbohrmaschine inkl. Bohrerset',38,137,2,119.99,149.99,14,8),(5,2,4,66595483,'DryMate Gipskarton-Schraubendreher',46,196,6,31.99,39.99,47,17),(6,2,3,56442120,'AquaCut Präzisions-Fliesenschneider',38,252,10,71.99,89.99,50,25),(7,6,6,53611622,'GreenMaster Benzin-Rasenmäher mit Mulchfunktion',42,254,5,239.99,299.99,9,179),(8,6,3,48366987,'Relaxo Hängematte mit Stahlgestell',10,126,6,63.99,79.99,8,218),(9,6,3,11403715,'SunGlow Solar-Gartenleuchten-Set',25,271,8,39.99,49.99,12,39),(10,12,10,23662276,'PowerMax Präzisions-Stichsäge mit Laserführung',6,156,9,95.99,119.99,50,246),(11,12,10,23545982,'AirProfi Druckluftkompressor-Set inkl. Zubehör',17,24,5,159.99,199.99,44,89),(12,12,48,47626555,'ToolMaster Profi-Werkzeugkiste mit Rollen',32,65,5,71.99,89.99,28,195),(13,14,12,45268644,'EcoControl Smartes Thermostat',31,283,6,63.99,79.99,35,123),(14,14,11,32564187,'CleanBot Smart-Roboterstaubsauger mit Raumkartenfunktion',25,88,9,239.99,299.99,33,152),(15,14,14,79961715,'FlexiSpace Modulares Regalsystem',13,16,6,103.99,129.99,13,241);
/*!40000 ALTER TABLE `produkt` ENABLE KEYS */;
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
