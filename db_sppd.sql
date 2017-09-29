-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2017 at 01:40 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sppd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`) VALUES
(1, 'root', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub_budget` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `name`, `sub_budget`) VALUES
(23, '234234234', '1'),
(27, '234234234', '234324'),
(24, '234234234', '3'),
(25, '234234234', '33'),
(26, '234234234', 'ddd'),
(28, '234234234', 'sdfdsf'),
(3, '3470.004.011', '524111'),
(4, '3470.004.011', '524112'),
(7, '3470.004.022', '9843.001'),
(8, '3470.004.022', '9843.002');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `province_id`) VALUES
(1, 'Jakarta Barat', 6),
(2, 'Jakarta Timur', 6),
(3, 'Bandung', 2),
(4, 'Cirebon', 2),
(5, 'Semarang', 4),
(6, 'Pemalang', 4),
(7, 'Surabaya', 5),
(8, 'Brebes', 4),
(9, 'Tegal', 4),
(10, 'Pekalongan', 4),
(11, 'Kendal', 4),
(19, 'Purbalingga', 4),
(20, 'Godong', 4),
(21, 'Purwokerto', 4);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `office_class_id` int(11) DEFAULT NULL,
  `office_position_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`id`, `name`, `phone_number`, `email`, `office_class_id`, `office_position_id`) VALUES
(1, 'Ir. Setiyono, M.Si', '081123456', 'setiyono@email.com', 6, 1),
(2, 'Nama', 'telp', 'email', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `office_class`
--

CREATE TABLE `office_class` (
  `id` int(11) NOT NULL,
  `name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_class`
--

INSERT INTO `office_class` (`id`, `name`) VALUES
(1, '1C'),
(2, '1D'),
(3, '2A'),
(4, '2B'),
(5, '2C'),
(6, '2D');

-- --------------------------------------------------------

--
-- Table structure for table `office_position`
--

CREATE TABLE `office_position` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imutable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_position`
--

INSERT INTO `office_position` (`id`, `name`, `imutable`) VALUES
(1, 'Kepala Balai Teknologi', 1),
(2, 'Pejabat Pembuat Komitmen', 1),
(3, 'Bendahara', 1),
(4, 'Staff', 0);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(6, 'Dki Jakarta'),
(2, 'Jawa Barat'),
(4, 'Jawa Tengah'),
(5, 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `name`) VALUES
(2, 'Balon Udara'),
(5, 'Gojeg'),
(1, 'Kendaraan Umum'),
(3, 'Kereta Api'),
(4, 'Pesawat Terbang');

-- --------------------------------------------------------

--
-- Table structure for table `travel_expenses`
--

CREATE TABLE `travel_expenses` (
  `id` int(11) NOT NULL,
  `office_class_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `transportation_costs` int(100) NOT NULL,
  `lodging_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_expenses`
--

INSERT INTO `travel_expenses` (`id`, `office_class_id`, `province_id`, `transportation_costs`, `lodging_cost`) VALUES
(2, 1, 2, 430123, 435000),
(4, 1, 2, 430000, 435000),
(5, 1, 2, 430000, 435000),
(6, 1, 6, 2000, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`sub_budget`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_class_id` (`office_class_id`),
  ADD KEY `officer_ibfk_1` (`office_position_id`);

--
-- Indexes for table `office_class`
--
ALTER TABLE `office_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_position`
--
ALTER TABLE `office_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `travel_expenses`
--
ALTER TABLE `travel_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_expenses_ibfk_1` (`office_class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `office_class`
--
ALTER TABLE `office_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `office_position`
--
ALTER TABLE `office_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `travel_expenses`
--
ALTER TABLE `travel_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `officer_ibfk_1` FOREIGN KEY (`office_position_id`) REFERENCES `office_position` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `officer_ibfk_2` FOREIGN KEY (`office_class_id`) REFERENCES `office_class` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `travel_expenses`
--
ALTER TABLE `travel_expenses`
  ADD CONSTRAINT `travel_expenses_ibfk_1` FOREIGN KEY (`office_class_id`) REFERENCES `office_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
