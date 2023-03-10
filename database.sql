-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: match
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
-- Table structure for table `bxh`
--

DROP TABLE IF EXISTS 'bxh';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bxh (
  `vitri` int NOT NULL,
  `mavong` int NOT NULL,
  `madoi` int NOT NULL,
  `sotran` int NOT NULL,
  `stthang` int NOT NULL,
  `stthua` int NOT NULL,
  `sthoa` int NOT NULL,
  `sobanthang` int NOT NULL,
  `sobanthua` int NOT NULL,
  `hieuso` int NOT NULL,
  `diem` int NOT NULL,
  KEY `mavong` (`mavong`),
  KEY `madoi` (`madoi`),
  CONSTRAINT `bxh_ibfk_1` FOREIGN KEY (`mavong`) REFERENCES `vongdau` (`mavongdau`),
  CONSTRAINT `bxh_ibfk_2` FOREIGN KEY (`madoi`) REFERENCES `clb` (`madoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bxh`
--

LOCK TABLES `bxh` WRITE;
/*!40000 ALTER TABLE `bxh` DISABLE KEYS */;
INSERT INTO `bxh` VALUES (2,1,75,1,1,0,0,2,1,1,3),(6,1,76,1,0,1,0,1,2,-1,0),(7,1,81,1,0,1,0,2,3,-1,0),(3,1,85,1,1,0,0,3,2,1,3),(10,1,83,1,0,1,0,1,3,-2,0),(1,1,84,1,1,0,0,3,1,2,3),(4,1,78,1,1,0,0,3,2,1,3),(8,1,87,1,0,1,0,2,3,-1,0),(5,1,77,1,1,0,0,4,3,1,3),(9,1,86,1,0,1,0,3,4,-1,0),(1,2,75,2,2,0,0,5,2,3,6),(7,2,85,2,1,1,0,4,5,-1,3),(9,2,76,2,0,2,0,2,4,-2,0),(5,2,81,2,1,1,0,4,4,0,3),(2,2,84,2,1,0,1,4,2,2,4),(8,2,87,2,0,1,1,3,4,-1,1),(10,2,83,2,0,2,0,3,6,-3,0),(6,2,86,2,1,1,0,6,6,0,3),(3,2,77,2,1,0,1,7,6,1,4),(4,2,78,2,1,0,1,6,5,1,4),(4,3,75,3,2,1,0,6,5,1,6),(3,3,81,3,2,1,0,7,5,2,6),(6,3,76,3,1,2,0,5,5,0,3),(9,3,85,3,1,2,0,5,8,-3,3),(1,3,78,3,2,0,1,10,8,2,7),(5,3,84,3,1,1,1,7,6,1,4),(2,3,77,3,2,0,1,9,7,2,7),(10,3,87,3,0,2,1,4,6,-2,1),(8,3,83,3,1,2,0,5,7,-2,3),(7,3,86,3,1,2,0,7,8,-1,3),(1,4,75,4,3,1,0,9,6,3,9),(2,4,87,4,0,3,1,5,9,-4,1);
/*!40000 ALTER TABLE `bxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clb`
--

DROP TABLE IF EXISTS `clb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clb` (
  `madoi` int NOT NULL AUTO_INCREMENT,
  `tendoi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doitruong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HLV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `socauthu` int NOT NULL,
  PRIMARY KEY (`madoi`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clb`
--

LOCK TABLES `clb` WRITE;
/*!40000 ALTER TABLE `clb` DISABLE KEYS */;
INSERT INTO `clb` VALUES (75,'FC Anh S??n','Ki???u ????nh Lon','Nguy???n ????nh Ho??ng',12),(76,'FC Di???n Ch??u','Nguy???n H???u Hi???u','Tr???n Quang H???i',7),(77,'FC TP Vinh','Tr???n V??n M???nh','Ph???m V??n ?????c',7),(78,'FC Thanh Ch????ng','Nguy???n Minh B???c','Nguy???n C??ng H??ng',7),(81,'FC ?????ng T??m','Nguy???n ?????c ?????t','Nguy???n ?????c Linh',7),(83,'FC ?????c M???nh','H?? V??n Th??i','H?? M???nh C??ng',7),(84,'FC ?????c ?????ng','Nguy???n V??n Minh','Nguy???n ?????c Anh',7),(85,'FC Di???n H???nh','Nguy???n V??n T??i','??inh V??n H???o',9),(86,'FC Thanh Tri','M?? V??n T??i','D????ng V??n Qu??',7),(87,'FC L??m ??Z','L??m cris','L??m real',7);
/*!40000 ALTER TABLE `clb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kqtd`
--

DROP TABLE IF EXISTS `kqtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kqtd` (
  `matran` int NOT NULL,
  `madoi1` int NOT NULL,
  `madoi2` int NOT NULL,
  `SVD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigian` date NOT NULL,
  `banthang1` int NOT NULL,
  `banthang2` int NOT NULL,
  KEY `matran` (`matran`),
  KEY `madoi1` (`madoi1`),
  KEY `madoi2` (`madoi2`),
  CONSTRAINT `kqtd_ibfk_1` FOREIGN KEY (`matran`) REFERENCES `trandau` (`matran`),
  CONSTRAINT `kqtd_ibfk_2` FOREIGN KEY (`madoi1`) REFERENCES `clb` (`madoi`),
  CONSTRAINT `kqtd_ibfk_3` FOREIGN KEY (`madoi2`) REFERENCES `clb` (`madoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kqtd`
--

LOCK TABLES `kqtd` WRITE;
/*!40000 ALTER TABLE `kqtd` DISABLE KEYS */;
INSERT INTO `kqtd` VALUES (1,75,76,'Anh S??n','2021-12-01',2,1),(2,85,81,'Di???n H???nh','2021-12-01',3,2),(3,84,83,'?????c ?????ng','2021-12-01',3,1),(4,87,78,'L??m ??Z','2021-12-01',2,3),(5,86,77,'Thanh Tr??','2021-12-01',3,4),(6,75,85,'Anh S??n','2021-12-02',3,1),(7,76,81,'Di???n Ch??u','2021-12-02',1,2),(8,84,87,'?????c ?????ng','2021-12-02',1,1),(9,83,86,'?????c M???nh','2021-12-02',2,3),(10,78,77,'Thanh Ch????ng','2021-12-02',3,3),(11,75,81,'Anh S??n','2021-12-03',1,3),(12,76,85,'Di???n Ch??u','2021-12-03',3,1),(13,84,78,'?????c ?????ng','2021-12-03',3,4),(14,87,77,'L??m','2021-12-03',1,2),(15,86,83,'Thanh Tr??','2021-12-03',1,2),(16,75,87,'Anh S??n ','2021-12-04',3,1);
/*!40000 ALTER TABLE `kqtd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'lampn0','lampn0@gmail.com','admin123','admin'),(5,'dinhcanh','Canhr101802@gmail.com','12345','user'),(8,'user1','user@gmail.com','user123','admin'),(9,'admin','admin','admin','admin'),(10,'admin1','admin1','lampn0@','admin'),(11,'lamchiai','lam','lamchiai','Ng?????i d??ng');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtincauthu`
--

DROP TABLE IF EXISTS `thongtincauthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtincauthu` (
  `macauthu` int NOT NULL AUTO_INCREMENT,
  `madoi` int NOT NULL,
  `tencauthu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `soao` int NOT NULL,
  `vitri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`macauthu`),
  KEY `madoi` (`madoi`),
  CONSTRAINT `thongtincauthu_ibfk_1` FOREIGN KEY (`madoi`) REFERENCES `clb` (`madoi`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtincauthu`
--

LOCK TABLES `thongtincauthu` WRITE;
/*!40000 ALTER TABLE `thongtincauthu` DISABLE KEYS */;
INSERT INTO `thongtincauthu` VALUES (1,75,'Ph???m Ng???c L??m','2001-08-18',4,'H???u v??? tr??i'),(2,75,'L?? Quang H??ng','2001-08-18',5,'H???u v??? tr??i'),(3,75,'Nguy???n ????nh Hi???u','2001-08-18',6,'H???u v??? tr??i'),(4,75,'L?? Qu???c B???o','2001-08-18',7,'H???u v??? tr??i'),(29,75,'Nguy???n ????nh C???nh','2000-02-18',11,'Trung v???'),(30,75,'Nguy???n ?????c L??m','2000-10-01',10,'Ti???n ?????o c??nh tr??i'),(31,75,'Ki???u ????nh Long','2000-06-01',17,'Th??? m??n'),(32,75,'Tr???n V??n M???nh','2004-02-10',19,'Ti???n ?????o c??nh ph???i'),(33,75,'Nguy???n ?????c C?????ng','2003-12-01',4,'H???u v??? ph???i'),(34,75,'Ph???m V??n ?????c','2001-02-01',6,'Ti???n v???'),(36,76,'Nguy???n H???u Hi???u','2001-10-01',10,'Ti???n ?????o'),(37,76,'Tr???n H???u H??o','2001-03-18',15,'Ti???n v???'),(38,76,'H??? Vi???t Anh','2002-02-20',14,'H???u v??? ph???i'),(39,76,'V?? Vi???t Anh','2000-03-08',32,'Th??? m??n'),(40,76,'L?? V??n B??nh','2002-08-09',18,'H???u v??? tr??i'),(41,76,'Tr???n Th??i ??an','2004-03-08',16,'Ti???n v???'),(42,76,'V?? Quang Duy','2000-05-04',6,'Trung v???'),(43,78,'V?? Nguy??n H???','2001-10-09',12,'Ti???n ?????o'),(44,78,'Nguy???n  Duy Hi???u','2001-02-02',5,'Ti???n v???'),(45,78,'L?? V??n Hi???p','2002-09-18',14,'Ti???n v???'),(46,78,'Nguy???n Vi???t H??ng','2002-06-04',19,'H???u v??? ph???i'),(47,78,'H?? Tu???n H??ng','2001-07-07',17,'H???u v??? tr??i'),(48,78,'Nguy???n Quang Huy','2002-04-03',13,'Ti???n ?????o'),(49,78,'Nguy???n Tr???ng Kh???i','2000-02-19',1,'Th??? m??n'),(57,75,'Tr???n Qu???c ??am','2001-08-18',3,'H???u v??? tr??i'),(58,75,'Nguyen Van A','2000-10-01',1,'Ti???n ?????o'),(59,85,'Nguy???n V??n Ninh','2000-10-01',2,'H???u v???'),(60,85,'Nguy???n ?????c To??n','2000-02-01',3,'Ti???n ?????o'),(61,85,'Nguy???n V??n ?????c','2000-10-01',1,'H???u v???'),(62,85,'Nguy???n ?????c H??','1999-02-03',4,'Ti???n ?????o'),(63,85,'Nguy???n ?????c H???i','2001-04-01',5,'Ti???n ?????o'),(64,85,'Nguy???n ?????c H???a','2000-10-01',6,'Ti???n V???'),(65,85,'T??? H???u H??o ','2000-03-01',5,'Ti???n ?????o'),(66,85,'Ho??ng Tu???n Hi???p ','2001-05-04',12,'Ti???n V???'),(67,85,'Nguy???n Th??i Kh??nh ','2000-03-01',7,'H???u V???'),(68,86,'Nguy???n Huy Nam ','2000-04-01',1,'H???u V???'),(69,86,'L?? Quang H??ng ','2000-05-01',3,'H???u v???'),(70,86,'V?? ?????c Ki??n ','2000-05-01',2,'H???u v???'),(71,86,'Nguy???n Tu???n Anh ','2000-06-01',4,'Ti???n V???'),(72,87,'Nguy???n Huy Nam ','2000-06-01',1,'Ti???n ?????o'),(73,87,'Nguy???n Tu???n Anh ','2000-10-01',2,'Ti???n ?????o'),(74,87,'Mai Xu??n ?????c ','2000-11-01',10,'Ti???n ?????o'),(75,87,'L?? Quang H??ng ','2000-12-01',6,'Ti???n V???'),(76,87,'?????ng V??n B??nh ','2000-10-01',7,'Ti???n V???'),(77,87,'Mai Xu??n ?????c ','2000-07-01',9,'Ti???n ?????o'),(78,87,'?????ng Gia Long Kh??nh ','2000-09-01',8,'Ti???n ?????o'),(79,81,'L??u V??n C??ng ','2001-01-02',1,'H???u V???'),(80,81,'L?? Quang Huy ','2001-02-02',7,'Ti???n ?????o'),(81,81,'Ph???m Quang Anh','2001-03-02',2,'Ti???n V???'),(82,81,'Nguy???n Quang Anh ','2001-04-02',3,'H???u V???'),(83,81,'Tr???n H???ng Nhung ','2001-05-02',5,'Ti???n v???'),(84,81,'Nguy???n ?????c Quang ','2001-06-02',8,'Ti???n ?????o'),(85,81,'Nguy???n Quang Thu Ph????ng  ','2001-11-02',9,'Ti???n V???'),(86,84,'Ph???m Th??i H??a ','2001-01-05',1,'H???u V???'),(87,84,'Tr???n V??n Chung ','2001-02-05',2,'H???u V???'),(88,84,'L?? Qu???c Vi???t ','2001-03-05',3,'Ti???n v???'),(89,84,'Nguy???n Anh B???ng ','2001-04-05',4,'Ti???n V???'),(90,84,'Nguy???n Th??? Trang ','2001-05-05',5,'Ti???n ?????o'),(91,84,'Tr????n ??????c Ngo??c ','2001-06-05',6,'Ti???n ?????o'),(92,84,'Nguy???n ????nh C???nh ','2001-07-05',7,'Ti???n ?????o'),(93,83,'Tr???n Th??? B??ng Giang ','2001-08-05',10,'H???u V???'),(94,83,'Nguy???n ?????c L??m ','2001-09-05',7,'Ti???n ?????o'),(95,83,'Nguy???n Long Th???y','2001-10-05',6,'H???u V???'),(96,83,'L?? Th??? Ng??n ','2001-02-06',1,'Ti???n ?????o'),(97,83,'Qu??ch Th??? Dung ','2001-03-06',8,'Ti???n ?????o'),(98,83,'Nguy???n Ho??ng Long ','2001-04-06',8,'Ti???n V???'),(99,83,'?????ng Xu??n ???? ','2001-05-06',12,'Ti???n V???'),(100,86,'Nguy???n Th??? Kim Anh ','2001-07-06',3,'H???u V???'),(101,86,'N??ng Th??? Oanh ','2001-08-06',6,'Ti???n ?????o'),(102,86,'Nguy???n Ti???n ?????t ','2001-09-06',5,'Ti???n v???'),(103,77,'Ph???m Th??? Thu Trang ','2001-01-07',1,'H???u V???'),(104,77,'Nguy???n V??n Quang ','2001-02-07',2,'Ti???n V???'),(105,77,'Tr???n V??n B??ch ','2001-04-07',3,'Ti???n ?????o'),(106,77,'V?? ?????c Th???nh ','2001-05-07',4,'H???u V???'),(107,77,'Nguy???n M???nh D??ng  ','2001-06-07',5,'Ti???n V???'),(108,77,'Nguy???n H???ng Quang ','2001-07-07',6,'Ti???n ?????o'),(109,77,'Nguy???n V??n Hi???n ','2001-08-07',7,'Ti???n ?????o');
/*!40000 ALTER TABLE `thongtincauthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trandau`
--

DROP TABLE IF EXISTS `trandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trandau` (
  `matran` int NOT NULL AUTO_INCREMENT,
  `mavong` int NOT NULL,
  `tentran` int NOT NULL,
  PRIMARY KEY (`matran`),
  KEY `mavong` (`mavong`),
  CONSTRAINT `trandau_ibfk_1` FOREIGN KEY (`mavong`) REFERENCES `vongdau` (`mavongdau`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trandau`
--

LOCK TABLES `trandau` WRITE;
/*!40000 ALTER TABLE `trandau` DISABLE KEYS */;
INSERT INTO `trandau` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,4,16),(17,4,17),(18,4,18),(19,4,19),(20,4,20),(21,5,21),(22,5,22),(23,5,23),(24,5,24),(25,5,25),(26,6,26),(27,6,27),(28,6,28),(29,6,29),(30,6,30),(31,7,31),(32,7,32),(33,7,33),(34,7,34),(35,7,35),(36,8,36),(37,8,37),(38,8,38),(39,8,39),(40,8,40),(41,9,41),(42,9,42),(43,9,43),(44,9,44),(45,9,45);
/*!40000 ALTER TABLE `trandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vongdau`
--

DROP TABLE IF EXISTS `vongdau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vongdau` (
  `mavongdau` int NOT NULL AUTO_INCREMENT,
  `tenvongdau` int NOT NULL,
  PRIMARY KEY (`mavongdau`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vongdau`
--

LOCK TABLES `vongdau` WRITE;
/*!40000 ALTER TABLE `vongdau` DISABLE KEYS */;
INSERT INTO `vongdau` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14);
/*!40000 ALTER TABLE `vongdau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19  9:25:38
