-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: payroll
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `payroll_report`
--

DROP TABLE IF EXISTS `payroll_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_report` (
  `PAYROLL_ID` int NOT NULL AUTO_INCREMENT,
  `EMP_ID` int DEFAULT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `DESIGNATION_ID` varchar(8) DEFAULT NULL,
  `SALARY_ID` int NOT NULL,
  `BONUS_ID` varchar(10) DEFAULT '0',
  `WORKING_MONTH` varchar(30) DEFAULT (monthname(now())),
  `REPORT_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TOTAL_PAY` mediumtext NOT NULL,
  PRIMARY KEY (`PAYROLL_ID`),
  KEY `EMP_ID` (`EMP_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  KEY `DESIGNATION_ID` (`DESIGNATION_ID`),
  KEY `SALARY_ID` (`SALARY_ID`),
  KEY `BONUS_ID` (`BONUS_ID`),
  CONSTRAINT `payroll_report_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`),
  CONSTRAINT `payroll_report_ibfk_2` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`),
  CONSTRAINT `payroll_report_ibfk_3` FOREIGN KEY (`DESIGNATION_ID`) REFERENCES `designation` (`DESIGNATION_ID`),
  CONSTRAINT `payroll_report_ibfk_4` FOREIGN KEY (`SALARY_ID`) REFERENCES `basic_salary` (`Salary_ID`),
  CONSTRAINT `payroll_report_ibfk_5` FOREIGN KEY (`BONUS_ID`) REFERENCES `bonus` (`BONUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_report`
--

LOCK TABLES `payroll_report` WRITE;
/*!40000 ALTER TABLE `payroll_report` DISABLE KEYS */;
INSERT INTO `payroll_report` VALUES (1,1,'O3223','EA_002',24,'b1','December','2021-12-01 13:03:59','30000'),(2,10,'L1201','TL_004',20,'b10','December','2021-12-01 13:03:59','95500'),(3,11,'P2040','TL_003',19,'b11','December','2021-12-01 13:03:59','35000'),(4,12,'O3223','TL_002',18,'b12','December','2021-12-01 13:03:59','33600'),(5,13,'A3302','TL_001',17,'b13','December','2021-12-01 13:03:59','79500'),(6,14,'D4500','M_007',16,'b14','December','2021-12-01 13:03:59','81000'),(7,15,'A3302','M_006',15,'b15','December','2021-12-01 13:03:59','71500'),(8,16,'P2040','M_005',14,'b16','December','2021-12-01 13:03:59','32500'),(9,17,'L1201','M_004',13,'b17','December','2021-12-01 13:03:59','89000'),(10,18,'M2013','M_003',12,'b18','December','2021-12-01 13:03:59','30000'),(11,19,'A3302','M_002',11,'b19','December','2021-12-01 13:03:59','56500'),(12,2,'H1834','EA_007',29,'b2','December','2021-12-01 13:03:59','67000'),(13,20,'O3223','M_001',10,'b20','December','2021-12-01 13:03:59','38500'),(14,21,'M1440','SM_001',9,'b21','December','2021-12-01 13:03:59','103500'),(15,27,'M1440','CO_001',3,'b27','December','2021-12-01 13:03:59','85500'),(16,28,'M1440','MD_001',1,'b28','December','2021-12-01 13:03:59','103500'),(17,29,'M1440','SM_001',9,'b29','December','2021-12-01 13:03:59','106500'),(18,3,'L1201','EA_006',28,'b3','December','2021-12-01 13:03:59','85000'),(19,4,'M1440','EA_005',27,'b4','December','2021-12-01 13:03:59','116500'),(20,5,'M2013','EA_003',25,'b5','December','2021-12-01 13:03:59','34000'),(21,6,'O3223','EA_002',24,'b6','December','2021-12-01 13:03:59','28500'),(22,7,'P2040','EA_001',23,'b7','December','2021-12-01 13:03:59','48000'),(23,8,'M2013','TL_006',22,'b8','December','2021-12-01 13:03:59','51500'),(24,9,'D4500','TL_005',21,'b9','December','2021-12-01 13:03:59','59000');
/*!40000 ALTER TABLE `payroll_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 18:37:17
