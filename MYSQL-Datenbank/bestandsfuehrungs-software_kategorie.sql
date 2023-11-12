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
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `abteilung` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `abteilung` (`abteilung`),
  CONSTRAINT `kategorie_ibfk_1` FOREIGN KEY (`abteilung`) REFERENCES `abteilung` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorie`
--

LOCK TABLES `kategorie` WRITE;
/*!40000 ALTER TABLE `kategorie` DISABLE KEYS */;
INSERT INTO `kategorie` VALUES (1,'Bad-Ausstattung',1),(2,'Badarmaturen',1),(3,'Badewannen',1),(4,'Badkeramik',1),(5,'Badmöbel',1),(6,'Badsicherheit',1),(7,'Duschen',1),(8,'Sanitärinstallation',1),(9,'Sauna & Wellness',1),(10,'Spülkasten & Vorwandelemente',1),(11,'Warmwassergeräte',1),(12,'Arbeitskleidung',2),(13,'Baustoffe',2),(14,'Bauzubehör',2),(15,'Bodebeläge',2),(16,'Dichtstoffe',2),(17,'Elektroinstallation',2),(18,'Farben, Lacke & Holzschutz',2),(19,'Fenster, Türen & Vordächer',2),(20,'Fliesen',2),(21,'Haustechnik & Sicherheit',2),(22,'Heizen',2),(23,'Holz',2),(24,'Kamine, Öfen & Zubehör',2),(25,'Klebestoffe',2),(26,'Klima & Lüftung',2),(27,'Treppen & Geländer',2),(28,'Anzucht, Gewächshäuser & Hochbeete',6),(29,'Auto & Fahrrad',6),(30,'Carports & Terrassenüberdachungen',6),(31,'Erden, Dünger & Pflanzenschutz',6),(32,'Garten- & Gerätehäuser',6),(33,'Gartenbau & Landschaftsbau',6),(34,'Gartenbewässerung',6),(35,'Gartendekoration & Pflanzgefäße',6),(36,'Gartenmaschinen',6),(37,'Gartenmöbel',6),(38,'Gertenhandwerkzeuge',6),(39,'Grills & Grillzubehör',6),(40,'Outdoor & Spiel',6),(41,'Pflanzen',6),(42,'Pools & Poolzubehör',6),(43,'Sonnen- & Sichtschutz',6),(44,'Tierbedarf',6),(45,'Zäune',6),(46,'Eisenwaren & Beschläge',12),(47,'Elektrowerkzeuge',12),(48,'Handwerkzeug',12),(49,'Messwerkzeuge',12),(50,'Reinigungsmaschinen',12),(51,'Werkstatteinrichtung',12),(52,'Aufbewahrung & Ordnungssysteme',14),(53,'Dekoration & Heimtextilien',14),(54,'Gardinen & Vorhänge',14),(55,'Haushaltswaren',14),(56,'Jalousien, Rollos & Plissees',14),(57,'Küchen',14),(58,'Lampen, Leuchten & Smart Home Licht',14),(59,'Reinigungsgeräte',14),(60,'Tapeten & Tapezierwerkzeug',14),(61,'Teppiche & Teppichböden',14),(62,'Umwelttests & Schadstoffanalysen',14),(63,'Umzugsbedarf',14),(64,'Weihnachten',14);
/*!40000 ALTER TABLE `kategorie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 16:22:05
