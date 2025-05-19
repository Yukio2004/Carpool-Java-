-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: users
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `campus` varchar(50) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Mike','Douglas College',NULL,NULL),(2,'Jay','Douglas College',NULL,NULL),(3,'Jay','Langara College',NULL,NULL),(4,'Sam','Langara College',NULL,NULL),(5,'Jaky','Langara College',NULL,NULL),(6,'Tom','Alexander College',NULL,NULL),(7,'Tim','Alexander College',NULL,NULL),(8,'Fraser','SFU',NULL,NULL),(9,'Jack','SFU',NULL,NULL),(10,'Jack','UBC',NULL,NULL),(11,'Bernie','UBC',NULL,NULL);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fridayd`
--

DROP TABLE IF EXISTS `fridayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fridayd` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `ff_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fridayd`
--

LOCK TABLES `fridayd` WRITE;
/*!40000 ALTER TABLE `fridayd` DISABLE KEYS */;
/*!40000 ALTER TABLE `fridayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fridayp`
--

DROP TABLE IF EXISTS `fridayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fridayp` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `ffp_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fridayp`
--

LOCK TABLES `fridayp` WRITE;
/*!40000 ALTER TABLE `fridayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `fridayp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mondayd`
--

DROP TABLE IF EXISTS `mondayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mondayd` (
  `user_id` int NOT NULL,
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fm_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mondayd`
--

LOCK TABLES `mondayd` WRITE;
/*!40000 ALTER TABLE `mondayd` DISABLE KEYS */;
INSERT INTO `mondayd` VALUES (11,'20:20:20','20:20:20','20:20:20','20:20:20','20:20:20','20:20:20');
/*!40000 ALTER TABLE `mondayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mondayp`
--

DROP TABLE IF EXISTS `mondayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mondayp` (
  `user_id` int NOT NULL,
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fmp_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mondayp`
--

LOCK TABLES `mondayp` WRITE;
/*!40000 ALTER TABLE `mondayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mondayp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `campus` varchar(50) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saturdayd`
--

DROP TABLE IF EXISTS `saturdayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saturdayd` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fs_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saturdayd`
--

LOCK TABLES `saturdayd` WRITE;
/*!40000 ALTER TABLE `saturdayd` DISABLE KEYS */;
/*!40000 ALTER TABLE `saturdayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saturdayp`
--

DROP TABLE IF EXISTS `saturdayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saturdayp` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fsp_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saturdayp`
--

LOCK TABLES `saturdayp` WRITE;
/*!40000 ALTER TABLE `saturdayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `saturdayp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thursdayd`
--

DROP TABLE IF EXISTS `thursdayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thursdayd` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fth_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thursdayd`
--

LOCK TABLES `thursdayd` WRITE;
/*!40000 ALTER TABLE `thursdayd` DISABLE KEYS */;
/*!40000 ALTER TABLE `thursdayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thursdayp`
--

DROP TABLE IF EXISTS `thursdayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thursdayp` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fthp_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thursdayp`
--

LOCK TABLES `thursdayp` WRITE;
/*!40000 ALTER TABLE `thursdayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `thursdayp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuesdayd`
--

DROP TABLE IF EXISTS `tuesdayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuesdayd` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `ftu_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuesdayd`
--

LOCK TABLES `tuesdayd` WRITE;
/*!40000 ALTER TABLE `tuesdayd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuesdayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuesdayp`
--

DROP TABLE IF EXISTS `tuesdayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tuesdayp` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `ftup_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuesdayp`
--

LOCK TABLES `tuesdayp` WRITE;
/*!40000 ALTER TABLE `tuesdayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuesdayp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wednesdayd`
--

DROP TABLE IF EXISTS `wednesdayd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wednesdayd` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fw_key` FOREIGN KEY (`user_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wednesdayd`
--

LOCK TABLES `wednesdayd` WRITE;
/*!40000 ALTER TABLE `wednesdayd` DISABLE KEYS */;
/*!40000 ALTER TABLE `wednesdayd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wednesdayp`
--

DROP TABLE IF EXISTS `wednesdayp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wednesdayp` (
  `departure_time1` time DEFAULT NULL,
  `departure_time2` time DEFAULT NULL,
  `departure_time3` time DEFAULT NULL,
  `leaving_time1` time DEFAULT NULL,
  `leaving_time2` time DEFAULT NULL,
  `leaving_time3` time DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fwp_key` FOREIGN KEY (`user_id`) REFERENCES `passengers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wednesdayp`
--

LOCK TABLES `wednesdayp` WRITE;
/*!40000 ALTER TABLE `wednesdayp` DISABLE KEYS */;
/*!40000 ALTER TABLE `wednesdayp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 15:15:22
