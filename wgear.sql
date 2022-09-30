-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 02:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wgear`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_account`
--

CREATE TABLE `tb_account` (
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `create_at` date NOT NULL DEFAULT current_timestamp(),
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_account`
--

INSERT INTO `tb_account` (`contact`, `username`, `password`, `name`, `address`, `phone_number`, `avatar`, `type`, `create_at`, `code`) VALUES
('tbinh2890@gmail.com', 'tcb', '25f9e794323b453885f5181f1b624d0b', 'Trần Công Bình', '', '', '1653119933_blogger 3.jpg', 0, '2022-05-21', ''),
('wgear.contact@gmail.com', 'admin', '6e4516039872e6dac0aba32a1b67afeb', 'Nguyễn Minh Huy', '', '', '1653115824_zyro-image.png', 1, '2022-05-21', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cart`
--

CREATE TABLE `tb_cart` (
  `id` int(11) NOT NULL,
  `name_customer` varchar(255) NOT NULL,
  `phone_customer` varchar(255) NOT NULL,
  `address_customer` varchar(255) NOT NULL,
  `email_customer` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `method_payment` int(11) NOT NULL,
  `method_recieve` int(11) NOT NULL,
  `message` text NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cart`
--

INSERT INTO `tb_cart` (`id`, `name_customer`, `phone_customer`, `address_customer`, `email_customer`, `date`, `method_payment`, `method_recieve`, `message`, `total`, `status`) VALUES
(1, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-03-21 00:00:00', 0, 0, 'Giao vào cuối tuần', 11598000, 1),
(2, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-22 00:00:00', 0, 1, '', 17761000, 2),
(3, 'Phạm Quang Dự', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'phamdu12393@gmail.com', '2022-05-21 00:00:00', 1, 0, '', 22231000, 0),
(5, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-21 00:00:00', 0, 0, '', 21124000, 1),
(6, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-21 00:00:00', 0, 1, '', 1138000, 2),
(7, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-21 00:00:00', 0, 0, '', 9500000, 2),
(8, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-21 00:00:00', 1, 0, '', 23080000, 1),
(9, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-22 00:00:00', 0, 0, '', 254900000, 1),
(10, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-03-22 00:00:00', 0, 1, '', 32700000, 1),
(11, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-22 00:00:00', 0, 0, '', 299900000, 2),
(12, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-22 00:00:00', 1, 0, '', 4197000, 1),
(13, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-22 00:00:00', 0, 0, '', 13734000, 2),
(14, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-22 00:00:00', 0, 1, '', 11960000, 2),
(15, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-22 00:00:00', 0, 0, 'Giao buổi trưa ', 2890000, 1),
(16, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-23 00:00:00', 0, 0, '', 875000000, 1),
(17, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-03-03 00:00:00', 0, 0, '', 509800000, 1),
(18, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-23 00:00:00', 0, 0, '', 1103109000, 1),
(19, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-23 00:00:00', 0, 0, '', 6360000, 2),
(20, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'huy129a5@gmail.com', '2022-05-23 00:00:00', 0, 0, '', 299900000, 0),
(21, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-24 00:00:00', 0, 0, '', 2790000, 1),
(22, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-02-25 00:00:00', 0, 0, '', 179700000, 1),
(23, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-04-12 00:00:00', 1, 0, '', 79800000, 1),
(24, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-04-25 00:00:00', 0, 0, '', 23960000, 1),
(25, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'nguyenminhhuy.0938745593@gmail.com', '2022-02-26 00:00:00', 1, 0, '', 14460000, 1),
(26, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-26 00:00:00', 1, 0, 'Giao trong 2 ngày', 654000000, 1),
(27, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-26 00:00:00', 0, 1, '', 397800000, 2),
(28, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-26 00:00:00', 0, 0, '', 596700000, 2),
(29, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-26 00:00:00', 1, 0, '', 198900000, 2),
(30, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-26 15:55:12', 1, 0, '', 10000000, 2),
(31, 'Nguyễn Minh Huy', '0938745593', 'XYZ, đường ABC, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-26 17:58:41', 0, 1, '', 21000000, 1),
(32, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-27 01:21:22', 0, 0, '', 599000, 1),
(33, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'nguyenminhhuy.0938745593@gmail.com', '2022-05-27 08:35:04', 0, 0, 'Giao vào cuối tuần', 151500000, 2),
(34, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'nguyenminhhuy.0938745593@gmail.com', '2022-05-27 08:40:49', 1, 0, '', 4000000, 1),
(38, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-29 19:02:45', 0, 0, '', 1198000, 1),
(39, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-27 12:51:13', 0, 0, '', 3956000, 1),
(40, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-27 12:52:11', 0, 0, '', 1750000, 2),
(41, 'Trần Công Bình', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'tbinh2890@gmail.com', '2022-05-29 19:08:38', 0, 0, '', 5098000, 1),
(42, 'Nguyễn Minh Huy', '0938745593', '26, đường 57, ấp Chợ, xã Tân Phú Trung, Củ Chi, Hồ Chí Minh', 'wgear.contact@gmail.com', '2022-05-31 19:33:16', 0, 0, '', 8627000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cart_detail`
--

CREATE TABLE `tb_cart_detail` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cart_detail`
--

INSERT INTO `tb_cart_detail` (`id`, `id_cart`, `id_product`, `amount`) VALUES
(1, 1, 1, 1),
(2, 1, 7, 1),
(3, 1, 4, 1),
(4, 1, 10, 1),
(5, 1, 18, 1),
(6, 2, 44, 3),
(7, 2, 28, 2),
(8, 2, 6, 4),
(9, 3, 25, 2),
(10, 3, 42, 2),
(11, 3, 13, 3),
(12, 3, 7, 4),
(16, 5, 41, 3),
(17, 5, 6, 2),
(18, 5, 16, 2),
(19, 5, 26, 4),
(20, 6, 29, 2),
(21, 7, 41, 2),
(22, 7, 1, 4),
(23, 8, 1, 10),
(24, 8, 23, 2),
(25, 9, 42, 100),
(26, 10, 10, 10),
(27, 11, 6, 100),
(28, 12, 28, 3),
(29, 13, 44, 1),
(30, 13, 42, 5),
(31, 14, 24, 4),
(32, 15, 21, 1),
(33, 16, 3, 500),
(34, 17, 42, 200),
(35, 18, 41, 493),
(36, 18, 42, 191),
(37, 19, 18, 4),
(38, 20, 5, 100),
(39, 21, 23, 1),
(40, 22, 43, 300),
(41, 23, 24, 20),
(42, 23, 45, 20),
(43, 24, 43, 40),
(44, 25, 24, 4),
(45, 25, 41, 2),
(46, 26, 10, 200),
(47, 27, 9, 200),
(48, 28, 9, 300),
(49, 29, 9, 100),
(50, 30, 45, 10),
(51, 31, 3, 12),
(52, 32, 43, 1),
(53, 33, 22, 100),
(54, 33, 41, 50),
(55, 34, 45, 4),
(60, 38, 43, 2),
(61, 39, 44, 4),
(62, 40, 3, 1),
(63, 41, 42, 2),
(64, 42, 3, 3),
(65, 42, 44, 2),
(66, 42, 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id`, `name`) VALUES
(1, 'Bàn phím'),
(2, 'Chuột'),
(3, 'Tai nghe');

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `reply` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_comment`
--

INSERT INTO `tb_comment` (`id`, `id_product`, `name`, `phone`, `content`, `date`, `reply`, `status`, `admin`) VALUES
(4, 45, 'Nguyễn Minh Huy', '0123456987', 'Con này còn hàng ko ạ?', '2022-05-27 18:53:18', 0, 1, 0),
(5, 42, 'Nguyễn Minh Huy', '0938745593', 'sản phẩm rất tốt!!!', '2022-05-27 18:55:05', 0, 1, 0),
(6, 1, 'Trần Công Bình', '01267105904', 'Shop còn sản phẩm này không ạ???', '2022-05-27 19:06:08', 0, 1, 0),
(7, 41, 'Phạm Quang Dự', '3216548799', 'Chuột rất to và ôm tay, mượt !!', '2022-05-27 19:07:59', 0, 1, 0),
(8, 21, 'Nguyễn Minh Huy', '0938745593', 'Âm thanh nghe rất đã :)))))', '2022-05-27 19:09:05', 0, 1, 0),
(11, 41, 'Nguyễn Minh Huy', '0938745593', 'Dùng rất okk nha ae :>', '2022-05-29 18:44:19', 0, 1, 0),
(19, 22, 'Nguyễn Hoàng Huy', '0989575111', 'Sản phẩm mua về được đóng gói cẩn thận, còn độ bền thì phải dùng lâu mới biết !', '2022-05-29 18:53:37', 0, 1, 0),
(20, 1, 'Liên Mỹ Mỹ', '0989575111', 'Quá tốt', '2022-05-29 18:54:57', 0, 1, 0),
(28, 8, 'Nguyễn Minh Huy', '0989575111', 'Rất tốt!!!!!!!', '2022-05-30 00:03:49', 0, 1, 0),
(30, 8, 'Nguyễn Minh Huy', '', 'Cảm ơn quý khách đã tin tưởng và mua hàng ạ <33', '2022-05-30 09:23:12', 28, 0, 1),
(31, 1, 'Nguyễn Minh Huy', '', 'Dạ anh Bình có thể kiểm tra số lượng hàng tại ô số lượng ạ <3', '2022-05-30 09:43:26', 6, 0, 1),
(32, 41, 'Nguyễn Minh Huy', '', 'Cảm ơn anh Dự đã tin tưởng và mua hàng', '2022-05-30 09:44:35', 7, 0, 1),
(34, 22, 'Nguyễn Minh Huy', '', 'Cảm ơn quý khách đã tin tưởng và mua hàng ạ!', '2022-05-30 10:02:29', 19, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_page`
--

CREATE TABLE `tb_page` (
  `id` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_page`
--

INSERT INTO `tb_page` (`id`, `view`, `date`) VALUES
(1, 327, '2022-05-21'),
(3, 1525, '2022-05-20'),
(4, 285, '2022-05-22'),
(5, 384, '2022-05-23'),
(6, 17, '2022-05-24'),
(7, 35, '2022-05-25'),
(8, 425, '2022-05-26'),
(9, 455, '2022-05-27'),
(10, 257, '2022-05-29'),
(11, 151, '2022-05-30'),
(12, 42, '2022-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `normal_price` int(11) NOT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `config` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `update_date` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id`, `id_category`, `name`, `brand`, `image`, `sale_price`, `normal_price`, `sold`, `quantity`, `config`, `content`, `date`, `update_date`, `status`) VALUES
(1, 1, 'Bàn phím akko 3084 v2 ASA Blackpink Rose Red switch', 'Akko', '1653116006_akko 3084 v2 ASA Blackpink.jpg', 1000000, 1750000, 15, 485, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Thương hiệu&nbsp;</strong></td>\r\n			<td>AKKO&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bảo h&agrave;nh</strong></td>\r\n			<td>12 th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Model</strong></td>\r\n			<td>AKKO 3084 v2 ASA &ndash; Black Pink</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u sắc</strong></td>\r\n			<td>Đen-hồng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại b&agrave;n ph&iacute;m</strong></td>\r\n			<td>84 ph&iacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kết nối</strong></td>\r\n			<td>USB Type-C, c&oacute; thể th&aacute;o rời</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại switch</strong></td>\r\n			<td>Akko CS switch (Ocean Blue / Rose Red / Matcha Green)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Keycap&nbsp;</strong></td>\r\n			<td>PBT Double-Shot, ASA profile</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>L&oacute;t ti&ecirc;u &acirc;m</strong></td>\r\n			<td>FOAM d&agrave;y 3.5mm (nằm giữa plate v&agrave; PCB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hỗ trợ</strong></td>\r\n			<td>Thay n&oacute;ng switch (hotswap, 3 pin)<br />\r\n			NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m Windows</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tương th&iacute;ch</strong></td>\r\n			<td>Windows / MacOS / Linux (b&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>315 x 127 x 42mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td>~ 0.73kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phụ kiện</strong></td>\r\n			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB + 20 keycap tặng k&egrave;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p><strong>Akko lu&ocirc;n l&agrave; một trong những h&atilde;ng sản xuất mang đến cho người d&ugrave;ng những chiếc b&agrave;n ph&iacute;m cơ v&ocirc; c&ugrave;ng ấn tượng bởi thiết kế, m&agrave;u sắc v&agrave; hiệu năng.&nbsp;</strong></p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-1_4433cd54fd894e6d9d354f8989991826_grande.jpg\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m AKKO 3084 v2 ASA &ndash; Black Pink l&agrave; một trong những d&ograve;ng sản phẩm ti&ecirc;u biểu với m&agrave;u sắc chủ đạo l&agrave; m&agrave;u đen&nbsp;v&agrave; hồng&nbsp;cực kỳ nổi bật.&nbsp;Với bộ switch Akko của h&atilde;ng được thiết kế tỉ mỉ từng chi tiết. Ph&ugrave; hợp với hầu hết nhu cầu của người d&ugrave;ng v&agrave; cho độ bền cao. Chỉ cần thử một lần, chắc chắn bạn sẽ kh&ocirc;ng thể g&otilde; lại b&agrave;n ph&iacute;m th&ocirc;ng thường được nữa.</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-2_ea6c01653903459eb7a61343c4bfaa72_grande.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng phải cứ rẻ l&agrave; chất lượng rẻ. B&agrave;n ph&iacute;m&nbsp;AKKO 3084 v2 ASA &ndash; Black Pink&nbsp;vẫn sở hữu bộ keycap&nbsp;PBT Double-Shot, ASA profile&nbsp;chất lượng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-3_18add76e484d4473b6bf76242085cfae_grande.jpg\" /></p>\r\n\r\n<p>Với kiểu in khắc laser khiến cho bộ ph&iacute;m kh&ocirc;ng hề bị phai. Kh&ocirc;ng bị b&oacute;ng nh&aacute;m hay mồ h&ocirc;i v&acirc;n tay b&aacute;m l&ecirc;n. Foam l&oacute;t b&agrave;n ph&iacute;m được bố tr&iacute; ở b&ecirc;n trong b&agrave;n ph&iacute;m cơ gi&uacute;p cảm gi&aacute;c bấm chắc chắn hơn, ti&ecirc;u &acirc;m, cho tiếng bấm gọn hơn, kh&ocirc;ng bị vang&nbsp;tạo cho bạn kh&ocirc;ng gian y&ecirc;n tĩnh v&agrave; tập trung l&agrave;m việc tối đa.</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-4_15de4bde3e2b4e5d9f052d7d3d2f3ead_grande.jpg\" /></p>\r\n\r\n<p>Key rollover (KRO) l&agrave; khả năng ghi nhận nhiều ph&iacute;m bấm c&ugrave;ng l&uacute;c. Với N-key rollover, bạn c&oacute; thể nhấn bao nhi&ecirc;u th&igrave; b&agrave;n ph&iacute;m sẽ nhận ra bấy nhi&ecirc;u, loại bỏ ho&agrave;n to&agrave;n giới hạn phần cứng. T&iacute;nh năng n&agrave;y kh&ocirc;ng cần thiết lắm khi đ&aacute;nh m&aacute;y nhưng với c&aacute;c c&ocirc;ng việc đ&ograve;i hỏi nhiều ph&iacute;m nhấn c&ugrave;ng l&uacute;c&nbsp;th&igrave; N-KRO l&agrave; một t&iacute;nh năng rất hữu &iacute;ch.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-5_c4c8511a1b2848fdaf0429deddb375de_grande.jpg\" /></p>\r\n\r\n<p>Tr&ecirc;n AKKO 3084 v2 ASA &ndash; Black Pink được trang bị c&aacute;p kết nối USB-C hiện đại, tốc độ cao v&agrave; c&oacute; thể th&aacute;o rời để mang đi di chuyển linh hoạt.</p>\r\n', '2022-05-21', '2022-05-27', 1),
(3, 1, 'Bàn phím akko 3084 v2 ASA Blackpink Matcha Green switch', 'Akko', '1653116087_akko 3084 v2 ASA Blackpink.jpg', 1750000, 1750000, 515, 385, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Thương hiệu&nbsp;</strong></td>\r\n			<td>AKKO&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bảo h&agrave;nh</strong></td>\r\n			<td>12 th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Model</strong></td>\r\n			<td>AKKO 3084 v2 ASA &ndash; Black Pink</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u sắc</strong></td>\r\n			<td>Đen-hồng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại b&agrave;n ph&iacute;m</strong></td>\r\n			<td>84 ph&iacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kết nối</strong></td>\r\n			<td>USB Type-C, c&oacute; thể th&aacute;o rời</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Loại switch</strong></td>\r\n			<td>Akko CS switch (Ocean Blue / Rose Red / Matcha Green)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Keycap&nbsp;</strong></td>\r\n			<td>PBT Double-Shot, ASA profile</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>L&oacute;t ti&ecirc;u &acirc;m</strong></td>\r\n			<td>FOAM d&agrave;y 3.5mm (nằm giữa plate v&agrave; PCB)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hỗ trợ</strong></td>\r\n			<td>Thay n&oacute;ng switch (hotswap, 3 pin)<br />\r\n			NKRO / Multimedia / Macro / Kh&oacute;a ph&iacute;m Windows</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tương th&iacute;ch</strong></td>\r\n			<td>Windows / MacOS / Linux (b&agrave;n ph&iacute;m AKKO khi kết nối với MacOS: Ctrl -&gt; Control | Windows -&gt; Command | Alt -&gt; Option, Mojave OS trở l&ecirc;n sẽ điều chỉnh được thứ tự của c&aacute;c ph&iacute;m n&agrave;y)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>315 x 127 x 42mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td>~ 0.73kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phụ kiện</strong></td>\r\n			<td>1 s&aacute;ch hướng dẫn sử dụng + 1 keypuller + 1 cover che bụi + 1 d&acirc;y c&aacute;p USB + 20 keycap tặng k&egrave;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>Akko lu&ocirc;n l&agrave; một trong những h&atilde;ng sản xuất mang đến cho người d&ugrave;ng những chiếc b&agrave;n ph&iacute;m cơ v&ocirc; c&ugrave;ng ấn tượng bởi thiết kế, m&agrave;u sắc v&agrave; hiệu năng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-1_4433cd54fd894e6d9d354f8989991826_grande.jpg\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m AKKO 3084 v2 ASA &ndash; Black Pink l&agrave; một trong những d&ograve;ng sản phẩm ti&ecirc;u biểu với m&agrave;u sắc chủ đạo l&agrave; m&agrave;u đen&nbsp;v&agrave; hồng&nbsp;cực kỳ nổi bật.&nbsp;Với bộ switch Akko của h&atilde;ng được thiết kế tỉ mỉ từng chi tiết. Ph&ugrave; hợp với hầu hết nhu cầu của người d&ugrave;ng v&agrave; cho độ bền cao. Chỉ cần thử một lần, chắc chắn bạn sẽ kh&ocirc;ng thể g&otilde; lại b&agrave;n ph&iacute;m th&ocirc;ng thường được nữa.</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-2_ea6c01653903459eb7a61343c4bfaa72_grande.jpg\" /></p>\r\n\r\n<p>Kh&ocirc;ng phải cứ rẻ l&agrave; chất lượng rẻ. B&agrave;n ph&iacute;m&nbsp;AKKO 3084 v2 ASA &ndash; Black Pink&nbsp;vẫn sở hữu bộ keycap&nbsp;PBT Double-Shot, ASA profile&nbsp;chất lượng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-3_18add76e484d4473b6bf76242085cfae_grande.jpg\" /></p>\r\n\r\n<p>Với kiểu in khắc laser khiến cho bộ ph&iacute;m kh&ocirc;ng hề bị phai. Kh&ocirc;ng bị b&oacute;ng nh&aacute;m hay mồ h&ocirc;i v&acirc;n tay b&aacute;m l&ecirc;n. Foam l&oacute;t b&agrave;n ph&iacute;m được bố tr&iacute; ở b&ecirc;n trong b&agrave;n ph&iacute;m cơ gi&uacute;p cảm gi&aacute;c bấm chắc chắn hơn, ti&ecirc;u &acirc;m, cho tiếng bấm gọn hơn, kh&ocirc;ng bị vang&nbsp;tạo cho bạn kh&ocirc;ng gian y&ecirc;n tĩnh v&agrave; tập trung l&agrave;m việc tối đa.</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-4_15de4bde3e2b4e5d9f052d7d3d2f3ead_grande.jpg\" /></p>\r\n\r\n<p>Key rollover (KRO) l&agrave; khả năng ghi nhận nhiều ph&iacute;m bấm c&ugrave;ng l&uacute;c. Với N-key rollover, bạn c&oacute; thể nhấn bao nhi&ecirc;u th&igrave; b&agrave;n ph&iacute;m sẽ nhận ra bấy nhi&ecirc;u, loại bỏ ho&agrave;n to&agrave;n giới hạn phần cứng. T&iacute;nh năng n&agrave;y kh&ocirc;ng cần thiết lắm khi đ&aacute;nh m&aacute;y nhưng với c&aacute;c c&ocirc;ng việc đ&ograve;i hỏi nhiều ph&iacute;m nhấn c&ugrave;ng l&uacute;c&nbsp;th&igrave; N-KRO l&agrave; một t&iacute;nh năng rất hữu &iacute;ch.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-ban-phim-co-akko-3084-v2-asa-black-pink\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-co-akko-3084-v2-asa-black-pink-5_c4c8511a1b2848fdaf0429deddb375de_grande.jpg\" /></p>\r\n\r\n<p>Tr&ecirc;n AKKO 3084 v2 ASA &ndash; Black Pink được trang bị c&aacute;p kết nối USB-C hiện đại, tốc độ cao v&agrave; c&oacute; thể th&aacute;o rời để mang đi di chuyển linh hoạt.</p>\r\n', '2022-05-21', '2022-05-26', 1),
(4, 1, 'Bàn phím FL-Esports CMK87 Polar Night Black Kailh Box Cool Mint switch', 'FL-Esports', '1653116196_FL-Esports CMK87 Polar Night Black Kailh Box Cool Mint switch.png', 2999000, 2999000, 3, 497, '<table border=\"0\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>hương hiệu:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FL-Esports</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thiết kế:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>TKL</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Loại b&agrave;n ph&iacute;m:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>B&agrave;n ph&iacute;m cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Keycap:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FSA Profile, PBT DoubleShot&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Switch:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Kailh Box</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kết nối:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>LED:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>RGB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phụ kiện:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>S&aacute;ch hướng dẫn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Hotswap thay switch dễ d&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>L-Esports CMK87 Polar Night Black (Kailh Box) nằm trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-2-den-3-trieu\" target=\"_blank\">b&agrave;n ph&iacute;m 2 đến 3 triệu</a>&nbsp;tại GEARVN. Chiếc b&agrave;n ph&iacute;m được đầu tư ph&aacute;t thiết kế ngoại h&igrave;nh chắc chắn cũng như mang lại những trải nghiệm g&otilde; ph&iacute;m tuyệt vời đến kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-1_4dd7eedfb13b42ceb9d7a5bbe837ae0a.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế TKL c&aacute; t&iacute;nh</strong></h3>\r\n\r\n<p>Lớp vỏ của chiếc&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m</a>&nbsp;được l&agrave;m từ chất liệu cao cấp đảm bảo an to&agrave;n trong c&aacute;c trường hợp bị va đập. Nh&igrave;n tổng thể bạn sẽ thấy m&agrave;u đen bao phủ to&agrave;n bộ thiết kế tạo n&ecirc;n c&aacute; t&iacute;nh mạnh mẽ kết hợp c&ugrave;ng một v&agrave;i keycap v&agrave; phần đế m&agrave;u v&agrave;ng nổi bật. Ngo&agrave;i ra c&ograve;n c&oacute; phần name tag được l&agrave;m bằng nh&ocirc;m đầy ấn tượng.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-3_f1d2ec22474a4e69a0c209b297a93a7a.jpg\" /></p>\r\n\r\n<h3><strong>Sử dụng Kailh Box switch cho b&agrave;n ph&iacute;m FL-Esports CMK87 Polar Night Black (Kailh Box)</strong></h3>\r\n\r\n<p>Kailh Box l&agrave; loại switch c&oacute; thiết kế chống bụi v&agrave; chống nước cực kỳ tốt theo chuẩn IP56. &Acirc;m thanh khi click cũng to hơn v&agrave; đanh hơn k&iacute;ch th&iacute;ch cảm gi&aacute;c g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m tốt hơn. Ngo&agrave;i ra h&atilde;ng c&ograve;n hỗ trợ th&ecirc;m t&iacute;nh năng Hotswap để việc custom switch cho b&agrave;n ph&iacute;m cũng trở n&ecirc;n dễ d&agrave;ng hơn.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-2_63fcd46f643c49f785658307ef01e758.jpg\" /></p>\r\n\r\n<h3><strong>Chất lượng bền bỉ tr&ecirc;n từng keycap</strong></h3>\r\n\r\n<p>Sử dụng profiel FSA độc quyền từ FL-Esports cho những thao t&aacute;c được mượt m&agrave; hơn.&nbsp;<a href=\"https://gearvn.com/collections/keycaps\" target=\"_blank\">Keycap</a>&nbsp;chất lượng cao c&ugrave;ng c&ocirc;ng nghệ in DoubleShot sắc n&eacute;t. Khi g&otilde; bạn c&oacute; thể đặt ho&agrave;n to&agrave;n l&ograve;ng tin của m&igrave;nh v&agrave;o độ chắc chắn tr&ecirc;n từng con ph&iacute;m.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-5_55c4c2c9ede94de99fe770ba337516ca.jpg\" /></p>\r\n\r\n<h3><strong>Hỗ trợ LED RGB đa sắc m&agrave;u</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/ban-phim-co-fl-esports\" target=\"_blank\">B&agrave;n ph&iacute;m FL-Esports</a>&nbsp;cho ph&eacute;p bạn t&ugrave;y chỉnh c&aacute;c hiệu ứng &aacute;nh s&aacute;ng đ&egrave;n RGB rực rỡ. Giờ đ&acirc;y bạn sẽ c&oacute; cho ri&ecirc;ng m&igrave;nh kh&ocirc;ng gian l&agrave;m việc theo sở th&iacute;ch đưa cảm hứng t&iacute;ch cực trong qu&aacute; tr&igrave;nh sử dụng l&ecirc;n cao hơn. Vừa t&ocirc; điểm th&ecirc;m g&oacute;c l&agrave;m việc vừa l&agrave; m&oacute;n đồ trang tr&iacute; với c&ocirc;ng suất hoạt động tốt nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-6_fabb4f51ada74b86bd40f2546c899d14.jpg\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ l&agrave; một trong những sản phẩm&nbsp;<a href=\"https://gearvn.com/collections/gaming-gear\" target=\"_blank\">Gaming Gear</a>&nbsp;m&agrave; bất kỳ ai cũng kh&ocirc;ng thể bỏ lỡ. FL-Esports CMK87 Polar Night Black được ra đời nhằm đem đến cho bạn những trải nghiệm th&uacute; vị đồng h&agrave;nh c&ugrave;ng bạn trong mọi thao t&aacute;c.</p>\r\n', '2022-05-21', '2022-05-21', 1),
(5, 1, 'Bàn phím FL-Esports CMK87 Polar Night Black Kailh Box White switch', 'FL-Esports', '1653116258_FL-Esports CMK87 Polar Night Black Kailh Box Cool Mint switch.png', 2999000, 2999000, 100, 300, '<table border=\"0\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>hương hiệu:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FL-Esports</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thiết kế:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>TKL</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Loại b&agrave;n ph&iacute;m:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>B&agrave;n ph&iacute;m cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Keycap:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FSA Profile, PBT DoubleShot&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Switch:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Kailh Box</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kết nối:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>LED:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>RGB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phụ kiện:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>S&aacute;ch hướng dẫn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Hotswap thay switch dễ d&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>L-Esports CMK87 Polar Night Black (Kailh Box) nằm trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-2-den-3-trieu\" target=\"_blank\">b&agrave;n ph&iacute;m 2 đến 3 triệu</a>&nbsp;tại GEARVN. Chiếc b&agrave;n ph&iacute;m được đầu tư ph&aacute;t thiết kế ngoại h&igrave;nh chắc chắn cũng như mang lại những trải nghiệm g&otilde; ph&iacute;m tuyệt vời đến kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-1_4dd7eedfb13b42ceb9d7a5bbe837ae0a.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế TKL c&aacute; t&iacute;nh</strong></h3>\r\n\r\n<p>Lớp vỏ của chiếc&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m</a>&nbsp;được l&agrave;m từ chất liệu cao cấp đảm bảo an to&agrave;n trong c&aacute;c trường hợp bị va đập. Nh&igrave;n tổng thể bạn sẽ thấy m&agrave;u đen bao phủ to&agrave;n bộ thiết kế tạo n&ecirc;n c&aacute; t&iacute;nh mạnh mẽ kết hợp c&ugrave;ng một v&agrave;i keycap v&agrave; phần đế m&agrave;u v&agrave;ng nổi bật. Ngo&agrave;i ra c&ograve;n c&oacute; phần name tag được l&agrave;m bằng nh&ocirc;m đầy ấn tượng.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-3_f1d2ec22474a4e69a0c209b297a93a7a.jpg\" /></p>\r\n\r\n<h3><strong>Sử dụng Kailh Box switch cho b&agrave;n ph&iacute;m FL-Esports CMK87 Polar Night Black (Kailh Box)</strong></h3>\r\n\r\n<p>Kailh Box l&agrave; loại switch c&oacute; thiết kế chống bụi v&agrave; chống nước cực kỳ tốt theo chuẩn IP56. &Acirc;m thanh khi click cũng to hơn v&agrave; đanh hơn k&iacute;ch th&iacute;ch cảm gi&aacute;c g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m tốt hơn. Ngo&agrave;i ra h&atilde;ng c&ograve;n hỗ trợ th&ecirc;m t&iacute;nh năng Hotswap để việc custom switch cho b&agrave;n ph&iacute;m cũng trở n&ecirc;n dễ d&agrave;ng hơn.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-2_63fcd46f643c49f785658307ef01e758.jpg\" /></p>\r\n\r\n<h3><strong>Chất lượng bền bỉ tr&ecirc;n từng keycap</strong></h3>\r\n\r\n<p>Sử dụng profiel FSA độc quyền từ FL-Esports cho những thao t&aacute;c được mượt m&agrave; hơn.&nbsp;<a href=\"https://gearvn.com/collections/keycaps\" target=\"_blank\">Keycap</a>&nbsp;chất lượng cao c&ugrave;ng c&ocirc;ng nghệ in DoubleShot sắc n&eacute;t. Khi g&otilde; bạn c&oacute; thể đặt ho&agrave;n to&agrave;n l&ograve;ng tin của m&igrave;nh v&agrave;o độ chắc chắn tr&ecirc;n từng con ph&iacute;m.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-5_55c4c2c9ede94de99fe770ba337516ca.jpg\" /></p>\r\n\r\n<h3><strong>Hỗ trợ LED RGB đa sắc m&agrave;u</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/ban-phim-co-fl-esports\" target=\"_blank\">B&agrave;n ph&iacute;m FL-Esports</a>&nbsp;cho ph&eacute;p bạn t&ugrave;y chỉnh c&aacute;c hiệu ứng &aacute;nh s&aacute;ng đ&egrave;n RGB rực rỡ. Giờ đ&acirc;y bạn sẽ c&oacute; cho ri&ecirc;ng m&igrave;nh kh&ocirc;ng gian l&agrave;m việc theo sở th&iacute;ch đưa cảm hứng t&iacute;ch cực trong qu&aacute; tr&igrave;nh sử dụng l&ecirc;n cao hơn. Vừa t&ocirc; điểm th&ecirc;m g&oacute;c l&agrave;m việc vừa l&agrave; m&oacute;n đồ trang tr&iacute; với c&ocirc;ng suất hoạt động tốt nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-6_fabb4f51ada74b86bd40f2546c899d14.jpg\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ l&agrave; một trong những sản phẩm&nbsp;<a href=\"https://gearvn.com/collections/gaming-gear\" target=\"_blank\">Gaming Gear</a>&nbsp;m&agrave; bất kỳ ai cũng kh&ocirc;ng thể bỏ lỡ. FL-Esports CMK87 Polar Night Black được ra đời nhằm đem đến cho bạn những trải nghiệm th&uacute; vị đồng h&agrave;nh c&ugrave;ng bạn trong mọi thao t&aacute;c.</p>\r\n', '2022-05-21', '2022-05-21', 1),
(6, 1, 'Bàn phím FL-Esports CMK87 Polar Night Black Kailh Box Red switch', 'FL-Esports', '1653116283_FL-Esports CMK87 Polar Night Black Kailh Box Cool Mint switch.png', 2999000, 2999000, 106, 494, '<table border=\"0\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>hương hiệu:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FL-Esports</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thiết kế:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>TKL</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Loại b&agrave;n ph&iacute;m:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>B&agrave;n ph&iacute;m cơ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Keycap:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>FSA Profile, PBT DoubleShot&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Switch:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Kailh Box</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kết nối:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>USB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>LED:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>RGB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phụ kiện:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>S&aacute;ch hướng dẫn</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&iacute;nh năng:</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Hotswap thay switch dễ d&agrave;ng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>L-Esports CMK87 Polar Night Black (Kailh Box) nằm trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-2-den-3-trieu\" target=\"_blank\">b&agrave;n ph&iacute;m 2 đến 3 triệu</a>&nbsp;tại GEARVN. Chiếc b&agrave;n ph&iacute;m được đầu tư ph&aacute;t thiết kế ngoại h&igrave;nh chắc chắn cũng như mang lại những trải nghiệm g&otilde; ph&iacute;m tuyệt vời đến kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-1_4dd7eedfb13b42ceb9d7a5bbe837ae0a.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế TKL c&aacute; t&iacute;nh</strong></h3>\r\n\r\n<p>Lớp vỏ của chiếc&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m</a>&nbsp;được l&agrave;m từ chất liệu cao cấp đảm bảo an to&agrave;n trong c&aacute;c trường hợp bị va đập. Nh&igrave;n tổng thể bạn sẽ thấy m&agrave;u đen bao phủ to&agrave;n bộ thiết kế tạo n&ecirc;n c&aacute; t&iacute;nh mạnh mẽ kết hợp c&ugrave;ng một v&agrave;i keycap v&agrave; phần đế m&agrave;u v&agrave;ng nổi bật. Ngo&agrave;i ra c&ograve;n c&oacute; phần name tag được l&agrave;m bằng nh&ocirc;m đầy ấn tượng.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-3_f1d2ec22474a4e69a0c209b297a93a7a.jpg\" /></p>\r\n\r\n<h3><strong>Sử dụng Kailh Box switch cho b&agrave;n ph&iacute;m FL-Esports CMK87 Polar Night Black (Kailh Box)</strong></h3>\r\n\r\n<p>Kailh Box l&agrave; loại switch c&oacute; thiết kế chống bụi v&agrave; chống nước cực kỳ tốt theo chuẩn IP56. &Acirc;m thanh khi click cũng to hơn v&agrave; đanh hơn k&iacute;ch th&iacute;ch cảm gi&aacute;c g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m tốt hơn. Ngo&agrave;i ra h&atilde;ng c&ograve;n hỗ trợ th&ecirc;m t&iacute;nh năng Hotswap để việc custom switch cho b&agrave;n ph&iacute;m cũng trở n&ecirc;n dễ d&agrave;ng hơn.</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-2_63fcd46f643c49f785658307ef01e758.jpg\" /></p>\r\n\r\n<h3><strong>Chất lượng bền bỉ tr&ecirc;n từng keycap</strong></h3>\r\n\r\n<p>Sử dụng profiel FSA độc quyền từ FL-Esports cho những thao t&aacute;c được mượt m&agrave; hơn.&nbsp;<a href=\"https://gearvn.com/collections/keycaps\" target=\"_blank\">Keycap</a>&nbsp;chất lượng cao c&ugrave;ng c&ocirc;ng nghệ in DoubleShot sắc n&eacute;t. Khi g&otilde; bạn c&oacute; thể đặt ho&agrave;n to&agrave;n l&ograve;ng tin của m&igrave;nh v&agrave;o độ chắc chắn tr&ecirc;n từng con ph&iacute;m.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-5_55c4c2c9ede94de99fe770ba337516ca.jpg\" /></p>\r\n\r\n<h3><strong>Hỗ trợ LED RGB đa sắc m&agrave;u</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/ban-phim-co-fl-esports\" target=\"_blank\">B&agrave;n ph&iacute;m FL-Esports</a>&nbsp;cho ph&eacute;p bạn t&ugrave;y chỉnh c&aacute;c hiệu ứng &aacute;nh s&aacute;ng đ&egrave;n RGB rực rỡ. Giờ đ&acirc;y bạn sẽ c&oacute; cho ri&ecirc;ng m&igrave;nh kh&ocirc;ng gian l&agrave;m việc theo sở th&iacute;ch đưa cảm hứng t&iacute;ch cực trong qu&aacute; tr&igrave;nh sử dụng l&ecirc;n cao hơn. Vừa t&ocirc; điểm th&ecirc;m g&oacute;c l&agrave;m việc vừa l&agrave; m&oacute;n đồ trang tr&iacute; với c&ocirc;ng suất hoạt động tốt nhất.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN bàn phím FL-Esports CMK87 Polar Night Black (Kailh Box)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-fl-esports-cmk87-polar-night-black-kailh-box-6_fabb4f51ada74b86bd40f2546c899d14.jpg\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ l&agrave; một trong những sản phẩm&nbsp;<a href=\"https://gearvn.com/collections/gaming-gear\" target=\"_blank\">Gaming Gear</a>&nbsp;m&agrave; bất kỳ ai cũng kh&ocirc;ng thể bỏ lỡ. FL-Esports CMK87 Polar Night Black được ra đời nhằm đem đến cho bạn những trải nghiệm th&uacute; vị đồng h&agrave;nh c&ugrave;ng bạn trong mọi thao t&aacute;c.</p>\r\n', '2022-05-21', '2022-05-21', 1),
(7, 1, 'Bàn phím iKBC CD108 PD Blue switch', 'iKBC', '1653116334_iKBC CD108 PD.jpg', 1989000, 1989000, 5, 495, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>iKBC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>iKBC CD108 PD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kết nối:</td>\r\n			<td>C&oacute; d&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>108 ph&iacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size:</td>\r\n			<td>Full size</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Switch:</td>\r\n			<td>Cherry MX Blue/ Red/ Brown Switch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keycaps:</td>\r\n			<td>PBT Doubleshot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&acirc;y:</td>\r\n			<td>D&agrave;i 1,8m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước:</td>\r\n			<td>470 x 200 x 50 mm (D&agrave;i x Rộng x Cao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng:</td>\r\n			<td>1,8 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện:</td>\r\n			<td>Key puller, miếng che b&agrave;n ph&iacute;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3><strong>Khi m&agrave; sự tối giản v&agrave; chất lượng l&ecirc;n tiếng</strong></h3>\r\n\r\n<p>Phải c&ocirc;ng t&acirc;m khi nhận định rằng mẫu b&agrave;n ph&iacute;m của&nbsp;<strong>iKBC CD108 PD</strong>&nbsp;ch&iacute;nh l&agrave; một mẫu b&agrave;n ph&iacute;m m&agrave; sự tối giản v&agrave; chất lượng l&agrave; điểm thu h&uacute;t người sử dụng. Ch&uacute;ng ta c&oacute; một chiếc b&agrave;n ph&iacute;m được tạo n&ecirc;n từ keycaps PBT Doubleshot d&agrave;y dặn, đảm bảo qu&aacute; tr&igrave;nh sử dụng l&acirc;u d&agrave;i bền bỉ v&agrave; kh&ocirc;ng phai m&agrave;u. Switch chất lượng cực tốt từ Cherry Swich nổi tiếng. Bạn sẽ thấy hứng th&uacute; khi g&otilde; văn bản hay l&agrave;m việc tr&ecirc;n chiếc b&agrave;n ph&iacute;m n&agrave;y, một cảm gi&aacute;c sung sướng&nbsp;khi việc g&otilde; của bạn giờ đ&acirc;y thật thoải m&aacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_65e8cd4d9fbd4493b621e6605a317923.jpg\" /></pre>\r\n\r\n<h3><strong>D&agrave;nh cho những ai y&ecirc;u th&iacute;ch sự tối giản v&agrave; cần một chiếc b&agrave;n ph&iacute;m g&otilde; thoải m&aacute;i v&agrave; bền bỉ</strong></h3>\r\n\r\n<p>Vẻ ngo&agrave;i tối giản với t&ocirc;ng m&agrave;u đen cơ bản, nhấn nh&aacute; một ch&uacute;t m&agrave;u sắc với keycaps tặng k&egrave;m. Bạn c&oacute; một chiếc b&agrave;n ph&iacute;m ph&ugrave; hợp nhất d&agrave;nh cho những anh chị em l&agrave;m lập tr&igrave;nh, những bạn phải soạn thảo văn bản, người d&ugrave;ng văn ph&ograve;ng v&agrave; những anh chị em cần d&ugrave;ng b&agrave;n ph&iacute;m trong một khoảng thời gian d&agrave;i m&agrave; phải đảm bảo sự ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_7d346b9804c94d81a16827bea732a4b8.jpg\" /></p>\r\n\r\n<p><strong>Chất lượng từ keycaps PBT Doubleshot</strong></p>\r\n\r\n<p>Mẫu b&agrave;n ph&iacute;m được trang bị keycaps chất lượng cao v&agrave; ho&agrave;n thiện cực k&igrave; d&agrave;y dặn, rất tốt ch&iacute;nh l&agrave;m keycaps PBT Doubleshot được in 2 lần, đảm bảo khả năng chống b&aacute;m v&acirc;n tay v&agrave; kh&ocirc;ng phai m&agrave;u qua qu&aacute; tr&igrave;nh l&acirc;u d&agrave;i sử dụng m&agrave; vẫn như mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-02_365d84bce1ca49089d52124eb8bac4b9.jpg\" /></p>\r\n\r\n<h3><strong>Switch danh tiếng Cherry MX Switch tuỳ chọn 3 m&agrave;u</strong></h3>\r\n\r\n<p>Switch được trang bị tr&ecirc;n b&agrave;n ph&iacute;m của h&atilde;ng Cherry Corp - một tập đo&agrave;n của Đức sản xuất. Tạo n&ecirc;n một ti&ecirc;u chuẩn v&agrave;ng cho switch với danh tiếng v&agrave; chất lượng đ&atilde; được kiểm định một c&aacute;ch nghi&ecirc;m ngặt. Chất lượng Đức d&agrave;nh cho bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-03_f4285b4e6cf646af82dfe6cda9d92ed4.jpg\" /></p>\r\n\r\n<h3><strong>Kết cấu chống trượt, đảm bảo ổn định khi sử dụng</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m đi k&egrave;m mặt đế chống trượt, đảm bảo sự ổn định của b&agrave;n ph&iacute;m khi sử dụng trong mọi trường hợp. L&agrave;m bạn h&agrave;i l&ograve;ng khi chơi game, code phần mềm hay đơn giản chỉ l&agrave; soạn thảo văn bản.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-04_066569750482447c8adbb984c8b266fb.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-05_1d1ccfde3aa64dc2ba60edb9bd2ecbec.jpg\" /></p>\r\n\r\n<h3><strong>Layout chuẩn ANSI quốc tế</strong></h3>\r\n\r\n<p>Với layout ti&ecirc;u chuẩn quốc tế, bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m n&agrave;y. Cảm gi&aacute;c mang lại cực kỳ hứng th&uacute; v&agrave; thoải m&aacute;i.T&ocirc;i đảm bảo bạn sẽ y&ecirc;u chiếc b&agrave;n ph&iacute;m n&agrave;y ngay khi chạm v&agrave;o n&oacute; v&agrave; bắt đầu sử dụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_4f967ce260e94fc1b714d73461049176.jpg\" /></p>\r\n\r\n<h3><strong>Lời kết :</strong></h3>\r\n\r\n<p>Nhắm đến đối tượng người d&ugrave;ng l&agrave; những ai th&iacute;ch sự tối giản, đi k&egrave;m một chất lượng ho&agrave;n thiện cực kỳ tốt nhờ phần cứng cao cấp. Chi&ecirc;c b&agrave;n ph&iacute;m n&agrave;y chắc chắn sẽ l&agrave; một trợ thủ kh&ocirc;ng thể thiếu của người sử dụng. Ph&ugrave; hợp với : lập tr&igrave;nh vi&ecirc;n cần code nhiều trong khoảng thời gian d&agrave;i, người d&ugrave;ng văn ph&ograve;ng cần soạn thảo văn bản một c&aacute;ch &ecirc;m &aacute;i thoải m&aacute;i, người s&aacute;ng tạo nội dung , viết content sản phẩm. V&agrave; chắc chắn kh&ocirc;ng thể thiếu game thủ khi m&agrave; chất lượng v&agrave; độ nhạy của chiếc b&agrave;n ph&iacute;m n&agrave;y l&agrave; qu&aacute; tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_6a172e2a723340e7809bb1a123893700.jpg\" /></p>\r\n', '2022-05-21', '2022-05-21', 1),
(8, 1, 'Bàn phím iKBC CD108 PD Brown switch', 'iKBC', '1653116364_iKBC CD108 PD.jpg', 1989000, 1989000, 0, 500, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>iKBC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>iKBC CD108 PD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kết nối:</td>\r\n			<td>C&oacute; d&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>108 ph&iacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size:</td>\r\n			<td>Full size</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Switch:</td>\r\n			<td>Cherry MX Blue/ Red/ Brown Switch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keycaps:</td>\r\n			<td>PBT Doubleshot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&acirc;y:</td>\r\n			<td>D&agrave;i 1,8m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước:</td>\r\n			<td>470 x 200 x 50 mm (D&agrave;i x Rộng x Cao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng:</td>\r\n			<td>1,8 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện:</td>\r\n			<td>Key puller, miếng che b&agrave;n ph&iacute;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3><strong>Khi m&agrave; sự tối giản v&agrave; chất lượng l&ecirc;n tiếng</strong></h3>\r\n\r\n<p>Phải c&ocirc;ng t&acirc;m khi nhận định rằng mẫu b&agrave;n ph&iacute;m của&nbsp;<strong>iKBC CD108 PD</strong>&nbsp;ch&iacute;nh l&agrave; một mẫu b&agrave;n ph&iacute;m m&agrave; sự tối giản v&agrave; chất lượng l&agrave; điểm thu h&uacute;t người sử dụng. Ch&uacute;ng ta c&oacute; một chiếc b&agrave;n ph&iacute;m được tạo n&ecirc;n từ keycaps PBT Doubleshot d&agrave;y dặn, đảm bảo qu&aacute; tr&igrave;nh sử dụng l&acirc;u d&agrave;i bền bỉ v&agrave; kh&ocirc;ng phai m&agrave;u. Switch chất lượng cực tốt từ Cherry Swich nổi tiếng. Bạn sẽ thấy hứng th&uacute; khi g&otilde; văn bản hay l&agrave;m việc tr&ecirc;n chiếc b&agrave;n ph&iacute;m n&agrave;y, một cảm gi&aacute;c sung sướng&nbsp;khi việc g&otilde; của bạn giờ đ&acirc;y thật thoải m&aacute;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_65e8cd4d9fbd4493b621e6605a317923.jpg\" /></p>\r\n\r\n<h3><strong>D&agrave;nh cho những ai y&ecirc;u th&iacute;ch sự tối giản v&agrave; cần một chiếc b&agrave;n ph&iacute;m g&otilde; thoải m&aacute;i v&agrave; bền bỉ</strong></h3>\r\n\r\n<p>Vẻ ngo&agrave;i tối giản với t&ocirc;ng m&agrave;u đen cơ bản, nhấn nh&aacute; một ch&uacute;t m&agrave;u sắc với keycaps tặng k&egrave;m. Bạn c&oacute; một chiếc b&agrave;n ph&iacute;m ph&ugrave; hợp nhất d&agrave;nh cho những anh chị em l&agrave;m lập tr&igrave;nh, những bạn phải soạn thảo văn bản, người d&ugrave;ng văn ph&ograve;ng v&agrave; những anh chị em cần d&ugrave;ng b&agrave;n ph&iacute;m trong một khoảng thời gian d&agrave;i m&agrave; phải đảm bảo sự ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_7d346b9804c94d81a16827bea732a4b8.jpg\" /></p>\r\n\r\n<p><strong>Chất lượng từ keycaps PBT Doubleshot</strong></p>\r\n\r\n<p>Mẫu b&agrave;n ph&iacute;m được trang bị keycaps chất lượng cao v&agrave; ho&agrave;n thiện cực k&igrave; d&agrave;y dặn, rất tốt ch&iacute;nh l&agrave;m keycaps PBT Doubleshot được in 2 lần, đảm bảo khả năng chống b&aacute;m v&acirc;n tay v&agrave; kh&ocirc;ng phai m&agrave;u qua qu&aacute; tr&igrave;nh l&acirc;u d&agrave;i sử dụng m&agrave; vẫn như mới.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-02_365d84bce1ca49089d52124eb8bac4b9.jpg\" /></p>\r\n\r\n<h3><strong>Switch danh tiếng Cherry MX Switch tuỳ chọn 3 m&agrave;u</strong></h3>\r\n\r\n<p>Switch được trang bị tr&ecirc;n b&agrave;n ph&iacute;m của h&atilde;ng Cherry Corp - một tập đo&agrave;n của Đức sản xuất. Tạo n&ecirc;n một ti&ecirc;u chuẩn v&agrave;ng cho switch với danh tiếng v&agrave; chất lượng đ&atilde; được kiểm định một c&aacute;ch nghi&ecirc;m ngặt. Chất lượng Đức d&agrave;nh cho bạn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-03_f4285b4e6cf646af82dfe6cda9d92ed4.jpg\" /></p>\r\n\r\n<h3><strong>Kết cấu chống trượt, đảm bảo ổn định khi sử dụng</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m đi k&egrave;m mặt đế chống trượt, đảm bảo sự ổn định của b&agrave;n ph&iacute;m khi sử dụng trong mọi trường hợp. L&agrave;m bạn h&agrave;i l&ograve;ng khi chơi game, code phần mềm hay đơn giản chỉ l&agrave; soạn thảo văn bản.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-04_066569750482447c8adbb984c8b266fb.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-05_1d1ccfde3aa64dc2ba60edb9bd2ecbec.jpg\" /></p>\r\n\r\n<h3><strong>Layout chuẩn ANSI quốc tế</strong></h3>\r\n\r\n<p>Với layout ti&ecirc;u chuẩn quốc tế, bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m n&agrave;y. Cảm gi&aacute;c mang lại cực kỳ hứng th&uacute; v&agrave; thoải m&aacute;i.T&ocirc;i đảm bảo bạn sẽ y&ecirc;u chiếc b&agrave;n ph&iacute;m n&agrave;y ngay khi chạm v&agrave;o n&oacute; v&agrave; bắt đầu sử dụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_4f967ce260e94fc1b714d73461049176.jpg\" /></p>\r\n\r\n<h3><strong>Lời kết :</strong></h3>\r\n\r\n<p>Nhắm đến đối tượng người d&ugrave;ng l&agrave; những ai th&iacute;ch sự tối giản, đi k&egrave;m một chất lượng ho&agrave;n thiện cực kỳ tốt nhờ phần cứng cao cấp. Chi&ecirc;c b&agrave;n ph&iacute;m n&agrave;y chắc chắn sẽ l&agrave; một trợ thủ kh&ocirc;ng thể thiếu của người sử dụng. Ph&ugrave; hợp với : lập tr&igrave;nh vi&ecirc;n cần code nhiều trong khoảng thời gian d&agrave;i, người d&ugrave;ng văn ph&ograve;ng cần soạn thảo văn bản một c&aacute;ch &ecirc;m &aacute;i thoải m&aacute;i, người s&aacute;ng tạo nội dung , viết content sản phẩm. V&agrave; chắc chắn kh&ocirc;ng thể thiếu game thủ khi m&agrave; chất lượng v&agrave; độ nhạy của chiếc b&agrave;n ph&iacute;m n&agrave;y l&agrave; qu&aacute; tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_6a172e2a723340e7809bb1a123893700.jpg\" /></p>\r\n', '2022-05-21', '2022-05-21', 1),
(9, 1, 'Bàn phím iKBC CD108 PD Red switch', 'iKBC', '1653116387_iKBC CD108 PD.jpg', 1989000, 1989000, 0, 500, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>iKBC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>iKBC CD108 PD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kết nối:</td>\r\n			<td>C&oacute; d&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>108 ph&iacute;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size:</td>\r\n			<td>Full size</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Switch:</td>\r\n			<td>Cherry MX Blue/ Red/ Brown Switch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keycaps:</td>\r\n			<td>PBT Doubleshot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D&acirc;y:</td>\r\n			<td>D&agrave;i 1,8m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước:</td>\r\n			<td>470 x 200 x 50 mm (D&agrave;i x Rộng x Cao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng:</td>\r\n			<td>1,8 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện:</td>\r\n			<td>Key puller, miếng che b&agrave;n ph&iacute;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3><strong>Khi m&agrave; sự tối giản v&agrave; chất lượng l&ecirc;n tiếng</strong></h3>\r\n\r\n<p>Phải c&ocirc;ng t&acirc;m khi nhận định rằng mẫu b&agrave;n ph&iacute;m của&nbsp;<strong>iKBC CD108 PD</strong>&nbsp;ch&iacute;nh l&agrave; một mẫu b&agrave;n ph&iacute;m m&agrave; sự tối giản v&agrave; chất lượng l&agrave; điểm thu h&uacute;t người sử dụng. Ch&uacute;ng ta c&oacute; một chiếc b&agrave;n ph&iacute;m được tạo n&ecirc;n từ keycaps PBT Doubleshot d&agrave;y dặn, đảm bảo qu&aacute; tr&igrave;nh sử dụng l&acirc;u d&agrave;i bền bỉ v&agrave; kh&ocirc;ng phai m&agrave;u. Switch chất lượng cực tốt từ Cherry Swich nổi tiếng. Bạn sẽ thấy hứng th&uacute; khi g&otilde; văn bản hay l&agrave;m việc tr&ecirc;n chiếc b&agrave;n ph&iacute;m n&agrave;y, một cảm gi&aacute;c sung sướng&nbsp;khi việc g&otilde; của bạn giờ đ&acirc;y thật thoải m&aacute;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_65e8cd4d9fbd4493b621e6605a317923.jpg\" /></p>\r\n\r\n<h3><strong>D&agrave;nh cho những ai y&ecirc;u th&iacute;ch sự tối giản v&agrave; cần một chiếc b&agrave;n ph&iacute;m g&otilde; thoải m&aacute;i v&agrave; bền bỉ</strong></h3>\r\n\r\n<p>Vẻ ngo&agrave;i tối giản với t&ocirc;ng m&agrave;u đen cơ bản, nhấn nh&aacute; một ch&uacute;t m&agrave;u sắc với keycaps tặng k&egrave;m. Bạn c&oacute; một chiếc b&agrave;n ph&iacute;m ph&ugrave; hợp nhất d&agrave;nh cho những anh chị em l&agrave;m lập tr&igrave;nh, những bạn phải soạn thảo văn bản, người d&ugrave;ng văn ph&ograve;ng v&agrave; những anh chị em cần d&ugrave;ng b&agrave;n ph&iacute;m trong một khoảng thời gian d&agrave;i m&agrave; phải đảm bảo sự ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i khi sử dụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_7d346b9804c94d81a16827bea732a4b8.jpg\" /></p>\r\n\r\n<p><strong>Chất lượng từ keycaps PBT Doubleshot</strong></p>\r\n\r\n<p>Mẫu b&agrave;n ph&iacute;m được trang bị keycaps chất lượng cao v&agrave; ho&agrave;n thiện cực k&igrave; d&agrave;y dặn, rất tốt ch&iacute;nh l&agrave;m keycaps PBT Doubleshot được in 2 lần, đảm bảo khả năng chống b&aacute;m v&acirc;n tay v&agrave; kh&ocirc;ng phai m&agrave;u qua qu&aacute; tr&igrave;nh l&acirc;u d&agrave;i sử dụng m&agrave; vẫn như mới.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-02_365d84bce1ca49089d52124eb8bac4b9.jpg\" /></p>\r\n\r\n<h3><strong>Switch danh tiếng Cherry MX Switch tuỳ chọn 3 m&agrave;u</strong></h3>\r\n\r\n<p>Switch được trang bị tr&ecirc;n b&agrave;n ph&iacute;m của h&atilde;ng Cherry Corp - một tập đo&agrave;n của Đức sản xuất. Tạo n&ecirc;n một ti&ecirc;u chuẩn v&agrave;ng cho switch với danh tiếng v&agrave; chất lượng đ&atilde; được kiểm định một c&aacute;ch nghi&ecirc;m ngặt. Chất lượng Đức d&agrave;nh cho bạn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-03_f4285b4e6cf646af82dfe6cda9d92ed4.jpg\" /></p>\r\n\r\n<h3><strong>Kết cấu chống trượt, đảm bảo ổn định khi sử dụng</strong></h3>\r\n\r\n<p>B&agrave;n ph&iacute;m đi k&egrave;m mặt đế chống trượt, đảm bảo sự ổn định của b&agrave;n ph&iacute;m khi sử dụng trong mọi trường hợp. L&agrave;m bạn h&agrave;i l&ograve;ng khi chơi game, code phần mềm hay đơn giản chỉ l&agrave; soạn thảo văn bản.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-04_066569750482447c8adbb984c8b266fb.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-05_1d1ccfde3aa64dc2ba60edb9bd2ecbec.jpg\" /></p>\r\n\r\n<h3><strong>Layout chuẩn ANSI quốc tế</strong></h3>\r\n\r\n<p>Với layout ti&ecirc;u chuẩn quốc tế, bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m n&agrave;y. Cảm gi&aacute;c mang lại cực kỳ hứng th&uacute; v&agrave; thoải m&aacute;i.T&ocirc;i đảm bảo bạn sẽ y&ecirc;u chiếc b&agrave;n ph&iacute;m n&agrave;y ngay khi chạm v&agrave;o n&oacute; v&agrave; bắt đầu sử dụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-08_4f967ce260e94fc1b714d73461049176.jpg\" /></p>\r\n\r\n<h3><strong>Lời kết :</strong></h3>\r\n\r\n<p>Nhắm đến đối tượng người d&ugrave;ng l&agrave; những ai th&iacute;ch sự tối giản, đi k&egrave;m một chất lượng ho&agrave;n thiện cực kỳ tốt nhờ phần cứng cao cấp. Chi&ecirc;c b&agrave;n ph&iacute;m n&agrave;y chắc chắn sẽ l&agrave; một trợ thủ kh&ocirc;ng thể thiếu của người sử dụng. Ph&ugrave; hợp với : lập tr&igrave;nh vi&ecirc;n cần code nhiều trong khoảng thời gian d&agrave;i, người d&ugrave;ng văn ph&ograve;ng cần soạn thảo văn bản một c&aacute;ch &ecirc;m &aacute;i thoải m&aacute;i, người s&aacute;ng tạo nội dung , viết content sản phẩm. V&agrave; chắc chắn kh&ocirc;ng thể thiếu game thủ khi m&agrave; chất lượng v&agrave; độ nhạy của chiếc b&agrave;n ph&iacute;m n&agrave;y l&agrave; qu&aacute; tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-ban-phim-ikbc-cd108-pd-01_6a172e2a723340e7809bb1a123893700.jpg\" /></p>\r\n', '2022-05-21', '2022-05-21', 1),
(10, 1, 'Bàn phím Leopold FC750RPD White Mint Blue switch', 'Leopold', '1653116487_Leopold FC750RPD White Mint.jpg', 3270000, 3270000, 223, 277, NULL, '', '2022-05-21', '2022-05-21', 1),
(11, 1, 'Bàn phím Leopold FC750RPD White Mint Brown switch', 'Leopold', '1653116524_Leopold FC750RPD White Mint.jpg', 3270000, 3270000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(12, 1, 'Bàn phím Leopold FC750RPD White Mint Red switch', 'Leopold', '1653116572_Leopold FC750RPD White Mint.jpg', 3270000, 3270000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(13, 1, 'Bàn phím DareU EK807G Wireless Blue switch', 'DareU', '1653116767_DareU EK807G Wireless.jpg', 599000, 599000, 3, 651, NULL, '', '2022-05-21', '2022-05-21', 1),
(14, 1, 'Bàn phím DareU EK807G Wireless Brown switch', 'DareU', '1653116785_DareU EK807G Wireless.jpg', 599000, 599000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(15, 1, 'Bàn phím DareU EK807G Wireless Red switch', 'DareU', '1653116804_DareU EK807G Wireless.jpg', 599000, 599000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(16, 1, 'Bàn phím Razer Blackwidow V3 Tenkeyless Green switch', 'Razer', '1653116899_Razer Blackwidow V3 Tenkeyless Yellow switch.jpg', 2890000, 2890000, 2, 498, NULL, '', '2022-05-21', '2022-05-21', 1),
(17, 1, 'Bàn phím Razer Blackwidow V3 Tenkeyless Green switch', 'Razer', '1653116924_Razer Blackwidow V3 Tenkeyless Yellow switch.jpg', 2890000, 2890000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1);
INSERT INTO `tb_product` (`id`, `id_category`, `name`, `brand`, `image`, `sale_price`, `normal_price`, `sold`, `quantity`, `config`, `content`, `date`, `update_date`, `status`) VALUES
(18, 1, 'Bàn phím cơ AKKO 3108 v2 DS Matcha Red Bean (Akko switch v2 Blue)', 'Akko', '1653117112_Bàn phím cơ AKKO 3108 v2 DS.jpg', 1590000, 1590000, 5, 495, NULL, '', '2022-05-21', '2022-05-21', 1),
(19, 1, 'Bàn phím cơ AKKO 3108 v2 DS Matcha Red Bean (Akko switch v2 Orange)', 'Akko', '1653117149_Bàn phím cơ AKKO 3108 v2 DS.jpg', 1590000, 1590000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(20, 1, 'Bàn phím cơ AKKO 3108 v2 DS Matcha Red Bean (Akko switch v2 Pink)', 'Akko', '1653117170_Bàn phím cơ AKKO 3108 v2 DS.jpg', 1590000, 1590000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(21, 3, 'Tai nghe HyperX Cloud 2 Red', 'HyperX', '1653117264_HyperX Cloud 2 Red.jpg', 2890000, 2890000, 11, 489, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất:</td>\r\n			<td>HyperX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model:</td>\r\n			<td>Cloud II RED</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tần số đ&aacute;p ứng:</td>\r\n			<td>15Hz - 25kHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trở kh&aacute;ng :</td>\r\n			<td>60 Ohm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ngưỡng &aacute;p suất &acirc;m :&nbsp;</td>\r\n			<td>98 (+/-) 3 dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;i d&acirc;y c&aacute;p :</td>\r\n			<td>1m&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;i d&acirc;y c&aacute;p mở rộng :</td>\r\n			<td>2m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kết nối th&ocirc;ng qua jack:</td>\r\n			<td>3.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện đi k&egrave;m:</td>\r\n			<td>Microphone, đệm tai, souncard USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tần số đ&aacute;p ứng&nbsp;Microphone :</td>\r\n			<td>50-18kHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ngưỡng &aacute;p suất &acirc;m Microphone :</td>\r\n			<td>105dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trở kh&aacute;ng Microphone :</td>\r\n			<td>&lt;2.2kOhm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&Acirc;m thanh v&ograve;m:</td>\r\n			<td>7.1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3><strong>Tai nghe HyperX Cloud II RED - Thế hệ tai nghe mới từ HyperX</strong></h3>\r\n\r\n<p>Với những g&igrave; thể hiện, tai nghe gaming chụp tai đến từ HyperX được xem l&agrave; một trong số những chiếc&nbsp;<a href=\"https://gearvn.com/collections/gaming-headphones\">tai nghe gaming gi&aacute; rẻ</a>&nbsp;d&agrave;nh ri&ecirc;ng cho game thủ tốt nhất với gi&aacute; th&agrave;nh v&ocirc; c&ugrave;ng hợp l&yacute;.</p>\r\n\r\n<p><strong>Kingston HyperX Cloud II</strong>, thế hệ mới nhất hiện nay trong series tai nghe Cloud của Kingston v&agrave; l&agrave; mẫu tai nghe được nhiều người cho rằng sẽ l&agrave; một đối trọng xứng đ&aacute;ng với hai mẫu tai nghe gaming phổ biến l&agrave; Razer Kraken v&agrave; Steelseries Siberia. So với người đ&agrave;n em phi&ecirc;n bản đầu của m&igrave;nh th&igrave; Cloud II c&oacute; th&ecirc;m cho m&igrave;nh&nbsp;<a href=\"https://gearvn.com/collections/soundcard\" target=\"_blank\">sound card 7.1</a>, chất &acirc;m được cải thiện hơn cũng như nhiều m&agrave;u sắc hơn cho c&aacute;c game thủ lựa chọn.</p>\r\n\r\n<p><img src=\"https://hstatic.net/716/1000026716/10/2016/7-20/21515_tai_nghe_kingston_hyperx_cloud_ii_red_03.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Trang bị những c&ocirc;ng nghệ t&acirc;n tiến nhất</strong></h3>\r\n\r\n<p>Phụ kiện đi k&egrave;m bản V2 n&agrave;y đ&atilde; được Kingston cắt giảm v&agrave; chỉ giữ lại những phụ kiện cần thiết nhất đ&oacute; l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/microphone\" target=\"_blank\">microphone</a>&nbsp;th&aacute;o rời, soundcard 7.1, một đ&ocirc;i ốp l&oacute;t tai bằng nhung c&ugrave;ng với t&uacute;i đựng sản phẩm. HyperX Cloud II c&oacute; thiết kế over-ear mang lại cảm gi&aacute;c thoải m&aacute;i cho người sử dụng khi đ&ocirc;i tai của bạn sẽ nằm gọn b&ecirc;n trong ốp l&oacute;t tai cũng như hạn chế tối đa ảnh hưởng của tiếng ồn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p><a href=\"https://gearvn.com/collections/tai-nghe-chup-tai\">Tai nghe chụp tai</a>&nbsp;với thiết kế khung nh&ocirc;m v&agrave; c&aacute;c ốp đệm bằng da kh&ocirc;ng chỉ đem lại cảm gi&aacute;c cứng c&aacute;p m&agrave; lại v&ocirc; c&ugrave;ng sang trọng cho sản phẩm n&agrave;y. V&agrave; một điểm cộng nữa l&agrave; việc microphone c&oacute; thể th&aacute;o rời tr&aacute;nh vướng v&iacute;u khi kh&ocirc;ng phải sử dụng đến mic.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://hstatic.net/716/1000026716/10/2016/7-20/1427950.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Sự kh&aacute;c biệt đến từ Soundcard 7.1</strong></h3>\r\n\r\n<p>Soundcard 7.1 ch&iacute;nh l&agrave; điểm kh&aacute;c biệt giữa những d&ograve;ng&nbsp;<a href=\"https://gearvn.com/collections/tai-nghe-hyperx\">tai nghe hyperx</a>&nbsp;Cloud v&agrave; Cloud II, ở phi&ecirc;n bản Cloud II khi sử dụng k&egrave;m chiếc soundcard n&agrave;y sẽ đem lại một trải nghiệm &ldquo;đ&atilde; hay lại c&ograve;n hay hơn&rdquo; so với việc sử dụng cổng cắm 3.5mm b&igrave;nh thường.</p>\r\n\r\n<p>Theo như Kingston th&igrave; chiếc soundcard 7.1 của h&atilde;ng tạo ra được tối ưu cho c&aacute;c d&ograve;ng game đặc biệt l&agrave; d&ograve;ng game FPS. với CS:GO v&agrave; một v&agrave;i tựa game bắn s&uacute;ng, c&ugrave;ng với việc xem phim, chiếc soundcard giả lập &acirc;m thanh v&ograve;m 7.1 của Cloud II ho&agrave;n th&agrave;nh rất tốt nhiệm vụ của n&oacute;. V&agrave; thậm ch&iacute; bản th&acirc;n t&ocirc;i c&ograve;n cho rằng b&ecirc;n trong soundcard n&agrave;y c&ograve;n được trang bị cả chip opamp để k&eacute;o nguồn &acirc;m l&ecirc;n, cho ph&eacute;p nghe với &acirc;m lượng lớn hơn.</p>\r\n\r\n<p><img src=\"https://hstatic.net/716/1000026716/10/2016/7-20/kingston_hyperx_cloud_head_phone.jpg\" /></p>\r\n\r\n<h3><strong>Trải nghiệm sử dụng tuyệt vời</strong></h3>\r\n\r\n<p>T&oacute;m lại, với những g&igrave; thể hiện, ở cả độ bền (thiết kế cứng c&aacute;p, d&acirc;y c&aacute;p được bọc vải d&ugrave; chắc chắn), khả năng nghe cũng như độ đa dụng (c&oacute; thể d&ugrave;ng với cả m&aacute;y t&iacute;nh lẫn điện thoại hoặc c&aacute;c thiết bị kh&aacute;c),&nbsp;<a href=\"https://gearvn.com/products/tai-nghe-hyperx-cloud-ii-red\" target=\"_blank\">HyperX Cloud</a>&nbsp;l&agrave; một trong số những chiếc tai nghe d&agrave;nh ri&ecirc;ng cho game tốt nhất m&agrave; game thủ Việt c&oacute; thể mua được tại thời điểm n&agrave;y.</p>\r\n\r\n<p><img src=\"https://hstatic.net/716/1000026716/10/2016/7-20/tai-nghe-hyperx-cloud.jpg\" /></p>\r\n', '2022-05-21', '2022-05-24', 1),
(22, 3, 'Tai nghe HyperX Cloud Stinger Gaming Black', 'HyperX', '1653117358_HyperX Cloud Stinger Gaming Black.jpg', 890000, 890000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(23, 3, 'Bàn phím HyperX Cloud II Pink', 'HyperX', '1653117441_HyperX Cloud II Pink.jpg', 2790000, 2790000, 3, 497, NULL, '', '2022-05-21', '2022-05-21', 1),
(24, 3, 'Tai nghe HyperX Cloud Alpha S Blue', 'HyperX', '1653117523_HyperX Cloud Alpha S Blue.jpg', 2990000, 2990000, 28, 472, NULL, '', '2022-05-21', '2022-05-21', 1),
(25, 3, 'Tai nghe Logitech G Pro X League Of Legends', 'Logitech', '1653117590_Logitech G Pro X League Of Legends.png', 3690000, 3690000, 2, 498, NULL, '', '2022-05-21', '2022-05-21', 1),
(26, 3, 'Tai nghe Logitech G435 LightSpeed Wireless Off-White Lilac', 'Logitech', '1653117650_Logitech G435 LightSpeed Wireless Off-White Lilac.png', 1399000, 1399000, 4, 596, NULL, '', '2022-05-21', '2022-05-21', 1),
(27, 3, 'Tai nghe Logitech G435 LightSpeed Wireless Black Neon Yellow', 'Logitech', '1653117721_39291_logitech_g435_black_neon_yellow.png', 1399000, 1399000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(28, 3, 'Tai nghe Logitech G435 LightSpeed Wireless Blue Raspberry', 'Logitech', '1653117766_40215_logitech_g435_blue_raspberry__1_.png', 1399000, 1399000, 6, 494, NULL, '', '2022-05-21', '2022-05-21', 1),
(29, 3, 'Tai nghe Rapoo VM150', 'Rapoo', '1653117818_Rapoo VM150.jpg', 569000, 569000, 2, 398, NULL, '', '2022-05-21', '2022-05-21', 1),
(30, 3, 'Tai nghe Rapoo VH520C', 'Rapoo', '1653117906_Rapoo VH520C.jpg', 790000, 790000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(31, 3, 'Tai nghe Rapoo VH200 RGB', 'Rapoo', '1653117967_Tai nghe Rapoo VH200 RGB.jpg', 990000, 990000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(32, 3, 'Tai nghe Rapoo VH710 7.1', 'Rapoo', '1653118024_Tai nghe Rapoo VH710 7.1.jpg', 1090000, 1090000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(33, 3, 'Tai nghe SteelSeries Arctis 1 Black', 'SteelSeries', '1653118161_Tai nghe SteelSeries Arctis 1 Black.png', 1389000, 1389000, 0, 600, NULL, '', '2022-05-21', '2022-05-21', 1),
(34, 3, 'Tai nghe SteelSeries Arctis 7 White', 'SteelSeries', '1653118203_Tai nghe SteelSeries Arctis 7 White.png', 3989000, 3989000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(35, 3, 'Tai nghe SteelSeries Arctis 5 Black', 'SteelSeries', '1653118240_Tai nghe SteelSeries Arctis 5 Black.png', 3099000, 3099000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(36, 3, 'Tai nghe Steelseries Siberia V2 White', 'SteelSeries', '1653118308_Tai nghe Steelseries Siberia V2 White.jpg', 1660000, 1660000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(37, 3, 'Tai nghe DareU EH745 7.1 RGB', 'DareU', '1653118377_Tai nghe DareU EH745 7.1 RGB.jpg', 999000, 999000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(38, 3, 'Tai nghe DareU EH925s Queen Pink 7.1 RGB', 'DareU', '1653118406_Tai nghe DareU EH925s Queen Pink 7.1 RGB.jpg', 1099000, 1099000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(39, 3, 'Tai nghe DareU A700 Wireless', 'DareU', '1653118468_Tai nghe DareU A700 Wireless.png', 1099000, 1099000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(40, 3, 'Tai nghe DareU EH722X 7.1 White', 'DareU', '1653118510_Tai nghe DareU EH722X 7.1 White.jpg', 899000, 899000, 0, 500, NULL, '', '2022-05-21', '2022-05-21', 1),
(41, 2, 'Chuột ASUS ROG Keris', 'Asus', '1653118832_ASUS ROG Keris.jpg', 1250000, 1250000, 502, 98, '<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kết nối</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>USB 2.0</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Cảm biến</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>PAW3335</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>DPI</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>16000DPI</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tần số gửi t&iacute;n hiệu chuột tới m&aacute;y t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>1000 Hz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Switch</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>ROG 70M Micro Switch</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>N&uacute;t bấm</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>7 n&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kiểu chuột</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Tay phải</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>K&iacute;ch thước</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>118(L)x62(w)x39(H) mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3><strong>Chuột Gaming ASUS ROG Keris trang bị cảm biến 16.000DPI</strong></h3>\r\n\r\n<p>ASUS ROG Keris được trang bị cảm biến 16.000 dpi được điều chỉnh đặc biệt. N&oacute; c&oacute; c&aacute;c ổ cắm c&ocirc;ng tắc đẩy vừa vặn độc quyền của ROG v&agrave; C&ocirc;ng tắc Micro ROG, c&ugrave;ng với c&aacute;c n&uacute;t polymer PBT tr&aacute;i v&agrave; phải, ch&acirc;n&nbsp;<a href=\"https://gearvn.com/collections/chuot-asus\">chuột Asus</a>&nbsp;ROG Omni, đ&egrave;n ROG Paracord v&agrave; Aura Sync RGB.</p>\r\n\r\n<p><img alt=\"Chuột Gaming ASUS ROG Keris\" src=\"https://file.hstatic.net/1000026716/file/chuot-gaming-asus-rog-keris_c0c323a0022c42a88e3b76a62f65a1fb.jpg\" /></p>\r\n\r\n<h3><strong>N&uacute;t tr&aacute;i v&agrave; phải PBT</strong></h3>\r\n\r\n<p>C&aacute;c n&uacute;t PBT tr&aacute;i v&agrave; phải c&oacute; bề mặt kh&ocirc;ng trượt bền, chống m&agrave;i m&ograve;n hoặc s&aacute;ng b&oacute;ng, đảm bảo cảm gi&aacute;c đồng nhất.</p>\r\n\r\n<h3><strong>Thiết kế tối ưu</strong></h3>\r\n\r\n<p>Thiết kế dạng tổ ong b&ecirc;n trong mang lại độ cứng cho cấu tr&uacute;c v&agrave; gi&uacute;p giảm trọng lượng tổng thể xuống chỉ 62 gram.</p>\r\n\r\n<h3><strong>Thiết kế c&ocirc;ng th&aacute;i học</strong></h3>\r\n\r\n<p>ROG đ&atilde; l&agrave;m việc với c&aacute;c game thủ chuy&ecirc;n nghiệp trong giai đoạn thiết kế, sử dụng phản hồi của họ để tạo ra một con chuột chơi game với c&ocirc;ng th&aacute;i học đặc biệt. H&igrave;nh dạng kết quả t&igrave;m thấy điểm ngọt ng&agrave;o, mang lại cảm gi&aacute;c cầm nắm thoải m&aacute;i v&agrave; khả năng kiểm so&aacute;t đặc biệt.</p>\r\n\r\n<p><img alt=\"Chuột Gaming ASUS ROG Keris\" src=\"https://file.hstatic.net/1000026716/file/chuot-gaming-asus-rog-keris-1_4388279c5cdf4ea99e720a0c1c1ee2bf.jpg\" /></p>\r\n\r\n<h3><strong>C&ocirc;ng tắc Micro ROG</strong></h3>\r\n\r\n<p>ROG Keris tự h&agrave;o c&oacute; C&ocirc;ng tắc Micro ROG mới với tuổi thọ 70 triệu lần nhấp v&agrave; điểm nối điện mạ v&agrave;ng để cải thiện độ bền v&agrave; tuổi thọ. C&aacute;c ti&ecirc;u chuẩn sản xuất ROG nghi&ecirc;m ngặt đảm bảo từng c&ocirc;ng tắc ri&ecirc;ng lẻ được kiểm tra v&agrave; sắp xếp, với cả c&ocirc;ng tắc tr&aacute;i v&agrave; phải được gh&eacute;p nối để giữ cho độ lệch lực giữa +/- 5 gf cho cảm gi&aacute;c nhấp nhất qu&aacute;n.</p>\r\n\r\n<h3><strong>Ổ cắm c&ocirc;ng tắc PUSH-FIT độc quyền</strong></h3>\r\n\r\n<p>Ổ cắm c&ocirc;ng tắc ph&ugrave; hợp đẩy độc quyền gi&uacute;p bạn dễ d&agrave;ng lắp c&aacute;c c&ocirc;ng tắc mới để điều chỉnh lực hoạt động v&agrave; phản hồi theo sở th&iacute;ch. Ch&uacute;ng cũng gi&uacute;p bạn dễ d&agrave;ng thay thế c&aacute;c c&ocirc;ng tắc bị m&ograve;n hoặc hỏng để k&eacute;o d&agrave;i tuổi thọ của chuột.</p>\r\n\r\n<h3><strong>ROG Paracord</strong></h3>\r\n\r\n<p>ASUS ROG Keris bao gồm ROG Paracord cải tiến &ndash; một loại c&aacute;p cực kỳ linh hoạt v&agrave; nhẹ được thiết kế để giảm thiểu va chạm v&agrave; tối đa h&oacute;a chuyển động. Th&ecirc;m v&agrave;o đ&oacute;, thiết kế cổng n&acirc;ng l&ecirc;n của ROG Keris cung cấp kh&ocirc;ng gian giữa c&aacute;p v&agrave; bề mặt di chuyển để giảm lực k&eacute;o v&agrave; tiếng ồn của c&aacute;p.</p>\r\n\r\n<p><img alt=\"Chuột Gaming ASUS ROG Keris\" src=\"https://file.hstatic.net/1000026716/file/chuot-gaming-asus-rog-keris-2_08269c8166654a4fb49be4f349d6bf27.jpg\" /></p>\r\n\r\n<h3><strong>Bộ đ&ocirc;i ROG OMNI</strong></h3>\r\n\r\n<p>Sau một loạt thử nghiệm, nh&oacute;m thiết kế ROG x&aacute;c định rằng b&agrave;n ch&acirc;n chuột v&agrave; hướng di chuyển ảnh hưởng đến thao t&aacute;c lướt nhiều hơn k&iacute;ch thước. B&agrave;n ch&acirc;n chuột 100% Teflon (PTFE) tr&ecirc;n ROG Keris được l&agrave;m tr&ograve;n v&agrave; mượt m&agrave; hơn 25% so với c&aacute;c b&agrave;n ch&acirc;n tr&ecirc;n chuột chơi game kh&aacute;c để đảm bảo lướt nhẹ nh&agrave;ng tr&ecirc;n mọi bề mặt.</p>\r\n\r\n<h3><strong>DPI ON-THE-SCROLL</strong></h3>\r\n\r\n<p>T&iacute;nh năng DPI On-The-Scroll cho ph&eacute;p điều chỉnh độ nhạy của chuột m&agrave; kh&ocirc;ng cần truy cập menu. Chỉ cần nhấn v&agrave; giữ n&uacute;t DPI v&agrave; xoay con lăn để thay đổi mức độ nhạy. Ngo&agrave;i ra, nhấp v&agrave;o n&uacute;t sẽ xoay v&ograve;ng qua bốn mức DPI.</p>\r\n\r\n<p><img alt=\"Chuột Gaming ASUS ROG Keris\" src=\"https://file.hstatic.net/1000026716/file/chuot-gaming-asus-rog-keris-3_a59afcc8d9694daa9939bcf02f7065b5.jpg\" /></p>\r\n\r\n<h3><strong>&Aacute;nh s&aacute;ng AURA RGB AND ARMOURY CRATE</strong></h3>\r\n\r\n<p>Hệ thống chiếu s&aacute;ng ROG RGB t&iacute;ch hợp trong logo v&agrave; b&aacute;nh xe cuộn c&oacute; thể được t&ugrave;y chỉnh với phổ m&agrave;u gần như v&ocirc; tận v&agrave; một loạt c&aacute;c hiệu ứng động. Người d&ugrave;ng c&oacute; thể lưu trữ tối đa ba cấu h&igrave;nh tr&ecirc;n bộ nhớ t&iacute;ch hợp, do đ&oacute;, c&oacute; thể dễ d&agrave;ng truy cập c&aacute;c c&agrave;i đặt ưu ti&ecirc;n. Th&ecirc;m v&agrave;o đ&oacute;, phần mềm Armory Crate cho ph&eacute;p người d&ugrave;ng dễ d&agrave;ng t&ugrave;y chỉnh c&agrave;i đặt hiệu suất v&agrave; hiệu chỉnh hoặc c&aacute;c n&uacute;t lập tr&igrave;nh v&agrave; bản đồ, t&ugrave;y chỉnh hiệu ứng &aacute;nh s&aacute;ng, v.v.</p>\r\n', '2022-05-21', '2022-05-26', 1),
(42, 2, 'Chuột Asus ROG Gladius III Wireless', 'Asus', '1653118929_Chuột Asus ROG Gladius III Wireless.jpg', 2549000, 2549000, 502, 498, NULL, '', '2022-05-21', '2022-05-29', 1),
(43, 2, 'Chuột Asus TUF M3', 'Asus', '1653118994_Chuột Asus TUF M3.jpg', 599000, 599000, 349, 151, NULL, '', '2022-05-21', '2022-05-21', 1),
(44, 2, 'Chuột Asus TUF M4 Air', 'Asus', '1653119028_Chuột Asus TUF M4 Air.jpg', 989000, 989000, 10, 490, NULL, '', '2022-05-21', '2022-05-21', 1),
(45, 1, 'Bàn phím Akko Matcha green', 'Akko', '1653317757_Bàn phím cơ AKKO 3108 v2 DS.jpg', 1000000, 2000000, 24, 376, '', '', '2022-05-23', '2022-05-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_promotion`
--

CREATE TABLE `tb_promotion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_promotion`
--

INSERT INTO `tb_promotion` (`id`, `name`, `image`) VALUES
(1, 'Back to school', '1653248893_keyboard-promote.jpg'),
(3, 'Back to school', '1653248921_mouse-promote.jpg'),
(4, 'Back to school', '1653249200_headphone-promote.jpg'),
(26, 'Back to school', '1653615681_SteelSeries Rival 110 Grey.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD PRIMARY KEY (`contact`);

--
-- Indexes for table `tb_cart`
--
ALTER TABLE `tb_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_customer` (`email_customer`);

--
-- Indexes for table `tb_cart_detail`
--
ALTER TABLE `tb_cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_page`
--
ALTER TABLE `tb_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cart`
--
ALTER TABLE `tb_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tb_cart_detail`
--
ALTER TABLE `tb_cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_page`
--
ALTER TABLE `tb_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tb_promotion`
--
ALTER TABLE `tb_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_cart_detail`
--
ALTER TABLE `tb_cart_detail`
  ADD CONSTRAINT `tb_cart_detail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `tb_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_cart_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `tb_product` (`id`);

--
-- Constraints for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `tb_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
