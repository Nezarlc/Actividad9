-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: gimnasio
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` enum('m','f') DEFAULT NULL,
  `fecha_inscripcion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cuota` decimal(5,2) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `profesor_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_clientes_profesores_idx` (`profesor_id`),
  CONSTRAINT `fk_clientes_profesores` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Patric','Organ','965 Shopko Lane','porgan1@ow.ly',21,'m','2016-05-24 20:00:00',39.90,'1994-10-14','526001763t',2,NULL),(3,'Ewart','Standish-Brooks','Calle Granvia 29, 28013 Madrid','estandishbrooks2@google.com',52,'m','2021-12-01 07:53:09',16.90,'1960-11-20','427150345t',3,40),(4,'Deena','Quemby','7 Almo Hill','dquemby3@tumblr.com',21,'f','2016-11-09 22:00:00',39.90,'2011-02-01','245568244s',4,NULL),(5,'Codi','Audritt','6755 Susan Trail','caudritt4@bbb.org',43,'m','2019-06-27 20:00:00',39.90,'1985-12-06','975563827p',5,NULL),(6,'Cinderella','Trengrove','72100 Hoffman Street','ctrengrove5@wordpress.org',43,'f','2020-08-28 20:00:00',16.90,'1988-06-13','677595912p',1,NULL),(7,'Teressa','Goracci','73 Susan Circle','tgoracci6@washington.edu',34,'f','2017-05-24 20:00:00',39.90,'2018-01-26','653498027i',2,NULL),(8,'Ernst','Cheeke','','echeeke7@bravesites.com',21,'f','2021-02-17 22:00:00',16.90,'2000-08-26','144019769p',3,NULL),(9,'Mohammed','Wardall','691 Mifflin Hill','mwardall8@netlog.com',35,'m','2018-02-06 22:00:00',39.90,'2003-08-29','696514621s',4,NULL),(10,'Rosene','Brewis','44194 Grim Lane','rbrewis9@wiley.com',29,'f','2019-10-10 20:00:00',39.90,'1979-01-31','761741154u',5,NULL),(11,'Orsa','Prada','783 Melrose Road','ofentema@nbcnews.com',34,'f','2018-08-05 20:00:00',18.90,'1974-02-21','714119403u',11,NULL),(12,'Clarabelle','Laurie','43308 Sugar Court','claurieb@cdc.gov',54,'f','2019-12-10 22:00:00',16.90,'1980-06-30','679023157s',12,NULL),(13,'Erie','Thurman','307 Forest Run Parkway','',75,'m','2018-01-03 22:00:00',39.90,'1979-09-16','985575453j',13,NULL),(14,'Desmund','Oxtiby','2 Hermina Trail','doxtibyd@weibo.com',41,'m','2017-01-25 22:00:00',16.90,'1981-03-08','514585691g',14,NULL),(15,'Wilmar','Jupe','7043 Tennyson Plaza','wjupee@vk.com',65,'m','2017-06-07 20:00:00',39.90,'1999-05-08','806409735y',15,NULL),(16,'Linnell','Trunchion','070 Orin Way','ltrunchionf@intel.com',54,'f','2018-07-06 20:00:00',16.90,'1984-06-07','734777413k',16,NULL),(17,'Bengt','Meconi','99805 Northwestern Avenue','bmeconig@bluehost.com',59,'m','2020-06-08 20:00:00',16.90,'1986-07-25','127523425m',17,NULL),(18,'Almire','Ascroft','063 Waubesa Crossing','aascrofth@soup.io',47,'f','2020-02-24 22:00:00',16.90,'2010-01-21','929710951u',18,NULL),(19,'Pearl','Slowgrave','8 Ilene Place','wslowgravei@wikimedia.org',20,'f','2019-08-10 20:00:00',39.90,'1971-08-09','483308551s',19,NULL),(20,'Gray','Baxstar','07 Rowland Pass','gbaxstarj@samsung.com',57,'f','2017-06-26 20:00:00',16.90,'1972-05-02','502143356n',20,NULL),(21,'Sylvester','Batecok','5 Helena Terrace','sbatecokk@imageshack.us',28,'m','2021-04-09 20:00:00',16.90,'2017-04-28','309632997g',21,NULL),(22,'Lula','Henecan','8339 Erie Park','lohenecanl@histats.com',71,'f','2017-11-27 22:00:00',16.90,'1965-01-16','142913706n',22,NULL),(23,'Laney','García','0 2nd Point','lmccamishm@last.fm',64,'m','2019-06-30 20:00:00',39.90,'1995-02-14','352893494r',5,40),(24,'Dorey','Goggen','9590 Village Terrace','dgoggenn@tmall.com',40,'f','2017-10-16 20:00:00',16.90,'1972-05-02','529183263d',24,NULL),(25,'Ennis','Geare','33662 Talisman Crossing','egeareo@free.fr',54,'m','2017-08-24 20:00:00',39.90,'1961-12-11','976916926z',25,NULL),(26,'Gilemette','Quinnette','3374 Debra Street','gquinnettep@4shared.com',27,'f','2016-12-11 22:00:00',39.90,'1973-09-12','646998403s',26,NULL),(27,'Carolan','Harber','','charberq@tripod.com',26,'f','2020-04-25 20:00:00',16.90,'2003-07-31','759950979n',5,NULL),(28,'Pearl','Wartnaby','444 Oneill Drive','dwartnabyr@theguardian.com',71,'f','2020-01-27 22:00:00',39.90,'1986-01-29','371217632h',28,NULL),(29,'Joycelin','Sacker','50 Declaration Place','jsackers@aol.com',56,'f','2019-07-03 20:00:00',16.90,'1969-01-09','051159619k',29,NULL),(30,'Gareth','Draysay','6831 Di Loreto Avenue','gdraysayt@eepurl.com',50,'m','2020-07-13 20:00:00',16.90,'1968-08-11','345816750b',30,NULL),(31,'Ringo','Clem','9 Monica Place','rclemu@tinyurl.com',32,'m','2018-07-19 20:00:00',39.90,'1960-07-07','427000097e',5,NULL),(32,'Bruis','Iacovielli','9 Del Mar Park','biacovielliv@hao123.com',43,'m','2020-05-22 20:00:00',16.90,'2005-12-19','765409381l',32,NULL),(33,'Wenonah','Roubay','09 Jenna Trail','wroubayw@digg.com',47,'f','2021-02-06 22:00:00',39.90,'1975-11-25','192860146e',33,NULL),(34,'Anabelle','Geldart','7958 Spenser Circle','ageldartx@ebay.com',31,'f','2017-11-15 22:00:00',16.90,'2016-09-23','828823923o',5,NULL),(35,'Floris','Thecham','6692 Sutherland Center','fthechamy@cocolog-nifty.com',72,'f','2018-04-18 20:00:00',16.90,'2007-07-26','420772216j',5,NULL),(36,'Carola','Rosenblath','99 Thackeray Place','crosenblathz@cbslocal.com',26,'f','2018-02-01 22:00:00',16.90,'1969-03-15','503229277x',36,NULL),(37,'Katuscha','Crannach','2 Stephen Park','kcrannach10@mozilla.org',39,'f','2016-07-30 20:00:00',39.90,'2002-02-16','596891627f',37,NULL),(38,'Carlyn','Shillan','2370 Cody Avenue','cshillan11@ocn.ne.jp',50,'f','2020-02-27 22:00:00',39.90,'2011-03-03','745648620s',5,NULL),(39,'Ramon','Hirtz','5999 Sunfield Pass','rhirtz12@wiley.com',29,'m','2018-06-15 20:00:00',39.90,'1975-10-23','715202972y',39,NULL),(40,'Budd','Blacklock','42647 Thackeray Hill','bblacklock13@livejournal.com',75,'m','2020-05-18 20:00:00',39.90,'2002-08-27','385077906p',40,NULL),(41,'Gerrie','Hatherall','45 Stephen Trail','ghatherall14@geocities.jp',42,'f','2017-11-03 22:00:00',39.90,'2021-04-30','804718072l',12,NULL),(42,'Vernor','McKnockiter','1834 Judy Alley','vmcknockiter15@elegantthemes.com',73,'m','2019-08-21 20:00:00',39.90,'1980-06-24','354095136u',12,NULL),(43,'Reba','Guisler','2 Farmco Alley','rguisler16@51.la',54,'f','2018-08-22 20:00:00',39.90,'2013-11-17','981013381y',12,NULL),(44,'Tatum','Hansemann','66 Nevada Point','thansemann17@webnode.com',43,'f','2020-10-13 20:00:00',39.90,'1981-05-09','834462241a',21,NULL),(45,'Leodora','Lightwing','3 Oakridge Trail','llightwing18@is.gd',42,'f','2019-03-18 22:00:00',16.90,'2007-09-21','200550262a',45,NULL),(46,'Nolan','Lovekin','72 Prairieview Center','nlovekin19@printfriendly.com',72,'m','2020-11-23 22:00:00',16.90,'1977-12-16','176552537h',46,NULL),(47,'Ferdie','Haston','03610 Lillian Circle','fhas_ton1a@slideshare.net',74,'m','2016-07-17 20:00:00',16.90,'1998-04-04','518179291c',5,NULL),(48,'Eugene','Gough','4399 Westend Center','egough1b@ucoz.com',66,'m','2016-08-18 20:00:00',16.90,'1989-09-23','504005780m',12,NULL),(49,'Clemente','Olifaunt','51 Northwestern Point','colifaunt1c@blogspot.com',59,'m','2019-02-19 22:00:00',16.90,'1996-11-09','288949468d',49,NULL),(50,'Kain','Woolward','32 Prairieview Avenue','kwoolward1d@dion.ne.jp',55,'m','2017-01-29 22:00:00',16.90,'2015-11-25','751493176d',12,NULL),(51,'Kristi','Bohman','54 Westend Way','kbohman1e@soundcloud.com',60,'f','2019-06-18 20:00:00',39.90,'1968-07-31','769702894p',5,NULL),(52,'Luisa','Laverock','8066 Center Lane','llaverock1f@github.com',23,'f','2019-06-26 20:00:00',16.90,'1980-07-17','324270299i',52,40),(53,'Marsh','Noulton','58 Graceland Trail','mnoulton1g@nsw.gov.au',63,'m','2019-07-14 20:00:00',39.90,'2016-08-06','128265610c',53,NULL),(54,'Hill','Danielli','56 Thackeray Hill','hdanielli1h@tmall.com',45,'m','2017-10-04 20:00:00',16.90,'2014-07-18','202792381t',5,NULL),(55,'Osbert','Carverhill','0277 Darwin Park','ocarverhill1i@baidu.com',64,'m','2019-07-09 20:00:00',16.90,'1977-02-08','349918153e',55,NULL),(56,'Merell','López','69384 Dakota Way','mva_sovic1j@alexa.com',41,'m','2017-04-13 20:00:00',49.90,'1998-04-16','634812216t',56,NULL),(57,'Ollie','Darben','36 Bowman Parkway','odarben1k@webeden.co.uk',33,'m','2017-07-28 20:00:00',39.90,'2005-11-27','864265129p',57,NULL),(58,'Shae','Anfossi','0223 Schurz Drive','sanfossi1l@de.vu',67,'f','2018-11-17 22:00:00',39.90,'2006-02-21','364951093x',58,NULL),(59,'Rafe','Durand','65614 Mesta Road','rdur_and1m@gravatar.com',33,'m','2017-04-17 20:00:00',16.90,'1995-07-02','027308983p',59,NULL),(60,'Gail','Jollie','95238 Dunning Avenue','gjollie1n@nhs.uk',23,'f','2018-07-01 20:00:00',39.90,'1983-12-30','778580916m',60,NULL),(61,'Carolann','Mandal','57 Cascade Hill','cmandal1o@salon.com',20,'f','2017-02-15 22:00:00',16.90,'1985-09-23','165247107d',61,NULL),(62,'Garrett','Catcherside','2 Harbort Junction','gcatcherside1p@simplemachines.org',53,'m','2019-07-18 20:00:00',16.90,'2017-04-07','011992113w',62,NULL),(63,'Diena','Josilevich','5 1st Drive','djosilevich1q@prnewswire.com',64,'f','2019-07-21 20:00:00',16.90,'2007-08-19','072849552p',63,NULL),(64,'Lemar','Allon','657 Green Alley','lallon1r@tripod.com',66,'m','2020-10-16 20:00:00',16.90,'2004-03-09','924040156g',64,NULL),(65,'Adamo','Ubsdell','9211 Lyons Alley','aubsdell1s@yahoo.com',60,'m','2020-07-11 20:00:00',16.90,'1995-04-23','017694183p',65,NULL),(66,'Ania','Earney','934 Luster Junction','aearney1t@ftc.gov',38,'f','2018-12-18 22:00:00',16.90,'1963-11-02','331802559x',66,NULL),(67,'Corabel','Headford','52 Nelson Park','cheadford1u@zimbio.com',46,'f','2019-12-06 22:00:00',39.90,'2020-10-28','581918306f',67,NULL),(68,'Jerrilee','Hallyburton','28347 Northview Hill','jhallyburton1v@chicagotribune.com',37,'f','2016-08-20 20:00:00',16.90,'1973-01-01','772482388j',68,NULL),(69,'Barde','Schoular','6030 Fair Oaks Pass','bschoular1w@nydailynews.com',38,'m','2019-04-03 20:00:00',16.90,'2013-03-26','906767526x',69,NULL),(70,'Horten','Frere','38870 Johnson Terrace','hfrere1x@360.cn',47,'m','2017-11-10 22:00:00',39.90,'2020-09-23','180702013m',70,NULL),(71,'Sherman','Feathers','4579 Charing Cross Center','sfeathers1y@tmall.com',24,'m','2016-10-30 22:00:00',16.90,'1966-05-12','992249436x',71,NULL),(72,'Haydon','Coger','50 Arapahoe Plaza','hcoger1z@economist.com',66,'m','2019-12-15 22:00:00',16.90,'1999-04-09','659987726y',72,NULL),(73,'Minne','Crass','2043 Continental Parkway','mcrass20@hexun.com',34,'f','2016-07-24 20:00:00',16.90,'2005-11-29','639738852a',5,NULL),(74,'Asa','Duffell','43625 Lyons Circle','aduffell21@seesaa.net',72,'m','2016-08-20 20:00:00',39.90,'2020-11-17','477849554u',74,NULL),(75,'Jonathon','Slater','596 Almo Lane','jslater22@pen.io',67,'m','2019-09-08 20:00:00',39.90,'1962-01-15','822574866q',75,NULL),(76,'Meriel','Fowells','9608 Corben Circle','mfowells23@so-net.ne.jp',43,'f','2019-09-27 20:00:00',16.90,'1974-05-01','045533860x',76,NULL),(77,'Kaine','MacKenzie','48434 Southridge Road','kmackenzie24@amazon.co.jp',32,'m','2018-03-14 22:00:00',16.90,'2014-12-07','015939865a',77,NULL),(78,'Ellynn','Girsch','9 Packers Trail','egirsch25@chronoengine.com',66,'f','2018-05-18 20:00:00',39.90,'2015-07-20','429646041m',5,NULL),(79,'Justin','Hazle','065 Manufacturers Crossing','jhazle26@wufoo.com',69,'m','2021-01-12 22:00:00',16.90,'1969-05-07','621700496a',2,NULL),(80,'Witty','Franchi','80124 Milwaukee Road','wfranchi27@squarespace.com',39,'m','2019-10-14 20:00:00',16.90,'2010-08-23','006967227v',3,NULL),(81,'Larisa','Hallibone','56 2nd Court','lhallibone28@accuweather.com',34,'f','2016-08-18 20:00:00',16.90,'1974-02-14','732850555u',81,NULL),(82,'Virginia','Jerzak','635 5th Parkway','vjerzak29@webeden.co.uk',32,'f','2020-07-29 20:00:00',16.90,'2017-10-19','069127182v',5,NULL),(83,'Odille','Rosbrough','2018 Victoria Parkway','orosbrough2a@unesco.org',68,'f','2016-08-07 20:00:00',39.90,'1981-06-15','939805619x',83,NULL),(84,'Noell','Francescozzi','461 Algoma Plaza','nfrancescozzi2b@zdnet.com',52,'f','2018-07-25 20:00:00',16.90,'1971-10-17','103165319y',84,NULL),(85,'Lonee','Vautre','41 Kipling Court','lvautre2c@jiathis.com',53,'f','2019-10-13 20:00:00',39.90,'1968-09-11','216724920j',85,40),(86,'Renell','Kerrigan','17 Hanson Street','rkerrigan2d@sohu.com',25,'f','2018-02-03 22:00:00',39.90,'1967-05-14','803333355z',NULL,NULL),(87,'Hale','Sinfield','07 Carey Crossing','hsinfield2e@dmoz.org',59,'m','2018-10-21 20:00:00',16.90,'1987-01-15','020193739r',5,NULL),(88,'Drew','Holywell','70614 Thackeray Place','dholywell2f@tumblr.com',60,'m','2021-04-30 20:00:00',16.90,'2019-02-18','077660129y',88,NULL),(89,'Damita','Daviddi','975 Amoth Hill','ddaviddi2g@smugmug.com',55,'f','2020-11-24 22:00:00',39.90,'1964-08-20','821047555n',NULL,NULL),(90,'Peta','Topping','334 Larry Junction','ptopping2h@economist.com',32,'f','2020-09-12 20:00:00',16.90,'1988-03-03','868317926z',5,NULL),(91,'Curt','Cleator','514 Little Fleur Hill','ccleator2i@nba.com',61,'m','2021-03-07 22:00:00',16.90,'1991-11-03','402621604k',91,NULL),(92,'Alexis','Patinkin','62049 Morningstar Place','apatinkin2j@vinaora.com',32,'m','2020-10-19 20:00:00',16.90,'2004-05-31','388188251p',NULL,NULL),(93,'Caroline','Isworth','910 Utah Park','cisworth2k@house.gov',69,'f','2019-02-18 22:00:00',16.90,'1992-12-19','774477014z',93,NULL),(94,'Flemming','Churchley','129 Kipling Park','fchurchley2l@forbes.com',50,'m','2018-07-18 20:00:00',39.90,'2000-12-09','010547249m',94,40),(95,'Rafferty','Dauncey','05 Laurel Hill','rdauncey2m@vimeo.com',33,'m','2016-05-26 20:00:00',16.90,'1973-11-06','242747140l',NULL,NULL),(96,'Noelani','Ritson','444 Hansons Alley','nritson2n@bloglovin.com',71,'f','2018-07-11 20:00:00',39.90,'2002-03-17','792405952j',5,NULL),(97,'Elisha','Lias','91642 Welch Point','elias2o@elpais.com',51,'m','2019-10-05 20:00:00',16.90,'1992-08-06','542210764a',5,NULL),(98,'Rudie','McLeod','05 Fairview Avenue','rmcleod2p@state.tx.us',67,'m','2019-07-19 20:00:00',39.90,'1976-03-15','109456596r',5,NULL),(99,'Nikolas','Charlick','74723 Clove Way','ncharlick2q@globo.com',62,'m','2019-10-16 20:00:00',16.90,'1976-08-08','818521105u',5,NULL),(100,'Ricca','Beveredge','9 Talisman Crossing','rbeveredge2r@tamu.edu',60,'f','2021-03-04 22:00:00',39.90,'1974-08-19','485706377o',100,NULL),(117,'Ana','Lopez','C Malasaña 33','analopez@gmail.com',34,'f','2022-10-31 20:45:37',18.00,'1984-09-20','9182938199L',NULL,NULL),(129,'Lucía','Romero','C San Bernardo 89','lucia2@gmail.com',23,'f','2022-11-23 17:44:14',40.00,'2022-11-01','88888888Y',NULL,NULL),(143,'Carlos','Maslaton','ppepee','rerere@gmail.com',22,'m','2023-02-09 20:28:32',22.99,'2000-06-14','T5955255S',NULL,NULL),(144,'Feilpe','Gonzalez','Calle Falsa 123','felipe@gmail.com',34,'m','2023-02-09 20:29:18',100.00,'1994-10-10','Y9354325A',NULL,NULL),(146,'Felipe','González','Calle Falsa 123','felipe3@gmail.com',34,'m','2023-02-09 20:29:36',100.00,'1994-10-10','82828282J',NULL,NULL),(150,'Florinda','López','C/ Paz 34','flori@hotmail.com',62,'f','2023-03-29 12:01:38',39.90,'1965-10-13','81927654G',NULL,NULL),(152,'Florinda','López','C/ Paz 34','flori1@hotmail.com',62,'f','2023-03-29 12:10:28',39.90,'1965-10-13','81927654G',NULL,NULL),(153,'Rocío','Martín','C Barco 25','rocio@gmail.com',53,NULL,'2023-03-30 09:51:26',19.90,'1990-02-10','8888888Y',NULL,NULL),(154,'Santiago','Romero','C/ Mayor 56','santiromero@gmail.com',23,'m','2023-03-30 10:21:41',32.50,'2023-03-28','33333333T',NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_ejercicios`
