-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.41


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ecommerce
--

CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(100) DEFAULT NULL,
  `c_image` varchar(45) DEFAULT NULL,
  `c_cost` int(10) unsigned DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`c_id`,`c_name`,`c_image`,`c_cost`,`uname`,`uid`,`order_id`,`status`) VALUES 
 (1,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (2,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (3,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (4,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (5,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (6,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (7,'Banana','Banana.jpg',30,'ARUSHI',1,0,'deleted'),
 (8,'Banana','Banana.jpg',30,'ARUSHI',1,0,'deleted'),
 (9,'Banana','Banana.jpg',30,'ARUSHI',1,0,'deleted'),
 (10,'Banana','Banana.jpg',30,'ARUSHI',1,0,'deleted'),
 (11,'Cherry','cherry.jpg',70,'ARUSHI',1,0,'deleted'),
 (12,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (13,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (14,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (15,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (16,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (17,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (18,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (19,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (20,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (21,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (22,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (23,'Apple','Apple.jpg',120,'null',1,0,'deleted'),
 (24,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (25,'Wheat','wheat.jpg',34,'ARUSHI',1,0,'deleted'),
 (26,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (27,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (28,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (29,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (30,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (31,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (32,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (33,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (34,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (35,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (36,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (37,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (38,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (39,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (40,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (41,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (42,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (43,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (44,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (45,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (46,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (47,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (48,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (49,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (50,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (51,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (52,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (53,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (54,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (55,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (56,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (57,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (58,'Apple','Apple.jpg',120,'null',NULL,0,'pending'),
 (59,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (60,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (61,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (62,'Apple','Apple.jpg',120,'anushka',2,0,'deleted'),
 (63,'Grapes','Grapes.jpg',60,'anushka',2,0,'deleted'),
 (64,'Pine Apple','pine.jpg',30,'anushka',2,0,'deleted'),
 (65,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (66,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (67,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (68,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (69,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (70,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (71,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (72,'Strawberry','strawberry.jpg',80,'anushka',2,0,'deleted'),
 (73,'Orange','orange.jpg',50,'anushka',2,0,'deleted'),
 (74,'Water Melon ','WM.jpg',60,'ARUSHI',1,0,'deleted'),
 (75,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI',1,0,'deleted'),
 (76,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI',1,0,'deleted'),
 (77,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI',1,0,'deleted'),
 (78,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI',1,0,'deleted'),
 (79,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (80,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (81,'Dhara  Refined Sunflower Oil','dhara.jpg',165,'ARUSHI',1,0,'deleted'),
 (82,'Dhara  Refined Sunflower Oil','dhara.jpg',165,'ARUSHI',1,0,'deleted'),
 (83,'Dhara  Refined Sunflower Oil','dhara.jpg',165,'ARUSHI',1,0,'deleted'),
 (84,'Ragi','ragi.jpg',40,'ARUSHI',1,0,'deleted'),
 (85,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (86,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (87,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (88,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (89,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (90,'Potato','potato.jpg',40,'ARUSHI',1,0,'deleted'),
 (91,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (92,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (93,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (94,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (95,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (96,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (97,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (98,'Soya Bean Dal','soya bean dal.jpg',100,'ARUSHI',1,0,'deleted'),
 (99,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (100,'Guava','guava.jpg',50,'ARUSHI',1,0,'deleted'),
 (101,'Ariel Washing Powder','ariel.jpg',90,'ARUSHI',1,0,'deleted'),
 (102,'Ariel Washing Powder','ariel.jpg',90,'ARUSHI',1,0,'deleted'),
 (103,'Ariel Washing Powder','ariel.jpg',90,'ARUSHI',1,0,'deleted'),
 (104,'Cherry','cherry.jpg',70,'ARUSHI',1,0,'deleted'),
 (105,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (106,'Chilli','chilli.jpg',40,'ARUSHI',1,0,'deleted'),
 (107,'Wheat','wheat.jpg',34,'ARUSHI',1,0,'deleted'),
 (108,'Orange','orange.jpg',50,'ARUSHI',1,0,'deleted'),
 (109,'Orange','orange.jpg',50,'ARUSHI',1,0,'deleted'),
 (110,'Apple','Apple.png',120,'ARUSHI',1,0,'deleted'),
 (111,'Onion','onion.jpeg',40,'ARUSHI',1,0,'deleted'),
 (112,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (113,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (114,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (115,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (116,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (117,'Guava','guava.jpg',50,'ARUSHI',1,0,'deleted'),
 (118,'Saffola Gold Sunflower Oil','Saffola gold.jpg',168,'ARUSHI',1,0,'deleted'),
 (119,'Sunrich  Refined Sunflower Oil','sunrich.jpg',170,'ARUSHI',1,0,'deleted'),
 (120,'7UP','7up.jpg',67,'ARUSHI',1,0,'deleted'),
 (121,'Freedom Refined Sunflower Oil','freedom.jpg',170,'anushka',2,0,'deleted'),
 (122,'Fortune SunRe  Refined Sunflower Oil','fortune.jpg',162,'anushka',2,0,'deleted'),
 (123,'Coca Cola ','Coca.jpg',68,'anushka',2,12,'Canceled'),
 (124,'Fanta','fanta.jpg',70,'anushka',2,12,'Canceled'),
 (125,'Cherry','cherry.jpg',70,'ARUSHI',1,0,'deleted'),
 (126,'Cherry','cherry.jpg',70,'ARUSHI',1,0,'deleted'),
 (127,'Fanta','fanta.jpg',70,'ARUSHI',1,0,'deleted'),
 (128,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (129,'Tomato','tomato.jpg',20,'ARUSHI',1,0,'deleted'),
 (130,'Potato','potato.jpg',40,'ARUSHI',1,0,'deleted'),
 (131,'Chilli','chilli.jpg',40,'ARUSHI',1,0,'deleted'),
 (132,'Chilli','chilli.jpg',40,'ARUSHI',1,0,'deleted'),
 (133,'Carrot','carrot.png',40,'ARUSHI',1,0,'deleted'),
 (134,' Dabur Red Paste For Teeth And Gums','Dabur Red.jpg',80,'ARUSHI',1,0,'deleted'),
 (135,'Dark Fantasy Biscuits','dark fantasy.jpeg',25,'ARUSHI',1,0,'deleted'),
 (136,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (137,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (138,'Orange','orange.jpg',50,'ARUSHI',1,0,'deleted'),
 (139,'Apple','Apple.jpg',120,'ARUSHI',1,0,'deleted'),
 (140,'Grapes','Grapes.jpg',60,'ARUSHI',1,0,'deleted'),
 (141,'Banana','Banana.jpg',30,'ARUSHI',1,0,'deleted'),
 (142,'Gold Winner Sunflower Oil ','GW.jpg',175,'ARUSHI',1,0,'deleted'),
 (143,'Gold Winner Sunflower Oil ','GW.jpg',175,'ARUSHI',1,0,'deleted'),
 (144,'Gold Winner Sunflower Oil ','GW.jpg',175,'ARUSHI',1,0,'deleted'),
 (145,'Gold Winner Sunflower Oil ','GW.jpg',175,'ARUSHI',1,0,'deleted'),
 (146,'Wheat','wheat.jpg',34,'ARUSHI',1,0,'deleted'),
 (147,'Wheat','wheat.jpg',34,'ARUSHI',1,0,'deleted'),
 (148,'Wheat','wheat.jpg',34,'ARUSHI',1,0,'deleted'),
 (149,'Wheat','wheat.jpg',34,'ARUSHI',1,11,'Canceled'),
 (150,'Dark Fantasy Biscuits','dark fantasy.jpeg',25,'ARUSHI',1,0,'deleted'),
 (151,'Dark Fantasy Biscuits','dark fantasy.jpeg',25,'ARUSHI',1,0,'deleted'),
 (152,'Dark Fantasy Biscuits','dark fantasy.jpeg',25,'ARUSHI',1,11,'Canceled'),
 (153,'Dabur Babool Tooth Paste ','Dabur-Babool.jpg',80,'ARUSHI',1,11,'Canceled'),
 (154,'Ariel Washing Powder','ariel.jpg',90,'ARUSHI',1,11,'Canceled'),
 (155,'Onion','onion.jpeg',40,'ARUSHI S AGADI',1,11,'Canceled'),
 (156,'Guava','guava.jpg',50,'ARUSHI S AGADI',1,13,'Canceled'),
 (157,'Apple','Apple.jpg',120,'ARUSHI S AGADI',1,16,'Canceled'),
 (158,'KurKure','kurkure.jpg',20,'ARUSHI S AGADI',1,17,'ordered'),
 (159,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI S AGADI',1,18,'ordered'),
 (160,' Dabur Red Paste For Teeth And Gums','Dabur Red.jpg',80,'ARUSHI S AGADI',1,19,'ordered'),
 (161,'7UP','7up.jpg',67,'ARUSHI S AGADI',1,20,'ordered'),
 (162,'Maggi','Maggi.jpg',20,'ARUSHI S AGADI',1,0,'deleted'),
 (163,'Banana','Banana.jpg',30,'ARUSHI S AGADI',1,0,'deleted'),
 (164,'Banana','Banana.jpg',30,'ARUSHI S AGADI',1,0,'deleted'),
 (165,'Banana','Banana.jpg',30,'ARUSHI S AGADI',1,0,'deleted'),
 (166,'Freedom Refined Sunflower Oil','freedom.jpg',170,'ARUSHI S AGADI',1,27,'ordered'),
 (167,'7UP','7up.jpg',67,'ARUSHI S AGADI',1,1,'Canceled'),
 (168,'Wheat','wheat.jpg',34,'ARUSHI S AGADI',1,2,'Canceled'),
 (169,'KurKure','kurkure.jpg',20,'ARUSHI S AGADI',1,2,'Canceled'),
 (170,'Dark Fantasy Biscuits','dark fantasy.jpeg',25,'ARUSHI S AGADI',1,1,'Canceled'),
 (171,'Gold Winner Sunflower Oil ','GW.jpg',175,'ARUSHI S AGADI',1,2,'Canceled'),
 (172,'Freedom Refined Sunflower Oil','freedom.jpg',170,'anushka',16,3,'Canceled'),
 (173,'Pro Nature Black Pepper(whole)','black pepper.jpg',50,'ARUSHI S AGADI',1,0,'deleted'),
 (174,'Apple','Apple.jpg',120,'KUSHI',18,4,'Canceled'),
 (175,'Grapes','Grapes.jpg',60,'KUSHI',18,4,'Canceled'),
 (176,'Apple','Apple.jpg',120,'anushka',17,5,'Canceled'),
 (177,'Apple','Apple.jpg',120,'kushi A',19,6,'Canceled'),
 (178,'Grapes','Grapes.jpg',60,'kushi A',19,0,'deleted'),
 (179,'Wheat','wheat.jpg',34,'kushi A',19,0,'pending'),
 (180,'Apple','Apple.jpg',120,'kushi A',20,7,'Canceled'),
 (181,'Grapes','Grapes.jpg',60,'kushi A',20,0,'deleted'),
 (182,'Apple','Apple.jpg',120,'kushi A',21,8,'Canceled'),
 (183,'Grapes','Grapes.jpg',60,'kushi A',21,0,'deleted'),
 (184,'Onion','onion.jpeg',40,'ARUSHI S AGADI',1,9,'Canceled'),
 (185,'Tomato','tomato.jpg',20,'anushka',17,10,'Canceled'),
 (186,'Apple','Apple.jpg',120,'ARUSHI S AGADI',1,11,'Canceled'),
 (187,'Grapes','Grapes.jpg',60,'ARUSHI S AGADI',1,0,'deleted'),
 (188,'Guava','guava.jpg',50,'ARUSHI S AGADI',1,11,'Canceled'),
 (189,'Cherry','cherry.jpg',70,'ARUSHI S AGADI',1,11,'Canceled'),
 (190,'Orange','orange.jpg',50,'ARUSHI S AGADI',1,11,'Canceled'),
 (191,'Apple','Apple.jpg',120,'ARUSHI ',1,2,'Canceled'),
 (192,'Apple','Apple.jpg',120,'Vinay H N',2,12,'Canceled'),
 (193,'Onion','onion.jpeg',40,'sim',3,1,'Canceled'),
 (194,'Onion','onion.jpeg',40,'sim',3,0,'deleted'),
 (195,'Onion','onion.jpeg',40,'vinay',1,2,'Canceled'),
 (196,'Onion','onion.jpeg',40,'vinay',1,3,'Canceled'),
 (197,'Apple','Apple.jpg',120,'vinay',1,4,'Canceled'),
 (198,'Apple','Apple.jpg',120,'vinay',1,0,'deleted'),
 (199,'Apple','Apple.jpg',120,'vinay',1,4,'Canceled'),
 (200,'Wheat','wheat.jpg',34,'vinay',1,0,'pending'),
 (201,'Dhaniya Seeds','Dhaniya seeds.jpg',400,'sim',3,5,'Canceled'),
 (202,'Aachi Turmeric Powder','Turmeric powder.jpg',40,'sim',3,5,'Canceled'),
 (203,'Grapes','Grapes.jpg',60,'sim',3,6,'ordered');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_address` varchar(45) DEFAULT NULL,
  `order_city` varchar(45) DEFAULT NULL,
  `order_state` varchar(45) DEFAULT NULL,
  `c_id` varchar(500) DEFAULT NULL,
  `c_cost` int(10) unsigned DEFAULT NULL,
  `usname` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`,`order_address`,`order_city`,`order_state`,`c_id`,`c_cost`,`usname`,`status`,`date`,`uid`) VALUES 
 (1,'#103,9th ward,3rd Cross,, EWS Colony','Davanagere','Karnataka','193',40,'sim','Canceled','2022-06-20 10:56:23',3),
 (2,'#103,9th ward,3rd Cross','Davanagere','Karnataka','191,195',160,'vinay','Canceled','2022-06-20 12:44:08',1),
 (3,'#103,9th ward,3rd Cross','Davanagere','Karnataka','196',40,'vinay','Canceled','2022-06-20 12:45:52',1),
 (4,'#103,9th ward,3rd Cross','Davanagere','Karnataka','197,199',240,'vinay','Canceled','2022-06-20 19:53:50',1),
 (5,'#103,9th ward,3rd Cross','Davanagere','Karnataka','201,202',440,'sim','Canceled','2022-09-22 22:17:26',3),
 (6,'#103,9th ward,3rd Cross','Davanagere','Karnataka','203',60,'sim','ordered','2022-09-23 07:53:14',3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `products1`
--

DROP TABLE IF EXISTS `products1`;
CREATE TABLE `products1` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_image` varchar(45) DEFAULT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `p_cost` int(10) unsigned DEFAULT NULL,
  `p_details` varchar(300) DEFAULT NULL,
  `p_catagory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products1`
--

/*!40000 ALTER TABLE `products1` DISABLE KEYS */;
INSERT INTO `products1` (`p_id`,`p_image`,`p_name`,`p_cost`,`p_details`,`p_catagory`) VALUES 
 (1,'Apple.jpg','Apple',120,'Per KG Fresh Kashmir Apple','Fruits'),
 (2,'Banana.jpg','Banana',30,'Per Dozen Fresh Banana','Fruits'),
 (3,'Grapes.jpg','Grapes',60,'Per KG','Fruits'),
 (4,'guava.jpg','Guava',50,'Per KG','Fruits'),
 (5,'cherry.jpg','Cherry',70,'Per Piece','Fruits'),
 (6,'orange.jpg','Orange',50,'Per KG','Fruits'),
 (7,'pine.jpg','Pine Apple',30,'Per Piece','Fruits'),
 (8,'pomegranate.jpg','PomeGranate',40,'Per KG','Fruits'),
 (9,'strawberry.jpg','Strawberry',80,'Per Box','Fruits'),
 (10,'onion.jpeg','Onion',40,'Per KG','Vegetables'),
 (11,'tomato.jpg','Tomato',20,'Per KG','Vegetables'),
 (12,'potato.jpg','Potato',40,'Per KG','Vegetables'),
 (13,'chilli.jpg','Chilli',40,'Per KG','Vegetables'),
 (14,'coriander.jpg','Coriander',5,'Per Piece','Vegetables'),
 (15,'carrot.png','Carrot',40,'Per KG','Vegetables'),
 (16,'capsicum.png','Capsicum',60,'Per KG','Vegetables'),
 (17,'cabbage.jpg','Cabbage',15,'Per Piece','Vegetables'),
 (18,'brinjal.png','Brinjal',25,'Per KG','Vegetables'),
 (19,'beetroot.jpg','Beetroot',40,'Per KG','Vegetables'),
 (20,'beans.png','Beans',60,'Per KG','Vegetables'),
 (21,'Radish.jpg','Radish',30,'Per KG','Vegetables'),
 (22,'LF.jpeg','Ladies Finger',40,'Per KG','Vegetables'),
 (23,'Cauli.jpg','CauliFlower',20,'Per Piece','Vegetables'),
 (24,'freedom.jpg','Freedom Refined Sunflower Oil',170,'Per Ltr','Oils'),
 (25,'GW.jpg','Gold Winner Sunflower Oil ',175,'Per Ltr','Oils'),
 (26,'Saffola gold.jpg','Saffola Gold Sunflower Oil',168,'Per Ltr','Oils'),
 (27,'WM.jpg','Water Melon ',60,'Per Piece','Fruits'),
 (28,'dhara.jpg','Dhara  Refined Sunflower Oil',165,'Per Ltr','Oils'),
 (29,'fortune.jpg','Fortune SunRe  Refined Sunflower Oil',162,'Per Ltr','Oils'),
 (30,'gemini.jpg','Gemini  Refined Sunflower Oil',160,'Per Ltr','Oils'),
 (31,'emami.jpg','Emami Healthy & Tasty  Refined Sunflower Oil',160,'Per Ltr','Oils'),
 (32,'sundrop.jpg','Sundrop  Refined Sunflower Oil',165,'Per Ltr','Oils'),
 (33,'sunpure.jpg','Sunpure  Refined Sunflower Oil',168,'Per Ltr','Oils'),
 (34,'sunrich.jpg','Sunrich  Refined Sunflower Oil',170,'Per Ltr','Oils'),
 (35,'wheat.jpg','Wheat',34,'Per KG','Grains'),
 (36,'basmati.jpg','Bhasmati Rice ',300,'Per 5 KG','Grains'),
 (37,'ragi.jpg','Ragi',40,'Per KG','Grains'),
 (38,'yellow moong da.jpg','Nature Land Yellow Moong Dal',110,'Per KG','Grains'),
 (39,'green moong dal.jpg','Fynet Organic Green Moong Dal ',100,'Per KG','Grains'),
 (40,'soya bean dal.jpg','Soya Bean Dal',100,'Per KG','Grains'),
 (41,'toor dal.jpg','Golden Bird Toor Dal ',120,'Per KG','Grains'),
 (42,'urad dal.jpg','Organic Urad Dal ',100,'Per KG','Grains'),
 (43,'ash.png','Aashirvaad Whole Wheat Atta ',240,'Per 5 KG','Grains'),
 (44,'groundnut.jpg','Groundnut',120,'Per KG','Grains'),
 (45,'Idli rava.jpg','VIJAY Gold Idli Rava',40,'Per KG','Grains'),
 (46,'jaggery.jpg','Jaggery ',50,'Per KG','Grains'),
 (47,'poha thick avalakki.png','VIJAY Gold Poha Thick Avalakki ',40,'Per KG','Grains'),
 (48,'sooji rava.png','MADAM Sooji Rava Roasted ',45,'Per KG','Grains'),
 (49,'sugar.jpg','Madhur Pure & Heigenic Sugar ',40,'Per KG','Grains'),
 (50,'7up.jpg','7UP',67,'2Ltr Added Natural Lemon Flavour','Beverages'),
 (51,'Coca.jpg','Coca Cola ',68,'2Ltr Original Taste','Beverages'),
 (52,'fanta.jpg','Fanta',70,'2Ltr Orange Flavoured ','Beverages'),
 (53,'frooti.jpg','Frooti',72,'2Ltr Mango Drink ','Beverages'),
 (54,'maaza.jpg','Maaza',70,'2Ltr Original Mango Flavoured','Beverages'),
 (55,'Dabur Red.jpg',' Dabur Red Paste For Teeth And Gums',80,'200gm','House'),
 (56,'Dabur-Babool.jpg','Dabur Babool Tooth Paste ',80,'200gm Now Babool Powder with clove','House'),
 (57,'Meswak.jpg','Dabur Meswak Tooth Paste',90,'200gm complete oral care','House'),
 (58,'Ponds.jpg','Ponds Starlight Powder',100,'300gm Perfumed Talc','House'),
 (59,'ariel.jpg','Ariel Washing Powder',90,'1KG original washing powder','House'),
 (60,'closeup.jpg','Closeup Tooth Paste',90,'200gm Ever Fresh','House'),
 (61,'kurkure.jpg','KurKure',20,'Masala munch 300gms','Snacks'),
 (62,'Lays.jpg','Lays Chips',20,'Fresh Potato Chips Fills','Snacks'),
 (63,'bourbon.jpg',' Bourbon Biscuits',25,'Bourbon friends forever','Snacks'),
 (64,'dark fantasy.jpeg','Dark Fantasy Biscuits',25,'Sunfeast choco fills','Snacks'),
 (65,'maggi.jpg','Maggi',20,'2 Minutes noodles','Snacks'),
 (66,'Dhaniya seeds.jpg','Dhaniya Seeds',400,'1KG Fresh Dhaniya seeds','Staples'),
 (67,'Turmeric powder.jpg','Aachi Turmeric Powder',40,'100gm Turmeric Powder. the Mother of good taste','Staples'),
 (68,'black pepper.jpg','Pro Nature Black Pepper(whole)',50,'100gm 100% Organic','Staples'),
 (69,'cloves.jpg','Royal Organic Cloves',50,'50gm Go Organic Live Healthy','Staples'),
 (70,'mustard seeds.jpg','Organature Mustard Seeds',50,'100gm Fresh Organic Mustard Seeds','Staples'),
 (85,'brinjal.png','brinjal',15,'15 per kg','vegetables');
/*!40000 ALTER TABLE `products1` ENABLE KEYS */;


--
-- Definition of table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`slno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`slno`,`name`,`phone`,`email`,`password`,`date`) VALUES 
 (1,'vinay','0111122222','vinay@gmail.com','123456','2021-09-15 15:09:50'),
 (2,'Vinay H N','7483538785','vinayhn2019@gmail.com','123456','2022-06-16 13:39:10'),
 (3,'simran GMIT','8639636862','null','123456','2022-06-16 13:51:59');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
