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
  `Datetime` DATETIME NOT NULL,
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
INSERT INTO `menu` VALUES ('0001','Espresso',35,20,'Hot','Coffee'),('0002','Espresso',55,25,'Cold','Coffee'),('0003','Espresso',60,30,'Frappe','Coffee'),('0004','Espresso Con Panna',45,25,'Hot','Coffee'),
('0005','Espresso Con Panna',65,30,'Cold','Coffee'),('0006','Espresso Con Panna',70,35,'Frappe','Coffee'),('0007','Americano',50,30,'Hot','Coffee'),('0008','Americano',55,35,'Cold','Coffee'),
('0009','Americano',60,40,'Frappe','Coffee'),('0010','Long Black',50,30,'Hot','Coffee'),('0011','Long Black',55,35,'Cold','Coffee'),('0012','Long Black',60,40,'Frappe','Coffee'),
('0013','Latte',50,30,'Hot','Coffee'),('0014','Latte',65,35,'Cold','Coffee'),('0015','Latte',70,40,'Frappe','Coffee'),('0016','Piccolo',50,20,'Hot','Coffee'),
('0017','Piccolo',55,25,'Cold','Coffee'),('0018','Piccolo',60,30,'Frappe','Coffee'),('0019','Cappuccino',45,25,'Hot','Coffee'),('0020','Cappuccino',60,30,'Cold','Coffee'),
('0021','Cappuccino',65,35,'Frappe','Coffee'),('0022','Mocha',50,25,'Hot','Coffee'),('0023','Mocha',60,30,'Cold','Coffee'),('0024','Mocha',70,35,'Frappe','Coffee'),
('0025','White Mocha',55,30,'Hot','Coffee'),('0026','White Mocha',65,35,'Cold','Coffee'),('0027','White Mocha',75,40,'Frappe','Coffee'),('0028','Macchiato',50,25,'Hot','Coffee'),
('0029','Macchiato',60,30,'Cold','Coffee'),('0030','Macchiato',70,35,'Frappe','Coffee'),('0031','Caramel Macchiato',55,30,'Hot','Coffee'),('0032','Caramel Macchiato',65,35,'Cold','Coffee'),
('0033','Caramel Macchiato',75,40,'Frappe','Coffee'),('0034','Italian soda',50,20,'Cold','Coffee'),('0035','Chocolate',45,25,'Hot','Coffee'),('0036','Chocolate',50,30,'Cold','Coffee'),
('0037','Chocolate',55,35,'Frappe','Coffee'),('0038','Dark Chocolate',50,30,'Hot','Milk-Chocolate'),('0039','Dark Chocolate',55,35,'Cold','Milk-Chocolate'),
('0040','Dark Chocolate',60,40,'Frappe','Milk-Chocolate'),('0042','Green Tea',40,15,'Hot','Tea'),('0043','Green Tea',45,20,'Cold','Tea'),('0044','Green Tea',50,25,'Frappe','Tea'),
('0045','Milk Tea',45,20,'Hot','Tea'),('0046','Milk Tea',50,25,'Cold','Tea'),('0047','Milk Tea',55,30,'Frappe','Tea'),('0048','Thai Tea',45,20,'Hot','Tea'),
('0049','Thai Tea',50,25,'Cold','Tea'),('0050','Thai Tea',55,30,'Frappe','Tea'),('0051','Mango Sticky Rice',100,60,'Dessert','Dessert'),('0052','Strawberry Pancake',150,90,'Dessert','Dessert'),
('0053','Choc Banana Pancake',155,80,'Dessert','Dessert'),('0054','Macaron',120,80,'Dessert','Dessert'),('0055','Pudding',150,100,'Dessert','Dessert'),('0056','Butter Cake',120,100,'Dessert','Dessert'),
('0057','Whole Wheat Bread',150,120,'Dessert','Dessert'),('0058','strawberry cheese pie',120,80,'Dessert','Dessert'),('0059','Blueberry Cheese Pie',150,100,'Dessert','Dessert'),
('0060','Honey Toast',150,80,'Dessert','Dessert'),('0061','Toast',25,20,'Dessert','Dessert'),('0062','Waffle',50,30,'Dessert','Dessert'),
('0063','Cheese cake',125,80,'Dessert','Dessert'),('0064','Custard Cake',60,40,'Dessert','Dessert'),
('0065','Cookie',150,90,'Dessert','Dessert'),('0066','Brownie',80,50,'Dessert','Dessert'),('0067','Pancake',40,20,'Dessert','Dessert'),('0068','Banana Cake',40,20,'Dessert','Dessert'),
('0069','Muffin',90,30,'Dessert','Dessert'),('0070','Cake Roll',45,20,'Dessert','Dessert'),('0071','Basque Cheesecake',250,100,'Dessert','Dessert')
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
('0028','แอนนา','สมบูรณ์สิงห์',24,23,'ชาย'),('0029','วริศรา','วงเวียน',23,35,'ชาย'),('0030','ภัสสร','ศรีน้ำเงิน',17,3,'ชาย')
;
UNLOCK TABLES;
                                                                                     
  -- Dump data in Store table
