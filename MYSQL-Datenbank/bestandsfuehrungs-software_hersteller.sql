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
-- Table structure for table `hersteller`
--

DROP TABLE IF EXISTS `hersteller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hersteller` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hersteller`
--

LOCK TABLES `hersteller` WRITE;
/*!40000 ALTER TABLE `hersteller` DISABLE KEYS */;
INSERT INTO `hersteller` VALUES (1,'ABC Elektronik Global'),(7,'Aqua Bad & Sanitär'),(26,'AquaGlo'),(22,'AquaLux'),(42,'BloomBliss'),(51,'BuildForge'),(36,'BuildMasters'),(30,'BuildPro'),(14,'Casa Mia Wohnaccessoires'),(56,'ChicNest'),(11,'CleanPro Reinigungsmittel'),(24,'CleanScape'),(59,'CleanSweep'),(28,'ClearVista'),(61,'ComfortCraze'),(55,'CosyCove'),(47,'CraftForce'),(2,'Eagle Baustoffe'),(12,'EcoBuild Baustoffhandel'),(41,'EcoJoy'),(9,'Evergreen Pflanzen'),(37,'FixNest'),(17,'FreshAir Klimaanlagen'),(45,'FunField'),(43,'GardenGem'),(6,'Globus Farben'),(8,'Golden Harvest Bauzubehör'),(38,'GreenHaven'),(15,'HeatTech Heizungen'),(54,'HomeHarmony'),(27,'HygieneHarbor'),(39,'LeisureLife'),(58,'LifeLuxe'),(53,'MasterWorks'),(50,'MechTech'),(40,'NatureNook'),(13,'Natures Best Gartenbau'),(4,'Nordic Tools'),(46,'PowerTech'),(49,'PrecisionPrime'),(33,'PrimeConstruct'),(35,'ProCrafted'),(52,'ProEquip'),(23,'PureFlow'),(60,'PureHaven'),(31,'RenovaCraft'),(34,'RenovateRise'),(20,'Secure Locks Sicherheitstechnik'),(5,'Silverstar Wohnen'),(57,'SmartStyle'),(18,'SmartTech Elektroinstallation'),(25,'SpaMaster'),(3,'Sunrise Gartenmöbel'),(44,'SunSerenade'),(32,'SureBuild'),(19,'SwiftHome Möbel'),(10,'TechMaster Elektro'),(48,'ToolMasters'),(29,'WellnessWave'),(16,'WiseLight Beleuchtung');
/*!40000 ALTER TABLE `hersteller` ENABLE KEYS */;
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
