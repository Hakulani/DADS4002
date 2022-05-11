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


 -- Dump data in menu table
LOCK TABLES `menu` WRITE;
INSERT INTO `menu` VALUES (0001,'Espresso',35,20,'Hot','Coffee'),(0002,'Espresso',55,25,'Cold','Coffee'),(0003,'Espresso',60,30,'Frappe','Coffee'),(0004,'Espresso Con Panna',45,25,'Hot','Coffee'),
(0005,'Espresso Con Panna',65,30,Cold,'Coffee'),(0006,'Espresso Con Panna',70,35,'Frappe','Coffee'),(0007,'Americano',50,30,'Hot','Coffee'),(0008,'Americano',55,35,'Cold','Coffee'),
(0009,'Americano',60,40,'Frappe','Coffee'),(0010,'Long Black',50,30,'Hot','Coffee'),(0011,'Long Black',55,35,'Cold','Coffee'),(0012,'Long Black',60,40,'Frappe','Coffee'),
(0013,'Latte',50,30,'Hot','Coffee'),(0014,'Latte',65,35,'Cold','Coffee'),(0015,'Latte',70,40,'Frappe','Coffee'),(0016,'Piccolo',50,20,'Hot','Coffee'),
(0017,'Piccolo',55,25,'Cold','Coffee'),(0018,'Piccolo',60,30,'Frappe','Coffee'),(0019,'Cappuccino',45,25,'Hot','Coffee'),(0020,'Cappuccino',60,30,'Cold','Coffee'),
(0021,'Cappuccino',65,35,'Frappe','Coffee'),(0022,'Mocha',50,25,'Hot','Coffee'),(0023,'Mocha',60,30,'Cold','Coffee'),(0024,'Mocha',70,35,'Frappe','Coffee'),
(0025,'White Mocha',55,30,'Hot','Coffee'),(0026,'White Mocha',65,35,'Cold','Coffee'),(0027,'White Mocha',75,40,'Frappe','Coffee'),(0028,'Macchiato',50,25,'Hot','Coffee'),
(0029,'Macchiato',60,30,'Cold','Coffee'),(0030,'Macchiato',70,35,'Frappe','Coffee'),(0031,'Caramel Macchiato',55,30,'Hot','Coffee'),(0032,'Caramel Macchiato',65,35,'Cold','Coffee'),
(0033,'Caramel Macchiato',75,40,'Frappe','Coffee'),(0034,'Italian soda',50,20,'Cold','Coffee'),(0035,'Chocolate',45,25,'Hot','Coffee'),(0036,'Chocolate',50,30,'Cold','Coffee'),
(0037,'Chocolate',55,35,'Frappe','Coffee'),(0038,'Dark Chocolate',50,30,'Hot','Milk-Chocolate'),(0039,'Dark Chocolate',55,35,'Cold','Milk-Chocolate'),
(0040,'Dark Chocolate',60,40,'Frappe','Milk-Chocolate'),(0042,'Green Tea',40,15,'Hot','Tea'),(0043,'Green Tea',45,20,'Cold','Tea'),(0044,'Green Tea',50,25,'Frappe','Tea'),
(0045,'Milk Tea',45,20,'Hot','Tea'),(0046,'Milk Tea',50,25,'Cold','Tea'),(0047,'Milk Tea',55,30,'Frappe','Tea'),(0048,'Thai Tea',45,20,'Hot','Tea'),
(0049,'Thai Tea',50,25,'Cold','Tea'),(0050,'Thai Tea',55,30,'Frappe','Tea'),(0051,'Mango Sticky Rice',100,60,'Dessert','Dessert'),(0052,'Strawberry Pancake',150,90,'Dessert','Dessert'),
(0053,'Choc Banana Pancake',155,80,'Dessert','Dessert'),(0054,'Macaron',120,80,'Dessert','Dessert'),(0055,'Pudding',150,100,'Dessert','Dessert'),(0056,'Butter Cake',120,100,'Dessert','Dessert'),
(0057,'Whole Wheat Bread',150,120,'Dessert','Dessert'),(0058,'strawberry cheese pie',120,80,'Dessert','Dessert'),(0059,'Blueberry Cheese Pie',150,100,'Dessert','Dessert'),
(0060,'Honey Toast',150,80,'Dessert','Dessert'),(0061,'Toast',25,20,'Dessert','Dessert'),(0062,'Waffle',50,30,'Dessert','Dessert'),
(0063,'Cheese cake',125,80,'Dessert','Dessert'),(0064,'Custard Cake',60,40,'Dessert','Dessert'),
(0065,'Cookie',150,90,'Dessert','Dessert'),(0066,'Brownie',80,50,'Dessert','Dessert'),(0067,'Pancake',40,20,'Dessert','Dessert'),(0068,'Banana Cake',40,20,'Dessert','Dessert'),
(0069,'Muffin',90,30,'Dessert','Dessert'),(0070,'Cake Roll',45,20,'Dessert','Dessert'),(0071,'Basque Cheesecake',250,100,'Dessert','Dessert')
;
UNLOCK TABLES;


 -- Dump data in customer table
