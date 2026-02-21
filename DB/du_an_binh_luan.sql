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
-- Table structure for table `binh_luan`
--

DROP TABLE IF EXISTS `binh_luan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binh_luan` (
  `id_binh_luan` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bai_dang` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nguoi_dung` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_binh_luan` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` int NOT NULL,
  PRIMARY KEY (`id_binh_luan`),
  KEY `id_bai_dang` (`id_bai_dang`),
  KEY `id_nguoi_dung` (`id_nguoi_dung`),
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`id_bai_dang`) REFERENCES `bai_dang` (`id_bai_dang`) ON DELETE CASCADE,
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`id_nguoi_dung`) REFERENCES `nguoi_dung` (`id_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan`
--

LOCK TABLES `binh_luan` WRITE;
/*!40000 ALTER TABLE `binh_luan` DISABLE KEYS */;
INSERT INTO `binh_luan` VALUES ('f02a2f25-fbf5-11f0-9162-005056c00001','9f9964a6-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Bài viết rất hay và dễ hiểu.','2026-01-28 03:03:36',1),('f02aa3cb-fbf5-11f0-9162-005056c00001','9f998685-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','Nội dung khá chi tiết, cảm ơn tác giả.','2026-01-28 03:03:36',1),('f02ab649-fbf5-11f0-9162-005056c00001','9f99895c-f6aa-11f0-9162-005056c00001','ab689e5d-f6a8-11f0-9162-005056c00001','Mình học được nhiều điều từ bài này.','2026-01-28 03:03:36',1),('f02aba5f-fbf5-11f0-9162-005056c00001','9f998b37-f6aa-11f0-9162-005056c00001','ab68a0ab-f6a8-11f0-9162-005056c00001','Thông tin rất hữu ích.','2026-01-28 03:03:36',1),('f02abb74-fbf5-11f0-9162-005056c00001','9f998cc5-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Bài viết khá rõ ràng.','2026-01-28 03:03:36',1),('f02abc84-fbf5-11f0-9162-005056c00001','9f999833-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','Mong bạn cập nhật thêm nội dung.','2026-01-28 03:03:36',1),('f02abd67-fbf5-11f0-9162-005056c00001','9f9999c5-f6aa-11f0-9162-005056c00001','ab689e5d-f6a8-11f0-9162-005056c00001','Đọc rất cuốn.','2026-01-28 03:03:36',1),('f02ac80f-fbf5-11f0-9162-005056c00001','9f999b5a-f6aa-11f0-9162-005056c00001','ab68a0ab-f6a8-11f0-9162-005056c00001','Cảm ơn vì đã chia sẻ.','2026-01-28 03:03:36',1),('f02ac9f1-fbf5-11f0-9162-005056c00001','9f999d1c-f6aa-11f0-9162-005056c00001','ab688cf0-f6a8-11f0-9162-005056c00001','Nội dung rất ổn.','2026-01-28 03:03:36',1),('f02ad3fa-fbf5-11f0-9162-005056c00001','9f999f04-f6aa-11f0-9162-005056c00001','ab6781ae-f6a8-11f0-9162-005056c00001','Mình rất thích bài này.','2026-01-28 03:03:36',1);
/*!40000 ALTER TABLE `binh_luan` ENABLE KEYS */;
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
