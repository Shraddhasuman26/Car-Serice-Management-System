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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmpID` int NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Emp_Phn_no` decimal(10,0) DEFAULT NULL,
  `Emp_name` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Exp` int DEFAULT NULL,
  `Prod_ID` int DEFAULT NULL,
  `Dept_no` int DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  UNIQUE KEY `idx_employee_Prod_ID` (`Prod_ID`),
  KEY `Product_IDFK_idx` (`Prod_ID`),
  KEY `deptno_fk_idx` (`Dept_no`),
  CONSTRAINT `deptno_fk` FOREIGN KEY (`Dept_no`) REFERENCES `department` (`Dept_no`),
  CONSTRAINT `Prod_IDFK` FOREIGN KEY (`Prod_ID`) REFERENCES `inventory2` (`Prod_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (3001,'shriyaverma23@gmail.com',8249567674,'Shriya Verma','Female',0,54678,1),(3002,'HimanshiKhurrana234@gmail.com',7979567674,'Himanshi Khurrana','Female',6,54689,2),(3003,'abirsingha@gmail.com',9249562343,'Abir Singh','Male',3,54679,2),(3004,'rishitashetty@gmail.com',7248907674,'Rishita Shetty','Female',2,54683,3),(3005,'arpit34@gmail.com',7978567674,'Arpit Mukherjee','Male',4,54645,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
