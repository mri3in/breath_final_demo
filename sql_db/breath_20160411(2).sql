-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2016 at 05:46 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `breath`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `authority_code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authority_create_date` date NOT NULL,
  `authority_deactivate_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`authority_code`, `authority_description`, `authority_create_date`, `authority_deactivate_date`) VALUES
('AUTHORIZATION_CRUD', 'Manage authorization', '0000-00-00', NULL),
('AUTHORIZATION_R', 'Manage authorization', '2015-12-05', NULL),
('AUTHORIZATION_RU', 'Manage authorization', '2015-12-06', NULL),
('AUTHORIZATION_RUD', 'Manage authorization', '2015-12-07', NULL),
('CUSTOMER_DETAIL_CRUD', 'Manage customer detail', '2015-12-08', NULL),
('CUSTOMER_DETAIL_R', 'Manage customer detail', '2015-12-09', NULL),
('CUSTOMER_DETAIL_RU', 'Manage customer detail', '2015-12-10', NULL),
('CUSTOMER_DETAIL_RUD', 'Manage customer detail', '2015-12-11', NULL),
('ITEM_CATEGORY_CRUD', 'Manage item category', '2015-12-12', NULL),
('ITEM_CATEGORY_R', 'Manage item category', '2015-12-13', NULL),
('ITEM_CATEGORY_RU', 'Manage item category', '2015-12-14', NULL),
('ITEM_CATEGORY_RUD', 'Manage item category', '2015-12-15', NULL),
('ITEM_CRUD', 'Manage item', '2015-12-16', NULL),
('ITEM_R', 'Manage item', '2015-12-17', NULL),
('ITEM_RU', 'Manage item', '2015-12-18', NULL),
('ITEM_RUD', 'Manage item', '2015-12-19', NULL),
('ITEM_STORAGE_LOCATION_CRUD', 'Manage item storage location', '2015-12-20', NULL),
('ITEM_STORAGE_LOCATION_R', 'Manage item storage location', '2015-12-21', NULL),
('ITEM_STORAGE_LOCATION_RU', 'Manage item storage location', '2015-12-22', NULL),
('ITEM_STORAGE_LOCATION_RUD', 'Manage item storage location', '2015-12-23', NULL),
('ITEM_WAREHOUSE_CRUD', 'Manage item warehouse', '2015-12-24', NULL),
('ITEM_WAREHOUSE_R', 'Manage item warehouse', '2015-12-25', NULL),
('ITEM_WAREHOUSE_RU', 'Manage item warehouse', '2015-12-26', NULL),
('ITEM_WAREHOUSE_RUD', 'Manage item warehouse', '2015-12-27', NULL),
('ORDER_CRUD', 'Manage order', '2015-12-28', NULL),
('ORDER_LINE_CRUD', 'Manage order line', '2015-12-29', NULL),
('ORDER_LINE_R', 'Manage order line', '2015-12-30', NULL),
('ORDER_LINE_RU', 'Manage order line', '2015-12-31', NULL),
('ORDER_LINE_RUD', 'Manage order line', '0000-00-00', NULL),
('ORDER_R', 'Manage order', '0000-00-00', NULL),
('ORDER_RU', 'Manage order', '0000-00-00', NULL),
('ORDER_RUD', 'Manage order', '0000-00-00', NULL),
('SALE_TRANSACTION_CRUD', 'Manage sale transaction', '0000-00-00', NULL),
('SALE_TRANSACTION_R', 'Manage sale transaction', '0000-00-00', NULL),
('SALE_TRANSACTION_RU', 'Manage sale transaction', '0000-00-00', NULL),
('SALE_TRANSACTION_RUD', 'Manage sale transaction', '0000-00-00', NULL),
('STAFF_DETAIL_CRUD', 'Manage staff details', '0000-00-00', NULL),
('STAFF_DETAIL_R', 'Manage staff details', '0000-00-00', NULL),
('STAFF_DETAIL_RU', 'Manage staff details', '0000-00-00', NULL),
('STAFF_DETAIL_RUD', 'Manage staff details', '0000-00-00', NULL),
('STORAGE_LOCATION_CRUD', 'Manage storage location', '0000-00-00', NULL),
('STORAGE_LOCATION_R', 'Manage storage location', '0000-00-00', NULL),
('STORAGE_LOCATION_RU', 'Manage storage location', '0000-00-00', NULL),
('STORAGE_LOCATION_RUD', 'Manage storage location', '0000-00-00', NULL),
('USER_AUTHORITY_CRUD', 'Manage user authority', '0000-00-00', NULL),
('USER_AUTHORITY_R', 'Manage user authority', '0000-00-00', NULL),
('USER_AUTHORITY_RU', 'Manage user authority', '0000-00-00', NULL),
('USER_AUTHORITY_RUD', 'Manage user authority', '0000-00-00', NULL),
('USER_DETAIL_CRUD', 'Manage user''s details', '2015-12-24', NULL),
('USER_DETAIL_R', 'Manage user''s details', '2015-12-24', NULL),
('USER_DETAIL_RU', 'Manage user''s details', '2015-12-24', NULL),
('USER_DETAIL_RUD', 'Manage user''s details', '2015-12-24', NULL),
('WAREHOUSE_CRUD', 'Manage warehouse', '0000-00-00', NULL),
('WAREHOUSE_R', 'Manage warehouse', '0000-00-00', NULL),
('WAREHOUSE_RU', 'Manage warehouse', '0000-00-00', NULL),
('WAREHOUSE_RUD', 'Manage warehouse', '0000-00-00', NULL),
('WAREHOUSE_TRANSACTION_CRUD', 'Manage warehouse transaction', '0000-00-00', NULL),
('WAREHOUSE_TRANSACTION_R', 'Manage warehouse transaction', '0000-00-00', NULL),
('WAREHOUSE_TRANSACTION_RU', 'Manage warehouse transaction', '0000-00-00', NULL),
('WAREHOUSE_TRANSACTION_RUD', 'Manage warehouse transaction', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorization`
--

