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
-- Table structure for table `historie`
--

DROP TABLE IF EXISTS `historie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historie` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `mitarbeiter` int NOT NULL,
  `produkt` int NOT NULL,
  `datum` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `mitarbeiter` (`mitarbeiter`),
  KEY `produkt` (`produkt`),
  CONSTRAINT `historie_ibfk_1` FOREIGN KEY (`mitarbeiter`) REFERENCES `mitarbeiter` (`ID`),
  CONSTRAINT `historie_ibfk_2` FOREIGN KEY (`produkt`) REFERENCES `produkt` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historie`
--

LOCK TABLES `historie` WRITE;
/*!40000 ALTER TABLE `historie` DISABLE KEYS */;
INSERT INTO `historie` VALUES (1,14,1,'2023-10-03'),(2,15,2,'2023-10-06'),(3,14,3,'2023-10-12'),(4,52,4,'2023-10-15'),(5,50,5,'2023-10-18'),(6,60,6,'2023-10-21'),(7,53,7,'2023-10-24'),(8,76,8,'2023-10-27'),(9,54,9,'2023-10-05'),(10,51,10,'2023-10-09'),(11,62,11,'2023-10-10'),(12,48,12,'2023-10-14'),(13,23,13,'2023-10-17'),(14,74,14,'2023-10-20'),(15,41,15,'2023-10-30');
/*!40000 ALTER TABLE `historie` ENABLE KEYS */;
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
