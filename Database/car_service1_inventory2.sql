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
-- Table structure for table `inventory2`
--

DROP TABLE IF EXISTS `inventory2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory2` (
  `Prod_ID` int DEFAULT NULL,
  `Price` decimal(7,2) DEFAULT NULL,
  `Order_status` varchar(30) DEFAULT NULL,
  `Prod_brand` varchar(30) DEFAULT NULL,
  `Prod_class` varchar(30) DEFAULT NULL,
  `Ordered_prods` varchar(30) DEFAULT NULL,
  UNIQUE KEY `idx_inventory2_Prod_ID` (`Prod_ID`),
  KEY `orderstatus_fk_idx` (`Order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory2`
--

LOCK TABLES `inventory2` WRITE;
/*!40000 ALTER TABLE `inventory2` DISABLE KEYS */;
INSERT INTO `inventory2` VALUES (54678,456.00,'Confirmed','Alto','Infotainment','Speakers, Smartplay Studios'),(54645,3500.00,'Confirmed','Maruti Suzuki','Automobile','Ignition Coil'),(54679,3468.00,'Waiting','Hitachi','Automobile','Headlight lamp'),(54683,1200.00,'Waiting','Baleno','Accessories','3D floormat,Window regulator'),(54689,5300.00,'Waiting','Scorpio','Gear','Track control Lamp');
/*!40000 ALTER TABLE `inventory2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-04 18:58:52
