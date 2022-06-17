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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` int NOT NULL,
  `EMPLOYEE_NAME` tinytext NOT NULL,
  `DEPT_ID` varchar(5) DEFAULT NULL,
  `DESIGNATION_ID` varchar(8) DEFAULT NULL,
  `CONTACT` int NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `AGE` int DEFAULT NULL,
  `EMAIL` varchar(25) DEFAULT NULL,
  `GENDER` char(6) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  UNIQUE KEY `CONTACT` (`CONTACT`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  KEY `DEPT_ID` (`DEPT_ID`),
  KEY `DESIGNATION_ID` (`DESIGNATION_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`DESIGNATION_ID`) REFERENCES `designation` (`DESIGNATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'RAMAN MATHUR','O3223','EA_002',987654032,'161,kunj vihar',34,'ramanmathur23@gmail.com','Male'),(2,'NAMAN MATHUR','H1834','EA_007',943654302,'161,kunj vihar',36,'naman15mathur@gmail.com','Male'),(3,'JITENDRA KUMAR SAHAIYA','L1201','EA_006',943765802,'161, SP\'s residences, New Delhi',30,'jitu45kumar@gmail.com','Male'),(4,'Amriti ','M1440','EA_005',943658029,'151,kunj vihar,Banglore',30,'amriti23@gmail.com','Female'),(5,'Mohd. Shahrukh','M2013','EA_003',945218029,'11, JP Road, New Delhi',30,'shahrukh09@gmail.com','Male'),(6,'Asmi SIngh','O3223','EA_002',94365867,'73,Ashok COlony,Mumbai',30,'asmi4singh@gmail.com','Female'),(7,'Shanaya Kapoor','P2040','EA_001',84365867,'43S, Lekhraj nagar, bareilly ',32,'shanaya4kapoor@gmail.com','Female'),(8,'Palak kumar','M2013','TL_006',94765867,'76, Amar nagar,Guwahati',29,'palak5kumar@gmail.com','Female'),(9,'Raj Kumar','D4500','TL_005',84345867,'43,Balabh nagar, New Delhi',28,'raj05kumar@gmail.com','Male'),(10,'Amrit Pal ','L1201','TL_004',84385867,'12,rakesh nagar, TiruvananthPuram',32,'amrit69pal@gmail.com','Male'),(11,'Nandini Aggarwal','P2040','TL_003',84375867,'11, SP\'s residences, Mumbai',27,'nandini62wal@gmail.com','Female'),(12,'Aanandi Singh','O3223','TL_002',74365867,'107,Rohalal Nagar, Gwlior',30,'anandi7singh@gmail.com','Female'),(13,'Aman Singhla','A3302','TL_001',74485867,'6, SP\'s residences, New Delhi',27,'amansinghla9@gmail.com','Male'),(14,'Akriti Kumar','D4500','M_007',74366767,'13,Kunj Nagar, Gaziabad',26,'akriti3kumar@gmail.com','Female'),(15,'Geeta Singh','A3302','M_006',74935867,'1107,Rohalal Nagar, Gwalior',30,'geeta67@gmail.com','Female'),(16,'Namriti','P2040','M_005',74845867,'13,Kunj Nagar, Lucknow',27,'namriti8@gmail.com','Female'),(17,'Amit singh','L1201','M_004',74825867,'12,rakesh nagar, Port Blair',29,'amit23singh@gmail.com','Male'),(18,'Arvind Kumar ','M2013','M_003',76545867,'43S, Lekhraj nagar, bareilly',23,'arvind87kumar@gmail.com','Male'),(19,'Manan Seth','A3302','M_002',74848567,'43,Balabh nagar, New Delhi',30,'manan87seth@gmail.com','Male'),(20,'Simran MATHUR','O3223','M_001',74375867,'161,kunj vihar, Manipur',30,'simranmathur23@gmail.com','Female'),(21,'Akhil Panwar','M1440','SM_001',74945867,'46, SMriti Vihar',42,'akhil32panwar@gmail.com','Male'),(22,'Amrendra KUMAR SAHAIYA','H1834','CO_006',746785867,'161, SP\'s residences, Aola',30,'amrendra3kumar@gmail.com','Male'),(23,'Smriti ','L1201','CO_005',74849467,'178,kunj vihar,Banglore',30,'smriti63@gmail.com','Female'),(24,'Mohd. Raquif','M2013','CO_004',74385867,'41, JP Road, Lucknow',30,'raquif09@gmail.com','Male'),(25,'Asmita Singh','A3302','CO_003',74820867,'34,Ashok COlony,Chandigarh',30,'asmita79singh@gmail.com','Female'),(26,'Simran Kapoor','O3223','CO_002',64845867,'43S, Lekhraj nagar, Pilibhit ',32,'simran8kapoor@gmail.com','Female'),(27,'Manvika kumar','M1440','CO_001',84945867,'67, Amar nagar,Guwahati',29,'manvika05kumar@gmail.com','Female'),(28,'Tanish Mahajan','M1440','MD_001',79045867,'43,Balabh nagar, New Delhi',28,'tanish7@gmail.com','Male'),(29,'Vaiibhav Thatai ','M1440','SM_001',74944867,'12,rakesh nagar, Kanpur',32,'vaiibhav23@gmail.com','Male'),(30,'Manila Aggarwal','O3223','CO_002',74878867,'11, SP\'s residences, Mumbai',27,'manika43@gmail.com','Female');
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

-- Dump completed on 2021-12-01 18:37:20
