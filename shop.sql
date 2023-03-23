-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cID` int NOT NULL AUTO_INCREMENT,
  `mID` varchar(500) DEFAULT NULL,
  `pID` int DEFAULT NULL,
  `cQTY` int DEFAULT '1',
  `cPRICE` int DEFAULT '0',
  `cNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `mID` (`mID`),
  KEY `pID` (`pID`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`mID`) REFERENCES `member` (`mID`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (7,'201805144',2,2,69000,'노페 패딩'),(14,'admin',11,1,0,NULL),(15,'admin',12,1,0,NULL),(16,'admin',48,1,0,NULL),(17,'admin',49,1,0,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mID` varchar(500) NOT NULL,
  `mPW` varchar(50) DEFAULT NULL,
  `mNAME` varchar(100) DEFAULT NULL,
  `mADDRESS` varchar(500) DEFAULT NULL,
  `mCASH` int DEFAULT '0',
  `mPHONENUM` varchar(300) DEFAULT NULL,
  `mBIRTH` date DEFAULT NULL,
  `mLEVEL` int DEFAULT '1',
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('0NcqFwA','password','정믿음','987 반포대로',0,'010-1570-3332','1985-05-12',1),('201805144','A5C4844C9A19B288B4408F2884DE8985','권석경','충북',0,'010-9626-8879','1999-09-17',1),('21o2o2o3k','123123123','충남어쩌구','',0,'010-9323-7897','1999-09-17',1),('a1s1d1','123123','rkskdfk','',0,'12301230202','1999-09-17',1),('aaaa','123','aaaaaa','aaa',0,'222','1999-09-17',1),('admin','admin','어드민',NULL,0,'00000000000','1900-01-01',0),('asdasd','11','232aa','',0,'asdasd','1999-09-17',1),('bTlqX1d','password','임샘','0189 역삼로',0,'010-7007-0101','2001-05-30',1),('iHUKkcU','12354','황나길','571 석촌호수로',0,'010-4283-4614','1998-11-02',1),('LHSa4G4','789456','사공미르','436 봉은사로',0,'010-6715-1880','1980-06-07',1),('psXS0Sg','123456','남궁한결','720 가락로',0,'010-6347-2025','1927-10-01',1),('rMuqCOW','8446132','윤미르','522 학동로',0,'010-2744-5244','1999-07-12',1),('test1','1234','test1','123',0,'123','1999-09-17',1),('test1234','1234','asdf','asdf',0,'01090594472','1999-09-17',1),('TsGOvsC','123456','유빛가람','3497 선릉로',0,'010-6761-7130','1976-08-19',1),('VGkHyki','12354','신우람','493 석촌호수로',0,'010-5540-1063','2005-01-08',1),('Ze8cZ4l','789456','추한결','155 도산대로',0,'010-2134-2605','1984-09-09',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nID` int NOT NULL,
  `nWRITER` varchar(100) DEFAULT NULL,
  `nPW` varchar(100) DEFAULT NULL,
  `nTITLE` varchar(100) DEFAULT NULL,
  `nCONTENT` longtext,
  `nFILE` varchar(1000) DEFAULT NULL,
  `nREPLY` varchar(500) DEFAULT NULL,
  `nDATE` date DEFAULT NULL,
  `views` int DEFAULT '0',
  `nCATEGORY` int DEFAULT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'test',NULL,'test',NULL,NULL,NULL,NULL,0,NULL),(2,'test',NULL,'test1',NULL,NULL,NULL,NULL,0,NULL),(3,'test',NULL,'test2',NULL,NULL,NULL,NULL,0,NULL),(4,'test',NULL,'test3',NULL,NULL,NULL,NULL,0,NULL),(5,'test',NULL,'test3',NULL,NULL,NULL,NULL,0,NULL),(6,'test',NULL,'test4',NULL,NULL,NULL,NULL,0,NULL),(7,'test',NULL,'test5',NULL,NULL,NULL,NULL,0,NULL),(8,'test',NULL,'test6',NULL,NULL,NULL,NULL,0,NULL),(9,'test',NULL,'test7',NULL,NULL,NULL,NULL,0,NULL),(10,'test',NULL,'test8',NULL,NULL,NULL,NULL,0,NULL),(11,'test',NULL,'test9',NULL,NULL,NULL,NULL,0,NULL),(12,'test',NULL,'test10',NULL,NULL,NULL,NULL,0,NULL),(13,'test',NULL,'test11',NULL,NULL,NULL,NULL,0,NULL),(14,'test',NULL,'test12',NULL,NULL,NULL,NULL,0,NULL),(15,'test',NULL,'test13',NULL,NULL,NULL,NULL,0,NULL),(16,'test',NULL,'test14',NULL,NULL,NULL,NULL,0,NULL),(17,'test',NULL,'test15',NULL,NULL,NULL,NULL,0,NULL),(18,'test',NULL,'test16',NULL,NULL,NULL,NULL,0,NULL),(19,'test',NULL,'test17',NULL,NULL,NULL,NULL,0,NULL),(20,'test',NULL,'test18',NULL,NULL,NULL,NULL,0,NULL),(21,'test',NULL,'test19',NULL,NULL,NULL,NULL,0,NULL),(22,'test',NULL,'test20',NULL,NULL,NULL,NULL,0,NULL),(23,'test',NULL,'test21',NULL,NULL,NULL,NULL,0,NULL),(24,'test',NULL,'test22',NULL,NULL,NULL,NULL,0,NULL),(25,'test',NULL,'test23',NULL,NULL,NULL,NULL,0,NULL),(26,'test',NULL,'test24',NULL,NULL,NULL,NULL,0,NULL),(27,'test',NULL,'test25',NULL,NULL,NULL,NULL,0,NULL),(28,'test',NULL,'test26',NULL,NULL,NULL,NULL,0,NULL),(29,'test',NULL,'test27',NULL,NULL,NULL,NULL,0,NULL),(30,'test',NULL,'test28',NULL,NULL,NULL,NULL,0,NULL),(31,'test',NULL,'test29',NULL,NULL,NULL,NULL,0,NULL),(32,'test',NULL,'test30',NULL,NULL,NULL,NULL,0,NULL),(33,'test',NULL,'test31',NULL,NULL,NULL,NULL,0,NULL),(34,'test',NULL,'test32',NULL,NULL,NULL,NULL,0,NULL),(35,'test',NULL,'test33',NULL,NULL,NULL,NULL,0,NULL),(36,'test',NULL,'test34',NULL,NULL,NULL,NULL,0,NULL),(37,'test',NULL,'test35',NULL,NULL,NULL,NULL,0,NULL),(38,'test',NULL,'test36',NULL,NULL,NULL,NULL,0,NULL),(39,'test',NULL,'test37',NULL,NULL,NULL,NULL,0,NULL),(40,'test',NULL,'test38',NULL,NULL,NULL,NULL,0,NULL),(41,'test',NULL,'test39',NULL,NULL,NULL,NULL,0,NULL),(42,'test',NULL,'test40',NULL,NULL,NULL,NULL,0,NULL),(43,'test',NULL,'test41',NULL,NULL,NULL,NULL,0,NULL),(44,'test',NULL,'test42',NULL,NULL,NULL,NULL,0,NULL),(45,'test',NULL,'test43',NULL,NULL,NULL,NULL,0,NULL),(46,'test',NULL,'test44',NULL,NULL,NULL,NULL,0,NULL),(47,'test',NULL,'test45',NULL,NULL,NULL,NULL,0,NULL),(48,'test',NULL,'test46',NULL,NULL,NULL,NULL,0,NULL),(49,'test',NULL,'test47',NULL,NULL,NULL,NULL,0,NULL),(50,'test',NULL,'test48',NULL,NULL,NULL,NULL,0,NULL),(51,'test',NULL,'test49',NULL,NULL,NULL,NULL,0,NULL),(52,'test',NULL,'test50',NULL,NULL,NULL,NULL,0,NULL),(53,'test',NULL,'test51',NULL,NULL,NULL,NULL,0,NULL),(54,'test',NULL,'test52',NULL,NULL,NULL,NULL,0,NULL),(55,'test',NULL,'test53',NULL,NULL,NULL,NULL,0,NULL),(56,'test',NULL,'test54',NULL,NULL,NULL,NULL,0,NULL),(57,'test',NULL,'test55',NULL,NULL,NULL,NULL,0,NULL),(58,'test',NULL,'test56',NULL,NULL,NULL,NULL,0,NULL),(59,'test',NULL,'test57',NULL,NULL,NULL,NULL,0,NULL),(60,'test',NULL,'test58',NULL,NULL,NULL,NULL,0,NULL),(61,'test',NULL,'test59',NULL,NULL,NULL,NULL,0,NULL),(62,'test',NULL,'test60',NULL,NULL,NULL,NULL,0,NULL),(63,'test',NULL,'test61',NULL,NULL,NULL,NULL,0,NULL),(64,'test',NULL,'test62',NULL,NULL,NULL,NULL,0,NULL),(65,'test',NULL,'test63',NULL,NULL,NULL,NULL,0,NULL),(66,'test',NULL,'test64',NULL,NULL,NULL,NULL,0,NULL),(67,'test',NULL,'test65',NULL,NULL,NULL,NULL,0,NULL),(68,'test',NULL,'test66',NULL,NULL,NULL,NULL,0,NULL),(69,'test',NULL,'test67',NULL,NULL,NULL,NULL,0,NULL),(70,'test',NULL,'test68',NULL,NULL,NULL,NULL,0,NULL),(71,'test',NULL,'test69',NULL,NULL,NULL,NULL,0,NULL),(72,'test',NULL,'test70',NULL,NULL,NULL,NULL,0,NULL),(73,'test',NULL,'test71',NULL,NULL,NULL,NULL,0,NULL),(74,'test',NULL,'test72',NULL,NULL,NULL,NULL,0,NULL),(75,'test',NULL,'test73',NULL,NULL,NULL,NULL,0,NULL),(76,'test',NULL,'test74',NULL,NULL,NULL,NULL,0,NULL),(77,'test',NULL,'test75',NULL,NULL,NULL,NULL,0,NULL),(78,'test',NULL,'test76',NULL,NULL,NULL,NULL,0,NULL),(79,'test',NULL,'test77',NULL,NULL,NULL,NULL,0,NULL),(80,'test',NULL,'test78',NULL,NULL,NULL,NULL,0,NULL),(81,'test',NULL,'test79',NULL,NULL,NULL,NULL,0,NULL),(82,'test',NULL,'test80',NULL,NULL,NULL,NULL,0,NULL),(83,'test',NULL,'test81',NULL,NULL,NULL,NULL,0,NULL),(84,'test',NULL,'test82',NULL,NULL,NULL,NULL,0,NULL),(85,'test',NULL,'test83',NULL,NULL,NULL,NULL,0,NULL),(86,'test',NULL,'test84',NULL,NULL,NULL,NULL,0,NULL),(87,'test',NULL,'test85',NULL,NULL,NULL,NULL,0,NULL),(88,'test',NULL,'test86',NULL,NULL,NULL,NULL,0,NULL),(89,'test',NULL,'test87',NULL,NULL,NULL,NULL,0,NULL),(90,'test',NULL,'test88',NULL,NULL,NULL,NULL,0,NULL),(91,'test',NULL,'test89',NULL,NULL,NULL,NULL,0,NULL),(92,'test',NULL,'test90',NULL,NULL,NULL,NULL,0,NULL),(93,'test',NULL,'test91',NULL,NULL,NULL,NULL,0,NULL),(94,'test',NULL,'test92',NULL,NULL,NULL,NULL,0,NULL),(95,'test',NULL,'test93',NULL,NULL,NULL,NULL,0,NULL),(96,'test',NULL,'test94',NULL,NULL,NULL,NULL,0,NULL),(97,'test',NULL,'test95',NULL,NULL,NULL,NULL,0,NULL),(98,'test',NULL,'test96',NULL,NULL,NULL,NULL,0,NULL),(99,'test',NULL,'test97',NULL,NULL,NULL,NULL,0,NULL),(100,'test',NULL,'test98',NULL,NULL,NULL,NULL,0,NULL),(101,'test',NULL,'test99',NULL,NULL,NULL,NULL,0,NULL),(102,'test',NULL,'test100',NULL,NULL,NULL,NULL,0,NULL),(103,'test',NULL,'test101',NULL,NULL,NULL,NULL,0,NULL),(104,'test',NULL,'test102',NULL,NULL,NULL,NULL,0,NULL),(105,'test',NULL,'test103',NULL,NULL,NULL,NULL,0,NULL),(106,'test',NULL,'test104',NULL,NULL,NULL,NULL,0,NULL),(107,'test',NULL,'test105',NULL,NULL,NULL,NULL,0,NULL),(108,'test',NULL,'test106',NULL,NULL,NULL,NULL,0,NULL),(109,'test',NULL,'test107',NULL,NULL,NULL,NULL,0,NULL),(110,'test',NULL,'test108',NULL,NULL,NULL,NULL,0,NULL),(111,'test',NULL,'test109',NULL,NULL,NULL,NULL,0,NULL),(112,'test',NULL,'test110',NULL,NULL,NULL,NULL,0,NULL),(113,'test',NULL,'test111',NULL,NULL,NULL,NULL,0,NULL),(114,'test',NULL,'test112',NULL,NULL,NULL,NULL,0,NULL),(115,'test',NULL,'test113',NULL,NULL,NULL,NULL,0,NULL),(116,'test',NULL,'test114',NULL,NULL,NULL,NULL,0,NULL),(117,'test',NULL,'test115',NULL,NULL,NULL,NULL,0,NULL),(118,'test',NULL,'test116',NULL,NULL,NULL,NULL,0,NULL),(119,'test',NULL,'test117',NULL,NULL,NULL,NULL,0,NULL),(120,'test',NULL,'test118',NULL,NULL,NULL,NULL,0,NULL),(121,'test',NULL,'test119',NULL,NULL,NULL,NULL,0,NULL),(122,'test',NULL,'test120',NULL,NULL,NULL,NULL,0,NULL),(123,'test',NULL,'test121',NULL,NULL,NULL,NULL,0,NULL),(124,'test',NULL,'test122',NULL,NULL,NULL,NULL,0,NULL),(125,'test',NULL,'test123',NULL,NULL,NULL,NULL,0,NULL),(126,'test',NULL,'test124',NULL,NULL,NULL,NULL,0,NULL),(127,'test',NULL,'test125',NULL,NULL,NULL,NULL,0,NULL),(128,'test',NULL,'test126',NULL,NULL,NULL,NULL,0,NULL),(129,'test',NULL,'test127',NULL,NULL,NULL,NULL,0,NULL),(130,'test',NULL,'test128',NULL,NULL,NULL,NULL,0,NULL),(131,'test',NULL,'test129',NULL,NULL,NULL,NULL,0,NULL),(132,'test',NULL,'test130',NULL,NULL,NULL,NULL,0,NULL),(133,'test',NULL,'test131',NULL,NULL,NULL,NULL,0,NULL),(134,'test',NULL,'test132',NULL,NULL,NULL,NULL,0,NULL),(135,'test',NULL,'test133',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oID` int NOT NULL AUTO_INCREMENT,
  `mID` varchar(500) DEFAULT NULL,
  `cID` int DEFAULT NULL,
  `oNAME` varchar(100) DEFAULT NULL,
  `oPHONENUM` varchar(300) DEFAULT NULL,
  `oADDRESS` varchar(500) DEFAULT NULL,
  `oQTY` int DEFAULT '1',
  `pID` int NOT NULL,
  `oDATE` date DEFAULT NULL,
  `oPRICE` int DEFAULT NULL,
  PRIMARY KEY (`oID`),
  KEY `mID` (`mID`),
  KEY `pID` (`pID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`mID`) REFERENCES `member` (`mID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'admin',NULL,NULL,NULL,NULL,1,2,'2022-12-05',339000),(2,'admin',NULL,'어드민',NULL,NULL,1,2,'2022-12-05',339000),(3,'admin',NULL,'어드민','00000000000',NULL,1,2,'2022-12-05',339000),(4,'admin',NULL,NULL,NULL,NULL,1,3,'2022-12-05',69000),(5,'admin',NULL,NULL,NULL,NULL,1,3,'2022-12-06',69000),(6,'admin',NULL,'어드민','00000000000',NULL,1,117,'2022-12-06',528000),(7,'admin',NULL,NULL,NULL,NULL,1,2,'2022-12-06',339000),(8,NULL,NULL,NULL,NULL,NULL,1,2,'2022-12-06',339000),(9,'admin',NULL,'어드민','00000000000',NULL,1,2,'2022-12-07',339000),(10,'admin',NULL,NULL,NULL,NULL,1,11,'2022-12-07',139000),(11,'201805144',NULL,'권석경','010-9626-8879','충북',1,78,'2022-12-07',94000),(12,'201805144',NULL,NULL,NULL,NULL,1,130,'2022-12-07',39000),(13,'admin',NULL,'어드민','00000000000',NULL,1,2,'2022-12-09',339000),(14,NULL,NULL,NULL,NULL,NULL,1,75,'2022-12-10',79000),(15,'admin',NULL,NULL,NULL,NULL,1,119,'2022-12-10',430000);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pID` int NOT NULL AUTO_INCREMENT,
  `pNAME` varchar(100) DEFAULT NULL,
  `pPRICE` int DEFAULT NULL,
  `pSTOCK` int DEFAULT NULL,
  `pIMAGE1` varchar(1000) DEFAULT NULL,
  `pIMAGE2` blob,
  `pIMAGE3` varchar(1000) DEFAULT NULL,
  `pDETAIL` longtext,
  `pHIT` int DEFAULT '0',
  `pCATEGORY` varchar(100) DEFAULT NULL,
  `pVIEW` int DEFAULT '0',
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'노페패딩',339000,50,'https://image.msscdn.net/images/goods_img/20220412/2482269/2482269_1_320.jpg','','','노스페이스 1996 에코눕시 자켓',0,'OUTER',0),(3,'LAUREL OVERSIZED HOODIE',69000,50,'https://image.msscdn.net/images/goods_img/20191103/1211169/1211169_9_125.jpg','','','혼성 후드티',0,'HOODIE',0),(4,'YALE TONE ARCH HOODIE',79000,100,'https://image.msscdn.net/images/goods_img/20210111/1742661/1742661_5_125.jpg','','','예일 후디',0,'HOODIE',0),(5,'VANS OLDSCHOOL',85000,100,'https://image.msscdn.net/images/goods_img/20180718/816033/816033_1_125.jpg','','','반스 신발',0,'SNIKERS',0),(6,'DEEP ONE TUCK SWEAT PANTS',39000,50,'https://image.msscdn.net/images/goods_img/20200818/1551840/1551840_1_125.jpg','','','딥원 스웻팬츠',0,'PANTS',0),(7,'우먼스 월계수 와이드팬츠',42000,85,'https://image.msscdn.net/images/goods_img/20220516/2562527/2562527_1_125.jpg','','','우먼스 월계수 와이드팬츠',0,'PANTS',0),(8,'Lee ECOBAG',26000,75,'https://image.msscdn.net/images/goods_img/20191203/1242166/1242166_4_125.jpg','','','빅 트위치 로고 에코백',0,'BAG',0),(9,'루키 언스트럭쳐 볼캡 LA',36000,16,'https://image.msscdn.net/images/goods_img/20191105/1214174/1214174_9_125.jpg','','','MLB LA',0,'CAP',0),(10,'루키 언스트럭쳐 볼캡 NY',36000,78,'https://image.msscdn.net/images/goods_img/20191105/1214169/1214169_7_125.jpg','','','MLB NY',0,'CAP',0),(11,'몬스터 숏패딩_블랙 ',139000,100,'https://image.msscdn.net/images/goods_img/20210930/2154879/2154879_3_500.jpg?t=20220926094308',NULL,NULL,'숏패딩',0,'OUTER',0),(12,'RDS 유틸리티 덕다운 푸파 숏패딩_쿨그레이 ',124000,100,'https://image.msscdn.net/images/goods_img/20200803/1535337/1535337_1_500.jpg?t=20221021150317',NULL,NULL,'숏패딩',0,'OUTER',0),(13,'하이넥 리치포켓 패딩 점퍼_블랙 ',129000,100,'https://image.msscdn.net/images/goods_img/20220825/2744524/2744524_2_500.jpg?t=20221121100450',NULL,NULL,'패딩',0,'OUTER',0),(14,'RDS 에센셜 덕다운 푸파 숏패딩_4color ',124000,100,'https://image.msscdn.net/images/goods_img/20220825/2744529/2744529_1_500.jpg?t=20220916115140',NULL,NULL,'숏패딩',0,'OUTER',0),(15,'MTR 발마칸 코트 (블랙) ',329000,100,'https://image.msscdn.net/images/goods_img/20200901/1575612/1575612_1_500.jpg?t=20220828164423',NULL,NULL,'코트',0,'OUTER',0),(16,'C 로고 후디 네이비 ',79000,100,'https://image.msscdn.net/images/goods_img/20150918/252021/252021_5_500.jpg?t=20220819151517',NULL,NULL,'C 로고 후디',0,'HOODIE',0),(17,'RDS 유틸리티 덕다운 푸파 숏패딩_차콜 ',124000,100,'https://image.msscdn.net/images/goods_img/20220825/2744536/2744536_4_500.jpg?t=20221102143717',NULL,NULL,'숏패딩',0,'OUTER',0),(18,'RDS 유틸리티 덕다운 푸파 숏패딩_블랙 ',124000,100,'https://image.msscdn.net/images/goods_img/20200803/1535333/1535333_2_500.jpg?t=20220921154124',NULL,NULL,'숏패딩',0,'OUTER',0),(19,'RDS 유틸리티 덕다운 푸파 숏패딩_크림 ',124000,100,'https://image.msscdn.net/images/goods_img/20220825/2744537/2744537_3_500.jpg?t=20221102143644',NULL,NULL,'숏패딩',0,'OUTER',0),(20,'CGP 알파벳 로고 트레이닝 셋업_네이비 ',97900,100,'https://image.msscdn.net/images/goods_img/20220725/2680402/2680402_3_500.jpg?t=20220816092749',NULL,NULL,'트레이닝 셋트',0,'TRAINING SET',0),(21,'?락업 트랙탑 - 블랙 ',99000,100,'https://image.msscdn.net/images/goods_img/20210812/2061715/2061715_1_500.jpg?t=20210818105704',NULL,NULL,'트레이닝 셋트',0,'TRAINING SET',0),(22,'22FW OVERSIZED CASHMERE BALMACAAN COAT BLACK ',299000,100,'https://image.msscdn.net/images/goods_img/20220908/2782764/2782764_1_500.jpg?t=20220920174756',NULL,NULL,'코트',0,'OUTER',0),(23,'우먼) 넥워머 크롭 에센셜 패딩_크림 ',119000,100,'https://image.msscdn.net/images/goods_img/20220825/2744515/2744515_2_500.jpg?t=20221004145344',NULL,NULL,'패딩',0,'OUTER',0),(24,'CGP 심플 로고 트레이닝 셋업_멜란지그레이 ',97900,100,'https://image.msscdn.net/images/goods_img/20220726/2681543/2681543_2_500.jpg?t=20220803082528',NULL,NULL,'트레이닝 셋트',0,'TRAINING SET',0),(25,'베츠 어센틱 후드 그레이 ',82000,100,'https://image.msscdn.net/images/goods_img/20200924/1622019/1622019_6_500.jpg?t=20221104100222',NULL,NULL,'어센틱 후디',0,'HOODIE',0),(26,'워셔블 하찌 니트 - 11 COLOR ',59000,100,'https://image.msscdn.net/images/goods_img/20220303/2396645/2396645_4_500.jpg?t=20220930095511',NULL,NULL,'워셔블 니트',0,'KNITWEAR',0),(27,'베츠 어센틱 맨투맨 오트밀 ',69000,100,'https://image.msscdn.net/images/goods_img/20210909/2120260/2120260_3_500.jpg?t=20220914111610',NULL,NULL,'어센틱 맨투맨',0,'TSHIRT',0),(28,'T-Logo Hoodie Heather Grey ',95000,100,'https://image.msscdn.net/images/goods_img/20220831/2758349/2758349_1_500.jpg?t=20220831183027',NULL,NULL,'T-LOGO 후디',0,'HOODIE',0),(29,'CGP 아치 로고 트레이닝 셋업_멜란지그레이 ',97900,100,'https://image.msscdn.net/images/goods_img/20210728/2043036/2043036_6_500.jpg?t=20220816092641',NULL,NULL,'CGP 트레이닝 셋업',0,'TRAINING SET',0),(30,'CGP 심플 로고 트레이닝 셋업_오트밀 ',97900,100,'https://image.msscdn.net/images/goods_img/20220725/2680400/2680400_4_500.jpg?t=20221118100442',NULL,NULL,'CGP 트레이닝 셋업',0,'TRAINING SET',0),(31,'CGP 서클 로고 하프집업 맨투맨 셋업_멜란지그레이 ',97900,100,'https://image.msscdn.net/images/goods_img/20220103/2289480/2289480_3_500.jpg?t=20220816092824',NULL,NULL,'CGP 맨투맨 셋업',0,'TRAINING SET',0),(32,'CGP 헤리티지 럭비 맨투맨 셋업_스트라이프 ',97900,100,'https://image.msscdn.net/images/goods_img/20220725/2680380/2680380_2_500.jpg?t=20220816092416',NULL,NULL,'CGP 맨투맨 셋업',0,'TRAINING SET',0),(33,'이지 와이드 데님 팬츠 그레이 ',49800,100,'https://image.msscdn.net/images/goods_img/20210826/2092852/2092852_4_500.jpg?t=20221012160640',NULL,NULL,'와이드 데님 팬츠',0,'PANTS',0),(34,'원턱 와이드 스웨트팬츠 그레이 ',52000,100,'https://image.msscdn.net/images/goods_img/20210906/2112059/2112059_1_500.jpg?t=20210909113606',NULL,NULL,'와이드 스웨트 팬츠',0,'PANTS',0),(35,'유니섹스 세미 와이드 밴딩 슬랙스 겨울 ',57000,100,'https://image.msscdn.net/images/goods_img/20201102/1672471/1672471_1_500.jpg?t=20201102032131',NULL,NULL,'와이드 밴딩 슬랙스',0,'PANTS',0),(36,'와이드 데님 팬츠 (DEEP GREY) ',49000,100,'https://image.msscdn.net/images/goods_img/20181025/890338/890338_8_500.jpg?t=20220628150451',NULL,NULL,'와이드 데님 팬츠',0,'PANTS',0),(37,'테이퍼드 히든 밴딩 크롭 슬랙스 [블랙] ',39900,100,'https://image.msscdn.net/images/goods_img/20190910/1149328/1149328_10_500.jpg?t=20220125143718',NULL,NULL,'크롭 슬랙스',0,'PANTS',0),(38,'939 LOGO SWEAT PANTS (BLACK) ',79000,100,'https://image.msscdn.net/images/goods_img/20210304/1826978/1826978_1_500.jpg?t=20210304180630',NULL,NULL,'939 스웨트 팬츠',0,'PANTS',0),(39,'와이드 데님 팬츠 (LIGHT BLUE) ',49000,100,'https://image.msscdn.net/images/goods_img/20180914/858911/858911_6_500.jpg?t=20220628150414',NULL,NULL,'와이드 데님 팬츠',0,'PANTS',0),(40,'Deep One Tuck Sweat Pants [Grey] ',39000,100,'https://image.msscdn.net/images/goods_img/20200818/1551840/1551840_1_500.jpg?t=20200818161624',NULL,NULL,'스웨트 팬츠',0,'PANTS',0),(41,'원턱 와이드 스웨트팬츠 블랙 ',52000,100,'https://image.msscdn.net/images/goods_img/20210906/2112061/2112061_1_500.jpg?t=20210909114054',NULL,NULL,'스웨트 팬츠',0,'PANTS',0),(42,'와이드 히든 밴딩 슬랙스 [블랙] ',41900,100,'https://image.msscdn.net/images/goods_img/20190927/1168906/1168906_4_500.jpg?t=20201113172921',NULL,NULL,'와이드 밴딩 슬랙스',0,'PANTS',0),(43,'Essential Blue - MOD7ww ',138000,100,'https://image.msscdn.net/images/goods_img/20221011/2851916/2851916_1_500.jpg?t=20221011180024',NULL,NULL,'에센셜 청바지',0,'PANTS',0),(44,'파이어버드 트랙팬츠 - 블랙 / GN3517 ',99000,100,'https://image.msscdn.net/images/goods_img/20210119/1753533/1753533_1_500.jpg?t=20210122134350',NULL,NULL,'아디다스 팬츠',0,'PANTS',0),(45,'유니섹스 세미 와이드 밴딩 슬랙스 ',54000,100,'https://image.msscdn.net/images/goods_img/20180406/750908/750908_6_500.jpg?t=20200512160152',NULL,NULL,'와이드 밴딩 슬랙스',0,'PANTS',0),(46,'BUCKLE WIDE DENIM PANTS BLACK',69000,100,'https://image.msscdn.net/images/goods_img/20210531/1976079/1976079_1_500.jpg?t=20210531155145',NULL,NULL,'와이드 데님 팬츠',0,'PANTS',0),(47,'센터 뱃지 크루넥 드레스 (T32C7WOP40TWT2BDS) ',188000,100,'https://image.msscdn.net/images/goods_img/20220824/2739314/2739314_2_500.jpg?t=20220907160103',NULL,NULL,'크루넥 드레스',0,'DRESS',0),(48,'릴리 드레스 (베이지)',179000,100,'https://image.msscdn.net/images/goods_img/20220907/2776609/2776609_1_500.jpg?t=20220908011359',NULL,NULL,'릴리 드레스',0,'DRESS',0),(49,'케이블 니트 버클 트림 스웨터 드레스 ? 네이비 ',259000,100,'https://image.msscdn.net/images/goods_img/20210819/2070411/2070411_2_500.jpg?t=20211231115642',NULL,NULL,'스웨터 드레스',0,'DRESS',0),(50,'Punching Knit Dress BLACK ',69000,100,'https://image.msscdn.net/images/goods_img/20220812/2714524/2714524_2_500.jpg?t=20220823101727',NULL,NULL,'니트 드레스',0,'DRESS',0),(51,'Knitwear coloring dress ? Black ',138000,100,'https://image.msscdn.net/images/goods_img/20220906/2773233/2773233_1_500.jpg?t=20220906142015',NULL,NULL,'니트 드레스',0,'DRESS',0),(52,'유니온로고 하프집업 루즈핏 원피스 아이보리 ',79000,100,'https://image.msscdn.net/images/goods_img/20220822/2731615/2731615_3_500.jpg?t=20220901132516',NULL,NULL,'유니온로고 루즈핏 원피스',0,'DRESS',0),(53,'스웨이드 라운드 드레스 (Greenish Yellow) ',129000,100,'https://image.msscdn.net/images/goods_img/20220809/2706434/2706434_1_500.jpg?t=20220809162730',NULL,NULL,'라운드 드레스',0,'DRESS',0),(54,'미니 플리츠 스커트 라운드 카라 원피스 베이직 블랙 ',152000,100,'https://image.msscdn.net/images/goods_img/20201003/1632144/1632144_1_500.jpg?t=20201003115428',NULL,NULL,'미니 원피스 베이직',0,'DRESS',0),(55,'라이닝 포인트 니트 드레스 DEEP GREEN ',219000,100,'https://image.msscdn.net/images/goods_img/20220327/2447313/2447313_1_500.jpg?t=20220327153301',NULL,NULL,'니트 드레스',0,'DRESS',0),(56,'Punching Knit Dress IVORY ',69000,100,'https://image.msscdn.net/images/goods_img/20220812/2714533/2714533_2_500.jpg?t=20220823101800',NULL,NULL,'니트 드레스',0,'DRESS',0),(57,'릴리 드레스 (블랙) ',179000,100,'https://image.msscdn.net/images/goods_img/20220907/2776621/2776621_1_500.jpg?t=20220908011436',NULL,NULL,'릴리 드레스',0,'DRESS',0),(58,'빅 트위치로고 루즈핏 후드 원피스 멜란지 그레이 ',79000,100,'https://image.msscdn.net/images/goods_img/20220822/2731612/2731612_3_500.jpg?t=20220901132540',NULL,NULL,'빅 트위치 로고 원피스',0,'DRESS',0),(59,'EOS DRESS beige ',139000,100,'https://image.msscdn.net/images/goods_img/20220519/2569941/2569941_2_500.jpg?t=20220525182849',NULL,NULL,'EOS 드레스',0,'DRESS',0),(60,'ROSALINE DRESS ',198000,100,'https://image.msscdn.net/images/goods_img/20220914/2791604/2791604_1_500.jpg?t=20220914172324',NULL,NULL,'ROSALINE 드레스',0,'DRESS',0),(61,'Emery volum tulle skirt_BLACK ',133500,100,'https://image.msscdn.net/images/goods_img/20220223/2380328/2380328_1_500.jpg?t=20220223155422',NULL,NULL,'볼륨 스커트',0,'SKIRT',0),(62,'CLASSIC MIDI SKIRT ? KHAKI ',248000,100,'https://image.msscdn.net/images/goods_img/20220914/2788608/2788608_1_500.jpg?t=20220915153114',NULL,NULL,'MIDI 스커트',0,'SKIRT',0),(63,'컷오프 플리츠 랩 스커트 BROWN ',128000,100,'https://image.msscdn.net/images/goods_img/20220818/2725707/2725707_2_500.jpg?t=20220825125503',NULL,NULL,'컷오프 랩 스커트',0,'SKIRT',0),(64,'MOUVEMENT W QUILTING SKIRT ivory ',159000,100,'https://image.msscdn.net/images/goods_img/20220916/2796933/2796933_1_500.jpg?t=20220921180225',NULL,NULL,'QULITING스커트',0,'SKIRT',0),(65,'여성 볼포켓포인트 H라인 반전 큐롯 스커트 ',270000,100,'https://image.msscdn.net/images/goods_img/20220728/2686527/2686527_1_500.jpg?t=20220728111234',NULL,NULL,'H라인 스커트',0,'SKIRT',0),(66,'Quilting Long Denim Skirt BLACK ',72000,100,'https://image.msscdn.net/images/goods_img/20221004/2836351/2836351_2_500.jpg?t=20221012102958',NULL,NULL,'데님 스커트',0,'SKIRT',0),(67,'Double flap A-line Skirt _ Beige ',88000,100,'https://image.msscdn.net/images/goods_img/20221108/2926794/2926794_1_500.jpg?t=20221108114156',NULL,NULL,'A라인 스커트',0,'SKIRT',0),(68,'우먼즈 베이식 미니 스커트 [블랙] ',32900,100,'https://image.msscdn.net/images/goods_img/20210908/2117249/2117249_1_500.jpg?t=20220113142135',NULL,NULL,'미니 스커트',0,'SKIRT',0),(69,'케이트 랩 스커트 (화이트) ',98000,100,'https://image.msscdn.net/images/goods_img/20220907/2776678/2776678_1_500.jpg?t=20220908011742',NULL,NULL,'랩 스커트',0,'SKIRT',0),(70,'우먼즈 코듀로이 미니 스커트 [블랙] ',35900,100,'https://image.msscdn.net/images/goods_img/20210818/2069547/2069547_1_500.jpg?t=20210930101726',NULL,NULL,'미니 스커트',0,'SKIRT',0),(71,'여성 드 론 데님 스커트 - 미디움 블루 ',470000,100,'https://image.msscdn.net/images/goods_img/20221025/2889085/2889085_1_500.jpg?t=20221109120509',NULL,NULL,'데님 스커트',0,'SKIRT',0),(72,'걸스카우트 스티치 스커트 블랙 ',59000,100,'https://image.msscdn.net/images/goods_img/20220815/2716681/2716681_1_500.jpg?t=20220825184756',NULL,NULL,'스티치 스커트',0,'SKIRT',0),(73,'레그 워머 미니 스커트_블랙',58000,100,'https://image.msscdn.net/images/goods_img/20221113/2939790/2939790_1_500.jpg?t=20221113234603',NULL,NULL,'미니 스커트',0,'SKIRT',0),(74,'우먼즈 데님 미니 스커트 [딥 인디고]',36900,100,'https://image.msscdn.net/images/goods_img/20220818/2725422/2725422_1_500.jpg?t=20221109110503',NULL,NULL,'데님 미니 스커트',0,'SKIRT',0),(75,'아크 블랙 메신저백?',79000,100,'https://image.msscdn.net/images/goods_img/20210209/1789507/1789507_1_500.jpg?t=20210209195149',NULL,NULL,'메신저 백',0,'BAG',0),(76,'남성 호스페리 프린트 코팅 캔버스 크로스백 ',1750000,100,'https://image.msscdn.net/images/goods_img/20220204/2340654/2340654_1_500.jpg?t=20220307160015',NULL,NULL,'호스페리 크로스백',0,'BAG',0),(77,'BUCKLE STRAP HOBO BAG ',99000,100,'https://image.msscdn.net/images/goods_img/20210312/1842449/1842449_6_500.jpg?t=20221027111250',NULL,NULL,'HOBO 백',0,'BAG',0),(78,'앱솔루트 백팩 블랙 ',94000,100,'https://image.msscdn.net/images/goods_img/20171228/693318/693318_8_500.jpg?t=20220302144105',NULL,NULL,'앱솔루트 백팩',0,'BAG',0),(79,'NM2DN51A_빅샷',150000,100,'https://image.msscdn.net/images/goods_img/20190503/1034480/1034480_1_500.jpg?t=20221108150550',NULL,NULL,'노스페이스 백팩',0,'BAG',0),(80,'[3way]에떼백(9color) ',98000,100,'https://image.msscdn.net/images/goods_img/20220124/2324898/2324898_4_500.jpg?t=20220208122648',NULL,NULL,'에떼백',0,'BAG',0),(81,'여성 마이크로 투톤 캔버스 포켓 토트백 - 블랙:브라운 ',1520000,100,'https://image.msscdn.net/images/goods_img/20220923/2814194/2814194_1_500.jpg?t=20221101134838',NULL,NULL,'버버리 토트백',0,'BAG',0),(82,'크랙 레더 메신저백_브라운 ',119000,100,'https://image.msscdn.net/images/goods_img/20220718/2668835/2668835_1_500.jpg?t=20220727110608',NULL,NULL,'크랙 메신저백',0,'BAG',0),(83,'Oblong bag · 오블롱백 ',119000,100,'https://image.msscdn.net/images/goods_img/20220207/2344538/2344538_5_500.jpg?t=20220414105308',NULL,NULL,'오블롱 백',0,'BAG',0),(84,'여성 미니 프레야 투톤 캔버스 토트백 - 네추럴:탄 ',1690000,100,'https://image.msscdn.net/images/goods_img/20220907/2777024/2777024_1_500.jpg?t=20221102101526',NULL,NULL,'버버리 토트백',0,'BAG',0),(85,'브리즈',100000,100,'https://image.msscdn.net/images/goods_img/20220623/2630526/2630526_1_500.jpg?t=20220623105735',NULL,NULL,'브리즈',0,'BAG',0),(86,'ACCORDION WALLET IN BLACK ',85000,100,'https://image.msscdn.net/images/goods_img/20210526/1969507/1969507_2_500.jpg?t=20221018134137',NULL,NULL,'카드지갑',0,'BAG',0),(87,'어센틱 메신저백 블랙 ',79000,100,'https://image.msscdn.net/images/goods_img/20211217/2271789/2271789_3_500.jpg?t=20220628165518',NULL,NULL,'커버낫 메신저백',0,'BAG',0),(88,'스마트 다소니 24인치 프레임 캐리어 ',209000,100,'https://image.msscdn.net/images/goods_img/20220615/2615405/2615405_1_500.jpg?t=20220615112801',NULL,NULL,'다소니 캐리어',0,'BAG',0),(89,'아스티어 W - 화이트:실버 / GY5565',109000,100,'https://image.msscdn.net/images/goods_img/20220426/2515919/2515919_1_500.jpg?t=20220503160328',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(90,'척 70 클래식 블랙 162058C',95000,100,'https://image.msscdn.net/images/goods_img/20180703/810034/810034_1_500.jpg?t=20220926145452',NULL,NULL,'컨버스 신발',0,'SNIKERS',0),(91,'척테일러 올스타 블랙 옥스 M9166C',59000,100,'https://image.msscdn.net/images/goods_img/20160224/311052/311052_1_500.jpg?t=20220927152736',NULL,NULL,'컨버스 신발',0,'SNIKERS',0),(92,'BW 아미 - 화이트:그레이 / HP5515',139000,100,'https://image.msscdn.net/images/goods_img/20220629/2638067/2638067_1_500.jpg?t=20220629171937',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(93,'오즈위고 - 브라운 / FX6029',129000,100,'https://image.msscdn.net/images/goods_img/20210112/1744960/1744960_3_500.jpg?t=20210224171606',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(94,'척 70 클래식 블랙 162050C',99000,100,'https://image.msscdn.net/images/goods_img/20180703/810033/810033_1_500.jpg?t=20221007165140',NULL,NULL,'컨버스 신발',0,'SNIKERS',0),(95,'스타일 36 데콘 SF - (스웨이드/캔버스) 마쉬멜로우',79000,100,'https://image.msscdn.net/images/goods_img/20220111/2300865/2300865_1_500.jpg?t=20220121120149',NULL,NULL,'반스 신발',0,'SNIKERS',0),(96,'오즈위고 - 트리플블랙 / EE6999',129000,100,'https://image.msscdn.net/images/goods_img/20200603/1473136/1473136_4_500.jpg?t=20210224172713',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(97,'데이브레이크 운동화 CK2351-101',199000,100,'https://image.msscdn.net/images/goods_img/20211021/2192502/2192502_1_500.jpg?t=20211021153333',NULL,NULL,'나이키 신발',0,'SNIKERS',0),(98,'올드스쿨 플랫폼 - 블랙:화이트?',85000,100,'https://image.msscdn.net/images/goods_img/20180718/816033/816033_1_500.jpg?t=20180725165743',NULL,NULL,'반스 신발',0,'SNIKERS',0),(99,'척테일러 올스타 블랙 하이 M9160C',65000,100,'https://image.msscdn.net/images/goods_img/20160224/311051/311051_1_500.jpg?t=20220927152856',NULL,NULL,'컨버스 신발',0,'SNIKERS',0),(100,'BW 아미 - 화이트 / BZ0579',139000,100,'https://image.msscdn.net/images/goods_img/20170615/577636/577636_5_500.jpg?t=20220630104155',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(101,'포럼 로우 CL - 그레이 / HQ1506',119000,100,'https://image.msscdn.net/images/goods_img/20220929/2829610/2829610_2_500.jpg?t=20221014115308',NULL,NULL,'아디다스 신발',0,'SNIKERS',0),(102,'남성 슈퍼스타 블랙 탭 아이스 스타 스니커즈 - 화이트',394000,100,'https://image.msscdn.net/images/goods_img/20220919/2801305/2801305_1_500.jpg?t=20221102100627',NULL,NULL,'골든구스 신발',0,'SNIKERS',0),(103,'Seku-shi(세쿠시) 첼시 부읏츠 BYTM20W12',159000,100,'https://image.msscdn.net/images/goods_img/20200828/1568047/1568047_24_500.jpg?t=20221109094327',NULL,NULL,'슈펜 부츠',0,'BOOTS',0),(104,'UGG 오버로크 스티치 미니 부츠 (클래식 미니 ll) W - 체스넛',258000,100,'https://image.msscdn.net/images/goods_img/20210908/2116353/2116353_1_500.jpg?t=20211015102338',NULL,NULL,'어그(부츠)',0,'BOOTS',0),(105,'남성 브러시드 레더 로퍼 - 블랙 / 2DE127055F0002',897000,100,'https://image.msscdn.net/images/goods_img/20220204/2340858/2340858_1_500.jpg?t=20220204141906',NULL,NULL,'프라다 로퍼',0,'LOAFER',0),(106,'1461 3홀 모노 블랙 14345001',190000,100,'https://image.msscdn.net/images/goods_img/20170728/595040/595040_5_500.jpg?t=20220623095559',NULL,NULL,'닥터마틴 구두',0,'SHOES',0),(107,'뉴탐페레 첼시 부츠 R17M077 (블랙)',198000,100,'https://image.msscdn.net/images/goods_img/20171207/685185/685185_2_500.jpg?t=20220412102759',NULL,NULL,'로맨틱무브 부츠',0,'BOOTS',0),(108,'2976 첼시부츠 스무스 블랙 / 11853001',240000,100,'https://image.msscdn.net/images/goods_img/20171106/665782/665782_4_500.jpg?t=20220623095338',NULL,NULL,'닥터마틴 부츠',0,'BOOTS',0),(109,'WTRD1203 클리프 스퀘어토 4홀 더비슈즈 블랙',89000,100,'https://image.msscdn.net/images/goods_img/20210826/2091749/2091749_13_500.jpg?t=20210830180948',NULL,NULL,'워더로드 구두',0,'SHOES',0),(110,'퍼 카라 스웨이드 슬리퍼 (코케트) W - 체스넛 / 5125CHE?',178000,100,'https://image.msscdn.net/images/goods_img/20210728/2042865/2042865_1_500.jpg?t=20210728181941',NULL,NULL,'어그(슬리퍼)',0,'SLIPPER',0),(111,'퍼 카라 스웨이드 플랫폼 슬리퍼 (디스케트) W - 체스넛 / 1122550CHE',198000,100,'https://image.msscdn.net/images/goods_img/20210728/2042863/2042863_1_500.jpg?t=20210728182030',NULL,NULL,'어그(슬리퍼)',0,'SLIPPER',0),(112,'UGG 로고 그래픽 클리어 미니 부츠 (클래식 클리어 미니) W - 네츄럴:블랙 / 1113190NBLC?',258000,100,'https://image.msscdn.net/images/goods_img/20210908/2116357/2116357_1_500.jpg?t=20211015102817',NULL,NULL,'어그(부츠)',0,'BOOTS',0),(113,'WALLABEE 26155515',258000,100,'https://image.msscdn.net/images/goods_img/20201224/1730340/1730340_4_500.jpg?t=20211220185253',NULL,NULL,'모자크/보트 슈즈(클락스)',0,'SHOES',0),(114,'SECOND.A 스탠다드 라운드토 첼시부츠 2NDF2300GB [BLACK]',105000,100,'https://image.msscdn.net/images/goods_img/20210924/2143833/2143833_2_500.jpg?t=20220602094203',NULL,NULL,'부츠',0,'BOOTS',0),(115,'오버로크 스티치 숏 부츠 (클래식 숏 II) W - 체스넛 / 1016223CHE',278000,100,'https://image.msscdn.net/images/goods_img/20210728/2042868/2042868_1_500.jpg?t=20210728181810',NULL,NULL,'어그(부츠)',0,'BOOTS',0),(116,'남성 팀버랜드 6인치 프리미엄 부츠 / 10061-713',258000,100,'https://image.msscdn.net/images/goods_img/20161122/451851/451851_2_500.jpg?t=20180903223046',NULL,NULL,'팀버랜드(부츠)',0,'BOOTS',0),(117,'갤럭시워치5 프로 LTE/자급제 45mm',528000,100,'https://image.msscdn.net/images/goods_img/20220728/2686316/2686316_1_500.jpg?t=20220920140554',NULL,NULL,'디지털(삼성전자)',0,'WATCH',0),(118,'삼성전자 갤럭시워치5 블루투스 40mm',299000,100,'https://image.msscdn.net/images/goods_img/20220719/2670867/2670867_1_500.jpg?t=20220831093730',NULL,NULL,'디지털(삼성전자)',0,'WATCH',0),(119,'Rococo VV005',430000,100,'https://image.msscdn.net/images/goods_img/20220727/2684503/2684503_1_500.jpg?t=20220727140240',NULL,NULL,'쿼츠 아날로그(비비안 웨스트우드)',0,'WATCH',0),(120,'시계 06-4231.04.001',228000,100,'https://image.msscdn.net/images/goods_img/20180531/792295/792295_1_500.jpg?t=20220628143409',NULL,NULL,'쿼츠 아날로그(스위스 밀리터리 하노와)',0,'WATCH',0),(121,'어썸스퀘어 클래식 블랙 남성 가죽시계 LL1G20318XSB',129000,100,'https://image.msscdn.net/images/goods_img/20210127/1765855/1765855_1_500.jpg?t=20210127173841',NULL,NULL,'쿼츠 아날로그(로이드)',0,'WATCH',0),(122,'DW-5600BB-1DR',120000,100,'https://image.msscdn.net/images/goods_img/20210216/1796545/1796545_1_500.jpg?t=20210216153354',NULL,NULL,'디지털(지샥)',0,'WATCH',0),(123,'프리미엄 가죽 애플워치용 스트랩 38/40/41',69900,100,'https://image.msscdn.net/images/goods_img/20210407/1884659/1884659_3_500.jpg?t=20221114130547',NULL,NULL,'시계 용품(로이드)',0,'WATCH',0),(124,'체사레 42 리미티드 에디션 실버블랙 남성시계?',115000,100,'https://image.msscdn.net/images/goods_img/20220613/2610829/2610829_4_500.jpg?t=20220907172003',NULL,NULL,'쿼츠 아날로그(람브레타 시계)',0,'WATCH',0),(125,'GA-2100-1A1DR',130000,100,'https://image.msscdn.net/images/goods_img/20210216/1797263/1797263_1_500.jpg?t=20210216190144',NULL,NULL,'디지털(지샥)',0,'WATCH',0),(126,'A-158WA-1UWDF',40000,100,'https://image.msscdn.net/images/goods_img/20210405/1880626/1880626_1_500.jpg?t=20220714103539',NULL,NULL,'디지털(카시오)',0,'WATCH',0),(127,'APPLE WATCH STRAP AST-B1502DC 애플워치 스트랩 42 mm 44 mm 45 mm',84000,100,'https://image.msscdn.net/images/prd_img/20210307/1831384/detail_1831384_1_500.jpg?t=20210307105241',NULL,NULL,'시계 용품(실버 태그)',0,'WATCH',0),(128,'LTP-V009D-4EUDF',51000,100,'https://image.msscdn.net/images/goods_img/20220916/2799681/2799681_1_500.jpg?t=20220916180741',NULL,NULL,'쿼츠 아날로그(카시오)',0,'WATCH',0),(129,'올라운더 4 in 1 고속 무선충전 무드등 시계?',51900,100,'https://image.msscdn.net/images/goods_img/20220825/2742527/2742527_1_500.jpg?t=20220825144941',NULL,NULL,'기타 시계(무아스)',0,'WATCH',0),(130,'뉴 젤리 비니 NY (Black)',39000,100,'https://image.msscdn.net/images/goods_img/20191105/1214193/1214193_4_500.jpg?t=20210826143146',NULL,NULL,'비니(엠엘비)',0,'CAP',0),(131,'Small Logo Cap (JN5GCU192IV)',35000,100,'https://image.msscdn.net/images/goods_img/20200330/1374018/1374018_2_500.jpg?t=20200403134011',NULL,NULL,'캡 모자(지프)',0,'CAP',0),(132,'Typeservice Web Cap [Dark Gray]',39000,100,'https://image.msscdn.net/images/goods_img/20210915/2134140/2134140_3_500.jpg?t=20220829233758',NULL,NULL,'캡 모자(타입서비스)',0,'CAP',0),(133,'여성 유니티 스노우보드 볼캡 - 퍼플 / 680739410B20527',320000,100,'https://image.msscdn.net/images/goods_img/20220412/2483266/2483266_1_500.jpg?t=20220510094603',NULL,NULL,'캡 모자(발렌시아가)',0,'CAP',0),(134,'홀리데이 시그니처 볼 캡 [그린]?',39000,100,'https://image.msscdn.net/images/goods_img/20211223/2280117/2280117_1_500.jpg?t=20211223113028',NULL,NULL,'캡 모자(밀로)',0,'CAP',0),(135,'NE3CN66A 데날리 플리스 이어머프 캡/EX',49000,100,'https://image.msscdn.net/images/goods_img/20221006/2845714/2845714_1_500.jpg?t=20221006201035',NULL,NULL,'트루퍼(노스페이스)',0,'CAP',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rID` int NOT NULL AUTO_INCREMENT,
  `nID` int NOT NULL,
  `rREPLY` varchar(500) DEFAULT 'None',
  `mID` varchar(500) NOT NULL,
  `pID` int NOT NULL,
  `rRATING` float DEFAULT '0',
  PRIMARY KEY (`rID`),
  KEY `nID` (`nID`),
  KEY `ADDCASCADE` (`mID`),
  KEY `pID` (`pID`),
  CONSTRAINT `ADDCASCADE` FOREIGN KEY (`mID`) REFERENCES `member` (`mID`) ON DELETE CASCADE,
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`nID`) REFERENCES `notice` (`nID`),
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`mID`) REFERENCES `member` (`mID`),
  CONSTRAINT `reply_ibfk_3` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (7,4,'12ㅑ3ㅏ1ㅡ','TsGOvsC',4,0),(9,6,'하이','psXS0Sg',6,0),(35,6,'testtesasdfasdfasdfsds','admin',6,0),(36,6,'test','admin',6,0),(37,118,'asd','admin',118,0),(56,119,'\n123123','admin',119,0),(58,2,'4444','201805144',2,4.5),(59,2,'완전0점','201805144',2,NULL),(61,2,'새로고침0점테스트트트','201805144',2,NULL),(62,15,'asd','admin',15,NULL),(63,15,'asd','admin',15,NULL),(64,11,'asd','admin',11,NULL),(65,2,'asdfasdf','test1234',2,5);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wID` int NOT NULL AUTO_INCREMENT,
  `mID` varchar(500) DEFAULT NULL,
  `pID` int DEFAULT NULL,
  `wQTY` int DEFAULT '1',
  PRIMARY KEY (`wID`),
  KEY `mID` (`mID`),
  KEY `pID` (`pID`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`mID`) REFERENCES `member` (`mID`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`pID`) REFERENCES `product` (`pID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (6,'admin',18,1),(7,'admin',19,1),(8,'admin',24,1),(15,'admin',70,1),(17,'admin',48,1),(18,'admin',11,1),(20,'201805144',15,1),(21,'201805144',23,1),(22,'admin',17,1),(23,'test1234',2,1);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 18:21:26
