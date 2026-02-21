-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: du_an
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `du_an`
--

DROP TABLE IF EXISTS `du_an`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `du_an` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci,
  `mau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoi_tao` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `nguoi_tao` (`nguoi_tao`),
  CONSTRAINT `du_an_ibfk_1` FOREIGN KEY (`nguoi_tao`) REFERENCES `nguoi_dung` (`id_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `du_an`
--

LOCK TABLES `du_an` WRITE;
/*!40000 ALTER TABLE `du_an` DISABLE KEYS */;
INSERT INTO `du_an` VALUES ('2c88a6d8-f6aa-11f0-9162-005056c00001','Du an Quan ly sinh vien','He thong quan ly sinh vien','#ff5733','ab6781ae-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c892eb7-f6aa-11f0-9162-005056c00001','Du an Ban hang online','Website thuong mai dien tu','#33c1ff','ab688cf0-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c8931aa-f6aa-11f0-9162-005056c00001','Du an Mang xa hoi','Ung dung ket noi nguoi dung','#9b59b6','ab689e5d-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c89335f-f6aa-11f0-9162-005056c00001','Du an Thu vien','Quan ly sach','#2ecc71','ab68a0ab-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c89369a-f6aa-11f0-9162-005056c00001','Du an Booking khach san','Dat phong truc tuyen','#f1c40f','ab68a17f-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c893831-f6aa-11f0-9162-005056c00001','Du an Todo App','Quan ly cong viec','#e67e22','ab68a235-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c893b84-f6aa-11f0-9162-005056c00001','Du an Elearning','Nen tang hoc tap','#1abc9c','ab68a2b7-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c893d6f-f6aa-11f0-9162-005056c00001','Du an Y te so','Dat lich kham benh','#e84393','ab68a32d-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c893ee2-f6aa-11f0-9162-005056c00001','Du an HRM','Quan ly nhan su','#6c5ce7','ab6781ae-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('2c894049-f6aa-11f0-9162-005056c00001','Du an Chat App','Ung dung chat realtime','#00b894','ab688cf0-f6a8-11f0-9162-005056c00001','2026-01-21 09:18:40','2026-01-21 09:18:40'),('dd7633f4-f6a9-11f0-9162-005056c00001','Test du an','Mo ta test','#ff0000','ab6781ae-f6a8-11f0-9162-005056c00001','2026-01-21 09:16:27','2026-01-21 09:16:27');
/*!40000 ALTER TABLE `du_an` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-28 15:49:42
