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
-- Table structure for table `bai_dang`
--

DROP TABLE IF EXISTS `bai_dang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_dang` (
  `id_bai_dang` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_du_an` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tac_gia` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'ban_nhap',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_bai_dang`),
  KEY `id_du_an` (`id_du_an`),
  KEY `id_tac_gia` (`id_tac_gia`),
  CONSTRAINT `bai_dang_ibfk_1` FOREIGN KEY (`id_du_an`) REFERENCES `du_an` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bai_dang_ibfk_2` FOREIGN KEY (`id_tac_gia`) REFERENCES `nguoi_dung` (`id_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_dang`
--

LOCK TABLES `bai_dang` WRITE;
/*!40000 ALTER TABLE `bai_dang` DISABLE KEYS */;
INSERT INTO `bai_dang` VALUES ('9f9964a6-f6aa-11f0-9162-005056c00001','2c88a6d8-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Gioi thieu du an','Bai viet gioi thieu tong quan ve du an.','post1.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f998685-f6aa-11f0-9162-005056c00001','2c892eb7-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','Tien do thuc hien','Cap nhat tien do moi nhat cua du an.','post2.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f99895c-f6aa-11f0-9162-005056c00001','2c8931aa-f6aa-11f0-9162-005056c00001','ab689e5d-f6a8-11f0-9162-005056c00001','Chuc nang chinh','Mo ta cac chuc nang noi bat.','post3.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f998b37-f6aa-11f0-9162-005056c00001','2c89335f-f6aa-11f0-9162-005056c00001','ab68a0ab-f6a8-11f0-9162-005056c00001','Bao cao tuan','Bao cao cong viec trong tuan.','post4.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f998cc5-f6aa-11f0-9162-005056c00001','2c89369a-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Thiet ke giao dien','Trinh bay thiet ke giao dien he thong.','post5.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f999833-f6aa-11f0-9162-005056c00001','2c893831-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','API Backend','Xay dung va toi uu backend API.','post6.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f9999c5-f6aa-11f0-9162-005056c00001','2c893b84-f6aa-11f0-9162-005056c00001','ab689e5d-f6a8-11f0-9162-005056c00001','Test he thong','Kiem thu va danh gia chat luong.','post7.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f999b5a-f6aa-11f0-9162-005056c00001','2c893d6f-f6aa-11f0-9162-005056c00001','ab68a0ab-f6a8-11f0-9162-005056c00001','Trien khai','Huong dan trien khai san pham.','post8.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f999d1c-f6aa-11f0-9162-005056c00001','2c88a6d8-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','Toi uu hieu nang','Cai thien toc do va bao mat.','post9.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53'),('9f999f04-f6aa-11f0-9162-005056c00001','2c892eb7-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Tong ket du an','Tong hop va danh gia ket qua.','post10.jpg','xuat_ban','2026-01-21 09:21:53','2026-01-21 09:21:53');
/*!40000 ALTER TABLE `bai_dang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-28 15:49:43
