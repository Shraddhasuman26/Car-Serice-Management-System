-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: car_service1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `client2`
--

DROP TABLE IF EXISTS `client2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client2` (
  `Client_ID` int DEFAULT NULL,
  `Client_name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Last_serviced` date DEFAULT NULL,
  `Freq` int DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  UNIQUE KEY `idx_client2_Client_ID` (`Client_ID`),
  KEY `idx_client2_Last_serviced` (`Last_serviced`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client2`
--

LOCK TABLES `client2` WRITE;
/*!40000 ALTER TABLE `client2` DISABLE KEYS */;
INSERT INTO `client2` VALUES (101,'Shraddha','shraddhasuman2526@gmail.com','2021-05-10',4,'Plot-2C/343,CDA,CUTTACK'),(102,'Rashi','rashi26@gmail.com','2021-02-11',2,'House no-101,Street No.12,Pune'),(103,'Aasif','aasif23@gmail.com','2021-02-23',1,'Flat no-218,Building - 3,Shree Enclave,Chennai'),(105,'Shreya','shreya14@gmail.com','2021-10-12',2,'House no-105,Street No.3,Pune'),(104,'Anushka','anushkap13@gmail.com','2021-09-16',2,'Duplex no-9,Sector-43,Ambala');
/*!40000 ALTER TABLE `client2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-04 18:58:53