LOCK TABLES `cafe`.`Store` WRITE;
INSERT INTO `cafe`.`Store` VALUES ('C001','Coffee\'s เซ็นทรัลพระราม3','กรุงเทพมหานคร'),('C002','Coffee\'s เซ็นทรัลพระราม9','กรุงเทพมหานคร'),('C003','Coffee\'s Centralนครราชสีมา','นครราชสีมา'),
('C004','Coffee\'s เซ็นทรัลศรีราชา','ชลบุรี'),('C005','Coffee\'s เซ็นทรัลอยุธยา','พระนครศรีอยุธยา'),('C006','Coffee\'s Centralมหาชัย','สมุทรสาคร'),('C007','Coffee\'s เซ็นทรัลเชียงใหม่','เชียงใหม่'),
('C008','Coffee\'s UnitedCenter(สีลม)','กรุงเทพมหานคร'),('C009','Coffee\'s สยามเซ็นเตอร์','กรุงเทพมหานคร'),('C010','Coffee\'s เซ็นจูรี่อนุสาวรีย์','กรุงเทพมหานคร'),('C011','Coffee\'s CentralWestgateบางใหญ่','กรุงเทพมหานคร'),
('C012','Coffee\'s เซ็นทรัลเวิลด์','กรุงเทพมหานคร'),('C013','Coffee\'s CenterOneอนุสาวรีย์ชัยสมรภูมิ','กรุงเทพมหานคร'),('C014','Coffee\'s Centralสุราษฎร์ธานี','สุราษฎร์ธานี'),('C015','Coffee\'s Centralนครศรีธรรมราช','นครศรีธรรมราช'),
('C016','Coffee\'s เซ็นทรัลลาดพร้าวชั้นG','กรุงเทพมหานคร'),('C017','Coffee\'s บิ๊กซีศรีนครินทร์','สมุทรปราการ'),('C018','Coffee\'s บิ๊กซีพัทยาใต้','ชลบุรี'),('C019','Coffee\'s บิ๊กซีอยุธยา','พระนครศรีอยุธยา'),
('C020','Coffee\'s บิ๊กซีสุขาภิบาล3','กรุงเทพมหานคร'),('C021','Coffee\'s บิ๊กซีพระราม4','กรุงเทพมหานคร'),('C022','Coffee\'s บิ๊กซีราชดำริ','กรุงเทพมหานคร'),('C023','Coffee\'s บิ๊กซีนครปฐม','นครปฐม'),
('C024','Coffee\'s บิ๊กซีมหาชัย','สมุทรสาคร'),('C025','Coffee\'s บิ๊กซีสุขาภิบาล5','กรุงเทพมหานคร'),('C026','Coffee\'s บิ๊กซีเชียงราย2','เชียงราย'),('C027','Coffee\'s บิ๊กซีบางพลี','สมุทรปราการ'),
('C028','Coffee\'s บิ๊กซีเพชรเกษมextra','กรุงเทพมหานคร'),('C029','Coffee\'s ทาวน์เซ็นเตอร์บิ๊กซีหัวหมาก','กรุงเทพมหานคร'),('C030','Coffee\'s บิ๊กซีบางใหญ่','นนทบุรี')                                                                                
                                                                                    
                                                                                     
;
UNLOCK TABLES;

