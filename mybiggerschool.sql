-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: mybiggerschool
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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `code` varchar(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('CI4003','Object oriented programming and data structures'),('CI4007','English'),('CI7101','Artificial intelligence'),('dads4002','Basic programming and database management'),('DADS4003','English'),('DADS7202','Deep learning'),('DADS7206','Image and video analytics'),('DADS9000','Independent study'),('DADS9004','Thesis'),('LM4002','English'),('LM5002','Logistics and supply chain management'),('LM6004','Supply chain optimization');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abbrv` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abbrv_UNIQUE` (`abbrv`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'DADS','Data Analytics and Data Science'),(2,'MADT','Management of Analytics and Data Technologies'),(3,'LM','Logistics Management'),(4,'ITM','Information Technology Management'),(5,'CSDT','Computer Science - Deep Technology and Intelligent System'),(6,'ISM','Information Systems Management'),(7,'ACT','Actuarial Science and Risk Management'),(8,'STAT','Statistics'),(9,'','Citizen Data Sciences');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_tea_class`
--

DROP TABLE IF EXISTS `stu_tea_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stu_tea_class` (
  `year` int NOT NULL,
  `semester` tinyint NOT NULL,
  `class_code` varchar(10) NOT NULL,
  `teacher_id` int NOT NULL,
  `student_id` char(10) NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`year`,`semester`,`class_code`,`teacher_id`,`student_id`),
  KEY `stu_stc_stuID_idx` (`student_id`),
  KEY `tea_stc_teaID_idx` (`teacher_id`),
  KEY `cls_stc_clsID_idx` (`class_code`),
  CONSTRAINT `cls_stc_clsID` FOREIGN KEY (`class_code`) REFERENCES `class` (`code`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `stu_stc_stuID` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tea_stc_teaID` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_tea_class`
--

LOCK TABLES `stu_tea_class` WRITE;
/*!40000 ALTER TABLE `stu_tea_class` DISABLE KEYS */;
INSERT INTO `stu_tea_class` VALUES (2564,1,'dads4003',6,'6220000040',NULL),(2564,1,'dads7206',1,'6220000040',NULL),(2564,2,'dads4002',1,'6220000001',NULL),(2564,2,'dads4002',1,'6220000030',NULL),(2564,3,'dads4003',7,'6020000010',NULL),(2564,3,'dads4003',7,'6220000020',NULL),(2564,3,'dads4003',7,'6220000030',NULL),(2564,3,'dads4003',7,'6220000040',NULL);
/*!40000 ALTER TABLE `stu_tea_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` char(10) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maj_stu_majID_idx` (`major_id`),
  CONSTRAINT `maj_stu_majID` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('6020000010','ดวงดาว','สุกสว่าง',NULL,'1980-07-31',4),('6220000001','มานี','แสงดาว','manee@gmail.com','1990-04-15',1),('6220000020','ปิติ','ดรุณศึกษา','darun_piti@hotmail.com','1980-07-31',2),('6220000030','ชูใจ','ลูกใครแน่',NULL,'1995-12-25',1),('6220000040','มานะ','แสงดาว',NULL,'1990-04-15',5),('6410000011','สมยศ','สุขยิ่ง',NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(70) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'ฐิติรัตน์','ศิริบวรรัตนกุล','thitirat@as.nida.ac.th'),(4,'ธนชาติ','ฤทธิ์บำรุง',NULL),(5,'ธนาสัย','สุคนธ์พันธุ์',NULL),(6,'อัลบัส','ดัมเบิลดอร์',NULL),(7,'เซเวอรัส','สเนป',NULL),(8,'วรพล','พงค์เพชร','worapol@as.nida.ac.th'),(10,'สราวุธ','จันทร์สุวรรณ',NULL);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 23:56:13
