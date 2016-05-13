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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(11) NOT NULL,
  `user_create_date` date NOT NULL,
  `user_delete_date` date DEFAULT NULL,
  `role_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `staff_id`, `user_create_date`, `user_delete_date`, `role_id`) VALUES
(1, 'tuananhceo', 'tuananhceo', 1, '2015-12-18', NULL, 0),
(2, 'minhhoangwm', 'minhhoangwm', 2, '2015-12-18', NULL, 0),
(3, 'xuanthanhsm', 'xuanthanhsm', 3, '2015-12-18', NULL, 0),
(4, 'thoaacc', 'thoaacc', 4, '2015-12-18', NULL, 0),
(5, 'thehanhts', 'thehanhts', 5, '2015-12-18', NULL, 0),
(6, 'haiphongws', 'haiphongws', 6, '2015-12-18', NULL, 0),
(7, 'hoanganhwtl', 'hoanganhwtl', 7, '2015-12-18', NULL, 0),
(8, 'nangcuongstl', 'nangcuongstl', 8, '2015-12-18', NULL, 0),
(9, 'danglamss', 'danglamss', 9, '2015-12-18', NULL, 0),
(10, 'anhtuanhrs', 'anhtuanhrs', 10, '2015-12-18', NULL, 0),
(11, 'tribinhhrtl', 'tribinhhrtl', 11, '2015-12-18', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_staff` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
