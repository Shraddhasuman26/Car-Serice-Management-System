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
-- Table structure for table `client1`
--

DROP TABLE IF EXISTS `client1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client1` (
  `Last_serviced_car` date DEFAULT NULL,
  `Car_model` varchar(20) DEFAULT NULL,
  `Emp_ID` int DEFAULT NULL,
  UNIQUE KEY `idx_client1_Emp_ID` (`Emp_ID`),
  KEY `idx_client1_Last_serviced_car` (`Last_serviced_car`),
  KEY `EmpIDFK4_idx` (`Emp_ID`),
  CONSTRAINT `EmpIDFK4` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`EmpID`),
  CONSTRAINT `FK_last_serviced` FOREIGN KEY (`Last_serviced_car`) REFERENCES `client2` (`Last_serviced`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client1`
--

LOCK TABLES `client1` WRITE;
/*!40000 ALTER TABLE `client1` DISABLE KEYS */;
INSERT INTO `client1` VALUES ('2021-05-10','Volskwagen Polo',3001),('2021-02-11','Suzuki Wagon-R',3002),('2021-02-23','Honda City',3003),('2021-10-12','Volskwagen Vento',3004),('2021-09-16','Baleno',3005);
/*!40000 ALTER TABLE `client1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-04 18:58:54
