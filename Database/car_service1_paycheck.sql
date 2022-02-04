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
-- Table structure for table `paycheck`
--

DROP TABLE IF EXISTS `paycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paycheck` (
  `Emp_ID` int DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `No_of_Clients` int DEFAULT NULL,
  `No_of_Days` int DEFAULT NULL,
  `No_of_Hours` time DEFAULT NULL,
  `Payment_method` varchar(20) DEFAULT NULL,
  `Bonus` decimal(5,2) DEFAULT NULL,
  UNIQUE KEY `idx_paycheck_Emp_ID` (`Emp_ID`),
  CONSTRAINT `EmpIDFK2` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paycheck`
--

LOCK TABLES `paycheck` WRITE;
/*!40000 ALTER TABLE `paycheck` DISABLE KEYS */;
INSERT INTO `paycheck` VALUES (3001,'Shriya Verma',14,26,'208:00:00','Cheque',140.00),(3002,'Himanshi Khurrana',0,20,'160:00:00','Cheque',0.00),(3003,'Abir Singh',10,25,'200:00:00','Cheque',100.00),(3004,'Rishita Shetty',10,31,'248:00:00','Cheque',300.00),(3005,'Arpit Mukherjee',17,30,'240:00:00','Cheque',270.00);
/*!40000 ALTER TABLE `paycheck` ENABLE KEYS */;
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
