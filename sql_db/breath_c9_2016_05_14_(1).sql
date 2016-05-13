-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2016 at 06:30 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `breath`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE IF NOT EXISTS `authority` (
  `role_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_long_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_billing_address` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_shipping_address` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_tax_code` bigint(30) NOT NULL,
  `customer_credit_limit` decimal(30,2) NOT NULL,
  `customer_current_credit` bigint(20) NOT NULL DEFAULT '0',
  `customer_payment_term` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(4) NOT NULL,
  `customer_contact_person_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_contact_person_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_contact_person_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_create_datetime` datetime NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `Customer_staff` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_long_name`, `customer_billing_address`, `customer_shipping_address`, `customer_tax_code`, `customer_credit_limit`, `customer_current_credit`, `customer_payment_term`, `customer_phone_number`, `staff_id`, `customer_contact_person_name`, `customer_contact_person_phone_number`, `customer_contact_person_email`, `customer_status`, `customer_create_datetime`) VALUES
(1, 'Nguyen Hai Phong', 'Phong Nguyen VJS', '24 Banh Van Tran; Tan Binh District, Ho Chi Minh City; Vietnam', '17 Le Duan; Ho Chi Minh City; Vietnam', 2312323452, '500000.00', 0, 'Net 30', '202-555-0194', 3, 'Hoang Hong Hanh', '+84 942444018', 'abc@gmail.com', 'Deleted', '0000-00-00 00:00:00'),
(2, 'Anh Tran', 'Cong ty TNHH Anh Tran', '42 Ngo Be; Ho Chi Minh City', '105 Cach Mang Thang Tam; Ho Chi Minh City', 5801282228, '234324.00', 0, 'Net 30', '1900 654 321', 3, 'Tran Ha Thanh', '+84 93243561', 'trg@outlook.com.vn', 'Deleted', '0000-00-00 00:00:00'),
(3, 'Tamy Hotel', 'Cong ty TNHH Tamy Tran', '18 Nguyen Tri Phuong;Can Tho;Vietnam', '490 An Duong Vuong;Dong Thap;Vietnam', 5801282342, '1133232.00', 0, 'Net 50', '202-555-0109', 3, 'Tran Hoang Yen', '+84 934840124', 'trg@outlook.com.vn', 'Active', '0000-00-00 00:00:00'),
(4, 'Lam Sai Gon Hotel', 'Cong ty TNHH Lam Sai Gon Hotel', '60 Ngo Be; Ho Chi Minh City', '47 Long Hung; Ho Chi Minh City', 3401282228, '513234.00', 0, 'Net 30', '202-555-0137', 8, 'Tran Ha My', '+84 90065002', 'trg@outlook.com.vn4', 'Deleted', '0000-00-00 00:00:00'),
(5, 'Thanh Thuy', 'Thanh Thuy Hotel & Restaurant', '26 Nguyen Thi Minh Khai; Ho Chi Minh City', '42 Mac Dinh Chi; Ho Chi Minh City', 5823482228, '12312312312.00', 0, 'Net 30', '202-555-0109', 8, 'Pham My Duyen', '+84 123535355', 'trg@outlook.com.vn5', 'Deleted', '0000-00-00 00:00:00'),
(6, 'Tuan Anh', 'Cong ty TNHH Tuan Anh', '19 Nam Ky Khoi Nghia;Binh Phuoc;Vietnam', '56 Phan Nhu Thach;Dong Thap;Vietnam', 1231282228, '1312314524.00', 0, 'Net 30', '202-555-0131', 8, 'Le Song Anh Thu', '+84 957302423', 'trg@outlook.com.vn', 'Suspended', '0000-00-00 00:00:00'),
(7, 'Phong Be', 'Phong Be VJS', '20 Co Giang; Ho Chi Minh City', '149/33A6 Banh Van Tran; Ho Chi Minh City', 5801273338, '67867867.00', 0, 'Net 40', '202-555-0131', 8, 'Nguyen Le Huu Tam', '+84 934512422', 'trg@outlook.com.vn7', 'Deleted', '0000-00-00 00:00:00'),
(8, 'Cong Anh', 'Cong ty TNHH Cong Anh', '120 Dien Bien Phu;Thua Thien-Hue;Vietnam', '11 Tan Thanh;Thanh Hoa;Vietnam', 5801374449, '67867.00', 0, 'Net 15', '202-555-0109', 9, 'Pham Viet Long', '+84 945624450', 'trg@outlook.com.vn', 'Active', '0000-00-00 00:00:00'),
(9, 'Cuong Nang', 'Phang Nang Cuong VJS', '40 Cong Hoa;Phu Tho;Vietnam', '60 Tran Hung Dao;Da Nang;Vietnam', 7801282228, '786756.00', 0, 'Net 40', '202-555-0128', 9, 'Tran Cong Tuan', '+84 932484019', 'trg@outlook.com.vn', 'Active', '0000-00-00 00:00:00'),
(10, 'Forrest   ', 'Forrest International', '49 Cong Hoa  ;Binh Duong;Vietnam', '90 Phu Dong Thien Vuong;La Rioja;Argentina', 6901282228, '464645654.00', 12312, 'Net 40', '202-555-0178', 9, 'Nguyen Bich Hoa   ', '+84 92451241   ', 'trg.12@outlook.com.vn', 'Suspended', '0000-00-00 00:00:00'),
(11, 'Thu Thuy', 'Thuy Thuy Restaurant', '49 Truong Trinh;Can Tho;Vietnam', '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam', 4571282228, '45647897.00', 0, 'Net 15', '+1-202-555-0137', 9, 'Pham Minh Ngoc', '+84 93451242', 'trg@outlook.com.vn', 'Active', '0000-00-00 00:00:00'),
(12, 'Tuan Hung', 'Cong ty TNHH Tuan Hung', 'RMIT Viet Nam;Quang Tri;Vietnam', 'RMIT Australia;New South Wales;Australia', 1234282228, '7573522345.00', 0, '123123', '+1-202-555-0131', 9, 'Pham Diem Thuy', '+84 93552242', 'trg@outlook.com.vn', 'Suspended', '0000-00-00 00:00:00'),
(13, 'ABC ', 'ABC Company', '123 Nguyen Thai Binh;Vinh Long;Vietnam', '12 Cu Chi;Vinh Long;Vietnam', 23123131, '123.00', 0, 'Net 15', '+1-202-555-0109', 5, 'Tran Thanh Tung', '093241223', 'thanhtung@yahoo.com', 'Active', '0000-00-00 00:00:00'),
(14, 'Vinpearl', 'VinGroup', '123 abc street;Ho Chi Minh;Viet Nam', '45 Thai Binh;Nha Trang;VIet Nam', 23123131123, '123.00', 0, '123123', '+1-202-555-0128', 5, 'Pham Hong Thai', '023412344', 'thai.pham@vingroup.com', 'Suspended', '0000-00-00 00:00:00'),
(15, 'qeqwe', 'qweqwe', 'q13123;123123;qweqwe', '1231;1231;12312', 123123123123, '123123.00', 0, '1231233', '+1-202-555-0131', 5, '123', '1231', '231231', 'Deleted', '0000-00-00 00:00:00'),
(16, 'Test', 'Test Long', 'Test Street;HCM;Vietnam', 'Te;T;T', 99999999, '50000000.00', 0, 'Te', '202-555-0131', 5, 'TestCP', '0909090909', 'Test@gmail.com', 'Deleted', '0000-00-00 00:00:00'),
(17, 'Cuong Anh', 'Tran Cuong Anh VJS', '124 Nguyen Van Linh;Ho Chi Minh;Vietnam', 'abc street;Dong Nai;Vietnam', 321321321, '1000000.00', 0, 'Net 15', '+1-202-555-0109', 1, 'Tuan Anh Tran', '0123456789', 'tuananh@tr.vn', 'Suspended', '0000-00-00 00:00:00'),
(18, 'Lam', 'Cong ty TNHH Lam ltd', '12 Ngo Be;HCM;Viet nam', '60 Cong Hoa;HCM;Viet Nam', 214214241, '10000000.00', 0, 'Net 30', '202-555-0128', 2, 'Hoang', '093422441', 'abc@g.com', 'Deleted', '0000-00-00 00:00:00'),
(19, 'Test', 'Lams', 'TE;Ain Defla;Algeria', 'TEst;Tv;Te', 33333, '3452.00', 0, 'Net 30', '202-555-0128', 2, 'TEstT', '2345323453', 'dlam@gmail.com', 'Deleted', '0000-00-00 00:00:00'),
(20, 'TEst', '22', 'TEst;Ho Chi Minh;Vietnam', 'TEst;Ho Chi Minh;Vietnam', 1234567890, '22222.00', 0, '123123', '123456789098765', 9, 'TEst', '1234567890', 'TEst@gmail.com', 'Deleted', '0000-00-00 00:00:00'),
(21, 'TEst', 'TEstTEstTEst', 'TEst;Ho Chi Minh;Vietnam', 'TEst;Ho Chi Minh;Vietnam', 234567, '2345.00', 0, '123123', '234533333', 6, 'TEst', '234567890', 'TEst@gmail.com', 'Deleted', '2016-05-12 03:19:17'),
(22, 'Test', 'Test', 'Test;Ho Chi Minh;Vietnam', 'Test;Ho Chi Minh;Vietnam', 11111123456762, '23452.00', 0, 'Te', '342345678909', 7, 'Test', '234567832', 'Test@gmail.com', 'Active', '2016-05-12 10:27:05'),
(23, 'TestEdited', 'etete', 'TestEdited;Ho Chi Minh;Vietnam', 'TestEdited;Ho Chi Minh;Vietnam', 9223372036854775807, '23443.00', 0, 'Net 40', '23456782', 2, 'TestEdited', '2345234234', 'TestEdited@gmail.com', 'Active', '2016-05-12 10:31:26'),
(24, 'TestEdited', 'TestEdited', 'TestEdited;Ho Chi Minh;Vietnam', 'TestEdited;Ho Chi Minh;Vietnam', 234231, '22222.00', 0, 'Net 50', '22222222', 3, 'TestEdited', '234333333333', 'TestEdited@gmail.com', 'Suspended', '2016-05-12 10:35:33'),
(25, 'QWEQWE', 'EWQEQWEW', 'QWEQEQEQWE;Ho Chi Minh;Vietnam', 'qweqweq;Ho Chi Minh;Vietnam', 312312312, '1231231.00', 0, '123123', '4131232312', 5, 'dadasdqeqw', '123131231', 'adada@qeqw.ee', 'Active', '2016-05-13 16:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_create_date` datetime NOT NULL,
  `order_close_date` datetime DEFAULT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `order_net_total` int(50) NOT NULL,
  `order_tax` int(50) NOT NULL,
  `order_total` bigint(30) NOT NULL,
  `order_shipping_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default street; default city; default country',
  `order_reference` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `customer_order_id` (`order_id`),
  KEY `User_Order` (`user_id`),
  KEY `customer_order` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `user_id`, `order_create_date`, `order_close_date`, `order_status`, `order_note`, `customer_id`, `order_net_total`, `order_tax`, `order_total`, `order_shipping_address`, `order_reference`) VALUES
(1, 3, '2015-12-24 00:00:00', NULL, 'Deleted', NULL, 1, 900000, 0, 9898978900000, 'default street; default city; default country', 0),
(2, 1, '2016-03-23 12:58:54', '0000-00-00 00:00:00', 'Deleted', '', 1, 0, 0, 24570000, 'default street; default city; default country', 1),
(3, 6, '2016-05-13 23:53:41', '0000-00-00 00:00:00', 'Deleted', 'Test', 1, 0, 0, 4013870000, '17 Le Duan;;', 2),
(4, 1, '2016-03-23 12:28:53', '0000-00-00 00:00:00', 'Deleted', '', 1, 0, 0, 0, 'default street; default city; default country', 0),
(5, 1, '2016-03-23 13:13:59', '0000-00-00 00:00:00', 'Deleted', '', 10, 0, 0, 6300000, 'default street; default city; default country', 0),
(6, 1, '2016-03-23 13:14:33', '0000-00-00 00:00:00', 'Processed', '', 10, 0, 0, 6300000, 'default street; default city; default country', 0),
(7, 1, '2016-04-13 03:55:08', '0000-00-00 00:00:00', 'Deleted', '', 3, 0, 0, 374640000, 'default street; default city; default country', 0),
(8, 1, '2016-03-23 14:21:31', '0000-00-00 00:00:00', 'Shipped', '', 3, 0, 0, 23625000, 'default street; default city; default country', 0),
(9, 1, '2016-04-12 20:47:52', '0000-00-00 00:00:00', 'Processed', '', 6, 0, 0, 0, 'default street; default city; default country', 0),
(10, 1, '2016-04-13 03:13:20', '0000-00-00 00:00:00', 'Processed', 'TEST LAM', 7, 0, 0, 26599998, 'default street; default city; default country', 0),
(11, 1, '2016-05-13 05:44:26', '0000-00-00 00:00:00', 'Shipped', 'Test', 2, 0, 0, 158235000, '105 Cach Mang Thang Tam;;', 0),
(12, 1, '2016-05-13 23:58:09', '0000-00-00 00:00:00', 'Converted F', '2222', 3, 198000000, 9900000, 207900000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(13, 1, '2016-04-18 23:28:10', '0000-00-00 00:00:00', 'Converted F', 'TEst123124124', 6, 72000000, 3600000, 75600000, 'default street; default city; default country', 0),
(14, 1, '2016-04-18 23:33:58', '0000-00-00 00:00:00', 'Converted F', 'TEst213123', 6, 72000000, 3600000, 75600000, 'default street; default city; default country', 5),
(15, 1, '2016-04-18 23:34:22', '0000-00-00 00:00:00', 'Converted F', 'TEst213123', 6, 72000000, 3600000, 75600000, 'default street; default city; default country', 5),
(16, 9, '2016-05-12 01:54:20', '0000-00-00 00:00:00', 'Converted F', '53533553535', 3, 1998000000, 99900000, 6293700000, '490 An Duong Vuong;Dong Thap;Vietnam', 4),
(17, 1, '2016-04-18 23:37:56', '0000-00-00 00:00:00', 'Shipped', '1312312312321231212312313123', 4, 773660229, 38683011, 812343240, 'default street; default city; default country', 0),
(18, 1, '2016-05-11 18:49:08', '0000-00-00 00:00:00', 'Shipped', 'efef', 3, 34800000, 1740000, 36540000, '490 An Duong Vuong;;', 0),
(19, 1, '2016-05-01 01:35:51', '0000-00-00 00:00:00', 'Processed', 'asdsadsadadasdad', 8, 1041399926, 52069996, 1093469922, '11 Tan Thanh;Vinh Long;Vietnam', 7),
(20, 1, '2016-05-13 23:57:51', '0000-00-00 00:00:00', '', 'testttttttttttttttt', 3, 621000000, 42600000, 663600000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(21, 1, '2016-05-13 23:49:46', '0000-00-00 00:00:00', '', 'testttttttttttttttt', 3, 621000000, 42600000, 663600000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(22, 1, '2016-05-11 18:53:34', '0000-00-00 00:00:00', 'Processed', '123123123123qewqeqweqwewq', 3, 396000000, 26100000, 396000000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(23, 1, '2016-05-01 01:55:18', '0000-00-00 00:00:00', 'Processed', 'adsadasdsad', 13, 279232553, 13961628, 293194181, '12 Cu Chi;Portuguesa;Venezuela', 0),
(24, 1, '2016-05-03 23:48:32', '0000-00-00 00:00:00', 'Processed', 'qweqeqweqweeqweqe', 10, 108000000, 5400000, 113400000, '90 Phu Dong Thien Vuong;La Rioja;Argentina', 0),
(25, 1, '2016-05-04 11:31:30', '0000-00-00 00:00:00', 'Processed', '', 8, 8000000, 400000, 8400000, '11 Tan Thanh;Thanh Hoa;Vietnam', 0),
(26, 1, '2016-05-04 12:23:07', '0000-00-00 00:00:00', 'Processed', '', 17, 16000000, 800000, 16800000, 'abc street;Dong Nai;Vietnam', 0),
(27, 1, '2016-05-04 12:35:05', '0000-00-00 00:00:00', 'Shipped', '', 9, 48000000, 2400000, 50400000, '60 Tran Hung Dao;Da Nang;Vietnam', 0),
(28, 1, '2016-05-04 12:42:29', '0000-00-00 00:00:00', 'Processed', '', 8, 40000000, 2000000, 42000000, '11 Tan Thanh;Thanh Hoa;Vietnam', 0),
(29, 1, '2016-05-04 12:55:10', '0000-00-00 00:00:00', 'Shipped', '', 6, 16000000, 800000, 16800000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(30, 1, '2016-05-04 13:02:08', '0000-00-00 00:00:00', 'Shipped', '', 13, 16000000, 800000, 16800000, '12 Cu Chi;Vinh Long;Vietnam', 0),
(31, 1, '2016-05-04 13:22:52', '0000-00-00 00:00:00', 'Processed', '', 8, 2244244, 112212, 2356456, '11 Tan Thanh;Thanh Hoa;Vietnam', 0),
(32, 1, '2016-05-04 13:26:29', '0000-00-00 00:00:00', 'Processed', '', 6, 4502222, 225222, 4727444, '56 Phan Nhu Thach;Dong Thap;Vietnam', 23),
(33, 1, '2016-05-04 13:38:52', '0000-00-00 00:00:00', 'Shipped', '', 9, 32000000, 1600000, 33600000, '60 Tran Hung Dao;Da Nang;Vietnam', 0),
(34, 1, '2016-05-04 14:14:18', '0000-00-00 00:00:00', 'Shipped', '', 11, 96000000, 4800000, 100800000, '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam', 0),
(35, 1, '2016-05-11 16:28:01', '0000-00-00 00:00:00', 'Deleted', 'Lam Created Test.', 3, 1111, 111, 1222, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(36, 1, '2016-05-11 16:34:43', '0000-00-00 00:00:00', 'Deleted', 'Lam Test', 3, 12221, 1222, 13443, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(37, 1, '2016-05-11 16:41:02', '0000-00-00 00:00:00', 'Deleted', 'TGest', 3, 77000000, 3850000, 80850000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(38, 1, '2016-05-11 16:44:54', '0000-00-00 00:00:00', 'Deleted', 'r', 6, 165000000, 8250000, 173250000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(39, 1, '2016-05-11 16:55:09', '0000-00-00 00:00:00', 'Deleted', 'TEst', 3, 55000000, 2750000, 57750000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(40, 1, '2016-05-11 16:57:00', '0000-00-00 00:00:00', 'Deleted', '', 8, 4500000, 225000, 4725000, '11 Tan Thanh;Thanh Hoa;Vietnam', 0),
(41, 1, '2016-05-11 17:20:08', '0000-00-00 00:00:00', 'Deleted', 'T', 3, 44000000, 2200000, 46200000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(42, 9, '2016-05-11 17:30:44', '0000-00-00 00:00:00', 'Processed', 'Teer', 6, 33000000, 1650000, 34650000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(43, 9, '2016-05-11 18:08:05', '0000-00-00 00:00:00', 'Deleted', '', 3, 7000000, 350000, 7350000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(44, 1, '2016-05-11 18:25:29', '0000-00-00 00:00:00', 'Deleted', 'T', 3, 99000000, 4950000, 113400000, '490 An Duong Vuong;Dong Thap;Vietnam', 0),
(45, 1, '2016-05-11 19:19:53', '0000-00-00 00:00:00', 'Deleted', '', 6, 18000000, 900000, 217350000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(46, 9, '2016-05-12 01:53:35', '0000-00-00 00:00:00', 'Deleted', 'Test', 6, 3500000, 350000, 3850000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(47, 9, '2016-05-12 02:22:27', '0000-00-00 00:00:00', 'Processed', 'tEST lAM', 8, 20000000, 1000000, 21000000, '11 Tan Thanh;Thanh Hoa;Vietnam', 26),
(48, 9, '2016-05-12 02:42:40', '0000-00-00 00:00:00', 'Processed', 'Test', 6, 2147483647, 333300000, 6999300000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(49, 9, '2016-05-12 02:44:16', '0000-00-00 00:00:00', 'Processed', 'Test', 6, 36000000, 1800000, 37800000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(50, 9, '2016-05-12 02:45:23', '0000-00-00 00:00:00', 'Processed', '', 11, 132000000, 6600000, 138600000, '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam', 28),
(51, 9, '2016-05-12 02:49:58', '0000-00-00 00:00:00', 'Processed', 'Test', 6, 44000000, 2200000, 46200000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(52, 9, '2016-05-12 02:51:16', '0000-00-00 00:00:00', 'Processed', '', 3, 9000000, 450000, 9450000, '490 An Duong Vuong;Dong Thap;Vietnam', 29),
(53, 1, '2016-05-12 10:44:59', '0000-00-00 00:00:00', 'Processed', '', 6, 44000000, 2200000, 46200000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(54, 1, '2016-05-12 10:47:07', '0000-00-00 00:00:00', 'Processed', 'testfihlkjlk', 2, 1092720000, 54636000, 1147356000, '105 Cach Mang Thang Tam;;', 10),
(55, 1, '2016-05-12 12:21:04', '0000-00-00 00:00:00', 'Processed', '', 6, 66000000, 3300000, 69300000, '56 Phan Nhu Thach;Dong Thap;Vietnam', 0),
(56, 1, '2016-05-14 00:55:22', '0000-00-00 00:00:00', 'Processed', '', 9, 29000000, 1450000, 30450000, '60 Tran Hung Dao;Da Nang;Vietnam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `Invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category_id` int(11) NOT NULL DEFAULT '1',
  `item_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_unit_of_measurement` set('pcs') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pcs',
  `item_expiry_period` datetime DEFAULT NULL,
  `item_cost` decimal(20,0) NOT NULL,
  `item_unit_price` decimal(20,0) NOT NULL,
  `item_power` double(11,2) DEFAULT NULL,
  `item_power_unit` char(5) COLLATE utf8mb4_unicode_ci DEFAULT 'kW',
  `item_phase` int(1) DEFAULT '1',
  `item_voltage_low` double(11,2) DEFAULT NULL,
  `item_voltage_high` double(11,2) DEFAULT NULL,
  `item_frequency` double(11,2) DEFAULT NULL,
  `item_diameter` double(10,2) DEFAULT NULL,
  `item_capacity` double(11,2) DEFAULT NULL,
  `item_area` double(10,2) DEFAULT NULL,
  `item_description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_VAT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_vendor` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_manufacturer` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_quantity` double(20,2) NOT NULL,
  `item_allocated_to_customer_order` decimal(20,2) NOT NULL,
  `item_status` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_photo` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_create_datetime` datetime NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_item_category` (`item_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_category_id`, `item_name`, `item_unit_of_measurement`, `item_expiry_period`, `item_cost`, `item_unit_price`, `item_power`, `item_power_unit`, `item_phase`, `item_voltage_low`, `item_voltage_high`, `item_frequency`, `item_diameter`, `item_capacity`, `item_area`, `item_description`, `item_VAT`, `item_vendor`, `item_manufacturer`, `item_quantity`, `item_allocated_to_customer_order`, `item_status`, `item_photo`, `item_create_datetime`) VALUES
('000000222', 1, 'Pump water', 'pcs', '2016-04-11 00:00:00', '10000', '1111', 12.00, 'kwh', 12, 12.00, 12.00, 12.00, 112.00, 12.00, 122.00, 'Description', '10%', 'Pump VJS', 'Black eyes', 1212.00, '0.00', 'Active', 'pump2.jpg', '0000-00-00 00:00:00'),
('011012', 1, 'Intellflo Pumps', 'pcs', '0000-00-00 00:00:00', '2000000', '3500000', 3.20, 'kW', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'VFD Drive Pool pump', '10%', 'Nguyen Kim', 'Toshiba', 20.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('011516', 1, 'Whisperflo Pumps', 'pcs', NULL, '1000000', '3000000', 3.00, 'HP', NULL, 203.00, 230.00, NULL, NULL, NULL, NULL, 'PMP WFE-12 Full rated Energy efficient', '5%', 'Phong Vu', 'Hitachi', 30.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('22011', 1, 'Whisperflo Pumps', 'pcs', NULL, '1000000', '4000000', 5.00, 'HP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Whisperflo XP Pumps', '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('2433', 1, 'Test', 'pcs', '0000-00-00 00:00:00', '500004', '5000', 2.00, 'kW', 1, 1.00, 2.00, 1.00, 3.00, 1.00, 4.00, 'Test Lam', '4', 'W', 'TEst', 333.00, '0.00', 'Active', '', '0000-00-00 00:00:00'),
('247928', 1, 'Whisperflo Pumps', 'pcs', NULL, '2000000', '2244244', 1.00, 'HP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Deleted', NULL, '0000-00-00 00:00:00'),
('340056', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '2000000', '550000', 0.75, 'HP', 1, NULL, 220.00, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('340057', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '200000', '5555000', 1.00, 'HP', 1, NULL, 220.00, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('340058', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '200000', '6000000', 1.50, 'HP', 1, 0.00, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('340095', 1, 'SUPERFLO PUMPS', 'pcs', NULL, '22000', '7000000', 1.00, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 12.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('340096', 1, 'SUPERFLO PUMPS Demo', 'pcs', NULL, '964193', '8000000', 1.50, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 30.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('340097', 1, 'SUPERFLO PUMPS', 'pcs', NULL, '200000', '4000000', 2.00, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', -2.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('347926', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '6000000', 0.50, 'HP', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('347927', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '9000000', 0.75, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('347929', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '5000000', 1.50, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', 'Active', 'washer.jpg', '0000-00-00 00:00:00'),
('347930', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '4000000', 2.00, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-15TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '2900000', NULL, NULL, NULL, NULL, NULL, NULL, 380.00, 6.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', 'pump.jpg', '0000-00-00 00:00:00'),
('F-19S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '4500000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-19SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6000000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 9.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-19T6-TAG', 2, 'Tagelus Top Mount- Fiberglass with Valve', 'pcs', NULL, '200000', '3455111', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-19T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5600000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-19TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 9.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-22SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5300000', NULL, NULL, NULL, NULL, NULL, NULL, 560.00, 12.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-22TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5004565', NULL, NULL, NULL, NULL, NULL, NULL, 560.00, 12.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-24S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-24S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-24T6-TAG', 2, 'Tagelus Top Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-24T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-26TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 660.00, 16.50, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-30S-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-30S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', 'Active', NULL, '0000-00-00 00:00:00'),
('F-30SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 660.00, 16.50, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('F-30T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('F-36S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 914.00, 32.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('F-36S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 914.00, 32.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('F19S8-TRCP', 1, 'TRITON II CleatPro - Side Mount - Fiberglass With Valve', 'pcs', NULL, '200000', '5000000', NULL, '', NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0301', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 39.00, 39.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0310', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 22.30, 20.50, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0314', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 4.60, 11.30, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0315', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 7.00, 17.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0316', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 9.30, 22.70, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0317', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 13.90, 34.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0318', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 18.60, 34.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0332', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 48.30, 48.30, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('H-16-0340', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 29.70, 29.70, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('Machine001', 1, 'Machine test', 'pcs', '2016-05-11 00:00:00', '0', '2312312', 1.00, '1', 1, 1.00, 1.00, 11.00, 1.00, 122.00, 11.00, 'asdasda', '10%', 'asas', 's', 0.00, '0.00', 'Active', '../images/1413905663-FOT00_38775_v01.jpg', '0000-00-00 00:00:00'),
('P-UFLB-071', 1, 'ULTRAFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 0.55, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-073', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.55, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-101', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.75, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-103E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.75, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-151', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 1.10, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-153E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 1.10, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-201', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 1.50, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-203E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '970000', 1.50, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-301', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 2.20, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-UFLB-303E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 2.20, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-071', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.55, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-073', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.55, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-101', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.75, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-103E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.75, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-151', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.10, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-153E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.10, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-201', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.50, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-203E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.50, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-301', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 2.20, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('P-WFL-303E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 2.20, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R111316', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pool Brush, aluminum back 18"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R111366', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pool Brush, molded plastic back 18"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R111616', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Algae Brush, Aluminum back 6"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R12126', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leaf rake 123', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R12166', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leaf skimmer 142S magnet', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R141106', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Floating themometer', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R151076', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '670000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test kit 2 in 1', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R161018', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1/2 ounce Penol red Solution', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R17086', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Floating tablet dispenser', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R191306', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Telescopic handle 2-pc 8-15.5 ft', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R1913880', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '7700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Telescopic handle 2-pc 12-36 ft, -3pcs', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R201060', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vaccum head 201 Flex-A-Vac', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('R201350', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vaccum head 193 brush', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL, '0000-00-00 00:00:00'),
('TEST', 1, 'TEST', '', '0000-00-00 00:00:00', '0', '2222222', 2.00, 'TEST', 2, 2.00, 2.00, 2.00, 22.00, 2.00, 22.00, 'TEST', '22', 'TEST', 'TEST', 0.00, '0.00', 'Deleted', '../images/bike.jpg', '2016-05-12 10:41:51'),
('TestTest', 1, 'TestTest', '', '0000-00-00 00:00:00', '0', '222', 22.00, 'TestT', 2, 1.00, 2.00, 2.00, 2.00, 2.00, 2.00, 'vTestTest', '2', 'TestTest', 'TestTest', 0.00, '0.00', 'Deleted', '../images/bike.jpg', '2016-05-12 08:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `item_category_id` int(11) NOT NULL,
  `item_category_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`item_category_id`, `item_category_name`) VALUES
(1, 'Pump'),
(2, 'Filter'),
(3, 'Maintenance and Safety equipment');

-- --------------------------------------------------------

--
-- Table structure for table `item_storage_location`
--

CREATE TABLE IF NOT EXISTS `item_storage_location` (
  `item_storage_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_location_id` int(11) NOT NULL,
  `item_storage_location_quantity` int(50) NOT NULL DEFAULT '15',
  PRIMARY KEY (`item_storage_location_id`),
  KEY `item_storage_location_storage_location` (`storage_location_id`),
  KEY `item_storagea_location_item` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `item_storage_location`
--

INSERT INTO `item_storage_location` (`item_storage_location_id`, `item_id`, `storage_location_id`, `item_storage_location_quantity`) VALUES
(1, '340056', 1, 15),
(2, '340057', 2, 15),
(3, '340058', 3, 15),
(4, '340095', 4, 15),
(5, '340096', 2, 13),
(6, '340097', 6, -2),
(7, 'F19S8-TRCP', 7, 15),
(8, 'P-UFLB-071', 8, 15),
(9, 'P-UFLB-073', 9, 15),
(10, 'P-UFLB-101', 10, 15),
(11, 'P-UFLB-103E2*', 11, 15),
(12, 'P-UFLB-151', 12, 15),
(15, '340096', 11, 5),
(16, '347930', 1, 15),
(17, '347927', 10, 22),
(18, '340096', 2, 2),
(19, '340096', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `item_warehouse`
--

CREATE TABLE IF NOT EXISTS `item_warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`warehouse_id`,`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_warehouse`
--

INSERT INTO `item_warehouse` (`warehouse_id`, `item_id`) VALUES
(1, '340056'),
(1, '340057'),
(1, '340058'),
(2, 'F19S8-TRCP'),
(2, 'P-UFLB-071'),
(2, 'P-UFLB-073');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `action_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_content`, `notification_date`, `action_type`, `module_category`, `notification_link`) VALUES
(1, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-12 11:49:04', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(2, 'User <b>tuananhceo</b> created a new order no. <b>55</b>.', '2016-05-12 12:21:04', 'Create', 'Sale', '../html/edit_order.html?order_id=55'),
(3, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-12 14:32:08', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(4, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-12 15:28:16', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(5, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-13 05:32:26', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(6, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-13 05:36:53', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(7, 'User <b>tuananhceo</b> recently editted order no. <b>3</b>.', '2016-05-13 05:37:02', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(8, 'User <b>tuananhceo</b> recently editted quotation no. <b>10</b>.', '2016-05-13 05:37:44', 'Edit', 'Sale', '../html/edit_quotation.html?quotation_id=10'),
(9, 'User <b>tuananhceo</b> recently deleted item no. <b>TEST</b>.', '2016-05-13 05:42:51', 'Delete', 'Inventory', NULL),
(10, 'User <b>tuananhceo</b> recently editted order no. <b>11</b>.', '2016-05-13 05:44:26', 'Edit', 'Sale', '../html/edit_order.html?order_id=11'),
(11, 'User <b>tuananhceo</b> created a new quotation no. <b>31</b>.', '2016-05-13 05:45:40', 'Create', 'Sale', '../html/edit_quotation.html?quotation_id=31'),
(12, 'User <b>tuananhceo</b> recently editted warehouse no. <b>19</b>.', '2016-05-13 10:16:53', 'Edit', 'Inventory', '../html/edit_warehouse.html?warehouse_id=19'),
(13, 'User <b>tuananhceo</b> created a new storage location no. <b>18</b>.', '2016-05-13 15:25:50', 'Create', 'Inventory', '../html/edit_storage_location.html?storage_location_id=18'),
(14, 'User <b>tuananhceo</b> created a new customer no. <b>25</b>.', '2016-05-13 16:45:32', 'Create', 'Sale', '../html/edit_customer.html?customer_id=25'),
(15, 'User <b>tuananhceo</b> created a new quotation no. <b>32</b>.', '2016-05-13 22:41:21', 'Create', 'Sale', '../html/edit_quotation.html?quotation_id=32'),
(16, 'User <b>danglamss</b> recently editted order no. <b>21</b>.', '2016-05-13 23:46:08', 'Edit', 'Sale', '../html/edit_order.html?order_id=21'),
(17, 'User <b>danglamss</b> recently editted order no. <b>21</b>.', '2016-05-13 23:47:40', 'Edit', 'Sale', '../html/edit_order.html?order_id=21'),
(18, 'User <b>danglamss</b> recently editted order no. <b>21</b>.', '2016-05-13 23:48:58', 'Edit', 'Sale', '../html/edit_order.html?order_id=21'),
(19, 'User <b>tuananhceo</b> recently editted order no. <b>21</b>.', '2016-05-13 23:49:46', 'Edit', 'Sale', '../html/edit_order.html?order_id=21'),
(20, 'User <b>danglamss</b> created a new quotation no. <b>33</b>.', '2016-05-13 23:51:33', 'Create', 'Sale', '../html/edit_quotation.html?quotation_id=33'),
(21, 'User <b>haiphongws</b> recently editted order no. <b>3</b>.', '2016-05-13 23:52:52', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(22, 'User <b>haiphongws</b> recently editted order no. <b>3</b>.', '2016-05-13 23:53:41', 'Edit', 'Sale', '../html/edit_order.html?order_id=3'),
(23, 'User <b>haiphongws</b> recently editted order no. <b>20</b>.', '2016-05-13 23:55:47', 'Edit', 'Sale', '../html/edit_order.html?order_id=20'),
(24, 'User <b>tuananhceo</b> recently editted order no. <b>20</b>.', '2016-05-13 23:57:51', 'Edit', 'Sale', '../html/edit_order.html?order_id=20'),
(25, 'User <b>tuananhceo</b> recently editted order no. <b>12</b>.', '2016-05-13 23:58:09', 'Edit', 'Sale', '../html/edit_order.html?order_id=12'),
(26, 'User <b>tuananhceo</b> recently editted customer no. <b>17</b>.', '2016-05-14 00:52:07', 'Edit', 'Sale', '../html/edit_customer.html?customer_id=17'),
(27, 'User <b>tuananhceo</b> recently editted customer no. <b>24</b>.', '2016-05-14 00:52:28', 'Edit', 'Sale', '../html/edit_customer.html?customer_id=24'),
(28, 'User <b>tuananhceo</b> created a new order no. <b>56</b>.', '2016-05-14 00:55:22', 'Create', 'Sale', '../html/edit_order.html?order_id=56'),
(29, 'User <b>tuananhceo</b> recently deleted quotation no. <b></b>.', '2016-05-14 00:55:58', 'Delete', 'Sale', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE IF NOT EXISTS `order_line` (
  `order_line_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_line_create_date` datetime NOT NULL,
  `order_line_item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_line_item_quantity` int(11) NOT NULL,
  `order_line_item_issued_quantity` int(11) NOT NULL DEFAULT '0',
  `order_line_deliver_date` datetime NOT NULL,
  `order_line_selling_price` decimal(30,2) NOT NULL,
  `order_line_net_selling_price` decimal(30,2) NOT NULL,
  `order_line_deliver_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'partially',
  PRIMARY KEY (`order_line_id`),
  KEY `order_order_line` (`order_id`),
  KEY `order_line_item` (`order_line_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`order_line_id`, `order_id`, `order_line_create_date`, `order_line_item_id`, `order_line_item_quantity`, `order_line_item_issued_quantity`, `order_line_deliver_date`, `order_line_selling_price`, `order_line_net_selling_price`, `order_line_deliver_status`) VALUES
(1, 1, '2015-12-24 00:00:00', '340056', 2, 0, '2015-12-31 00:00:00', '0.00', '0.00', 'partially'),
(2, 1, '2016-03-23 12:27:53', '011012', 2, 0, '0000-00-00 00:00:00', '3500000.00', '7000000.00', 'partially'),
(3, 1, '2015-12-31 00:00:00', 'F19S8-TRCP', 5, 0, '2016-01-14 00:00:00', '0.00', '0.00', 'partially'),
(4, 2, '2016-03-23 12:58:54', 'H-16-0316', 2, 0, '2016-01-13 00:00:00', '5000000.00', '10000000.00', 'partially'),
(5, 2, '2016-03-23 12:58:54', 'P-UFLB-103E2*', 2, 0, '2015-12-30 00:00:00', '6700000.00', '13400000.00', 'partially'),
(6, 3, '2016-05-13 23:53:41', 'H-16-0340', 555, 0, '2015-12-30 00:00:00', '6700000.00', '3718500000.00', 'partially'),
(7, 3, '2016-05-13 23:53:41', '011012', 2, 0, '2015-12-30 00:00:00', '3500000.00', '7000000.00', 'partially'),
(8, 4, '2016-03-23 12:28:53', '340058', 2, 0, '2015-12-30 00:00:00', '6000000.00', '12000000.00', 'partially'),
(9, 7, '2016-04-13 03:55:08', 'F-15TF-AZ', 123, 0, '2016-04-20 00:00:00', '2900000.00', '356800000.00', 'partially'),
(10, 8, '2016-03-23 14:21:31', 'F-19S8-TRV', 5, 0, '2016-03-23 00:00:00', '4500000.00', '22500000.00', 'partially'),
(11, 9, '2016-04-12 20:47:52', 'F-19T8-TACP', 3, 0, '0000-00-00 00:00:00', '5600000.00', '16800000.00', 'partially'),
(12, 10, '2016-04-13 03:13:20', 'F-19SF-AZ', 4, 0, '2016-04-20 00:00:00', '6000000.00', '24000000.00', 'partially'),
(13, 11, '2016-05-13 05:44:26', '347929', 2, 0, '2016-04-04 00:00:00', '5000000.00', '10000000.00', 'partially'),
(14, 11, '2016-05-13 05:44:26', 'H-16-0318', 21, 0, '0000-00-00 00:00:00', '6700000.00', '140700000.00', 'partially'),
(15, 3, '2016-05-13 23:53:41', 'H-16-0340', 5, 0, '2015-12-30 00:00:00', '6700000.00', '33500000.00', 'partially'),
(16, 3, '2016-05-13 23:53:41', 'H-16-0340', 2, 0, '2015-12-30 00:00:00', '6700000.00', '13400000.00', 'partially'),
(17, 3, '2016-05-13 23:53:41', 'F-30T8-TACP', 4, 0, '2016-04-06 00:00:00', '5000000.00', '20000000.00', 'partially'),
(18, 3, '2016-05-13 23:53:41', 'H-16-0316', 3, 0, '2016-04-26 00:00:00', '5000000.00', '15000000.00', 'partially'),
(19, 3, '2016-05-13 23:53:41', 'H-16-0316', 3, 0, '2016-04-26 00:00:00', '5000000.00', '15000000.00', 'partially'),
(20, 12, '2016-05-13 23:58:09', 'F-19S8-TRV', 66, 0, '2016-05-18 00:00:00', '4500000.00', '198000000.00', 'partially'),
(21, 13, '2016-04-18 23:28:10', '000000222', 12, 0, '2016-04-30 00:00:00', '6000000.00', '72000000.00', 'partially'),
(22, 14, '2016-04-18 23:33:58', '000000222', 12, 0, '2016-04-30 00:00:00', '6000000.00', '72000000.00', 'partially'),
(23, 15, '2016-04-18 23:34:22', '000000222', 12, 0, '2016-04-30 00:00:00', '6000000.00', '72000000.00', 'partially'),
(24, 16, '2016-05-12 01:54:20', '347927', 666, 0, '2016-05-18 00:00:00', '9000000.00', '5994000000.00', 'partially'),
(25, 17, '2016-04-18 23:37:56', 'F-19S8-TRV', 89, 0, '0000-00-00 00:00:00', '4500000.00', '400500000.00', 'partially'),
(26, 17, '2016-04-18 23:37:56', '247928', 21, 0, '0000-00-00 00:00:00', '2244244.00', '47129124.00', 'partially'),
(27, 17, '2016-04-18 23:37:56', '340097', 34, 0, '0000-00-00 00:00:00', '4000000.00', '136000000.00', 'partially'),
(28, 17, '2016-04-18 23:37:56', 'F-19T6-TAG', 55, 0, '0000-00-00 00:00:00', '3455111.00', '190031105.00', 'partially'),
(29, 18, '2016-05-11 18:49:08', 'F-15TF-AZ', 12, 0, '2016-04-30 00:00:00', '2900000.00', '34800000.00', 'partially'),
(30, 19, '2016-05-01 01:35:51', 'F-19S8-TRV', 13, 0, '2016-05-04 00:00:00', '4500000.00', '200000000.00', 'partially'),
(31, 19, '2016-05-01 01:35:51', '347930', 222, 0, '2016-05-24 00:00:00', '4000000.00', '7399926.00', 'partially'),
(32, 19, '2016-05-01 01:35:51', 'F-19S8-TRV', 13, 0, '2016-05-17 00:00:00', '4500000.00', '200000000.00', 'partially'),
(33, 19, '2016-05-01 01:35:51', '347930', 222, 0, '2016-05-03 00:00:00', '4000000.00', '7399926.00', 'partially'),
(34, 19, '2016-05-01 01:35:51', '340058', 123, 0, '2016-05-12 00:00:00', '6000000.00', '738000000.00', 'partially'),
(35, 19, '2016-05-01 01:35:51', '340096', 12, 0, '2016-05-06 00:00:00', '8000000.00', '96000000.00', 'partially'),
(36, 19, '2016-05-01 01:35:51', 'F-19S8-TRV', 13, 0, '2016-05-12 00:00:00', '4500000.00', '200000000.00', 'partially'),
(37, 19, '2016-05-01 01:35:51', '347930', 222, 0, '2016-05-25 00:00:00', '4000000.00', '7399926.00', 'partially'),
(38, 19, '2016-05-01 01:35:51', 'F-19S8-TRV', 13, 0, '2016-05-10 00:00:00', '4500000.00', '200000000.00', 'partially'),
(39, 19, '2016-05-01 01:35:51', '347930', 222, 0, '2016-05-25 00:00:00', '4000000.00', '7399926.00', 'partially'),
(40, 19, '2016-05-01 01:35:51', '340058', 123, 0, '2016-05-31 00:00:00', '6000000.00', '738000000.00', 'partially'),
(41, 19, '2016-05-01 01:35:51', '340096', 12, 0, '2016-05-31 00:00:00', '8000000.00', '96000000.00', 'partially'),
(42, 22, '2016-05-11 18:53:34', '22011', 11, 0, '2016-05-01 00:00:00', '4000000.00', '38500000.00', 'partially'),
(43, 22, '2016-05-11 18:53:34', '011012', 12, 0, '2016-05-02 00:00:00', '3500000.00', '42000000.00', 'partially'),
(44, 22, '2016-05-11 18:53:34', '011012', 13, 0, '2016-05-03 00:00:00', '3500000.00', '45500000.00', 'partially'),
(45, 22, '2016-05-11 18:53:34', '011516', 21, 0, '2016-05-01 00:00:00', '3000000.00', '63000000.00', 'partially'),
(46, 22, '2016-05-11 18:53:34', '011516', 22, 0, '2016-05-02 00:00:00', '3000000.00', '66000000.00', 'partially'),
(47, 22, '2016-05-11 18:53:34', '011516', 23, 0, '2016-05-03 00:00:00', '3000000.00', '69000000.00', 'partially'),
(48, 22, '2016-05-11 18:53:34', '011516', 24, 0, '2016-05-04 00:00:00', '3000000.00', '72000000.00', 'partially'),
(49, 23, '2016-05-01 01:55:18', '340057', 23, 0, '2016-05-11 00:00:00', '5555000.00', '127765000.00', 'Delivered'),
(50, 23, '2016-05-01 01:55:18', 'F-19T6-TAG', 23, 0, '2016-05-19 00:00:00', '3455111.00', '79467553.00', 'Shipped'),
(51, 23, '2016-05-01 01:55:18', '340058', 12, 0, '2016-05-14 00:00:00', '6000000.00', '72000000.00', 'partially'),
(52, 24, '2016-05-03 23:48:32', '347927', 12, 0, '2016-05-03 00:00:00', '9000000.00', '108000000.00', 'partially'),
(53, 25, '2016-05-04 11:31:30', '340097', 2, 0, '2016-05-26 00:00:00', '4000000.00', '8000000.00', 'partially'),
(54, 26, '2016-05-04 12:23:07', '340096', 2, 0, '2016-05-11 00:00:00', '8000000.00', '16000000.00', 'partially'),
(55, 27, '2016-05-04 12:35:05', '340096', 6, 0, '2016-05-18 00:00:00', '8000000.00', '48000000.00', 'partially'),
(56, 28, '2016-05-04 12:42:29', '340096', 5, 0, '2016-05-18 00:00:00', '8000000.00', '40000000.00', 'partially'),
(57, 29, '2016-05-04 12:55:10', '340096', 2, 2, '2016-05-18 00:00:00', '8000000.00', '16000000.00', 'Shipped'),
(58, 30, '2016-05-04 13:02:08', '340096', 2, 2, '0000-00-00 00:00:00', '8000000.00', '16000000.00', 'Shipped'),
(59, 31, '2016-05-04 13:22:52', '247928', 1, 0, '2016-05-18 00:00:00', '2244244.00', '2244244.00', 'partially'),
(60, 32, '2016-05-04 13:26:29', 'F-19S8-TRV', 1, 0, '0000-00-00 00:00:00', '4500000.00', '4500000.00', 'partially'),
(61, 32, '2016-05-04 13:26:29', '000000222', 2, 0, '0000-00-00 00:00:00', '1111.00', '2222.00', 'partially'),
(62, 33, '2016-05-04 13:38:52', '340096', 4, 4, '2016-05-11 00:00:00', '8000000.00', '32000000.00', 'Shipped'),
(63, 34, '2016-05-04 14:14:18', '340096', 12, 12, '2016-05-04 00:00:00', '8000000.00', '96000000.00', 'Shipped'),
(64, 35, '2016-05-11 16:28:01', '000000222', 1, 0, '2016-05-11 00:00:00', '1111.00', '1111.00', 'partially'),
(65, 36, '2016-05-11 16:34:43', '000000222', 11, 0, '0000-00-00 00:00:00', '1111.00', '12221.00', 'partially'),
(66, 37, '2016-05-11 16:41:02', '340095', 11, 0, '0000-00-00 00:00:00', '7000000.00', '77000000.00', 'partially'),
(67, 38, '2016-05-11 16:44:54', '347929', 33, 0, '0000-00-00 00:00:00', '5000000.00', '165000000.00', 'partially'),
(68, 39, '2016-05-11 16:55:09', '347929', 11, 0, '2016-05-11 00:00:00', '5000000.00', '55000000.00', 'partially'),
(69, 40, '2016-05-11 16:57:00', 'F-19S8-TRV', 1, 0, '2016-05-12 00:00:00', '4500000.00', '4500000.00', 'partially'),
(70, 41, '2016-05-11 17:20:08', '340097', 11, 0, '2016-05-19 00:00:00', '4000000.00', '44000000.00', 'partially'),
(71, 42, '2016-05-11 17:30:44', '011516', 11, 0, '2016-05-18 00:00:00', '3000000.00', '33000000.00', 'partially'),
(72, 43, '2016-05-11 18:08:05', '340095', 1, 0, '2016-05-02 00:00:00', '7000000.00', '7000000.00', 'partially'),
(73, 44, '2016-05-11 18:25:29', '347927', 12, 0, '2016-05-09 00:00:00', '9000000.00', '108000000.00', 'partially'),
(74, 45, '2016-05-11 19:19:53', '347927', 23, 0, '2016-05-11 00:00:00', '9000000.00', '207000000.00', 'partially'),
(75, 46, '2016-05-12 01:53:35', '011012', 1, 0, '2016-05-10 00:00:00', '3500000.00', '3500000.00', 'partially'),
(76, 47, '2016-05-12 02:22:27', '347929', 4, 0, '2016-05-31 00:00:00', '5000000.00', '20000000.00', 'partially'),
(77, 48, '2016-05-12 02:42:40', '347926', 1111, 0, '2016-05-17 00:00:00', '6000000.00', '6666000000.00', 'partially'),
(78, 49, '2016-05-12 02:44:16', '011516', 12, 0, '2016-05-25 00:00:00', '3000000.00', '36000000.00', 'partially'),
(79, 50, '2016-05-12 02:45:23', '22011', 33, 0, '0000-00-00 00:00:00', '4000000.00', '132000000.00', 'partially'),
(80, 51, '2016-05-12 02:49:58', '347930', 11, 0, '2016-05-17 00:00:00', '4000000.00', '44000000.00', 'partially'),
(81, 52, '2016-05-12 02:51:16', '347927', 1, 0, '0000-00-00 00:00:00', '9000000.00', '9000000.00', 'partially'),
(82, 53, '2016-05-12 10:44:59', '340097', 11, 0, '0000-00-00 00:00:00', '4000000.00', '44000000.00', 'partially'),
(83, 55, '2016-05-12 12:21:04', '347926', 11, 0, '0000-00-00 00:00:00', '6000000.00', '66000000.00', 'partially'),
(84, 56, '2016-05-14 00:55:22', 'F-15TF-AZ', 10, 0, '2016-05-17 00:00:00', '2900000.00', '29000000.00', 'partially');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE IF NOT EXISTS `quotation` (
  `quotation_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quotation_create_date` datetime NOT NULL,
  `quotation_close_date` datetime DEFAULT NULL,
  `quotation_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_net_total` int(50) NOT NULL,
  `quotation_tax` int(50) NOT NULL,
  `quotation_total` double(70,2) NOT NULL,
  `quotation_shipping_address` varchar(250) NOT NULL DEFAULT '	default street; default city; default country',
  PRIMARY KEY (`quotation_id`),
  KEY `user_id` (`user_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`quotation_id`, `user_id`, `customer_id`, `quotation_create_date`, `quotation_close_date`, `quotation_status`, `quotation_note`, `quotation_net_total`, `quotation_tax`, `quotation_total`, `quotation_shipping_address`) VALUES
(1, 1, 4, '2016-04-21 12:55:09', '0000-00-00 00:00:00', 'Converted', '8798789789798789789789', 522550000, 26127500, 548677500.00, '	default street; default city; default country'),
(2, 1, 4, '2016-04-13 04:04:12', '0000-00-00 00:00:00', 'Deleted', '', 0, 0, 2315669922.00, '	default street; default city; default country'),
(3, 1, 2, '2016-03-23 00:52:58', '0000-00-00 00:00:00', 'Deleted', '', 0, 0, 0.00, '	default street; default city; default country'),
(4, 1, 3, '2016-04-18 23:35:40', '0000-00-00 00:00:00', 'Deleted', '53533553535', 1998000000, 99900000, 2097900000.00, '	default street; default city; default country'),
(5, 1, 6, '2016-04-13 03:11:48', '0000-00-00 00:00:00', 'Deleted', 'TEst', 0, 0, 7428154.00, '	default street; default city; default country'),
(6, 1, 6, '2016-04-13 03:17:03', '0000-00-00 00:00:00', 'Deleted', 'Test Lam 2', 0, 0, 0.00, '	default street; default city; default country'),
(7, 1, 8, '2016-04-23 23:07:36', '0000-00-00 00:00:00', 'Converted', 'asdsadsadadasdad', 1041399926, 52069996, 1093469922.30, '	default street; default city; default country'),
(8, 1, 11, '2016-04-20 15:27:11', '0000-00-00 00:00:00', 'Waiting', 'ererererererer', 540420000, 27021000, 567441000.00, '	default street; default city; default country'),
(9, 1, 3, '2016-04-20 15:28:55', '0000-00-00 00:00:00', 'Deleted', 'yuyiuyiuyiuyiuyuiy', 206360000, 10318000, 216678000.00, '	default street; default city; default country'),
(10, 1, 2, '2016-05-13 05:37:44', '0000-00-00 00:00:00', 'Converted', 'TEstTestTest', 1092720000, 54636000, 1147356000.00, '105 Cach Mang Thang Tam;;'),
(11, 1, 2, '2016-04-20 15:41:39', '0000-00-00 00:00:00', 'Waiting', '111111111111111111', 34800000, 1740000, 36540000.00, '	default street; default city; default country'),
(12, 1, 13, '2016-04-20 15:47:50', '0000-00-00 00:00:00', 'Closed', '4524525245245', 130500000, 6525000, 137025000.00, '	default street; default city; default country'),
(13, 1, 16, '2016-04-20 15:48:50', '0000-00-00 00:00:00', 'Deleted', 'okokokok', 4950000, 247500, 5197500.00, '	default street; default city; default country'),
(14, 1, 5, '2016-04-20 15:50:49', '0000-00-00 00:00:00', 'Closed', '123213123123', 54000000, 2700000, 56700000.00, '	default street; default city; default country'),
(15, 1, 3, '2016-04-20 16:06:53', '0000-00-00 00:00:00', 'Converted', '123123123', 48000000, 2400000, 50400000.00, '	default street; default city; default country'),
(16, 1, 10, '2016-04-20 16:11:13', '0000-00-00 00:00:00', 'Converted', '1231231231', 738000000, 36900000, 774900000.00, '	default street; default city; default country'),
(17, 1, 8, '2016-05-01 01:38:50', '0000-00-00 00:00:00', 'Deleted', 'qeqweqe', 309250000, 15462500, 324712500.00, '	default street; default city; default country'),
(18, 1, 8, '2016-05-01 01:45:21', '0000-00-00 00:00:00', 'Deleted', '1213123', 287000000, 14350000, 301350000.00, '11 Tan Thanh;Miranda;Venezuela'),
(19, 9, 11, '2016-05-12 02:19:40', '0000-00-00 00:00:00', 'Converted', '22112211', 192000000, 9600000, 201600000.00, '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam'),
(20, 1, 8, '2016-05-04 13:06:18', '0000-00-00 00:00:00', 'Converted', '', 21000000, 1050000, 22050000.00, '11 Tan Thanh;Thanh Hoa;Vietnam'),
(21, 1, 13, '2016-05-04 13:07:11', '0000-00-00 00:00:00', 'Converted', '', 21865333, 1268267, 23133599.65, '12 Cu Chi;Vinh Long;Vietnam'),
(22, 1, 3, '2016-05-04 13:19:04', '0000-00-00 00:00:00', 'Converted', '', 10003333, 500333, 10503666.30, '490 An Duong Vuong;Dong Thap;Vietnam'),
(23, 9, 6, '2016-05-12 02:51:52', '0000-00-00 00:00:00', 'Converted', '', 4503333, 225333, 4728666.30, '56 Phan Nhu Thach;Dong Thap;Vietnam'),
(24, 9, 9, '2016-05-12 02:02:04', '0000-00-00 00:00:00', 'Deleted', 'TEst', 8700000, 435000, 9135000.00, '60 Tran Hung Dao;Da Nang;Vietnam'),
(25, 9, 3, '2016-05-12 02:13:13', '0000-00-00 00:00:00', 'Converted', 'TEst', 260000000, 13000000, 273000000.00, '490 An Duong Vuong;Dong Thap;Vietnam'),
(26, 9, 8, '2016-05-12 02:21:39', '0000-00-00 00:00:00', 'Deleted', '', 20000000, 1000000, 21000000.00, '11 Tan Thanh;Thanh Hoa;Vietnam'),
(27, 9, 8, '2016-05-12 02:24:36', '0000-00-00 00:00:00', 'Deleted', 'tEST', 198000000, 9900000, 207900000.00, '11 Tan Thanh;Thanh Hoa;Vietnam'),
(28, 9, 11, '2016-05-12 02:44:53', '0000-00-00 00:00:00', 'Deleted', '', 132000000, 6600000, 138600000.00, '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam'),
(29, 9, 3, '2016-05-12 02:50:44', '0000-00-00 00:00:00', 'Deleted', '', 9000000, 450000, 9450000.00, '490 An Duong Vuong;Dong Thap;Vietnam'),
(30, 1, 6, '2016-05-12 10:49:02', '0000-00-00 00:00:00', 'Processed', '', 132000000, 6600000, 138600000.00, '56 Phan Nhu Thach;Dong Thap;Vietnam'),
(31, 1, 11, '2016-05-13 05:45:40', '0000-00-00 00:00:00', 'Processed', '', 8700000, 435000, 9135000.00, '49 Xo Viet Nghe Tinh;Ben Tre;Vietnam'),
(32, 1, 3, '2016-05-13 22:41:21', '0000-00-00 00:00:00', 'Processed', '', 513000000, 25650000, 538650000.00, '490 An Duong Vuong;Dong Thap;Vietnam'),
(33, 9, 6, '2016-05-13 23:51:33', '0000-00-00 00:00:00', 'Processed', '', 132000000, 6600000, 138600000.00, '56 Phan Nhu Thach;Dong Thap;Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_line`
--

CREATE TABLE IF NOT EXISTS `quotation_line` (
  `quotation_line_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_line_estimate_price` double(30,2) NOT NULL,
  `quotation_line_estimate_net_price` double(30,2) NOT NULL,
  `quotation_line_item_total_value` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `quotation_line_create_date` date NOT NULL,
  `quotation_line_item_id` varchar(25) NOT NULL,
  `quotation_line_item_quantity` int(11) NOT NULL,
  PRIMARY KEY (`quotation_line_id`),
  KEY `quotation_line_estimate_price` (`quotation_line_estimate_price`),
  KEY `quotation_id` (`quotation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `quotation_line`
--

INSERT INTO `quotation_line` (`quotation_line_id`, `quotation_line_estimate_price`, `quotation_line_estimate_net_price`, `quotation_line_item_total_value`, `quotation_id`, `quotation_line_create_date`, `quotation_line_item_id`, `quotation_line_item_quantity`) VALUES
(1, 5000000.00, 180000000.00, 0, 1, '2016-04-21', '347929', 36),
(2, 2900000.00, 29000000.00, 0, 1, '2016-04-21', 'F-15TF-AZ', 10),
(3, 4500000.00, 200000000.00, 0, 7, '2016-04-23', 'F-19S8-TRV', 13),
(4, 4000000.00, 7399926.00, 0, 7, '2016-04-23', '347930', 222),
(5, 3000000.00, 1998000000.00, 0, 8, '2016-04-18', '011516', 666),
(6, 6000000.00, 26884.00, 0, 8, '2016-04-13', 'F-19SF-AZ', 1222),
(35, 4500000.00, 200000000.00, 0, 7, '2016-04-23', 'F-19S8-TRV', 13),
(36, 4000000.00, 7399926.00, 0, 7, '2016-04-23', '347930', 222),
(37, 6000000.00, 738000000.00, 0, 7, '2016-04-23', '340058', 123),
(38, 8000000.00, 96000000.00, 0, 7, '2016-04-23', '340096', 12),
(39, 4500000.00, 200000000.00, 0, 7, '2016-04-23', 'F-19S8-TRV', 13),
(40, 4000000.00, 7399926.00, 0, 7, '2016-04-23', '347930', 222),
(41, 4500000.00, 200000000.00, 0, 7, '2016-04-23', 'F-19S8-TRV', 13),
(42, 4000000.00, 7399926.00, 0, 7, '2016-04-23', '347930', 222),
(43, 6000000.00, 738000000.00, 0, 7, '2016-04-23', '340058', 123),
(44, 8000000.00, 96000000.00, 0, 7, '2016-04-23', '340096', 12),
(45, 0.00, 0.00, 0, 17, '2016-05-01', 'Array', 0),
(46, 0.00, 0.00, 0, 17, '2016-05-01', 'Array', 0),
(47, 0.00, 0.00, 0, 17, '2016-05-01', 'Array', 0),
(48, 0.00, 0.00, 0, 18, '2016-05-01', 'Array', 0),
(49, 0.00, 0.00, 0, 18, '2016-05-01', 'Array', 0),
(50, 0.00, 0.00, 0, 18, '2016-05-01', 'Array', 0),
(51, 5000000.00, 60000000.00, 0, 19, '2016-05-12', '347929', 12),
(52, 6000000.00, 132000000.00, 0, 19, '2016-05-12', 'F-19SF-AZ', 22),
(53, 9000000.00, 9000000.00, 0, 20, '2016-05-04', '347927', 1),
(54, 4000000.00, 12000000.00, 0, 20, '2016-05-04', '22011', 3),
(55, 3500000.00, 3500000.00, 0, 21, '2016-05-04', '011012', 1),
(56, 4000000.00, 8000000.00, 0, 21, '2016-05-04', '22011', 2),
(57, 3455111.00, 10365333.00, 0, 21, '2016-05-04', 'F-19T6-TAG', 3),
(58, 5000000.00, 10000000.00, 0, 22, '2016-05-04', '347929', 2),
(59, 1111.00, 3333.00, 0, 22, '2016-05-04', '000000222', 3),
(60, 4500000.00, 4500000.00, 0, 23, '2016-05-12', 'F-19S8-TRV', 1),
(61, 1111.00, 3333.00, 0, 23, '2016-05-12', '000000222', 3),
(62, 2900000.00, 8700000.00, 0, 24, '2016-05-12', 'F-15TF-AZ', 3),
(63, 4000000.00, 260000000.00, 0, 25, '2016-05-12', '340097', 65),
(64, 5000000.00, 20000000.00, 0, 26, '2016-05-12', '347929', 4),
(65, 9000000.00, 198000000.00, 0, 27, '2016-05-12', '347927', 22),
(66, 4000000.00, 132000000.00, 0, 28, '2016-05-12', '22011', 33),
(67, 9000000.00, 9000000.00, 0, 29, '2016-05-12', '347927', 1),
(68, 4000000.00, 132000000.00, 0, 30, '2016-05-12', '347930', 33),
(69, 2900000.00, 8700000.00, 0, 31, '2016-05-13', 'F-15TF-AZ', 3),
(70, 3000000.00, 60000000.00, 0, 32, '2016-05-13', '011516', 20),
(71, 550000.00, 33000000.00, 0, 32, '2016-05-13', '340056', 60),
(72, 6000000.00, 420000000.00, 0, 32, '2016-05-13', '340058', 70),
(73, 6000000.00, 132000000.00, 0, 33, '2016-05-13', 'F-19SF-AZ', 22);

-- --------------------------------------------------------

--
-- Table structure for table `sale_transaction`
--

CREATE TABLE IF NOT EXISTS `sale_transaction` (
  `sale_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_line_id` int(11) NOT NULL,
  `sale_transaction_create_date` date NOT NULL,
  `sale_transaction_close_date` date DEFAULT NULL,
  `sale_transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_transaction_level` int(11) DEFAULT NULL,
  `sale_transaction_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_transaction_user_id` int(11) NOT NULL,
  PRIMARY KEY (`sale_transaction_id`),
  KEY `Sale_Transaction_User` (`sale_transaction_user_id`),
  KEY `sale_transaction_order_line` (`order_line_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sale_transaction`
--

INSERT INTO `sale_transaction` (`sale_transaction_id`, `order_line_id`, `sale_transaction_create_date`, `sale_transaction_close_date`, `sale_transaction_status`, `sale_transaction_level`, `sale_transaction_note`, `sale_transaction_user_id`) VALUES
(1, 1, '2015-12-24', NULL, 'processing', NULL, NULL, 3),
(2, 2, '2015-12-24', NULL, 'processing', NULL, NULL, 3),
(5, 5, '2015-12-25', NULL, 'transferred', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(4) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_position` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_start_date` date NOT NULL,
  `staff_end_date` date DEFAULT NULL,
  `staff_supervisor_id` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_position`, `staff_start_date`, `staff_end_date`, `staff_supervisor_id`) VALUES
(1, 'Tuan Anh', 'CEO', '2015-12-18', NULL, ''),
(2, 'Minh Hoang', 'Warehouse Manager', '2015-12-18', NULL, '1'),
(3, 'Xuan Thanh', 'Sales Manager', '2015-12-18', NULL, '1'),
(4, 'Thoa', 'Accounting', '2015-12-18', NULL, '1'),
(5, 'The Hanh', 'Technical Support', '2015-12-18', NULL, '1'),
(6, 'Hai Phong', 'Warehouse staff', '2015-12-18', NULL, '2'),
(7, 'Hoang Anh', 'warehouse team leader', '2015-12-18', NULL, '2'),
(8, 'Nang Cuong', 'sales team leader', '2015-12-18', NULL, '3'),
(9, 'Dang Lam', 'sales staff', '2015-12-18', NULL, '3'),
(10, 'Anh Tuan', 'HR staff', '2015-12-18', NULL, '1'),
(11, 'Tri Binh', 'HR team leader', '2015-12-18', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `storage_location`
--

CREATE TABLE IF NOT EXISTS `storage_location` (
  `storage_location_id` int(11) NOT NULL,
  `storage_location_shelf` int(11) NOT NULL,
  `storage_location_row` int(11) NOT NULL,
  `storage_location_column` int(11) NOT NULL,
  `storage_location_condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `storage_location_warehouse_id` int(11) NOT NULL,
  `storage_location_create_datetime` datetime NOT NULL,
  PRIMARY KEY (`storage_location_id`),
  KEY `storage_location_warehouse` (`storage_location_warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`storage_location_id`, `storage_location_shelf`, `storage_location_row`, `storage_location_column`, `storage_location_condition`, `storage_location_warehouse_id`, `storage_location_create_datetime`) VALUES
(1, 1, 1, 1, 'Deleted', 1, '0000-00-00 00:00:00'),
(2, 2, 12, 2, 'Broken', 1, '0000-00-00 00:00:00'),
(3, 1, 1, 3, 'Active', 1, '0000-00-00 00:00:00'),
(4, 2, 1, 1, 'Active', 1, '0000-00-00 00:00:00'),
(5, 2, 1, 2, 'Active', 1, '0000-00-00 00:00:00'),
(6, 2, 1, 3, 'Active', 1, '0000-00-00 00:00:00'),
(7, 1, 1, 1, 'Active', 2, '0000-00-00 00:00:00'),
(8, 1, 2, 1, 'Active', 2, '0000-00-00 00:00:00'),
(9, 1, 3, 1, 'Active', 2, '0000-00-00 00:00:00'),
(10, 2, 1, 1, 'Active', 2, '0000-00-00 00:00:00'),
(11, 2, 2, 1, 'Active', 2, '0000-00-00 00:00:00'),
(12, 2, 3, 1, 'Active', 2, '0000-00-00 00:00:00'),
(13, 5, 5, 5, 'Active', 14, '0000-00-00 00:00:00'),
(14, 1, 1, 2, 'Deleted', 1, '0000-00-00 00:00:00'),
(15, 2, 1, 3, 'Deleted', 9, '2016-05-12 09:06:17'),
(16, 1, 1, 1, 'Active', 2, '2016-05-12 10:54:38'),
(17, 3, 2, 2, 'Active', 1, '2016-05-12 11:07:21'),
(18, 1, 1, 1, 'Active', 2, '2016-05-13 15:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(11) NOT NULL,
  `user_create_date` date NOT NULL,
  `user_delete_date` date DEFAULT NULL,
  `user_role_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'Staff',
  PRIMARY KEY (`user_id`),
  KEY `user_staff` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `staff_id`, `user_create_date`, `user_delete_date`, `user_role_name`) VALUES
(1, 'tuananhceo', 'tuananhceo', 1, '2015-12-18', NULL, 'CEO'),
(2, 'minhhoangwm', 'minhhoangwm', 2, '2015-12-18', NULL, 'Warehouse_Manager'),
(3, 'xuanthanhsm', 'xuanthanhsm', 3, '2015-12-18', NULL, 'Sale_Manager'),
(4, 'thoaacc', 'thoaacc', 4, '2015-12-18', NULL, 'Accountant'),
(5, 'thehanhts', 'thehanhts', 5, '2015-12-18', NULL, 'Technical_Staff'),
(6, 'haiphongws', 'haiphongws', 6, '2015-12-18', NULL, 'Warehouse_Staff'),
(7, 'hoanganhwtl', 'hoanganhwtl', 7, '2015-12-18', NULL, 'Warehouse_Staff'),
(8, 'nangcuongstl', 'nangcuongstl', 8, '2015-12-18', NULL, 'Sale_Staff'),
(9, 'danglamss', 'danglamss', 9, '2015-12-18', NULL, 'Sale_Staff'),
(10, 'anhtuanhrs', 'anhtuanhrs', 10, '2015-12-18', NULL, 'Staff'),
(11, 'tribinhhrtl', 'tribinhhrtl', 11, '2015-12-18', NULL, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE IF NOT EXISTS `user_notification` (
  `user_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_notification_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`user_notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`user_notification_id`, `user_notification_status`, `user_id`, `notification_id`) VALUES
(1, 'Read', 1, 1),
(2, 'Read', 1, 2),
(3, 'Read', 1, 3),
(4, 'Read', 1, 4),
(5, 'Read', 1, 5),
(6, 'Read', 1, 6),
(7, 'Read', 1, 7),
(8, 'Read', 1, 8),
(9, 'Read', 1, 9),
(10, 'Read', 1, 10),
(11, 'Read', 1, 11),
(12, 'Read', 1, 12),
(13, 'Read', 1, 13),
(14, 'Read', 1, 14),
(15, 'Read', 1, 15),
(16, 'Read', 9, 16),
(17, 'Read', 9, 17),
(18, 'Read', 9, 18),
(19, 'Unread', 1, 19),
(20, 'Unread', 9, 20),
(21, 'Unread', 6, 21),
(22, 'Unread', 6, 22),
(23, 'Unread', 6, 23),
(24, 'Unread', 1, 24),
(25, 'Unread', 1, 25),
(26, 'Unread', 1, 26),
(27, 'Unread', 1, 27),
(28, 'Unread', 1, 28),
(29, 'Unread', 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `warehouse_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_capacity` int(11) NOT NULL,
  `warehouse_current_capacity` int(11) NOT NULL DEFAULT '0',
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_supervisor_id` int(11) NOT NULL,
  `warehouse_item_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_create_datetime` datetime NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_location`, `warehouse_capacity`, `warehouse_current_capacity`, `warehouse_name`, `warehouse_supervisor_id`, `warehouse_item_category`, `warehouse_create_datetime`) VALUES
(1, 'location test 1;Rock Sound;Bahamas', 1000, 212, 'Warehouse 1', 5, '1', '0000-00-00 00:00:00'),
(2, 'location_test_23;Rock Sound;Bahamas', 1000, 599, 'Warehouse 2', 6, '3', '0000-00-00 00:00:00'),
(9, '123213;Ararat;Armenia', 123, 68, 'Warehouse 3', 1, '2;3', '0000-00-00 00:00:00'),
(10, '123213;Ararat;Armenia', 123, 67, 'Warehouse 4', 1, '2;3', '0000-00-00 00:00:00'),
(11, '123213123123123;Rock Sound;Bahamas', 123, 10, 'Warehouse 5', 1, '2;3', '0000-00-00 00:00:00'),
(12, '123213;Ararat;Armenia', 123, 32, 'Warehouse 11', 1, '2;3', '0000-00-00 00:00:00'),
(13, '123213;Noakhali;Bangladesh', 123, 41, 'Warehouse 14', 1, '2;3', '0000-00-00 00:00:00'),
(14, '1231;Mayaguana;Bahamas', 123, 51, 'Warehouse 897', 2, '1;2', '0000-00-00 00:00:00'),
(15, '1231;Berat;Albania', 123, 23, 'Warehouse 367', 2, '1;2', '0000-00-00 00:00:00'),
(16, 'qweqeqeq;Mykines;Faroe Islands', 23333, 1800, 'Warehouse 211', 10, '2', '0000-00-00 00:00:00'),
(17, 'Test;Delvine;Albania', 45, 90, 'Warehouse 113', 9, '1;3', '0000-00-00 00:00:00'),
(18, 'TestTEt;Ho Chi Minh;Vietnam', 55, 0, 'TestTEt', 1, '1', '2016-05-12 08:46:45'),
(19, 'TestTEt##;Ho Chi Minh;Vietnam', 222, 0, 'TestTEt##', 1, '3', '2016-05-12 10:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transaction`
--

CREATE TABLE IF NOT EXISTS `warehouse_transaction` (
  `warehouse_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_transaction_create_date` datetime NOT NULL,
  `warehouse_transaction_close_date` datetime DEFAULT NULL,
  `warehouse_transaction_user_id` int(11) NOT NULL,
  `warehouse_transaction_order_id` int(11) DEFAULT NULL,
  `warehouse_transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_transaction_type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_transaction_total_value` double(70,0) NOT NULL,
  PRIMARY KEY (`warehouse_transaction_id`),
  KEY `Warehouse_Transaction_User` (`warehouse_transaction_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `warehouse_transaction`
--

INSERT INTO `warehouse_transaction` (`warehouse_transaction_id`, `warehouse_transaction_create_date`, `warehouse_transaction_close_date`, `warehouse_transaction_user_id`, `warehouse_transaction_order_id`, `warehouse_transaction_status`, `warehouse_transaction_type`, `warehouse_transaction_total_value`) VALUES
(1, '2015-12-28 00:00:00', NULL, 1, 0, 'pending', 'normal', 0),
(2, '2015-12-28 00:00:00', NULL, 3, 0, 'pending', 'normal', 0),
(3, '2015-12-28 00:00:00', NULL, 1, 0, 'pending', 'normal', 0),
(4, '2015-12-28 00:00:00', '2015-12-31 00:00:00', 1, 0, 'closed', 'normal', 0),
(5, '2015-12-28 00:00:00', NULL, 4, 0, 'pending', 'normal', 0),
(6, '2015-12-28 00:00:00', '0000-00-00 00:00:00', 1, 0, 'abc', 'Receipt', 900000),
(7, '2015-12-28 00:00:00', '0000-00-00 00:00:00', 1, 0, 'abc', 'Receipt', 900000),
(8, '2016-04-10 15:51:27', '0000-00-00 00:00:00', 1, 0, 'pending', 'Receipt', 264),
(9, '2016-04-10 16:03:22', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 264),
(10, '2016-04-10 16:03:52', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 264),
(11, '2016-04-10 16:04:46', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 264),
(12, '2016-04-10 16:05:34', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 264),
(13, '2016-04-10 16:14:58', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 486220),
(14, '2016-04-10 16:17:26', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 61000),
(15, '2016-04-29 00:00:00', NULL, 2, 19, 'active', 'issue', 12000000),
(16, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 25, 'Pending', 'Issue', 8000000),
(17, '2016-05-04 11:44:38', '0000-00-00 00:00:00', 1, 12312321, NULL, 'Receipt', 264000),
(18, '2016-05-04 12:00:31', '0000-00-00 00:00:00', 1, 101010101, NULL, 'Receipt', 300000),
(19, '2016-05-04 12:02:53', '0000-00-00 00:00:00', 1, 123333, NULL, 'Receipt', 44444),
(20, '2016-05-04 12:11:49', '0000-00-00 00:00:00', 1, 212121212, NULL, 'Receipt', 40000),
(21, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 26, 'Pending', 'Issue', 16000000),
(22, '2016-05-04 12:34:32', '0000-00-00 00:00:00', 1, 2222222, NULL, 'Receipt', 26666664),
(23, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 27, 'Pending', 'Issue', 48000000),
(24, '2016-05-04 12:41:57', '0000-00-00 00:00:00', 1, 33344, NULL, 'Receipt', 44444),
(25, '2016-05-04 12:49:14', '0000-00-00 00:00:00', 1, 0, NULL, 'Receipt', 1333332),
(26, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 29, 'Pending', 'Issue', 16000000),
(27, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 30, 'Pending', 'Issue', 16000000),
(28, '2016-05-04 13:36:26', '0000-00-00 00:00:00', 1, 2312312, NULL, 'Receipt', 888888),
(29, '2016-05-04 13:38:06', '0000-00-00 00:00:00', 1, 1211221, NULL, 'Receipt', 4444),
(30, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 33, 'Pending', 'Issue', 32000000),
(31, '2016-05-04 14:13:05', '0000-00-00 00:00:00', 1, 2121321, NULL, 'Receipt', 22330000),
(32, '2016-05-04 00:00:00', '0000-00-00 00:00:00', 1, 34, 'Pending', 'Issue', 96000000);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transaction_line`
--

CREATE TABLE IF NOT EXISTS `warehouse_transaction_line` (
  `warehouse_transaction_line_id` int(90) NOT NULL AUTO_INCREMENT,
  `warehouse_transaction_line_item_id` varchar(25) NOT NULL,
  `warehouse_transaction_line_quantity` int(11) NOT NULL,
  `warehouse_transaction_line_date` datetime NOT NULL DEFAULT '2016-04-29 00:00:00',
  `warehouse_transaction_line_cost` decimal(65,0) DEFAULT NULL,
  `warehouse_transaction_line_total_cost` decimal(65,0) DEFAULT NULL,
  `warehouse_transaction_id` int(11) NOT NULL,
  `warehouse_transaction_line_order_line_id` int(11) NOT NULL,
  `warehouse_transaction_line_storage_location_id` int(50) NOT NULL DEFAULT '1',
  PRIMARY KEY (`warehouse_transaction_line_id`),
  KEY `warehouse_transaction_id` (`warehouse_transaction_id`),
  KEY `warehouse_transaction_line_item_id` (`warehouse_transaction_line_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `warehouse_transaction_line`
--

INSERT INTO `warehouse_transaction_line` (`warehouse_transaction_line_id`, `warehouse_transaction_line_item_id`, `warehouse_transaction_line_quantity`, `warehouse_transaction_line_date`, `warehouse_transaction_line_cost`, `warehouse_transaction_line_total_cost`, `warehouse_transaction_id`, `warehouse_transaction_line_order_line_id`, `warehouse_transaction_line_storage_location_id`) VALUES
(1, '22011', 12, '2016-04-29 00:00:00', '22', '264', 12, 0, 1),
(2, '22011', 12, '2016-04-29 00:00:00', '22000', '264000', 13, 0, 1),
(3, '0000000', 10, '2016-04-29 00:00:00', '22222', '222220', 13, 0, 1),
(4, '011012', 5, '2016-04-29 00:00:00', '5000', '25000', 14, 0, 1),
(5, 'F-15TF-AZ', 6, '2016-04-29 00:00:00', '6000', '36000', 14, 0, 1),
(6, '20', 1234000, '2016-04-29 00:00:00', '900000', '10000001', 15, 40, 1),
(7, '340097', 2, '2016-05-04 00:00:00', '0', '0', 16, 53, 6),
(8, '340095', 12, '2016-05-04 11:44:38', '22000', '264000', 17, 12312321, 8),
(9, '340096', 12, '2016-05-04 12:00:31', '25000', '300000', 18, 101010101, 1),
(10, '340096', 2, '2016-05-04 12:02:53', '22222', '44444', 19, 123333, 2),
(11, '340096', 2, '2016-05-04 12:11:49', '20000', '40000', 20, 212121212, 2),
(12, '340096', 2, '2016-05-04 00:00:00', '0', '0', 21, 54, 5),
(13, '340096', 12, '2016-05-04 12:34:32', '2222222', '26666664', 22, 2222222, 2),
(14, '340096', 6, '2016-05-04 00:00:00', '0', '0', 23, 55, 5),
(15, '340096', 2, '2016-05-04 12:41:57', '22222', '44444', 24, 33344, 2),
(16, '340096', 12, '2016-05-04 12:49:14', '111111', '1333332', 25, 0, 2),
(17, '340096', 2, '2016-05-04 00:00:00', '0', '0', 26, 57, 15),
(18, '340096', 2, '2016-05-04 00:00:00', '0', '0', 27, 58, 5),
(19, '340096', 4, '2016-05-04 13:36:26', '222222', '888888', 28, 2312312, 2),
(20, '340096', 2, '2016-05-04 13:38:06', '2222', '4444', 29, 1211221, 2),
(21, '340096', 4, '2016-05-04 00:00:00', '0', '0', 30, 62, 5),
(22, '340096', 10, '2016-05-04 14:13:05', '100', '22330000', 31, 2121321, 2),
(23, '340096', 12, '2016-05-04 00:00:00', '0', '0', 32, 63, 15);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Customer_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `User_Order` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_item_category` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`item_category_id`);

--
-- Constraints for table `item_storage_location`
--
ALTER TABLE `item_storage_location`
  ADD CONSTRAINT `item_storagea_location_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `item_storage_location_storage_location` FOREIGN KEY (`storage_location_id`) REFERENCES `storage_location` (`storage_location_id`);

--
-- Constraints for table `item_warehouse`
--
ALTER TABLE `item_warehouse`
  ADD CONSTRAINT `item_warehouse_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `item_warehouse_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`);

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `order_line_item` FOREIGN KEY (`order_line_item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `order_order_line` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`);

--
-- Constraints for table `quotation`
--
ALTER TABLE `quotation`
  ADD CONSTRAINT `quotation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `quotation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `quotation_line`
--
ALTER TABLE `quotation_line`
  ADD CONSTRAINT `quotation_line_ibfk_1` FOREIGN KEY (`quotation_id`) REFERENCES `quotation` (`quotation_id`);

--
-- Constraints for table `sale_transaction`
--
ALTER TABLE `sale_transaction`
  ADD CONSTRAINT `sale_transaction_order_line` FOREIGN KEY (`order_line_id`) REFERENCES `order_line` (`order_line_id`),
  ADD CONSTRAINT `Sale_Transaction_User` FOREIGN KEY (`sale_transaction_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `storage_location`
--
ALTER TABLE `storage_location`
  ADD CONSTRAINT `storage_location_warehouse` FOREIGN KEY (`storage_location_warehouse_id`) REFERENCES `warehouse` (`warehouse_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `warehouse_transaction`
--
ALTER TABLE `warehouse_transaction`
  ADD CONSTRAINT `warehouse_transaction_ibfk_2` FOREIGN KEY (`warehouse_transaction_user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