LOCK TABLES `cafe`.`customer` WRITE;
INSERT INTO `cafe`.`customer` VALUES ('0001','จารุวรรณ','เหลืองสีนาค',20,5,'หญิง'),('0002','ศิรินทิพย์','ชัยชนะ',14,10,'ชาย'),('0003','ณัฐมน','สุขเกษม',37,14,'หญิง'),
('0004','เจษฎา','กอวังตะโก',31,22,'หญิง'),('0005','จุฑาทิพย์','ชาญศิริ',34,13,'หญิง'),('0006','สุพรรษา','ประเสริฐสม',30,2,'หญิง'),('0007','นูรีซัน','สุขสันต์',29,3,'หญิง'),
('0008','วลัยลักษณ์','สัตถาผล',28,1,'หญิง'),('0009','เบญจมาภรณ์','หมูนสี',27,8,'หญิง'),('0010','ฉันชนก','เชิญขวัญ',26,4,'หญิง'),('0011','ธันยพร','หะพันธ์',25,15,'หญิง'),
('0012','อารีรัตน์','ศิริพันธ์',24,12,'หญิง'),('0013','สุนิสา','ศุขห่วง',23,3,'หญิง'),('0014','เกวลิน','จูเปาะ',22,11,'หญิง'),('0015','กัญญารัตน์','ประสพสุข',21,2,'หญิง'),
('0016','จิรัชญา','เสนานุช',20,6,'หญิง'),('0017','พรรธิดา','สืบจันทร์',19,12,'หญิง'),('0018','จุฑาทิพย์','วัณเพชร',17,2,'หญิง'),('0019','อุสรา','เจ็กแตงพะเนา',37,5,'หญิง'),
('0020','กัลยา','พานทอง',31,8,'หญิง'),('0021','รจนา','ขวัญเมือง',34,11,'ชาย'),('0022','กัณฑิมา','รามมีชัย',30,14,'ชาย'),('0023','กาญจนา','นาสร้อย',29,17,'ชาย'),
('0024','พอฤทัย','ลาภผล',28,20,'ชาย'),('0025','วราภรณ์','แซ่ลิ่ม',27,11,'ชาย'),('0026','ธิดารัตน์','วงศ์เสน',26,2,'หญิง'),('0027','กรรณิการ์','คงอาษา',25,6,'ชาย'),
('0028','แอนนา','สมบูรณ์สิงห์',24,23,'ชาย'),('0029','วริศรา','วงเวียน',23,35,'ชาย'),('0030','ภัสสร,'ศรีน้ำเงิน',17,3,'ชาย')
;
UNLOCK TABLES;
                                                                                     
  -- Dump data in menu table
LOCK TABLES `cafe`.`menu` WRITE;
INSERT INTO `cafe`.`menu` VALUES ('C001','Coffee's เซ็นทรัลพระราม3','กรุงเทพมหานคร'),('C002','Coffee's เซ็นทรัลพระราม9','กรุงเทพมหานคร'),('C003','Coffee's Centralนครราชสีมา','นครราชสีมา'),
('C004','Coffee's เซ็นทรัลศรีราชา','ชลบุรี'),('C005','Coffee's เซ็นทรัลอยุธยา','พระนครศรีอยุธยา'),('C006','Coffee's Centralมหาชัย','สมุทรสาคร'),
('C007','Coffee's เซ็นทรัลเชียงใหม่','เชียงใหม่'),('C008','Coffee's UnitedCenter(สีลม)','กรุงเทพมหานคร'),('C009','Coffee's สยามเซ็นเตอร์','กรุงเทพมหานคร'),('C010','Coffee's เซ็นจูรี่อนุสาวรีย์','กรุงเทพมหานคร'),
                                                                                     
                                                                                     
                                                                                     
;
UNLOCK TABLES;
                                                                                     
