-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 02:40 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_perum`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `vw_password` varchar(40) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` enum('admin','komisaris','direktur','keuangan','manajpro') NOT NULL,
  `user_level` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `id_pengguna`, `username`, `password`, `vw_password`, `nama`, `jabatan`, `user_level`) VALUES
(1, 'N01', 'nadhfrr', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Nadhief Fawaz Rezaka', 'admin', '1'),
(2, 'K01', 'komisaris', 'e00cf25ad42683b3df678c61f42c6bda', 'admin1', 'Muhammad Anas Rafiq', 'komisaris', '2'),
(3, 'D01', 'direktur', 'c84258e9c39059a89ab77d846ddab909', 'admin2', 'Arif Rohman Rohim', 'direktur', '3'),
(4, 'Keu01', 'keuangan', '32cacb2f994f6b42183a1300d9a3e8d6', 'admin3', 'Al Kautsar Azka', 'keuangan', '4'),
(5, 'M01', 'manajpro', 'fc1ebc848e31e0a68e868432225e3c82', 'admin4', 'Puguh Utomo', 'manajpro', '5');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pekerjaan`
--

CREATE TABLE `jenis_pekerjaan` (
  `id_rab` varchar(5) NOT NULL,
  `nama_rab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_pekerjaan`
--

INSERT INTO `jenis_pekerjaan` (`id_rab`, `nama_rab`) VALUES
('001', 'Pekerjaan Pengukuran dan Pondasi'),
('002', 'Pekerjaan Pasang Bata'),
('003', 'Pekerjaan Atap'),
('004', 'Pekerjaan Rangka Plafon Hollow'),
('005', 'Pekerjaan Lantai 1:5'),
('006', 'Pekerjaan Pintu dan Jendela ( kusen )'),
('007', ' Pekerjaan Pengecatan'),
('008', 'Pekerjaan Penutup Atap'),
('009', 'Pekerjaan Beton 1 : 2 : 3'),
('010', ' Pekerjaan Plesteran 1 : 2 : 10'),
('011', 'Pekerjaan Sanitasi'),
('012', 'Pekerjaan Alat Penggantung'),
('013', ' Pekerjaan Carport'),
('014', 'Elektrikal');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `id_rab` varchar(5) NOT NULL,
  `nama_pekerjaan` varchar(50) NOT NULL,
  `volume` float NOT NULL,
  `satuan` varchar(5) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `id_rab`, `nama_pekerjaan`, `volume`, `satuan`, `harga_satuan`, `jumlah_harga`) VALUES
(1, '001', 'bouwplank', 0, 'm2', 12000, 0),
(2, '001', 'Galian tanah', 0, 'm2', 0, 0),
(3, '001', 'Pasang batu kumbung 1:3:10', 0, 'm2', 0, 0),
(4, '001', 'Urugan pasir pondasi', 0, 'm2', 0, 0),
(5, '001', 'Urug kembali lubang pondasi', 0, 'm2', 0, 0),
(6, '002', 'Pasangan bata merah trassram', 0, 'm2', 0, 0),
(7, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 0, 0),
(8, '003', 'Atap Galvalum', 0, 'm2', 0, 0),
(9, '003', 'List plank', 0, 'm2', 0, 0),
(10, '004', 'Rangka plafon', 0, 'm2', 0, 0),
(11, '004', 'Plafon Gypsumboard', 0, 'm2', 0, 0),
(12, '004', 'List Gypsum', 0, 'm2', 0, 0),
(13, '005', 'Keramik 40/40', 0, 'm2', 0, 0),
(14, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 0, 0),
(15, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 0, 0),
(16, '006', 'Kusen pintu Alumunium', 0, 'm2', 0, 0),
(17, '006', 'Kusen dan Daun jendela', 0, 'm2', 0, 0),
(18, '006', 'Daun pintu utama panil', 0, 'm2', 0, 0),
(19, '006', 'Daun pintu double triplex', 0, 'm2', 0, 0),
(20, '007', 'Cat dinding', 0, 'm2', 0, 0),
(21, '007', 'Cat list plank', 0, '', 0, 0),
(22, '007', 'Cat genteng', 0, '', 0, 0),
(23, '008', 'Genteng beton', 0, '', 0, 0),
(24, '008', 'Bubungan', 0, '', 0, 0),
(25, '008', 'Plafond', 0, '', 0, 0),
(26, '', 'Pasangan bata merah 1:4', 0, '', 0, 0),
(27, '', 'Pintu dan Kusen kamar mandi', 0, '', 0, 0),
(28, '009', 'Beton Sloff 10x15', 0, '', 0, 0),
(29, '009', 'Beton kolom 10x10', 0, '', 0, 0),
(30, '009', 'Beton dak kanopy', 0, '', 0, 0),
(31, '009', 'Beton ring balok 10x15', 0, '', 0, 0),
(32, '009', 'Stross ø 20', 0, '', 0, 0),
(33, '010', 'Plesteran dan Acian', 0, '', 0, 0),
(34, '010', 'Tali air', 0, '', 0, 0),
(35, '011', 'Pipa PVC 4"', 0, '', 0, 0),
(36, '011', 'Pipa PVC 3"', 0, '', 0, 0),
(37, '011', 'Pipa PVC 1/2"AW', 0, '', 0, 0),
(38, '011', 'Closet jongkok', 0, '', 0, 0),
(39, '011', 'Avur', 0, '', 0, 0),
(40, '011', 'Floor drainage', 0, '', 0, 0),
(41, '011', 'Kran air 1/2"', 0, '', 0, 0),
(42, '011', 'Keni 1/2"', 0, '', 0, 0),
(43, '011', 'Keni drat dalam 1/2"', 0, '', 0, 0),
(44, '011', 'Keni 4"', 0, '', 0, 0),
(45, '011', 'Overloop 3/4" - 1/2"', 0, '', 0, 0),
(46, '011', 'Sock drat dalam 1/2"', 0, '', 0, 0),
(47, '011', 'Tee 1/2"', 0, '', 0, 0),
(48, '011', 'Stop kran', 0, '', 0, 0),
(49, '011', 'Meteran air', 0, '', 0, 0),
(50, '011', 'Pintu KM PVC', 0, '', 0, 0),
(51, '011', 'Septic tank', 0, '', 0, 0),
(52, '012', 'Selot besar', 0, '', 0, 0),
(53, '012', 'Selot kecil', 0, '', 0, 0),
(54, '012', 'Engsel pintu', 0, '', 0, 0),
(55, '012', 'Engsel jendela', 0, '', 0, 0),
(56, '012', 'Grendel', 0, '', 0, 0),
(57, '012', 'Hak angin', 0, '', 0, 0),
(58, '013', 'Cor jalan tapak', 0, '', 0, 0),
(59, '014', 'Titik lampu', 0, '', 0, 0),
(60, '014', 'Saklar lampu', 0, '', 0, 0),
(61, '014', 'Stop kontak', 0, '', 0, 0),
(62, '014', 'MCB', 0, '', 0, 0),
(63, '014', 'Meteran listrik / BP + SLO', 0, '', 0, 0),
(64, '', 'Pasangan batu alam', 0, '', 0, 0),
(65, '', 'closet duduk ex china', 0, '', 0, 0),
(66, '', 'Keramik Granit 60/60', 0, '', 0, 0),
(67, '', 'Atap spandek lantai 2', 0, '', 0, 0),
(68, '', 'Stross ø 30', 0, '', 0, 0),
(69, '', 'Beton sloof 15x20', 0, '', 0, 0),
(70, '', 'Pelat lantai 2 & teras t=10', 0, '', 0, 0),
(71, '', 'Bordes & anak tangga', 0, '', 0, 0),
(72, '', 'Beton dak kanopy & Meja dapur', 0, '', 0, 0),
(73, '', 'Plafon Calsiboard', 0, '', 0, 0),
(74, '007', 'Cat Plafond', 0, 'm2', 18500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `kd_proyek` varchar(11) NOT NULL,
  `nama_proyek` varchar(25) NOT NULL,
  `type` int(11) NOT NULL,
  `pemilik_proyek` varchar(25) NOT NULL,
  `keterangan_lain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`kd_proyek`, `nama_proyek`, `type`, `pemilik_proyek`, `keterangan_lain`) VALUES
