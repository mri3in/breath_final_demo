-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2016 at 05:55 PM
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
(2, 'minhhoangwm', 'minhhoangwm', 2, '2015-12-18', NULL, 'Warehouse Manager'),
(3, 'xuanthanhsm', 'xuanthanhsm', 3, '2015-12-18', NULL, 'Sale Manager'),
(4, 'thoaacc', 'thoaacc', 4, '2015-12-18', NULL, 'Accountant'),
(5, 'thehanhts', 'thehanhts', 5, '2015-12-18', NULL, 'Technical Staff'),
(6, 'haiphongws', 'haiphongws', 6, '2015-12-18', NULL, 'Warehouse Staff'),
(7, 'hoanganhwtl', 'hoanganhwtl', 7, '2015-12-18', NULL, 'Warehouse Staff'),
(8, 'nangcuongstl', 'nangcuongstl', 8, '2015-12-18', NULL, 'Sale Staff'),
(9, 'danglamss', 'danglamss', 9, '2015-12-18', NULL, 'Sale Staff'),
(10, 'anhtuanhrs', 'anhtuanhrs', 10, '2015-12-18', NULL, 'Staff'),
(11, 'tribinhhrtl', 'tribinhhrtl', 11, '2015-12-18', NULL, 'Staff');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
