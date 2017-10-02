-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2017 at 03:10 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

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
(2, 'Drs. Djoko Prasetyo', '1952423432', '024234234', 4, 2),
(3, 'Ibu Bendahara', '222222222', '024234234', 5, 3),
(4, 'Staff 1', '333333333', '024234234', 3, 4),
(5, 'Staff 2', '44444444', '02142344324', 3, 4);

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
  `chief_name` varchar(100) NOT NULL,
  `transportation_type` varchar(100) DEFAULT NULL,
  `column_e` varchar(100) DEFAULT NULL,
  `column_f` varchar(100) DEFAULT NULL,
  `report_title` varchar(100) DEFAULT NULL,
  `report_content` varchar(1000) DEFAULT NULL,
  `report_created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`id`, `state`, `reference_number`, `start_date`, `end_date`, `total_day`, `base`, `objective`, `task`, `description`, `chief_name`, `transportation_type`, `column_e`, `column_f`, `report_title`, `report_content`, `report_created_date`) VALUES
(28, 6, '1.a/BTPAL/ST/10/2017', '2017-10-10', '2017-10-13', 3, 'Dasar 1', 'Bandung', 'Tugas 1', 'Keterangan 1', 'Ir. Setiyono, M.Si', 'Kendaraan Umum', '3470.004.011', '524112', 'Judul Laporan 1', 'Isi laporan', '2017-10-13'),
(29, 5, '29.a/BTPAL/ST/10/2017', '2017-10-10', '2017-10-17', 7, 'Nomor Surat 29', 'Brebes', 'Tigas 29', 'Keterangan 29', 'Ir. Setiyono, M.Si', 'Gojeg', '234234234', '1', NULL, NULL, NULL),
(30, 5, '30.a/BTPAL/ST/10/2017', '2017-10-03', '2017-10-03', 0, 'Dasar Surat 30', 'Surabaya', 'Tugas 30', 'Keterangan Tugas 30', 'Ir. Setiyono, M.Si', 'Kereta Api', '234234234', '234324', NULL, NULL, NULL),
(31, 4, '31.a/BTPAL/ST/10/2017', '2017-10-11', '2017-10-25', 14, 'Dasar 31', 'Malang', 'Tugas 31', 'Keterangan 31', 'Ir. Setiyono, M.Si', 'Balon Udara', '234234234', 'sdfdsf', NULL, NULL, NULL),
(32, 4, '32.a/BTPAL/ST/10/2017', '2017-10-25', '2017-10-26', 1, 'Dasar 32', 'Malang', 'Tugas 32', 'Keterangan 32', 'Ir. Setiyono, M.Si', 'Gojeg', '3470.004.011', '524112', NULL, NULL, NULL),
(33, 4, '33.a/BTPAL/ST/10/2017', '2017-11-02', '2017-11-04', 2, 'Dasar 33', 'Surabaya', 'Tugas 33', 'Keterangan 33', 'Ir. Setiyono, M.Si', 'Kereta Api', '3470.004.011', '524111', NULL, NULL, NULL),
(34, 3, '34.a/BTPAL/ST/10/2017', '2017-10-10', '2017-10-17', 7, 'Dasar 34', 'Jakarta Tengah', 'Tugad 34', 'Keterangan 34', 'Ir. Setiyono, M.Si', 'Gojeg', '3470.004.011', '524111', NULL, NULL, NULL),
(35, 3, '35.a/BTPAL/ST/10/2017', '2017-10-04', '2017-11-01', 28, 'Surat 35', 'Jakarta Tengah', 'Tugas 35', 'Keterangan 35', 'Ir. Setiyono, M.Si', 'Gojeg', '3470.004.011', '524112', NULL, NULL, NULL),
(36, 2, '36.a/BTPAL/ST/10/2017', '2017-10-02', '2017-10-04', 2, 'Individu 36', 'Jakarta Timur', 'Individu 36', 'Individu 36', 'Ir. Setiyono, M.Si', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 2, '37.a/BTPAL/ST/10/2017', '2017-10-03', '2017-10-04', 1, 'Individu 37', 'Surabaya', 'Individu 37', 'Individu 37', 'Ir. Setiyono, M.Si', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 2, '38.a/BTPAL/ST/10/2017', '2017-10-18', '2017-10-20', 2, 'Individu 38', 'Semarang', 'Individu 38', 'Individu 38', 'Ir. Setiyono, M.Si', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 2, '39.a/BTPAL/ST/10/2017', '2017-10-18', '2017-10-19', 1, 'Individu', 'Sukabumi', 'Individu', 'Individu', 'Ir. Setiyono, M.Si', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1, '40.a/BTPAL/ST/10/2017', '2017-10-04', '2017-10-06', 2, 'Rame Rame', 'Jakarta Barat', 'Rame Rame', 'Rame Rame', 'Ir. Setiyono, M.Si', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sppd_officer`
--