('1', 'Rumah Sederhana', 45, 'Nadhief Fawaz', 'sederhana'),
('2', 'Rumah', 36, 'Nadhief', 'sederhana'),
('3', 'Perumahan', 60, 'Rezaka', 'komersil');

-- --------------------------------------------------------

--
-- Table structure for table `proyekrab`
--

CREATE TABLE `proyekrab` (
  `id_proyekrab` varchar(5) NOT NULL,
  `id_rab` varchar(5) NOT NULL,
  `kd_proyek` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proyek_bahan`
--

CREATE TABLE `proyek_bahan` (
  `id` int(11) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `kd_bahan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyek_bahan`
--

INSERT INTO `proyek_bahan` (`id`, `id_pekerjaan`, `kd_bahan`) VALUES
(1, 1, 'BN'),
(2, 1, 'PKB'),
(3, 1, 'KY'),
(4, 1, 'KYP'),
(5, 2, 'PC'),
(6, 2, 'BN'),
(7, 2, 'KYP'),
(8, 3, 'BB'),
(9, 3, 'PU'),
(10, 4, 'PU'),
(11, 5, 'PU'),
(12, 6, 'BM1'),
(13, 6, 'SemPor'),
(14, 6, 'PPas'),
(15, 7, 'BM1'),
(16, 7, 'SemPor'),
(17, 7, 'PPas'),
(18, 8, 'Ho'),
(19, 8, 'BT'),
(20, 8, 'KW'),
(21, 9, 'KY'),
(22, 9, 'PKS'),
(23, 10, 'Ho'),
(24, 10, 'KW'),
(25, 10, 'PKB'),
(26, 10, 'BT'),
(27, 11, 'PG'),
(28, 11, 'PKG'),
(29, 11, 'Ho'),
(30, 11, 'TRP'),
(31, 73, 'Ho'),
(32, 73, 'TRP'),
(33, 73, 'KLSB1'),
(34, 11, 'LM'),
(35, 73, 'LM'),
(36, 12, 'LG'),
(37, 12, 'LM1'),
(38, 13, 'KA1'),
(39, 13, 'SemPor'),
(40, 13, 'PPas'),
(41, 13, 'SemWa'),
(42, 14, 'KA3'),
(43, 14, 'SemPor'),
(44, 14, 'PPas'),
(45, 14, 'SemWa'),
(46, 15, 'KA3'),
(47, 15, 'SemPor'),
(48, 15, 'PPas'),
(49, 15, 'SemWa'),
(50, 16, 'AL'),
(51, 16, 'SF'),
(52, 16, 'SE'),
(54, 17, 'KYM'),
(55, 17, 'PK'),
(56, 17, 'LMK'),
(57, 18, 'KYM'),
(58, 18, 'LMK'),
(59, 19, 'TRP'),
(60, 19, 'LMK'),
(61, 20, 'CVI'),
(62, 21, 'CVI'),
(63, 22, 'CDE'),
(64, 23, 'GBM'),
(65, 23, 'PKB'),
(66, 24, 'BBP'),
(67, 24, 'PPC'),
(68, 24, 'PPas'),
(69, 25, 'Ho'),
(70, 25, 'PK'),
(71, 25, 'PKS'),
(72, 26, 'BM1'),
(73, 26, 'SemPor'),
(74, 26, 'PPas'),
(75, 27, 'PA'),
(76, 27, 'KSA'),
(77, 28, 'BBP'),
(78, 28, 'PPas'),
(79, 28, 'SemPor'),
(80, 28, 'KB'),
(81, 28, 'PPR'),
(82, 28, 'PK'),
(83, 29, 'BBP'),
(84, 29, 'PPC'),
(85, 30, 'SemPor'),
(86, 30, 'PPas'),
(87, 30, 'PB'),
(88, 30, 'KYP'),
(89, 31, 'BBP'),
(90, 31, 'PPC'),
(91, 32, 'BBP'),
(92, 32, 'BD'),
(93, 33, 'PU'),
(94, 33, 'SemPor'),
(95, 35, 'P4'),
(96, 36, 'P3'),
(97, 37, 'P5'),
(98, 38, 'KLJ'),
(99, 34, 'SemPor'),
(100, 39, 'AV'),
(101, 40, 'FD'),
(102, 41, 'KRA2'),
(103, 41, 'ST'),
(104, 42, 'LM'),
(105, 42, 'KN'),
(106, 43, 'KND'),
(107, 43, 'LM'),
(108, 44, 'KN1'),
(109, 44, 'LM'),
(110, 45, 'OVL'),
(111, 45, 'LM'),
(112, 46, 'SDDL'),
(113, 46, 'LM'),
(114, 47, 'T'),
(115, 47, 'LM'),
(116, 48, 'STPK'),
(117, 48, 'LM'),
(118, 49, 'MEA'),
(119, 50, 'PA'),
(120, 50, 'KSA'),
(121, 51, 'SPT'),
(122, 52, 'SLTB'),
(123, 53, 'SLTK'),
(124, 54, 'ENGPI'),
(125, 55, 'ENGJEN'),
(126, 56, 'GRE'),
(127, 57, 'HA'),
(128, 58, 'SemPor'),
(129, 58, 'PPas'),
(130, 58, 'KB'),
(131, 59, 'TL'),
(132, 60, 'SL'),
(133, 61, 'STK'),
(134, 62, 'M'),
(135, 63, 'MEL'),
(136, 64, 'BK'),
(137, 64, 'SemPor'),
(138, 64, 'PPas'),
(139, 65, 'KDK'),
(140, 66, 'KA4'),
(141, 66, 'SemPor'),
(142, 66, 'PPas'),
(143, 66, 'SemWa'),
(144, 68, 'BBP'),
(145, 68, 'BD'),
(146, 67, 'CC'),
(147, 69, 'BBP'),
(148, 69, 'PPC'),
(149, 71, 'BBP'),
(150, 71, 'PPas'),
(151, 71, 'SemPor'),
(152, 71, 'KB'),
(153, 71, 'PK'),
(154, 71, 'KY'),
(155, 71, 'PPR'),
(156, 71, 'BD');

-- --------------------------------------------------------

--
-- Table structure for table `proyek_jenis`
--

CREATE TABLE `proyek_jenis` (
  `id` int(11) NOT NULL,
  `kd_proyek` int(11) NOT NULL,
  `id_rab` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyek_jenis`
--

INSERT INTO `proyek_jenis` (`id`, `kd_proyek`, `id_rab`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5'),
(6, 1, '6'),
(7, 1, '7'),
(8, 1, '8'),
(9, 1, '9'),
(10, 1, '10'),
(11, 1, '11'),
(12, 1, '12'),
(13, 1, '13'),
(14, 1, '14'),
(15, 2, '1'),
(16, 2, '2'),
(17, 2, '3'),
(18, 2, '4'),
(19, 2, '5'),
(20, 2, '6'),
(21, 2, '7'),
(22, 2, '8'),
(23, 2, '9'),
(24, 2, '10'),
(25, 2, '11'),
(26, 2, '12'),
(27, 2, '13'),
(28, 2, '14'),
(30, 3, '1'),
(31, 3, '2'),
(32, 3, '3'),
(33, 3, '4'),
(34, 3, '5'),
(35, 3, '6'),
(36, 3, '7'),
(37, 3, '8'),
(38, 3, '9'),
(39, 3, '10'),
(40, 3, '11'),
(41, 3, '12'),
(42, 3, '13'),
(43, 3, '14'),
(44, 4, '1'),
(45, 4, '2'),
(46, 4, '3'),
(47, 4, '4'),
(48, 4, '5'),
(49, 4, '6'),
(50, 4, '7'),
(51, 4, '8'),
(52, 4, '9'),
(53, 4, '10'),
(54, 4, '11'),
(55, 4, '12'),
(56, 4, '13'),
(57, 4, '14');

-- --------------------------------------------------------

--
-- Table structure for table `rincian_bahan`
--

CREATE TABLE `rincian_bahan` (
  `kd_bahan` varchar(15) NOT NULL,
  `uraian_bahan` varchar(30) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga_dasar` double NOT NULL,
  `merk` varchar(50) NOT NULL,
  `spesifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rincian_bahan`
--

INSERT INTO `rincian_bahan` (`kd_bahan`, `uraian_bahan`, `satuan`, `harga_dasar`, `merk`, `spesifikasi`) VALUES
('AV', 'Avur', 'bh', 35000, 'Soligen', 'Saringan bak cuci piring'),
('BB', 'Batu Belah 15/20', 'm3', 148936, 'Standar', 'Standar'),
('BBP', 'Besi Beton Polos', 'kg', 8500, 'Standar', 'Standar'),
('BD', 'Bendrad (kawat besi)', 'kg', 15000, 'Standar', 'Standar'),
('BK', 'Batu Kali', 'm3', 148936, 'Standar', 'Standar'),
('BM', 'Bata Merah', 'buah', 500, 'Standart', 'Standart'),
('BN', 'Benang', 'bh', 1500, 'Standar', 'Standar'),
('CCI', 'Cat Catylac Interior', 'Kg', 88000, 'Catylac', '5 kg'),
('CDE', 'Cat Dulux Exterior', 'Klg', 206250, 'Dulux', '2.5 liter'),
('CDI', 'Cat Dulux Interior', 'Klg', 129250, 'Dulux', '2.5 liter'),
('CME', 'Cat Mowilex Exterior', 'Klg', 176000, 'Mowilex', '2.5 liter'),
('CMI', 'Cat Mowilex Interior', 'Klg', 165000, 'Mowilex', '2.5 liter'),
('CVI', 'Cat Vinilex Interior', 'kg', 82500, 'Vinilex', '5 kg'),
('ENGJEN', 'Engsel Jendela', 'bh', 17500, 'Standar', 'Standar'),
('ENGPI', 'Engsel Pintu', 'bh', 20000, 'Standar', 'Standar'),
('FD', 'Floordrain', 'bh', 55000, 'Standar', 'Standar'),
('GBB', 'Genteng Bubungan Beton', 'bh', 2460, 'Standar', 'Standar'),
('GBM', 'Genteng Beton Monier', 'buah', 5350, 'Monier', '9 pcs/m2'),
('GBMO', 'Genteng Beton Morando', 'buah', 3750, 'Morando', '20 pcs/m2'),
('GRE', 'Grendel', 'bh', 7500, 'Standar', 'Standar'),
('HA', 'Hak Angin', 'bh', 12500, 'Standar', 'Standar'),
('KA1', 'Keramik 40 x 40', 'Dos', 50000, 'Asiatile', 'Isi 7'),
('KA2', 'Keramik 30 x 30', 'Dos', 38000, 'Asia Tile', 'Isi 11'),
('KA3', 'Keramik 20 x 20', 'Dos', 55000, 'Asia Tile', 'Isi 25'),
('KAB', 'Kawat Beton', 'kg', 15000, 'Standar', 'Standar'),
('KB', 'Koral Beton', 'm3', 148936, 'Standar', 'Standar'),
('KDM', 'Kloset duduk monoblok INA', 'buah', 150000, 'Standart', 'Standart'),
('KLJ', 'Kloset Jongkok', 'bh', 175000, 'Standar', 'Standar'),
('KN', 'Keni 1/2"', 'bh', 2800, 'Rucika', 'Standar'),
('KND', 'Keni Drat Dalam 1/2"', 'bh', 2800, 'Rucika', 'Standar'),
('KRA1', 'Kran Air', 'bh', 25000, 'Standar', 'Diameter 3/4"'),
('KRA2', 'Kran Air', 'bh', 25000, 'Standar', 'Diameter 1/2"'),
('KY', 'Kayu 5/7', 'm3', 32501, 'Standar', 'Pemasangan bouwplank'),
('KYP', 'Kayu Papan 2/10', 'm3', 900000, 'Standar', 'Pemasangan bouwplank'),
('LG', 'List Gypsum', 'm1', 4000, 'Standar', 'lebar = 5cm'),
('LK', 'List Kayu', 'm1', 5500, 'Standar', 'Standar'),
('M', 'MCB', 'bh', 140000, 'Standar', 'Standar'),
('MEA', 'Meteran Air', 'bh', 125000, 'Standar', 'Standar'),
('MEL', 'Meteran Listrik / BP + SLO', 'BH', 2250000, 'Standar', 'Standar'),
('OVL', 'Overloop 1/2" - 3/4" ', 'bh', 1500, 'Standar', 'Standar'),
('P1', 'Pipa PVC 1"', 'ljr', 22500, 'Standart', 'Standart'),
('P2', 'Pipa PVC 2.5"', 'ljr', 45000, 'Standart', 'Standart'),
('PA', 'Pintu Alumunium', 'm1', 400000, 'Standar', 'Standar'),
('PB', 'Pasir Beton', 'm3', 177000, 'Standar', 'Standar'),
('PC', 'Pacul', 'bh', 28000, 'Standar', 'Standar'),
('PG', 'Papan Gypsum', 'lbr', 42000, 'Standar', 'Standar'),
('PKB', 'Paku Biasa', 'kg', 12000, 'Standar', 'ukuran 2" - 5". Pemasangan Bouwplank'),
('PPas', 'Pasir Pasang', 'm3', 138297, 'Standar', 'Standar'),
('PPR', 'Papan Randu', 'ljr', 9000, 'Standar', 'Standar'),
('PU', 'Pasir Urug', 'm3', 138297, 'Standar', 'Urugan Pasir'),
('SemPor', 'Semen Portland', 'kg', 1200, 'Portland', 'Standar'),
('SK', 'Sekop', 'bh', 25000, 'Standar', 'Standar'),
('SL', 'Saklar Lampu', 'bh', 17500, 'Standar', 'Standar'),
('SLTB', 'Selot Besar', 'bh', 90000, 'Standar', 'Standar'),
('SLTK', 'Selot Kecil', 'bh', 45000, 'Standar', 'Standar'),
('SO', 'Sock 1"', 'buah', 1500, 'Standart', 'Standart'),
('SRT', 'Sirtu', 'm3', 65000, 'Standar', 'Standar'),
('STK', 'Stop Kontak', 'bh', 13000, 'Standar', 'Standar'),
('T', 'Tee', 'bh', 1250, 'Standar', 'Standar'),
('TL', 'Titik Lampu', 'TTK', 85000, 'Standar', 'Standar');

-- --------------------------------------------------------

--
-- Table structure for table `rincian_upah`
--

CREATE TABLE `rincian_upah` (
  `kd_upah` varchar(20) NOT NULL,
  `uraian_upah` varchar(50) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga_dasar` double NOT NULL,
  `merk` varchar(50) NOT NULL,
  `spesifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rincian_upah`
--

INSERT INTO `rincian_upah` (`kd_upah`, `uraian_upah`, `satuan`, `harga_dasar`, `merk`, `spesifikasi`) VALUES
('AAU', 'Asisten Ahli Ukur', 'hari', 87200, 'Standart', 'Standart'),
('AU', 'Ahli Ukur', 'hari', 116300, 'Standart', 'Standart'),
('KTBR', 'Kepala Tukang Bor', 'hari', 2900, 'Standart', 'Standart'),
('KTBS', 'Kepala Tukang Besi', 'hari', 25000, 'Standart', 'Standart'),
('KTBT', 'Kepala Tukang Batu', 'hari', 32500, 'Standart', 'Standart'),
('KTCT', 'Kepala Tukang Cat', 'hari', 27000, 'Standart', 'Standart'),
('KTPL', 'Kepala Tukang Plitur', 'hari', 29000, 'Standart', 'Standart'),
('MD', 'Mandor', 'hari', 75000, 'Standart', 'Standart'),
('PAT', 'Pengawas / Ahli Teknik', 'hari', 37200, 'Standart', 'Standart'),
('PK', 'Pekerja', 'hari', 65000, 'Standart', 'Standart'),
('TBR', 'Tukang Bor', 'hari', 27500, 'Standart', 'Standart'),
('TBS', 'Tukang Besi', 'hari', 80000, 'Standart', 'Standart'),
('TBT', 'Tukang Batu', 'hari', 80000, 'Standart', 'Standart'),
('TCT', 'Tukang Cat', 'hari', 55000, 'Standart', 'Standart'),
('TG', 'Tukang Gali', 'hari', 65000, 'Standart', 'Standart'),
('TK', 'Tukang Kapur', 'hari', 22500, 'Standart', 'Standart'),
('TKY', 'Tukang Kayu', 'hari', 90000, 'Standart', 'Standart'),
('TLT', 'Tukang Listrik', 'hari', 29000, 'Standart', 'Standart'),
('TPL', 'Tukang Plitur', 'hari', 27000, 'Standart', 'Standart'),
('TPLD', 'Tukang Pipa Ledeng', 'hari', 27900, 'Standart', 'Standart');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `noreg_user` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `noreg_user`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(2, 'N01', 'Nadhief Fawaz Rezaka', 'admin@gmail.com', '', '$2y$10$P61gRU0pBwIljRJef8Cx0OCdaRecNud8Y1eC2.pZRSgfbrAjh/CmC', 1, 1, 1656257814),
(3, 'K01', 'Muhammad Anas Rafiq', 'komisaris@gmail.com', 'image.jpg', '$2y$10$t80zNwhi1R46byQAU.NZOOBsRlQpXl3fCfBv1T02LxWCPCu72aK9O', 2, 1, 1656257943),
(4, 'D01', 'Arif Rohman Rohim', 'direktur@gmail.com', 'image.jpg', '$2y$10$zNFnkunW.YVPXr6zbg7iFO1xDemd40xgjWByK2X1LDdEBNnawZ/zy', 3, 1, 1656258096),
(5, 'KE01', 'Al Kautsar Azka', 'keuangan@gmail.com', 'image.jpg', '$2y$10$Ox5CyNIjCx.VpuMmdAjDXekEZAXK.Ur6rgEwgOfVDApNC7UXUryaG', 4, 1, 1656258149),
(6, 'M01', 'Puguh Utomo', 'manpro@gmail.com', 'image.jpg', '$2y$10$Ik8Ny9hGw7k0CQYYbnUrkerY3Mi6Ps4mBTqaOeODRzrLPcEa67G6S', 5, 1, 1656258209);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 3, 2),
(8, 4, 2),
(9, 5, 2),
(10, 5, 4),
(11, 5, 5),
(12, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Rincian'),
(5, 'Perancangan'),
(6, 'laporan');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Komisaris'),
(3, 'Direktur'),
(4, 'Keuangan'),
(5, 'Manpro');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Beranda', 'admin', 'fas fa-fw fa-home', 1),
(2, 2, 'Beranda', 'user', 'fas fa-fw fa-home', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 0),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-compass', 1),
(5, 3, 'Submenu Management', 'submenu', 'fas fa-fw fa-compass', 1),
(6, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(7, 4, 'Rincian Bahan', 'bahan', 'fas fa-fw fa-tools', 1),
(8, 1, 'Pengguna', 'pengguna', 'fas fa-fw fa-user', 1),
(9, 4, 'Rincian Upah', 'upah', 'fas fa-fw fa-donate', 1),
(10, 5, 'Tambah Proyek', 'proyek', 'fas fa-fw fa-building', 1),
(11, 5, 'Data Pengeluaran', 'keuangan', 'fas fa-fw fa-folder', 1),
(12, 6, 'Data Pengeluaran', 'laporan/pengeluaran', 'fas fa-fw fa-file-invoice-dollar\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_pekerjaan`
--
ALTER TABLE `jenis_pekerjaan`
  ADD PRIMARY KEY (`id_rab`),
  ADD KEY `id_rab` (`id_rab`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`kd_proyek`),
  ADD KEY `kd_proyek` (`kd_proyek`);

--
-- Indexes for table `proyek_bahan`
--
ALTER TABLE `proyek_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyek_jenis`
--
ALTER TABLE `proyek_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rincian_bahan`
--
ALTER TABLE `rincian_bahan`
  ADD PRIMARY KEY (`kd_bahan`);

--
-- Indexes for table `rincian_upah`
--
ALTER TABLE `rincian_upah`
  ADD PRIMARY KEY (`kd_upah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `proyek_bahan`
--
ALTER TABLE `proyek_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `proyek_jenis`
--
ALTER TABLE `proyek_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
