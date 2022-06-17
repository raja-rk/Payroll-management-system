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
-- Table structure for table `bonus`
--

DROP TABLE IF EXISTS `bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus` (
  `BONUS_ID` varchar(10) NOT NULL,
  `EMP_ID` int NOT NULL,
  `EXTRA_HOURS` int DEFAULT NULL,
  `FESTIVE_BONUS` int DEFAULT NULL,
  `AMOUNT` int DEFAULT NULL,
  `Months` char(10) DEFAULT NULL,
  PRIMARY KEY (`BONUS_ID`),
  KEY `FK_BONUS` (`EMP_ID`),
  CONSTRAINT `FK_BONUS` FOREIGN KEY (`EMP_ID`) REFERENCES `employee` (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus` DISABLE KEYS */;
INSERT INTO `bonus` VALUES ('b1',1,40,2000,6000,'december'),('b10',10,35,2000,5500,'december'),('b11',11,30,2000,5000,'december'),('b12',12,16,2000,3600,'december'),('b13',13,25,2000,4500,'december'),('b14',14,40,2000,6000,'december'),('b15',15,45,2000,6500,'december'),('b16',16,25,2000,4500,'december'),('b17',17,20,2000,4000,'december'),('b18',18,30,2000,5000,'december'),('b19',19,45,2000,6500,'december'),('b2',2,50,2000,7000,'december'),('b20',20,25,2000,4500,'december'),('b21',21,15,2000,3500,'december'),('b22',22,10,2000,3000,'november'),('b23',23,20,2000,4000,'december'),('b24',24,30,2000,5000,'december'),('b25',25,45,2000,6500,'december'),('b26',26,40,2000,6000,'december'),('b27',27,35,2000,5500,'december'),('b28',28,15,2000,3500,'december'),('b29',29,45,2000,6500,'december'),('b3',3,30,2000,5000,'december'),('b30',30,40,2000,6000,'december'),('b4',4,45,2000,6500,'december'),('b5',5,20,2000,4000,'december'),('b6',6,25,2000,4500,'december'),('b7',7,60,2000,8000,'december'),('b8',8,45,2000,6500,'december'),('b9',9,20,2000,4000,'december');
/*!40000 ALTER TABLE `bonus` ENABLE KEYS */;
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