CREATE TABLE `sppd_officer` (
  `id` int(11) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `committed_officer` varchar(100) NOT NULL,
  `committed_officer_id` varchar(11) NOT NULL,
  `sppd_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `officer_id` varchar(100) NOT NULL,
  `office_class_name` varchar(100) NOT NULL,
  `office_position_name` varchar(100) NOT NULL,
  `treasurer_officer` varchar(100) DEFAULT NULL,
  `treasurer_officer_id` varchar(100) DEFAULT NULL,
  `daily_cost` varchar(100) DEFAULT NULL,
  `lodging_cost` varchar(100) DEFAULT NULL,
  `total_daily_cost` varchar(100) DEFAULT NULL,
  `total_lodging_cost` varchar(100) DEFAULT NULL,
  `transportation_cost` varchar(100) DEFAULT NULL,
  `total_cost` varchar(100) DEFAULT NULL,
  `total_cost_rp` varchar(1000) DEFAULT NULL,
  `kas_reference_number` varchar(100) DEFAULT NULL,
  `kas_year` varchar(100) DEFAULT NULL,
  `kas_cost_center_code` varchar(100) DEFAULT NULL,
  `kas_description` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sppd_officer`
--

INSERT INTO `sppd_officer` (`id`, `reference_number`, `committed_officer`, `committed_officer_id`, `sppd_id`, `name`, `officer_id`, `office_class_name`, `office_position_name`, `treasurer_officer`, `treasurer_officer_id`, `daily_cost`, `lodging_cost`, `total_daily_cost`, `total_lodging_cost`, `transportation_cost`, `total_cost`, `total_cost_rp`, `kas_reference_number`, `kas_year`, `kas_cost_center_code`, `kas_description`) VALUES
(42, '1/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 28, 'Staff 1', '333333333', '2A', 'Staff', 'Ibu Bendahara', '222222222', '190000', '190000', '570000', '570000', '400000', '1540000', 'Satu Juta Lima Ratus Empat Puluh Ribu Rupiah', '1/BKK/BTPAL/BPPT/X/2017', '2017', 'Non Dipa', 'Uraian kas 1'),
(43, '2/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 28, 'Staff 2', '44444444', '2A', 'Staff', 'Ibu Bendahara', '222222222', '190000', '190000', '570000', '570000', '400000', '1540000', 'Satu Juta Lima Ratus Empat Puluh Ribu Rupiah', '2/BKK/BTPAL/BPPT/X/2017', '2017', 'Non Dipa', 'Uraian kas 1'),
(44, '44/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 29, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi', 'Ibu Bendahara', '222222222', '280000', '280000', '1960000', '1960000', '400000', '4320000', 'Empat Juta Tiga Ratus Dua Puluh Ribu Rupiah', '44/BKK/BTPAL/BPPT/X/2017', '2017', 'Dipa', 'Uraian kas Tugas 29'),
(45, '45/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 30, 'Drs. Djoko Prasetyo', '1952423432', '2B', 'Pejabat Pembuat Komitmen', 'Ibu Bendahara', '222222222', '320000', '320000', '0', '0', '200000', '200000', 'Dua Ratus Ribu Rupiah', '45/BKK/BTPAL/BPPT/X/2017', '2017', 'Dipa', 'Uraian kas'),
(46, '46/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 30, 'Staff 2', '44444444', '2A', 'Staff', 'Ibu Bendahara', '222222222', '310000', '310000', '0', '0', '200000', '200000', 'Dua Ratus Ribu Rupiah', '46/BKK/BTPAL/BPPT/X/2017', '2017', 'Dipa', 'Uraian kas'),
(47, '47/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 31, 'Staff 1', '333333333', '2A', 'Staff', 'Ibu Bendahara', '222222222', '310000', '310000', '4340000', '4340000', '400000', '9080000', 'Sembilan Juta Delapan Puluh Ribu Rupiah', '47/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(48, '48/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 31, 'Staff 2', '44444444', '2A', 'Staff', 'Ibu Bendahara', '222222222', '310000', '310000', '4340000', '4340000', '400000', '9080000', 'Sembilan Juta Delapan Puluh Ribu Rupiah', '48/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(49, '49/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 32, 'Staff 1', '333333333', '2A', 'Staff', 'Ibu Bendahara', '222222222', '310000', '310000', '310000', '310000', '300000', '920000', 'Sembilan Ratus Dua Puluh Ribu Rupiah', '49/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(50, '50/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 33, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi', 'Ibu Bendahara', '222222222', '340000', '340000', '680000', '680000', '300000', '1660000', 'Satu Juta Enam Ratus Enam Puluh Ribu Rupiah', '50/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(51, '51/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 34, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi', 'Ibu Bendahara', '222222222', '160000', '160000', '1120000', '1120000', NULL, NULL, NULL, '51/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(52, '52/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 34, 'Drs. Djoko Prasetyo', '1952423432', '2B', 'Pejabat Pembuat Komitmen', 'Ibu Bendahara', '222222222', '140000', '140000', '980000', '980000', NULL, NULL, NULL, '52/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(53, '53/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 34, 'Ibu Bendahara', '222222222', '2C', 'Bendahara', 'Ibu Bendahara', '222222222', '150000', '150000', '1050000', '1050000', NULL, NULL, NULL, '53/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(54, '54/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 34, 'Staff 1', '333333333', '2A', 'Staff', 'Ibu Bendahara', '222222222', '130000', '130000', '910000', '910000', NULL, NULL, NULL, '54/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(55, '55/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 34, 'Staff 2', '44444444', '2A', 'Staff', 'Ibu Bendahara', '222222222', '130000', '130000', '910000', '910000', NULL, NULL, NULL, '55/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(56, '56/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 35, 'Staff 1', '333333333', '2A', 'Staff', 'Ibu Bendahara', '222222222', '130000', '130000', '3640000', '3640000', NULL, NULL, NULL, '56/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(57, '57/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 35, 'Staff 2', '44444444', '2A', 'Staff', 'Ibu Bendahara', '222222222', '130000', '130000', '3640000', '3640000', NULL, NULL, NULL, '57/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(58, '58/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 36, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(59, '59/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 37, 'Drs. Djoko Prasetyo', '1952423432', '2B', 'Pejabat Pembuat Komitmen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(60, '60/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 38, 'Ibu Bendahara', '222222222', '2C', 'Bendahara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(61, '61/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 39, 'Staff 1', '333333333', '2A', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(62, '62/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 40, 'Ir. Setiyono, M.Si', '081123456', '2D', 'Kepala Balai Teknologi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '62/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(63, '63/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 40, 'Ibu Bendahara', '222222222', '2C', 'Bendahara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '63/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(64, '64/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 40, 'Staff 1', '333333333', '2A', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL),
(65, '65/SPD/BTPAL/X/2017', 'Drs. Djoko Prasetyo', '1952423432', 40, 'Staff 2', '44444444', '2A', 'Staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65/BKK/BTPAL/BPPT/X/2017', '2017', NULL, NULL);

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
  `daily_cost` int(100) NOT NULL,
  `lodging_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_expenses`
--

INSERT INTO `travel_expenses` (`id`, `office_class_id`, `province_id`, `daily_cost`, `lodging_cost`) VALUES
(2, 1, 2, 170000, 170000),
(4, 1, 2, 430000, 435000),
(5, 1, 2, 430000, 435000),
(6, 1, 6, 110002, 110003),
(7, 2, 6, 120000, 120000),
(8, 3, 6, 130000, 130000),
(9, 4, 6, 140000, 140000),
(10, 5, 6, 150000, 150000),
(11, 6, 6, 160000, 160000),
(12, 2, 2, 180000, 180000),
(13, 3, 2, 190000, 190000),
(14, 4, 2, 200000, 200000),
(15, 5, 2, 210000, 210000),
(16, 6, 2, 220000, 220000),
(17, 1, 4, 230000, 230000),
(18, 2, 4, 240000, 240000),
(19, 3, 4, 250000, 250000),
(20, 4, 4, 260001, 260000),
(21, 5, 4, 270000, 270000),
(22, 6, 4, 280000, 280000),
(23, 1, 5, 290000, 290000),
(24, 2, 5, 300000, 300000),
(25, 3, 5, 310000, 310000),
(26, 4, 5, 320000, 320000),
(27, 5, 5, 330000, 330000),
(28, 6, 5, 340000, 340000);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `sppd_officer`
--
ALTER TABLE `sppd_officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
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