--

DROP TABLE IF EXISTS `clientes_ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_ejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `ejercicio_id` int NOT NULL,
  `duracion` time DEFAULT NULL,
  `repeticiones` int DEFAULT NULL,
  PRIMARY KEY (`id`,`cliente_id`,`ejercicio_id`),
  KEY `fk_clientes_has_ejercicios_ejercicios1_idx` (`ejercicio_id`),
  KEY `fk_clientes_has_ejercicios_clientes1_idx` (`cliente_id`),
  CONSTRAINT `fk_clientes_has_ejercicios_clientes1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `fk_clientes_has_ejercicios_ejercicios1` FOREIGN KEY (`ejercicio_id`) REFERENCES `ejercicios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_ejercicios`
--

LOCK TABLES `clientes_ejercicios` WRITE;
/*!40000 ALTER TABLE `clientes_ejercicios` DISABLE KEYS */;
INSERT INTO `clientes_ejercicios` VALUES (1,8,7,'00:51:00',74),(2,16,7,'00:02:05',70),(3,28,8,'00:34:32',61),(4,32,1,'00:19:51',20),(5,34,4,'00:25:18',64),(6,42,3,'00:34:36',10),(7,43,10,'00:09:37',60),(8,46,6,'00:52:41',80),(9,46,7,'00:04:33',10),(10,46,9,'00:33:36',89),(11,46,3,'00:04:23',50),(12,16,8,'00:45:00',120);
/*!40000 ALTER TABLE `clientes_ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicios`
--

DROP TABLE IF EXISTS `ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicios`
--

LOCK TABLES `ejercicios` WRITE;
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` VALUES (1,'dominadas'),(2,'pesas'),(3,'cinta correr'),(4,'eliptica'),(6,'abdominales'),(7,'flexiones'),(8,'spinning'),(9,'hit'),(10,'natacion');
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `experiencia` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,'José',4),(2,'Glenna Shepherd',19),(3,'Tamara Solomon',16),(4,'Isabelle Rowe',13),(5,'Nora Contreras',14),(6,'Bryar Simon',7),(7,'Hu Buck',16),(8,'Dolan Shannon',12),(9,'Theodore Ballard',20),(10,'Amela Gill',6),(11,'Christen Gibbs',11),(12,'Dexter Sutton',12),(13,'Ezekiel Kidd',10),(14,'Fulton Carrillo',5),(15,'Deacon Le',14),(16,'Forrest Potts',13),(17,'Cooper Richardson',5),(18,'Ulric Hall',10),(19,'Lane Hammond',9),(20,'Troy Frye',8),(21,'Prescott Mendoza',9),(22,'Nina Wells',12),(23,'Adrienne Johns',7),(24,'Thomas Hurley',7),(25,'Harlan Mccullough',11),(26,'Anne Wilkins',16),(27,'Carissa Moon',11),(28,'Cheyenne Sharp',9),(29,'Ria Stout',18),(30,'Zena Buckner',7),(31,'McKenzie Cooley',2),(32,'Halla Alexander',19),(33,'Lysandra Robles',18),(34,'Sloane Sheppard',18),(35,'Upton Blackwell',19),(36,'Hanae Gutierrez',3),(37,'Jolene Martin',2),(38,'Paloma Mcdonald',17),(39,'Cadman Cochran',9),(40,'Francis Kelley',7),(41,'Kasimir Montgomery',15),(42,'Laurel Lee',14),(43,'Lane Adkins',7),(44,'Carol Mccullough',19),(45,'Shad Strong',5),(46,'Austin Foster',7),(47,'Daquan Watkins',20),(48,'Knox Mitchell',16),(49,'Alfonso Blair',7),(50,'Phoebe Collier',3),(51,'Joshua Young',8),(52,'Anthony Williams',5),(53,'Otto Lewis',12),(54,'Jesse Vance',20),(55,'Robert Burch',11),(56,'Kato Fowler',13),(57,'Megan Wyatt',13),(58,'Zia Garza',15),(59,'Nash Howe',2),(60,'Edan Odom',15),(61,'Tanner Little',19),(62,'Chester Workman',17),(63,'Barrett Rojas',19),(64,'Dai Mack',2),(65,'Jamal Mckinney',2),(66,'Anthony Bradley',7),(67,'Thor Frye',4),(68,'Nehru Hoover',19),(69,'Natalie Hopkins',18),(70,'Elton Cross',19),(71,'Lenore Cooke',10),(72,'Maia Castillo',12),(73,'Kaye Vinson',14),(74,'Keiko Duffy',3),(75,'Patience Clark',7),(76,'Flavia Schwartz',13),(77,'Kitra Bruce',15),(79,'Camden Cunningham',2),(80,'Germaine Martin',5),(81,'Carl Finley',18),(82,'Desirae Powell',12),(83,'Nolan Clarke',15),(84,'Bruno Guy',2),(85,'Knox Mullins',18),(86,'Micah Shepard',9),(87,'Sheila Wooten',5),(88,'Jasmine Stuart',9),(89,'Edan Walsh',5),(90,'Keegan Galloway',7),(91,'Rina Griffin',18),(92,'Heidi Richmond',3),(93,'Rajah Snow',7),(94,'Daria Baldwin',8),(95,'Rose Stout',14),(96,'Phelan Miles',11),(97,'Emerald Baxter',14),(98,'Ori Bell',14),(99,'Ashton Cline',11),(100,'Meredith Herman',8),(101,'Roberto',23),(102,'Rodrigo',3),(103,'María',3),(104,'Rosa',21),(105,'Marianito',19),(106,'Juan Carlos',10),(107,'Luis Serrano',5),(108,'Ricardo Serrano',12),(109,'Ricardo Serrano',10),(110,'Federico Martín',29);
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'regular',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (53,'roman','roman@gmail.com','$2a$08$XWZregKMR36q1b0nR.q1w.tlfLJemse9fcFiey65Gs.xj6Vn/ncUi','moderator'),(54,'ana','ana@gmail.com','$2a$08$Lfu4U78YGa8mAGoDfMrfQO/zycth0JO.xuUejgUcl5/WFdRVb1iYe','regular'),(55,'irene','irene@gmail.com','$2a$08$Mo5TDmVyeFt0CCp.5F9A4uKTrGi4riXSE7yNqmg.zUD6kowaSS2bK','admin'),(56,'mario','mario@gmail.com','$2a$08$tro662tGAtovG.0fuPYvX.JnUGkUM0Ua/xUncQ9UtjU9CKl9GzQZu','regular'),(59,'','','$2a$08$WDzKwHc.qsmZiMuTqkmGheO3M7gQy7dEvYzxqlfY7htb2OSA9evHe','regular'),(61,'lourdes','lourdes@gmail.com','$2a$08$7uqO1NfxpGzBCTEuG73W5uWE9dAIJrguOUjpbQRGXU.G18xx3r.Gm','regular'),(62,'fede','fede@gmail.com','$2a$08$eLwzzG9qfK6aRYq752fg7usqHfpMRkhePMlfdErOjPaWyCLTv3MuO','regular'),(63,'sandra','sandra@gmail.com','$2a$08$r/wPriC0uxvd6fcsYlqCXO3q6UQb/Pby7QmBhqDiWlS9WDyR0XIF6','regular'),(64,'mateo','mateo@gmail.com','$2a$08$Z1.K5OOfPkKCWvq2l8fRVuKqWLFUfcvI4EJXn6AlvyfbbxJyY.FLC','regular'),(66,'mateo','mateo@mateo.com','$2a$08$crJFPcX4IX1y4PSLcEQh6O8DGaocrZbbzCqfJl1tQstQQCM7PHuLO','regular');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-18 20:19:47
