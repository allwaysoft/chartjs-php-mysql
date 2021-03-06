-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 10:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chartjs-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `average_price` int(4) NOT NULL,
  `period` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`id`, `destination_id`, `average_price`, `period`) VALUES
(1, 1, 12, 0),
(2, 1, 19, 1),
(3, 1, 28, 2),
(4, 1, 15, 3),
(5, 1, 18, 4),
(6, 1, 10, 5),
(7, 1, 15, 6),
(8, 1, 18, 7),
(9, 1, 24, 8),
(10, 1, 20, 9),
(11, 1, 10, 10),
(12, 1, 13, 11),
(13, 1, 18, 12),
(14, 1, 22, 13),
(15, 1, 15, 14),
(16, 1, 8, 15),
(17, 1, 12, 16),
(18, 1, 16, 17),
(19, 1, 13, 18),
(20, 1, 23, 19),
(21, 1, 18, 20),
(22, 1, 12, 21),
(23, 1, 10, 22),
(24, 1, 15, 23),
(49, 2, 18, 0),
(50, 2, 12, 1),
(51, 2, 15, 2),
(52, 2, 9, 3),
(53, 2, 18, 4),
(54, 2, 20, 5),
(55, 2, 14, 6),
(56, 2, 12, 7),
(57, 2, 19, 8),
(58, 2, 10, 9),
(59, 2, 12, 10),
(60, 2, 17, 11),
(61, 2, 12, 12),
(62, 2, 22, 13),
(63, 2, 18, 14),
(64, 2, 13, 15),
(65, 2, 17, 16),
(66, 2, 9, 17),
(67, 2, 14, 18),
(68, 2, 20, 19),
(69, 2, 21, 20),
(70, 2, 16, 21),
(71, 2, 12, 22),
(72, 2, 15, 23);

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`) VALUES
(1, 'Lufthanza'),
(2, 'Pegasus'),
(3, 'EVA Air'),
(4, 'Emirates');

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentage` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `destination_id`, `name`, `percentage`) VALUES
(1, 1, 'Museums', 20),
(2, 1, 'Forests / Parks', 55),
(3, 1, 'Beaches', 10),
(4, 1, 'Gardens / Zoos', 15),
(5, 2, 'Museums', 35),
(6, 2, 'Forests / Parks', 25),
(7, 2, 'Beaches', 30),
(8, 2, 'Gardens / Zoos', 10);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`) VALUES
(1, 'Spain'),
(2, 'Italy');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `airline_id` int(11) NOT NULL,
  `price` int(4) NOT NULL,
  `date_order` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `destination_id`, `airline_id`, `price`, `date_order`) VALUES
(1, 1, 1, 215, 0),
(2, 1, 1, 180, 1),
(3, 1, 1, 120, 2),
(4, 1, 1, 135, 3),
(5, 1, 2, 310, 0),
(6, 1, 2, 275, 1),
(7, 1, 2, 170, 2),
(8, 1, 2, 210, 3),
(9, 1, 3, 140, 0),
(10, 1, 3, 190, 1),
(11, 1, 3, 165, 2),
(12, 1, 3, 110, 3),
(13, 1, 4, 250, 0),
(14, 1, 4, 188, 1),
(15, 1, 4, 210, 2),
(16, 1, 4, 280, 3),
(17, 2, 1, 250, 0),
(18, 2, 1, 290, 1),
(19, 2, 1, 250, 2),
(20, 2, 1, 200, 3),
(21, 2, 2, 150, 0),
(22, 2, 2, 210, 1),
(23, 2, 2, 270, 2),
(24, 2, 2, 300, 3),
(25, 2, 3, 180, 0),
(26, 2, 3, 220, 1),
(27, 2, 3, 170, 2),
(28, 2, 3, 200, 3),
(29, 2, 4, 280, 0),
(30, 2, 4, 210, 1),
(31, 2, 4, 180, 2),
(32, 2, 4, 250, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`),
  ADD KEY `airline_id` (`airline_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation`
--
ALTER TABLE `accommodation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `attractions`
--
ALTER TABLE `attractions`
  ADD CONSTRAINT `attractions_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
