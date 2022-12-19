-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laundry
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `User_ID` varchar(7) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Reservation_Date` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `Reservation_Date_idx` (`Reservation_Date`),
  CONSTRAINT `Reservation_Date` FOREIGN KEY (`Reservation_Date`) REFERENCES `timeslot` (`Reservation_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('UnitA1','Jk098321','s@gmail.com','Thursday 0-2am','Marcus','Benoit',1),('UnitA10',NULL,NULL,NULL,NULL,NULL,10),('UnitA11',NULL,NULL,NULL,NULL,NULL,11),('UnitA12',NULL,NULL,NULL,NULL,NULL,12),('UnitA13',NULL,NULL,NULL,NULL,NULL,13),('UnitA14',NULL,NULL,NULL,NULL,NULL,14),('UnitA15',NULL,NULL,NULL,NULL,NULL,15),('UnitA16','JkJkJk','cantseeme@gmail.com','Wednesday 6-8am','John','Cena',16),('UnitA17',NULL,NULL,NULL,NULL,NULL,17),('UnitA18',NULL,NULL,NULL,NULL,NULL,18),('UnitA19','Jk098321','s@gmail.com',NULL,'Marcus','Benoit',19),('UnitA2','Jk098321','s@gmail.com',NULL,'Marcus','Benoit',2),('UnitA20',NULL,NULL,NULL,NULL,NULL,20),('UnitA3',NULL,NULL,NULL,NULL,NULL,3),('UnitA4',NULL,NULL,NULL,NULL,NULL,4),('UnitA5',NULL,NULL,NULL,NULL,NULL,5),('UnitA6',NULL,NULL,NULL,NULL,NULL,6),('UnitA7',NULL,NULL,NULL,NULL,NULL,7),('UnitA8',NULL,NULL,NULL,NULL,NULL,8),('UnitA9',NULL,NULL,NULL,NULL,NULL,9);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 14:13:25
