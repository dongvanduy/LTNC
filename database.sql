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
INSERT INTO `clb` VALUES (75,'FC Anh Sơn','Kiều Đình Lon','Nguyễn Đình Hoàng',12),(76,'FC Diễn Châu','Nguyễn Hữu Hiếu','Trần Quang Hải',7),(77,'FC TP Vinh','Trần Văn Mạnh','Phạm Văn Đức',7),(78,'FC Thanh Chương','Nguyễn Minh Bắc','Nguyễn Công Hùng',7),(81,'FC Đồng Tâm','Nguyễn Đức Đạt','Nguyễn Đức Linh',7),(83,'FC Đức Mạnh','Hà Văn Thái','Hà Mạnh Công',7),(84,'FC Đức Đồng','Nguyễn Văn Minh','Nguyễn Đức Anh',7),(85,'FC Diễn Hạnh','Nguyễn Văn Tài','Đinh Văn Hảo',9),(86,'FC Thanh Tri','Mã Văn Tài','Dương Văn Quá',7),(87,'FC Lâm ĐZ','Lâm cris','Lâm real',7);
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
INSERT INTO `kqtd` VALUES (1,75,76,'Anh Sơn','2021-12-01',2,1),(2,85,81,'Diễn Hạnh','2021-12-01',3,2),(3,84,83,'Đức Đồng','2021-12-01',3,1),(4,87,78,'Lâm ĐZ','2021-12-01',2,3),(5,86,77,'Thanh Trì','2021-12-01',3,4),(6,75,85,'Anh Sơn','2021-12-02',3,1),(7,76,81,'Diễn Châu','2021-12-02',1,2),(8,84,87,'Đức Đồng','2021-12-02',1,1),(9,83,86,'Đức Mạnh','2021-12-02',2,3),(10,78,77,'Thanh Chương','2021-12-02',3,3),(11,75,81,'Anh Sơn','2021-12-03',1,3),(12,76,85,'Diễn Châu','2021-12-03',3,1),(13,84,78,'Đức Đồng','2021-12-03',3,4),(14,87,77,'Lâm','2021-12-03',1,2),(15,86,83,'Thanh Trì','2021-12-03',1,2),(16,75,87,'Anh Sơn ','2021-12-04',3,1);
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
INSERT INTO `taikhoan` VALUES (1,'lampn0','lampn0@gmail.com','admin123','admin'),(5,'dinhcanh','Canhr101802@gmail.com','12345','user'),(8,'user1','user@gmail.com','user123','admin'),(9,'admin','admin','admin','admin'),(10,'admin1','admin1','lampn0@','admin'),(11,'lamchiai','lam','lamchiai','Người dùng');
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
INSERT INTO `thongtincauthu` VALUES (1,75,'Phạm Ngọc Lâm','2001-08-18',4,'Hậu vệ trái'),(2,75,'Lê Quang Hưng','2001-08-18',5,'Hậu vệ trái'),(3,75,'Nguyền Đình Hiếu','2001-08-18',6,'Hậu vệ trái'),(4,75,'Lê Quốc Bảo','2001-08-18',7,'Hậu vệ trái'),(29,75,'Nguyễn Đình Cảnh','2000-02-18',11,'Trung vệ'),(30,75,'Nguyễn Đức Lâm','2000-10-01',10,'Tiền đạo cánh trái'),(31,75,'Kiều Đình Long','2000-06-01',17,'Thủ môn'),(32,75,'Trần Văn Mạnh','2004-02-10',19,'Tiền đạo cánh phải'),(33,75,'Nguyễn Đức Cường','2003-12-01',4,'Hậu vệ phải'),(34,75,'Phạm Văn Đức','2001-02-01',6,'Tiền vệ'),(36,76,'Nguyễn Hữu Hiếu','2001-10-01',10,'Tiền đạo'),(37,76,'Trần Hữu Hào','2001-03-18',15,'Tiền vệ'),(38,76,'Hồ Việt Anh','2002-02-20',14,'Hậu vệ phải'),(39,76,'Vũ Việt Anh','2000-03-08',32,'Thủ môn'),(40,76,'Lê Văn Bình','2002-08-09',18,'Hậu vệ trái'),(41,76,'Trần Thái Đan','2004-03-08',16,'Tiền vệ'),(42,76,'Vũ Quang Duy','2000-05-04',6,'Trung vệ'),(43,78,'Vũ Nguyên Hạ','2001-10-09',12,'Tiền đạo'),(44,78,'Nguyễn  Duy Hiếu','2001-02-02',5,'Tiền vệ'),(45,78,'Lê Văn Hiệp','2002-09-18',14,'Tiền vệ'),(46,78,'Nguyễn Việt Hùng','2002-06-04',19,'Hậu vệ phải'),(47,78,'Hà Tuấn Hùng','2001-07-07',17,'Hậu vệ trái'),(48,78,'Nguyễn Quang Huy','2002-04-03',13,'Tiền đạo'),(49,78,'Nguyễn Trọng Khải','2000-02-19',1,'Thủ môn'),(57,75,'Trần Quốc Đam','2001-08-18',3,'Hậu vệ trái'),(58,75,'Nguyen Van A','2000-10-01',1,'Tiền đạo'),(59,85,'Nguyễn Văn Ninh','2000-10-01',2,'Hậu vệ'),(60,85,'Nguyễn Đức Toàn','2000-02-01',3,'Tiền Đạo'),(61,85,'Nguyễn Văn Đức','2000-10-01',1,'Hậu vệ'),(62,85,'Nguyễn Đức Hà','1999-02-03',4,'Tiền Đạo'),(63,85,'Nguyễn Đức Hải','2001-04-01',5,'Tiền Đạo'),(64,85,'Nguyễn Đức Hứa','2000-10-01',6,'Tiền Vệ'),(65,85,'Tạ Hữu Hào ','2000-03-01',5,'Tiền Đạo'),(66,85,'Hoàng Tuấn Hiệp ','2001-05-04',12,'Tiền Vệ'),(67,85,'Nguyễn Thái Khánh ','2000-03-01',7,'Hậu Vệ'),(68,86,'Nguyễn Huy Nam ','2000-04-01',1,'Hậu Vệ'),(69,86,'Lê Quang Hưng ','2000-05-01',3,'Hậu vệ'),(70,86,'Vũ Đức Kiên ','2000-05-01',2,'Hậu vệ'),(71,86,'Nguyễn Tuấn Anh ','2000-06-01',4,'Tiền Vệ'),(72,87,'Nguyễn Huy Nam ','2000-06-01',1,'Tiền Đạo'),(73,87,'Nguyễn Tuấn Anh ','2000-10-01',2,'Tiền Đạo'),(74,87,'Mai Xuân Đức ','2000-11-01',10,'Tiền đạo'),(75,87,'Lê Quang Hưng ','2000-12-01',6,'Tiền Vệ'),(76,87,'Đặng Văn Bình ','2000-10-01',7,'Tiền Vệ'),(77,87,'Mai Xuân Đức ','2000-07-01',9,'Tiền Đạo'),(78,87,'Đặng Gia Long Khánh ','2000-09-01',8,'Tiền Đạo'),(79,81,'Lưu Văn Công ','2001-01-02',1,'Hậu Vệ'),(80,81,'Lê Quang Huy ','2001-02-02',7,'Tiền Đạo'),(81,81,'Phạm Quang Anh','2001-03-02',2,'Tiền Vệ'),(82,81,'Nguyễn Quang Anh ','2001-04-02',3,'Hậu Vệ'),(83,81,'Trần Hồng Nhung ','2001-05-02',5,'Tiền vệ'),(84,81,'Nguyễn Đức Quang ','2001-06-02',8,'Tiền Đạo'),(85,81,'Nguyễn Quang Thu Phương  ','2001-11-02',9,'Tiền Vệ'),(86,84,'Phạm Thái Hòa ','2001-01-05',1,'Hậu Vệ'),(87,84,'Trần Văn Chung ','2001-02-05',2,'Hầu Vệ'),(88,84,'Lê Quốc Việt ','2001-03-05',3,'Tiền vệ'),(89,84,'Nguyễn Anh Bằng ','2001-04-05',4,'Tiền Vệ'),(90,84,'Nguyễn Thị Trang ','2001-05-05',5,'Tiền Đạo'),(91,84,'Trần Đức Ngọc ','2001-06-05',6,'Tiền Đạo'),(92,84,'Nguyễn Đình Cảnh ','2001-07-05',7,'Tiền Đạo'),(93,83,'Trần Thị Băng Giang ','2001-08-05',10,'Hậu Vệ'),(94,83,'Nguyễn Đức Lâm ','2001-09-05',7,'Tiền Đạo'),(95,83,'Nguyễn Long Thủy','2001-10-05',6,'Hậu Vệ'),(96,83,'Lê Thị Ngân ','2001-02-06',1,'Tiền Đạo'),(97,83,'Quách Thị Dung ','2001-03-06',8,'Tiền Đạo'),(98,83,'Nguyễn Hoàng Long ','2001-04-06',8,'Tiền Vệ'),(99,83,'Đặng Xuân Đà ','2001-05-06',12,'Tiền Vệ'),(100,86,'Nguyễn Thị Kim Anh ','2001-07-06',3,'Hậu Vệ'),(101,86,'Nông Thị Oanh ','2001-08-06',6,'Tiền Đạo'),(102,86,'Nguyễn Tiến Đạt ','2001-09-06',5,'Tiền vệ'),(103,77,'Phạm Thị Thu Trang ','2001-01-07',1,'Hậu Vệ'),(104,77,'Nguyễn Văn Quang ','2001-02-07',2,'Tiền Vệ'),(105,77,'Trần Văn Bách ','2001-04-07',3,'Tiền Đạo'),(106,77,'Vũ Đức Thịnh ','2001-05-07',4,'Hậu Vệ'),(107,77,'Nguyễn Mạnh Dũng  ','2001-06-07',5,'Tiền Vệ'),(108,77,'Nguyễn Hồng Quang ','2001-07-07',6,'Tiền Đạo'),(109,77,'Nguyễn Văn Hiền ','2001-08-07',7,'Tiền Đạo');
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
