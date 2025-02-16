-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2025 at 10:49 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tshoprdchipxyz_tmgb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `api_trans_id` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `account` text DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) DEFAULT 'LIVE',
  `time_live` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `purchase_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `description`, `image`, `createdate`, `price`, `purchase_key`) VALUES
(2, 'Tạo giao dịch ảo', 'Tự động tạo giao dịch nạp tiền, mua sản phẩm ảo để tăng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 500000, '5c9ffcc019c7b43a15d62af2d06e0456'),
(4, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng xếp hàng nạp tiền cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, '502bbf59e9bccd4ee2d5f2092495868a'),
(24, 'Nạp Tiền Server 2', 'Nạp tiền bằng nội dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, '69014a7b227750cd8294b8f9e5f2d35c'),
(211, 'Số Lượng Đã Bán Ảo', 'Điều chỉnh số lượng đã bán ảo (số lượng ảo + số lượng thật)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, '8e4bcdc97192c2f1c0c00950553ff419'),
(11412, 'API 1', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '73f1c57e87e53edd3a3ab43e8b1d200d'),
(11413, 'API 4', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '159d0ef95b8e99452359c9a6b1d8c892'),
(11422, 'API 5', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-09-14 00:00:00', 1000000, 'e67653147726e1039ce280326b75c802'),
(11427, 'API 6', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '4119c7768f137880b4f62d7bcdd373dd'),
(11469, 'Email Campaigns', 'Gửi Email đến toàn bộ khách hàng của bạn', 'https://i.imgur.com/iQWAKTY.jpg', '2022-11-02 00:00:00', 300000, '0f0a5d20ed9936cc1ea438e8235ebcb6'),
(11487, 'API 7', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-03 00:00:00', 1000000, '5d6338333f201f8624b6d964e3e65f97'),
(11521, 'Bán Like, Follow MXH', 'Tích hợp bán like, follow mạng xã hội vào mã nguồn SHOPCLONE6', 'https://i.imgur.com/gS5RRnm.png', '2022-11-11 00:00:00', 1000000, 'e45ec30b8f7aa0d143f613fc87db1215'),
(11522, 'Bán xu TDS - TTC', 'Chức năng bán xu TDS và TTC tự động', 'https://i.imgur.com/1RHdBdT.png', '2023-09-09 00:00:00', 3000000, '5f0b21217e5a57b9aad103156ca70cb8'),
(11535, 'API 8', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-11 00:00:00', 1000000, 'af280b494814a33b10222dc153f8375c'),
(11542, 'API 9', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-23 00:00:00', 1000000, '110b9bf3af1e682ee9742c6a80d91cf5'),
(11621, 'Tích hợp thuê OTP qua API 1', 'Chức năng thuê SIM tích hợp qua API 1', 'https://i.imgur.com/wQlNAcH.png', '2022-12-13 00:00:00', 1000000, 'edc7065be1db143d5396c32d660a2111'),
(11634, 'Tích hợp thuê OTP qua API 2', 'Chức năng thuê SIM tích hợp qua API 2', 'https://i.imgur.com/wQlNAcH.png', '2022-12-28 00:00:00', 2000000, '60d33a751d53ffccf83a47f0f1125346'),
(11635, 'API 10', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-12-19 00:00:00', 1000000, '57cefb2c674dd890625aeb2e39c5ddab'),
(11645, 'API 11', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-01-02 00:00:00', 1000000, '9849f2294e6a0a8d1ead179175fef039'),
(11656, 'Tích hợp thuê OTP qua API 3', 'Chức năng thuê SIM tích hợp qua API 3', 'https://i.imgur.com/wQlNAcH.png', '2023-01-10 00:00:00', 1000000, '96dd7a0a2d4033fe0925dfd3a26686ef'),
(11657, 'API 12', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-06 00:00:00', 1000000, 'ca71755697970415def8c22f3df5c1f3'),
(11678, 'Tích hợp thuê OTP qua API 4', 'Chức năng thuê SIM tích hợp qua API 4', 'https://i.imgur.com/wQlNAcH.png', '2023-02-06 00:00:00', 1000000, 'aeeb439c653dfdf2d83e9885df3eda6e'),
(11698, 'Tích hợp thuê OTP qua API 5', 'Chức năng thuê SIM tích hợp qua API 5', 'https://i.imgur.com/wQlNAcH.png', '2023-05-09 00:00:00', 1000000, 'f3512e293f4f2a93caa978c2d03eeec8'),
(11724, 'API 13', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-08 00:00:00', 1000000, 'cbff7d888aeb022d91b75d0abc1d388d'),
(11735, 'API 14', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-05-10 00:00:00', 1000000, '2a30f05687de813375e13e11cc52fde9'),
(11872, 'API 15', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-06-28 00:00:00', 1000000, '668a96b565947a3e9bed8dafe08b64ab'),
(11898, 'API 16', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-10-01 00:00:00', 1000000, '757024b142640633c90ad4fcf6a12281'),
(11901, 'API 17', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-12-29 00:00:00', 1000000, '5d8be6518eb92f03be60b4aeeb36281b'),
(11925, 'API 23', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2024-09-13 00:00:00', 1000000, '9ac2e9d20e02d564ff943b2128e2761c'),
(14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group thủ công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, 'eecf289e75f737983243b2a82ef053cc'),
(112246, 'BOT Telegram', 'Addon thông báo về Telegram', 'https://i.imgur.com/9Ci2geb.png', '2022-06-26 16:00:00', 300000, 'fbba226fe83ba8881f7fa3d381297790');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `accountName` text DEFAULT NULL,
  `accountNumber` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ips`
--

CREATE TABLE `banned_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banned_ips`
--

INSERT INTO `banned_ips` (`id`, `ip`, `attempts`, `create_gettime`, `banned`, `reason`) VALUES
(1, '27.75.226.17', 5, '2025-01-01 22:11:23', 1, 'IP PHÁ HOẠI, KHÔNG ĐƯỢC XÓA');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(64) DEFAULT NULL,
  `telco` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `serial` text DEFAULT NULL,
  `pin` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT 0,
  `id_api` varchar(55) NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_service`
--

CREATE TABLE `category_service` (
  `id` int(11) NOT NULL,
  `name` blob DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `connect_api`
--

CREATE TABLE `connect_api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT 'CMSNT',
  `domain` varchar(255) DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` text DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `auto_rename_api` int(11) NOT NULL DEFAULT 1,
  `ck_connect_api` float NOT NULL DEFAULT 0,
  `status_update_ck` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `min` int(11) NOT NULL DEFAULT 1000,
  `max` int(11) NOT NULL DEFAULT 10000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_used`
--

CREATE TABLE `coupon_used` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_invoice`
--

CREATE TABLE `crypto_invoice` (
  `id` int(11) NOT NULL,
  `trans_id` text DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `request_id` text DEFAULT NULL,
  `amount` decimal(18,6) NOT NULL DEFAULT 0.000000,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `url_payment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `symbol_left` text DEFAULT NULL,
  `symbol_right` text DEFAULT NULL,
  `seperator` text DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT 1,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `decimal_currency` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `rate`, `symbol_left`, `symbol_right`, `seperator`, `display`, `default_currency`, `decimal_currency`) VALUES