CREATE TABLE `authorization` (
  `authorization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `authority_code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_create_date` date NOT NULL,
  `authorization_deactivate_date` date DEFAULT NULL,
  `authorization_status` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authorization`
--

INSERT INTO `authorization` (`authorization_id`, `user_id`, `authority_code`, `authorization_create_date`, `authorization_deactivate_date`, `authorization_status`) VALUES
(1, 1, 'ORDER_CRUD', '2015-12-24', NULL, NULL),
(2, 1, 'USER_DETAIL_CRUD', '2015-12-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_long_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_billing_address` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_shipping_address` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_tax_code` bigint(30) NOT NULL,
  `customer_credit_limit` decimal(30,2) NOT NULL,
  `customer_payment_term` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(4) NOT NULL,
  `customer_contact_person_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_contact_person_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_contact_person_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_long_name`, `customer_billing_address`, `customer_shipping_address`, `customer_tax_code`, `customer_credit_limit`, `customer_payment_term`, `staff_id`, `customer_contact_person_name`, `customer_contact_person_phone_number`, `customer_contact_person_email`, `customer_status`) VALUES
(1, 'Nguyen Hai Phong', 'Phong Nguyen VJS', '24 Banh Van Tran; Tan Binh District, Ho Chi Minh City; Vietnam', '17 Le Duan; Ho Chi Minh City; Vietnam', 2312323452, '500000.00', 'Net 30', 3, 'Hoang Hong Hanh', '+84 942444018', 'abc@gmail.com', 'Deleted'),
(2, 'Anh Tran', 'Cong ty TNHH Anh Tran', '42 Ngo Be; Ho Chi Minh City', '105 Cach Mang Thang Tam; Ho Chi Minh City', 5801282228, '234324.00', 'Net 30', 3, 'Tran Ha Thanh', '+84 93243561', 'trg@outlook.com.vn', 'Deleted'),
(3, 'Tamy Hotel', 'Cong ty TNHH Tamy Tran', '18 Nguyen Tri Phuong; Ho Chi Minh City', '490 An Duong Vuong; Ho Chi Minh City', 5801282342, '1133232.00', 'Net 20', 3, 'Tran Hoang Yen', '+84 934840124', 'trg@outlook.com.vn', 'Deleted'),
(4, 'Lam Sai Gon Hotel', 'Cong ty TNHH Lam Sai Gon Hotel', '60 Ngo Be; Ho Chi Minh City', '47 Long Hung; Ho Chi Minh City', 3401282228, '513234.00', 'Net 30', 8, 'Tran Ha My', '+84 90065002', 'trg@outlook.com.vn4', 'Deleted'),
(5, 'Thanh Thuy', 'Thanh Thuy Hotel & Restaurant', '26 Nguyen Thi Minh Khai; Ho Chi Minh City', '42 Mac Dinh Chi; Ho Chi Minh City', 5823482228, '12312312312.00', 'Net 30', 8, 'Pham My Duyen', '+84 123535355', 'trg@outlook.com.vn5', 'Deleted'),
(6, 'Tuan Anh', 'Cong ty TNHH Tuan Anh', '19 Nam Ky Khoi Nghia; Dala City', '56 Phan Nhu Thach; Da Lat City', 1231282228, '1312314524.00', 'Net 15', 8, 'Le Song Anh Thu', '+84 957302423', 'trg@outlook.com.vn6', 'Suspended'),
(7, 'Phong Be', 'Phong Be VJS', '20 Co Giang; Ho Chi Minh City', '149/33A6 Banh Van Tran; Ho Chi Minh City', 5801273338, '67867867.00', 'Net 40', 8, 'Nguyen Le Huu Tam', '+84 934512422', 'trg@outlook.com.vn7', 'Deleted'),
(8, 'Cong Anh', 'Cong ty TNHH Cong Anh', '120 Dien Bien Phu; Ho Chi Minh City', '11 Tan Thanh; Ho Chi Minh City', 5801374449, '67867.00', 'Net 20', 9, 'Pham Viet Long', '+84 945624450', 'trg@outlook.com.vn8', 'Active'),
(9, 'Cuong Nang', 'Phang Nang Cuong VJS', '40 Cong Hoa; Ho Chi Minh City', '60 Tran Hung Dao; Ho Chi Minh City', 7801282228, '786756.00', 'Net 10', 9, 'Tran Cong Tuan', '+84 932484019', 'trg@outlook.com.vn9', 'Active'),
(10, 'Forrest   ', 'Forrest International', '49 Cong Hoa  ;   Ho Chi Minh City; Viet Nam  ', '90 Phu Dong Thien Vuong;   Ho Chi Minh City; Viet Nam   ', 6901282228, '464645654.00', 'Net 20', 9, 'Nguyen Bich Hoa   ', '+84 92451241   ', 'trg@outlook.com.vn10', 'Suspended'),
(11, 'Thu Thuy', 'Thuy Thuy Restaurant', '49 Truong Trinh; Ho Chi Minh City;Vietnam', '49 Xo Viet Nghe Tinh; Ho Chi Minh City;Vietnam', 4571282228, '45647897.00', 'Net 40', 9, 'Pham Minh Ngoc', '+84 93451242', 'trg@outlook.com.vn11', 'Active'),
(12, 'Tuan Hung', 'Cong ty TNHH Tuan Hung', 'RMIT Viet Nam; Ho Chi Minh city;Vietnam', 'RMIT Australia; Melbourne;Australia', 1234282228, '7573522345.00', 'net 30', 9, 'Pham Diem Thuy', '+84 93552242', 'trg@outlook.com.vn12', 'Suspended'),
(13, 'ABC ', 'ABC Company', '123 Nguyen Thai Binh;Ho Chi MInh;Viet Nam', '12 Cu Chi;Ho Chi MInh;Viet Nam', 23123131, '123.00', 'Net 30', 5, 'Tran Thanh Tung', '093241223', 'thanhtung@yahoo.com', 'Active'),
(14, 'Vinpearl', 'VinGroup', '123 abc street;Ho Chi Minh;Viet Nam', '45 Thai Binh;Nha Trang;VIet Nam', 23123131123, '123.00', '123123', 5, 'Pham Hong Thai', '023412344', 'thai.pham@vingroup.com', 'Suspended'),
(15, 'qeqwe', 'qweqwe', 'q13123;123123;qweqwe', '1231;1231;12312', 123123123123, '123123.00', '1231233', 5, '123', '1231', '231231', 'Deleted'),
(16, 'Test', 'Test Long', 'Test Street;HCM;Vietnam', 'Te;T;T', 99999999, '50000000.00', 'Te', 5, 'TestCP', '0909090909', 'Test@gmail.com', 'Deleted'),
(17, 'Cuong Anh', 'Tran Cuong Anh VJS', '124 Nguyen Van Linh;HCM;VIet Nam', 'abc street;LA;USA', 321321321, '1000000.00', 'Net 30', 1, 'Tuan Anh Tran', '0123456789', 'tuananh@tr.vn', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_create_date` datetime NOT NULL,
  `order_create_time` time NOT NULL,
  `order_close_date` datetime DEFAULT NULL,
  `order_close_time` time DEFAULT NULL,
  `order_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `order_net_total` int(50) NOT NULL,
  `order_tax` int(50) NOT NULL,
  `order_total` decimal(30,2) NOT NULL,
  `order_reference` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `user_id`, `order_create_date`, `order_create_time`, `order_close_date`, `order_close_time`, `order_status`, `order_note`, `customer_id`, `order_net_total`, `order_tax`, `order_total`, `order_reference`) VALUES
(1, 1, '2016-04-11 17:07:37', '16:55:47', '0000-00-00 00:00:00', NULL, '', '', 1, 284100000, 14555000, '298655000.00', 0),
(2, 1, '2016-03-23 12:58:54', '16:57:03', '0000-00-00 00:00:00', NULL, 'Processed', '', 1, 0, 0, '24570000.00', 1),
(3, 1, '2016-03-23 12:10:51', '16:57:03', '0000-00-00 00:00:00', NULL, 'Shipped', '', 1, 0, 0, '14735000.00', 2),
(4, 1, '2016-03-23 12:28:53', '16:57:03', '0000-00-00 00:00:00', NULL, 'Processed', '', 1, 0, 0, '0.00', 0),
(5, 1, '2016-03-23 13:13:59', '00:00:00', '0000-00-00 00:00:00', '00:00:00', 'Processed', '', 10, 0, 0, '6300000.00', 0),
(6, 1, '2016-03-23 13:14:33', '00:00:00', '0000-00-00 00:00:00', '00:00:00', 'Processed', '', 10, 0, 0, '6300000.00', 0),
(7, 1, '2016-04-11 13:32:50', '00:00:00', '0000-00-00 00:00:00', '00:00:00', 'Processed', '', 3, 0, 0, '173043200.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_category_id` int(11) NOT NULL DEFAULT '1',
  `item_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_unit_of_measurement` set('pcs') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pcs',
  `item_expiry_period` double(11,2) DEFAULT NULL,
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
  `item_description` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_VAT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_vendor` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_manufacturer` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_quantity` double(20,2) NOT NULL,
  `item_allocated_to_customer_order` decimal(20,2) NOT NULL,
  `item_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_photo` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_category_id`, `item_name`, `item_unit_of_measurement`, `item_expiry_period`, `item_cost`, `item_unit_price`, `item_power`, `item_power_unit`, `item_phase`, `item_voltage_low`, `item_voltage_high`, `item_frequency`, `item_diameter`, `item_capacity`, `item_area`, `item_description`, `item_VAT`, `item_vendor`, `item_manufacturer`, `item_quantity`, `item_allocated_to_customer_order`, `item_status`, `item_photo`) VALUES
('0000000', 1, 'TESTImage', 'pcs', 1.00, '11', '1000', 1.00, 'S', 1, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 'this is description', '10%', 'sad', 'SAMSUNG', 11.00, '0.00', NULL, 'god.jpg'),
('000000222', 2, 'NAMY', 'pcs', 1.00, '100000', '100000', 1.00, 'Ä‘d', 1, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 'aqweqweqweqweqweqwe', '10%', 'dd', 'SAMSUNG', 11.00, '0.00', NULL, 'IMG_1042.JPG'),
('011012', 1, 'Pumps', 'pcs', 0.00, '2000000', '3500000', 3.20, 'kW', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'this is testttt', '10%', 'Halo', 'Toshiba', 20.00, '0.00', 'Deleted', 'IMG_1042.JPG'),
('011516', 1, 'Whisperflo Pumps', 'pcs', NULL, '1000000', '3000000', 3.00, 'HP', NULL, 203.00, 230.00, NULL, NULL, NULL, NULL, 'PMP WFE-12 Full rated Energy efficient', '5%', 'Phong Vu', 'Hitachi', 30.00, '0.00', 'Deleted', NULL),
('22011', 1, 'Whisperflo Pumps', 'pcs', NULL, '1000000', '4000000', 5.00, 'HP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Whisperflo XP Pumps', '5%', 'ABC', 'Toshiba', 0.00, '0.00', 'Deleted', NULL),
('247928', 1, 'Whisperflo Pumps', 'pcs', NULL, '2000000', '2244244', 1.00, 'HP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, NULL),
('340056', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '2000000', '550000', 0.75, 'HP', 1, NULL, 220.00, NULL, NULL, NULL, NULL, 'this is item description. <br> <br> <br> testing testing testing. <br>\nsecond line testing', '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, 'IMG_1042.JPG'),
('340057', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '200000', '5555000', 1.00, 'HP', 1, NULL, 220.00, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, NULL),
('340058', 1, 'OPTIFLO PUMPS', 'pcs', NULL, '200000', '6000000', 1.50, 'HP', 1, 0.00, 220.00, 50.00, NULL, NULL, NULL, 'this is item description. this is item description. this is item description. this is item description. ', '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, 'god.jpg'),
('340095', 1, 'SUPERFLO PUMPS', 'pcs', NULL, '200000', '7000000', 1.00, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, NULL),
('340096', 1, 'SUPERFLO PUMPS', 'pcs', NULL, '200000', '8000000', 1.50, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, NULL),
('340097', 1, 'SUPERFLO PUMPS', 'pcs', NULL, '200000', '4000000', 2.00, 'HP', 1, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Toshiba', 0.00, '0.00', NULL, NULL),
('347926', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '6000000', 0.50, 'HP', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('347927', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '9000000', 0.75, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('347929', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '5000000', 1.50, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('347930', 1, 'Whisperflo Pumps', 'pcs', NULL, '200000', '4000000', 2.00, 'HP', 3, NULL, 220.00, 50.00, NULL, NULL, NULL, NULL, '5%', 'ABC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-15TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '2900000', NULL, NULL, NULL, NULL, NULL, NULL, 380.00, 6.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, 'god.jpg'),
('F-19S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '4500000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, 'IMG_1042.jpg'),
('F-19SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6000000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 9.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-19T6-TAG', 2, 'Tagelus Top Mount- Fiberglass with Valve', 'pcs', NULL, '200000', '3455111', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-19T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5600000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-19TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 480.00, 9.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-22SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5300000', NULL, NULL, NULL, NULL, NULL, NULL, 560.00, 12.00, NULL, NULL, '5%', 'VFC', 'Sanyo', 0.00, '0.00', NULL, NULL),
('F-22TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5004565', NULL, NULL, NULL, NULL, NULL, NULL, 560.00, 12.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-24S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-24S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-24T6-TAG', 2, 'Tagelus Top Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-24T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 610.00, 14.00, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-26TF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 660.00, 16.50, NULL, NULL, '5%', 'VFC', 'Samsung', 0.00, '0.00', NULL, NULL),
('F-30S-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F-30S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F-30SF-AZ', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 660.00, 16.50, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F-30T8-TACP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 762.00, 22.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F-36S8-TRCP', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 914.00, 32.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F-36S8-TRV', 2, 'Triton Side Mount-Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 914.00, 32.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('F19S8-TRCP', 1, 'TRITON II CleatPro - Side Mount - Fiberglass With Valve', 'pcs', NULL, '200000', '5000000', NULL, '', NULL, NULL, NULL, NULL, 480.00, 8.50, NULL, 'this is item description.  this is item description.  this is item description. ', '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, 'IMG_1042.JPG'),
('H-16-0301', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 39.00, 39.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0310', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 22.30, 20.50, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0314', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 4.60, 11.30, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0315', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 7.00, 17.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0316', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '5000000', NULL, NULL, NULL, NULL, NULL, NULL, 9.30, 22.70, NULL, 'this is item description.  this is item description.  ', '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, 'IMG_1042.JPG'),
('H-16-0317', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '200000', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 13.90, 34.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0318', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 18.60, 34.00, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0332', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 48.30, 48.30, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('H-16-0340', 2, 'Triton II CleatPro - Side Mount - Fiberglass with Valve', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, 29.70, 29.70, NULL, 'this is item description. ', '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, 'god.jpg'),
('Hana', 1, 'sasda', 'pcs', 22.00, '10000', '100000', 12.00, 'ee', 12, 12.00, 222.00, 22.00, 22.00, 12.00, 12.00, 'dddd', '10%', 'Nguyen Kim', 'Samsung', 12.00, '0.00', NULL, NULL),
('P-UFLB-071', 1, 'ULTRAFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 0.55, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'VFC', 'Panasonic', 0.00, '0.00', NULL, NULL),
('P-UFLB-073', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.55, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-101', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.75, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-103E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 0.75, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, 'this is item description. this is item description. this is item description. this is item description. this is item description. ', '5%', 'AFC', 'LG', 0.00, '0.00', NULL, 'IMG_1042.JPG'),
('P-UFLB-151', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '6700000', 1.10, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-153E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 1.10, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-201', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 1.50, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-203E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '970000', 1.50, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-301', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 2.20, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-UFLB-303E2*', 1, 'ULTRAFLO BOOSTER - Pentair Pool Products', 'pcs', NULL, '0', '670000', 2.20, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-071', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.55, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-073', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.55, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-101', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.75, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-103E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 0.75, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-151', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.10, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-153E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.10, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-201', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.50, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-203E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '670000', 1.50, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-301', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 2.20, 'kW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'LG', 0.00, '0.00', NULL, NULL),
('P-WFL-303E2*', 1, 'WHISPERFLO- Pentair Pool Product', 'pcs', NULL, '0', '6700000', 2.20, 'kW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R111316', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pool Brush, aluminum back 18"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R111366', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pool Brush, molded plastic back 18"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R111616', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Algae Brush, Aluminum back 6"', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R12126', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leaf rake 123', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R12166', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leaf skimmer 142S magnet', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R141106', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Floating themometer', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R151076', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '670000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test kit 2 in 1', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R161018', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1/2 ounce Penol red Solution', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R17086', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Floating tablet dispenser', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R191306', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Telescopic handle 2-pc 8-15.5 ft', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R1913880', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '7700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Telescopic handle 2-pc 12-36 ft, -3pcs', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R201060', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vaccum head 201 Flex-A-Vac', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('R201350', 3, 'Maintenance and Safety equipment', 'pcs', NULL, '0', '6700000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vaccum head 193 brush', '5%', 'AFC', 'Sharp', 0.00, '0.00', NULL, NULL),
('TOMMY', 1, 'TAMY sdasda', 'pcs', 22.00, '10000', '100000', 12.00, 'ee', 12, 12.00, 222.00, 22.00, 22.00, 12.00, 12.00, 'ssssdasdas', '10%', 'Nguyen Kim', 'Samsung Thailand', 12.00, '0.00', NULL, NULL),
('WOHOO', 1, 'Phong Be', 'pcs', 11.00, '12', '222', 1.00, 'sss', 11, 11.00, 11.00, 11.00, 11.00, 22.00, 22.00, '22', '10%', '12', '222', 12.00, '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `item_category_id` int(11) NOT NULL,
  `item_category_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
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

CREATE TABLE `item_storage_location` (
  `item_storage_location_id` int(11) NOT NULL,
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_storage_location`
--

INSERT INTO `item_storage_location` (`item_storage_location_id`, `item_id`, `storage_location_id`) VALUES
(1, '340056', 1),
(2, '340057', 2),
(3, '340058', 3),
(4, '340095', 4),
(5, '340096', 5),
(6, '340097', 6),
(7, 'F19S8-TRCP', 7),
(8, 'P-UFLB-071', 8),
(9, 'P-UFLB-073', 9),
(10, 'P-UFLB-101', 10),
(11, 'P-UFLB-103E2*', 11),
(12, 'P-UFLB-151', 12);

-- --------------------------------------------------------

--
-- Table structure for table `item_warehouse`
--

CREATE TABLE `item_warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `order_line_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_line_create_time` time NOT NULL,
  `order_line_create_date` datetime NOT NULL,
  `order_line_item_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_line_item_quantity` int(11) NOT NULL,
  `order_line_item_total_value` int(11) DEFAULT NULL,
  `order_line_item_vendor_id` int(11) DEFAULT NULL,
  `order_line_deliver_date` datetime NOT NULL,
  `order_line_selling_price` decimal(30,2) NOT NULL,
  `order_line_net_selling_price` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`order_line_id`, `order_id`, `order_line_create_time`, `order_line_create_date`, `order_line_item_id`, `order_line_item_quantity`, `order_line_item_total_value`, `order_line_item_vendor_id`, `order_line_deliver_date`, `order_line_selling_price`, `order_line_net_selling_price`) VALUES
(1, 1, '16:59:00', '2016-04-11 17:07:37', '340056', 22, 0, NULL, '2015-12-31 00:00:00', '550000.00', '12100000.00'),
(2, 1, '16:59:55', '2016-04-11 17:07:37', '011012', 2, 0, NULL, '1970-01-01 00:00:00', '3500000.00', '7000000.00'),
(3, 1, '17:00:24', '2016-04-11 17:07:37', 'F19S8-TRCP', 53, 0, NULL, '2016-01-14 00:00:00', '5000000.00', '265000000.00'),
(4, 2, '17:01:20', '2016-03-23 12:58:54', 'H-16-0316', 2, 0, NULL, '2016-01-13 00:00:00', '5000000.00', '10000000.00'),
(5, 2, '17:01:53', '2016-03-23 12:58:54', 'P-UFLB-103E2*', 2, 0, NULL, '2015-12-30 00:00:00', '6700000.00', '13400000.00'),
(6, 3, '17:01:53', '2016-03-23 12:10:51', 'H-16-0340', 1, 0, NULL, '2015-12-30 00:00:00', '6700000.00', '6700000.00'),
(7, 3, '17:01:53', '2016-03-23 12:10:51', '011012', 2, 0, NULL, '2015-12-30 00:00:00', '3500000.00', '7000000.00'),
(8, 4, '17:01:53', '2016-03-23 12:28:53', '340058', 2, 0, NULL, '2015-12-30 00:00:00', '6000000.00', '12000000.00'),
(9, 7, '00:00:00', '2016-04-11 13:32:50', '0000000', 12, 0, NULL, '0000-00-00 00:00:00', '1000.00', '12000.00'),
(10, 7, '00:00:00', '2016-04-11 13:32:50', '000000222', 33, 0, NULL, '0000-00-00 00:00:00', '100000.00', '3300000.00'),
(11, 7, '00:00:00', '2016-04-11 13:32:50', '011012', 44, 0, NULL, '0000-00-00 00:00:00', '3500000.00', '154000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `quotation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quotation_create_date` datetime NOT NULL,
  `quotation_close_date` datetime DEFAULT NULL,
  `quotation_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_net_total` int(50) NOT NULL,
  `quotation_tax` int(50) NOT NULL,
  `quotation_total` double(70,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`quotation_id`, `user_id`, `customer_id`, `quotation_create_date`, `quotation_close_date`, `quotation_status`, `quotation_note`, `quotation_net_total`, `quotation_tax`, `quotation_total`) VALUES
(1, 1, 4, '2016-04-11 22:34:41', '0000-00-00 00:00:00', 'Waiting', '', 88800000, 4440000, 93240000.00),
(2, 1, 4, '2016-03-23 01:15:58', '0000-00-00 00:00:00', 'Waiting', '', 0, 0, 0.00),
(3, 1, 2, '2016-03-23 00:52:58', '0000-00-00 00:00:00', 'Closed', '', 0, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_line`
--

CREATE TABLE `quotation_line` (
  `quotation_line_id` int(11) NOT NULL,
  `quotation_line_estimate_net_price` double(30,2) NOT NULL,
  `quotation_line_item_total_value` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `quotation_line_create_date` datetime NOT NULL,
  `quotation_line_item_id` varchar(25) NOT NULL,
  `quotation_line_item_quantity` int(11) NOT NULL,
  `quotation_line_estimate_price` double(50,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_line`
--

INSERT INTO `quotation_line` (`quotation_line_id`, `quotation_line_estimate_net_price`, `quotation_line_item_total_value`, `quotation_id`, `quotation_line_create_date`, `quotation_line_item_id`, `quotation_line_item_quantity`, `quotation_line_estimate_price`) VALUES
(1, 54000000.00, 0, 1, '2016-04-11 22:34:41', 'F-19S8-TRV', 12, 4500000.00),
(2, 34800000.00, 0, 1, '2016-04-11 22:34:41', 'F-15TF-AZ', 12, 2900000.00),
(3, 200000000.00, 0, 2, '2016-03-23 00:00:00', 'F-19S8-TRV', 13, 0.00),
(4, 50000000.00, 0, 2, '2016-03-23 00:00:00', '347926', 10, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `sale_transaction`
--

CREATE TABLE `sale_transaction` (
  `sale_transaction_id` int(11) NOT NULL,
  `order_line_id` int(11) NOT NULL,
  `sale_transaction_create_date` date NOT NULL,
  `sale_transaction_close_date` date DEFAULT NULL,
  `sale_transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_transaction_level` int(11) DEFAULT NULL,
  `sale_transaction_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_transaction_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `staff` (
  `staff_id` int(4) NOT NULL,
  `staff_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_position` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_start_date` date NOT NULL,
  `staff_end_date` date DEFAULT NULL,
  `staff_supervisor_id` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `storage_location` (
  `storage_location_id` int(11) NOT NULL,
  `storage_location_shelf` int(11) NOT NULL,
  `storage_location_row` int(11) NOT NULL,
  `storage_location_column` int(11) NOT NULL,
  `storage_location_condition` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `storage_location_warehouse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storage_location`
--

INSERT INTO `storage_location` (`storage_location_id`, `storage_location_shelf`, `storage_location_row`, `storage_location_column`, `storage_location_condition`, `storage_location_warehouse_id`) VALUES
(1, 1, 1, 1, 'active', 1),
(2, 1, 1, 2, 'active', 1),
(3, 1, 1, 3, 'active', 1),
(4, 2, 1, 1, 'active', 1),
(5, 2, 1, 2, 'active', 1),
(6, 2, 1, 3, 'active', 1),
(7, 1, 1, 1, 'active', 2),
(8, 1, 2, 1, 'active', 2),
(9, 1, 3, 1, 'active', 2),
(10, 2, 1, 1, 'active', 2),
(11, 2, 2, 1, 'active', 2),
(12, 2, 3, 1, 'active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(11) NOT NULL,
  `user_create_date` date NOT NULL,
  `user_delete_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `staff_id`, `user_create_date`, `user_delete_date`) VALUES
(1, 'tuananhceo', 'tuananhceo', 1, '2015-12-18', NULL),
(2, 'minhhoangwm', 'minhhoangwm', 2, '2015-12-18', NULL),
(3, 'xuanthanhsm', 'xuanthanhsm', 3, '2015-12-18', NULL),
(4, 'thoaacc', 'thoaacc', 4, '2015-12-18', NULL),
(5, 'thehanhts', 'thehanhts', 5, '2015-12-18', NULL),
(6, 'haiphongws', 'haiphongws', 6, '2015-12-18', NULL),
(7, 'hoanganhwtl', 'hoanganhwtl', 7, '2015-12-18', NULL),
(8, 'nangcuongstl', 'nangcuongstl', 8, '2015-12-18', NULL),
(9, 'danglamss', 'danglamss', 9, '2015-12-18', NULL),
(10, 'anhtuanhrs', 'anhtuanhrs', 10, '2015-12-18', NULL),
(11, 'tribinhhrtl', 'tribinhhrtl', 11, '2015-12-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `warehouse_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_location`, `warehouse_capacity`) VALUES
(1, 'location_test', 1000),
(2, 'location_test_2', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transaction`
--

CREATE TABLE `warehouse_transaction` (
  `warehouse_transaction_id` int(11) NOT NULL,
  `warehouse_transaction_create_date` datetime NOT NULL,
  `warehouse_transaction_close_date` datetime DEFAULT NULL,
  `warehouse_transaction_storage_location_id` int(11) NOT NULL,
  `warehouse_transaction_user_id` int(11) NOT NULL,
  `warehouse_transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_transaction_type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_transaction_total_quantity` int(50) NOT NULL,
  `warehouse_transaction_total_cost` double(70,0) NOT NULL,
  `warehouse_transaction_warehouse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_transaction`
--

INSERT INTO `warehouse_transaction` (`warehouse_transaction_id`, `warehouse_transaction_create_date`, `warehouse_transaction_close_date`, `warehouse_transaction_storage_location_id`, `warehouse_transaction_user_id`, `warehouse_transaction_status`, `warehouse_transaction_type`, `warehouse_transaction_total_quantity`, `warehouse_transaction_total_cost`, `warehouse_transaction_warehouse_id`) VALUES
(1, '2015-12-28 00:00:00', NULL, 1, 1, 'pending', 'normal', 0, 0, 0),
(2, '2015-12-28 00:00:00', NULL, 2, 3, 'pending', 'normal', 0, 0, 0),
(3, '2015-12-28 00:00:00', NULL, 3, 1, 'pending', 'normal', 0, 0, 0),
(4, '2015-12-28 00:00:00', '2015-12-31 00:00:00', 4, 1, 'closed', 'normal', 0, 0, 0),
(5, '2015-12-28 00:00:00', NULL, 5, 4, 'pending', 'normal', 0, 0, 0),
(6, '2015-12-28 00:00:00', '0000-00-00 00:00:00', 1, 1, 'abc', 'Receipt', 10, 900000, 1),
(7, '2015-12-28 00:00:00', '0000-00-00 00:00:00', 1, 1, 'abc', 'Receipt', 10, 900000, 1),
(8, '2016-04-10 15:51:27', '0000-00-00 00:00:00', 1, 1, 'pending', 'Receipt', 12, 264, 1),
(9, '2016-04-10 16:03:22', '0000-00-00 00:00:00', 1, 1, NULL, 'Receipt', 12, 264, 1),
(10, '2016-04-10 16:03:52', '0000-00-00 00:00:00', 1, 1, NULL, 'Receipt', 12, 264, 1),
(11, '2016-04-10 16:04:46', '0000-00-00 00:00:00', 1, 1, NULL, 'Receipt', 12, 264, 1),
(12, '2016-04-10 16:05:34', '0000-00-00 00:00:00', 1, 1, NULL, 'Receipt', 12, 264, 1),
(13, '2016-04-10 16:14:58', '0000-00-00 00:00:00', 3, 1, NULL, 'Receipt', 22, 486220, 2),
(14, '2016-04-10 16:17:26', '0000-00-00 00:00:00', 1, 1, NULL, 'Receipt', 11, 61000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_transaction_line`
--

CREATE TABLE `warehouse_transaction_line` (
  `warehouse_transaction_line_id` int(90) NOT NULL,
  `warehouse_transaction_line_item_id` varchar(25) NOT NULL,
  `warehouse_transaction_line_quantity` int(11) NOT NULL,
  `warehouse_transaction_line_cost` decimal(65,0) NOT NULL,
  `warehouse_transaction_line_total_cost` decimal(65,0) NOT NULL,
  `warehouse_transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse_transaction_line`
--

INSERT INTO `warehouse_transaction_line` (`warehouse_transaction_line_id`, `warehouse_transaction_line_item_id`, `warehouse_transaction_line_quantity`, `warehouse_transaction_line_cost`, `warehouse_transaction_line_total_cost`, `warehouse_transaction_id`) VALUES
(1, '22011', 12, '22', '264', 12),
(2, '22011', 12, '22000', '264000', 13),
(3, '0000000', 10, '22222', '222220', 13),
(4, '011012', 5, '5000', '25000', 14),
(5, 'F-15TF-AZ', 6, '6000', '36000', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`authority_code`),
  ADD KEY `authority_name` (`authority_code`);

--
-- Indexes for table `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`authorization_id`),
  ADD KEY `authorization_user` (`user_id`),
  ADD KEY `authorization_authority` (`authority_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `Customer_staff` (`staff_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `customer_order_id` (`order_id`),
  ADD KEY `User_Order` (`user_id`),
  ADD KEY `customer_order` (`customer_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_item_category` (`item_category_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`item_category_id`);

--
-- Indexes for table `item_storage_location`
--
ALTER TABLE `item_storage_location`
  ADD PRIMARY KEY (`item_storage_location_id`),
  ADD KEY `item_storage_location_storage_location` (`storage_location_id`),
  ADD KEY `item_storagea_location_item` (`item_id`);

--
-- Indexes for table `item_warehouse`
--
ALTER TABLE `item_warehouse`
  ADD PRIMARY KEY (`warehouse_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`order_line_id`),
  ADD KEY `order_order_line` (`order_id`),
  ADD KEY `order_line_item` (`order_line_item_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`quotation_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_line`
--
ALTER TABLE `quotation_line`
  ADD PRIMARY KEY (`quotation_line_id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `quotation_line_item_id` (`quotation_line_item_id`);

--
-- Indexes for table `sale_transaction`
--
ALTER TABLE `sale_transaction`
  ADD PRIMARY KEY (`sale_transaction_id`),
  ADD KEY `Sale_Transaction_User` (`sale_transaction_user_id`),
  ADD KEY `sale_transaction_order_line` (`order_line_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `storage_location`
--
ALTER TABLE `storage_location`
  ADD PRIMARY KEY (`storage_location_id`),
  ADD KEY `storage_location_warehouse` (`storage_location_warehouse_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_staff` (`staff_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `warehouse_transaction`
--
ALTER TABLE `warehouse_transaction`
  ADD PRIMARY KEY (`warehouse_transaction_id`),
  ADD KEY `Warehouse_Transaction_User` (`warehouse_transaction_user_id`),
  ADD KEY `warehouse_transaction_item_storage_location` (`warehouse_transaction_storage_location_id`);

--
-- Indexes for table `warehouse_transaction_line`
--
ALTER TABLE `warehouse_transaction_line`
  ADD PRIMARY KEY (`warehouse_transaction_line_id`),
  ADD KEY `warehouse_transaction_id` (`warehouse_transaction_id`),
  ADD KEY `warehouse_transaction_line_item_id` (`warehouse_transaction_line_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorization`
--
ALTER TABLE `authorization`
  MODIFY `authorization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `item_storage_location`
--
ALTER TABLE `item_storage_location`
  MODIFY `item_storage_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `quotation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotation_line`
--
ALTER TABLE `quotation_line`
  MODIFY `quotation_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sale_transaction`
--
ALTER TABLE `sale_transaction`
  MODIFY `sale_transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `warehouse_transaction`
--
ALTER TABLE `warehouse_transaction`
  MODIFY `warehouse_transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `warehouse_transaction_line`
--
ALTER TABLE `warehouse_transaction_line`
  MODIFY `warehouse_transaction_line_id` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorization`
--
ALTER TABLE `authorization`
  ADD CONSTRAINT `authorization_authority` FOREIGN KEY (`authority_code`) REFERENCES `authority` (`authority_code`),
  ADD CONSTRAINT `authorization_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Customer_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `User_Order` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `customer_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_item_category` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`item_category_id`);

--
-- Constraints for table `item_storage_location`
--
ALTER TABLE `item_storage_location`
  ADD CONSTRAINT `item_storage_location_storage_location` FOREIGN KEY (`storage_location_id`) REFERENCES `storage_location` (`storage_location_id`),
  ADD CONSTRAINT `item_storagea_location_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

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
  ADD CONSTRAINT `Sale_Transaction_User` FOREIGN KEY (`sale_transaction_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `sale_transaction_order_line` FOREIGN KEY (`order_line_id`) REFERENCES `order_line` (`order_line_id`);

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

--
-- Constraints for table `warehouse_transaction_line`
--
ALTER TABLE `warehouse_transaction_line`
  ADD CONSTRAINT `warehouse_transaction_line_ibfk_1` FOREIGN KEY (`warehouse_transaction_id`) REFERENCES `warehouse_transaction` (`warehouse_transaction_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
