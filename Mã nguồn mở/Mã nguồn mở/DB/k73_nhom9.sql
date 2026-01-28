-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2025 at 08:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k73_nhom9`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_dang`
--

CREATE TABLE `bai_dang` (
  `id_bai_dang` int NOT NULL,
  `id_du_an` int NOT NULL,
  `id_tac_gia` int NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ban_nhap',
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bai_dang`
--

INSERT INTO `bai_dang` (`id_bai_dang`, `id_du_an`, `id_tac_gia`, `tieu_de`, `noi_dung`, `anh`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(4, 2, 14, 'Nhập môn Công nghệ phần mềm', 'Bài 2 đã có ảnh', 'anhcuadohuyen.png', '2', '2025-12-13 02:49:09', '2025-12-13 02:54:40'),
(5, 2, 14, 'Test đăng ảnh', 'test', '1765596321_images (2).jpg', '2', '2025-12-13 03:25:21', '2025-12-13 03:33:58'),
(7, 14, 14, 'Tạo bài viết đầu tiên', 'Cập nhật bài viết', '1765603054_2.png', '2', '2025-12-13 05:17:34', '2025-12-13 14:25:46'),
(8, 14, 3, 'Đóng góp bài thứ 2', 'Đang đợi duyệt bài', NULL, '2', '2025-12-13 14:05:23', '2025-12-13 14:25:23'),
(9, 14, 3, 'Đóng góp bài thứ 3', 'Đã được duyệt', NULL, '2', '2025-12-13 14:05:50', '2025-12-13 14:26:58'),
(10, 14, 17, 'Đóng góp bài thứ 4', 'Người điều hành đóng góp', '1765635273_LLMs.png', '2', '2025-12-13 14:14:33', '2025-12-13 15:32:52'),
(17, 14, 14, 'hello', 'hai', NULL, '2', '2025-12-14 02:10:10', '2025-12-14 02:10:10'),
(18, 14, 18, 'Ngày mai là chủ nhật', 'hôm nay là thứ 7', NULL, '3', '2025-12-14 02:23:01', '2025-12-14 02:45:44'),
(22, 14, 18, 'Helo', 'bai viet rat hay', '', '1', '2025-12-14 03:50:24', '2025-12-15 08:51:41'),
(23, 15, 18, 'Bài 1', 'Hello world', NULL, '2', '2025-12-14 04:08:21', '2025-12-14 04:08:21'),
(26, 15, 18, 'Bai 2', 'Hom nay di hoc', NULL, '2', '2025-12-14 07:36:03', '2025-12-14 07:36:03'),
(28, 2, 14, 'Bài viết đăng trên dự án B', 'test', NULL, '1', '2025-12-14 14:06:21', '2025-12-14 14:06:21'),
(31, 16, 20, 'Tạo bài viết đầu tiên chủ sở hữu', 'OK', NULL, '2', '2025-12-14 15:01:59', '2025-12-14 15:01:59'),
(32, 16, 16, 'Người đóng góp đăng bài 1', 'Duyệt', NULL, '2', '2025-12-14 15:06:08', '2025-12-14 15:12:22'),
(33, 16, 16, 'Người đóng góp đăng bài 2', 'Không duyệt', NULL, '3', '2025-12-14 15:06:25', '2025-12-14 15:10:59'),
(34, 16, 16, 'Người đóng góp đăng bài 3', 'Chờ duyệt', NULL, '1', '2025-12-14 15:06:36', '2025-12-14 15:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id_binh_luan` int NOT NULL,
  `id_bai_dang` int NOT NULL,
  `id_nguoi_dung` int NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_binh_luan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binh_luan`
--

INSERT INTO `binh_luan` (`id_binh_luan`, `id_bai_dang`, `id_nguoi_dung`, `noi_dung`, `ngay_binh_luan`, `trang_thai`) VALUES
(1, 5, 14, 'Đẹp', '2025-12-13 05:01:54', 2),
(5, 5, 14, 'Người đóng góp bình luận', '2025-12-13 13:24:06', 1),
(7, 7, 14, 'Chủ sở hữu bình luận', '2025-12-13 13:34:28', 2),
(9, 10, 17, 'hello', '2025-12-13 15:42:30', 2),
(12, 17, 18, 'hello', '2025-12-14 03:06:55', 2),
(13, 26, 17, 'hello', '2025-12-14 07:37:13', 2),
(15, 31, 16, 'Người đóng góp bình luận - Chờ duyệt', '2025-12-14 15:07:19', 2),
(17, 32, 16, 'ok', '2025-12-14 15:07:50', 2),
(18, 32, 1, 'Người điều hành bình luận thành công', '2025-12-14 15:12:48', 2),
(19, 31, 1, 'Người điều hành bình luận thành công', '2025-12-14 15:12:58', 2);

-- --------------------------------------------------------

--
-- Table structure for table `du_an`
--

CREATE TABLE `du_an` (
  `id` int NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci,
  `mau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoi_tao` int NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `du_an`
--

INSERT INTO `du_an` (`id`, `tieu_de`, `mo_ta`, `mau`, `nguoi_tao`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(2, 'Dự án Doraemon', 'Dự án của Doraemon', '#2196F3', 3, '2025-12-08 14:21:25', '2025-12-08 14:27:10'),
(11, 'Du an cua Tran Thi B', 'Test tren du an', '#84C1FF', 3, '2025-12-09 07:17:33', '2025-12-09 07:17:33'),
(13, 'Công nghệ web', 'Hạn nộp 14/12', '#FF84E1', 17, '2025-12-12 14:28:01', '2025-12-12 14:28:01'),
(14, 'Dự án của Huyền', 'Test thử lại', '#FF8484', 14, '2025-12-13 05:16:41', '2025-12-13 13:35:37'),
(15, 'Công nghệ web', 'nộp project 14/12', '#84C1FF', 18, '2025-12-14 04:07:56', '2025-12-14 04:07:56'),
(16, 'Dự án làm chủ sở hữu', 'Dự án 1', '#84C1FF', 20, '2025-12-14 14:53:57', '2025-12-14 14:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `hanh_dong_nguoi_dung`
--

CREATE TABLE `hanh_dong_nguoi_dung` (
  `id` int NOT NULL,
  `id_nguoi_dung` int DEFAULT NULL,
  `hanh_dong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoi_gian` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hanh_dong_nguoi_dung`
--

INSERT INTO `hanh_dong_nguoi_dung` (`id`, `id_nguoi_dung`, `hanh_dong`, `thoi_gian`) VALUES
(2, 2, 'Đăng xuất hệ thống', '2025-12-14 04:38:29'),
(3, 18, 'Đăng nhập hệ thống', '2025-12-14 04:40:15'),
(4, 18, 'Đăng xuất hệ thống', '2025-12-14 04:40:20'),
(5, 2, 'Đăng nhập hệ thống', '2025-12-14 04:40:29'),
(6, 2, 'Đăng xuất hệ thống', '2025-12-14 07:25:12'),
(7, 18, 'Đăng nhập hệ thống', '2025-12-14 07:27:25'),
(8, 18, 'Đăng xuất hệ thống', '2025-12-14 07:27:51'),
(9, 2, 'Đăng nhập hệ thống', '2025-12-14 07:27:59'),
(10, 2, 'Đăng xuất hệ thống', '2025-12-14 07:35:31'),
(11, 18, 'Đăng nhập hệ thống', '2025-12-14 07:35:38'),
(12, 18, 'Đăng bài viết mới trong dự án ID 15', '2025-12-14 07:36:03'),
(13, 18, 'Đăng xuất hệ thống', '2025-12-14 07:36:09'),
(14, 2, 'Đăng nhập hệ thống', '2025-12-14 07:36:16'),
(15, 2, 'Đăng xuất hệ thống', '2025-12-14 07:36:48'),
(16, 17, 'Đăng nhập hệ thống', '2025-12-14 07:36:59'),
(17, 17, 'Bình luận bài viết trong dự án ID 15', '2025-12-14 07:37:13'),
(18, 17, 'Đăng bài viết mới trong dự án ID 14', '2025-12-14 07:38:33'),
(19, 17, 'Đăng xuất hệ thống', '2025-12-14 07:39:02'),
(20, 2, 'Đăng nhập hệ thống', '2025-12-14 07:39:08'),
(21, 2, 'Đăng xuất hệ thống', '2025-12-14 07:44:14'),
(22, 17, 'Đăng nhập hệ thống', '2025-12-14 07:44:29'),
(23, 17, 'Đăng xuất hệ thống', '2025-12-14 07:55:18'),
(24, 18, 'Đăng nhập hệ thống', '2025-12-14 07:55:26'),
(25, 18, 'Đăng xuất hệ thống', '2025-12-14 07:56:03'),
(26, 2, 'Đăng nhập hệ thống', '2025-12-14 07:56:10'),
(27, 2, 'Đăng xuất hệ thống', '2025-12-14 07:56:48'),
(28, 17, 'Đăng nhập hệ thống', '2025-12-14 07:56:59'),
(29, 17, 'Đăng xuất hệ thống', '2025-12-14 07:57:23'),
(30, 18, 'Đăng nhập hệ thống', '2025-12-14 07:57:30'),
(31, 18, 'Duyệt bình luận ID 13 trong dự án ID 15', '2025-12-14 08:01:48'),
(32, 18, 'Đăng xuất hệ thống', '2025-12-14 08:02:12'),
(33, 17, 'Đăng nhập hệ thống', '2025-12-14 08:02:20'),
(34, 17, 'Đăng xuất hệ thống', '2025-12-14 08:02:33'),
(35, 18, 'Đăng nhập hệ thống', '2025-12-14 08:02:39'),
(36, 18, 'Đăng xuất hệ thống', '2025-12-14 08:03:02'),
(37, 14, 'Đăng nhập hệ thống', '2025-12-14 11:24:24'),
(38, 14, 'Đăng xuất hệ thống', '2025-12-14 11:25:07'),
(39, 2, 'Đăng nhập hệ thống', '2025-12-14 11:25:17'),
(40, 2, 'Đăng nhập hệ thống', '2025-12-14 11:31:09'),
(41, 2, 'Đăng xuất hệ thống', '2025-12-14 11:32:56'),
(42, 14, 'Đăng nhập hệ thống', '2025-12-14 11:33:06'),
(43, 2, 'Đăng nhập hệ thống', '2025-12-14 11:38:56'),
(44, 2, 'Đăng xuất hệ thống', '2025-12-14 11:48:09'),
(45, 2, 'Đăng nhập hệ thống', '2025-12-14 11:48:17'),
(46, 2, 'Đăng xuất hệ thống', '2025-12-14 13:01:21'),
(47, 2, 'Đăng nhập hệ thống', '2025-12-14 13:09:35'),
(48, 2, 'Đăng xuất hệ thống', '2025-12-14 13:09:37'),
(49, 2, 'Đăng nhập hệ thống', '2025-12-14 13:09:45'),
(50, 2, 'Đăng nhập hệ thống', '2025-12-14 13:10:01'),
(51, 2, 'Đăng xuất hệ thống', '2025-12-14 13:17:28'),
(52, 14, 'Đăng nhập hệ thống', '2025-12-14 13:17:35'),
(53, 14, 'Đăng xuất hệ thống', '2025-12-14 13:33:42'),
(54, 14, 'Đăng nhập hệ thống', '2025-12-14 14:00:10'),
(55, 14, 'Đăng xuất hệ thống', '2025-12-14 14:51:33'),
(56, 20, 'Đăng nhập hệ thống', '2025-12-14 14:53:23'),
(57, 20, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 14:54:34'),
(58, 20, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:00:50'),
(59, 20, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 15:01:40'),
(60, 20, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 15:01:59'),
(61, 20, 'Đăng xuất hệ thống', '2025-12-14 15:04:57'),
(62, 16, 'Đăng nhập hệ thống', '2025-12-14 15:05:35'),
(63, 16, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 15:06:08'),
(64, 16, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 15:06:25'),
(65, 16, 'Đăng bài viết mới trong dự án ID 16', '2025-12-14 15:06:36'),
(66, 16, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:07:19'),
(67, 16, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:07:44'),
(68, 16, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:07:50'),
(69, 16, 'Đăng xuất hệ thống', '2025-12-14 15:08:09'),
(70, 1, 'Đăng nhập hệ thống', '2025-12-14 15:08:48'),
(71, 1, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:12:48'),
(72, 1, 'Bình luận bài viết trong dự án ID 16', '2025-12-14 15:12:58'),
(73, 1, 'Đăng xuất hệ thống', '2025-12-14 15:13:19'),
(74, 20, 'Đăng nhập hệ thống', '2025-12-14 15:13:35'),
(75, 20, 'Đăng xuất hệ thống', '2025-12-14 15:14:14'),
(76, 16, 'Đăng nhập hệ thống', '2025-12-14 15:15:36'),
(77, 16, 'Đăng xuất hệ thống', '2025-12-14 15:18:56'),
(78, 20, 'Đăng nhập hệ thống', '2025-12-14 15:19:08'),
(79, 20, 'Duyệt bình luận ID 17 trong dự án ID 16', '2025-12-14 15:19:15'),
(80, 20, 'Xóa bình luận ID 16 trong dự án ID 16', '2025-12-14 15:19:21'),
(81, 20, 'Duyệt bình luận ID 15 trong dự án ID 16', '2025-12-14 15:19:23'),
(82, 20, 'Đăng xuất hệ thống', '2025-12-14 15:19:38'),
(83, 16, 'Đăng nhập hệ thống', '2025-12-14 15:20:04'),
(84, 16, 'Đăng xuất hệ thống', '2025-12-14 15:21:25'),
(85, 2, 'Đăng nhập hệ thống', '2025-12-14 15:21:35'),
(86, 2, 'Đăng xuất hệ thống', '2025-12-14 15:21:51'),
(87, 2, 'Đăng nhập hệ thống', '2025-12-14 15:22:55'),
(88, 2, 'Đăng xuất hệ thống', '2025-12-14 15:23:29'),
(89, 16, 'Đăng nhập hệ thống', '2025-12-14 15:23:37'),
(90, 16, 'Đăng xuất hệ thống', '2025-12-14 15:23:39'),
(91, 16, 'Đăng nhập hệ thống', '2025-12-14 15:29:21'),
(92, 16, 'Đăng xuất hệ thống', '2025-12-14 15:29:24'),
(93, 17, 'Đăng xuất hệ thống', '2025-12-15 08:35:16'),
(94, 14, 'Đăng nhập hệ thống', '2025-12-15 08:35:34'),
(95, 14, 'Đăng xuất hệ thống', '2025-12-15 08:41:09'),
(96, 2, 'Đăng nhập hệ thống', '2025-12-15 08:41:18'),
(97, 2, 'Đăng xuất hệ thống', '2025-12-15 08:48:02'),
(98, 14, 'Đăng nhập hệ thống', '2025-12-15 08:48:12'),
(99, 14, 'Đăng xuất hệ thống', '2025-12-15 08:48:36'),
(100, 2, 'Đăng nhập hệ thống', '2025-12-15 08:48:46'),
(101, 2, 'Đăng xuất hệ thống', '2025-12-15 08:49:01'),
(102, 14, 'Đăng nhập hệ thống', '2025-12-15 08:49:10'),
(103, 14, 'Đăng xuất hệ thống', '2025-12-15 08:52:17'),
(104, 2, 'Đăng nhập hệ thống', '2025-12-15 08:52:25'),
(105, 2, 'Đăng xuất hệ thống', '2025-12-15 08:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id_nguoi_dung` int NOT NULL,
  `hoten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goi_y_mk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai_tai_khoan` tinyint NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1',
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ngay_cap_nhat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id_nguoi_dung`, `hoten`, `tendangnhap`, `email`, `matkhau`, `goi_y_mk`, `loai_tai_khoan`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Nguyễn Văn A', 'Nguoidung1', 'Nguyenvana@gmail.com', '44446146c3ba4e6d292ee27330a75371', 'Ngu', 2, 1, '2025-12-08 13:24:02', '2025-12-14 15:21:02'),
(2, 'Quản trị viên', 'Admin', 'AdminWeb@gmail.com', '65b8ecad75f146cffbe8b6d358730f35', NULL, 1, 1, '2025-12-08 13:24:02', '2025-12-14 13:57:12'),
(3, 'Trần Thị B', 'nguoidung2', 'TranthiB@gmail.con', 'd29e7783027278b99492947f13c949f1', NULL, 2, 0, '2025-12-08 13:24:02', '2025-12-15 08:55:19'),
(14, 'Đỗ Huyền', 'Dohuyen0911', 'Dohuyen09112005@gmail.com', '2e2cc0b3de3a427830f0837ce8097e9a', 'Doh', 2, 1, '2025-12-10 12:50:42', '2025-12-15 08:35:54'),
(16, 'Dao Thu Huong', 'shinchan', 'Shinchan@gmail.com', '80ba4320237d09acea242d04c38b271c', 'Shi', 2, 1, '2025-12-10 13:53:43', '2025-12-15 08:57:45'),
(17, 'Quyên', 'Nguyen Thi Thuy Quyen', 'Quyen@example.com', 'ea1c812579f375090b524d91a586bf20', 'Quy', 2, 1, '2025-12-12 09:41:55', '2025-12-15 08:51:04'),
(18, 'Đỗ Thị Ly', 'Ly', 'dothily123@gmail.com', '64f1bbbceb0326eb34a00e10ed24ea44', NULL, 2, 1, '2025-12-13 16:22:18', '2025-12-14 15:03:58'),
(20, 'Đỗ Huyền TESTER', 'Dohuyen09112005', 'Huyen@gmail.com', '800f5e99825a8a574af62c5e4010cf35', 'Thu', 2, 1, '2025-12-14 14:52:39', '2025-12-14 14:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `thanh_vien_du_an`
--

CREATE TABLE `thanh_vien_du_an` (
  `id_thanh_vien_du_an` int NOT NULL,
  `id_du_an` int NOT NULL,
  `id_nguoi_dung` int NOT NULL,
  `id_vaitro` int NOT NULL,
  `trang_thai` int NOT NULL,
  `ngay_tham_gia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanh_vien_du_an`
--

INSERT INTO `thanh_vien_du_an` (`id_thanh_vien_du_an`, `id_du_an`, `id_nguoi_dung`, `id_vaitro`, `trang_thai`, `ngay_tham_gia`) VALUES
(2, 11, 1, 1, 0, '2025-12-12 09:27:24'),
(9, 2, 17, 1, 0, '2025-12-12 09:58:01'),
(10, 13, 17, 4, 1, '2025-12-12 14:28:01'),
(11, 2, 14, 2, 1, '2025-12-13 02:46:52'),
(12, 14, 14, 4, 1, '2025-12-13 05:16:41'),
(13, 14, 1, 1, 1, '2025-12-13 12:27:19'),
(14, 14, 3, 1, 1, '2025-12-13 12:27:19'),
(15, 14, 17, 3, 1, '2025-12-13 14:11:31'),
(19, 14, 18, 2, 1, '2025-12-14 01:52:42'),
(25, 15, 18, 4, 1, '2025-12-14 04:07:56'),
(28, 16, 20, 4, 1, '2025-12-14 14:53:57'),
(29, 16, 16, 2, 1, '2025-12-14 15:02:23'),
(30, 16, 1, 3, 1, '2025-12-14 15:02:31'),
(31, 16, 17, 1, 1, '2025-12-14 15:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `thong_bao`
--

CREATE TABLE `thong_bao` (
  `id` int NOT NULL,
  `id_nguoi_nhan` int NOT NULL,
  `id_nguon` int NOT NULL,
  `id_du_an` int NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  `da_xem` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thong_bao`
--

INSERT INTO `thong_bao` (`id`, `id_nguoi_nhan`, `id_nguon`, `id_du_an`, `noi_dung`, `ngay_tao`, `da_xem`) VALUES
(1, 1, 14, 14, 'đã đăng một bài viết mới', '2025-12-14 00:13:59', 0),
(2, 3, 14, 14, 'đã đăng một bài viết mới', '2025-12-14 00:13:59', 0),
(3, 16, 14, 14, 'đã đăng một bài viết mới', '2025-12-14 00:13:59', 0),
(4, 17, 14, 14, 'đã đăng một bài viết mới', '2025-12-14 00:13:59', 0),
(5, 18, 14, 14, 'đã đăng một bài viết mới', '2025-12-14 00:13:59', 0),
(6, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 01:00:12', 0),
(7, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 01:00:12', 0),
(8, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 01:00:12', 0),
(9, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 01:00:12', 0),
(10, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 01:00:12', 0),
(11, 18, 14, 14, 'bạn đã được thêm vào dự án', '2025-12-14 08:52:42', 0),
(12, 1, 18, 14, 'đã bình luận một bài viết', '2025-12-14 08:54:11', 0),
(13, 3, 18, 14, 'đã bình luận một bài viết', '2025-12-14 08:54:11', 0),
(14, 14, 18, 14, 'đã bình luận một bài viết', '2025-12-14 08:54:11', 0),
(15, 16, 18, 14, 'đã bình luận một bài viết', '2025-12-14 08:54:11', 0),
(16, 17, 18, 14, 'đã bình luận một bài viết', '2025-12-14 08:54:11', 0),
(17, 1, 17, 14, 'đã duyệt một bình luận', '2025-12-14 08:54:44', 0),
(18, 3, 17, 14, 'đã duyệt một bình luận', '2025-12-14 08:54:44', 0),
(19, 14, 17, 14, 'đã duyệt một bình luận', '2025-12-14 08:54:44', 0),
(20, 16, 17, 14, 'đã duyệt một bình luận', '2025-12-14 08:54:44', 0),
(21, 18, 17, 14, 'đã duyệt một bình luận', '2025-12-14 08:54:44', 0),
(22, 1, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:38', 0),
(23, 3, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:38', 0),
(24, 16, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:38', 0),
(25, 17, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:38', 0),
(26, 18, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:38', 0),
(27, 1, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:48', 0),
(28, 3, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:48', 0),
(29, 16, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:48', 0),
(30, 17, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:48', 0),
(31, 18, 14, 14, 'đã bình luận một bài viết', '2025-12-14 09:10:48', 0),
(32, 1, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:11:47', 0),
(33, 3, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:11:47', 0),
(34, 14, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:11:47', 0),
(35, 16, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:11:47', 0),
(36, 17, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:11:47', 0),
(37, 1, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:18:37', 0),
(38, 3, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:18:37', 0),
(39, 14, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:18:37', 0),
(40, 16, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:18:37', 0),
(41, 17, 18, 14, 'đã bình luận một bài viết', '2025-12-14 09:18:37', 0),
(42, 18, 17, 14, 'bình luận của bạn đã được duyệt', '2025-12-14 09:19:07', 0),
(43, 18, 17, 14, 'bình luận của bạn đã được duyệt', '2025-12-14 09:19:10', 0),
(44, 18, 17, 14, 'bình luận của bạn đã được duyệt', '2025-12-14 09:20:50', 0),
(45, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 09:23:01', 0),
(46, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 09:23:01', 0),
(47, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 09:23:01', 0),
(48, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 09:23:01', 0),
(49, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 09:23:01', 0),
(50, 18, 14, 14, 'bài viết của bạn đã được duyệt', '2025-12-14 09:23:43', 0),
(51, 18, 14, 14, 'bài viết của bạn đã được duyệt', '2025-12-14 09:23:45', 0),
(52, 18, 14, 14, 'bài viết của bạn đã được duyệt', '2025-12-14 09:23:47', 0),
(53, 18, 14, 14, 'bài viết của bạn đã được duyệt', '2025-12-14 09:43:29', 0),
(54, 18, 14, 14, 'bài viết \"Ngày mai là chủ nhật\" của bạn đã bị từ chối', '2025-12-14 09:43:34', 0),
(55, 18, 14, 14, 'bài viết của bạn đã được duyệt', '2025-12-14 09:43:52', 0),
(56, 1, 14, 14, 'đã từ chối bài viết \"Ngày mai là chủ nhật\" của bạn', '2025-12-14 09:45:44', 0),
(57, 3, 14, 14, 'đã từ chối bài viết \"Ngày mai là chủ nhật\" của bạn', '2025-12-14 09:45:44', 0),
(58, 16, 14, 14, 'đã từ chối bài viết \"Ngày mai là chủ nhật\" của bạn', '2025-12-14 09:45:44', 0),
(59, 17, 14, 14, 'đã từ chối bài viết \"Ngày mai là chủ nhật\" của bạn', '2025-12-14 09:45:44', 0),
(60, 18, 14, 14, 'đã từ chối bài viết \"Ngày mai là chủ nhật\" của bạn', '2025-12-14 09:45:44', 0),
(61, 1, 18, 14, 'đã bình luận một bài viết', '2025-12-14 10:06:55', 0),
(62, 3, 18, 14, 'đã bình luận một bài viết', '2025-12-14 10:06:55', 0),
(63, 14, 18, 14, 'đã bình luận một bài viết', '2025-12-14 10:06:55', 0),
(64, 16, 18, 14, 'đã bình luận một bài viết', '2025-12-14 10:06:55', 0),
(65, 17, 18, 14, 'đã bình luận một bài viết', '2025-12-14 10:06:55', 0),
(66, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:07:10', 0),
(67, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:07:10', 0),
(68, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:07:10', 0),
(69, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:07:10', 0),
(70, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:07:10', 0),
(71, 1, 14, 14, 'đã duyệt bài viết \"cong nghe web\" của bạn', '2025-12-14 10:07:55', 0),
(72, 3, 14, 14, 'đã duyệt bài viết \"cong nghe web\" của bạn', '2025-12-14 10:07:55', 0),
(73, 16, 14, 14, 'đã duyệt bài viết \"cong nghe web\" của bạn', '2025-12-14 10:07:55', 0),
(74, 17, 14, 14, 'đã duyệt bài viết \"cong nghe web\" của bạn', '2025-12-14 10:07:55', 0),
(75, 18, 14, 14, 'đã duyệt bài viết \"cong nghe web\" của bạn', '2025-12-14 10:07:55', 0),
(76, 18, 14, 14, 'đã duyệt bình luận của bạn', '2025-12-14 10:08:02', 0),
(77, 16, 14, 14, 'đã thêm bạn vào dự án', '2025-12-14 10:09:21', 0),
(78, 16, 14, 14, 'bạn đã được thêm vào dự án', '2025-12-14 10:19:45', 0),
(79, 1, 14, 14, 'Đỗ Huyền đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:19:45', 0),
(80, 3, 14, 14, 'Đỗ Huyền đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:19:45', 0),
(81, 17, 14, 14, 'Đỗ Huyền đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:19:45', 0),
(82, 18, 14, 14, 'Đỗ Huyền đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:19:45', 0),
(83, 16, 14, 14, 'đã thêm bạn vào dự án', '2025-12-14 10:22:31', 0),
(84, 1, 14, 14, 'Array đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:22:31', 0),
(85, 3, 14, 14, 'Array đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:22:31', 0),
(86, 17, 14, 14, 'Array đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:22:31', 0),
(87, 18, 14, 14, 'Array đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:22:31', 0),
(88, 16, 14, 14, 'đã thêm bạn vào dự án', '2025-12-14 10:25:23', 0),
(89, 16, 14, 14, 'đã thêm bạn vào dự án', '2025-12-14 10:28:02', 0),
(90, 1, 14, 14, 'đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:28:02', 0),
(91, 3, 14, 14, 'đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:28:02', 0),
(92, 17, 14, 14, 'đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:28:02', 0),
(93, 18, 14, 14, 'đã thêm Dao Thu Huong vào dự án', '2025-12-14 10:28:02', 0),
(94, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:36:42', 0),
(95, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:36:42', 0),
(96, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:36:42', 0),
(97, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:36:42', 0),
(98, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:36:42', 0),
(99, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:48:43', 0),
(100, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:48:43', 0),
(101, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:48:43', 0),
(102, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:48:43', 0),
(103, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:48:43', 0),
(104, 1, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:50:24', 0),
(105, 3, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:50:24', 0),
(106, 14, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:50:24', 0),
(107, 16, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:50:24', 0),
(108, 17, 18, 14, 'đã đăng một bài viết mới', '2025-12-14 10:50:24', 0),
(109, 17, 18, 15, 'đã thêm bạn vào dự án', '2025-12-14 11:25:43', 0),
(110, 17, 18, 15, 'đã đăng một bài viết mới', '2025-12-14 11:30:49', 0),
(111, 17, 18, 15, 'đã đăng một bài viết mới', '2025-12-14 14:27:47', 0),
(112, 17, 18, 15, 'đã đăng một bài viết mới', '2025-12-14 14:36:03', 0),
(113, 18, 17, 15, 'đã bình luận một bài viết', '2025-12-14 14:37:13', 0),
(114, 1, 17, 14, 'đã đăng một bài viết mới', '2025-12-14 14:38:33', 0),
(115, 3, 17, 14, 'đã đăng một bài viết mới', '2025-12-14 14:38:33', 0),
(116, 14, 17, 14, 'đã đăng một bài viết mới', '2025-12-14 14:38:33', 0),
(117, 16, 17, 14, 'đã đăng một bài viết mới', '2025-12-14 14:38:33', 0),
(118, 18, 17, 14, 'đã đăng một bài viết mới', '2025-12-14 14:38:33', 0),
(119, 17, 18, 15, 'đã duyệt bình luận của bạn', '2025-12-14 15:01:48', 0),
(120, 17, 18, 15, 'đã thêm bạn vào dự án', '2025-12-14 15:02:01', 0),
(121, 18, 17, 15, 'đã rời khỏi dự án', '2025-12-14 15:02:28', 0),
(122, 17, 14, 2, 'đã đăng một bài viết mới', '2025-12-14 21:06:21', 0),
(123, 16, 20, 16, 'đã thêm bạn vào dự án', '2025-12-14 22:02:23', 0),
(124, 1, 20, 16, 'đã thêm bạn vào dự án', '2025-12-14 22:02:31', 0),
(125, 16, 20, 16, 'đã thêm Nguyễn Văn A vào dự án', '2025-12-14 22:02:31', 0),
(126, 17, 20, 16, 'đã thêm bạn vào dự án', '2025-12-14 22:03:14', 0),
(127, 1, 20, 16, 'đã thêm Quyên vào dự án', '2025-12-14 22:03:14', 0),
(128, 16, 20, 16, 'đã thêm Quyên vào dự án', '2025-12-14 22:03:14', 0),
(129, 1, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:08', 0),
(130, 17, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:08', 0),
(131, 20, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:08', 0),
(132, 1, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:25', 0),
(133, 17, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:25', 0),
(134, 20, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:25', 0),
(135, 1, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:36', 0),
(136, 17, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:36', 0),
(137, 20, 16, 16, 'đã đăng một bài viết mới', '2025-12-14 22:06:36', 0),
(138, 1, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:19', 0),
(139, 17, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:19', 0),
(140, 20, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:19', 0),
(141, 1, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:44', 0),
(142, 17, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:44', 0),
(143, 20, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:44', 0),
(144, 1, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:50', 0),
(145, 17, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:50', 0),
(146, 20, 16, 16, 'đã bình luận một bài viết', '2025-12-14 22:07:50', 0),
(147, 16, 1, 16, 'đã từ chối bài viết \"Người đóng góp đăng bài 2\" của bạn', '2025-12-14 22:10:59', 0),
(148, 17, 1, 16, 'đã từ chối bài viết \"Người đóng góp đăng bài 2\" của bạn', '2025-12-14 22:10:59', 0),
(149, 20, 1, 16, 'đã từ chối bài viết \"Người đóng góp đăng bài 2\" của bạn', '2025-12-14 22:10:59', 0),
(150, 16, 1, 16, 'đã duyệt bài viết \"Người đóng góp đăng bài 1\" của bạn', '2025-12-14 22:12:22', 0),
(151, 17, 1, 16, 'đã duyệt bài viết \"Người đóng góp đăng bài 1\" của bạn', '2025-12-14 22:12:22', 0),
(152, 20, 1, 16, 'đã duyệt bài viết \"Người đóng góp đăng bài 1\" của bạn', '2025-12-14 22:12:22', 0),
(153, 16, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:48', 0),
(154, 17, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:48', 0),
(155, 20, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:48', 0),
(156, 16, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:58', 0),
(157, 17, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:58', 0),
(158, 20, 1, 16, 'đã bình luận một bài viết', '2025-12-14 22:12:58', 0),
(159, 16, 20, 16, 'đã duyệt bình luận của bạn', '2025-12-14 22:19:15', 0),
(160, 16, 20, 16, 'đã duyệt bình luận của bạn', '2025-12-14 22:19:23', 0),
(161, 14, 16, 14, 'đã rời khỏi dự án', '2025-12-14 22:20:22', 0),
(162, 17, 16, 14, 'đã rời khỏi dự án', '2025-12-14 22:20:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id_vaitro` int NOT NULL,
  `ten_vaitro` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cap_do_quyen` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vai_tro`
--

INSERT INTO `vai_tro` (`id_vaitro`, `ten_vaitro`, `cap_do_quyen`) VALUES
(1, 'NguoiXem', 1),
(2, 'NguoiDongGop', 2),
(3, 'NguoiDieuHanh', 3),
(4, 'ChuSoHuu', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD PRIMARY KEY (`id_bai_dang`),
  ADD KEY `id_du_an` (`id_du_an`),
  ADD KEY `id_tac_gia` (`id_tac_gia`);

--
-- Indexes for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id_binh_luan`),
  ADD KEY `id_bai_dang` (`id_bai_dang`),
  ADD KEY `id_nguoi_dung` (`id_nguoi_dung`);

--
-- Indexes for table `du_an`
--
ALTER TABLE `du_an`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_tao` (`nguoi_tao`);

--
-- Indexes for table `hanh_dong_nguoi_dung`
--
ALTER TABLE `hanh_dong_nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id_nguoi_dung`);

--
-- Indexes for table `thanh_vien_du_an`
--
ALTER TABLE `thanh_vien_du_an`
  ADD PRIMARY KEY (`id_thanh_vien_du_an`),
  ADD UNIQUE KEY `uk_duan_nguoidung` (`id_du_an`,`id_nguoi_dung`),
  ADD KEY `id_nguoi_dung` (`id_nguoi_dung`),
  ADD KEY `id_vaitro` (`id_vaitro`);

--
-- Indexes for table `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id_vaitro`),
  ADD UNIQUE KEY `ten_vaitro` (`ten_vaitro`),
  ADD UNIQUE KEY `cap_do_quyen` (`cap_do_quyen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bai_dang`
--
ALTER TABLE `bai_dang`
  MODIFY `id_bai_dang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id_binh_luan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `du_an`
--
ALTER TABLE `du_an`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hanh_dong_nguoi_dung`
--
ALTER TABLE `hanh_dong_nguoi_dung`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id_nguoi_dung` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `thanh_vien_du_an`
--
ALTER TABLE `thanh_vien_du_an`
  MODIFY `id_thanh_vien_du_an` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `thong_bao`
--
ALTER TABLE `thong_bao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD CONSTRAINT `bai_dang_ibfk_1` FOREIGN KEY (`id_du_an`) REFERENCES `du_an` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bai_dang_ibfk_2` FOREIGN KEY (`id_tac_gia`) REFERENCES `nguoi_dung` (`id_nguoi_dung`);

--
-- Constraints for table `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`id_bai_dang`) REFERENCES `bai_dang` (`id_bai_dang`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`id_nguoi_dung`) REFERENCES `nguoi_dung` (`id_nguoi_dung`);

--
-- Constraints for table `du_an`
--
ALTER TABLE `du_an`
  ADD CONSTRAINT `du_an_ibfk_1` FOREIGN KEY (`nguoi_tao`) REFERENCES `nguoi_dung` (`id_nguoi_dung`);

--
-- Constraints for table `thanh_vien_du_an`
--
ALTER TABLE `thanh_vien_du_an`
  ADD CONSTRAINT `thanh_vien_du_an_ibfk_1` FOREIGN KEY (`id_du_an`) REFERENCES `du_an` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thanh_vien_du_an_ibfk_2` FOREIGN KEY (`id_nguoi_dung`) REFERENCES `nguoi_dung` (`id_nguoi_dung`) ON DELETE CASCADE,
  ADD CONSTRAINT `thanh_vien_du_an_ibfk_3` FOREIGN KEY (`id_vaitro`) REFERENCES `vai_tro` (`id_vaitro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