-- Dump data in order_record table
--(Order_No, Datetime, Quantity, Menu_id, Customer_id,Discount,Profit,Amount,Order_point,Store_id)

INSERT INTO order_record  
VALUES ('1','2020-05-01 08:00:00',2,'0001','0002',0.1,11.5,63,1,'C002'),
('2', '2022-05-16 09:10:45', 2, '0001', '0001', 7, 23, 6, 1, 'C023'),
('3', '2022-05-16 09:50:10', 1, '0003', '0002', 6, 24, 54, 1, 'C001'),
('4', '2022-05-16 10:32:40', 1, '0003', '0004', 3, 24, 54, 1, 'C022'),
('5', '2022-05-16 10:40:30', 1, '0005', '0006', 6.5, 28.5, 58.5, 1, 'C025'),
('6', '2022-05-16 11:30:10', 2, '0005', '0007', 19.5, 85.5, 175.5, 1, 'C010'),
('7', '2022-05-16 12:10:04', 3, '0010', '0010', 15, 45, 135, 1, 'C005'),
('8', '2022-05-17 09:40:30', 1, '0005', '0006', 6.5, 28.5, 58.5, 1, 'C015'),
('9', '2022-05-17 09:30:10', 2, '0005', '0007', 19.5, 85.5, 175.5, 1, 'C009'),
('10', '2022-05-17 10:10:04', 1, '0010', '0010', 15, 45, 135, 1, 'C030'),
('11', '2022-05-18 09:15:04', 4, '0017', '0011', 5.5, 24.5, 98, 1, 'C003'),
('12', '2022-05-18 11:50:23', 2, '0012', '0030', 6, 14, 28, 1, 'C004'),
('13', '2022-05-19 10:30:05', 1, '0022', '0022', 5, 20, 20, 1, 'C013'),
('14', '2022-05-19 12:10:09', 3, '0071', '0021', 25, 125, 375, 1, 'C026'),
('15', '2022-05-19 13:12:00', 5, '0009', '0011', 6, 14, 70, 1, 'C017'),
('16', '2022-05-20 12:55:17', 1, '0014', '0009', 6.5, 23.5, 23.5, 1, 'C009'),
('17', '2022-05-20 13:16:09', 1, '0033', '0007', 7.5, 27.5, 27.5, 1, 'C018'),
('18', '2022-05-20 15:44:04', 3, '0045', '0023', 4.5, 20.5, 61.5, 1, 'C029'),
('19', '2022-05-20 16:45:11', 2, '0055', '0015', 15, 35, 70, 1, 'C021'),
('20', '2022-05-21 10:19:05', 1, '0061', '0019', 2.5, 2.5, 2.5, 1, 'C011'),
('21', '2022-05-21 11:20:01', 1, '0061', '0019', 2.5, 2.5, 2.5, 1, 'C011');
('22', '2022-05-21 12:10:04', 1, '0010', '0010', 15, 45, 135, 1, 'C030'),
('23', '2022-05-21 13:15:04', 4, '0017', '0011', 5.5, 24.5, 98, 1, 'C003'),
('24', '2022-05-21 14:50:23', 2, '0012', '0030', 6, 14, 28, 1, 'C004'),
('25', '2022-05-21 15:30:05', 1, '0022', '0022', 5, 20, 20, 1, 'C013'),
('26', '2022-05-22 16:10:09', 3, '0071', '0021', 25, 125, 375, 1, 'C026'),
('27', '2022-05-23 10:32:40', 1, '0003', '0004', 3, 24, 54, 1, 'C022'),
('28', '2022-05-23 10:40:30', 1, '0005', '0006', 6.5, 28.5, 58.5, 1, 'C025'),
('29', '2022-05-23 11:30:10', 2, '0005', '0007', 19.5, 85.5, 175.5, 1, 'C010'),
('30', '2022-05-23 12:10:04', 3, '0010', '0010', 15, 45, 135, 1, 'C005');
UNLOCK TABLES;        
     
        