(3, 'Đồng', 'VND', 1, '', 'đ', 'dot', 1, 1, 0),
(4, 'Dollar', 'USD', 23558, '$', '', 'dot', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dichvugame`
--

CREATE TABLE `dichvugame` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `luuy` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dichvugame`
--

INSERT INTO `dichvugame` (`id`, `stt`, `name`, `image`, `luuy`, `status`) VALUES
(2, 0, 'ROBUX 120H ( CHƯA THUẾ )', 'assets/storage/images/dichvugameH9D.png', '<p><strong>LƯU &Yacute;:&nbsp;GỠ M&Atilde; X&Aacute;C THỰC ( 2 STEP ), TRƯỚC KHI ĐẶT ĐƠN, V&Agrave; KH&Ocirc;NG ĐƯỢC V&Agrave;O ACC L&Uacute;C ĐANG C&Agrave;Y, KH&Ocirc;NG TU&Acirc;N THỦ HUỶ ĐƠN KH&Ocirc;NG HO&Agrave;N TIỀN</strong></p>\r\n\r\n<p><strong><u>ROBUX SẼ VỀ SAU 5 NG&Agrave;Y ĐẶT ĐƠN</u></strong></p>', 1),
(3, 1, 'Trái Ác Quỷ', 'assets/storage/images/dichvugameRHU.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu_groups`
--

CREATE TABLE `dichvu_groups` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `dichvugame_id` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dichvu_groups`
--

INSERT INTO `dichvu_groups` (`id`, `stt`, `dichvugame_id`, `name`, `price`, `status`) VALUES
(1, 0, 1, 'Testst', 0, 1),
(2, 0, 1, 'TeststWi', 1000, 1),
(3, 0, 2, '70', 15000, 1),
(4, 0, 2, '140', 30000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu_history`
--

CREATE TABLE `dichvu_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `receiver` varchar(255) DEFAULT NULL,
  `dichvu` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `taikhoan` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ghichu` text DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dichvu_history`
--

INSERT INTO `dichvu_history` (`id`, `user_id`, `receiver`, `dichvu`, `money`, `taikhoan`, `matkhau`, `createdate`, `updatedate`, `status`, `ghichu`, `reason`) VALUES
(1, 1492, NULL, 'Testst', 0, 'quyle123', 'Uâuua', '2024-10-12 21:20:01', '2024-10-12 21:20:01', 'choduyet', 'Không có', NULL),
(2, 1492, NULL, 'TeststWi', 1000, 'Auua', 'Auuauaqq', '2024-10-12 21:20:17', '2024-10-12 21:20:17', 'choduyet', 'Không có', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `domain` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin_note` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `sotientruoc` int(11) NOT NULL DEFAULT 0,
  `sotienthaydoi` int(11) NOT NULL DEFAULT 0,
  `sotiensau` int(11) NOT NULL DEFAULT 0,
  `thoigian` datetime NOT NULL,
  `noidung` blob DEFAULT NULL,
  `transid` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `cc` text DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `content` longblob DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_sending`
--

CREATE TABLE `email_sending` (
  `id` int(11) NOT NULL,
  `camp_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_attempts`
--

CREATE TABLE `failed_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(64) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fake` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_white`
--

CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `lang_default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `icon`, `lang_default`, `status`) VALUES
(8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1),
(16, 'English', 'assets/storage/flags/flag_English.png', 0, 1),
(18, 'Thailand', 'assets/storage/flags/flag_Thailand.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `list_tds_ttc`
--

CREATE TABLE `list_tds_ttc` (
  `id` int(11) NOT NULL,
  `server` varchar(55) DEFAULT NULL COMMENT 'TTC or TDS',
  `username` text DEFAULT NULL COMMENT 'Username nếu có',
  `password` text DEFAULT NULL COMMENT 'Password nếu có',
  `token` text DEFAULT NULL COMMENT 'Token nếu có',
  `cookie` text DEFAULT NULL COMMENT 'Cookie nếu có',
  `coin` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `day_limit` int(11) NOT NULL DEFAULT 0,
  `proxy_host` text DEFAULT NULL,
  `proxy_user` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2024-12-15 00:38:20', 'Thực hiện tạo tài khoản'),
(2, 2, '14.191.158.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2025-01-01 22:03:29', 'Thực hiện tạo tài khoản'),
(3, 3, '42.119.44.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', '2025-01-01 22:09:34', 'Thực hiện tạo tài khoản'),
(4, 4, '2a09:bac3:d34e:25af::3c1:2e', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1', '2025-01-01 22:30:56', 'Thực hiện tạo tài khoản'),
(5, 4, '2a09:bac3:d34e:25af::3c1:2e', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1', '2025-01-01 22:31:18', 'Đăng nhập thành công vào hệ thống'),
(6, 4, '2a09:bac2:d363:1d05::2e4:32', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1', '2025-01-01 22:41:35', 'Đăng nhập thành công vào hệ thống');

-- --------------------------------------------------------

--
-- Table structure for table `log_ref`
--

CREATE TABLE `log_ref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `reason` text DEFAULT NULL,
  `sotientruoc` float NOT NULL DEFAULT 0,
  `sotienthaydoi` float NOT NULL DEFAULT 0,
  `sotienhientai` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_tds_ttc`
--

CREATE TABLE `log_tds_ttc` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `action` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `href` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `target` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 3,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `timeago` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nowpayments`
--

CREATE TABLE `nowpayments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `payment_id` varchar(50) DEFAULT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `pay_address` varchar(255) DEFAULT NULL,
  `price_amount` float NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `price_currency` varchar(255) DEFAULT NULL,
  `pay_amount` float NOT NULL DEFAULT 0,
  `actually_paid` float NOT NULL DEFAULT 0,
  `pay_currency` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_description` varchar(255) DEFAULT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome_amount` float NOT NULL DEFAULT 0,
  `outcome_currency` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `name` blob DEFAULT NULL,
  `api_trans_id` varchar(255) DEFAULT NULL,
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `document_id` int(11) NOT NULL DEFAULT 0,
  `store_fanpage_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `display` int(11) NOT NULL DEFAULT 1,
  `fake` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_autofb`
--

CREATE TABLE `order_autofb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL,
  `id_rate_autofb` int(11) NOT NULL DEFAULT 0,
  `insertId` int(11) DEFAULT 0,
  `payment` int(11) NOT NULL DEFAULT 0,
  `payment_api` int(11) NOT NULL DEFAULT 0,
  `uid` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `subscribers` int(11) NOT NULL DEFAULT 0,
  `count_success` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_service`
--

CREATE TABLE `order_service` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `id_api` varchar(50) DEFAULT NULL,
  `server` text DEFAULT NULL,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `remains` int(11) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `task_note` text DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `refund` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_tds_ttc`
--

CREATE TABLE `order_tds_ttc` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(55) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `server` text DEFAULT NULL,
  `user_nhan` text DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `remaining` int(11) NOT NULL DEFAULT 0,
  `money` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Đang chạy - 1 Hoàn tất - 2 Hủy',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_history`
--

CREATE TABLE `otp_history` (
  `id` int(11) NOT NULL,
  `transid` text DEFAULT NULL,
  `id_service_otp` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `number` text DEFAULT NULL,
  `id_order_api` text DEFAULT NULL,
  `app` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `code` text DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_flutterwave`
--

CREATE TABLE `payment_flutterwave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tx_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `currency` text DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_paypal`
--

CREATE TABLE `payment_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_pm`
--

CREATE TABLE `payment_pm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `payment_id` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_squadco`
--

CREATE TABLE `payment_squadco` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `transaction_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `flag` text DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `ctv_price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `checklive` int(11) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `preview` text DEFAULT NULL,
  `time_delete_account` int(11) NOT NULL DEFAULT 0,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `maximum` int(11) NOT NULL DEFAULT 10000,
  `id_api` varchar(50) NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT 0,
  `api_stock` float NOT NULL DEFAULT 0,
  `name_api` blob DEFAULT NULL,
  `update_api` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `filter_time_checklive` int(11) NOT NULL DEFAULT 1,
  `allow_api` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_autofb`
--

CREATE TABLE `rate_autofb` (
  `id` int(11) NOT NULL,
  `type_api` varchar(255) DEFAULT NULL,
  `name_api` varchar(255) DEFAULT NULL,
  `loaiseeding` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `name_loaiseeding` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate_autofb`
--

INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
(1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(40, 'bufflikecommentsharelike', NULL, 'like_v7', 34, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(44, 'bufflikecommentshareshare', NULL, 'share_sv4', 410, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `rating` int(1) NOT NULL,
  `review` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_email`
--

CREATE TABLE `send_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server2_autobank`
--

CREATE TABLE `server2_autobank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `tid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `received` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `name` blob DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `cost` float NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `id_api` varchar(50) DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 0,
  `dripfeed` varchar(50) DEFAULT NULL,
  `refill` varchar(50) DEFAULT NULL,
  `cancel` varchar(50) DEFAULT NULL,
  `note` blob DEFAULT NULL,
  `source_api` varchar(255) DEFAULT '5gsmm.com',
  `update_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_order`
--

CREATE TABLE `service_order` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_otp`
--

CREATE TABLE `service_otp` (
  `id` int(11) NOT NULL,
  `server` text DEFAULT NULL,
  `id_api` text DEFAULT NULL,
  `name_api` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `price_api` float NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'assets/img/cmsnt_light.png'),
(2, 'title', ''),
(3, 'thongbao', ''),
(4, 'logo_light', 'assets/storage/images/logo_light_6MN.png'),
(5, 'logo_dark', 'assets/storage/images/logo_dark_04P.png'),
(6, 'image', 'assets/storage/images/image_2CV.png'),
(7, 'favicon', 'assets/storage/images/favicon_N08.png'),
(8, 'description', ''),
(9, 'keywords', ''),
(10, 'author', ''),
(11, 'status', '1'),
(12, 'status_bank', '1'),
(13, 'type_bank', 'MBBank'),
(14, 'stk_bank', ''),
(15, 'name_bank', 'NGUYEN TAN THANH'),
(16, 'mk_bank', ''),
(17, 'status_momo', '0'),
(18, 'token_momo', ''),
(19, 'sdt_momo', ''),
(20, 'name_momo', ''),
(21, 'timeUpdate', ''),
(27, 'token_bank', ''),
(28, 'javascript', ''),
(31, 'email_smtp', 'verimailvn@gmail.com'),
(32, 'pass_email_smtp', 'nvyncsnvyfopmygv'),
(34, 'bg_login', 'assets/storage/images/bg_login2SV.png'),
(35, 'bg_register', 'assets/storage/images/bg_register9JX.png'),
(36, 'time_cron_24h', '0'),
(37, 'status_demo', '0'),
(39, 'license_key', 'd683266e128d2e3804bc9c5b1c9730b1'),
(40, 'email', ''),
(41, 'hotline', ''),
(42, 'qr_momo', ''),
(43, 'recharge_notice', ''),
(44, 'contact_page', ''),
(45, 'gif_loading', 'assets/storage/images/gif_loading9XP.png'),
(46, 'check_time_cron', '1734197282'),
(47, 'check_time_cron_bank', '1734197282'),
(48, 'min_rating', '500000'),
(49, 'orders_notice', ''),
(50, 'type_showProduct', '2'),
(51, 'clientId_paypal', ''),
(52, 'status_paypal', '0'),
(53, 'status_thesieure', '0'),
(54, 'token_thesieure', ''),
(55, 'check_time_cron_thesieure', '1734197282'),
(56, 'api_napthe', ''),
(57, 'status_napthe', '1'),
(58, 'notice_napthe', '<h1><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"background-color:#e74c3c\">CHIẾT KHẨU NẠP THẺ L&Agrave; 20%</span></span></h1>\r\n'),
(59, 'ck_napthe', '20'),
(60, 'chinh_sach_bao_mat', ''),
(61, 'dieu_khoan_su_dung', ''),
(62, 'status_update', '1'),
(63, 'status_captcha', '1'),
(64, 'session_login', '2592000'),
(65, 'gif_giftbox', 'assets/storage/images/gif_giftboxWUL.png'),
(66, 'display_sold', '1'),
(67, 'status_zalopay', '0'),
(68, 'token_zalopay', ''),
(69, 'check_time_cron_zalopay', '0'),
(70, 'type_password', 'bcrypt'),
(71, 'theme_color', '#1677E3'),
(72, 'min_recharge', '10000'),
(73, 'time_check_live', '1800'),
(74, 'currency', 'VND'),
(75, 'usd_rate', '23000'),
(76, 'clientSecret_paypal', ''),
(77, 'rate_paypal', '23000'),
(78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>\r\n'),
(79, 'gif_loader', 'assets/storage/images/gif_loaderNWH.png'),
(80, 'invoice_expiration', '86400'),
(81, 'mouse_click_effect', '0'),
(82, 'notice_spin', ''),
(83, 'status_spin', '1'),
(84, 'condition_spin', '1000000'),
(85, 'status_perfectmoney', '0'),
(86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n'),
(87, 'PAYEE_ACCOUNT_PM', ''),
(88, 'perfectmoney_pass_pm', ''),
(89, 'rate_pm', '23000'),
(90, 'PAYMENT_UNITS_PM', 'USD'),
(91, 'status_crypto', '0'),
(92, 'notice_crypto', '<ul>\r\n	<li>Vui l&ograve;ng nhập đ&uacute;ng số coin cần chuyển.</li>\r\n	<li>Hệ thống sẽ tự động cộng tiền v&agrave;o t&agrave;i khoản của bạn trong v&agrave;i ph&uacute;t.</li>\r\n	<li>Li&ecirc;n hệ Admin nếu trong qu&aacute; tr&igrave;nh nạp s&atilde;y ra lỗi.</li>\r\n</ul>\r\n'),
(93, 'status_giao_dich_gan_day', '1'),
(94, 'notice_binchecker', '<p>Ph&iacute; check 300k 1 thẻ</p>\r\n'),
(95, 'rate_binchecker', '500'),
(96, 'check_time_cron_card', '1646033795'),
(97, 'check_time_cron_checklivefb', '1657360009'),
(98, 'partner_id_card', ''),
(99, 'partner_key_card', ''),
(100, 'javascript_header', ''),
(101, 'sign_view_product', '0'),
(102, 'display_box_shop', '0'),
(103, 'type_notice_order', 'Email'),
(104, 'font_family', 'font-family: \'Roboto\', sans-serif;'),
(105, 'time_delete_orders', '2584920'),
(106, 'check_time_cron_cron', '1734197282'),
(107, 'display_show_product', '1'),
(108, 'display_rating', '1'),
(109, 'stt_giaodichao', '1'),
(110, 'theme_color2', '#1F65D7'),
(111, 'stt_topnap', '0'),
(112, 'sv1_autobank', '1'),
(113, 'sv2_autobank', '0'),
(114, 'prefix_autobank', 'STR'),
(115, 'status_buff_like_sub', '0'),
(116, 'token_autofb', '.'),
(117, 'virtual_sold_quantity', '0'),
(118, 'domain_autofb', 'https://cmslike.com/'),
(119, 'status_store_fanpage', '0'),
(120, 'notice_store_fanpage', ''),
(121, 'status_security', '0'),
(122, 'status_active_member', '0'),
(123, 'type_notification', 'telegram'),
(124, 'token_telegram', ''),
(125, 'chat_id_telegram', ''),
(126, 'buy_notification', '[{domain}] {username} vừa mua {amount} {product_name} với giá {price} vào lúc {time} thông qua {method}.'),
(127, 'naptien_notification', '[{domain}] {username} vừa nạp {amount} vào {method} thực nhận {price} vào lúc {time}.'),
(128, 'register_notification', '[{domain}] {username} vừa thực hiện đăng ký tài khoản vào lúc {time} bằng thiết bị {device}.'),
(129, 'max_time_buy', '10'),
(130, 'time_delete_clone_die', '0'),
(131, 'check_time_cron1', '1734197283'),
(132, 'bg_card', 'assets/storage/images/bg_card8UD.png'),
(133, 'display_blog', '1'),
(134, 'display_question', '0'),
(135, 'display_contact', '1'),
(136, 'display_api', '0'),
(137, 'display_tool', '1'),
(138, 'status_connect_api', '0'),
(139, 'check_time_cron2', '1734197282'),
(140, 'ck_connect_api', '10'),
(141, 'status_ref', '0'),
(142, 'ck_ref', '5'),
(143, 'notice_ref', ''),
(144, 'listbank_ref', 'Vietcombank\r\nTechcomebank\r\nVí MOMO\r\nVí Zalo Pay\r\nVietinbank\r\nSacombank'),
(145, 'minrut_ref', '100000'),
(146, 'display_preview', '1'),
(147, 'display_country', '1'),
(148, 'apikey_nowpayments', ''),
(149, 'status_nowpayments', '0'),
(150, 'status_is_change_password', '0'),
(151, 'auto_rename_api', '1'),
(152, 'ipn_nowpayments', ''),
(153, 'min_crypto', '10'),
(154, 'rate_crypto', '23000'),
(155, 'check_time_cron_crypto', '1658566581'),
(157, 'check_time_cron3', '1658772103'),
(158, 'menu_title', ''),
(159, 'default_api_product_status', '0'),
(160, 'min_gd_ao', '1'),
(161, 'max_gd_ao', '30'),
(162, 'speed_buy_gd_ao', '20'),
(165, 'amount_nap_ao', '10000\r\n20000\r\n40000\r\n50000\r\n12000\r\n34000\r\n24500\r\n60000\r\n70000\r\n100000\r\n200000\r\n300000\r\n500000\r\n400000\r\n40000\r\n15000\r\n25000\r\n35000\r\n45000\r\n55000\r\n65000\r\n45000\r\n100000\r\n400000\r\n500000\r\n800000\r\n1500000\r\n'),
(166, 'speed_nap_gd_ao', '20'),
(167, 'position_gd_gan_day', '2'),
(168, 'is_account_buy_fake', '0'),
(169, 'hide_product_empty', '0'),
(170, 'email_nowpayments', ''),
(171, 'password_nowpayments', ''),
(172, 'filter_time_checklive', '1'),
(173, 'check_time_cron4', '1661453581'),
(174, 'home_page', 'home'),
(175, 'notice_popup', ''),
(176, 'check_time_cron_dongvanfb', '1663259633'),
(177, 'timezone', 'Asia/Ho_Chi_Minh'),
(178, 'status_addfun_seller', '0'),
(179, 'status_store_document', '0'),
(180, 'noti_import_telegram', ''),
(181, 'group_id_import_telegram', ''),
(182, 'max_register_ip', '5'),
(183, 'check_time_cron6', '1666539232'),
(184, 'pin_cron', ''),
(185, 'status_toyyibpay', '0'),
(186, 'notice_toyyibpay', ''),
(187, 'userSecretKey_toyyibpay', ''),
(188, 'min_toyyibpay', '2000'),
(189, 'categoryCode_toyyibpay', ''),
(190, 'check_time_cron_toyyibpay', '0'),
(191, 'rate_toyyibpay', '5258'),
(192, 'billChargeToCustomer', ''),
(193, 'check_time_cron_sending_email', '1735746572'),
(194, 'check_time_cron7', '1667580843'),
(195, 'host_smtp', 'smtp.gmail.com'),
(196, 'encryption_smtp', 'tls'),
(197, 'port_smtp', '587'),
(198, 'token_5gsmm', 'token'),
(199, 'ck_rate_service', '10'),
(200, 'status_updatec_rate_service', '1'),
(201, 'rate_vnd_5gsmm', '24867'),
(202, 'check_time_cron_UpdateRate5gsmm', '1668588258'),
(203, 'check_time_cron_UpdateHistory5gsmm', '0'),
(204, 'check_time_cron8', '1668168040'),
(205, 'taohoadonnaptien_notification', ''),
(206, 'copyright_footer', 'Powered By <a target=\"_blank\" href=\"https://www.cmsnt.co/?ref=http://localhost/CMSNT.CO/SHOPCLONE6/\">CMSNT.CO</a>'),
(207, 'check_time_cron9', '1670065783'),
(208, 'status_api_buyproduct', '1'),
(209, 'marquee_notication_shopacc', ''),
(210, 'status_thuesim', '0'),
(211, 'server_thuesim', 'API_2'),
(212, 'token_thuesim', 'apikey'),
(213, 'ck_rate_thuesim', '0'),
(214, 'check_time_cron_service_otp_cron', '1672165493'),
(215, 'notice_thuesim', ''),
(216, 'check_time_cron_service_otp_history', '1675456095'),
(217, 'check_time_cron10', '1671558417'),
(218, 'text_create_website', '<ul>\r\n    <li>Bước 1: Trỏ IP <b style=\"color: red;\">103.14.48.40</b> vào bản ghi Host @ và www trong tên miền của bạn, có thể liên hệ nhà cung cấp tên miền để nhờ trỏ giúp.</li>\r\n    <li>Bước 2: Nhập tên miền muốn đăng ký đại lý và nhấn Thêm Ngay.</li>\r\n    <li>Bước 3: Chờ đợi QTV setup website (thanh trạng thái thay đổi thành <b\r\n            style=\"color: green;\">Hoạt Động</b>).</li>\r\n    <li>Bước 4: Truy cập Website bạn vừa tạo và nhập thông tin token và đăng ký\r\n        1 tài khoản quản trị của\r\n        bạn (tài khoản đầu tiên sẽ là tài khoản admin, lưu ý không để lộ tên\r\n        miền ra khi chưa setup xong website).</li>\r\n</ul>'),
(219, 'status_create_website', '1'),
(220, 'stt_create_website', '0'),
(221, 'create_website_notification', ''),
(222, 'domain_thuesim', 'linkweb.com'),
(223, 'title_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(224, 'description_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(225, 'keyword_thuesim', 'thue sim, thue otp, thue sms'),
(226, 'check_time_cron11', '1672681478'),
(227, 'check_time_cron12', '0'),
(228, 'crypto_address', ''),
(229, 'crypto_token', ''),
(230, 'crypto_min', '10'),
(231, 'crypto_max', '1000000'),
(232, 'check_time_cron13', '0'),
(233, 'flutterwave_api_key', ''),
(234, 'flutterwave_api_secret', ''),
(235, 'prefix_invoice', 'NT'),
(236, 'logo_login', 'assets/storage/images/logo_light_Q87.png'),
(237, 'domain_smmpanel', ''),
(238, 'show_category', 'head'),
(239, 'flutterwave_status', '0'),
(240, 'flutterwave_publicKey', ''),
(241, 'flutterwave_secretKey', ''),
(242, 'flutterwave_rate', '24000'),
(243, 'flutterwave_notice', '<p>adad</p>\r\n'),
(244, 'reCAPTCHA_status', '0'),
(245, 'reCAPTCHA_secret_key', ''),
(246, 'reCAPTCHA_site_key', ''),
(247, 'check_time_cron14', '1683739207'),
(248, 'html_top_product', ''),
(249, 'html_banned', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(250, 'html_block_ip', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(251, 'squadco_status', '0'),
(252, 'squadco_Secret_Key', ''),
(253, 'squadco_Public_Key', ''),
(254, 'squadco_rate', '51'),
(255, 'squadco_currency_code', 'NGN'),
(256, 'squadco_notice', ''),
(257, 'check_time_cron15', '0'),
(258, 'buy_fanpage_notification', ''),
(259, 'is_update_phone', '0'),
(260, 'status_ban_xu_ttc', '0'),
(261, 'status_ban_xu_tds', '0'),
(262, 'min_ban_xu_ttc', '1000000'),
(263, 'max_ban_xu_ttc', '100000000'),
(264, 'rate_ban_xu_ttc', '15'),
(265, 'notice_ban_xu_ttc', ''),
(266, 'min_ban_xu_tds', '1000000'),
(267, 'max_ban_xu_tds', '100000000'),
(268, 'rate_ban_xu_tds', '15'),
(269, 'notice_ban_xu_tds', ''),
(270, 'check_time_cron_mua_xu_cron', '0'),
(271, 'check_time_cron_mua_xu_ttc', '0'),
(272, 'check_time_cron_mua_xu_tds', '0'),
(273, 'check_time_cron_mua_xu_cron_24h', '0'),
(274, 'check_time_cron_mua_xu_cron1', '0'),
(275, 'check_time_cron16', '0'),
(276, 'status_otp_login_admin', '0'),
(277, 'check_time_cron17', '0'),
(284, 'check_time_shopclone7', '0'),
(285, 'check_time_cron23', '0'),
(286, 'status_only_ip_login_admin', '1'),
(287, 'limit_block_ip_admin_access', '5'),
(288, 'domains', 'shoprdchip.xyz,www.shoprdchip.xyz'),
(289, 'status_dichvugame', '1'),
(290, 'dichvu_notification', NULL),
(291, 'notice_dichvu', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>Dịch Vụ Game -&gt; Cấu H&igrave;nh&nbsp;-&gt;&nbsp;Ghi Ch&uacute; Lịch Sử Dịch Vụ</strong></p>\\r\\n\\r\\n<p>\\\\r\\\\n</p>\\r\\n'),
(292, 'cachnap', '2312');

-- --------------------------------------------------------

--
-- Table structure for table `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_option`
--

CREATE TABLE `spin_option` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `display` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spin_option`
--

INSERT INTO `spin_option` (`id`, `name`, `price`, `rate`, `display`) VALUES
(1, '+ 20.000đ', 20000, 10, 1),
(2, '+ 10.000đ', 10000, 20, 1),
(3, '+ 50.000đ', 50000, 5, 1),
(4, '+ 2.000đ', 2000, 30, 1),
(5, '+ 100đ', 100, 30, 1),
(6, '+ 100.000đ', 100000, 2, 1),
(7, '+ 500.000đ', 500000, 0.5, 1),
(8, '+ 30.000đ', 30000, 10, 1),
(9, '+ 99.999đ', 99999, 5, 1),
(10, '+ 11.111đ', 11111, 20, 1),
(11, '+ 1.000.000đ', 1000000, 0.1, 1),
(12, '+ 22.000', 22000, 20, 1),
(13, '+ 222.222', 222222, 2, 1),
(14, '+ 6.666đ', 6666, 30, 1),
(15, '+ 77.777đ', 77777, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_fanpage`
--

CREATE TABLE `store_fanpage` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `sl_like` int(11) NOT NULL DEFAULT 0,
  `nam_tao_fanpage` varchar(255) DEFAULT NULL,
  `fb_admin` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_email`
--

CREATE TABLE `task_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toyyibpay_transactions`
--

CREATE TABLE `toyyibpay_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `trans_id` varchar(50) DEFAULT NULL,
  `billName` text DEFAULT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `BillCode` varchar(50) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `name` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translate`
--

INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(20, 8, 'Đăng Nhập', 'Đăng Nhập'),
(24, 8, 'Đăng Ký', 'Đăng Ký'),
(28, 8, 'Tên đăng nhập', 'Tên đăng nhập'),
(32, 8, 'Mật khẩu', 'Mật khẩu'),
(39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(47, 8, 'Đăng ký', 'Đăng ký'),
(51, 8, 'Quên mật khẩu', 'Quên mật khẩu'),
(55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(59, 8, 'Đăng Nhập', 'Đăng Nhập'),
(63, 8, 'hoặc', 'hoặc'),
(67, 8, 'Đăng Nhập', 'Đăng Nhập'),
(71, 8, 'Đang xử lý...', 'Đang xử lý...'),
(75, 8, 'Đăng Ký', 'Đăng Ký'),
(79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(83, 8, 'Địa chỉ Email', 'Địa chỉ Email'),
(87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(104, 8, 'Username không được để trống', 'Username không được để trống'),
(108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(128, 8, 'Email không được để trống', 'Email không được để trống'),
(132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(152, 8, 'Đăng ký thành công', 'Đăng ký thành công'),
(156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(452, 8, 'Trang cá nhân', 'Trang cá nhân'),
(453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(454, 8, 'Đăng xuất', 'Đăng xuất'),
(455, 8, 'Trang quản trị', 'Trang quản trị'),
(456, 8, 'Bảo mật', 'Bảo mật'),
(457, 8, 'Cộng tác viên', 'Cộng tác viên'),
(458, 16, 'Đăng Nhập', 'Login'),
(459, 16, 'Đăng Ký', 'Register'),
(460, 16, 'Tên đăng nhập', 'Username'),
(461, 16, 'Mật khẩu', 'Password'),
(462, 16, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(463, 16, 'Bạn không có tài khoản?', 'You don\\\'t have an account?'),
(464, 16, 'Đăng ký', 'Register'),
(465, 16, 'Quên mật khẩu', 'Forgot password'),
(466, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Log in to your account to continue'),
(467, 16, 'Đăng Nhập', 'Log in'),
(468, 16, 'hoặc', 'or'),
(469, 16, 'Đăng Nhập', 'Log in'),
(470, 16, 'Đang xử lý...', 'Processing...'),
(471, 16, 'Đăng Ký', 'Đăng Ký'),
(472, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(473, 16, 'Địa chỉ Email', 'Email address'),
(474, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(475, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(476, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(477, 16, 'Thông tin đăng nhập không chính xác', 'Login information is incorrect'),
(478, 16, 'Username không được để trống', 'Username không được để trống'),
(479, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(480, 16, 'Hệ thống đang bảo trì', 'The system is maintenance'),
(481, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Your account has been locked'),
(482, 16, 'Đăng nhập thành công vào hệ thống', 'Successfully logged into the system'),
(483, 16, 'Đăng nhập thành công', 'Logged in successfully'),
(484, 16, 'Email không được để trống', 'Email cannot be blank'),
(485, 16, 'Nhập lại mật khẩu không đúng', 'Password incorrect, please try again'),
(486, 16, 'Định dạng Email không đúng', 'Email format is not correct'),
(487, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Username already exists in the system'),
(488, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Email address already exists in the system'),
(489, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'Your IP has reached the allowable account creation limit'),
(490, 16, 'Đăng ký thành công', 'Sign Up Success'),
(491, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Account creation failed, please try again'),
(492, 16, 'Thực hiện tạo tài khoản', 'Make an account'),
(493, 16, 'Trang cá nhân', 'Profile'),
(494, 16, 'Thay đổi mật khẩu', 'Change password'),
(495, 16, 'Đăng xuất', 'Logout'),
(496, 16, 'Trang quản trị', 'Admin'),
(497, 16, 'Bảo mật', 'Security'),
(498, 16, 'Cộng tác viên', 'CTV'),
(499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(500, 16, 'Bảng Điều Khiển', 'Dashboard'),
(501, 8, 'Nạp Tiền', 'Nạp Tiền'),
(502, 16, 'Nạp Tiền', 'RECHARGE'),
(505, 8, 'Ngân Hàng', 'Ngân Hàng'),
(506, 16, 'Ngân hàng', 'Bank'),
(507, 8, 'Ví Điện Tử', 'Ví Điện Tử'),
(508, 16, 'Ví Điện Tử', 'Electronic Wallet'),
(509, 8, 'Cửa Hàng', 'Cửa Hàng'),
(510, 16, 'Cửa Hàng', 'Store'),
(511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(512, 16, 'Lịch Sử Mua Hàng', 'Purchase History'),
(513, 8, 'Liên Hệ', 'Liên Hệ'),
(514, 16, 'Liên Hệ', 'Contact'),
(515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(516, 16, 'Thông tin liên hệ', 'Contact Info'),
(517, 8, 'Mã giao dịch', 'Mã giao dịch'),
(518, 16, 'Mã giao dịch', 'TransId'),
(519, 8, 'Sản phẩm', 'Sản phẩm'),
(520, 16, 'Sản phẩm', 'Product'),
(521, 8, 'Số lượng', 'Số lượng'),
(522, 16, 'Số lượng', 'Amount'),
(523, 8, 'Thanh toán', 'Thanh toán'),
(524, 16, 'Thanh toán', 'Pay'),
(525, 8, 'Thời gian', 'Thời gian'),
(526, 16, 'Thời gian', 'Time'),
(527, 8, 'Thao tác', 'Thao tác'),
(528, 16, 'Thao tác', 'Action'),
(529, 8, 'Xem Thêm', 'Xem Thêm'),
(530, 16, 'Xem Thêm', 'See More'),
(531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(532, 16, 'Thông Tin Cá Nhân', 'Profile'),
(533, 8, 'Họ và Tên', 'Họ và Tên'),
(534, 16, 'Họ và Tên', 'First and Last Name'),
(535, 8, 'Nhập họ và tên', 'Nhập họ và tên'),
(536, 16, 'Nhập họ và tên', 'Enter your first and last name'),
(537, 8, 'Số điện thoại', 'Số điện thoại'),
(538, 16, 'Số điện thoại', 'Phone number'),
(539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(540, 16, 'Nhập số điện thoại', 'Enter your phone number'),
(541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(542, 16, 'Nhập địa chỉ Email', 'Enter your email address'),
(543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(544, 16, 'Thời gian đăng ký', 'Registration time'),
(545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(546, 16, 'Đăng nhập gần đây', 'Login time'),
(547, 8, 'Huỷ', 'Huỷ'),
(548, 16, 'Huỷ', 'Cancel'),
(549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(550, 16, 'Lưu Thay Đổi', 'Save Changes'),
(551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(552, 16, 'Tổng Tiền Nạp', 'Total Deposit'),
(553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(556, 16, 'Số Dư Hiện Tại', 'Current Balance'),
(557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(558, 16, 'Số Dư Sử Dụng', 'Usage Balance'),
(559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(560, 16, 'Vui lòng đăng nhập', 'Please login'),
(561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(562, 16, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(564, 16, 'Định dạng Email không hợp lệ', 'Invalid Email Format'),
(565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(566, 16, 'Thay đổi thông tin hồ sơ', 'Change profile information'),
(567, 8, 'Lưu thành công', 'Lưu thành công'),
(568, 16, 'Lưu thành công', 'Successfully saved'),
(569, 8, 'Lưu thất bại', 'Lưu thất bại'),
(570, 16, 'Lưu thất bại', 'Save failed'),
(571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(572, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Please enter your current password'),
(573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(574, 16, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(576, 16, 'Mật khẩu hiện tại không chính xác', 'Current password is incorrect'),
(577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(578, 16, 'Đổi mật khẩu thành công', 'Change password successfully'),
(579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(580, 16, 'Đổi mật khẩu thất bại', 'Change password failed'),
(581, 8, 'Đóng', 'Đóng'),
(582, 16, 'Đóng', 'Close'),
(583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(584, 16, 'Mật khẩu hiện tại', 'Current password'),
(585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(586, 16, 'Nhập lại mật khẩu mới', 'Enter a new password'),
(587, 8, 'Mật khẩu mới', 'Mật khẩu mới'),
(588, 16, 'Mật khẩu mới', 'New password'),
(589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(590, 16, 'Vui lòng nhập lại mật khẩu mới', 'Please re-enter new password'),
(591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(592, 16, 'Nhật ký hoạt động', 'Activity Log'),
(593, 8, 'Biến động số dư', 'Biến động số dư'),
(594, 16, 'Biến động số dư', 'Balance log'),
(595, 8, 'Hành động', 'Hành động'),
(596, 16, 'Hành động', 'Action'),
(597, 8, 'Địa chỉ IP', 'Địa chỉ IP'),
(598, 16, 'Địa chỉ IP', 'IP address'),
(599, 8, 'Thiết bị', 'Thiết bị'),
(600, 16, 'Thiết bị', 'Device'),
(601, 8, 'Số tiền trước', 'Số tiền trước'),
(602, 16, 'Số tiền trước', 'Amount in advance'),
(603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(604, 16, 'Số tiền thay đổi', 'Amount of change'),
(605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(606, 16, 'Số tiền hiện tại', 'Current amount'),
(607, 8, 'Nội dung', 'Nội dung'),
(608, 16, 'Nội dung', 'Content'),
(609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(610, 16, 'Chọn phương thức thanh toán', 'Select a payment method'),
(611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(612, 16, 'Nhập số tiền cần nạp', 'Enter the amount to deposit'),
(613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(614, 16, 'Tạo hoá đơn', 'Create invoice'),
(615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(616, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Enter the amount you need to deposit into the system'),
(617, 8, 'Hoá Đơn', 'Hoá Đơn'),
(618, 16, 'Hoá Đơn', 'Invoices'),
(619, 8, 'Trạng thái', 'Trạng thái'),
(620, 16, 'Trạng thái', 'Status'),
(621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(622, 16, 'Phương thức thanh toán', 'Payment Method'),
(623, 8, 'Huỷ bỏ', 'Huỷ bỏ'),
(624, 16, 'Huỷ bỏ', 'Cancelled'),
(625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(626, 16, 'Đang chờ thanh toán', 'Pending'),
(627, 8, 'Đã thanh toán', 'Đã thanh toán'),
(628, 16, 'Đã thanh toán', 'Paid'),
(629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(630, 16, 'Vui lòng chọn phương thức thanh toán', 'Please choose a payment method'),
(631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(632, 16, 'Vui lòng nhập số tiền cần nạp', 'Please enter the amount to deposit'),
(633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(634, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Payment method does not exist in the system'),
(635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(636, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'You are working too fast, please wait'),
(637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(638, 16, 'Số tiền nạp tối thiểu là', 'Minimum deposit amount is'),
(639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(640, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'You have too many pending invoices for the day'),
(641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(642, 16, 'Tạo hoá đơn nạp tiền', 'Create a recharge invoice'),
(643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(644, 16, 'Tạo hoá đơn thành công', 'Successful invoice generation'),
(645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(646, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Invoice generation failed, please try again'),
(647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(648, 16, 'Chi tiết hoá đơn', 'Invoice details'),
(649, 8, 'Tải Về', 'Tải Về'),
(650, 16, 'Tải Về', 'Download'),
(651, 8, 'Xoá', 'Xoá'),
(652, 16, 'Xoá', 'Delete'),
(653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(654, 16, 'Xác nhận xoá đơn hàng', 'Order deletion confirmation'),
(655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(656, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Are you sure you want to delete this order?'),
(657, 8, 'Đồng Ý', 'Đồng Ý'),
(658, 16, 'Đồng Ý', 'Agree'),
(659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(660, 16, 'Đơn hàng không tồn tại trong hệ thống', 'The order does not exist in the system'),
(661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(662, 16, 'Xóa đơn hàng thành công', 'Deleted order successfully'),
(663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(664, 16, 'Dữ liệu không hợp lệ', 'Invalid data'),
(665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(666, 16, 'Xoá đơn hàng', 'Delete order'),
(667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(668, 16, 'Xóa sản phẩm thất bại', 'Delete failed products'),
(669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(670, 16, 'Chi tiết đơn hàng', 'Order details'),
(671, 8, 'Sao Chép', 'Sao Chép'),
(672, 16, 'Sao Chép', 'Copy'),
(673, 8, 'Quay Lại', 'Quay Lại'),
(674, 16, 'Quay Lại', 'Back'),
(675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(676, 16, 'Đánh giá sản phẩm', 'Product Reviews'),
(677, 8, 'Đánh giá ngay', 'Đánh giá ngay'),
(678, 16, 'Đánh giá ngay', 'Rate now'),
(679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(680, 16, 'Bạn có thể đánh giá đơn hàng này', 'You can rate this order'),
(681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(682, 16, 'Đơn hàng lớn hơn', 'Larger orders'),
(683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(684, 16, 'mới có thể đánh giá', 'can only evaluate'),
(685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(686, 16, 'Gửi Đánh Giá', 'Submit Review'),
(687, 8, 'Xác Nhận', 'Xác Nhận'),
(688, 16, 'Xác Nhận', 'Confirm'),
(689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(690, 16, 'Nhập nội dung cần đánh giá', 'Enter the content to evaluate'),
(691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(692, 16, 'Vui lòng nhập review', 'Please enter a review'),
(693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(694, 16, 'Đã sao chép vào bộ nhớ tạm', 'Copied to clipboard'),
(695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(696, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'You have already rated this order'),
(697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(698, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'You are not eligible to rate this order'),
(699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(700, 16, 'Gửi đánh giá thành công', 'Submit a successful review'),
(701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(702, 16, 'Gửi đánh giá thất bại', 'Submit a failed review'),
(703, 8, 'Sản phẩm mới', 'Sản phẩm mới'),
(704, 16, 'Sản phẩm mới', 'New products'),
(705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(706, 16, 'Nạp tiền qua PayPal', 'Recharge via PayPal'),
(707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(710, 16, 'Nhập số tiền cần nạp bằng USD', 'Enter the amount to deposit in USD'),
(711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(712, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Create a bill top up via PayPal'),
(713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(714, 16, 'Số tiền cần nạp', 'Amount to deposit'),
(715, 8, 'Giá', 'Giá'),
(716, 16, 'Giá', 'Price'),
(717, 8, 'MUA NGAY', 'MUA NGAY'),
(718, 16, 'MUA NGAY', 'BUY NOW'),
(719, 8, 'Đã bán', 'Đã bán'),
(720, 16, 'Đã bán', 'Sold'),
(721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(722, 16, 'Sản phẩm không tồn tại', 'Product does not exist'),
(723, 8, 'Quốc gia', 'Quốc gia'),
(724, 16, 'Quốc gia', 'Country'),
(725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(728, 16, 'Tất Cả Sản Phẩm', 'All Product'),
(729, 8, 'Tên sản phẩm', 'Tên sản phẩm'),
(730, 16, 'Tên sản phẩm', 'Product name'),
(731, 8, 'Hiện có', 'Hiện có'),
(732, 16, 'Hiện có', 'Available'),
(733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(734, 16, 'Thanh toán đơn hàng', 'Payment Orders'),
(735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(736, 16, 'Nhập số lượng cần mua', 'Enter the quantity you want to buy'),
(737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(738, 16, 'Tổng tiền cần thanh toán', 'Total amount to pay'),
(739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(744, 16, 'Nhập mã giảm giá', 'Enter coupon'),
(745, 16, 'Nhập mã giảm giá của bạn', 'Enter your coupon'),
(746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(747, 16, 'Huỷ mã giảm giá', 'Cancel coupon'),
(748, 8, 'Số lượng cần mua', 'Số lượng cần mua'),
(749, 16, 'Số lượng cần mua', 'Quantity to buy'),
(750, 8, 'Mã giảm giá', 'Mã giảm giá'),
(751, 16, 'Mã giảm giá', 'Coupon'),
(752, 8, 'Đánh giá', 'Đánh giá'),
(753, 16, 'Đánh giá', 'Evaluate'),
(754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(755, 16, 'Tải Về File Backup VIA', 'Download File Backup VIA'),
(756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(757, 16, 'Nhập UID VIA cần tải về file backup', 'Enter the VIA UID to download the backup file'),
(758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(759, 16, 'Vui lòng nhập UID cần tải', 'Please enter the UID to download'),
(760, 8, 'FAQ', 'FAQ'),
(761, 16, 'FAQ', 'FAQ'),
(762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(763, 16, 'Xác nhận tải về đơn hàng', 'Order download confirmation'),
(764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(765, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Are you sure you want to download this item?'),
(766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(767, 16, 'Tải về đơn hàng', 'Download order'),
(768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(769, 16, 'Tải về đơn hàng thành công', 'Download order successfully'),
(770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(771, 16, 'Tải về đơn hàng thất bại', 'Order download failed'),
(772, 8, 'Tài Liệu API', 'Tài Liệu API'),
(773, 16, 'Tài Liệu API', 'API Documentation'),
(774, 8, 'Số Dư', 'Số Dư'),
(775, 16, 'Số Dư', 'Balance'),
(776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(777, 16, 'Sản phẩm không tồn tại trong hệ thống', 'The product does not exist in the system'),
(778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(779, 16, 'Vui lòng nhập số lượng cần mua', 'Please enter the quantity you want to buy'),
(780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(781, 16, 'Số lượng trong hệ thống không đủ', 'The number in the system is not enough'),
(782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(783, 16, 'Số dư không đủ, vui lòng nạp thêm', 'The balance is not enough, please top up'),
(784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(785, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Your account has been blocked for cheating'),
(786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(787, 16, 'Thanh toán đơn hàng thành công', 'Order payment successful'),
(788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(789, 16, 'Không thể thanh toán, vui lòng thử lại', 'Unable to pay, please try again'),
(790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(791, 16, 'Đang tải xuống đơn hàng...', 'Order downloading...'),
(792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(793, 16, 'Xóa sản phẩm thành công', 'Delete product successfully'),
(794, 8, 'Tài khoản', 'Tài khoản'),
(796, 8, 'Tài khoản:', 'Tài khoản:'),
(797, 16, 'Tài khoản:', 'Account:'),
(798, 8, 'Số lượng mua:', 'Số lượng mua:'),
(800, 8, 'Thông báo', 'Thông báo'),
(801, 16, 'Thông báo', 'Notifications'),
(802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(803, 16, 'Chi tiết thông báo', 'Notice details'),
(804, 8, 'Nạp Thẻ', 'Nạp Thẻ'),
(805, 16, 'Nạp Thẻ', 'Nạp Thẻ'),
(806, 8, 'Lưu Ý', 'Lưu Ý'),
(807, 16, 'Lưu ý', 'Note'),
(808, 8, 'Lý do', 'Lý do'),
(809, 16, 'Lý do', 'Reason'),
(810, 8, 'Thực nhận', 'Thực nhận'),
(811, 16, 'Thực nhận', 'Received'),
(812, 8, 'Nhà mạng', 'Nhà mạng'),
(813, 16, 'Nhà mạng', 'Telco'),
(1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1012, 16, 'Chính sách bảo mật', 'Privacy Policy'),
(1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1014, 16, 'Điều khoản sử dụng', 'Terms of Use'),
(1015, 8, 'Captcha không chính xác', 'Captcha không chính xác'),
(1016, 16, 'Captcha không chính xác', 'Captcha is incorrect'),
(1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1018, 16, 'Nhập nội dung bên trái', 'Enter the content on the left'),
(1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1020, 16, 'Vui lòng nhập mã captcha để xác minh', 'Please enter captcha code to verify'),
(1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1022, 16, 'Bật/Tắt Google 2FA', 'Enable/Disable Google 2FA'),
(1023, 8, 'Bật', 'Bật'),
(1024, 16, 'Bật', 'Enable'),
(1025, 8, 'Tắt', 'Tắt'),
(1026, 16, 'Tắt', 'Disable'),
(1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1028, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Please save the information below before Enable this function'),
(1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1030, 16, 'Vui lòng chọn trạng thái 2FA', 'Please select 2FA status'),
(1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1032, 16, 'Nhập mã xác minh để lưu thay đổi', 'Enter the verification code to save changes'),
(1033, 8, 'Mã Xác Minh', 'Mã Xác Minh'),
(1034, 16, 'Mã Xác Minh', 'Verification Code'),
(1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1039, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'OTP Verification: Perform verification using Google Authenticator App'),
(1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1043, 16, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1045, 16, 'Vui lòng nhập mã xác minh 2FA', 'Please enter 2FA verification code'),
(1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1047, 16, 'Mã xác minh không chính xác', 'Verification code is incorrect'),
(1048, 8, 'Xác minh 2FA', 'Xác minh 2FA'),
(1049, 16, 'Xác minh 2FA', '2FA Verification'),
(1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1052, 8, 'Xác Minh OTP', 'Xác Minh OTP'),
(1053, 16, 'Xác Minh OTP', 'OTP Verification'),
(1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1055, 16, 'Nhập mã xác minh', 'Enter verification code'),
(1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1057, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Please verify 2FA to complete the login process'),
(1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1059, 16, 'Vui lòng nhập mã xác minh', 'Please enter the verification code'),
(1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1061, 16, 'Đang bật bảo mật', 'Security is on'),
(1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1063, 16, 'Đang tắt bảo mật', 'Turning off security'),
(1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1065, 16, 'Số sao đánh giá không hợp lệ', 'Invalid rating stars'),
(1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1067, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Please enable Google 2FA 2-step verification to protect your account.'),
(1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1069, 16, 'Số tiền thực nhận', 'The amount actually received'),
(1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1071, 16, 'Bảo Mật Tài Khoản', 'Account Security'),
(1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1073, 16, 'Thông tin tài nguyên', 'Resource Information'),
(1074, 8, 'Mở hộp quà', 'Mở hộp quà'),
(1075, 16, 'Mở hộp quà', 'Open the gift box'),
(1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1077, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'This gift box has already been received, good luck next time'),
(1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1079, 16, 'Nhận Quà Thất Bại', 'Receive Failure Gift'),
(1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1081, 16, 'Bạn đã mở hộp quà này rồi', 'You have already opened this gift box'),
(1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1085, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Congratulations on receiving a valuable gift box'),
(1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1087, 16, 'Quay về Trang Chủ', 'Back to Home'),
(1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1090, 16, 'Nhận Quà Thành Công', 'Receive Success Gifts'),
(1091, 8, 'Phiên bản', 'Phiên bản'),
(1092, 16, 'Phiên bản', 'Version'),
(1093, 8, 'Số tiền nạp', 'Số tiền nạp'),
(1094, 16, 'Số tiền nạp', 'Deposit amount'),
(1095, 8, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1096, 16, 'Lịch sử nạp PayPal', 'PayPal recharge history'),
(1097, 8, 'Thành công', 'Thành công'),
(1098, 16, 'Thành công', 'Success'),
(1099, 8, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1100, 16, 'Cảm ơn bạn đã mua hàng', 'Thank you for your purchase'),
(1101, 8, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1102, 16, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Your order has been processed, you can view your account information through the link below'),
(1103, 8, 'Tổng thanh toán', 'Tổng thanh toán'),
(1104, 16, 'Tổng thanh toán', 'Total payment'),
(1105, 8, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1106, 16, 'Xem chi tiết đơn hàng', 'View order details'),
(1107, 8, 'Xem Ngay', 'Xem Ngay'),
(1108, 16, 'Xem Ngay', 'Watch Now'),
(1109, 8, 'Tạo hoá đơn nạp tiền thành công', 'Tạo hoá đơn nạp tiền thành công'),
(1110, 16, 'Tạo hoá đơn nạp tiền thành công', 'Create a successful recharge invoice'),
(1111, 8, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1112, 16, 'Vòng quay may mắn', 'Rotation luck'),
(1113, 8, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1114, 16, 'Đang chờ kết quả...', 'Waiting for results...'),
(1115, 8, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1116, 16, 'Lịch Sử Quay Thưởng', 'Spin History'),
(1117, 8, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1118, 16, 'Số lượt quay hiện tại của bạn đã hết', 'Your current spin has expired'),
(1119, 8, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1120, 16, 'Chúc mừng bạn đã quay được phần thường', 'Congratulations on filming the regular part'),
(1121, 8, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1122, 16, 'Chức năng này đang được bảo trì', 'This function is under maintenance'),
(1123, 8, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1124, 16, 'Cách kiếm thêm lượt quay', 'How to earn more spins'),
(1125, 8, 'Thực Hiện', 'Thực Hiện'),
(1126, 16, 'Thực Hiện', 'Submit'),
(1127, 8, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1128, 16, 'Thanh Toán Bằng Perfect Money', 'Paying With Perfect Money'),
(1129, 8, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1130, 16, 'Khuôn Mặt Ngẫu Nhiên', 'Random Faces'),
(1131, 8, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1132, 16, 'Bạn chưa đăng nhập', 'You are not logged in'),
(1133, 8, 'Mua', 'Mua'),
(1134, 16, 'Mua', 'Buy'),
(1135, 16, 'tài khoản', 'accounts'),
(1136, 8, 'với giá', 'với giá'),
(1137, 16, 'với giá', 'with price'),
(1138, 8, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1139, 16, 'Giao Dịch Dần Đây Của Hệ Thống', 'Recent Transactions'),
(1140, 8, 'giây trước', 'giây trước'),
(1141, 16, 'giây trước', 'seconds ago'),
(1142, 8, 'năm trước', 'năm trước'),
(1143, 16, 'năm trước', 'last year'),
(1144, 8, 'tháng trước', 'tháng trước'),
(1145, 16, 'tháng trước', 'last month'),
(1146, 8, 'tuần trước', 'tuần trước'),
(1147, 16, 'tuần trước', 'last week'),
(1148, 8, 'ngày trước', 'ngày trước'),
(1149, 16, 'ngày trước', 'yesterday'),
(1150, 8, 'Hôm qua', 'Hôm qua'),
(1151, 16, 'Hôm qua', 'Yesterday'),
(1152, 8, 'tiếng trước', 'tiếng trước'),
(1153, 16, 'tiếng trước', 'hour ago'),
(1154, 8, 'phút trước', 'phút trước'),
(1155, 16, 'phút trước', 'minute ago'),
(1156, 8, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1157, 16, 'Sao Chép Tất Cả', 'Copy All'),
(1158, 8, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1159, 16, 'Bài viết nổi bật', 'Featured Posts'),
(1160, 8, 'Danh sách bài viết', 'Danh sách bài viết'),
(1161, 16, 'Danh sách bài viết', 'List of articles'),
(1162, 8, 'HẾT HÀNG', 'HẾT HÀNG'),
(1163, 16, 'HẾT HÀNG', 'OUT OF STOCK'),
(1164, 8, 'MUA TÀI KHOẢN', 'Mua Tài Khoản'),
(1165, 16, 'MUA TÀI KHOẢN', 'BUY ACCOUNT'),
(1166, 8, 'MUA TÀI LIỆU', 'Mua Tài Liệu'),
(1167, 16, 'MUA TÀI LIỆU', 'BUY DOCUMENTS'),
(1168, 8, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1169, 16, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Provide resources to run ADS, Clone, Via, BM, Mail etc'),
(1170, 8, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1171, 16, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Provide documents, TUT in the field of marketing, mmo etc'),
(1172, 8, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1173, 16, 'XEM CỬA HÀNG', 'VIEW SHOP'),
(1174, 8, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1175, 16, 'Danh sách TUT/Trick', 'List of TUT/Trick'),
(1176, 8, 'Chuyên mục', 'Chuyên mục'),
(1177, 16, 'Chuyên mục', 'Categories'),
(1178, 8, 'Ngày đăng', 'Ngày đăng'),
(1179, 16, 'Ngày đăng', 'Create date'),
(1180, 8, 'Cập nhật', 'Cập nhật'),
(1181, 16, 'Cập nhật', 'Update date'),
(1182, 8, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'Bạn không được dùng chức năng này vì đây là trang web demo'),
(1183, 16, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'You cannot use this function because this is a demo site'),
(1184, 8, 'Tổng nạp lớn hơn hoặc bằng', 'Tổng nạp lớn hơn hoặc bằng'),
(1185, 16, 'Tổng nạp lớn hơn hoặc bằng', 'Total charge is greater than or equal to'),
(1186, 8, 'Khuyến mãi thêm', 'Khuyến mãi thêm'),
(1187, 16, 'Khuyến mãi thêm', 'Extra promotion'),
(1188, 8, 'Số tiền nhận được', 'Số tiền nhận được'),
(1189, 16, 'Số tiền nhận được', 'Amount received'),
(1190, 8, 'Ví', 'Ví'),
(1191, 16, 'Ví', 'Wallet'),
(1192, 8, 'Giảm', 'Giảm'),
(1193, 16, 'Giảm', 'Discount'),
(1194, 8, 'ĐƠN HÀNG GẦN ĐÂY', 'ĐƠN HÀNG GẦN ĐÂY'),
(1195, 16, 'ĐƠN HÀNG GẦN ĐÂY', 'LAST ORDER'),
(1196, 8, 'NẠP TIỀN GẦN ĐÂY', 'NẠP TIỀN GẦN ĐÂY'),
(1197, 16, 'NẠP TIỀN GẦN ĐÂY', 'LAST DEPOSIT'),
(1198, 8, 'Gợi ý sản phẩm cho bạn', 'Gợi ý sản phẩm cho bạn'),
(1199, 16, 'Gợi ý sản phẩm cho bạn', 'Recommend products for you'),
(1200, 8, 'Bảng Xếp Hạng', 'Bảng Xếp Hạng'),
(1201, 16, 'Bảng Xếp Hạng', 'Top Money'),
(1202, 8, 'Bài Viết', 'Bài Viết'),
(1203, 16, 'Bài Viết', 'Posts'),
(1204, 8, 'Công Cụ', 'Công Cụ'),
(1205, 16, 'Công Cụ', 'Tools'),
(1206, 8, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng Xếp Hạng Nạp Tiền'),
(1207, 16, 'Bảng Xếp Hạng Nạp Tiền', 'Top Money'),
(1208, 8, 'Xếp Hạng', 'Xếp Hạng'),
(1209, 16, 'Xếp Hạng', 'Top'),
(1210, 8, 'Tổng Nạp', 'Tổng Nạp'),
(1211, 16, 'Tổng Nạp', 'Total Deposit'),
(1212, 8, 'Vị Trí', 'Vị Trí'),
(1213, 16, 'Vị Trí', 'Positions'),
(1214, 8, 'Thành Viên', 'Thành Viên'),
(1215, 16, 'Thành Viên', 'Member'),
(1216, 8, 'KHÁC', 'KHÁC'),
(1217, 16, 'KHÁC', 'OTHER'),
(1218, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1219, 18, 'Đăng Ký', 'Đăng Ký'),
(1220, 18, 'Tên đăng nhập', 'Tên đăng nhập'),
(1221, 18, 'Mật khẩu', 'Mật khẩu'),
(1222, 18, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(1223, 18, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(1224, 18, 'Đăng ký', 'Đăng ký'),
(1225, 18, 'Quên mật khẩu', 'Quên mật khẩu'),
(1226, 18, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(1227, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1228, 18, 'hoặc', 'hoặc'),
(1229, 18, 'Đăng Nhập', 'Đăng Nhập'),
(1230, 18, 'Đang xử lý...', 'Đang xử lý...'),
(1231, 18, 'Đăng Ký', 'Đăng Ký'),
(1232, 18, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(1233, 18, 'Địa chỉ Email', 'Địa chỉ Email'),
(1234, 18, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(1235, 18, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(1236, 18, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(1237, 18, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(1238, 18, 'Username không được để trống', 'Username không được để trống'),
(1239, 18, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(1240, 18, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(1241, 18, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(1242, 18, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(1243, 18, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(1244, 18, 'Email không được để trống', 'Email không được để trống'),
(1245, 18, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(1246, 18, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(1247, 18, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(1248, 18, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(1249, 18, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(1250, 18, 'Đăng ký thành công', 'Đăng ký thành công'),
(1251, 18, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(1252, 18, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(1253, 18, 'Trang cá nhân', 'Trang cá nhân'),
(1254, 18, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(1255, 18, 'Đăng xuất', 'Đăng xuất'),
(1256, 18, 'Trang quản trị', 'Trang quản trị'),
(1257, 18, 'Bảo mật', 'Bảo mật'),
(1258, 18, 'Cộng tác viên', 'Cộng tác viên'),
(1259, 18, 'Bảng Điều Khiển', 'แผงควบคุม'),
(1260, 18, 'Nạp Tiền', 'เติมเงิน'),
(1261, 18, 'Ngân Hàng', 'ธนาคาร'),
(1262, 18, 'Ví Điện Tử', 'Ví Điện Tử'),
(1263, 18, 'Cửa Hàng', 'Cửa Hàng'),
(1264, 18, 'Lịch Sử Mua Hàng', 'ประวัติการซื้อ'),
(1265, 18, 'Liên Hệ', 'Liên Hệ'),
(1266, 18, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(1267, 18, 'Mã giao dịch', 'Mã giao dịch'),
(1268, 18, 'Sản phẩm', 'Sản phẩm'),
(1269, 18, 'Số lượng', 'Số lượng'),
(1270, 18, 'Thanh toán', 'Thanh toán'),
(1271, 18, 'Thời gian', 'Thời gian'),
(1272, 18, 'Thao tác', 'Thao tác'),
(1273, 18, 'Xem Thêm', 'Xem Thêm'),
(1274, 18, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(1275, 18, 'Họ và Tên', 'Họ và Tên'),
(1276, 18, 'Nhập họ và tên', 'Nhập họ và tên'),
(1277, 18, 'Số điện thoại', 'Số điện thoại'),
(1278, 18, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(1279, 18, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(1280, 18, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(1281, 18, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(1282, 18, 'Huỷ', 'Huỷ'),
(1283, 18, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(1284, 18, 'Tổng Tiền Nạp', 'ยอดเงินฝาก'),
(1285, 18, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(1286, 18, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(1287, 18, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(1288, 18, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(1289, 18, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(1290, 18, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(1291, 18, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(1292, 18, 'Lưu thành công', 'Lưu thành công'),
(1293, 18, 'Lưu thất bại', 'Lưu thất bại'),
(1294, 18, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(1295, 18, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(1296, 18, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(1297, 18, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(1298, 18, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(1299, 18, 'Đóng', 'Đóng'),
(1300, 18, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(1301, 18, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(1302, 18, 'Mật khẩu mới', 'Mật khẩu mới'),
(1303, 18, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(1304, 18, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(1305, 18, 'Biến động số dư', 'Biến động số dư'),
(1306, 18, 'Hành động', 'Hành động'),
(1307, 18, 'Địa chỉ IP', 'Địa chỉ IP'),
(1308, 18, 'Thiết bị', 'Thiết bị'),
(1309, 18, 'Số tiền trước', 'Số tiền trước'),
(1310, 18, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(1311, 18, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(1312, 18, 'Nội dung', 'Nội dung'),
(1313, 18, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(1314, 18, 'Nhập số tiền cần nạp', 'ใส่จำนวนเงินที่จะฝาก'),
(1315, 18, 'Tạo hoá đơn', 'สร้างใบแจ้งหนี้'),
(1316, 18, 'Nhập số tiền bạn cần nạp vào hệ thống', 'ระบุจำนวนที่ต้องการฝากเข้าระบบ'),
(1317, 18, 'Hoá Đơn', 'ใบแจ้งหนี้'),
(1318, 18, 'Trạng thái', 'Trạng thái'),
(1319, 18, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(1320, 18, 'Huỷ bỏ', 'Huỷ bỏ'),
(1321, 18, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(1322, 18, 'Đã thanh toán', 'Đã thanh toán'),
(1323, 18, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(1324, 18, 'Vui lòng nhập số tiền cần nạp', 'กรุณากรอกจำนวนเงินที่จะฝาก'),
(1325, 18, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(1326, 18, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(1327, 18, 'Số tiền nạp tối thiểu là', 'จำนวนเงินฝากขั้นต่ำคือ'),
(1328, 18, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'คุณมีใบแจ้งหนี้ที่รอดำเนินการมากเกินไปสำหรับวันนั้น'),
(1329, 18, 'Tạo hoá đơn nạp tiền', 'สร้างใบแจ้งหนี้การเติมเงิน'),
(1330, 18, 'Tạo hoá đơn thành công', 'การสร้างใบแจ้งหนี้ที่ประสบความสำเร็จ'),
(1331, 18, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'การสร้างใบแจ้งหนี้ล้มเหลว โปรดลองอีกครั้ง'),
(1332, 18, 'Chi tiết hoá đơn', 'รายละเอียดใบแจ้งหนี้'),
(1333, 18, 'Tải Về', 'Tải Về'),
(1334, 18, 'Xoá', 'Xoá'),
(1335, 18, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(1336, 18, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(1337, 18, 'Đồng Ý', 'Đồng Ý'),
(1338, 18, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(1339, 18, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(1340, 18, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(1341, 18, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(1342, 18, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(1343, 18, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(1344, 18, 'Sao Chép', 'Sao Chép'),
(1345, 18, 'Quay Lại', 'Quay Lại'),
(1346, 18, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(1347, 18, 'Đánh giá ngay', 'Đánh giá ngay'),
(1348, 18, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(1349, 18, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(1350, 18, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(1351, 18, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(1352, 18, 'Xác Nhận', 'Xác Nhận'),
(1353, 18, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(1354, 18, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(1355, 18, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(1356, 18, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(1357, 18, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(1358, 18, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(1359, 18, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(1360, 18, 'Sản phẩm mới', 'Sản phẩm mới'),
(1361, 18, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(1362, 18, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(1363, 18, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(1364, 18, 'Tạo hoá đơn nạp tiền qua PayPal', 'สร้างใบแจ้งหนี้การเติมเงินผ่าน PayPal'),
(1365, 18, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(1366, 18, 'Giá', 'Giá'),
(1367, 18, 'MUA NGAY', 'MUA NGAY'),
(1368, 18, 'Đã bán', 'Đã bán'),
(1369, 18, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(1370, 18, 'Quốc gia', 'Quốc gia'),
(1371, 18, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(1372, 18, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(1373, 18, 'Tên sản phẩm', 'Tên sản phẩm'),
(1374, 18, 'Hiện có', 'Hiện có'),
(1375, 18, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(1376, 18, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(1377, 18, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(1378, 18, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(1379, 18, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(1380, 18, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(1381, 18, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(1382, 18, 'Số lượng cần mua', 'Số lượng cần mua'),
(1383, 18, 'Mã giảm giá', 'Mã giảm giá'),
(1384, 18, 'Đánh giá', 'Đánh giá'),
(1385, 18, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(1386, 18, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(1387, 18, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(1388, 18, 'FAQ', 'FAQ'),
(1389, 18, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(1390, 18, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(1391, 18, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(1392, 18, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(1393, 18, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(1394, 18, 'Tài Liệu API', 'Tài Liệu API'),
(1395, 18, 'Số Dư', 'Số Dư'),
(1396, 18, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(1397, 18, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(1398, 18, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(1399, 18, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(1400, 18, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(1401, 18, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(1402, 18, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(1403, 18, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(1404, 18, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(1405, 18, 'Tài khoản', 'Tài khoản'),
(1406, 18, 'Tài khoản:', 'Tài khoản:'),
(1407, 18, 'Số lượng mua:', 'Số lượng mua:'),
(1408, 18, 'Thông báo', 'Thông báo'),
(1409, 18, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(1410, 18, 'Nạp Thẻ', 'Nạp Thẻ'),
(1411, 18, 'Lưu Ý', 'Lưu Ý'),
(1412, 18, 'Lý do', 'Lý do'),
(1413, 18, 'Thực nhận', 'Thực nhận'),
(1414, 18, 'Nhà mạng', 'Nhà mạng'),
(1415, 18, 'Chính sách bảo mật', 'นโยบายความเป็นส่วนตัว'),
(1416, 18, 'Điều khoản sử dụng', 'ข้อกำหนดการใช้งาน'),
(1417, 18, 'Captcha không chính xác', 'Captcha không chính xác'),
(1418, 18, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1419, 18, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1420, 18, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1421, 18, 'Bật', 'Bật'),
(1422, 18, 'Tắt', 'Tắt'),
(1423, 18, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1424, 18, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1425, 18, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1426, 18, 'Mã Xác Minh', 'Mã Xác Minh'),
(1427, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1428, 18, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1429, 18, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1430, 18, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1431, 18, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1432, 18, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1433, 18, 'Xác minh 2FA', 'Xác minh 2FA'),
(1434, 18, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1435, 18, 'Xác Minh OTP', 'Xác Minh OTP'),
(1436, 18, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1437, 18, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1438, 18, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1439, 18, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1440, 18, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1441, 18, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1442, 18, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1443, 18, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1444, 18, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1445, 18, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1446, 18, 'Mở hộp quà', 'Mở hộp quà'),
(1447, 18, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1448, 18, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1449, 18, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1450, 18, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1451, 18, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1452, 18, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1453, 18, 'Phiên bản', 'Phiên bản'),
(1454, 18, 'Số tiền nạp', 'Số tiền nạp'),
(1455, 18, 'Lịch sử nạp PayPal', 'Lịch sử nạp PayPal'),
(1456, 18, 'Thành công', 'Thành công'),
(1457, 18, 'Cảm ơn bạn đã mua hàng', 'Cảm ơn bạn đã mua hàng'),
(1458, 18, 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây', 'Đơn hàng của bạn đã dược xử lý, bạn có thể xem thông tin tài khoản thông qua liên kết dưới đây'),
(1459, 18, 'Tổng thanh toán', 'Tổng thanh toán'),
(1460, 18, 'Xem chi tiết đơn hàng', 'Xem chi tiết đơn hàng'),
(1461, 18, 'Xem Ngay', 'Xem Ngay'),
(1462, 18, 'Tạo hoá đơn nạp tiền thành công', 'สร้างใบแจ้งหนี้การเติมเงินสำเร็จ'),
(1463, 18, 'Vòng quay may mắn', 'Vòng quay may mắn'),
(1464, 18, 'Đang chờ kết quả...', 'Đang chờ kết quả...'),
(1465, 18, 'Lịch Sử Quay Thưởng', 'Lịch Sử Quay Thưởng'),
(1466, 18, 'Số lượt quay hiện tại của bạn đã hết', 'Số lượt quay hiện tại của bạn đã hết'),
(1467, 18, 'Chúc mừng bạn đã quay được phần thường', 'Chúc mừng bạn đã quay được phần thường'),
(1468, 18, 'Chức năng này đang được bảo trì', 'Chức năng này đang được bảo trì'),
(1469, 18, 'Cách kiếm thêm lượt quay', 'Cách kiếm thêm lượt quay'),
(1470, 18, 'Thực Hiện', 'Thực Hiện'),
(1471, 18, 'Thanh Toán Bằng Perfect Money', 'Thanh Toán Bằng Perfect Money'),
(1472, 18, 'Khuôn Mặt Ngẫu Nhiên', 'Khuôn Mặt Ngẫu Nhiên'),
(1473, 18, 'Bạn chưa đăng nhập', 'Bạn chưa đăng nhập'),
(1474, 18, 'Mua', 'Mua'),
(1475, 18, 'với giá', 'với giá'),
(1476, 18, 'Giao Dịch Dần Đây Của Hệ Thống', 'Giao Dịch Dần Đây Của Hệ Thống'),
(1477, 18, 'giây trước', 'giây trước'),
(1478, 18, 'năm trước', 'năm trước'),
(1479, 18, 'tháng trước', 'tháng trước'),
(1480, 18, 'tuần trước', 'tuần trước'),
(1481, 18, 'ngày trước', 'ngày trước'),
(1482, 18, 'Hôm qua', 'Hôm qua'),
(1483, 18, 'tiếng trước', 'tiếng trước'),
(1484, 18, 'phút trước', 'phút trước'),
(1485, 18, 'Sao Chép Tất Cả', 'Sao Chép Tất Cả'),
(1486, 18, 'Bài viết nổi bật', 'Bài viết nổi bật'),
(1487, 18, 'Danh sách bài viết', 'Danh sách bài viết'),
(1488, 18, 'HẾT HÀNG', 'HẾT HÀNG'),
(1489, 18, 'MUA TÀI KHOẢN', 'ซื้อบัญชีผู้หญิง'),
(1490, 18, 'MUA TÀI LIỆU', 'ซื้อวัสดุ'),
(1491, 18, 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v', 'Cung cấp tài nguyên chạy ADS, Clone, Via, BM, Mail v.v'),
(1492, 18, 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v', 'Cung cấp tài liệu, TUT trong lĩnh vực marketing, mmo v.v'),
(1493, 18, 'XEM CỬA HÀNG', 'XEM CỬA HÀNG'),
(1494, 18, 'Danh sách TUT/Trick', 'Danh sách TUT/Trick'),
(1495, 18, 'Chuyên mục', 'Chuyên mục'),
(1496, 18, 'Ngày đăng', 'วันที่ส่ง'),
(1497, 18, 'Cập nhật', 'อัปเดต'),
(1498, 18, 'Bạn không được dùng chức năng này vì đây là trang web demo', 'คุณไม่สามารถใช้ฟังก์ชันนี้ได้เนื่องจากเป็นไซต์สาธิต'),
(1499, 18, 'Tổng nạp lớn hơn hoặc bằng', 'ค่าใช้จ่ายทั้งหมดมากกว่าหรือเท่ากับ'),
(1500, 18, 'Khuyến mãi thêm', 'โปรโมชั่นพิเศษ'),
(1501, 18, 'Số tiền nhận được', 'จำนวนเงินที่ได้รับ'),
(1502, 18, 'Ví', 'กระเป๋าสตางค์'),
(1503, 18, 'Giảm', 'ลด'),
(1504, 18, 'ĐƠN HÀNG GẦN ĐÂY', 'คำสั่งซื้อล่าสุด'),
(1505, 18, 'NẠP TIỀN GẦN ĐÂY', 'เงินฝากล่าสุด'),
(1506, 18, 'Gợi ý sản phẩm cho bạn', 'แนะนำสินค้าสำหรับคุณ');
INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(1507, 18, 'Bảng Xếp Hạng', 'ชาร์ต'),
(1508, 18, 'Bài Viết', 'Posts'),
(1509, 18, 'Công Cụ', 'เครื่องมือ'),
(1510, 18, 'Bảng Xếp Hạng Nạp Tiền', 'กระดานผู้นำเติมเงิน'),
(1511, 18, 'Xếp Hạng', 'เรตติ้ง'),
(1512, 18, 'Tổng Nạp', 'ยอดเงินฝาก'),
(1513, 18, 'Vị Trí', 'ที่ตั้ง'),
(1514, 18, 'Thành Viên', 'สมาชิก'),
(1515, 18, 'KHÁC', 'อื่นๆ'),
(1516, 8, 'THÔNG TIN CHI TIẾT', 'THÔNG TIN CHI TIẾT'),
(1517, 16, 'THÔNG TIN CHI TIẾT', 'DETAILS'),
(1518, 18, 'THÔNG TIN CHI TIẾT', 'รายละเอียด'),
(1519, 8, 'LINK GIỚI THIỆU CỦA BẠN', 'LINK GIỚI THIỆU CỦA BẠN'),
(1520, 16, 'LINK GIỚI THIỆU CỦA BẠN', 'YOUR INTRODUCTION LINK'),
(1521, 18, 'LINK GIỚI THIỆU CỦA BẠN', 'ลิงค์แนะนำของคุณ'),
(1522, 8, 'Tiếp Thị Liên Kết', 'Tiếp Thị Liên Kết'),
(1523, 16, 'Tiếp Thị Liên Kết', 'Affiliate Program'),
(1524, 18, 'Tiếp Thị Liên Kết', 'การตลาดพันธมิตร'),
(1525, 8, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1526, 18, 'TỔNG SỐ CLICK', 'TỔNG SỐ CLICK'),
(1527, 16, 'TỔNG SỐ CLICK', 'TOTAL CLICKS'),
(1528, 8, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1529, 18, 'ĐĂNG KÝ MỚI', 'ĐĂNG KÝ MỚI'),
(1530, 16, 'ĐĂNG KÝ MỚI', 'NEW SIGN UP'),
(1531, 8, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1532, 18, 'HOA HỒNG ĐÃ NHẬN', 'HOA HỒNG ĐÃ NHẬN'),
(1533, 16, 'HOA HỒNG ĐÃ NHẬN', 'COMMISSIONS RECEIVED'),
(1534, 8, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1535, 18, 'Mức hoa hồng:', 'Mức hoa hồng:'),
(1536, 16, 'Mức hoa hồng:', 'Commission level:'),
(1537, 8, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1538, 18, 'Số dư hoa hồng khả dụng:', 'Số dư hoa hồng khả dụng:'),
(1539, 16, 'Số dư hoa hồng khả dụng:', 'Available commission balance:'),
(1540, 8, 'TỔNG QUAN', 'TỔNG QUAN'),
(1541, 18, 'TỔNG QUAN', 'TỔNG QUAN'),
(1542, 16, 'TỔNG QUAN', 'OVERVIEW'),
(1543, 8, 'RÚT TIỀN', 'RÚT TIỀN'),
(1544, 18, 'RÚT TIỀN', 'RÚT TIỀN'),
(1545, 16, 'RÚT TIỀN', 'WITHDRAW'),
(1546, 8, 'LỊCH SỬ', 'LỊCH SỬ'),
(1547, 18, 'LỊCH SỬ', 'LỊCH SỬ'),
(1548, 16, 'LỊCH SỬ', 'HISTORY'),
(1549, 8, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.'),
(1550, 18, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'คัดลอกที่อยู่นี้และแชร์ให้เพื่อนของคุณ'),
(1551, 16, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share to your friends.'),
(1552, 8, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU'),
(1553, 18, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'รายชื่อเพื่อนที่คุณแนะนำ'),
(1554, 16, 'DANH SÁCH BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'LIST OF FRIENDS RECOMMENDED BY YOU'),
(1555, 8, 'TẠO YÊU CẦU RÚT TIỀN', 'TẠO YÊU CẦU RÚT TIỀN'),
(1556, 18, 'TẠO YÊU CẦU RÚT TIỀN', 'สร้างคำขอถอนเงิน'),
(1557, 16, 'TẠO YÊU CẦU RÚT TIỀN', 'CREATE WITHDRAWAL REQUEST'),
(1558, 8, 'LỊCH SỬ HOA HỒNG', 'LỊCH SỬ HOA HỒNG'),
(1559, 18, 'LỊCH SỬ HOA HỒNG', 'ประวัติดอกกุหลาบ'),
(1560, 16, 'LỊCH SỬ HOA HỒNG', 'HISTORY OF COMMISSION'),
(1561, 8, 'Ngân hàng:', 'Ngân hàng:'),
(1562, 18, 'Ngân hàng:', 'ธนาคาร:'),
(1563, 16, 'Ngân hàng:', 'Bank:'),
(1564, 8, 'Số tài khoản:', 'Số tài khoản:'),
(1565, 18, 'Số tài khoản:', 'หมายเลขบัญชี:'),
(1566, 16, 'Số tài khoản:', 'Account number:'),
(1567, 8, 'Chủ tài khoản:', 'Chủ tài khoản:'),
(1568, 18, 'Chủ tài khoản:', 'ผู้ถือบัญชี:'),
(1569, 16, 'Chủ tài khoản:', 'Account holder:'),
(1570, 8, 'Số tiền cần rút:', 'Số tiền cần rút:'),
(1571, 18, 'Số tiền cần rút:', 'จำนวนเงินที่จะถอน:'),
(1572, 16, 'Số tiền cần rút:', 'Amount to withdraw:'),
(1573, 8, 'DANH SÁCH ĐƠN RÚT TIỀN', 'DANH SÁCH ĐƠN RÚT TIỀN'),
(1574, 18, 'DANH SÁCH ĐƠN RÚT TIỀN', 'รายชื่อใบสมัครถอนเงิน'),
(1575, 16, 'DANH SÁCH ĐƠN RÚT TIỀN', 'LIST OF WITHDRAWAL APPLICATIONS'),
(1576, 16, 'Số dư API không đủ, vui lòng liên hệ admin', 'Số dư API không đủ, vui lòng liên hệ admin'),
(1577, 18, 'Số dư API không đủ, vui lòng liên hệ admin', 'การทำธุรกรรมล้มเหลว โปรดติดต่อผู้ดูแลระบบ'),
(1578, 8, 'Số dư API không đủ, vui lòng liên hệ admin', 'Giao dịch thất bại, vui lòng liên hệ Admin'),
(1582, 16, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1583, 18, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1584, 8, 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Internet Banking &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1585, 8, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1586, 18, 'Quét mã QR để thanh toán', 'Quét mã QR để thanh toán'),
(1587, 16, 'Quét mã QR để thanh toán', 'Scan QR code to pay'),
(1588, 8, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1589, 18, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Vui lòng nhập đúng nội dung chuyển tiền'),
(1590, 16, 'Vui lòng nhập đúng nội dung chuyển tiền', 'Please enter the correct remittance information'),
(1591, 8, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1592, 18, 'Nội dung chuyển tiền', 'Nội dung chuyển tiền'),
(1593, 16, 'Nội dung chuyển tiền', 'Money transfer content'),
(1594, 8, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1595, 18, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1596, 16, 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App Zalo Pay &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1597, 8, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1598, 18, 'Số tiền cần chuyển là', 'Số tiền cần chuyển là'),
(1599, 16, 'Số tiền cần chuyển là', 'Amount to transfer is'),
(1600, 8, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1601, 18, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công'),
(1602, 16, 'Hệ thống tự động xử lý giao dịch khi thực hiện chuyển tiền thành công', 'The system automatically processes the transaction when the money transfer is successful'),
(1603, 8, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1604, 18, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.'),
(1605, 16, 'Vui lòng thanh toán vào thông tin tài khoản trên để hệ thống xử lý hoá đơn tự động.', 'Please pay to the above account information for the system to process the invoice automatically.'),
(1606, 8, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1607, 18, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã'),
(1608, 16, 'Sử dụng &lt;b&gt; App MoMo &lt;/b&gt; hoặc ứng dụng camera hỗ trợ QR code để quét mã', 'Use &lt;b&gt;MoMo App&lt;/b&gt; or a camera app that supports QR code to scan the code'),
(1609, 8, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1610, 18, 'Số tiền cần thanh toán', 'Số tiền cần thanh toán'),
(1611, 16, 'Số tiền cần thanh toán', 'Amount to be paid'),
(1612, 8, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1613, 18, 'Nội dung chuyển khoản', 'Nội dung chuyển khoản'),
(1614, 16, 'Nội dung chuyển khoản', 'Transfer Contents'),
(1615, 8, 'Chủ tài khoản', 'Chủ tài khoản'),
(1616, 18, 'Chủ tài khoản', 'Chủ tài khoản'),
(1617, 16, 'Chủ tài khoản', 'Account holder'),
(1618, 8, 'Số tài khoản', 'Số tài khoản'),
(1619, 18, 'Số tài khoản', 'Số tài khoản'),
(1620, 16, 'Số tài khoản', 'Account number'),
(1621, 8, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1622, 18, 'Thanh toán hoá đơn', 'Thanh toán hoá đơn'),
(1623, 16, 'Thanh toán hoá đơn', 'Payment bills'),
(1624, 8, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1625, 18, 'LƯỢT QUAY CÒN LẠI:', 'LƯỢT QUAY CÒN LẠI:'),
(1627, 8, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1628, 18, 'LƯỢT QUAY CÒN LẠI', 'LƯỢT QUAY CÒN LẠI'),
(1629, 16, 'LƯỢT QUAY CÒN LẠI', 'SPIN'),
(1630, 8, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1631, 18, 'KIẾM LƯỢT QUAY', 'KIẾM LƯỢT QUAY'),
(1632, 16, 'KIẾM LƯỢT QUAY', 'EARNING SPIN'),
(1633, 8, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1634, 18, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng'),
(1635, 16, 'Thanh toán 1 đơn hàng có giá lớn hơn hoặc bằng', 'Pay for an order with a price greater than or equal to'),
(1636, 8, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1637, 18, 'sẽ nhận được thêm 1 lượt quay.', 'sẽ nhận được thêm 1 lượt quay.'),
(1638, 16, 'sẽ nhận được thêm 1 lượt quay.', 'will get 1 extra spin.'),
(1639, 8, 'QUAY NGAY', 'QUAY NGAY'),
(1640, 18, 'QUAY NGAY', 'QUAY NGAY'),
(1641, 16, 'QUAY NGAY', 'START'),
(1642, 8, 'Thất bại', 'Thất bại'),
(1643, 18, 'Thất bại', 'Thất bại'),
(1644, 16, 'Thất bại', 'Error'),
(1645, 8, 'Cảnh báo', 'Cảnh báo'),
(1646, 18, 'Cảnh báo', 'Cảnh báo'),
(1647, 16, 'Cảnh báo', 'Warning'),
(1648, 8, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1649, 18, 'Chọn ngân hàng cần rút', 'Chọn ngân hàng cần rút'),
(1650, 16, 'Chọn ngân hàng cần rút', 'Select the bank to withdraw'),
(1651, 8, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1652, 18, 'Nhập số tài khoản cần rút', 'Nhập số tài khoản cần rút'),
(1653, 16, 'Nhập số tài khoản cần rút', 'Enter the account number to withdraw'),
(1654, 8, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1655, 18, 'Nhập tên chủ tài khoản', 'Nhập tên chủ tài khoản'),
(1656, 16, 'Nhập tên chủ tài khoản', 'Enter the account holder\\\'s name'),
(1657, 8, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1658, 18, 'Nhập số dư hoa hồng cần rút', 'Nhập số dư hoa hồng cần rút'),
(1659, 16, 'Nhập số dư hoa hồng cần rút', 'Enter the commission balance to withdraw'),
(1660, 8, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1661, 18, 'Vui lòng chọn ngân hàng cần rút', 'Vui lòng chọn ngân hàng cần rút'),
(1662, 16, 'Vui lòng chọn ngân hàng cần rút', 'Please select the bank to withdraw'),
(1663, 8, 'RÚT NGAY', 'RÚT NGAY'),
(1664, 18, 'RÚT NGAY', 'RÚT NGAY'),
(1665, 16, 'RÚT NGAY', 'WITHDRAW NOW'),
(1666, 8, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1667, 18, 'Vui lòng nhập số tài khoản cần rút', 'Vui lòng nhập số tài khoản cần rút'),
(1668, 16, 'Vui lòng nhập số tài khoản cần rút', 'Please enter the account number to withdraw'),
(1669, 8, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1670, 18, 'Vui lòng nhập tên chủ tài khoản', 'Vui lòng nhập tên chủ tài khoản'),
(1671, 16, 'Vui lòng nhập tên chủ tài khoản', 'Please enter the account holder\\\'s name'),
(1672, 8, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1673, 18, 'Vui lòng nhập số tiền cần rút', 'Vui lòng nhập số tiền cần rút'),
(1674, 16, 'Vui lòng nhập số tiền cần rút', 'Please enter the amount to withdraw'),
(1675, 8, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1676, 18, 'NẠP TIỀN QUA CRYPTO', 'NẠP TIỀN QUA CRYPTO'),
(1677, 16, 'NẠP TIỀN QUA CRYPTO', 'CRYPTO PAYMENT'),
(1678, 8, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1679, 18, 'LỊCH SỬ NẠP CRYPTO', 'LỊCH SỬ NẠP CRYPTO'),
(1680, 16, 'LỊCH SỬ NẠP CRYPTO', 'CRYPTO HISTORY'),
(1681, 8, 'Nhập số tiền:', 'Nhập số tiền:'),
(1682, 18, 'Nhập số tiền:', 'Nhập số tiền:'),
(1683, 16, 'Nhập số tiền:', 'Enter amount:'),
(1684, 8, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1685, 18, 'Nhập số tiền: (USD)', 'Nhập số tiền: (USD)'),
(1686, 16, 'Nhập số tiền: (USD)', 'Enter amount: (USD)'),
(1687, 8, 'thực hiện nạp', 'thực hiện nạp'),
(1688, 18, 'thực hiện nạp', 'thực hiện nạp'),
(1689, 16, 'thực hiện nạp', 'recharge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `ctv` int(11) NOT NULL DEFAULT 0,
  `banned` int(11) NOT NULL DEFAULT 0,
  `login_attempts` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(55) DEFAULT NULL,
  `otp_limit` int(11) NOT NULL DEFAULT 0,
  `otp_token` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int(11) DEFAULT 0,
  `time_request` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `money` float NOT NULL DEFAULT 0,
  `total_money` float NOT NULL DEFAULT 0,
  `rankings` int(11) NOT NULL DEFAULT 0,
  `icon_ranking` text DEFAULT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'Male',
  `device` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status_2fa` int(11) NOT NULL DEFAULT 0,
  `SecretKey_2fa` varchar(255) DEFAULT NULL,
  `token_2fa` text DEFAULT NULL,
  `limit_2fa` int(11) NOT NULL DEFAULT 0,
  `chietkhau` float NOT NULL DEFAULT 0,
  `spin` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `ref_click` int(11) NOT NULL DEFAULT 0,
  `ref_money` float NOT NULL DEFAULT 0,
  `ref_total_money` float NOT NULL DEFAULT 0,
  `ref_amount` float NOT NULL DEFAULT 0,
  `ref_ck` float NOT NULL DEFAULT 0,
  `change_password` int(11) NOT NULL DEFAULT 0,
  `token_forgot_password` varchar(255) DEFAULT NULL,
  `time_forgot_password` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `otp`, `otp_limit`, `otp_token`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `token_2fa`, `limit_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(1, 'admin', '0feaaeb4c4ad98e45b40f1a525c31634', 'tranmaigiabao00000@gmail.com', 'Bảo', '0862418816', 1, 0, 0, 5, NULL, 0, NULL, 0, '2024-11-04 11:07:13', '2025-01-01 22:37:27', 1735745865, 1735745811, '14.227.191.2', 'b678f4c3bef647370209c28e41156f89', 13150900, 111000, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '2BEEIBBVVKAWVQDM', NULL, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, '', 1735745737),
(6, 'ctv', '04890c1da2522cb5755a27f7f0ce02b2', 'ctv@gmail.com', NULL, NULL, 0, 1, 0, 1, NULL, 0, NULL, 0, '2024-11-06 16:36:59', '2024-12-28 20:57:04', 1735394213, 1735394213, '2001:ee0:558a:a9d0:d17f:6ea5:b5dd:80c4', 'dc39ca0fbf879844ae77172a16c33fabff15b1516b676481b9da1bc3781498a1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TLX3BTKNQHLTZR3Q', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(7, 'PhatSkyVPN', 'de1c9e84e98b8d16f2487cd8ff50c6b5', 'Teemoha427@gmail.com', 'Hà Trọng Phát', '0329709603', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-06 16:37:54', '2025-01-01 09:30:55', 1735458633, 1735652011, '2001:ee0:52df:f5d0:7d08:2fdb:623b:2cfb', '161c9870b8e2473cc940dab40a4f0c176d8e9a45f3c61b1a2bf97757937edd43', 3344, 0, 2, '<i class=\"fas fa-long-arrow-alt-up text-success\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XZELUQRA67EJXJ2U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(8, 'Phattt', 'de1c9e84e98b8d16f2487cd8ff50c6b5', 'Trongphat41@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-06 18:28:05', '2024-12-02 12:00:23', 1733112000, 1733115199, '14.191.62.238', 'b1c53c3477dfcec2e2239939619e6b2e', 0, 0, 3, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'M6G2ALWADTE2KE53', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(9, 'Nguyen0990', '2b609ceae0ff7894bedc16c4db77eecb', 'thanhimainguyenthi1977@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-06 18:48:15', '2024-12-02 19:34:30', 1730893695, 1733139249, '118.69.104.40', 'f05d48a6a95892716fde70f0e0328d79', 400, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0.1 Mobile/15E148 Safari/604.1', NULL, 0, 'MCBVG5PYHTZCUY53', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(10, 'hello', 'e10adc3949ba59abbe56e057f20f883e', 'asd@sex.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-06 19:48:36', '2024-11-06 20:16:47', 1730897316, 0, '116.108.127.156', '80297cf00f6e3490d0a5ca35ebaa8737', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'ZIW4RSDB4U7VD6XA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(11, 'Rincac', 'c4ca4238a0b923820dcc509a6f75849b', 'hshshsnxjnxjskk@_fkdjsnm', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-07 15:29:43', '2024-11-07 22:37:07', 1730968183, 0, '171.243.58.11', '2eee1823d82dbdb6d5b2095423d0c3fb', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', NULL, 0, 'O3UL6VUVSGM7OF2U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(12, 'Thiennhan123', '0f13a8d89f65b206a911faac25d2e792', 'nhanthienpham1144@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-09 11:20:43', '2024-11-15 11:51:49', 1731126043, 1731126103, '116.99.230.204', '8e3f9a3e5a502c49ef15685fea04b412', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', NULL, 0, 'TGIKNLPKGB25U32L', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(13, 'hoangphuc245', 'b79bfc3c1902efbf93ff535ced61c4db', 'silienpv14@gmail.com', NULL, '', 0, 0, 1, 0, NULL, 0, NULL, 0, '2024-11-13 21:36:03', '2024-12-28 13:36:18', 1734148362, 1735280363, '116.106.132.43', '8d1fa74506bb6bb8666d8042eb37fd6c', 0, 0, 8, '<i class=\"fas fa-long-arrow-alt-up text-success\"></i>', 'Male', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'ROEMQYPTER634SFE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(14, 'Grayyy_Pro', '5891d3015522227b3819f5b09466247c', 'anhgray2k9@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-15 21:37:21', '2024-11-18 14:42:10', 1731817429, 1731818875, '42.116.76.155', '1c127849e0a89d297fb6ab767ebeb155', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 11; CPH1987 Build/RP1A.200720.011;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 Zalo android/12100753 ZaloTheme/light ZaloLanguage/vi', NULL, 0, 'Y3J5CPCCKQQZZIBL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(15, 'Phan Thiên Hạo', 'fbc81d147422460ce76a685b4adfce36', 'thienhao200524@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-15 22:54:08', '2024-11-15 22:59:06', 1731686048, 1731686216, '14.191.191.222', 'a927dae7f4d92693bf4e7d92a254cd3b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; 23129RAA4G Build/UKQ1.231207.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.99 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/489.0.0.66.81;IABMV/1;]', NULL, 0, 'A4VRCEP3P7C223PI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(16, 'Netrit', '5072d348b267983ddc0786d821c3fe32', 'Nguyenhuychidai@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 08:21:29', '2024-11-17 09:53:16', 1731720089, 1731720134, '123.22.39.92', 'ef87d55cca99a1f989176e399ecde9c5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XPDGALEHSIV3HMIW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(17, 'Hicunhe', 'e10adc3949ba59abbe56e057f20f883e', 'Hicunhe@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 09:31:55', '2024-11-16 09:33:11', 1731724315, 1731724375, '14.191.212.230', '959afd83bdc17f89e3cd9f1e7be18b58', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; SM-X510 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.46 Safari/537.36 [FB_IAB/FB4A;FBAV/490.0.0.63.82;IABMV/1;]', NULL, 0, '4HIZC2FWSNRBYERG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(18, 'Xuandoanh1509', 'dcb4dda4f38f6d4f0921a2a0ab39b37d', 'ngoc2003@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 11:13:41', '2024-11-16 11:49:21', 1731730421, 1731732545, '117.5.153.194', '24a55981dcc639548c125b4ad7b84215', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '63745THB67HGUY7H', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(19, 'Thìn', '052b92f13b8ccd7e3fb2211613dcce15', 'duongthin1804@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 11:31:28', '2024-11-19 20:01:19', 1731746466, 1731753013, '27.71.98.69', '466debc8cf363ab15de308143acdb066', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '5TSJCKNDGEFVW4P7', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(20, 'Vuongokok', '7c4580578c8f8746af9e910886876568', 'nguyenbavuongok123@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 11:59:41', '2024-12-05 18:30:22', 1731933775, 1731933775, '14.180.22.74', '5a5b94d3ce54be0149b9954e51920853', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'KE3XAC2Z7NYVOQKU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(21, 'Lekmm', '25ab9965d1597400c768b15ec46d240e', 'ke92882@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 12:13:34', '2024-11-16 12:14:30', 1731734014, 1731734050, '14.191.203.196', '030b83b62672a5f7b2681309b541e6b1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 11; SM-A205F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.99 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/489.0.0.66.81;IABMV/1;]', NULL, 0, 'FL2UFE4G2PFIO2XT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(22, 'Nakroth', '90221761981184675301bda5127b8823', 'khanhnampham2013@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 12:24:32', '2024-12-26 11:55:29', 1732684237, 1732684237, '222.254.55.166', 'ea7b008abee7cb7b245c4564665bac10', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'BUYVF2DXAQFBIB73', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(23, 'khangtuan', 'ebcfae37e021969dad1579b821699029', 'kevintrandeptraivaio@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 13:07:56', '2024-11-16 13:08:58', 1731737276, 1731737330, '113.161.47.146', '2a90c16345ed763c345a7f81c25a52a4', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'AF4MZ3B5GHOYEOKK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(24, 'legiahuy121', 'b8dc042d8cf7deefb0ec6a264c930b02', 'aecugia@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 15:30:48', '2024-12-16 13:53:39', 1731745848, 1732452613, '171.232.247.229', '7f6a76b35a13c025408be638944b4ccc', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', NULL, 0, 'F4NWQXMZ3CNZOTQI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(25, 'BAOHO135', '179aa964cb6cb3ea59995fa7e7b9a1eb', 'Hobao8824@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 20:41:08', '2025-01-01 13:57:27', 1735396760, 1735546206, '2001:ee0:564b:1a90:cff:247a:2e79:7c3d', '1decda6e0079f6c2f1a94b24dab623442937b3ae79568066784942c517e2604b', 234, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'VOSGI5WAIPOOSFCN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(26, 'mvogdtidx417', 'c39e2024ef5db5d740027aee5250440b', 'khangnek705@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 21:18:44', '2024-11-16 21:27:05', 1731766724, 1731767217, '171.234.9.225', 'cb5584713b844ace6f6e2ced683e976b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'SXLQ5WLZ3VRCXRZF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(27, 'hoacantai', 'ca1082c15a7a458ae57723168282f110', 'azhack590@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 21:19:57', '2024-11-16 21:21:06', 1731766797, 1731766829, '115.76.49.139', '53fcdd840d8958dfca880bcb1beef34c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'TBEN4ZDOWIFSQZSD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(28, 'Theanhday1', '833fa1b18bd2155e450adcc5df589710', 'theanhday07@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 21:20:14', '2024-12-19 13:03:15', 1732027314, 1732027490, '113.186.45.48', '5f8ddd18b033bf6d87bce0c2e2a6d1e0', 2000, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', NULL, 0, 'ORWZAATAXZXRGTEQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'b703fa3764de109fe6cf8c1381986df8', 1732026614),
(29, '...nice', 'ebaf4782a4ca0c08ca85c6a4b5785c16', 'gg@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-16 22:51:10', '2024-12-05 21:24:08', 1733408647, 1733408647, '14.167.22.29', '8d57bd70df578ab87c7a91c98b1c7171', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 8.1.0; SM-A260G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', NULL, 0, 'NNCZZND6AZGOYZTE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(30, 'STBA', '83538a56fd473aa6ab20ac5c2718aa95', 'truongtranchitai2021@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-17 13:43:10', '2024-12-29 21:05:31', 1735458050, 1735481005, '171.250.166.170', 'b8078314aea70a18b8c83920181fd225efe0f1c16cb2e341809702fc0b652d75', 11300, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'YJB5PMU7P2J7VC4E', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(31, 'Vietthang', '18fed4bbc13010d2492e3e7f22c379e2', 'vietthang8ghotungmau@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-17 16:54:10', '2024-11-17 16:54:56', 1731837250, 1731837264, '113.165.149.113', 'e8dfe89229f1d635781d601c292d9021', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 9; CPH2015 Build/PPR1.180610.011;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.102 Mobile Safari/537.36 Zalo android/12100763 ZaloTheme/light ZaloLanguage/vi', NULL, 0, '62J4GQ6IXXXFQGJK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(32, 'giapngoctien', '635f9baf8b3eba2e575c3f58e564c0c7', 'giapngoctien1704@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-17 19:55:09', '2025-01-01 19:53:53', 1734480123, 1734480123, '125.234.230.158', '52fe7b6fcafdcef93d35c2e6b1aad950', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'VD6H5WJX2LOJPO66', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(33, 'lscphuong', '33ef70cb3648d61a10e1131e4c0055c5', 'layschipphuong@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-18 12:18:33', '2024-11-19 08:31:05', 1731907619, 1731933886, '171.239.196.181', 'cf53cc55e3eca151ed6584e3500d3ab5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GUAC43MROXUNNQZL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(34, 'kunsadboiz', 'f477ed074cc70543dadb01bcf77b089c', 'buihoangductien22@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-18 12:28:37', '2024-11-18 17:41:54', 1731907717, 1731907751, '14.242.181.131', 'c7bbde145842b531b4bb7788ed947c3f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'DJTIYMJCAIJ2LBB3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(35, 'Zishu1997', 'd1336b433639ff059ff4705e868db16e', 'lebakien058@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-18 18:13:58', '2024-12-31 21:00:34', 1735653394, 1735653624, '113.23.108.54', '54671a1d4ea9c11c977866644f83e07b193e2d6489b849096c0fa3e2e4691880', 0, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'LDZ73GRLTCBGJ65M', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(36, 'tuan0506', '6909c951f66e6d89c18c16036ed8a4f2', 'hongtuan213@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-19 00:05:38', '2024-12-31 12:38:43', 1733675962, 1735623459, '116.110.58.253', '18be1b78fc0890e11c1e833247965e1d', 17, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'N35QQZNLS3F7H3KM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(37, 'Hdbd', '952e45167e8dbd1dd0c09b8275fb3393', 'thuongphuoc1234599@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-20 12:39:34', '2024-11-20 12:40:34', 1732081174, 1732081218, '14.191.206.174', '82fbcf9a138cffa6a1272fd955f9a560', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36', NULL, 0, 'TSVEH7AJ5UOXIQKI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(38, 'tuan cánh tay trái', 'f2f01f036fa85de470a50ebd3a9fe5a7', 'tuanpro05062010@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-20 23:13:32', '2024-12-08 23:38:50', 1733657128, 1733657128, '116.110.58.253', 'c5d66c22a618fec62f37d5d8cc98faa2', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'W5VLEZRHHOGY3PVU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(39, 'Namnek', 'ca4d661a51361a24983eb225ab779478', 'pnam38949@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-20 23:22:52', '2024-12-08 09:16:52', 1732119772, 1732120155, '42.113.61.101', '4c0b4d3da4066c0b85c226787fa8c270', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'CYSIYIEO4XUR46I5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(40, 'hackiemjuru', '11c2835ad92eae64238b1cf011ddcc44', 'hfudhuhfd@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-24 17:57:38', '2024-11-24 17:57:38', 1732445858, 1732446060, '117.2.208.37', '8cb248432dc48186ac80bee7690635be', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', NULL, 0, '24E7VRDAVU2EVLMM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(41, 'Phong vũdcm', '8a5f502307550d2456170fa11de6df18', 'htham6280@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-26 12:16:58', '2024-11-26 12:46:14', 1732598218, 1732598251, '171.236.59.117', 'fb72465c9fb9cbb1a2a41050c121f69e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'JADL7LWGVM5PGVCU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(42, 'ducpro1906', '65cf0b9314b3a16307f38273f59dee13', 'ducas1906@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-27 21:22:50', '2024-12-18 22:22:12', 1732717370, 1733633077, '171.225.201.0', '2b88b6e54690c7b741b1fc331e818c70', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', NULL, 0, '3SELKCIJBTVORHRG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(43, 'Quangduc', '6b41ced260eeb6c9158d14a713162c64', 'dduy3585@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-28 10:20:10', '2024-12-07 12:07:56', 1733181464, 1733205043, '116.105.124.61', 'c71c51d43112a76fb2aa81d645c21a86', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'UHGVC5VILZQBX3U3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(44, 'huyletran', '48ec4fe85ac1341740ba77f149543e36', 'phuonghoangluamarcogaming@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-28 10:42:36', '2025-01-01 19:39:06', 1735656245, 1735717277, '171.231.147.30', '8365a3dc6b920883b16852d854d240a3849a017ce0ad256b1071f34b71b52e2c', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '5PEAIXBIHMIKZUBE', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(45, 'jamess0381', '7da47cb7c3f6821ec2cd0282851f8814', 'aaaaaaa@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-28 12:27:19', '2025-01-01 13:39:05', 1735553134, 1735553308, '113.23.105.46', '9a98402f356ed55c063bd63404af284cef3d50ab28a278131a9380bad4ecf1ab', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'LSHKPZTH3V2SNYT7', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(46, 'khoinob1000', '64b3126e938726475197e8855ccb16dc', 'fhv85792@nezid.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-28 16:06:53', '2024-11-28 16:08:30', 1732784813, 0, '171.234.15.66', 'dbc83aaa9b05d15f2fa9de3187ccd56a', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', NULL, 0, 'LYRTHAJJI6O6VOYI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(47, 'kaka', 'f3f7495e5a11d84fcfed536774ff90f7', 'lk6883964@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-28 21:17:30', '2024-11-28 22:00:41', 1732803450, 0, '171.241.0.22', '01efdb5a0b6c60229660d251c41ea5dd', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/485.1.0.45.110;FBBV/665337277;FBDV/iPhone8,1;FBMD/iPhone;FBSN/iOS;FBSV/15.7.8;FBSS/2;FBCR/;FBID/phone;FBLC/vi_VN;FBOP/80]', NULL, 0, 'R7LN2YQKLJZGRD4W', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(48, 'hung123', '2134e68763cee83ef94af629ce11c4c8', 'hongn5347@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 15:19:52', '2024-12-25 12:14:18', 1733144564, 1735017500, '1.53.56.173', 'fdab62286268456da20eb1b57f4c9fc4', 250, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0 (Edition std-2)', NULL, 0, '4N27NGLK2PLL6NDG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(49, 'td442-0011', '67a64d7b30431c13b729d94d8958ad59', 'antihuyendenchet2102@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 16:54:23', '2024-12-02 05:13:24', 1733091198, 1733091198, '14.179.85.198', '87ef86b28743df8120f6eda7e7942397', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', NULL, 0, 'VSHOGRHHQVPCVAJR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(50, 'anbatocomhaha', '291206cd8428d62f3a92b3376653a379', 'luxpro1117@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 16:58:49', '2024-12-26 06:21:57', 1732874329, 1734016740, '125.212.158.78', 'e1245a622d779eb88541450be36f4ace', 0, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'ZRJDOSND6XG3IJ6S', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(51, 'txbino', '4297f44b13955235245b2497399d7a93', 'longdeptraigialai@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 18:16:18', '2024-12-29 10:52:05', 1735444325, 1735444325, '171.235.242.23', '821baf6e94fad52534fe15a0df51a65a700e8ac725dd6054486081ed67e9c2f4', 380, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'P4SUYRDGVXVDV7IP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(52, 'mmm111', '2134e68763cee83ef94af629ce11c4c8', 'hn931615@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 18:21:11', '2024-11-29 18:21:31', 1732879271, 1732879285, '1.53.56.173', 'ada033f92eb871c9db58ba552a1447e4', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0 (Edition std-2)', NULL, 0, '3CJXV2GVEXWW25YN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(53, 'Đức Lợi', '647b8172aef5b7a35608ee8ba98b4832', 'ducloiabui@gmail.com', NULL, NULL, 0, 0, 0, 1, NULL, 0, NULL, 0, '2024-11-29 18:37:37', '2024-12-01 21:40:05', 1732880257, 1732880363, '125.235.237.178', '877028b3fc3cd8c945b69e0d1079755e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '4KT6DRQ4D6MKTKHM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(54, 'ft_khangg&lt;3', '0c39bf2e57f25915977c75c842a3f7c9', 'khanggialedong12@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 19:51:09', '2024-12-20 17:59:26', 1734692350, 1734692350, '2001:ee0:566b:f5a0:981c:8801:a79:a014', '561b44ff6f74f63c65331e30104a1211', 460, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', NULL, 0, '7PXGNKHLMYYKQM4I', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(55, 'NGUYENVANTRONG', '592be3e457ad5e4a5e38ebf2518b59cc', 'NVANTRONG008@GMAIL.COM', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 20:09:59', '2024-11-29 20:15:11', 1732885799, 1732886105, '14.179.176.115', 'd6970236880f3c38f064baf89dad22f6', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'S7FUDAG4OYQXJSQ4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(56, 'Vienlam210', '73ce77ac35c7c0cacc8e79c5cdc5269b', 'vienlam210@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 20:50:22', '2024-12-28 20:07:29', 1735391220, 1735391220, '171.225.192.54', '4baa8add4a61057a921a4d75a663719ba415da8bdace289f6f9e6251202d1041', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'ZS2UGXMERGMTJHI6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(57, 'leductrong', 'db832c4cff25f5d6102beea237a4d15d', 'leductrong162011@gmail.com', NULL, '', 0, 1, 0, 0, NULL, 0, NULL, 0, '2024-11-29 21:23:09', '2024-12-30 08:28:28', 1735452836, 1733837379, '14.236.176.163', '02c6ae90ee7378cd99b951df883aef63', 300, 0, 8, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LRINKCXMI5RG3ZUQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(58, 'Bbdyfg', '704d20f345e364707bf232b6dd92021c', 'phandai4500@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 23:03:38', '2024-11-29 23:10:33', 1732896218, 1732896496, '113.23.6.141', 'aeb33fc4a6e66d72590ae61dff5290be', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', NULL, 0, '6HL4TZ7FR64QCWWI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(59, 'Dat2007890', '39f9ab40890b8b0475718622245ea3f3', 'datphan2007890@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-29 23:11:47', '2024-12-10 10:42:23', 1732896707, 1733160860, '104.28.210.154', 'cebdd8bc9d470a46569573beecc5dd1e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '6W3IQUENP4UVN5FC', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(60, 'Nguyễn bắc', 'c1a46baf9fc307c8f91ca378a558e563', 'gioibac93@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 05:52:02', '2024-12-02 21:15:21', 1732920722, 1732920739, '117.5.146.108', '78adfbaf0791bc1cc6a7e33cfc6848d7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'BSX3654LNNYSDGUM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(61, 'Hahahaha', 'b73e7dad40d9af892e10ee27009500fb', 'nguyenthidai.locquang@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 09:40:29', '2024-11-30 09:42:15', 1732934429, 1732934497, '116.98.1.149', '026e4818d6c6d16993cf048c3a88643c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 11; RMX3263 Build/RP1A.201005.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, 'CHLFV3NONTRTOIG4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(62, 'Bùi Anh', '25f9e794323b453885f5181f1b624d0b', 'buidungkolove2341@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 10:12:06', '2024-11-30 10:13:18', 1732936326, 0, '14.236.31.208', '9b5f5286b2fcfc8ffe4c91e2c720640e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; RMX1919 Build/QKQ1.200209.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, 'GRPUGUE2WJWB4723', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(63, 'RAITOBUH', 'd8aaef6b790c8089fdd2f04108d3608f', 'Nguyengiabao11122007@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 10:57:06', '2024-12-28 21:38:27', 1735396699, 1735396699, '2001:ee0:564b:1a90:cff:247a:2e79:7c3d', '53d243fdc66bb2b674dc9fa7f18a68e911a8e7d1b1e55863e4f5eee1e22d9495', 0, 0, 9, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'COKH52I7C2L4QBOE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(64, 'Vigghsh', '6d9573b8494223ea50d7e15075d45a0c', 'vshsu827@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 11:47:34', '2024-12-23 15:50:47', 1732942054, 1734943841, '113.23.28.176', 'd6459231d2b3bac50ecadf23adb774ef', 7200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'CCRI57QQGRL3UE3U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(65, 'Lehoanphuc', 'fe61a9513810f65102fd1f0e2f0b41ba', 'tamlinhphuc27111996@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 12:29:05', '2024-12-19 16:02:17', 1732944545, 1732944586, '113.188.49.201', '811cc8bcae4265b5c1a981b35b3c72a8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'YTXFNYTIGVW6HHLH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(66, 'qhuy2007', '89471d8acebfa97d58519b4e7b34d28e', '0343987208huy@gmail.com', NULL, '', 0, 1, 0, 0, NULL, 0, NULL, 0, '2024-11-30 12:58:44', '2025-01-01 16:40:35', 1735730637, 1734342427, '2405:4802:a5fc:4980:8418:6a4a:ef7c:415', 'd8a40c317e88b2d01b7de848aca6b0e0', 170980, 0, 3, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GJ5VOOVUZLMEZ5SM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(67, 'Tranninhdz', '389270af9cf11cc22757aa6ee19b61cc', 'tranninh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 15:03:57', '2024-12-01 13:15:08', 1732953837, 0, '125.235.227.4', 'bb2285207a304bde36059311c4cbd1c7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', NULL, 0, 'QTK7CX5ZKMR42YTH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(68, 'Aaa', 'b4e1c6620073acda217d807627a78dae', 'aaa@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 15:08:28', '2024-12-04 19:23:15', 1732954108, 0, '14.168.175.11', '1e91115f3618561c826529d1a8219a7c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'NB47UV7ZHU4WAR4P', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(69, 'alaqhuy', '89471d8acebfa97d58519b4e7b34d28e', 'burhburhlmao5@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 15:19:30', '2024-12-16 16:46:47', 1734274845, 1734275342, '112.197.119.199', '1bcc431b428602087ba5e8c80bda85e1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'RH2LLTRYE6ZL42A5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(70, 'Nam Nguyễn', 'c22de530e099d1bbe2202b72ad46078b', 'namnguyen080918@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 16:01:52', '2024-12-28 20:23:05', 1732957312, 1735218064, '27.77.17.150', '0fddfce6683b23c1ef95424c0d53ee3b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'SQ5GPXMJDO2BGNLV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(71, 'Hoàng', 'afad49eb8c25b43355d1f00ce10fdb51', 'toandan890@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 16:07:30', '2024-11-30 18:12:37', 1732957650, 0, '171.236.58.30', 'aeff59ac3741eb415732741b3d0c4900', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.73 Mobile/15E148 Safari/604.1', NULL, 0, '4OHEN55SAZHZEN5A', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(72, '0772645924', '11adba852ba46504f2740f61b2061fa9', 'th372837@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 16:11:03', '2024-12-11 13:16:01', 1732957863, 1733073514, '103.199.32.167', 'cfdbf2f85083257fbf73f26a3ebb608f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'CJYN5WAUHDG3P5IK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(73, 'BaconKiavip', 'af22cbca55c518545404fcbdddca1672', 'gaysex96@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 16:53:26', '2025-01-01 14:21:24', 1734174527, 1734434360, '171.243.59.122', '68422e99553a9105c4562f3829519a92', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', NULL, 0, 'YZXTWHQGJKYBQ5TD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(74, 'Nguyenlam951', 'e4ffeb70ceabdcdd1b9633c2756b7dbd', 'dphat95105@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 16:58:41', '2024-12-29 22:35:10', 1732960721, 0, '171.224.180.154', '2041ab230dec5fad3ca1f97c8ff70b3d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'G6Y2XDR4MXMTTZGP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(75, 'cobadangngoc', '8d125d9b38abde186df4ef674883be5d', 'nguyenngochien077@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 18:11:19', '2025-01-01 19:20:40', 1735392783, 1735608606, '171.225.192.54', '16690220f243b3c66c123a98f4a44bed96937a5aeb2d560e1c989162a16ff3f7', 2344, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'KERRVUX3QLNOYVMC', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '9068eb8cdc685a06bbe59574b6e9afe7e05824a2bd046e52b64ae0ff6ccf0ff4', 1735391099),
(76, 'Khánh chất', '1882fc7d187a9c533cfc4b7034ba56f0', 'luongdoantung20101986@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 18:24:16', '2024-12-01 22:28:17', 1732966185, 1733066865, '116.97.107.1', '0cffebbf756c5c704b4fc875a554ce17', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'PL5MZOKZP35MJHWR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(77, 'nvt1111', '218bdfcb42b95d587b3f876c77e935e4', 'lutuananh33@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 19:09:32', '2024-12-02 18:57:51', 1732968572, 1732968622, '123.28.227.247', '0d10403a6c2298250557048f513b3a10', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/21G93 [FBAN/FBIOS;FBAV/491.1.0.62.114;FBBV/667691447;FBDV/iPhone13,4;FBMD/iPhone;FBSN/iOS;FBSV/17.6.1;FBSS/3;FBID/phone;FBLC/vi_VN;FBOP/5;FBRV/669081652]', NULL, 0, '6QX2MRLT5YNCGKRA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(78, 'Njunununun', '0cb4e303c936952c5674c6ff105f68bb', 'tul21495@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 20:36:37', '2024-11-30 20:47:44', 1732973797, 1732974449, '14.175.198.150', '295890393c54d1b0e44972e17fa3e416', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 11; CPH2375 Build/RKQ1.211019.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.78 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/491.0.0.58.78;IABMV/1;]', NULL, 0, 'GZI3LXF4XFTOGBIA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(79, 'Hnununun', 'c6f45765583ca3e61af03fe7b6c114f2', 'longtu.0507112@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 20:48:35', '2024-12-28 09:11:12', 1734492959, 1734616469, '2001:ee0:4c1f:92c0:6888:8cc6:21e4:a6cf', '023898c43f8eb28055c9e53b7f752887', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '6CEUEO6M64T3KXN3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(80, 'EdwardZed', '028bc71f2935b5525dae44590b363d45', 'nkoloronaldo@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-11-30 21:01:06', '2024-12-06 21:50:42', 1732975266, 1732975289, '1.52.63.32', '29bff0b558cdede877a8023aeefc3976', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', NULL, 0, '7HTWJSWQ5DFOF23C', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(81, 'Khánh', '3354045a397621cd92406f1f98cde292', 'khanhthanh1320@gmail.com', NULL, NULL, 0, 0, 0, 2, NULL, 0, NULL, 0, '2024-11-30 21:42:06', '2024-12-22 18:57:01', 1732977726, 1733029338, '14.247.232.243', '199b580983c17fe156c6b8952897b7b9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/343.0.695551749 Mobile/15E148 Safari/604.1', NULL, 0, '7Z73WNHJ6P7CDGEE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(82, 'Khang222', '53d99a8e8cefb658d3eff6f46d6efdd1', 'hai447186@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 05:50:29', '2024-12-07 09:26:53', 1733007029, 1733007054, '14.174.199.127', 'a859e2d25e2d59e5da979e9865acb108', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'NXJNDVGPR5AVWID6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(83, 'Nguyentienloc213', '158b2c6fb5bbde6bf4ddff0eaf3f115f', 'dhshsiheeu@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 11:17:05', '2024-12-30 18:09:07', 1733027984, 1735434922, '113.23.50.63', '068f6d3a5f037f937bb98c906acd2b58', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GD3EMOVVUVOM3APR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(84, 'nguyentienloc123', '158b2c6fb5bbde6bf4ddff0eaf3f115f', 'hdidbsjsbe@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 11:23:20', '2024-12-01 11:26:35', 1733027000, 1733027191, '113.23.50.63', '621188c1b821ad6fea41dd72768b6a54', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'JGH3VT2NK6PBSYI6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(85, 'frrefive2k', '635a6e0ca62c6aca77ba73473e9a338b', 'soquoc111py@gmail.com', NULL, NULL, 0, 0, 0, 2, NULL, 0, NULL, 0, '2024-12-01 11:27:01', '2024-12-01 19:47:25', 1733027221, 1733051841, '116.105.184.58', 'a2ef92a4d4decacca6b142561d7bbd0a', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'AS54MQNDNSNO5PJK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(86, 'nguyentienloc210', '158b2c6fb5bbde6bf4ddff0eaf3f115f', 'hsisvsueu@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 11:27:42', '2024-12-01 11:31:17', 1733027262, 1733027473, '113.23.50.63', 'a7d3e14ec0be2f27bd98cb8763f5e7d2', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'F5TYQRWMLDUYUOFT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(87, 'nguyentienloc2132010', '158b2c6fb5bbde6bf4ddff0eaf3f115f', 'susgeiebev@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 11:32:05', '2024-12-01 11:35:27', 1733027525, 1733027723, '113.23.50.63', '01afa8c7eadef1ad4e2e0459af63ca8e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'JCZCXBSPPRAAGLC7', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(88, 'nguyentienloc2010', '158b2c6fb5bbde6bf4ddff0eaf3f115f', 'susgehdbeue@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 11:36:10', '2024-12-01 11:38:49', 1733027770, 1733027925, '113.23.50.63', '3c7514be9a14858587e7e908f2e24589', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XJVYA7WBA6626IQ5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(89, 'Phan Võ Minh Nhựt', '516f809c7cece7b55033282795da73ca', 'mnhut28122009@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:12:14', '2024-12-01 12:22:41', 1733029934, 1733030551, '1.53.0.212', 'c81d8299313da11b77d815625cf728b1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'XJIETUW2LQQYGIH7', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(90, 'thanhphu', 'b733fbece930b0b7485f8be216c80f37', 'thanhphu@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:13:22', '2024-12-29 11:13:26', 1735445605, 1735445605, '171.252.188.205', '78777a9182f3494ff7119895aa545e75449249bfa55ae6f0d2580a8e2fef578a', 500, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/295.0.590048842 Mobile/15E148 Safari/604.1', NULL, 0, '5Q6BU7QQFHXBHHEP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(91, 'J huy', '46148cdef29d7274d24447525421eb50', 'hhuy7134@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:18:45', '2024-12-01 12:52:26', 1733030325, 1733032111, '171.225.185.15', 'e2c2b91ac9913bb9d9519485093b2650', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/485.1.0.45.110;FBBV/665337277;FBDV/iPhone10,5;FBMD/iPhone;FBSN/iOS;FBSV/16.7.2;FBSS/3;FBCR/;FBID/phone;FBLC/vi_VN;FBOP/80]', NULL, 0, 'ZX33BW47XPURIR5V', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(92, 'Kien999', '27c83838cfaeb48b6f99288bbf619c04', 'kienle31011@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:22:32', '2024-12-02 02:11:19', 1733030552, 1733030596, '116.97.108.58', '9b49de295d011062189d34fc493fe9f0', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; WOD-LX2 Build/HONORWDY-L42; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, 'LU24F53Q6JEUGNZI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(93, 'Phatlam', '8c1c0e627c99c0fd06e36eac593217ed', 'samlamphat@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:47:02', '2025-01-01 21:33:57', 1735315004, 1735351632, '117.3.122.231', 'ea535659f761095584330695296cd5de', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 15; 23129RAA4G Build/AQ3A.240829.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.136 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'OFW75ARG3IJGCNC5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(94, 'Vegitoban', '9c769299c4595799087d66a982db0f69', 'vegitobanroblox@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 12:54:51', '2024-12-30 15:40:21', 1735546669, 1735546947, '116.99.252.163', '0773c699f8fe3487f679e5a04fe5bc1250741b061ef0336d99d7cae864acf1ee', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; 2310FPCA4G Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'P6J3ZYOH7XHQ66KB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(95, 'Neilsky000', '7b9fe5361317c2faf336805896cd09c5', 'tpktik98@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 18:51:35', '2024-12-31 10:56:35', 1733053895, 1735100609, '183.80.48.104', '1253958f55028bc6cfafd977b2a9041a', 3510, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XHGBH2Y3IEZT6QBQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(96, 'Nhinlon', '8d7b3ee599c31cef330f2fd140878fcb', 'bminhquan132@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 19:20:13', '2025-01-01 21:19:14', 1735725538, 1735725538, '2001:ee0:48d3:51b0:c1bd:d2bd:324d:4317', 'b647740623872349408ef81b17f643870abda9845bf1b81b10811271583aa80a', 645, 0, 0, NULL, 'Male', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'BNCVG7HLID724QPS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 1735724273),
(97, 'Bảo Thịnhh', '84e6c8442ce2fe4eabbe0f5885df2780', 'baothinh123tlongthanh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 20:48:45', '2024-12-01 20:54:08', 1733060925, 1733061233, '115.76.49.143', '0eb2cf9b7fa41735752859a915127b39', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; U; Android 12; vi-vn; CPH2113 Build/SKQ1.210216.001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.11.5.3', NULL, 0, 'RMUU5QZCJV5U6J2B', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(98, 'TranGiaBao', '02907aa200093afd3edd56d81a050b31', 'BaoTran3010@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 20:52:25', '2024-12-31 07:16:12', 1734258873, 1735604106, '171.229.165.172', 'e79fd82a6648b3d440477b4ded29d6cf', 324, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'MQ3WIOIZEQJ7STQX', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(99, 'Zbsbsb', 'e6c9c4f90a34f9b87654e88a8aacadbd', 'zbsbsb@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 21:33:36', '2025-01-01 19:31:16', 1735474894, 1735474894, '2001:ee0:48ac:b9c0:dc7f:7f19:932d:d1c5', 'f34a5b9cb3545f19003e9b0ef408b18193ba7904353bcba3711905e758d59930', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'WPNM63QRHFX24C5C', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(100, 'lamvillachau', 'da57ded95197e9749824d3b7064e1301', 'dlam29082010@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 21:43:34', '2024-12-23 19:29:05', 1734614350, 1734614508, '2405:4802:1aaa:d480:f440:9b87:ff75:bd05', '2cc3420c1f3480922c007f222dd6dce3', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GYOBZF7DWHDCIRLU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(101, 'nam8_4_2010', '90135cbf3177fb10ec555f3589f75fee', 'hsidhsnksjd7@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-01 23:06:09', '2024-12-01 23:15:53', 1733069169, 1733069414, '27.71.98.101', '566fa1463f5d1e657fedd32b55853968', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'R2QOUAP6LJZBTNGV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(102, 'Oioioibaka', 'f5bb0c8de146c67b44babbf4e6584cc0', 'trockhoa7@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 05:06:23', '2024-12-02 05:06:48', 1733090783, 0, '116.97.215.160', '069c67b5ef606a1d4b1a815bb073142c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 12; CPH2121 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.108 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, 'CDWKBVDWNXP5GDZU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(103, 'Quangquy', 'aa1cb49b76150cd773fa8f4ed90c7b4d', 'gan1tybeli17@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 06:16:48', '2024-12-02 16:26:12', 1733095008, 1733131550, '123.28.188.90', 'e7d873ae45f08a2b9d9a43353d61a8e3', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'PKZD5XLYKF425EWN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);
INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `otp`, `otp_limit`, `otp_token`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `token_2fa`, `limit_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(104, 'Noob123456', 'ef91cd73d6c905f9d5ed9e84db3494f0', 'nghoangquy1503x@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 06:25:02', '2024-12-13 15:47:56', 1733095502, 1733486718, '42.115.92.246', '64be3bed1ee4a6adc389e506ef9d2834', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'Q7JI2WWDSAKHZGVB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(105, 'Minhmunak12', '2a43954377c1ba729398db7cad64a1a8', 'minhbinkayas12@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 16:58:49', '2024-12-05 07:50:59', 1733133529, 1733359851, '123.19.121.19', '89a153f5f2ea4365d0303cf33877becb', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'OTEMLBKE7FGTFOHN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(106, 'Longvui', '7460e384a375c8cd8e0ef79654b452c6', 'llonmjhui@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 17:15:37', '2024-12-05 12:02:52', 1733374387, 1733374387, '171.236.151.97', '642c6e555c136463e5a4e8ffdf642ce5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'DAXATKZXU5HNN43L', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(107, 'Longvuit', 'bec33b6f2168b405b5784edbcd7ff3eb', 'llongvuitinh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 17:24:29', '2024-12-24 23:00:23', 1733818294, 1735034499, '171.236.151.97', '8b423ae767d823549b1a6734f7f22f63', 50, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'Z4LIHZ3PZKKNOGR3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(108, 'Phammanhcuong3103', '730eec5aaaccea778167dfafbc2f4baf', 'cuongdaydz2009@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 18:25:01', '2024-12-05 10:39:46', 1733369974, 1733369974, '125.235.235.169', 'de3bd2e4140ca6216b7ad0737d37d4bf', 400, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'JC7T6IBPSIMUXMG3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'b19631c505333f15131190b45e8e1132', 1733805868),
(109, 'Khoinguyen', '1eb6a2f6540b3250d8fa9531aec5a23e', 'nguyenbakhoi@gm.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 18:40:20', '2024-12-02 18:53:42', 1733139620, 0, '1.52.235.36', 'd16789243f8a199b58630a002c9e2144', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; SM-A055F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, 'F3477ED5AXY33GGR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(110, 'minhhieudzvl', '875a867414f18549077762e304ccf81c', 'hacknha51@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 19:16:18', '2024-12-29 13:13:46', 1735446630, 1733143729, '171.234.11.162', 'b75821a8b7a935c7dba14e9c55b37aa4', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'GAGUWITSEP7E37FO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(111, 'quocnguyen', '2b609ceae0ff7894bedc16c4db77eecb', 'thanhmainguyenthi1977@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 19:39:41', '2024-12-10 10:39:13', 1733755746, 1733145344, '1.55.251.240', 'ac178792a2f3d09e533ee9cf9a70945d', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', NULL, 0, '72N2VYCYIVD3OVIC', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(112, 'Quocdat', '197b52cfe0ea83d332b29367b169c33f', 'thihanh165@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 20:13:23', '2024-12-06 19:21:22', 1733145203, 0, '171.225.249.20', 'a1a676fe61b29d867258b9d9b57cbc8f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '7WUI3E3I7VMZ6Y4L', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(113, 'Aothatday', 'bec33b6f2168b405b5784edbcd7ff3eb', 'longlongnvh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 20:21:57', '2024-12-02 20:21:57', 1733145796, 1733145796, '27.68.136.85', '3cfee835315eb237fd5c4166e46d8e20', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'OXUYLLBLADLH2U3P', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(114, 'Minh Trí', '1ab0f881c7f3fcfd1f11ac746135509b', 'tuongvi1982tpt@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-02 21:30:02', '2024-12-09 16:46:19', 1733149802, 1733737497, '1.52.83.244', 'd5f456d19eee39f8066abee4508c8678', 600, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/343.0.695551749 Mobile/15E148 Safari/604.1', NULL, 0, 'SXHM7QUC64ZSY7KW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '086d6bc38fe137d95809bed8c72423585be59bb26f6447562db575c4d2c85b50', 1735383454),
(115, 'skibidi', '2c9d97dc8628f0f8e0b3be3deabc25a6', 'skibidi@gmail.ckm', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-03 10:07:00', '2024-12-05 05:50:31', 1733229141, 1733279105, '171.225.192.37', '237ab7e4c2ad752d4715ad5a85c3d187', 10, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/295.0.590048842 Mobile/15E148 Safari/604.1', NULL, 0, 'NNZHRUR5EHKHBGV4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(116, 'quocnguyen1', '2b609ceae0ff7894bedc16c4db77eecb', 'quocnguyencantho106@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-03 17:21:21', '2024-12-07 15:53:03', 1733561122, 1733561540, '1.55.114.12', '7d58311e7b3b067a036ad51e0ef32f24', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.103 Mobile/15E148 Safari/604.1', NULL, 0, 'VMXLXM4EZBRH7EJ5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(117, 'Monkeykkk', '1b49314083ae8d47268a15af604a2c52', 'brojourney1006@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-03 22:05:40', '2024-12-31 19:33:58', 1733238340, 1733920280, '118.68.21.158', '472657071334d3ba7ce0cb71e39f1b4c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'PU26JPSZUF23IXWU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(118, 'Idvdhdb', '25d55ad283aa400af464c76d713c07ad', 'Huut56497@gmail.comh', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 06:04:17', '2025-01-01 18:47:39', 1735721186, 1735721186, '14.191.207.101', '09613913eb38fdd55c594eb192bbe3de2467daebe822965e7cbb05abfdd09621', 31900, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'BNEGVSKQGARXDJC4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(119, 'Thanhnguyen1062009', 'c06529ec1265f4ad0dcfc4d572333040', 'kn0967031@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 10:51:02', '2025-01-01 19:04:26', 1733284262, 1734183131, '14.226.19.39', '33896f2bb63d07b5a5eb553d8960c790', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 12; M2003J15SC Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/130.0.6723.107 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/485.2.0.68.111;]', NULL, 0, '4CVMYJIISJ467AWF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(120, 'uonghoang04', 'e48bc3a0419179726a977a1745928d59', 'henrydainn260520@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 18:03:56', '2024-12-31 11:33:50', 1733564084, 1734270974, '117.5.152.61', 'ef52fe79a6c7a22c0768027fc14ca2ce', 0, 0, 9, '<i class=\"fas fa-long-arrow-alt-up text-success\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'UNPUOCMSOW7BRC5N', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(121, 'adminhai', 'a438d923e3268ec167956821c7eccc05', 'tgaminga64@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 18:27:47', '2024-12-28 19:55:50', 1733648713, 1733648713, '14.191.19.17', '04d99e509224ba089617296b410516bc', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', NULL, 0, 'H3OAVS6RTOYHIAWA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(122, 'Kenmapneh', 'f89d9a5dc281d20b1ec695762b8859c0', 'phinhatphi192@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 20:23:49', '2025-01-01 13:35:38', 1734962613, 1735396066, '2405:4802:a3af:e2f0:d8d1:d78c:d95:4bdb', 'd070350f5a57eca54c522c026c84d213', 12, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'YD4JTVUKJYQSMZN4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '00b1e1be4455b36940f167eaab72df0f', 1733480632),
(123, 'Adminvip', '0a421070e69ec6bb2bf3da1301167395', 'tgufvufh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-04 22:41:08', '2024-12-16 17:20:10', 1734341172, 1734341300, '222.255.187.212', 'd80b0d5959fa055627d1aea2aecf9087', 1000, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; V2110) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/13.3.0.0', NULL, 0, 'M5IWOYSJMOLMBOZR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(124, 'BAOHO189', 'd8aaef6b790c8089fdd2f04108d3608f', 'Hobao9a3@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 06:49:16', '2024-12-28 21:38:59', 1735396728, 1735396728, '2001:ee0:564b:1a90:cff:247a:2e79:7c3d', 'c9b6155b802ce3211bb355b686f8b14bf39e253822ad33012c002660a7faf1a0', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'WY2TTTSTOT7KPSWZ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(125, 'pdflenane4c', 'f8c81a52f80a121b90beacf4304ec3ed', 'xuan.giang.957180@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 11:42:05', '2024-12-22 16:58:55', 1734861515, 1734861515, '113.176.13.110', '948781803994432db630c850a69f9491', 9400, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '3BPU7FRJVNWTE2ED', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(126, 'Longvippro', 'f1b708bba17f1ce948dc979f4d7092bc', 'Huy609190@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 18:06:39', '2024-12-31 15:26:36', 1733396839, 1735034500, '171.234.12.146', '701b1ab702f645504fd2d520e4d9bc3d', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'AQBUKAZNIK3IR3ZX', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(127, 'khoa11', '425513598f78a7619c54e344b4f093ab', 'akazavn1190@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 18:30:07', '2024-12-29 15:40:22', 1733398207, 1733644342, '118.68.203.68', 'b943bdc295fc2e6450ca30baef58548d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'T4ZWOSISG73YCUS3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(128, 'Thtai12345', 'e8de9f87dff2af8323d14b0fe7c16ff5', 'taic82049@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 18:31:52', '2025-01-01 11:55:07', 1733398312, 1735488137, '116.111.187.213', '5b1fd4f7a734487817787cede5a51604', 294, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'A2QOJSOE6PSIMJEH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(129, 'Thanh1234', 'e602db12c1b741c6e518fa8e47a1f5bf', 'lothitu040285@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-05 22:38:10', '2025-01-01 16:12:17', 1735482540, 1735482540, '27.67.87.217', 'cdfa469788de808ce6a22e94c12b29e5d81567bbf29224b087538b56ec801be2', 0, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'YEHLHLBOBFFCVJF5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(130, 'Thienphu', 'e8f6edcb9ecd19a01fcdeb2a6bd8a93a', 'thienphuit2@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-06 12:49:54', '2024-12-10 18:53:18', 1733628021, 1733665791, '14.237.115.45', 'fa8f78974d78f065e794cb946cad686d', 300, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'P2T74SWIDKG6LXWA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '708ca2ebb836765285d574cae199cbc8', 1733485292),
(131, 'Sang75', '6b1565e834b4d6c38b51687bfd52c304', 'tranthanhsang2k10@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-06 13:04:09', '2025-01-01 16:07:05', 1733465049, 1735574685, '1.53.48.52', '75c5607f4780a6488842fd22f9aac012', 1010, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LYWOC2PN3LNCLSKF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(132, 'Nguyen luc', 'b7fbae87e2af3895c29b27361751db2a', 'caothitam.nghean@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-06 14:26:56', '2024-12-06 14:28:16', 1733470016, 0, '14.228.60.219', 'b47f33f25efbf2cab3d3dcf651a88cc5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/345.2.700885593 Mobile/15E148 Safari/604.1', NULL, 0, 'C2QMRSHD2AGEOY63', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(133, 'Isagi', 'c6cc0db9a652c963100a6280061c18cb', 'doduyphong112@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-06 19:52:05', '2024-12-06 19:52:28', 1733489525, 0, '116.96.46.5', '49aea67dea930a455bcf955dde88a553', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'DYDDRILR4ZB2FB3T', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(134, 'nmnhhut', '9978f8c43c1e939caf27c50179266b55', 'minhnhat1098kg@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-06 21:40:40', '2024-12-23 20:30:27', 1733496040, 1733496832, '171.243.52.55', 'a9e6af73a8a22fa88ce76795bc2ce332', 800, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '7OFJITPICIOLR5QR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(135, 'Khai02032015', '093b2babc9b69a993d8a54a3e31416ed', 'nguyenvienkhai2015@gmail.com', 'Sẽ nhất định làm CTV Nguyễn Viên Khải', '0374956559', 0, 1, 0, 0, NULL, 0, NULL, 0, '2024-12-07 06:41:03', '2025-01-01 20:02:34', 1735737534, 1735732127, '2001:ee0:5413:fc50:216d:62c1:10e4:1d3f', '8548d55c20a143397f5802eeb81fc1d6ad7600c9eea24e6aec1876b66e34e5fb', 0, 0, 7, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'G7D2YDG573TR5KVB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(136, 'phuoc1906', '7ea5a996757a74e91d826ac06c850b66', 'thienphuoc190611@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 09:21:08', '2024-12-27 04:52:52', 1735249750, 1735249836, '2001:ee0:4cab:3a0:58f0:34b5:3690:d1cb', '3de0f2e3a2ede25b82f67de741966277', 300, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TPUVRBITMHERDZNN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(137, 'Xd10mhp', '29e11d639398160906626c707a78cdcd', 'cuongd4ddy@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 11:48:13', '2024-12-07 18:34:32', 1733546893, 1733571205, '113.23.104.9', '4f265bce4ba44e7d7375ec620a340887', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.7 Mobile/15E148 Safari/604.1', NULL, 0, 'N5FFEZ5QKKZ2KCI4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(138, 'leductrong123', '6b831a6844e0b9f19c00c079d47de44c', 'leductrong192011@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 15:49:25', '2024-12-07 15:52:40', 1733561365, 1733561529, '14.236.176.163', 'a7c3f34581c1ab32e5514ac65b55be1f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'R5MOBVM3Y7T5KRGG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(139, 'phokaiff', '508f7975d1b7eb6227b577ba8b306352', 'taih03520@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 16:14:57', '2024-12-07 16:16:35', 1733562897, 0, '14.179.48.118', 'f3ccf377e7c2157896276b7cea2143d6', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'WPGELLICJL2CWUTE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(140, 'Trunganh', 'dd4b21e9ef71e1291183a46b913ae6f2', 'trunganh000111222@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 17:30:05', '2025-01-01 18:37:44', 1733567405, 1735651739, '1.55.166.162', '64b378c239ed82e00c5198044828de1b', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'FQ7OWKEEVR7GP4XT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(141, 'giahuyvan07', 'f4ac1a18dcdafff4eec67c6012916ddf', 'hailan705731@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 18:09:35', '2024-12-27 19:42:43', 1733569775, 1734261694, '171.243.52.55', 'b494edaa15377d78419f09a35ec3089d', 5300, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'D5EL6MWDCEXLM6GG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(142, 'nhuconcac', '62c8ad0a15d9d1ca38d5dee762a16e01', 'concac@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 21:47:26', '2024-12-07 21:49:09', 1733582846, 0, '115.77.121.55', '2e66ed5101081ab3c9e6bd55fee90701', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XVTJDXI44PR5OXME', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(143, 'Trường Nguyễn', '1a4ff7fd66aa5a650151bb6270461c1d', 'dukimochi2021@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 21:47:30', '2024-12-07 23:14:54', 1733584840, 0, '116.103.165.249', '8fc4acc4a5ed93531f0b19d324bb9578', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'OO4I7RLRXGFKVMII', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(144, 'Lonchotoaiso', 'f64144e12eedf02820a6506c419230b6', 'lonmemay@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-07 22:55:30', '2024-12-25 13:07:12', 1733586930, 1735106816, '222.253.178.203', 'feab2cb43389c96a07fd932cd7de2038', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; V2025 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/486.0.0.127.109;]', NULL, 0, 'ZJLT7OE3CFH2BE3G', NULL, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(145, 'HUY467', '27bec66b455cfbc1b3b958a657d86c59', 'anhhuyt021@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-08 09:48:31', '2025-01-01 21:51:15', 1733626111, 1734618079, '14.235.234.113', '7acec0dbdd8d8a3fb004833e5582cce8', 6, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'EL2TGJQBFKCCWQSD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(146, 'khckhcklk', 'feeb1105cc81351438fd8d84fd27ce39', 'kendeptraai@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-08 10:02:01', '2024-12-08 21:42:06', 1733626921, 1733632014, '14.233.189.109', '76d62afdc592fe4399c11feefcac8279', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'IGOLT3MMUDPQWOTN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(147, 'Lehanhphuc', 'f0e63e9bbf18680e8fb5a58c24c7a127', 'Lehanhphuc@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-08 10:44:18', '2025-01-01 19:12:21', 1735733541, 1735733541, '116.96.77.150', 'd65f1a5e4e5a94029d508a65d559a40e3bad9f3ce7592fd7049ef8e3f7bf58e9', 444, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', NULL, 0, 'UCMYY2OITNLAUC4O', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(148, 'Khoa Nguyễn', 'a3fe02877243fbb8de59633f55892bea', 'Cocaiconcak@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-08 17:50:45', '2024-12-09 16:42:20', 1733655045, 1733699703, '113.185.81.38', '454db3ed0bd79c6ea03b4fbe64b6f9a8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'CXVQ45GMWA4YFFK5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(149, 'dragonav', '543d575a78d9177b0247f2ba882559e3', 'buithidung10081978tb@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 12:05:48', '2024-12-14 12:32:44', 1733720780, 1733720780, '117.5.152.145', 'e45da1983f5553bcf0ad4e7e7defd0bb', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'A5WD34AYWY34QJFE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(150, 'Fjgktjtjtj', '79c825e2380dee437336ca03b69b1c82', 'dinhtient72@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 13:06:21', '2024-12-09 13:06:41', 1733724381, 0, '42.116.126.49', 'd58089a73c2d7f5af1616c5a9dcb50e6', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; RMX3834 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.41 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/486.0.0.127.109;]', NULL, 0, 'YPXD63QZ3OIFIJBN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(151, 'Nguyenluc', 'b7fbae87e2af3895c29b27361751db2a', 'hoangvuxxxx@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 13:17:32', '2024-12-27 10:36:03', 1733725052, 1734689482, '14.228.60.219', '62424eb33b404b28dc7559fd918fc1ca', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'DHPKH2CLTP2KYGL6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(152, 'hieu1230', 'd26631a5679067948d6c5acb66a50fdf', '2kmzwin@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 14:50:03', '2024-12-28 21:44:38', 1735395759, 1735395759, '116.107.66.164', '71ee90398d6230c5861e1e21f10d90d64179a934898284649fab2ca01f0d16e9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'F72HQSABOXDY2TTO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(153, 'Tranquocnghia', '382b296ba04484d3c5655668b8cf84cb', 'nghiatraquoc0@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 17:32:26', '2024-12-16 21:13:48', 1733805653, 1733805653, '116.111.186.65', 'f633970a185081721eeb28a274648e2b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'ZF7U2BFPMARIOO6Y', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(154, 'HauDepTrai_vvpN1B', 'c56d399cc02d4c70bd173f5bcb530296', 'lega3136@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 19:11:04', '2024-12-26 11:11:22', 1735185347, 1735186259, '118.69.53.133', '012af1655291d74f9f805666a1b92f2e', 1200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'AON2O6BLVTHCG3NI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(155, 'nhat', '8d4ad5023e0779138defee79a7a8cd14', 'nhat@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 19:17:47', '2024-12-16 15:39:43', 1733746667, 0, '116.98.3.146', 'd7570b9d64bdec7ee803d95d3449edff', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'XCHXLANUDA6ET75R', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(156, 'tkednz', '007fc3fbd86af82c04881cf3d8f53206', 'phamthithuy08011990@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 19:22:37', '2024-12-30 13:14:17', 1734909623, 1734963416, '171.225.205.101', '73ee72084f0e886f31f2c4f0892e0b64', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '6BTSHQFWUKO5YKOT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(157, 'donevxpy528', '3078408b6f8cb3ef678b9322eaa9c247', 'vongminhnguyen48@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 20:11:51', '2024-12-16 20:20:02', 1733749911, 1734355185, '171.252.155.3', '5f244d86639c6bdcc9a1834f3e4034d7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'KWX6RCUYAFB3YSRM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(158, 'hsc3bt2_trantuananh', '8d6b31244b23226d6e47fc32539b0188', 'trantuananhtta00@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 20:55:36', '2024-12-13 22:08:21', 1733754395, 1733754395, '171.225.208.140', '2bee0d56db0f8f34daac3b459622f121', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1803) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Mobile Safari/537.36', NULL, 0, '6QCM74JSKIM4RTLA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(159, 'kiet', '412e4fe40c33b6afbe2ee567d437d2f4', 'tuankiet22022013@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 21:01:33', '2024-12-30 22:05:24', 1733752893, 1733802539, '14.191.111.100', 'a3e071b54cde572febce436e85159468', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'LFQ2ZRDI4OEOKC5N', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(160, 'Skibidian', '7f25f6a5a673232d075b31e8127b7100', 'Hoanghl.qltt@gmail.con', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 21:25:48', '2024-12-09 22:00:14', 1733754348, 0, '14.191.110.220', '677634e13b89a9b4d4c844abb397e57a', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '4WW46LLNTXF4YB7Q', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(161, 'Kien', 'e838ffbe5b2e55942cdb68b81f2e5bdd', 'ngockien018@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-09 21:25:55', '2024-12-21 19:08:07', 1734782887, 1734782887, '112.197.128.184', '9a726e53eb23fdb5e97badea6f56c51b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '77NW6PMGBFH5JQCI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(162, 'Hungsy', '25d55ad283aa400af464c76d713c07ad', 'shung2685@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 05:34:02', '2024-12-10 05:49:09', 1733783642, 1733783922, '113.173.17.138', '658e8eb7beb2e1ffc909c4c36a5f2eeb', 600, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/345.2.700885593 Mobile/15E148 Safari/604.1', NULL, 0, 'GW5PBKUTHZQKWCQ3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(163, 'HauDepTrai', 'c56d399cc02d4c70bd173f5bcb530296', 'donghoa02@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 08:50:15', '2024-12-13 14:14:07', 1733795415, 1733997629, '103.249.21.197', '94ad72a34fa36090ce30f866fe8b216c', 17200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.145 Mobile/15E148 Safari/604.1', NULL, 0, '3S7DUPWI2ULHUE2G', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '8ece1ce426db070f4a081d1d8f96c23b', 1734096496),
(164, 'thanhphuu', '1ea71800cd0cca63dd37fb4b5cb8d31f', 'thanhphuu@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 09:25:48', '2025-01-01 19:43:46', 1735733254, 1735733254, '171.225.193.206', 'e3aef8292347288e335dc80c101b68816939c34037adb498bbc67878fe7cb64a', 50265, 0, 1, '<i class=\"fas fa-long-arrow-alt-up text-success\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/295.0.590048842 Mobile/15E148 Safari/604.1', NULL, 0, 'PNAC7IFRVQVRXX4U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(165, 'Phammanhcuong1234ok', '7beadeb08f9fd0e0c33582a616f4f008', 'duueuwgwh@gmail.com', 'Phạm Mạnh Cường', '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 11:45:40', '2025-01-01 19:37:59', 1735558292, 1735734858, '125.235.234.157', 'f5f8323706330bff56ac3cced38624212c7be11ab57201a0c10baef2191e6398', 47000, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'RWQYVWMG47KSN5B3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(166, 'Blabla123', '0514043b53ec0dca97d574057d24e2fb', 'long0382910410@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 16:49:55', '2024-12-21 10:02:52', 1734745973, 1734746323, '112.197.33.76', '1ade8833b959afff34118c3442521200', 700, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', NULL, 0, 'BTBON3L4RUHBMTAO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(167, 'kobenem1', 'f3c951746abe4788e6d5a3df5852e8de', 'phamvulinh2640@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 18:09:21', '2024-12-10 18:15:05', 1733828961, 0, '171.236.49.108', 'c709e61d955676f45fff546cd7e866f7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '6JATFZUHJP2RQWED', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(168, 'Momou0u', 'a0be7ce0de01484663966db14d6b4fb1', 'taodepvlc65@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 18:24:32', '2024-12-13 21:31:25', 1734005820, 1734006110, '171.225.200.99', '44b749288f8e61299cbc44dd76c17fba', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'EK5QRQSEICHTS5TB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(169, 'Nguyencongchi', '6f44ea5db3dd930b8633ed3f033f458e', 'ongtuongmayday@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 19:28:42', '2024-12-23 17:08:06', 1733833722, 1734249402, '14.247.231.99', 'a6109378b4ae3a406cd0727604154e08', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'QPCETTT733Y37WTR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '388df0cf69399ffc9d291c74b1a004510a647983005e8a17f8cc6dd494b0b680', 1735637649),
(170, 'nobita', '1ad1ada6506e0b5a3c124d41dc215f3b', 'nobita@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 19:34:47', '2024-12-10 19:39:46', 1733834087, 0, '171.225.193.29', '4df2e4e86bc92ac76936d296ac8938c5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/295.0.590048842 Mobile/15E148 Safari/604.1', NULL, 0, 'Q2DOVRSM6WZSWDSK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(171, 'leductrong012345', '6b831a6844e0b9f19c00c079d47de44c', 'leductrong192012@gmai.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 20:09:27', '2024-12-10 20:29:24', 1733837197, 1733837354, '14.236.176.163', 'ed9567dd9edf0a2d1d625078c6c01137', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LZ2BQF4O4JRX4RPE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(172, 'Huy2516', 'c6d81dd92a2ce6cb85f7d2700e4b0199', 'huy0374674908@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-10 20:10:00', '2024-12-25 20:49:21', 1733836200, 1733836309, '42.114.201.85', 'abf6a24dea304f3996207f40a94c9c96', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', NULL, 0, 'IFET7SN3S4F4GZB5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(173, 'Dũng', '2c96b8878f533cc7c66c5ebc96d1ff00', 'dvu31614@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 10:56:09', '2024-12-11 11:02:00', 1733889369, 0, '14.190.156.139', 'e075b6751e88a203c6e038f7be48df8c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/345.2.700885593 Mobile/15E148 Safari/604.1', NULL, 0, 'NFX2SKAE3FAXJR3M', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(174, 'duhgxifg', '23f3bc8c1c5b0a13c0d69f478231856d', 'quanghuy4a2k12@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 11:10:25', '2024-12-25 10:41:57', 1733890225, 0, '117.6.194.44', 'ad681258b936152bd2649742cfd3417c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, 0, 'TWYX2LV7SG5E7SGT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(175, 'Minh152011', '27500f8ec124385d1605cc35e6aae5e1', 'minhquyenvuthi4@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 11:31:10', '2024-12-31 10:55:12', 1735477197, 1735477197, '115.76.54.106', '7af247f6a791408603425f32e259908db9fe512c27579f422d084518f222c809', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '4ZIQUTK4TO6HJT5F', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(176, 'huychsms', 'faa01a0a1bb36b16334207417f3ae60d', 'quanghuy6a1k99@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 11:48:59', '2024-12-19 18:50:45', 1734171424, 1734609024, '171.236.56.47', '7f80ab2442661e2696a8a0ee81a99aee', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '543P76J7KLAVOQ4Y', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(177, 'Giangdz123', 'fc78dfc88f6eb1a58e89f460dee01407', 'giang295.pct@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 17:32:45', '2024-12-11 18:04:56', 1733913165, 0, '115.76.55.64', '3b92b3e74edf3fe0b5b525a1194b7d4e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '7TE4EZVIHQJJ3KYZ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(178, 'Sinobu', 'efe597dbc21ddd8e7f154afaf3aee035', 'Bestzilltop1tg@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 18:11:51', '2024-12-29 09:06:40', 1735395885, 1735395902, '2001:ee0:52df:f5d0:c846:1935:196d:3282', '8c7ba62afc1b33c66b4ec4baa9ed3db31f274e4237c4759ea8a8e044ba46d71f', 2478, 0, 10, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'UJLQVZY74NGQMAMG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(179, 'Quochuy99', 'aca7cdbc1ec164703189ae6eb5dbfc90', 'qn766458@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 18:53:45', '2024-12-31 19:17:42', 1735552511, 1735553932, '2405:4802:723d:18a0:a97b:2f04:210a:2197', '0c8de4beb73d6e08cb9ddbfd922fad57f2a9af4e7f832a634e02595231edf2c6', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'H3H2K6GDBM4COBLS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(180, 'hoangphuc246', 'b79bfc3c1902efbf93ff535ced61c4db', 'silienpv26@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 18:58:02', '2024-12-11 18:58:03', 1733918282, 0, '116.106.132.43', '85baef6e06db2f6e42aaa05ae6c43ded', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'HWAERVS6ZX7U6NLO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(181, 'Vantu', 'c5f81bcc9b3c2b073b65739b321a2277', 'maivantu483@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-11 19:06:18', '2024-12-28 16:02:53', 1733918778, 1735359280, '42.1.100.9', '89f643d7be29d48553cd1af36fa1116c', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'SYKF3XY7RWYAUDNM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(182, 'Hsih', '9b452a2456447a22d0bfe1a936a3bb87', 'idhfh@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 15:09:31', '2024-12-20 17:17:01', 1733990971, 0, '118.68.105.173', 'd846bb2cb6a4174b98c15a2e562e28e5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'KLR4E7UO62HS23BJ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(183, 'Vienlam209', 'ef592c87c9ff628ae52bf96a796de2f3', 'nguyenvienlam123@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 17:05:57', '2025-01-01 12:10:49', 1734917689, 1734917689, '2001:ee0:4d1c:1ae0:2424:e6d3:3fa4:c0f', '5e95de2ada5fd16664c37c9bfa3963b2', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'R5GMTCX5SSEDJLUE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(184, 'Trunglop69', 'ac80cae5a874b52cfce2e8c420e0afbb', 'trungquyetthang2013@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 20:23:47', '2024-12-12 20:27:47', 1734009827, 1734009852, '1.52.161.97', '42a1d7543eb3c8dd43252dbcbfd55160', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', NULL, 0, 'SA62INYSRKTSDKFT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(185, 'Hồ Quang Tân', '41aca0fb2092992275e497f52a58b4b3', 'hoquangtan114@gmail.com', NULL, '', 0, 1, 0, 0, NULL, 0, NULL, 0, '2024-12-12 20:25:19', '2025-01-01 21:29:22', 1735741786, 1735733253, '14.188.74.120', 'a842b19674d0066648ed7135c0f3964493491a00214a4a84978d95dd87a224aa', 38000, 4000, 3, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'QBLKJN4VN2SOVBF5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(186, 'HTNARUTO111', 'c8f8d9bfb798dc6f13c7fea2e0b2456b', 'liz37720@inohm.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 21:17:08', '2024-12-12 21:17:53', 1734013028, 1734013065, '42.113.140.103', '2b6b82af3c83049e006ccd3c2e7f5405', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 'TVPTOCQ27RHQ3NTO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(187, 'HTNARUTO11', '10607bf04f558a2739cbcd64f13eac5a', 'jkb42304@inohm.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 21:36:24', '2024-12-12 21:37:57', 1734014184, 1734014212, '42.113.140.103', 'f0d55f65a96a57f6cd8c1a7470e4b511', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, '6E5UGU2EFR6CW7NM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(188, 'HTNARUTO1', 'ecf00bd295695d78e8acd16ce924affa', 'hat83364@kisoq.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 21:42:32', '2024-12-12 21:42:55', 1734014552, 1734014571, '42.113.140.103', 'ce108193e3e21a7366f9889ac0b7ccdc', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 'S5L42DVY7BL5J4X5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(189, 'HTNARUTO', 'c80743f12de3498a6cf0d7d10e732233', 'ajb15983@kisoq.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 21:50:20', '2024-12-12 21:51:41', 1734015020, 1734015054, '42.113.140.103', 'e97db46cc36ba19e210598912df4b9fd', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 'ZHJ4X7YZRKU22RW2', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(190, 'HTNARUT', '44b0a1ad901688b200bee0b4e97961ea', 'jqo96084@kisoq.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-12 21:52:29', '2024-12-12 21:52:53', 1734015149, 1734015162, '42.113.140.103', 'a0ab2cb31ef1a464dabba7dfb657a98e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 'XCJ5EETB2SCSOHVA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(191, 'Chauhongnhat', 'a8f8f7717ba534800245a00cd89e8741', 'chauhongnhat540@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 00:31:51', '2024-12-13 00:31:52', 1734024711, 0, '14.191.241.156', 'fe9a5e904ef842778de2b8b36d6adb32', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'IBQ3JQ4PXZHA6DMU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(192, 'VanChoNek', '81c7581e45ebb212980031ae3c8b9188', 'vubamhoc2897@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 02:25:56', '2024-12-13 02:26:28', 1734031556, 1734031583, '1.52.232.110', '690033a26de7c8ed3c18d8dc74731ad4', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', NULL, 0, 'I6PDGPMRN5DTOFJ2', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(193, 'Gavipst', '5efbbce0f9c675397cec12701967dae4', 'gavipst147@gmail.com', NULL, NULL, 0, 0, 0, 6, NULL, 0, NULL, 0, '2024-12-13 07:12:39', '2025-01-01 08:38:06', 1734048759, 1734077819, '14.234.22.117', '69e7cb49f01bce98d2e524efba8aa477', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.103 Mobile/15E148 Safari/604.1', NULL, 0, '6LMVI7VIJD4NUXXF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(194, 'hoa99', '40bb7479b2edefb710f157f99ccaa892', 'Hoahi337@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 07:13:48', '2024-12-20 19:10:57', 1734048828, 1734048871, '171.249.104.190', 'b4a3b4a6b09d51484ae873516b549fd2', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '5H53VPHAUQWH52E4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(195, 'Dien999', 'db0303f9c6742632901c9a1754481c24', 'nguyenhongnghiep1981ct@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 09:58:59', '2024-12-26 10:11:53', 1734058739, 1734064101, '103.199.57.203', '1fabdd5333c3489719b3febe7770bad0', 400, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'O4A2SGHMT6ZAVPAW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(196, 'Đức Lợi 2404', '647b8172aef5b7a35608ee8ba98b4832', 'ducloidz04@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 11:57:52', '2024-12-13 11:59:44', 1734065872, 1734065894, '125.235.237.188', 'b9f846a1b13af9e70726c4115afb4d14', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; 22120RN86G Build/UP1A.231005.007;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.104 Mobile Safari/537.36 Zalo android/12100770 ZaloTheme/light ZaloLanguage/vi', NULL, 0, 'A2IBC55I3VJTYIBG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(197, 'phuxxl', 'b0f8b3e58f093359fe1af416b5ea8ed6', 'thockute2022@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 12:22:10', '2024-12-13 12:22:45', 1734067330, 0, '14.244.147.124', 'e951454afc1c66b064948a96413fdaec', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/473.0.0.22.110;FBBV/636278666;FBDV/iPhone10,2;FBMD/iPhone;FBSN/iOS;FBSV/16.7.10;FBSS/3;FBCR/;FBID/phone;FBLC/vi_VN;FBOP/80]', NULL, 0, '2K3QCJH3QMSVGS25', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(198, 'taobadeokchx', '350ede4901587514d0ff53edaf937c15', 'luanlee2903@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 18:04:01', '2024-12-31 21:16:49', 1734087841, 1734957355, '113.185.105.232', 'beb520b1c4e9834c62b9ca566a654b85', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, 0, 'CBL7ANRFNQLCZAOP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(199, 'Tran Nha', '4dd2b9c770c4125c7b9256e767cc7326', 'Tranthanhnhalop93@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 19:53:44', '2025-01-01 15:30:27', 1734942144, 1735122836, '123.31.145.153', 'd10d89beb925ff80e7426eee508ff03b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'DN4WN5D25NGP3JMF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(200, 'Trilo', '62fcb42745ef2236d2f776053d83cf27', 'hoanthuat12345@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 20:07:45', '2025-01-01 21:13:56', 1734095265, 1735305878, '118.68.203.219', 'd8260b17929e58edd340ab442b413848', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '36K7YWNKZOXPDC2A', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(201, 'nhathoangdepzai', 'e807f1fcf82d132f9bb018ca6738a19f', 'nhathoangh52@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 21:43:34', '2024-12-13 21:44:20', 1734101014, 0, '42.116.120.52', 'ef9acabfd4c2eadb42949795b098a610', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'UCHGOKVHVPC4UFOM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(202, 'Nt', '3f27e6505377b4cbecbb51784c3fd929', 'npt2zz275@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 21:43:55', '2024-12-14 06:06:10', 1734101035, 1734131163, '123.22.19.190', 'c2a5a06528b5cd4f9b4e565270d0918e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'OAVBMQEJI5PAM6MM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(203, 'Minh huy', '698d51a19d8a121ce581499d7b701668', 'abc@gmai.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 21:59:18', '2024-12-13 21:59:37', 1734101958, 0, '171.236.57.2', '44cf70cc163ac235d538a2ddc94f7c61', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'JYHHXK4UZTLCRCJ6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(204, 'signmababy', '27c54b938d80d48e40138af757637485', 'ongtrumff@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-13 22:36:50', '2024-12-31 21:58:22', 1734699038, 1734871235, '125.212.158.116', '97dacffec29bb30058fbd93081b046b5', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '6BUR74OVBOFLLJMO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(205, 'Huy', '698d51a19d8a121ce581499d7b701668', 'duongvanbinh191184@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 07:56:38', '2024-12-14 08:43:48', 1734138311, 1734140610, '171.236.57.44', '6b07c0e98d4ec7172b60cfa51752c33c', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'EKQ5WMV2I6KC55LS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);
INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `otp`, `otp_limit`, `otp_token`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `token_2fa`, `limit_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(206, 'Minht1', '691d71837b6fbc64c4a85d3966f30071', 'minhgay1234567899@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 11:30:19', '2025-01-01 09:39:28', 1734150619, 1734150729, '171.243.50.250', 'f69c28cc9fc0a908d63436d0bda667e7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', NULL, 0, 'P67BZDIL42BX3OKJ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(207, 'Finally2008', '361caaa028d9277b064683041fbab52a', 'hop784424@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 14:45:00', '2024-12-18 13:44:50', 1734162300, 1734266878, '115.73.244.89', '6c3268a570c0beac91cee69e5c591be2', 50, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'QPPMMNXSACKN3NAM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(208, 'Bloopckoklopo', 'e2ac25188d65286af0fa8edd1dcd70a2', 'trongngan89@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 15:08:32', '2024-12-25 17:59:45', 1734163712, 1734519904, '115.73.151.169', 'ad9d02e474f8e45204580f208a70f20f', 300, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'O3M24NOTDOD63FNO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(209, 'doa2a6', '28f4db4cd630d59b5ef10ebd57c5895e', 'binne7892@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 15:57:18', '2024-12-14 16:27:33', 1734166638, 0, '14.172.240.86', '17ce3ed2b8e95fda34017907ec5e86d8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'FC7XIYRJL7YCYVNE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(210, 'Túi mù game', '72d26107e4498bc70438417420e5f0c4', 'lethithumai0101@gmail.com', NULL, '', 0, 0, 1, 0, NULL, 0, NULL, 0, '2024-12-14 16:17:03', '2024-12-22 23:06:27', 1734883545, 1734883545, '116.105.244.232', 'b9a0dbda042a8504185056db4c5b8f88', 0, 0, 6, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', NULL, 0, 'LQSHU56SF7CKEEMY', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(211, 'Skibidadopdop', 'f2725821f0e86b16c95095335aea3116', 'jack.vn.vn.vn.vn.vn@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 16:38:59', '2024-12-14 19:10:15', 1734169139, 1734169155, '113.188.172.163', '7077bf025281a6e07aa580aa6f08e04f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; CPH2669 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.104 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/486.0.0.127.109;]', NULL, 0, '3XBFIRCTIVL3YE25', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(212, '8txdtz', 'fcea920f7412b5da7be0cf42b8c93759', 'namvohoai530@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 17:11:56', '2024-12-14 17:33:17', 1734171116, 0, '116.96.16.215', 'da000fd289a4520fd386807008220c8c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'X4ZDTRCLDFHVLZUW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(213, '0964774087', '94d7e2cfb543bd62152f9d07cde45230', 'khang22061013@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 17:29:23', '2024-12-27 14:17:41', 1734172163, 1734172179, '14.165.115.145', '02bb6248db16a7299a34056c9104ca90', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '34Z5CAEQVQYRGVP3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(214, 'Namff', 'b11d3ff9315f6b1eaab479780d3bd2ab', 'vohoain21@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 17:34:15', '2024-12-14 18:26:43', 1734175491, 1734175575, '116.96.16.215', '72cb1892e49f10244c1abbe26a421eb0', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '3GIEYOLGDOSCKGQ6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(215, '123', '202cb962ac59075b964b07152d234b70', 'ywhsdbevwush@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 17:54:38', '2024-12-14 19:55:49', 1734173678, 1734173695, '104.28.254.75', '37fd954b4636d782b0ac6f7c140bad41', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', NULL, 0, 'UG7J5R33DA76ODNB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(216, 'Nguyenthaitri168', '250cf8b51c773f3f8dc8b4be867a9a02', 'phuoctung449@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 17:57:23', '2024-12-29 11:39:36', 1734173843, 1735379347, '123.22.36.184', '47cbf90db24d6fa53137ca5a4c896b9d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', NULL, 0, '6AUYMGAE5SV3XISH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(217, '120kbhn', '3e600186e1685f10879d9566628f44d1', 'dttt76687@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 18:08:36', '2024-12-20 20:09:14', 1734174516, 0, '14.227.70.81', 'e1dbe630302b69e1e0a947f8417d7190', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'QDNKZR6NU4RZHJHX', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(218, 'Huỳnh Quốc Thông', '5c8ff4032a49fd43ac61ce2eafbff586', 'thongmcyt@gmail.com', NULL, '', 0, 1, 0, 0, NULL, 0, NULL, 0, '2024-12-14 19:12:53', '2025-01-01 21:52:45', 1735743195, 1735184849, '2001:ee0:5679:f250:8022:c8d3:3672:8827', 'e40c7148e49728157e9ba3e242a24a98', 150425, 1800, 6, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'IYGXUPECJW2DFXNQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(219, 'Huynhmanhz8hVn', '0e4a059521622982a6586e53722ade99', 'thiendepzai16032010@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-14 23:19:22', '2024-12-31 23:09:44', 1734193162, 1734229363, '14.191.236.4', 'b29277b55ddc582c020f5562b2e0094f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'T2OHFDYSXFSQBUQ6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(220, 'KITT_RESET', 'b64a59cdf9b133c17550fc8ef7948d0d', 'qoadanh@gamil.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 08:55:27', '2024-12-31 21:28:03', 1734227727, 1735655269, '27.68.28.24', '66ae9e4daf731d4c9c0f2f4c2fdbede2', 21300, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; Z2453 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.104 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/487.0.0.65.218;]', NULL, 0, 'YNA4EELGTMXPJB44', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(221, 'hihihihu', 'b279a419b8d1799d61b65765d84c9d76', 'skibidi55555@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 09:27:39', '2024-12-15 09:27:40', 1734229659, 0, '113.163.53.199', 'b13a7fe3866386d81d65ab52666e015d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'PWM6I5UU4ZSJCLSY', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(222, 'tranthiyennhu', '46894aa5c85b06b44f4e11bc4491344b', 'vothitruonggiang5981@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 11:53:16', '2024-12-15 11:58:54', 1734238412, 1734238412, '42.118.115.208', 'bad26c1adb679090ab486848975b3947', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LBKV5OVYM6GETYYI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(223, 'Ebe Tú Anh', '1fe53a21096f84cdee24b22a9fa169d8', 'hahahahieibajan@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 12:05:43', '2024-12-15 12:06:04', 1734239143, 0, '42.112.229.14', '1e2a5a32d5588c38385ca8fa4713b3df', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.24.1-gn', NULL, 0, 'FFQPJMBAT3P4G3K5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(224, 'Tanios', '41aca0fb2092992275e497f52a58b4b3', 'vuthiloan278@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 12:25:36', '2024-12-30 12:17:10', 1735535822, 1735535822, '171.236.58.211', '57b35050e2671858ce967b7e6fe9f2619a87ed69ae9e13babdb587a2b7572ad8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/346.1.704810410 Mobile/15E148 Safari/604.1', NULL, 0, 'PU4QO4IMNOY67S6E', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(225, 'Anhquanne', '1ad03b18c9df03bf728211e3474d408a', 'Y54608593@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 15:15:49', '2024-12-29 11:46:53', 1734250549, 0, '171.234.15.220', '45ae1de7c790cae1eaf32b6e539c6fda', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.103 Mobile/15E148 Safari/604.1', NULL, 0, 'AKDBRFJPGBC7D6VZ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(226, 'Phammanhcuongokko', 'af93252d778ee21e7edc772cf9a0ff15', 'yxue8w73@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 15:19:23', '2024-12-15 15:19:39', 1734250763, 0, '125.235.234.123', 'b7fe4af987f198981bd2f6f686f48c24', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '35XGM4WAIYCVGWF3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(227, 'toanmm', 'd3dcb784227b459c822c0d1aeb6b1d70', 'minhtoannguyen0981@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 17:33:18', '2025-01-01 18:32:41', 1734258798, 1735543461, '125.235.237.101', 'b5ce67639ce07f6b92d27ce537632e69', 7200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', NULL, 0, 'OKC4FH2LFMQQ7VW2', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(228, 'Hoavuduc', '0bd2a6b720bf4cf39d97dcc21cad53be', 'hoavuduc03@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-15 20:10:37', '2024-12-27 21:00:36', 1734268237, 1734274610, '27.71.85.185', '247db1c5ff6f789973b25c5284a4bdda', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'BQBMAYYF4H3UJS2R', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(229, 'baobao', '07159c47ee1b19ae4fb9c40d480856c4', 'bao@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-16 13:00:45', '2025-01-01 19:34:06', 1734328845, 0, '14.172.101.36', '0f620ce618132d14aa78fd61ced85e2b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, 0, 'EXVZH5RYTSNWTI7C', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'bac1614f5b190666339690f9a4a8003b7b4e75e49a203b3730ad44f0e1ed3801', 1735394346),
(230, 'Tewtw55', '72d26107e4498bc70438417420e5f0c4', 'kientran3082010@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-16 20:50:48', '2024-12-16 20:52:07', 1734357048, 1734357075, '27.71.187.28', '2d6176fb2c0a92f27c63091c9cff26f8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'HOV42FT5DXYMRYZP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(231, 'Ramate', '2c79d30f454c54951af873ef3cbd64cc', 'le1412755@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-16 21:09:02', '2024-12-16 21:13:46', 1734358142, 0, '116.96.46.164', '06fcccc312e6ac6ded61ab7ac13f9c05', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; SM-A047F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.104 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/487.0.0.74.218;]', NULL, 0, 'FSJ3LXQMIODRZCUS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(232, 'Trường', 'd4dcebb48971b75c290c63cbc5df9e51', 'trunhhuynhduc@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-16 21:54:11', '2024-12-16 21:54:47', 1734360851, 0, '2001:ee1:ee03:d0b0:816f:540b:4417:7e4a', 'e8d089a7292bc5ce3b4cd283c6e8d054', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '4SACYSWFTVQ3YAWE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(233, 'yyxnflx', '97a921c5bcfd7482bbd83ab73e8234c8', 'tuanhahaha241@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-16 22:54:37', '2024-12-16 22:55:28', 1734364477, 0, '222.252.52.245', 'abba17f4bd0fd75f1e2cd23a35da18f3', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'SCBENQU5NZTWW45M', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(234, 'Dangtriet', 'df6f58808ebfd3e609c234cf2283a989', 'nguyentriet.dk2008@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 10:49:04', '2024-12-24 17:21:22', 1734835225, 1734836930, '14.176.90.46', 'f926945cced29aca7aae6df5d58605cd', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'Z5QRXAI4QW4H3H2F', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(235, 'Trung đẹp trai', 'e8f6edcb9ecd19a01fcdeb2a6bd8a93a', 'vantrung8557@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 11:00:53', '2024-12-17 19:38:39', 1734408053, 0, '115.76.55.230', '0697bab3aaa85d060a440e5f2d8e8df8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '552YIGHINCRIGQY4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(236, 'oopsboy1919', '2277bfc570f3832f5b933274e0f86023', 'oopsboy631@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 12:00:56', '2024-12-17 12:07:48', 1734412002, 1734412130, '171.250.13.246', '2fcb54efcb272303eab2134feed08309', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/346.1.704810410 Mobile/15E148 Safari/604.1', NULL, 0, 'HVPASYZV5TP7OLKL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(237, 'thucgakg2079', '781e5e245d69b566979b86e28d23f2c7', 'anhshinda@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 12:06:27', '2024-12-17 17:45:38', 1734432023, 1734432220, '171.243.52.197', '06ba30746175433aebcce6244fe87c2f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'IABIJTZOUSUCEBGV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(238, 'wesstubsdesty01', 'a1ea9a14da64ccf80aaaa06b867aea22', 'trantiendat19042011@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 12:08:29', '2024-12-18 17:58:26', 1734412109, 0, '116.97.108.144', 'cec946840bbf9dc4b084d42fc4d94c37', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'IO7L4MJ4N45R4R3B', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(239, 'Monster123', 'cd637243e74d4ab32d3db1be4c2ae94f', 'killerqueen200000@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 13:53:53', '2024-12-17 15:16:24', 1734418433, 1734423374, '42.113.158.255', '71505f478e484865217e6faa9eb9f4d9', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 7 Build/QKQ1.190910.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.104 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/487.0.0.74.218;]', NULL, 0, 'CHW6MXZ3SS4ZXQML', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(240, 'anhyeuem2053', '26bd676f5024dbe17dce0b240abfefc5', 'fuutokiss222@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 15:17:08', '2024-12-26 04:34:22', 1734478397, 1734845468, '118.68.20.132', 'ad1dcfbf579a72c6384f6e1173841043', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'FNRP7LACLWNKEZJ5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(241, 'Kpbao999', 'b4eb85269431edf2503cce20d9ba5861', 'Kieuquanbao150905@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 15:52:11', '2024-12-28 15:47:03', 1734523873, 1734915923, '2a09:bac5:d468:25c3::3c3:50', 'a2134befcff9ec298baa00431ec06f80', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '2O4ACLV2755WNLYG', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(242, 'ThanhDuy', '746ef16e79d0f3d21c1c1b78b7ecdf36', 'duymaithanh1@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 15:55:06', '2024-12-17 15:55:07', 1734425706, 0, '104.28.159.66', 'b4634685a14ac0a626bd1e7433ed08fc', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'JSDMPTDP6JIWODEY', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(243, 'Lehuydat', 'a25a1e389b3938ade2bc1dde4fd1c5bb', 'ledat30042012@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 17:39:26', '2024-12-19 06:25:03', 1734431966, 0, '171.251.234.15', '7dcdacfd3ba01f0a78e9233405227c36', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'YUFSRLMHFZNPQW7I', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(244, 'Phongbla', 'cc43a311a5874cfc018a61e544caad4b', 'xuanphongvd2012@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 17:40:04', '2024-12-18 21:10:01', 1734432004, 0, '113.176.11.57', '352092c740ff9331d54e3018fe95270b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'HJXSF3IYF3R3YYWK', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(245, 'Dangkhoi123t', 'db286ede661635616e5e487f121cabf6', 'khoiroblox90@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 17:59:52', '2024-12-25 08:07:40', 1734433192, 1734433429, '42.116.120.72', '64f27611dfed6b55974594a248b32d00', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36 OPR/86.0.0.0', NULL, 0, 'NL3SH5WR33RLER74', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(246, 'nindarua9', '46504d1da2cbb70994010ae54deb15b8', 'nguyentrongphu090520@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 18:59:14', '2025-01-01 10:02:11', 1734436754, 1734436917, '14.191.236.199', '8af62a4e9394c6466b055e70068640b6', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/125.0.6422.80 Mobile/15E148 Safari/604.1', NULL, 0, '6ROWDXXFN6JMENC2', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(247, 'Huuduy', '4d3490e591b1d4d1961e28a8c8f22ba5', 'da8239448@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 18:59:22', '2024-12-17 19:08:41', 1734436762, 0, '113.23.25.197', 'fa91371ac709fceaae11a6d2ee002c01', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'E2WP5F72YRB2U5IH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(248, 'huynhlovezata', '7b9d6f60089c034f81cedce96638c3c4', 'Taoban82@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 19:10:13', '2024-12-17 21:00:31', 1734437413, 1734444019, '14.191.155.29', 'ca2487eaa282034994e7daf3da66f9f7', 150, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'H5DDI3G4QOQILEWA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(249, 'synnnn1', 'c827c5881d66b3ccac34ec47495a3f6f', 'maisontran.208@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 21:34:31', '2024-12-25 15:42:41', 1735115922, 1735116145, '2405:4803:d3ef:7b0:1860:b173:f97a:f023', '1d8650d7b7ca6af17add05d666fe2559', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'KQILDYXOUURAQAWW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(250, 'Tindz112', '5652c8debf860d7a3847744398508963', 'myphuongphuong895@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 22:59:03', '2024-12-17 23:26:40', 1734451143, 1734451642, '2402:9d80:c2b:e26e:bc67:2d61:19c0:1996', 'dfa148baf17a1d54b385bd69bada9a9e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/476.1.0.36.110;FBBV/643246195;FBDV/iPhone10,2;FBMD/iPhone;FBSN/iOS;FBSV/15.6;FBSS/3;FBCR/;FBID/phone;FBLC/vi_VN;FBOP/80]', NULL, 0, 'CJQ5A5ZZ323BGV3U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(251, 'Peldora123', '65f58f0a0c9e038388f5b8eea9b44728', 'perudora123@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-17 23:11:58', '2024-12-19 19:04:22', 1734451918, 1734594611, '113.185.46.86', '49b4a6a1632da3602b3744e7ddc0ad1d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', NULL, 0, 'JPPEA4CMDE5Q5HAS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(252, 'Son12309', '1885e46b0ec4e787fad11754c7319b50', 'sonthoi12307@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-18 16:38:44', '2025-01-01 20:31:59', 1735711384, 1735711384, '115.76.60.22', '889306566bf0d55b21efd9892be6cbcf5230d9771ea36140570904409ca04035', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', NULL, 0, 'IWUL7DKFWKS64RNW', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(253, 'Ryo Naori', '664de991332d6cf8eddfbb54fc6a3193', 'okem3455@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-19 00:37:54', '2024-12-19 18:55:32', 1734543474, 0, '171.237.121.228', '3bed9c9bb223a162cb077d042aa25b8d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'KIKKC4RAGS5VCKVF', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '475a2666639fa6a66a1d7252aee504d3', 1734609362),
(254, 'Thái Hòa', '11a5d858264aeee9ea8e6a644d294e3d', 'thaihoadinh801@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-19 13:03:57', '2024-12-19 13:05:50', 1734588237, 0, '116.98.247.174', '0c285fd87511f0ac189e6cd25ac4f733', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'BNDVQ53KAQZOFUQV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(255, 'tranquocthien90', 'dfe521ae8ec993c42814efefef05956d', 'lamhongchau1986@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-19 20:31:43', '2024-12-19 20:34:22', 1734615103, 0, '171.243.53.227', '1974ff778707eded9f5bd72b3106b70f', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TI4GMUBBMIO3SAKD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(256, 'caiditconmemay', 'eb341820cd3a3485461a61b1e97d31b1', 'Scaothanh266@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-20 08:03:55', '2024-12-20 08:05:07', 1734656635, 0, '118.69.53.133', '80303554b8559863825c63675f32ed04', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '4N2WPHN4KGVT3UT4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(257, 'Kentran987', 'ebd46d46804311102164ee75e2640ddf', 'trannken1@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-20 22:29:31', '2024-12-21 17:58:05', 1734708571, 0, '2405:4802:bdfa:8af0:39a7:d4c3:db5c:7bb9', '95db5f997cfbb6a32be2e8931138e048', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'VDUDB6WB3AZU7CJJ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(258, 'Panda', '0bcb261f8b41dbc6236db4b73aebc3b3', 'nguyenthanhquang23032005@gmail.com', '', '0907033116', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-20 23:02:07', '2025-01-01 11:45:06', 1735443074, 1735446140, '2405:4802:7036:40e0:e81a:c8f3:2dc9:93b6', 'ac35c3a27a09e7c744d0e586164047a6fe90c89c364bc906819ebc23d16df7c9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, '2RARU3G4CYRVRQBO', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(259, 'khang40050', 'd9455f54df4d5924b1110be901fd8bf9', 'khongansang123@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-21 11:59:56', '2024-12-30 18:37:16', 1734757196, 1735485180, '2001:ee0:4ec5:4820:8a5a:6ff:fee6:7cab', '508824eaec23e7220e77d6dd1d3a2a3f', 170, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TAKKZU2FUM5VX6NI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(260, 'hoikhung14', '16a3f4886d94dc55f3abd4209a46be6e', 'hoikhung14@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-21 18:37:40', '2025-01-01 20:14:33', 1734781060, 1735737175, '171.236.48.162', 'caaef7e8da20715e78e448cf777c4e13', 3456, 3456, 2, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-M515F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/22.0 Chrome/111.0.5563.116 Mobile Safari/537.36', NULL, 0, 'R57E6MSCXZVHIQYU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(261, 'mrbaby1102', 'a88123deb901e383682ef37bf791c840', 'keanjrwill@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 00:13:49', '2024-12-30 20:38:53', 1734801229, 1734970055, '2405:4802:17ca:ee0:c9ec:714d:4514:a84', '022e947ad85c1b8c88316aa8a110c24b', 234, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', NULL, 0, 'K5RNHGBAE2KWAMXD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(262, 'Phong999', 'e2be1a765190b65b15e2054be34c0db8', 'cubo1443@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 05:20:24', '2024-12-23 08:48:18', 1734877513, 1734908342, '2001:ee0:5188:b880:a558:a8b:a704:200c', '64da3879ead43eb7df837a5f598f9fc3', 3000, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'BBNIFYMYUNCX2YOO', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(263, 'vinhthegamer123', 'f5bb0c8de146c67b44babbf4e6584cc0', 'minhbinh123456@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 09:25:19', '2024-12-24 13:22:48', 1734834319, 1735021362, '2405:4802:c35b:29f0:214a:bcea:74fa:79ba', 'be5d501e8a2670d14c9e7bc04fafac65', 2200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'K46AIEN6HNSRPSM3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(264, '87373737', 'f26462bf7d3fda7c9eda450d6ee5d459', 'anhquan170907@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 10:14:52', '2024-12-22 10:18:44', 1734837292, 0, '2405:4802:1bf4:e550:e1da:e6fd:3013:4320', '49284e80d50eeec8dc88b1711d23c494', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/22B91 [FBAN/FBIOS;FBAV/494.0.0.50.98;FBBV/675122596;FBDV/iPhone15,3;FBMD/iPhone;FBSN/iOS;FBSV/18.1.1;FBSS/3;FBID/phone;FBLC/vi_VN;FBOP/5;FBRV/676052077;IABMV/1]', NULL, 0, '2PSS2QDBQMDH5YIM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(265, 'Dương minh huy', '6512bd43d9caa6e02c990b0a82652dca', 'suu@gmai.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 14:42:12', '2024-12-22 15:03:07', 1734853332, 0, '171.236.57.2', '1580c2593e69cd84b81ef49163c295a1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, '6PHGUNT6VYLKG2OT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(266, 'Huydz', 'c4ca4238a0b923820dcc509a6f75849b', 'vvvvv@gmai.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 15:37:29', '2024-12-22 15:51:15', 1734856649, 1734857464, '171.236.57.181', '24efb7284d256df977c428e711437243', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'ZVPXRVHFS6XLJKLN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(267, 'giathan2k9', '96e79218965eb72c92a549dd5a330112', 'duongthanhprohack@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 19:35:00', '2024-12-22 19:35:34', 1734870900, 0, '2001:ee0:1b30:20e8:59ce:87e8:4644:62fa', 'bcaa91f8585ba02976899a6da23c8e15', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'PDMAMVXRYBZ3YR6C', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(268, 'Sonthoi12309', 'cf5141fd7c5d1f5901685e3e4464232a', 'songngu12309@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-22 21:43:08', '2024-12-28 17:40:47', 1735382310, 1735382334, '27.3.157.142', '2428a642c51288a69cff889e478c8334c9296e09a17c4359f740955846d58d9d', 150, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', NULL, 0, 'VXKNWZGUTP5S24GP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(269, 'Ghuy123494', '3936378cd08f5cfa477debe5bec69998', 'trinhgiahuygl@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-23 20:50:25', '2024-12-23 20:55:38', 1734961825, 1734962121, '112.197.134.157', '6aa4cb6dee72436b9baeec6ad9984ab2', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'EURXLT2NF3SLEZMQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(270, 'huyheha', '891ac5939c3450ce0de8b82c2ba6e9e8', 'giahuy0401nguyen2013@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 13:03:08', '2025-01-01 20:40:34', 1735738530, 1735738530, '113.23.76.226', '7f1e5e15692c94608173e467ad242714f9a9c5d748b2866269eb5e17f57da320', 650, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', NULL, 0, 'S3OIRMJMSRVS7ZQS', NULL, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(271, 'tin_hetcuu', '29fed803d1c44e1a052e63e51090550d', 'tinnam2k11@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 17:17:13', '2024-12-31 15:02:05', 1735035433, 0, '2001:ee0:4d1c:1ae0:fcec:296:3c6f:edf9', 'cbab8dd010e62fa53bf9aa07070120fa', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GGVF7VUZHDGHU7Z6', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(272, 'sikibiditoilet56789@gmail.com', '650ed7195ced7d286fd56f0f65415853', 'quocvuonghy05@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 18:11:53', '2024-12-29 08:35:52', 1735038713, 1735209853, '42.115.231.57', '0ad00729eb8ca24832cf57031202aa8a', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Safari/605.1.15', NULL, 0, 'YXKQBEZVGVRMAQYE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(273, 'Duy', '6512bd43d9caa6e02c990b0a82652dca', 'ccc@gmai.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 19:43:12', '2025-01-01 13:15:29', 1735711759, 1735712112, '171.236.56.213', 'c83ed4a3a1ab30a1d9c78d514042c0640a6ea2ac6f0fec3ddd6683b58059497d', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'SZSQCKFVIW5Z7JCN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(274, 'benbenben', '326e92a9256e069a5274ea29cfcb48a7', 'phamphuka46@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 23:10:16', '2024-12-25 17:33:20', 1735056616, 1735057965, '115.76.188.163', '76ea3acbb25722327b631e99ef213613', 50, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', NULL, 0, '5BZNWLMSTTYX7J5S', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(275, 'vtam47', 'a5f95226d8da557b2e1e61728e4e7ec1', 'vanm70876@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 23:31:51', '2024-12-28 01:17:54', 1735061924, 1735323453, '2001:ee0:4bdf:5600:a51f:318f:157:3dd4', 'abfa987d41ff551644576ae8404948c7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '7O66KI2QUSG2GM3Q', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(276, 'Vtam', 'a5f95226d8da557b2e1e61728e4e7ec1', 'nenguyenbao@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-24 23:47:02', '2024-12-25 00:01:24', 1735058822, 1735059640, '2001:ee0:4bdf:5600:a51f:318f:157:3dd4', 'e4cb2d1a48842b2c543ee9c9d2e1bbd5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'ZO6MGKADNYXHN7JH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(277, 'zaliscu25', 'a5f95226d8da557b2e1e61728e4e7ec1', 'wannabeyourbfforever@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 00:07:55', '2024-12-25 00:21:10', 1735060075, 1735060394, '2001:ee0:4bdf:5600:a51f:318f:157:3dd4', 'cfd30b17f1b0f9b82addc3fad698b589', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'EXHBG2ZME7UVOLNC', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(278, 'VanTam', 'a5f95226d8da557b2e1e61728e4e7ec1', 'jabjan@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 00:27:07', '2024-12-25 00:27:10', 1735061227, 0, '2001:ee0:4bdf:5600:a51f:318f:157:3dd4', 'b6aa27c630033443b459edeaf78c5711', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'OYFLERNQPY4IEWA7', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(279, 'hihihi', 'a5f95226d8da557b2e1e61728e4e7ec1', 'jswijwnwmais@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 00:34:15', '2024-12-25 00:34:18', 1735061655, 0, '2001:ee0:4bdf:5600:a51f:318f:157:3dd4', '575ec9d4f00f1ec0e3522a7082ead911', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LYL4BOPGGP5HVV7Z', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(280, 'Hoang2401', '0feb9049aca6d481801461b452a2c626', 'Nguyentuanhoang494@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 05:38:37', '2025-01-01 19:02:41', 1735546664, 1735547313, '2405:4802:a120:de30:7cea:f355:d1ee:81f1', '5ac76e8d4775fc7a6bd41c1db3d9e07e44b129c5338b248428b736e9fa8a75cb', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 'V2IHHVBWWQ2GARQR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(281, 'Baosuccak', '565f12e8e93c5e057e9ee93c4d368753', 'duyphung1145@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 09:03:25', '2024-12-25 09:03:50', 1735092205, 0, '116.98.249.66', 'dcdda4d9fc3e8ec4ac6d320d32fbab88', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '2QDCWN5X7BVOJ7ZE', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(282, 'Luan', '6ebe76c9fb411be97b3b0d48b791a7c9', 'minhluantv2024@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 09:43:01', '2024-12-26 18:30:42', 1735094581, 1735094976, '2405:4802:c260:a930:d54e:34d5:7e99:ef40', 'efdd48dd4d2e07ff785d1b7fb35c1bab', 100, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; 23106RN0DA Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/494.0.0.55.73;]', NULL, 0, 'JJDEXOA4BCRA4GDR', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(283, 'haiddoj', '02a189a3e3b0e8b0d927230d3223efba', 'luongvanban260379@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 10:42:06', '2024-12-25 10:46:46', 1735098126, 0, '14.232.101.22', 'e4fbaecb5976d892c41ec8c0875e295b', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'JRTRGIXQXRT7HOBD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(284, 'vtnnguien', 'b43e9ae29681f53e11adbd8d6c70965a', 'ngocnguien811@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 11:35:57', '2025-01-01 20:34:59', 1735101357, 1735738467, '14.191.63.241', 'b5cf3be6c4e69d99488754d192d8c3f3', 3620, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '4ORYXE5DBMC5XRLX', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(285, 'sang', 'a9f3f3bb197e412988694eba722af932', 'canhbodoi1986@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 13:03:33', '2024-12-27 22:40:52', 1735313272, 1735313416, '2001:ee0:54bf:5f10:f851:2db7:d443:8a46', '6cc11e07b29283a03c9232ba7260f58f', 4000, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'PU33M2USOD5CHFJ7', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(286, 'TamCR7', 'f53f12b39afa6468108404cf67d3cbe9', 'phuongtamc6@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 15:26:48', '2024-12-28 16:18:48', 1735115208, 0, '116.102.98.210', '53e8045f561ec80ded5dc9d7f8250a92', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; CPH2375 Build/TP1A.220905.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'QFJD5PROIUXNC7UL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(287, 'Hieu', '315eb115d98fcbad39ffc5edebd669c9', 'minhhieuhoang976@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 18:10:03', '2024-12-30 21:31:23', 1735565066, 1735565532, '58.187.228.43', 'ccbfff25ab2b83db52de9c4f3d8f2ec42a9df7b88ed8a391e73c20779b16d093', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'MPUR2H7GUZLZGVWT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(288, 'Accxinvl', '432f45b44c432414d2f97df0e5743818', 'hoang1472012@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 21:58:46', '2024-12-25 21:59:15', 1735138726, 0, '112.197.168.120', '0eff023335d97058c657d58465e025f9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G935S Build/R16NW; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/493.0.0.72.158;]', NULL, 0, 'PUH6YIPYZPZF7M6A', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(289, 'Nhatphatkoscam', '09b72df1e4b3c3f58732126c55475f19', 'nhatphatkoscam@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-25 22:01:23', '2024-12-25 23:45:20', 1735138883, 1735139232, '171.252.210.182', '113891ec35aa91dd0b32c76e24f1e19d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'WD2VC5URP74CEZ3Q', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(290, 'dungvip09', 'c638f05b271b0ce0019b09e786c813d4', 'ndi58217@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-26 09:24:37', '2024-12-30 21:47:11', 1735180804, 1735182147, '171.251.237.153', 'bdf3f276a987e601f9e32c09897162c8', 1656, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'EMQPVMTZLEGFASWB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(291, 'khoabebong', '0907b799dcf3db3d1d6f18cdf4474c1c', 'Khoakhang99@hotmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-26 17:29:17', '2024-12-31 07:31:38', 1735208957, 1735209782, '2001:ee0:4c39:770:31d8:df9f:64b7:1e1f', '290e6e17693b3744308ec2c0429df71d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, '6MSOA22R7MQRNMMH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(292, 'Tloikkk', '2debb651190fedff35a452b742911864', 'loicutes1tg@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-26 23:02:02', '2024-12-26 23:16:58', 1735228922, 1735229853, '171.253.143.166', 'e9e711c5305b0715cb089c449511784e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', NULL, 0, 'XN37DPNWLJYAKYXA', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(293, 'Ngkhanhtrong', 'd69c3062b1c79d0c932d5d9cbe40ccfa', 'quannguyen.010890@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-26 23:33:13', '2024-12-27 20:59:53', 1735230793, 0, '2001:ee0:52b1:cae0:2cc0:d4ba:8540:b4e4', 'bc9a52f139c9968c68ca78a3e620f850', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', NULL, 0, 'AUPS6E2M4ADBCMNT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(294, 'thndzs1tg', 'b5aac645c1b96f6b9d7cae60e96cd0fb', 'lethihue5076@gmaail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-26 23:45:38', '2024-12-31 16:45:28', 1735296799, 1735297004, '2405:4802:c078:2140:9df7:8f0a:c9ec:a532', '25fe9ef199130040cec0c410b7d32f72', 200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'V3TNG35EZI4OSR6B', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(295, 'Huynhthanhduc', '25f9e794323b453885f5181f1b624d0b', 'thanhduc.11791@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 09:04:28', '2024-12-27 09:08:30', 1735265068, 0, '2001:ee0:511a:a6b0:2d36:d89a:58f0:c6c5', '222ab8fc0a9ab994fc6002b82ac2d03c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'BXILPUVWDUEFX4YV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(296, 'Giahuyhehe', '3e0a6c1d2a17ef0629c85dd71b047f25', 'thonghlb@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 12:39:33', '2024-12-28 23:02:13', 1735277973, 0, '2001:ee0:465b:be10:5516:a8c3:d300:bc6e', '87a18775bb90a9c5e44b60ba46295b58', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'WZGUHV2CAOG5CSAU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(297, 'giahuy555', 'f3095b2b30ba70128d247f90246cd7d7', 'nguyenghuy0401@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 13:24:10', '2024-12-28 12:00:06', 1735305117, 1735361959, '2001:ee0:465b:be10:286d:7da6:5437:2682', '04d23e347519f566adf0a892c7f14c5c', 1000, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'WEW5DTDUQ2CMYC3R', NULL, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(298, 'bruh', 'c9aa789c00e2789351badd5d97097307', 'truongletruong92@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 17:40:48', '2025-01-01 09:36:10', 1735296048, 1735698577, '103.156.60.214', '0fee8cd1cc8537c59d5f6b12c1512459', 1200, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; CPH1825 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.136 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'Y22GGILHDE3RQ665', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(299, 'trungduy', '935f099f5e344faddbae2ad5d08b681a', 'jshsjjwh48@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 18:13:15', '2024-12-31 16:22:43', 1735297995, 0, '2001:ee0:513c:9f0:759d:f253:262a:ec19', '4271477ce07d9b953baf580a58767add', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TP52L6RK3XFO2X3P', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(300, 'khanh123', '3354045a397621cd92406f1f98cde292', 'anhyeuemnhat64@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 19:44:01', '2024-12-27 19:44:03', 1735303441, 0, '14.170.223.188', 'fab1a796a4934b7b5a545435d08f89d1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [FBAN/FBIOS;FBAV/488.0.0.46.102;FBBV/674915696;FBDV/iPhone9,2;FBMD/iPhone;FBSN/iOS;FBSV/15.8.3;FBSS/3;FBCR/;FBID/phone;FBLC/vi_VN;FBOP/80]', NULL, 0, 'K76JP2U7DLUIS3Q5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(301, 'GM_LAHAAH', '415f1612d0f5fd4261dee646b3c7b460', 'Giahungt70@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 20:57:38', '2024-12-27 20:58:15', 1735307858, 0, '27.65.96.216', '10d85758ec32499536b00f6106419429', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_8_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.6 Mobile/15E148 Safari/604.1', NULL, 0, 'Q7WE55Q5BUYIUBRZ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(302, 'Sikibididopdop', '25d55ad283aa400af464c76d713c07ad', 'anhtuanvodois@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 21:43:49', '2024-12-27 21:55:05', 1735310629, 0, '2405:4802:1546:afd0:cc33:777e:e514:4fe4', '571c0f7c2b5c3c5070a23da1aacef640', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '5TOCA3HE6XJ76XY5', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(303, 'Daliiuwb', 'c7ed380898707f2d264d31cef08bc27b', 'truong2010xinchaocacchau@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 22:10:50', '2024-12-30 17:33:34', 1735312250, 0, '171.251.237.32', '6fefb01b61bcfd5472d58da8d650bdc0', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; RMX3286 Build/SP1A.210812.016;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 Zalo android/24121776 ZaloTheme/light ZaloLanguage/vi', NULL, 0, 'S5O4VY2ZQGBHBKLQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(304, 'noob', 'aa6a3a930a85e2ade700e23c5820cdba', 'buih37880@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-27 23:06:36', '2024-12-27 23:11:01', 1735315596, 0, '171.236.154.236', 'c0476c1755d9490266eca0415564592c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'OTH55DRJRHOW7NSQ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(305, 'Uueiej', '210ed130ef5eeb4f76af5749c97e2355', 'tly967862@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 13:43:18', '2024-12-28 13:43:44', 1735368198, 0, '14.191.62.175', '24dc6979c4a371910d43c7401c67ff291790d2671f984a41413b8dc0651dba12', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'EQIEENEBQQ5VHN26', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(306, 'Gsvsue', '25d55ad283aa400af464c76d713c07ad', 'trungthitinh34@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 16:46:52', '2024-12-28 16:46:54', 1735379212, 0, '2001:ee0:540c:b520:d96a:6e3a:a780:3c', '0524d386e39c8a9fee52d61a68703f7faab90f43a04972e14c4e3d34439d489d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'TIP7VEPAEIRKDX3U', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);
INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `otp`, `otp_limit`, `otp_token`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `token_2fa`, `limit_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(307, 'Haidangh', 'e10adc3949ba59abbe56e057f20f883e', 'haidangnguyen6d@gmail.com', NULL, '', 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 17:30:07', '2024-12-29 10:34:05', 1735440313, 1735443223, '116.99.248.150', '595bc8af56b6fa0ed950093b81a8653c6cae872cdc7ceadd0f0a7b7b4a7ea6f8', 50, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; SM-A037F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, '47HZEP5QTI3Y7TIU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'a283927409a2730d133d4266c2d9089ca6ecf29f85c77442bf7cf4b12e1f5ade', 1735429828),
(308, 'bqp312012', 'fb141dfac70a9f40314db79fb0aa0d1b', 'buiqphuc312012@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 17:35:29', '2024-12-28 17:42:20', 1735382129, 0, '2405:4802:903b:7370:d951:69df:9f18:2f37', '2f1e51a9fa549eb263e00ae3bb927d09630896a84abe617ffb38243f853beea5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'QVLY3GSZILA6RNAP', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(309, 'Tri200310', 'f159ddb8eb4955ae6a1045a84cb385fa', 'tuongvitpt1982@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 17:59:28', '2024-12-29 10:27:47', 1735383568, 0, '2405:4802:723a:71a0:b8ce:7df9:3224:c1d7', 'a4faa5a897c236c574a2a2057d853addcc2c4f2fc45a4fc798ebc48925a55601', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'HD63JSFFOHGY7EDL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(310, 'Jdbsbsb', 'e125be4ffdcbbb67898a4614b946d8fc', 'shhihwvvw@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 18:02:41', '2024-12-28 18:02:43', 1735383761, 0, '116.99.252.163', '52ebc1946286f40791edb637a8539e82909770bdd3976a53426113ffc09aeb52', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; 2310FPCA4G Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'QJOPIT63JJ5KJDMU', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(311, 'huyhug', '2bcf39648d759b5effdbeead3735e415', 'dinhhuyhung22062008@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 18:13:20', '2024-12-28 18:19:43', 1735384400, 0, '2001:ee0:785c:7d60:f0f8:ab8:e618:e79', 'a406c6edbaeff7c9f9cc8d8957dfaa8aaee888c6e1289585d39783bc694ac776', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'QXANAJ7RUW7R7HEM', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(312, 'Hoangphuc05', 'a2290a8b98832a367bdd48ed16d54272', 'maihoangphuc808@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 19:38:43', '2025-01-01 18:57:19', 1735389523, 0, '113.176.50.74', '17c060e6587868389841692f485a58f63635499f9ba8d5a81a1afa1448c21cf6', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'LTIOSQ4CLMEIGB4J', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(313, 'Vegitoban1', '9c769299c4595799087d66a982db0f69', 'matheminh99@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 20:33:45', '2024-12-29 11:56:28', 1735448066, 1735448152, '116.99.252.163', 'd16f6899ecaba46bd79b8c68e8c4a62ff0014e808baa54db5befb38f5a796c19', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; 2310FPCA4G Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, '5XLJFVAQOZKLT5BH', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(314, 'khang2463', 'ed8a28691715bb2c99df7adb16265649', 'gia170932@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 20:40:48', '2024-12-31 12:42:50', 1735393248, 1735393337, '2405:4802:80a6:e9f0:28a5:4b1a:924a:daf4', 'f833841b1eb85306e850058cb95a6dd78085cfdb3742f2008ef9a4eaded0560a', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'QGCXSB7QYCPK7D4L', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(315, 'Chess', 'b016f48d898c745be5ef382254224582', 'tranmaigiabaochess@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-28 21:02:51', '2024-12-30 17:08:19', 1735553288, 1735553288, '14.227.191.2', 'f6726531c163921cc4c4270d31c58e33fbc3ae68a8097164421db36b9f7787b8', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'GXL5TVHS2KB6MRLX', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '7835a1b8ad6be7e3ba1dbf2d63fe7765241d0f7f3121a5f6324a6be56bffd69c', 1735394653),
(316, 'Haidangngh', 'aa613d639a14d3c2d7dfe4a79fabe52d', 'nguyenvanhaidang986@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-29 07:01:52', '2024-12-29 07:04:11', 1735430512, 0, '116.99.248.150', '14fd34a33d9d7c7aba838ee5807e9e37f535b0aecffa1bb52293b43b8e558de5', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; SM-A037F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'QE5G67HA65HWYUYC', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(317, 'blue7mene', '8e232be925fedad51ac4a88118fb034c', 'kakarotdzd@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-29 13:09:05', '2025-01-01 00:57:08', 1735452545, 0, '2405:4800:1f17:2600:ccdf:45b6:f0ba:70b9', '7cd1b5afea7af7d4ce082af5cec80aa6d79d6937e63e7cefa7b111a76b5bba6d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '72LVQGTKWJW7F67X', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(318, 'hvt001', 'bfda3e6dfa0e622837a05991b3b5693c', 'hoangthang31120@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-29 18:17:55', '2024-12-31 12:41:35', 1735623532, 1735623532, '2001:ee0:45f0:4ea0:a918:178f:32a7:5fe7', 'bffd55f5346bf3899e0b7ee66f017f4ac9f2073ff526096f95d16563667175b9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'BNCDIMZCDX4FBX5I', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(319, 'loliking', '1a5c7ba23b5a3d4d231e94af52bea5e9', 'tranhoangbaokhang03@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-29 19:43:01', '2024-12-29 19:45:55', 1735476181, 0, '2001:ee0:54ac:58c0:cdb5:1d95:b3ef:3703', '5253c8777cfd2d5db58f1c908a4fec2e98f7d008a1ae3036392c3d3670ca8da1', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'Z3E5M4W7ZALW4RXL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(320, '0788849384', '72856a721ca4f58471c9e5eb7d4ecfd4', 'vo8999054@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-29 22:13:19', '2024-12-29 22:17:22', 1735485199, 0, '103.199.57.171', 'b5e30efd085b23ffc2e4a41c94d41e3fbc0f476beeb94aa1ec101181f8a906d4', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'OTJ2S4F7BGT5PPAL', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(321, 'hsjshdhdhsheh', '377965bca5059557b61862a322964c05', 'uhdhshueueu@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-30 06:50:10', '2024-12-30 06:50:11', 1735516210, 0, '27.65.20.158', '0b2dd4f2efed48cd989acc302ce0d6838154a537f9aaa9fba4d6e9799fae628e', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'ECAIAVAN6GTQACBN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(322, 'Trnguyen26032011', '5b179be90660b25dcee7000aa7e3b158', 'trdung160105@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-30 19:40:58', '2025-01-01 21:24:19', 1735562458, 1735741429, '113.177.61.84', 'ce0e5c5322d28cd8188b9637097b806647dade46a369b5a59a5ff180aaae9238', 200, 2000, 4, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', NULL, 0, 'LQ5VSHUCPT5FTA52', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(323, 'Dangk9pt', '4bcbcd3eae7ef46935f3c16a652bbb7f', 'dangtran2k99@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-30 21:46:57', '2024-12-30 21:59:11', 1735570017, 1735570268, '171.225.204.34', '9606f578dffb60d554e870d239bf0198ac2bd6a52bff529cf81d5c39c45e12d7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-N916S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', NULL, 0, 'E7ZYV2SKX2EZ2C5K', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(324, 'Thien1152009', '2e4073652aa94b102ad0fdbb0381d151', 'hhhhhhdddsao@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-30 22:43:44', '2024-12-30 22:43:46', 1735573424, 0, '14.230.4.140', '440d0f0a6b2314e8ce8ec4b8e5a9114649935e6cc96769ca22221630ec83de32', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 12; vivo 1920 Build/SP1A.210812.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/494.0.0.55.73;IABMV/1;]', NULL, 0, 'SPPGP54AGWW3SFJI', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(325, 'Belyrobllox', '6635e181c9b910cdeb8ee67f75aba2a5', 'lephuong19872023@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 12:40:00', '2024-12-31 12:42:24', 1735623600, 0, '14.172.101.135', '3b070fcd8923a57224763a72d35819b7e03fc81f322491c084124bffa567e492', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, '447LPJEQNQHIJD23', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(326, 'hvt0011', 'bfda3e6dfa0e622837a05991b3b5693c', 'hoangthang311200@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 12:42:39', '2024-12-31 12:42:40', 1735623759, 0, '2001:ee0:45f0:4ea0:a918:178f:32a7:5fe7', '73a60db4a80c41b17f1628de3171f16e2a1c33f71125ef0947d2ceba4e504d17', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'ULSVH56RYK4G5CID', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(327, 'Nn10012007', '6c93a33394273098f3b25f8703a8c540', 'conmeongoc99@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 16:36:28', '2025-01-01 09:48:26', 1735637788, 1735638070, '171.228.122.231', 'f6bb9872778e831ac88ace53ec2d27409fca03d09849d5e22322f5a1b5b8516d', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; SM-A055F Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, 'UUARVPSCGWBHKIHX', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(328, 'bhhhhhhhhh', 'b1edde005f5a0a7180dfc4f92db5e2e0', 'hnhhhfrtty@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 18:52:45', '2024-12-31 18:52:54', 1735645965, 0, '103.238.70.162', '9aedc1036554238ce379c4791707d2c698265491a1be8a34a04c0eff0b027d46', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', NULL, 0, 'KNPHOP6BTDFVT6BZ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(329, 'Minh khang', '7faa8c68a139aa79a18ca971e9d53c45', 'sales@finitefashion.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 18:58:31', '2024-12-31 18:59:06', 1735646311, 0, '2405:4802:91ba:6060:b1a4:b9a:3f97:c7d5', '5cf20252f13e618bddc4a1eff03c3ba9211f29b09c769c1f9fa42a974ce8a022', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 14; SM-X510 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Safari/537.36 [FB_IAB/FB4A;FBAV/494.0.0.55.73;]', NULL, 0, '7SQRUXCZHJXKEUU3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(330, 'Tranhoanglong2022', 'fc97d0590d1b09824e256f25d63b8f5b', 'caotuanminh189@gmail.con', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2024-12-31 22:49:42', '2024-12-31 22:56:00', 1735660182, 0, '14.232.78.77', '0ea7c6a8d4b1e2c7ea2f311fc7c8ce0c34de5b679b35a23649ffa7813e8923c9', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, 'NT6NNYMMQIXZEPMD', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(331, 'caldelliit', '2bcf12dc76074803023a5f151345fb7d', 'sangtran112020@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 09:52:59', '2025-01-01 09:56:50', 1735699979, 0, '116.98.249.26', '6274d78826e8b6d5c0604d1f50b59369a6a82bb995c1a83647e9de5d534eadda', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'A522VP6BBMXZCCTN', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(332, 'sinhtung', '6e8459052dcd85ab82e61391ed2420c2', 'qle13545@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 10:42:06', '2025-01-01 19:19:11', 1735702926, 0, '14.191.158.150', '6e44de4e1fff477a3a343c57ca53a959407676eb11ac630c37f2e8337dd4881c', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, 0, 'DTXCXVJKE5FRJG7Y', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(333, 'nghia1111', '141617dc96b45f110959813032b1afc5', 'tn3363704@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 15:38:10', '2025-01-01 15:38:58', 1735720690, 0, '183.80.32.109', '9f61fe2e16476e18cbe51035b9459becaf67dd749864ce32fae2d48422b8ca16', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; 2201117SG Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/488.0.0.56.106;]', NULL, 0, '4BQ2EZGDEPG27VTB', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '5a89d26bc08e6ccdddfcb7d3c7d22d68ae4e38acdf0ce07ac80bd8deb19f65e6', 1735740754),
(334, 'Ghhj', '5565508b021c13108b5fcc441e7a7558', 'hoangle16112008@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 16:26:39', '2025-01-01 16:27:12', 1735723599, 0, '14.243.137.139', 'e86002061dcc42568c43b24faa15836a742dae7fcb07d64a6060b0c44b632ff7', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 13; TECNO KI5q Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36[FBAN/EMA;FBLC/vi_VN;FBAV/439.0.0.9.104;FBCX/modulariab;]', NULL, 0, '4D5447DTYLZIWP5A', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(335, 'Cobao123', 'a85ae2a38e853f7c4be2e2c6df80464b', 'phanphuuluutrongrung@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 19:24:30', '2025-01-01 19:25:14', 1735734270, 0, '116.98.243.183', '773d5ffc23f77f3ffec487b74b69d394f6f6444477ea644133478b8ad2bb59df', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'M27XU7WLJUKIDUZS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(336, 'Minhduong', '6822d0d8fdcb0143776aebaee3795968', 'm.duong202134@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 19:39:55', '2025-01-01 19:42:22', 1735735195, 0, '171.225.205.26', 'f3d3f66afe0dbb7f53f3494721b0672972e6edeae0eca030cea72313fb52e290', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'WFCSVHKIF54QADFV', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0),
(337, 'nghia12345', '141617dc96b45f110959813032b1afc5', 'nghiatn.210211@gmail.com', NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, '2025-01-01 21:13:50', '2025-01-01 21:45:36', 1735742096, 1735742721, '183.80.32.109', '6fc77ab8d28f913e3fc947e9acb9489b14ffa644be4111514e5445beffe0dd93', 1200, 103200, 1, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', NULL, 0, 'NIXERHXWS4IM44UE', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_ref`
--

CREATE TABLE `withdraw_ref` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `bank` varchar(255) DEFAULT NULL,
  `stk` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connect_api`
--
ALTER TABLE `connect_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `coupon_used`
--
ALTER TABLE `coupon_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dichvugame`
--
ALTER TABLE `dichvugame`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dichvu_groups`
--
ALTER TABLE `dichvu_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dichvu_history`
--
ALTER TABLE `dichvu_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Indexes for table `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transid` (`transid`);

--
-- Indexes for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sending`
--
ALTER TABLE `email_sending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_attempts`
--
ALTER TABLE `failed_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `ip_white`
--
ALTER TABLE `ip_white`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_tds_ttc`
--
ALTER TABLE `list_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_ref`
--
ALTER TABLE `log_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_tds_ttc`
--
ALTER TABLE `log_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nowpayments`
--
ALTER TABLE `nowpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `order_autofb`
--
ALTER TABLE `order_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tds_ttc`
--
ALTER TABLE `order_tds_ttc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_history`
--
ALTER TABLE `otp_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_pm`
--
ALTER TABLE `payment_pm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_squadco`
--
ALTER TABLE `payment_squadco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `service_otp`
--
ALTER TABLE `service_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_option`
--
ALTER TABLE `spin_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_email`
--
ALTER TABLE `task_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `BillCode` (`BillCode`);

--
-- Indexes for table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112247;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_service`
--
ALTER TABLE `category_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `connect_api`
--
ALTER TABLE `connect_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_used`
--
ALTER TABLE `coupon_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dichvugame`
--
ALTER TABLE `dichvugame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dichvu_groups`
--
ALTER TABLE `dichvu_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dichvu_history`
--
ALTER TABLE `dichvu_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sending`
--
ALTER TABLE `email_sending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_attempts`
--
ALTER TABLE `failed_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_white`
--
ALTER TABLE `ip_white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `list_tds_ttc`
--
ALTER TABLE `list_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `log_ref`
--
ALTER TABLE `log_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_tds_ttc`
--
ALTER TABLE `log_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nowpayments`
--
ALTER TABLE `nowpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_autofb`
--
ALTER TABLE `order_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_tds_ttc`
--
ALTER TABLE `order_tds_ttc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_history`
--
ALTER TABLE `otp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_paypal`
--
ALTER TABLE `payment_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_pm`
--
ALTER TABLE `payment_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_squadco`
--
ALTER TABLE `payment_squadco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_autofb`
--
ALTER TABLE `rate_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server2_autobank`
--
ALTER TABLE `server2_autobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_order`
--
ALTER TABLE `service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_otp`
--
ALTER TABLE `service_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_option`
--
ALTER TABLE `spin_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `store_fanpage`
--
ALTER TABLE `store_fanpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_email`
--
ALTER TABLE `task_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1690;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
