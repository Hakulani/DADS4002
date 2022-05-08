-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cafe
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cafe
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cafe` DEFAULT CHARACTER SET utf8 ;
USE `cafe` ;

-- -----------------------------------------------------
-- Table `cafe`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafe`.`customer` (
  `Customer_id` CHAR(4) NOT NULL,
  `Customer_firstname` VARCHAR(100) NOT NULL,
  `Customer_lastname` VARCHAR(100) NOT NULL,
  `Customer_age` INT NOT NULL,
  `Customer_points` INT NOT NULL,
  `Customer_gender` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cafe`.`menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafe`.`menu` (
  `Menu_id` CHAR(4) NOT NULL,
  `Menu_name` VARCHAR(100) NOT NULL,
  `Menu_SellingPrice` INT NOT NULL,
  `Menu_cost` INT NOT NULL,
  `Menu_Type` VARCHAR(20) NOT NULL,
  `Menu_Categories` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Menu_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cafe`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafe`.`store` (
  `Store_ID` CHAR(4) NOT NULL,
  `Store_name` VARCHAR(50) NOT NULL,
  `Store_province` VARCHAR(70) NOT NULL,

  PRIMARY KEY (`Store_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `cafe`.`order_record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cafe`.`order_record` (
  `Order_NO` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Times` DATETIME NOT NULL,
  `Quantity` INT NOT NULL,
  `Menu_id` CHAR(4) NOT NULL,
  `Customer_id` CHAR(4) NOT NULL,
  `Discount` FLOAT NOT NULL,
  `Profit` FLOAT NOT NULL,
  `Amount` FLOAT NOT NULL,
  `Order_point` INT NOT NULL,
  `Store_id` CHAR(4) NOT NULL,
  PRIMARY KEY (`Order_NO`),
  INDEX `Store_ID_idx` (`Store_id` ASC) VISIBLE,
  INDEX `Menu_id_idx` (`Menu_id` ASC) VISIBLE,
  INDEX `Customer_id_idx` (`Customer_id` ASC) VISIBLE,
  CONSTRAINT `Customer_id`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `cafe`.`customer` (`Customer_id`),
  CONSTRAINT `Menu_id`
    FOREIGN KEY (`Menu_id`)
    REFERENCES `cafe`.`menu` (`Menu_id`),
  CONSTRAINT `Store_ID`
    FOREIGN KEY (`Store_id`)
    REFERENCES `cafe`.`store` (`Store_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'DADS','Data Analytics and Data Science'),(2,'MADT','Management of Analytics and Data Technologies'),(3,'LM','Logistics Management'),(4,'ITM','Information Technology Management'),(5,'CSDT','Computer Science - Deep Technology and Intelligent System'),(6,'ISM','Information Systems Management'),(7,'ACT','Actuarial Science and Risk Management'),(8,'STAT','Statistics'),(9,'','Citizen Data Sciences');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `stu_tea_class` WRITE;
/*!40000 ALTER TABLE `stu_tea_class` DISABLE KEYS */;
INSERT INTO `stu_tea_class` VALUES (2564,1,'dads4003',6,'6220000040',NULL),(2564,1,'dads7206',1,'6220000040',NULL),(2564,2,'dads4002',1,'6220000001',NULL),(2564,2,'dads4002',1,'6220000030',NULL),(2564,3,'dads4003',7,'6020000010',NULL),(2564,3,'dads4003',7,'6220000020',NULL),(2564,3,'dads4003',7,'6220000030',NULL),(2564,3,'dads4003',7,'6220000040',NULL);
/*!40000 ALTER TABLE `stu_tea_class` ENABLE KEYS */;
UNLOCK TABLES;

--
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('6020000010','ดวงดาว','สุกสว่าง',NULL,'1980-07-31',4),('6220000001','มานี','แสงดาว','manee@gmail.com','1990-04-15',1),('6220000020','ปิติ','ดรุณศึกษา','darun_piti@hotmail.com','1980-07-31',2),('6220000030','ชูใจ','ลูกใครแน่',NULL,'1995-12-25',1),('6220000040','มานะ','แสงดาว',NULL,'1990-04-15',5),('6410000011','สมยศ','สุขยิ่ง',NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

-


 -- Dump data in member table
LOCK TABLES `cafe`.`customer` WRITE;
INSERT INTO `cafe`.`customer` VALUES ('0001','จารุวรรณ','เหลืองสีนาค',20,5,'หญิง'),('0002','ศิรินทิพย์','ชัยชนะ',14,10,'ชาย'),('0003','ณัฐมน','สุขเกษม',37,14,'หญิง'),
('0004','เจษฎา','กอวังตะโก',31,22,'หญิง'),('0005','จุฑาทิพย์','ชาญศิริ',34,13,'หญิง'),('0006','สุพรรษา','ประเสริฐสม',30,2,'หญิง'),('0007','นูรีซัน','นูรีซัน',29,3,'หญิง'),

]
;
UNLOCK TABLES;
