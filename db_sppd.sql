-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2017 at 11:16 AM
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
(21, 'Purwokerto', 4),
(22, 'Jakarta Utara', 6),
(23, 'Jakarta Selatan', 6),
(24, 'Jakarta Tengah', 6),
(25, 'Malang', 5),
(26, 'Sukabumi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `officer_id` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `office_class_id` int(11) DEFAULT NULL,
  `office_position_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`id`, `name`, `officer_id`, `phone_number`, `office_class_id`, `office_position_id`) VALUES
(1, 'Ir. Setiyono, M.Si', '081123456', '081111133434343', 6, 1),
(2, 'Pegawai 1', '111111111', '024234234', 4, 4),
(3, 'Pegawai 2', '222222222', '024234234', 5, 3),
(4, 'Pegawai 3', '333333333', '024234234', 6, 4);

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
(6, 'DKI Jakarta'),
(2, 'Jawa Barat'),
(4, 'Jawa Tengah'),
(5, 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `sppd`
--

CREATE TABLE `sppd` (
  `id` int(11) NOT NULL,
  `state` int(1) NOT NULL DEFAULT '1',
  `reference_number` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_day` int(11) DEFAULT NULL,
  `base` text NOT NULL,
  `objective` text NOT NULL,
  `task` text NOT NULL,
  `description` text NOT NULL,
  `chief_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`id`, `state`, `reference_number`, `start_date`, `end_date`, `total_day`, `base`, `objective`, `task`, `description`, `chief_name`) VALUES
(5, 2, '3.a/BTPAL/ST/10/2017', '2017-09-01', '2017-09-03', 3, 'dasar', 'Brebes', 'tugas', 'keterangan', 'Ir. Setiyono, M.Si'),
(6, 1, '2.a/BTPAL/ST/10/2017', '2017-09-01', '2017-09-04', 4, 'Dasar1', 'Cirebon', 'Tigas', 'Keterangan', 'Ir. Setiyono, M.Si'),
(7, 2, '7.a/BTPAL/ST/10/2017', '2017-09-01', '2017-09-05', 5, 'd', 'Brebes', 'asdf', 'safd', 'Ir. Setiyono, M.Si'),
(8, 1, '8.a/BTPAL/ST/10/2017', '2017-09-08', '2017-09-16', 8, 'asfdasdf', 'Cirebon', 'sadf', 'asdf', 'Ir. Setiyono, M.Si'),
(12, 1, '9.a/BTPAL/ST/10/2017', '2017-09-09', '2017-09-16', 7, 'test1', 'Jakarta Timur', 'test1', 'test1', 'Ir. Setiyono, M.Si'),
(15, 1, '9.a/BTPAL/ST/10/2017', '2017-09-09', '2017-09-16', 7, 'test1', 'Jakarta Timur', 'test1', 'test1', 'Ir. Setiyono, M.Si'),
(17, 1, '17.a/BTPAL/ST/10/2017', '2017-09-12', '2017-09-11', 1, '17', 'Jakarta Timur', '17', '17', 'Ir. Setiyono, M.Si'),
(18, 1, '18.a/BTPAL/ST/10/2017', '2017-09-15', '2017-09-14', 1, '18', 'Jakarta Timur', '18', '18', 'Ir. Setiyono, M.Si');

-- --------------------------------------------------------

--
-- Table structure for table `sppd_officer`
--

CREATE TABLE `sppd_officer` (
  `id` int(11) NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `sppd_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `officer_id` varchar(100) NOT NULL,
  `office_class_name` varchar(100) NOT NULL,
  `office_position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppd_officer`
--

INSERT INTO `sppd_officer` (`id`, `reference_number`, `sppd_id`, `name`, `officer_id`, `office_class_name`, `office_position_name`) VALUES
(6, '6/SPD/BTPAL/X/2017', 5, 'Pegawai 1', '43234234', '2B', 'Staff'),
(7, '7/SPD/BTPAL/X/2017', 5, 'Pegawai 3', '43234234', '2D', 'Staff'),
(13, '13/SPD/BTPAL/X/2017', 6, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi'),
(14, '14/SPD/BTPAL/X/2017', 7, 'Pegawai 2', '43234234', '2C', 'Bendahara'),
(15, '15/SPD/BTPAL/X/2017', 7, 'Pegawai 1', '43234234', '2B', 'Staff'),
(16, '16/SPD/BTPAL/X/2017', 7, 'Pegawai 3', '43234234', '2D', 'Staff'),
(17, '17/SPD/BTPAL/X/2017', 8, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi'),
(18, '18/SPD/BTPAL/X/2017', 8, 'Pegawai 2', '43234234', '2C', 'Bendahara'),
(19, '19/SPD/BTPAL/X/2017', 12, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi'),
(25, '20/SPD/BTPAL/X/2017', 15, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi'),
(29, '26/SPD/BTPAL/X/2017', 17, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi'),
(30, '30/SPD/BTPAL/X/2017', 18, 'Pegawai 1', '111111111', '2B', 'Staff');

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
(6, 1, 6, 300000, 330000),
(7, 2, 6, 100000, 100000),
(8, 3, 6, 100000, 100000),
(9, 4, 6, 100000, 100000),
(10, 5, 6, 100000, 100000),
(11, 6, 6, 100000, 100000),
(12, 2, 2, 100000, 100000),
(13, 3, 2, 100000, 100000),
(14, 4, 2, 100000, 100000),
(15, 5, 2, 100000, 100000),
(16, 6, 2, 100000, 100000),
(17, 1, 4, 100000, 100000),
(18, 2, 4, 100000, 100000),
(19, 3, 4, 100000, 100000),
(20, 4, 4, 100000, 100000),
(21, 5, 4, 100000, 100000),
(22, 6, 4, 100000, 100000),
(23, 1, 5, 100000, 100000),
(24, 2, 5, 100000, 100000),
(25, 3, 5, 100000, 100000),
(26, 4, 5, 100000, 100000),
(27, 5, 5, 100000, 100000),
(28, 6, 5, 100000, 100000);

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
-- Indexes for table `sppd`
--
ALTER TABLE `sppd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sppd_officer`
--
ALTER TABLE `sppd_officer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sppd_id` (`sppd_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `office_class`
--
ALTER TABLE `office_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `sppd`
--
ALTER TABLE `sppd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `sppd_officer`
--
ALTER TABLE `sppd_officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `travel_expenses`
--
ALTER TABLE `travel_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
-- Constraints for table `sppd_officer`
--
ALTER TABLE `sppd_officer`
  ADD CONSTRAINT `sppd_officer_ibfk_1` FOREIGN KEY (`sppd_id`) REFERENCES `sppd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel_expenses`
--
ALTER TABLE `travel_expenses`
  ADD CONSTRAINT `travel_expenses_ibfk_1` FOREIGN KEY (`office_class_id`) REFERENCES `office_class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;