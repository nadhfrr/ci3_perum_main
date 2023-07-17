-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 06:07 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_perum_second`
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
  `kd_proyek` int(11) NOT NULL,
  `id_rab` varchar(5) NOT NULL,
  `nama_pekerjaan` varchar(50) NOT NULL,
  `volume` double DEFAULT NULL,
  `satuan` varchar(5) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah_harga` int(11) DEFAULT NULL,
  `keterangan_perbaikan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `kd_proyek`, `id_rab`, `nama_pekerjaan`, `volume`, `satuan`, `harga_satuan`, `jumlah_harga`, `keterangan_perbaikan`) VALUES
(1, 1, '001', 'Bouwplank', 42, 'm1', 12000, 0, ''),
(2, 1, '001', 'Galian tanah', 25.5, 'm3', 60000, 0, ''),
(3, 1, '001', 'Pasang batu kumbung 1:3:10', 27.3, 'm3', 385000, 0, ''),
(4, 1, '001', 'Urugan pasir pondasi', 8.5, 'm3', 264000, 0, ''),
(5, 1, '001', 'Urug kembali lubang pondasi', 12, 'm3', 18500, 0, ''),
(6, 1, '002', 'Pasangan bata merah trassram', 5, 'm2', 93250, 0, ''),
(7, 1, '002', 'Pasangan bata merah 1:4:10', 3, 'm2', 90500, 0, ''),
(8, 1, '003', 'Atap Galvalum', 2, 'm2', 110000, 0, ''),
(9, 1, '003', 'List plank', 0, 'm1', 48000, 0, ''),
(10, 1, '004', 'Rangka plafon', 0, 'm2', 17500, 0, ''),
(11, 1, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, 0, ''),
(12, 1, '004', 'List Gypsum', 5, 'm1', 20000, 0, ''),
(13, 1, '005', 'Keramik 40/40', 0, 'm2', 110000, 0, ''),
(14, 1, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, 0, ''),
(15, 1, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, 0, ''),
(16, 1, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, 0, ''),
(17, 1, '006', 'Kusen dan Daun jendela', 3, 'plong', 650000, 0, ''),
(18, 1, '006', 'Daun pintu utama panil', 0, 'bh', 550000, 0, ''),
(19, 1, '006', 'Daun pintu double triplex', 0, 'bh', 225000, 0, ''),
(20, 1, '007', 'Cat dinding', 10, 'm2', 18000, 0, ''),
(21, 1, '007', 'Cat list plank', 5, 'm2', 20000, 0, ''),
(22, 1, '007', 'Cat genteng', 3.5, 'm2', 22500, 0, ''),
(23, 1, '008', 'Genteng beton', 0, 'm2', 82500, 0, ''),
(24, 1, '008', 'Bubungan', 0, 'm1', 55000, 0, ''),
(25, 1, '008', 'Plafond', 2.3, 'm2', 67500, 0, ''),
(26, 1, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, 0, ''),
(27, 1, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, 0, ''),
(28, 1, '009', 'Beton Sloff 10x15', 0, 'm3', 0, 0, ''),
(29, 1, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, 0, ''),
(30, 1, '009', 'Beton dak kanopy', 3, 'm3', 950000, 0, ''),
(31, 1, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, 0, ''),
(32, 1, '009', 'Stross ø 20', 0, 'm3', 1850000, 0, ''),
(33, 1, '010', 'Plesteran dan Acian', 3.3, 'm2', 52500, 0, ''),
(34, 1, '010', 'Tali air', 7.5, 'm1', 9000, 0, ''),
(35, 1, '011', 'Pipa PVC 4', 5, 'btg', 75000, 0, ''),
(36, 1, '011', 'Pipa PVC 3"', 0, 'btg', 50000, 0, ''),
(37, 1, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, 0, ''),
(38, 1, '011', 'Closet jongkok', 1, 'bh', 175000, 0, ''),
(39, 1, '011', 'Avur', 0, 'bh', 15000, 0, ''),
(40, 1, '011', 'Floor drainage', 0, 'bh', 12500, 0, ''),
(41, 1, '011', 'Kran air 1/2', 15, 'bh', 15000, 0, ''),
(42, 1, '011', 'Keni 1/2"', 0, 'bh', 3000, 0, ''),
(43, 1, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(44, 1, '011', 'Keni 4"', 0, 'bh', 6000, 0, ''),
(45, 1, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, 0, ''),
(46, 1, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(47, 1, '011', 'Tee 1/2"', 0, 'bh', 2500, 0, ''),
(48, 1, '011', 'Stop kran', 0, 'bh', 15000, 0, ''),
(49, 1, '011', 'Meteran air', 0, 'bh', 125000, 0, ''),
(50, 1, '011', 'Pintu KM PVC', 0, 'bh', 225000, 0, ''),
(51, 1, '011', 'Septic tank', 0, 'bh', 650000, 0, ''),
(52, 1, '012', 'Selot besar', 0, 'bh', 90000, 0, ''),
(53, 1, '012', 'Selot kecil', 0, 'bh', 45000, 0, ''),
(54, 1, '012', 'Engsel pintu', 15, 'bh', 20000, 0, ''),
(55, 1, '012', 'Engsel jendela', 20, 'bh', 17500, 0, ''),
(56, 1, '012', 'Grendel', 0, 'bh', 7500, 0, ''),
(57, 1, '012', 'Hak angin', 0, 'bh', 12500, 0, ''),
(58, 1, '013', 'Cor jalan tapak', 5.5, 'm2', 150000, 0, ''),
(59, 1, '014', 'Titik lampu', 0, 'ttk', 125000, 0, ''),
(60, 1, '014', 'Saklar lampu', 20, 'ttk', 125000, 0, ''),
(61, 1, '014', 'Stop kontak', 20, 'ttk', 125000, 0, ''),
(62, 1, '014', 'MCB', 0, 'ttk', 140000, 0, ''),
(63, 1, '014', 'Meteran listrik / BP + SLO', 15, 'bh', 2250000, 0, ''),
(64, 1, '002', 'Pasangan batu alam', 0, 'm2', 650000, 0, ''),
(65, 1, '011', 'closet duduk ex china', 0, 'bh', 800000, 0, ''),
(66, 1, '005', 'Keramik Granit 60/60', 4, 'm2', 235000, 0, ''),
(67, 1, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, 0, ''),
(68, 1, '009', 'Stross ø 30', 0, 'm3', 5500000, 0, ''),
(69, 1, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, 0, ''),
(70, 1, '009', 'Pelat lantai 2 & teras t=10', 2, 'm3', 5275000, 0, ''),
(71, 1, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, 0, ''),
(72, 1, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, 0, ''),
(73, 1, '004', 'Plafon Calsiboard', 0, 'm2', 50000, 0, ''),
(74, 1, '007', 'Cat Plafond', 2.3, 'm2', 18500, 0, ''),
(75, 2, '001', 'bouwplank', 0, 'm1', 12000, 0, 'kosong'),
(76, 2, '001', 'Galian tanah', 0, 'm3', 60000, 0, 'perbaiki volume'),
(77, 2, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, 0, ''),
(78, 2, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, 0, ''),
(79, 2, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, 0, ''),
(80, 2, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, 0, ''),
(81, 2, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, 0, ''),
(82, 2, '003', 'Atap Galvalum', 0, 'm2', 110000, 0, ''),
(83, 2, '003', 'List plank', 0, 'm1', 48000, 0, ''),
(84, 2, '004', 'Rangka plafon', 0, 'm2', 17500, 0, ''),
(85, 2, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, 0, ''),
(86, 2, '004', 'List Gypsum', 0, 'm1', 20000, 0, ''),
(87, 2, '005', 'Keramik 40/40', 0, 'm2', 110000, 0, ''),
(88, 2, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, 0, ''),
(89, 2, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, 0, ''),
(90, 2, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, 0, ''),
(91, 2, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, 0, ''),
(92, 2, '006', 'Daun pintu utama panil', 0, 'bh', 550000, 0, ''),
(93, 2, '006', 'Daun pintu double triplex', 0, 'bh', 225000, 0, ''),
(94, 2, '007', 'Cat dinding', 0, 'm2', 18000, 0, ''),
(95, 2, '007', 'Cat list plank', 0, 'm2', 20000, 0, ''),
(96, 2, '007', 'Cat genteng', 0, 'm2', 22500, 0, ''),
(97, 2, '008', 'Genteng beton', 4, 'm2', 82500, 0, NULL),
(98, 2, '008', 'Bubungan', 0, 'm1', 55000, 0, ''),
(99, 2, '008', 'Plafond', 0, 'm2', 67500, 0, ''),
(100, 2, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, 0, ''),
(101, 2, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, 0, ''),
(102, 2, '009', 'Beton Sloff 10x15', 0, 'm3', 2250000, 0, ''),
(103, 2, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, 0, ''),
(104, 2, '009', 'Beton dak kanopy', 0, 'm3', 950000, 0, ''),
(105, 2, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, 0, ''),
(106, 2, '009', 'Stross ø 20', 0, 'm3', 1850000, 0, ''),
(107, 2, '010', 'Plesteran dan Acian', 0, 'm2', 52500, 0, ''),
(108, 2, '010', 'Tali air', 0, 'm1', 9000, 0, ''),
(109, 2, '011', 'Pipa PVC 4"', 0, 'btg', 75000, 0, ''),
(110, 2, '011', 'Pipa PVC 3"', 0, 'btg', 50000, 0, ''),
(111, 2, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, 0, ''),
(112, 2, '011', 'Closet jongkok', 0, 'bh', 175000, 0, ''),
(113, 2, '011', 'Avur', 0, 'bh', 15000, 0, ''),
(114, 2, '011', 'Floor drainage', 0, 'bh', 12500, 0, ''),
(115, 2, '011', 'Kran air 1/2"', 0, 'bh', 15000, 0, ''),
(116, 2, '011', 'Keni 1/2"', 0, 'bh', 3000, 0, ''),
(117, 2, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(118, 2, '011', 'Keni 4"', 0, 'bh', 6000, 0, ''),
(119, 2, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, 0, ''),
(120, 2, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(121, 2, '011', 'Tee 1/2"', 0, 'bh', 2500, 0, ''),
(122, 2, '011', 'Stop kran', 0, 'bh', 15000, 0, ''),
(123, 2, '011', 'Meteran air', 0, 'bh', 125000, 0, ''),
(124, 2, '011', 'Pintu KM PVC', 0, 'bh', 225000, 0, ''),
(125, 2, '011', 'Septic tank', 0, 'bh', 650000, 0, ''),
(126, 2, '012', 'Selot besar', 0, 'bh', 90000, 0, ''),
(127, 2, '012', 'Selot kecil', 0, 'bh', 45000, 0, ''),
(128, 2, '012', 'Engsel pintu', 0, 'bh', 20000, 0, ''),
(129, 2, '012', 'Engsel jendela', 0, 'bh', 17500, 0, ''),
(130, 2, '012', 'Grendel', 0, 'bh', 7500, 0, ''),
(131, 2, '012', 'Hak angin', 0, 'bh', 12500, 0, ''),
(132, 2, '013', 'Cor jalan tapak', 0, 'm2', 150000, 0, ''),
(133, 2, '014', 'Titik lampu', 0, 'ttk', 125000, 0, ''),
(134, 2, '014', 'Saklar lampu', 0, 'ttk', 125000, 0, ''),
(135, 2, '014', 'Stop kontak', 0, 'ttk', 125000, 0, ''),
(136, 2, '014', 'MCB', 0, 'ttk', 140000, 0, ''),
(137, 2, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, 0, ''),
(138, 2, '002', 'Pasangan batu alam', 0, 'm2', 650000, 0, ''),
(139, 2, '011', 'closet duduk ex china', 0, 'bh', 800000, 0, ''),
(140, 2, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, 0, ''),
(141, 2, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, 0, ''),
(142, 2, '009', 'Stross ø 30', 0, 'm3', 5500000, 0, ''),
(143, 2, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, 0, ''),
(144, 2, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, 0, ''),
(145, 2, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, 0, ''),
(146, 2, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, 0, ''),
(147, 2, '004', 'Plafon Calsiboard', 0, 'm2', 50000, 0, ''),
(148, 2, '007', 'Cat Plafond', 0, 'm2', 18500, 0, ''),
(149, 3, '001', 'bouwplank', 0, 'm1', 12000, 0, 'masih nol'),
(150, 3, '001', 'Galian tanah', 0, 'm3', 60000, 0, ''),
(151, 3, '001', 'Pasang batu kumbung 1:3:10', 2, 'm3', 385000, 0, ''),
(152, 3, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, 0, ''),
(153, 3, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, 0, ''),
(154, 3, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, 0, ''),
(155, 3, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, 0, ''),
(156, 3, '003', 'Atap Galvalum', 0, 'm2', 110000, 0, ''),
(157, 3, '003', 'List plank', 0, 'm1', 48000, 0, ''),
(158, 3, '004', 'Rangka plafon', 0, 'm2', 17500, 0, ''),
(159, 3, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, 0, ''),
(160, 3, '004', 'List Gypsum', 0, 'm1', 20000, 0, ''),
(161, 3, '005', 'Keramik 40/40', 0, 'm2', 110000, 0, ''),
(162, 3, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, 0, ''),
(163, 3, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, 0, ''),
(164, 3, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, 0, ''),
(165, 3, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, 0, ''),
(166, 3, '006', 'Daun pintu utama panil', 0, 'bh', 550000, 0, ''),
(167, 3, '006', 'Daun pintu double triplex', 0, 'bh', 225000, 0, ''),
(168, 3, '007', 'Cat dinding', 0, 'm2', 18000, 0, ''),
(169, 3, '007', 'Cat list plank', 0, 'm2', 20000, 0, ''),
(170, 3, '007', 'Cat genteng', 0, 'm2', 22500, 0, ''),
(171, 3, '008', 'Genteng beton', 0, 'm2', 82500, 0, ''),
(172, 3, '008', 'Bubungan', 0, 'm1', 55000, 0, ''),
(173, 3, '008', 'Plafond', 0, 'm2', 67500, 0, ''),
(174, 3, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, 0, ''),
(175, 3, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, 0, ''),
(176, 3, '009', 'Beton Sloff 10x15', 0, 'm3', 2250000, 0, ''),
(177, 3, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, 0, ''),
(178, 3, '009', 'Beton dak kanopy', 0, 'm3', 950000, 0, ''),
(179, 3, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, 0, ''),
(180, 3, '009', 'Stross ø 20', 0, 'm3', 1850000, 0, ''),
(181, 3, '010', 'Plesteran dan Acian', 0, 'm2', 52500, 0, ''),
(182, 3, '010', 'Tali air', 0, 'm1', 9000, 0, ''),
(183, 3, '011', 'Pipa PVC 4"', 0, 'btg', 75000, 0, ''),
(184, 3, '011', 'Pipa PVC 3"', 0, 'btg', 50000, 0, ''),
(185, 3, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, 0, ''),
(186, 3, '011', 'Closet jongkok', 0, 'bh', 175000, 0, ''),
(187, 3, '011', 'Avur', 0, 'bh', 15000, 0, ''),
(188, 3, '011', 'Floor drainage', 0, 'bh', 12500, 0, ''),
(189, 3, '011', 'Kran air 1/2"', 0, 'bh', 15000, 0, ''),
(190, 3, '011', 'Keni 1/2"', 0, 'bh', 3000, 0, ''),
(191, 3, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(192, 3, '011', 'Keni 4"', 0, 'bh', 6000, 0, ''),
(193, 3, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, 0, ''),
(194, 3, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, 0, ''),
(195, 3, '011', 'Tee 1/2"', 0, 'bh', 2500, 0, ''),
(196, 3, '011', 'Stop kran', 0, 'bh', 15000, 0, ''),
(197, 3, '011', 'Meteran air', 0, 'bh', 125000, 0, ''),
(198, 3, '011', 'Pintu KM PVC', 0, 'bh', 225000, 0, ''),
(199, 3, '011', 'Septic tank', 0, 'bh', 650000, 0, ''),
(200, 3, '012', 'Selot besar', 0, 'bh', 90000, 0, ''),
(201, 3, '012', 'Selot kecil', 0, 'bh', 45000, 0, ''),
(202, 3, '012', 'Engsel pintu', 0, 'bh', 20000, 0, ''),
(203, 3, '012', 'Engsel jendela', 0, 'bh', 17500, 0, ''),
(204, 3, '012', 'Grendel', 0, 'bh', 7500, 0, ''),
(205, 3, '012', 'Hak angin', 0, 'bh', 12500, 0, ''),
(206, 3, '013', 'Cor jalan tapak', 0, 'm2', 150000, 0, ''),
(207, 3, '014', 'Titik lampu', 0, 'ttk', 125000, 0, ''),
(208, 3, '014', 'Saklar lampu', 0, 'ttk', 125000, 0, ''),
(209, 3, '014', 'Stop kontak', 0, 'ttk', 125000, 0, ''),
(210, 3, '014', 'MCB', 0, 'ttk', 140000, 0, ''),
(211, 3, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, 0, ''),
(212, 3, '002', 'Pasangan batu alam', 0, 'm2', 650000, 0, ''),
(213, 3, '011', 'closet duduk ex china', 0, 'bh', 800000, 0, ''),
(214, 3, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, 0, ''),
(215, 3, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, 0, ''),
(216, 3, '009', 'Stross ø 30', 0, 'm3', 5500000, 0, ''),
(217, 3, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, 0, ''),
(218, 3, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, 0, ''),
(219, 3, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, 0, ''),
(220, 3, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, 0, ''),
(221, 3, '004', 'Plafon Calsiboard', 0, 'm2', 50000, 0, ''),
(222, 3, '007', 'Cat Plafond', 0, 'm2', 18500, 0, ''),
(223, 2, '008', '3', 0, 'm3', 385, NULL, NULL),
(224, 2, '008', '24', 0, 'm1', 55, NULL, NULL),
(225, 2, '008', '1', 0, 'm1', 12, NULL, NULL),
(226, 2, '008', '3', 0, 'm3', 385, NULL, NULL),
(227, 2, '008', '20', 0, 'm2', 18, NULL, NULL),
(228, 45, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(229, 45, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(230, 45, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(231, 45, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(232, 45, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(233, 45, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(234, 45, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(235, 45, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(236, 45, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(237, 45, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(238, 45, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(239, 45, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(240, 45, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(241, 45, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(242, 45, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(243, 45, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(244, 45, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(245, 45, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(246, 45, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(247, 45, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(248, 45, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(249, 45, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(250, 45, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(251, 45, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(252, 45, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(253, 45, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(254, 45, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(255, 45, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(256, 45, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(257, 45, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(258, 45, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(259, 45, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(260, 45, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(261, 45, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(262, 45, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(263, 45, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(264, 45, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(265, 45, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(266, 45, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(267, 45, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(268, 45, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(269, 45, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(270, 45, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(271, 45, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(272, 45, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(273, 45, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(274, 45, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(275, 45, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(276, 45, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(277, 45, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(278, 45, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(279, 45, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(280, 45, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(281, 45, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(282, 45, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(283, 45, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(284, 45, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(285, 45, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(286, 45, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(287, 45, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(288, 45, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(289, 45, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(290, 45, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(291, 45, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(292, 45, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(293, 45, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(294, 45, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(295, 45, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(296, 45, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(297, 45, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(298, 45, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(299, 45, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(300, 45, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(301, 45, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(302, 45, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(303, 45, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(304, 45, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(305, 45, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(306, 45, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(307, 45, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(308, 45, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(309, 45, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(310, 45, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(311, 45, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(312, 45, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(313, 45, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(314, 45, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(315, 45, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(316, 45, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(317, 45, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(318, 45, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(319, 45, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(320, 45, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(321, 45, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(322, 45, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(323, 45, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(324, 45, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(325, 45, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(326, 45, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(327, 45, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(328, 45, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(329, 45, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(330, 45, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(331, 45, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(332, 45, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(333, 45, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(334, 45, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(335, 45, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(336, 45, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(337, 45, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(338, 45, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(339, 45, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(340, 45, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(341, 45, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(342, 45, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(343, 45, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(344, 45, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(345, 45, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(346, 45, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(347, 45, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(348, 45, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(349, 45, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(350, 45, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(351, 45, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(352, 45, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(353, 45, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(354, 45, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(355, 45, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(356, 45, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(357, 45, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(358, 45, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(359, 45, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(360, 45, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(361, 45, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(362, 45, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(363, 45, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(364, 45, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(365, 45, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(366, 45, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(367, 45, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(368, 45, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(369, 45, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(370, 45, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(371, 45, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(372, 45, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(373, 45, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(374, 45, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(375, 45, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(376, 45, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(377, 45, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(378, 45, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(379, 45, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(380, 45, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(381, 45, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(382, 45, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(383, 45, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(384, 45, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(385, 45, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(386, 45, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(387, 45, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(388, 45, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(389, 45, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(390, 45, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(391, 45, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(392, 45, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(393, 45, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(394, 45, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(395, 45, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(396, 45, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(397, 45, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(398, 45, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(399, 45, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(400, 45, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(401, 45, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(402, 45, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(403, 45, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(404, 45, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(405, 45, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(406, 45, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(407, 45, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(408, 45, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(409, 45, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(410, 45, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(411, 45, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(412, 45, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(413, 45, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(414, 45, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(415, 45, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(416, 45, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(417, 45, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(418, 45, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(419, 45, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(420, 45, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(421, 45, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(422, 45, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(423, 45, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(424, 45, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(425, 45, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(426, 45, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(427, 45, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(428, 45, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(429, 45, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(430, 45, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(431, 45, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(432, 45, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(433, 45, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(434, 45, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(435, 45, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(436, 45, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(437, 45, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(438, 45, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(439, 45, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(440, 45, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(441, 45, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(442, 45, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(443, 45, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(444, 45, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(445, 45, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(446, 45, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(447, 45, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(448, 45, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(449, 45, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(450, 34, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(451, 34, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(452, 34, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(453, 34, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(454, 34, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(455, 34, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(456, 34, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(457, 34, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(458, 34, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(459, 34, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(460, 34, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(461, 34, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(462, 34, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(463, 34, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(464, 34, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(465, 34, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(466, 34, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(467, 34, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(468, 34, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(469, 34, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(470, 34, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(471, 34, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(472, 34, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(473, 34, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(474, 34, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(475, 34, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(476, 34, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(477, 34, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(478, 34, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(479, 34, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(480, 34, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(481, 34, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(482, 34, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(483, 34, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(484, 34, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(485, 34, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(486, 34, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(487, 34, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(488, 34, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(489, 34, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(490, 34, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(491, 34, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(492, 34, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(493, 34, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(494, 34, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(495, 34, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(496, 34, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(497, 34, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(498, 34, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(499, 34, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(500, 34, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(501, 34, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(502, 34, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(503, 34, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(504, 34, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(505, 34, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(506, 34, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(507, 34, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(508, 34, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(509, 34, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(510, 34, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(511, 34, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(512, 34, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(513, 34, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(514, 34, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(515, 34, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(516, 34, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(517, 34, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(518, 34, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(519, 34, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(520, 34, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(521, 34, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(522, 34, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(523, 34, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(524, 67, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(525, 67, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(526, 67, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(527, 67, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(528, 67, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(529, 67, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(530, 67, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(531, 67, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(532, 67, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(533, 67, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(534, 67, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(535, 67, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(536, 67, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(537, 67, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(538, 67, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(539, 67, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(540, 67, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(541, 67, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(542, 67, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(543, 67, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(544, 67, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(545, 67, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(546, 67, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(547, 67, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(548, 67, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(549, 67, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(550, 67, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(551, 67, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(552, 67, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(553, 67, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(554, 67, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(555, 67, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(556, 67, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(557, 67, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(558, 67, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(559, 67, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(560, 67, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(561, 67, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(562, 67, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(563, 67, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(564, 67, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(565, 67, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(566, 67, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(567, 67, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(568, 67, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(569, 67, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(570, 67, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(571, 67, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(572, 67, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(573, 67, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(574, 67, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(575, 67, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(576, 67, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(577, 67, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(578, 67, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(579, 67, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(580, 67, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(581, 67, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(582, 67, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(583, 67, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(584, 67, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(585, 67, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(586, 67, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(587, 67, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(588, 67, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(589, 67, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(590, 67, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(591, 67, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(592, 67, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(593, 67, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(594, 67, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(595, 67, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(596, 67, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(597, 67, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(598, 90, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(599, 90, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(600, 90, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(601, 90, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(602, 90, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(603, 90, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(604, 90, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(605, 90, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(606, 90, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(607, 90, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(608, 90, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(609, 90, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(610, 90, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(611, 90, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(612, 90, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(613, 90, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(614, 90, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(615, 90, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(616, 90, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(617, 90, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(618, 90, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(619, 90, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(620, 90, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(621, 90, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(622, 90, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(623, 90, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(624, 90, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(625, 90, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(626, 90, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(627, 90, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(628, 90, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(629, 90, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(630, 90, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(631, 90, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(632, 90, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(633, 90, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(634, 90, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(635, 90, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(636, 90, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(637, 90, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(638, 90, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(639, 90, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(640, 90, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(641, 90, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(642, 90, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(643, 90, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(644, 90, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(645, 90, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(646, 90, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(647, 90, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(648, 90, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(649, 90, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(650, 90, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(651, 90, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(652, 90, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(653, 90, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(654, 90, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(655, 90, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(656, 90, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(657, 90, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(658, 90, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(659, 90, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(660, 90, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(661, 90, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(662, 90, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(663, 90, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(664, 90, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(665, 90, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(666, 90, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(667, 90, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(668, 90, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(669, 90, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(670, 90, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(671, 90, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(672, 55, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(673, 55, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(674, 55, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(675, 55, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(676, 55, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(677, 55, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(678, 55, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(679, 55, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(680, 55, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(681, 55, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(682, 55, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(683, 55, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(684, 55, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(685, 55, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(686, 55, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(687, 55, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(688, 55, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(689, 55, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(690, 55, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(691, 55, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(692, 55, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(693, 55, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(694, 55, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(695, 55, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(696, 55, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(697, 55, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(698, 55, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(699, 55, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(700, 55, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(701, 55, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(702, 55, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(703, 55, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(704, 55, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(705, 55, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(706, 55, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(707, 55, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(708, 55, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(709, 55, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(710, 55, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(711, 55, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(712, 55, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(713, 55, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(714, 55, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(715, 55, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(716, 55, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(717, 55, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(718, 55, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(719, 55, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(720, 55, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(721, 55, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(722, 55, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(723, 55, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(724, 55, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(725, 55, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(726, 55, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(727, 55, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(728, 55, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(729, 55, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(730, 55, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(731, 55, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(732, 55, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(733, 55, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(734, 55, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(735, 55, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(736, 55, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(737, 55, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(738, 55, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(739, 55, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(740, 55, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(741, 55, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(742, 55, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(743, 55, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(744, 55, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(745, 55, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(746, 34, '001', '6', 0, 'm2', 93, NULL, NULL),
(747, 9, '001', 'Bouwplank', 0, 'm1', 12000, NULL, NULL),
(748, 9, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(749, 9, '001', 'Pasang batu kumbung 1:3:10', 0, 'm3', 385000, NULL, NULL),
(750, 9, '001', 'Urugan pasir pondasi', 0, 'm3', 264000, NULL, NULL),
(751, 9, '001', 'Urug kembali lubang pondasi', 0, 'm3', 18500, NULL, NULL),
(752, 9, '002', 'Pasangan bata merah trassram', 0, 'm2', 93250, NULL, NULL),
(753, 9, '002', 'Pasangan bata merah 1:4:10', 0, 'm2', 90500, NULL, NULL),
(754, 9, '002', 'Pasangan bata merah 1:4', 0, 'm2', 98500, NULL, NULL),
(755, 9, '002', 'Pasangan batu alam', 0, 'm2', 650000, NULL, NULL),
(756, 9, '003', 'Atap Galvalum', 0, 'm2', 110000, NULL, NULL),
(757, 9, '003', 'List plank', 0, 'm1', 48000, NULL, NULL),
(758, 9, '004', 'Rangka plafon', 0, 'm2', 17500, NULL, NULL),
(759, 9, '004', 'Plafon Gypsumboard', 0, 'm2', 125000, NULL, NULL),
(760, 9, '004', 'List Gypsum', 0, 'm1', 20000, NULL, NULL),
(761, 9, '004', 'Plafon Calsiboard', 0, 'm2', 50000, NULL, NULL),
(762, 9, '005', 'Keramik 40/40', 0, 'm2', 110000, NULL, NULL),
(763, 9, '005', 'Keramik Dinding 20/20 KM', 0, 'm2', 125000, NULL, NULL),
(764, 9, '005', 'Keramik Lantai 20/20 KM', 0, 'm2', 127500, NULL, NULL),
(765, 9, '005', 'Keramik Granit 60/60', 0, 'm2', 235000, NULL, NULL),
(766, 9, '006', 'Kusen pintu Alumunium', 0, 'plong', 375000, NULL, NULL),
(767, 9, '006', 'Kusen dan Daun jendela', 0, 'plong', 650000, NULL, NULL),
(768, 9, '006', 'Daun pintu utama panil', 0, 'bh', 550000, NULL, NULL),
(769, 9, '006', 'Daun pintu double triplex', 0, 'bh', 225000, NULL, NULL),
(770, 9, '006', 'Pintu dan Kusen kamar mandi', 0, 'bh', 850000, NULL, NULL),
(771, 9, '007', 'Cat dinding', 0, 'm2', 18000, NULL, NULL),
(772, 9, '007', 'Cat list plank', 0, 'm2', 20000, NULL, NULL),
(773, 9, '007', 'Cat genteng', 0, 'm2', 22500, NULL, NULL),
(774, 9, '007', 'Cat Plafond', 0, 'm2', 18500, NULL, NULL),
(775, 9, '008', 'Genteng beton', 0, 'm2', 82500, NULL, NULL),
(776, 9, '008', 'Bubungan', 0, 'm1', 55000, NULL, NULL),
(777, 9, '008', 'Plafond', 0, 'm2', 67500, NULL, NULL),
(778, 9, '008', 'Atap spandek lantai 2', 0, 'm2', 225000, NULL, NULL),
(779, 9, '009', 'Beton Sloff 10x15', 0, 'm3', 300000, NULL, NULL),
(780, 9, '009', 'Beton kolom 10x10', 0, 'm3', 2285000, NULL, NULL),
(781, 9, '009', 'Beton dak kanopy', 0, 'm3', 950000, NULL, NULL),
(782, 9, '009', 'Beton ring balok 10x15', 0, 'm3', 2265000, NULL, NULL),
(783, 9, '009', 'Stross ø 20', 0, 'm3', 1850000, NULL, NULL),
(784, 9, '009', 'Stross ø 30', 0, 'm3', 5500000, NULL, NULL),
(785, 9, '009', 'Beton sloof 15x20', 0, 'm3', 4450000, NULL, NULL),
(786, 9, '009', 'Pelat lantai 2 & teras t=10', 0, 'm3', 5275000, NULL, NULL),
(787, 9, '009', 'Bordes & anak tangga', 0, 'm3', 3250000, NULL, NULL),
(788, 9, '009', 'Beton dak kanopy & Meja dapur', 0, 'm3', 1750000, NULL, NULL),
(789, 9, '010', 'Plesteran dan Acian', 0, 'm2', 52500, NULL, NULL),
(790, 9, '010', 'Tali air', 0, 'm1', 9000, NULL, NULL),
(791, 9, '011', 'Pipa PVC 4', 0, 'btg', 75000, NULL, NULL),
(792, 9, '011', 'Pipa PVC 3"', 0, 'btg', 50000, NULL, NULL),
(793, 9, '011', 'Pipa PVC 1/2"AW', 0, 'btg', 27000, NULL, NULL),
(794, 9, '011', 'Closet jongkok', 0, 'bh', 175000, NULL, NULL),
(795, 9, '011', 'Avur', 0, 'bh', 15000, NULL, NULL),
(796, 9, '011', 'Floor drainage', 0, 'bh', 12500, NULL, NULL),
(797, 9, '011', 'Kran air 1/2', 0, 'bh', 15000, NULL, NULL),
(798, 9, '011', 'Keni 1/2"', 0, 'bh', 3000, NULL, NULL),
(799, 9, '011', 'Keni drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL);
INSERT INTO `pekerjaan` (`id_pekerjaan`, `kd_proyek`, `id_rab`, `nama_pekerjaan`, `volume`, `satuan`, `harga_satuan`, `jumlah_harga`, `keterangan_perbaikan`) VALUES
(800, 9, '011', 'Keni 4"', 0, 'bh', 6000, NULL, NULL),
(801, 9, '011', 'Overloop 3/4" - 1/2"', 0, 'bh', 3000, NULL, NULL),
(802, 9, '011', 'Sock drat dalam 1/2"', 0, 'bh', 2500, NULL, NULL),
(803, 9, '011', 'Tee 1/2"', 0, 'bh', 2500, NULL, NULL),
(804, 9, '011', 'Stop kran', 0, 'bh', 15000, NULL, NULL),
(805, 9, '011', 'Meteran air', 0, 'bh', 125000, NULL, NULL),
(806, 9, '011', 'Pintu KM PVC', 0, 'bh', 225000, NULL, NULL),
(807, 9, '011', 'Septic tank', 0, 'bh', 650000, NULL, NULL),
(808, 9, '011', 'closet duduk ex china', 0, 'bh', 800000, NULL, NULL),
(809, 9, '012', 'Selot besar', 0, 'bh', 90000, NULL, NULL),
(810, 9, '012', 'Selot kecil', 0, 'bh', 45000, NULL, NULL),
(811, 9, '012', 'Engsel pintu', 0, 'bh', 20000, NULL, NULL),
(812, 9, '012', 'Engsel jendela', 0, 'bh', 17500, NULL, NULL),
(813, 9, '012', 'Grendel', 0, 'bh', 7500, NULL, NULL),
(814, 9, '012', 'Hak angin', 0, 'bh', 12500, NULL, NULL),
(815, 9, '013', 'Cor jalan tapak', 0, 'm2', 150000, NULL, NULL),
(816, 9, '014', 'Titik lampu', 0, 'ttk', 125000, NULL, NULL),
(817, 9, '014', 'Saklar lampu', 0, 'ttk', 125000, NULL, NULL),
(818, 9, '014', 'Stop kontak', 0, 'ttk', 125000, NULL, NULL),
(819, 9, '014', 'MCB', 0, 'ttk', 140000, NULL, NULL),
(820, 9, '014', 'Meteran listrik / BP + SLO', 0, 'bh', 2250000, NULL, NULL),
(821, 34, '001', '8', 0, 'm2', 110, NULL, NULL),
(822, 34, '001', '17', 0, 'plong', 650, NULL, NULL),
(823, 90, '001', 'Galian tanah', 0, 'm3', 60000, NULL, NULL),
(824, 55, '001', 'List Gypsum', 0, 'm1', 20000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `kd_proyek` varchar(11) NOT NULL,
  `nama_proyek` varchar(25) NOT NULL,
  `type` int(11) NOT NULL,
  `pemilik_proyek` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan_lain` text NOT NULL,
  `ket_perbaikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`kd_proyek`, `nama_proyek`, `type`, `pemilik_proyek`, `status`, `keterangan_lain`, `ket_perbaikan`) VALUES
('1', 'Rumah Sederhana', 45, 'Nadhief Fawaz', 1, 'sederhana', ''),
('2', 'Rumah', 36, 'Nadhief', 2, 'sederhana', 'data masih kosong!'),
('3', 'Perumahan', 60, 'Rezaka', 2, 'komersil', 'Lengkapi pengisian datanya'),
('34', 'sdv', 534, 'vdfb', 0, '', ''),
('4', 'Perum Diamond', 45, 'Ahmad', 0, 'perum', 'data kosong'),
('5', 'Perum Diamond', 36, 'Ahmad', 0, 'perum', ''),
('55', 'rrtrt', 56, 'gfgf', 0, '', ''),
('66', 'asd', 30, 'uytu', 0, '', ''),
('67', 'rty', 50, 'yyuuu', 0, '', ''),
('9', 'pl', 40, 'Abimanyu', 0, '', ''),
('90', 'qwertyui', 45, 'rrrrr', 0, '', ''),
('92', 'dani', 30, 'hakim', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `proyekrab`
--

CREATE TABLE `proyekrab` (
  `id_proyekrab` varchar(5) NOT NULL,
  `id_rab` varchar(5) NOT NULL,
  `kd_proyek` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyekrab`
