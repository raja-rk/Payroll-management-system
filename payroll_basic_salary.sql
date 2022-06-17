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
-- Table structure for table `basic_salary`
--

DROP TABLE IF EXISTS `basic_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_salary` (
  `Salary_ID` int NOT NULL,
  `Designation_ID` varchar(8) NOT NULL,
  `Dept_ID` varchar(5) NOT NULL,
  `Salary` mediumtext NOT NULL,
  PRIMARY KEY (`Salary_ID`),
  KEY `Designation_ID` (`Designation_ID`),
  KEY `Dept_ID` (`Dept_ID`),
  CONSTRAINT `basic_salary_ibfk_1` FOREIGN KEY (`Designation_ID`) REFERENCES `designation` (`DESIGNATION_ID`),
  CONSTRAINT `basic_salary_ibfk_2` FOREIGN KEY (`Dept_ID`) REFERENCES `department` (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_salary`
--

LOCK TABLES `basic_salary` WRITE;
/*!40000 ALTER TABLE `basic_salary` DISABLE KEYS */;
INSERT INTO `basic_salary` VALUES (1,'MD_001','M1440','100000'),(2,'CS_001','M1440','120000'),(3,'CO_001','M1440','80000'),(4,'CO_001','O3223','45000'),(5,'CO_001','A3302','45000'),(6,'CO_001','M2013','25000'),(7,'CO_001','L1201','100000'),(8,'CO_001','H1834','80000'),(9,'SM_001','M1440','100000'),(10,'M_001','O3223','34000'),(11,'M_002','A3302','50000'),(12,'M_003','M2013','25000'),(13,'M_004','L1201','85000'),(14,'M_005','P2040','28000'),(15,'M_006','A3302','65000'),(16,'M_007','D4500','75000'),(17,'TL_001','A3302','75000'),(18,'TL_002','O3223','30000'),(19,'TL_003','P2040','30000'),(20,'TL_004','L1201','90000'),(21,'TL_005','D4500','55000'),(22,'TL_006','M2013','45000'),(23,'EA_001','P2040','40000'),(24,'EA_002','O3223','24000'),(25,'EA_003','M2013','30000'),(26,'EA_004','A3302','65000'),(27,'EA_005','M1440','110000'),(28,'EA_006','L1201','80000'),(29,'EA_007','H1834','60000');
/*!40000 ALTER TABLE `basic_salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 18:37:18
