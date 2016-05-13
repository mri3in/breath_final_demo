-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 08:47 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

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
  `role_id` int(11) NOT NULL,
  `pages` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`authority_code`, `role_id`, `pages`) VALUES
('222', 3, 'create_item.html'),
('22sss2424', 3, 'create_customer.html'),
('22sss24242', 3, 'authority.html'),
('asd122', 3, 'create_customer.html'),
('AUTHORIZATION_CRUD', 0, ''),
('AUTHORIZATION_R', 0, ''),
('AUTHORIZATION_RU', 0, ''),
('AUTHORIZATION_RUD', 0, ''),
('bitt', 3, 'authority.html'),
('CUSTOMER_DETAIL_CRUD', 0, ''),
('CUSTOMER_DETAIL_R', 0, ''),
('CUSTOMER_DETAIL_RU', 0, ''),
('CUSTOMER_DETAIL_RUD', 0, ''),
('ITEM_CATEGORY_CRUD', 0, ''),
('ITEM_CATEGORY_R', 0, ''),
('ITEM_CATEGORY_RU', 0, ''),
('ITEM_CATEGORY_RUD', 0, ''),
('ITEM_CRUD', 0, ''),
('ITEM_R', 0, ''),
('ITEM_RU', 0, ''),
('ITEM_RUD', 0, ''),
('ITEM_STORAGE_LOCATION_CRUD', 0, ''),
('ITEM_STORAGE_LOCATION_R', 0, ''),
('ITEM_STORAGE_LOCATION_RU', 0, ''),
('ITEM_STORAGE_LOCATION_RUD', 0, ''),
('ITEM_WAREHOUSE_CRUD', 0, ''),
('ITEM_WAREHOUSE_R', 0, ''),
('ITEM_WAREHOUSE_RU', 0, ''),
('ITEM_WAREHOUSE_RUD', 0, ''),
('ORDER_CRUD', 0, ''),
('ORDER_LINE_CRUD', 0, ''),
('ORDER_LINE_R', 0, ''),
('ORDER_LINE_RU', 0, ''),
('ORDER_LINE_RUD', 0, ''),
('ORDER_R', 0, ''),
('ORDER_RU', 0, ''),
('ORDER_RUD', 0, ''),
('sadasd', 3, 'create_customer.html'),
('SALE_TRANSACTION_CRUD', 0, ''),
('SALE_TRANSACTION_R', 0, ''),
('SALE_TRANSACTION_RU', 0, ''),
('SALE_TRANSACTION_RUD', 0, ''),
('sasdqww', 1, 'c|c'),
('sccv', 3, 'authority.html'),
('sccv2412', 1, 'c'),
('sdasd', 1, 'authority.html'),
('sdfsdf', 2, 'create_customer.html'),
('ssdsd', 2, 'c|'),
('sss', 2, 'a:1:{i:0;a:1:{i:0;s:28:"create_storage_location.html";}}'),
('sss22', 2, 'Array'),
('sss224', 2, 'create_order_no_convert_template.html'),
('STAFF_DETAIL_CRUD', 0, ''),
('STAFF_DETAIL_R', 0, ''),
('STAFF_DETAIL_RU', 0, ''),
('STAFF_DETAIL_RUD', 0, ''),
('STORAGE_LOCATION_CRUD', 0, ''),
('STORAGE_LOCATION_R', 0, ''),
('STORAGE_LOCATION_RU', 0, ''),
('STORAGE_LOCATION_RUD', 0, ''),
('USER_AUTHORITY_CRUD', 0, ''),
('USER_AUTHORITY_R', 0, ''),
('USER_AUTHORITY_RU', 0, ''),
('USER_AUTHORITY_RUD', 0, ''),
('USER_DETAIL_CRUD', 0, ''),
('USER_DETAIL_R', 0, ''),
('USER_DETAIL_RU', 0, ''),
('USER_DETAIL_RUD', 0, ''),
('WAREHOUSE_CRUD', 0, ''),
('WAREHOUSE_R', 0, ''),
('WAREHOUSE_RU', 0, ''),
('WAREHOUSE_RUD', 0, ''),
('WAREHOUSE_TRANSACTION_CRUD', 0, ''),
('WAREHOUSE_TRANSACTION_R', 0, ''),
('WAREHOUSE_TRANSACTION_RU', 0, ''),
('WAREHOUSE_TRANSACTION_RUD', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`authority_code`),
  ADD UNIQUE KEY `authority_code` (`authority_code`),
  ADD KEY `authority_name` (`authority_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