--

INSERT INTO `proyekrab` (`id_proyekrab`, `id_rab`, `kd_proyek`) VALUES
('PRY1', '001', '1'),
('PRY2', '002', '2'),
('PRY3', '003', '3');

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
-- Table structure for table `proyek_detail`
--

CREATE TABLE `proyek_detail` (
  `id` int(11) NOT NULL,
  `id_rab` varchar(11) NOT NULL,
  `nama_pekerjaan` varchar(100) NOT NULL,
  `volume` decimal(10,0) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_satuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proyek_detail`
--

INSERT INTO `proyek_detail` (`id`, `id_rab`, `nama_pekerjaan`, `volume`, `satuan`, `harga_satuan`) VALUES
(1, '001', 'Bouwplank', '0', 'm1', 12000),
(2, '001', 'Galian tanah', '0', 'm3', 60000),
(3, '001', 'Pasang batu kumbung 1:3:10', '0', 'm3', 385000),
(4, '001', 'Urugan pasir pondasi', '0', 'm3', 264000),
(5, '001', 'Urug kembali lubang pondasi', '0', 'm3', 18500),
(6, '002', 'Pasangan bata merah trassram', '0', 'm2', 93250),
(7, '002', 'Pasangan bata merah 1:4:10', '0', 'm2', 90500),
(8, '002', 'Pasangan bata merah 1:4', '0', 'm2', 98500),
(9, '002', 'Pasangan batu alam', '0', 'm2', 650000),
(10, '003', 'Atap Galvalum', '0', 'm2', 110000),
(11, '003', 'List plank', '0', 'm1', 48000),
(12, '004', 'Rangka plafon', '0', 'm2', 17500),
(13, '004', 'Plafon Gypsumboard', '0', 'm2', 125000),
(14, '004', 'List Gypsum', '0', 'm1', 20000),
(15, '004', 'Plafon Calsiboard', '0', 'm2', 50000),
(16, '005', 'Keramik 40/40', '0', 'm2', 110000),
(17, '005', 'Keramik Dinding 20/20 KM', '0', 'm2', 125000),
(18, '005', 'Keramik Lantai 20/20 KM', '0', 'm2', 127500),
(19, '005', 'Keramik Granit 60/60', '0', 'm2', 235000),
(20, '006', 'Kusen pintu Alumunium', '0', 'plong', 375000),
(21, '006', 'Kusen dan Daun jendela', '0', 'plong', 650000),
(22, '006', 'Daun pintu utama panil', '0', 'bh', 550000),
(23, '006', 'Daun pintu double triplex', '0', 'bh', 225000),
(24, '006', 'Pintu dan Kusen kamar mandi', '0', 'bh', 850000),
(25, '007', 'Cat dinding', '0', 'm2', 18000),
(26, '007', 'Cat list plank', '0', 'm2', 20000),
(27, '007', 'Cat genteng', '0', 'm2', 22500),
(28, '007', 'Cat Plafond', '0', 'm2', 18500),
(29, '008', 'Genteng beton', '0', 'm2', 82500),
(30, '008', 'Bubungan', '0', 'm1', 55000),
(31, '008', 'Plafond', '0', 'm2', 67500),
(32, '008', 'Atap spandek lantai 2', '0', 'm2', 225000),
(33, '009', 'Beton Sloff 10x15', '0', 'm3', 300000),
(34, '009', 'Beton kolom 10x10', '0', 'm3', 2285000),
(35, '009', 'Beton dak kanopy', '0', 'm3', 950000),
(36, '009', 'Beton ring balok 10x15', '0', 'm3', 2265000),
(37, '009', 'Stross ø 20', '0', 'm3', 1850000),
(38, '009', 'Stross ø 30', '0', 'm3', 5500000),
(39, '009', 'Beton sloof 15x20', '0', 'm3', 4450000),
(40, '009', 'Pelat lantai 2 & teras t=10', '0', 'm3', 5275000),
(41, '009', 'Bordes & anak tangga', '0', 'm3', 3250000),
(42, '009', 'Beton dak kanopy & Meja dapur', '0', 'm3', 1750000),
(43, '010', 'Plesteran dan Acian', '0', 'm2', 52500),
(44, '010', 'Tali air', '0', 'm1', 9000),
(45, '011', 'Pipa PVC 4', '0', 'btg', 75000),
(46, '011', 'Pipa PVC 3"', '0', 'btg', 50000),
(47, '011', 'Pipa PVC 1/2"AW', '0', 'btg', 27000),
(48, '011', 'Closet jongkok', '0', 'bh', 175000),
(49, '011', 'Avur', '0', 'bh', 15000),
(50, '011', 'Floor drainage', '0', 'bh', 12500),
(51, '011', 'Kran air 1/2', '0', 'bh', 15000),
(52, '011', 'Keni 1/2"', '0', 'bh', 3000),
(53, '011', 'Keni drat dalam 1/2"', '0', 'bh', 2500),
(54, '011', 'Keni 4"', '0', 'bh', 6000),
(55, '011', 'Overloop 3/4" - 1/2"', '0', 'bh', 3000),
(56, '011', 'Sock drat dalam 1/2"', '0', 'bh', 2500),
(57, '011', 'Tee 1/2"', '0', 'bh', 2500),
(58, '011', 'Stop kran', '0', 'bh', 15000),
(59, '011', 'Meteran air', '0', 'bh', 125000),
(60, '011', 'Pintu KM PVC', '0', 'bh', 225000),
(61, '011', 'Septic tank', '0', 'bh', 650000),
(62, '011', 'closet duduk ex china', '0', 'bh', 800000),
(63, '012', 'Selot besar', '0', 'bh', 90000),
(64, '012', 'Selot kecil', '0', 'bh', 45000),
(65, '012', 'Engsel pintu', '0', 'bh', 20000),
(66, '012', 'Engsel jendela', '0', 'bh', 17500),
(67, '012', 'Grendel', '0', 'bh', 7500),
(68, '012', 'Hak angin', '0', 'bh', 12500),
(69, '013', 'Cor jalan tapak', '0', 'm2', 150000),
(70, '014', 'Titik lampu', '0', 'ttk', 125000),
(71, '014', 'Saklar lampu', '0', 'ttk', 125000),
(72, '014', 'Stop kontak', '0', 'ttk', 125000),
(73, '014', 'MCB', '0', 'ttk', 140000),
(74, '014', 'Meteran listrik / BP + SLO', '0', 'bh', 2250000);

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
(10, 5, 4),
(12, 2, 6),
(13, 4, 5),
(16, 3, 7),
(17, 1, 2),
(18, 5, 8);

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
(1, 'User'),
(2, 'Admin'),
(3, 'Menu'),
(4, 'Rincian'),
(5, 'Perancangan'),
(6, 'laporan'),
(7, 'RAB'),
(8, 'Rancangan RAB');

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
(1, 1, 'Beranda', 'admin', 'fas fa-fw fa-home', 0),
(2, 1, 'Beranda', 'user', 'fas fa-fw fa-home', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 0),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-compass', 1),
(5, 3, 'Submenu Management', 'submenu', 'fas fa-fw fa-compass', 1),
(6, 2, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(7, 4, 'Rincian Bahan', 'bahan', 'fas fa-fw fa-tools', 1),
(8, 2, 'Pengguna', 'pengguna', 'fas fa-fw fa-user', 1),
(9, 4, 'Rincian Upah', 'upah', 'fas fa-fw fa-donate', 1),
(10, 5, 'Tambah Proyek', 'proyek', 'fas fa-fw fa-building', 1),
(11, 5, 'Data Pengeluaran', 'rab/list_proyek', 'fas fa-fw fa-folder', 1),
(12, 6, 'Data Pengeluaran', 'laporan/pengeluaran', 'fas fa-fw fa-file-invoice-dollar\r\n', 1),
(13, 7, 'Tambah Proyek', 'proyek/list_proyek', 'fas fa-fw fa-building', 1),
(14, 8, 'Tambah Proyek', 'dataproyek', 'fas fa-fw fa-building', 1),
(15, 8, 'Data Pengeluaran', 'rancangan/proyek', 'fas fa-fw fa-folder', 1);

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
-- Indexes for table `proyek_detail`
--
ALTER TABLE `proyek_detail`
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
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;
--
-- AUTO_INCREMENT for table `proyek_bahan`
--
ALTER TABLE `proyek_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `proyek_detail`
--
ALTER TABLE `proyek_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
