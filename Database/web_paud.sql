-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 06:47 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_paud`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispensasi`
--

CREATE TABLE `dispensasi` (
  `id` int(11) NOT NULL,
  `nomor_induk` varchar(11) NOT NULL,
  `nama_dispensasi` varchar(200) NOT NULL,
  `alasan_pengajuan` longtext NOT NULL,
  `tgl_pengajuan_bayar` date NOT NULL,
  `status` int(11) NOT NULL,
  `alasanditolak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispensasi`
--

INSERT INTO `dispensasi` (`id`, `nomor_induk`, `nama_dispensasi`, `alasan_pengajuan`, `tgl_pengajuan_bayar`, `status`, `alasanditolak`) VALUES
(13, '2201', 'Uang Gedung - Mei 2023', 'dana belum cukup', '2023-06-05', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `kode_jenis` varchar(10) NOT NULL,
  `jenis_bayar` varchar(20) NOT NULL,
  `jml` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`kode_jenis`, `jenis_bayar`, `jml`, `keterangan`) VALUES
('B1', 'Buku Pelajaran', 30000, 'Pembayaran setiap awal semester'),
('G1', 'Uang Gedung', 100000, 'Pembayaran 1 kali setelah pendaftaran'),
('S1', 'SPP', 50000, 'Pembayaran rutin setiap bulan'),
('SE1', 'Paket Seragam', 150000, 'Pembayaran 1 kali setelah diterima menjadi siswa');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kode_pembayaran` int(11) NOT NULL,
  `nomor_induk` int(11) NOT NULL,
  `nm_tagihan` varchar(50) NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml` int(11) NOT NULL,
  `ket` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `kd_daftar` int(11) NOT NULL,
  `tgl_daftar` varchar(15) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jkel` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `umur_ayah` int(11) NOT NULL,
  `alamat_ayah` varchar(50) NOT NULL,
  `pendidikan_ayah` varchar(10) NOT NULL,
  `pekerjaan_ayah` varchar(30) NOT NULL,
  `telepon_ayah` varchar(13) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `umur_ibu` int(11) NOT NULL,
  `alamat_ibu` varchar(50) NOT NULL,
  `pendidikan_ibu` varchar(10) NOT NULL,
  `pekerjaan_ibu` varchar(30) NOT NULL,
  `telepon_ibu` varchar(13) NOT NULL,
  `akta_lahir` varchar(20) NOT NULL DEFAULT 'default.jpg',
  `kartu_keluarga` varchar(20) NOT NULL,
  `status_siswa` enum('Siswa Baru','Siswa Pindahan') NOT NULL,
  `status` int(11) NOT NULL,
  `alasan_ditolak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`kd_daftar`, `tgl_daftar`, `nama_siswa`, `umur`, `kelas`, `tempat_lahir`, `tgl_lahir`, `jkel`, `agama`, `alamat`, `nama_ayah`, `umur_ayah`, `alamat_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `telepon_ayah`, `nama_ibu`, `umur_ibu`, `alamat_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `telepon_ibu`, `akta_lahir`, `kartu_keluarga`, `status_siswa`, `status`, `alasan_ditolak`) VALUES
(44, '2023-05-25', 'Yieun Arinda Eka Sari', '1 Tahun 7 Bulan 2 Hari', 'A', 'Merauke', '2021-10-23', 'Perempuan', 'Islam', 'Jl. Muharto Gg 7 RT 3 RW 10', 'Untung Saring', 28, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SMA', 'Pedagang', '085791535000', 'Yetik Aris Santi', 27, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SD', 'IRT', '083835737000', 'akta_lahir1684983459', 'kartu_keluarga168498', 'Siswa Baru', 1, ''),
(45, '2023-05-25', 'Anindia Dwi Faza Putri Lestari', '1 Tahun 7 Bulan 21 Hari', 'A', 'Malang', '2021-11-04', 'Perempuan', 'Islam', 'Jl. Muharto Gg 7 RT 3 RW 10', 'Untung Saring', 28, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SMA', 'Pedagang', '085791535000', 'Yetik Aris Santi', 27, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SD', 'IRT', '083835737000', 'akta_lahir1684983701', 'kartu_keluarga168498', 'Siswa Baru', 1, ''),
(46, '2023-05-25', 'Andhika Trian Sakti Evryan Jaya', '1 Tahun 6 Bulan 4 Hari', 'A', 'Malang', '2021-12-21', 'Laki-laki', 'Islam', 'Jl. Muharto Gg 7 RT 3 RW 10', 'Untung Saring', 28, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SMA', 'Pedagang', '085791535000', 'Yetik Aris Santi', 27, 'Jl. Muharto Gg 7 RT 3 RW 10', 'SD', 'IRT', '083835737000', 'akta_lahir1684983817', 'kartu_keluarga168498', 'Siswa Baru', 1, ''),
(47, '2023-05-25', 'Devi Magarita', '1 Tahun 6 Bulan 3 Hari', 'A', 'Malang', '2021-12-22', 'Perempuan', 'Islam', 'Jl. Muharto 5C', 'Suradi', 29, 'Jl. Muharto 5C', 'SD', 'Pedagang', '081234567890', 'Juwarsri', 28, 'Jl. Muharto 5C', 'SD', 'IRT', '082213456789', 'akta_lahir1684983983', 'kartu_keluarga168498', 'Siswa Baru', 1, ''),
(48, '2023-05-29', 'Armando Putra Wijaya', '3 Tahun 11 Bulan 9 Hari', 'B', 'Malang', '2020-05-20', 'Laki-laki', 'Kristen', 'Jl. Muharto Gg 5', 'Suherman', 31, 'Jl. Muharto Gg 5', 'SMK', 'PNS', '089712345678', 'Arini', 30, 'Jl. Muharto Gg 5', 'SMA', 'IRT', '089712345679', 'akta_lahir1685376736', 'kartu_keluarga168537', 'Siswa Pindahan', 2, 'penuh');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nomor_induk` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jkel` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `status_siswa` enum('Siswa Baru','Siswa Pindahan') NOT NULL,
  `waktu_tambah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waktu_edit` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nomor_induk`, `nama_siswa`, `jkel`, `alamat`, `kelas`, `tahun_ajaran`, `status_siswa`, `waktu_tambah`, `waktu_edit`) VALUES
(2201, 'Yieun Arinda Eka Sari', 'Perempuan', 'Jl. Muharto Gg 7 RT 3 RW 10', 'A', '2023/2024', 'Siswa Baru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2202, 'Anindia Dwi Faza Putri Lestari', 'Perempuan', 'Jl. Muharto Gg 7 RT 3 RW 10', 'A', '2023/2024', 'Siswa Baru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2203, 'Andhika Trian Sakti Evryan Jaya', 'Laki-laki', 'Jl. Muharto Gg 7 RT 3 RW 10', 'A', '2023/2024', 'Siswa Baru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2204, 'Devi Magarita', 'Perempuan', 'Jl. Muharto 5C', 'A', '2023/2024', 'Siswa Baru', '2023-05-25 21:59:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `kode_tagihan` int(11) NOT NULL,
  `nomor_induk` int(11) NOT NULL,
  `nm_tagihan` varchar(50) NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml` int(11) NOT NULL,
  `no_bayar` varchar(10) NOT NULL,
  `ket` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`kode_tagihan`, `nomor_induk`, `nm_tagihan`, `jatuh_tempo`, `bulan`, `tgl_bayar`, `jml`, `no_bayar`, `ket`) VALUES
(88, 2201, 'SPP', '2023-05-31', 'May 2023', '0000-00-00', 50000, '', '1'),
(89, 2202, 'SPP', '2023-05-31', 'May 2023', '0000-00-00', 50000, '', '1'),
(90, 2203, 'SPP', '2023-05-31', 'May 2023', '0000-00-00', 50000, '', '1'),
(91, 2201, 'Uang Gedung', '2023-06-05', 'Mei 2023', '0000-00-00', 100000, '', 'Belum Bayar'),
(92, 2202, 'Uang Gedung', '2023-05-30', 'Mei 2023', '2023-05-25', 100000, '2305250001', 'Lunas'),
(93, 2203, 'Uang Gedung', '2023-05-30', 'Mei 2023', '0000-00-00', 100000, '', 'Belum Bayar'),
(94, 2204, 'SPP', '2023-05-31', 'May 2023', '0000-00-00', 50000, '', '1'),
(95, 2201, 'SPP', '2023-06-30', 'June 2023', '0000-00-00', 50000, '', '1'),
(96, 2202, 'SPP', '2023-06-30', 'June 2023', '0000-00-00', 50000, '', '1'),
(97, 2203, 'SPP', '2023-06-30', 'June 2023', '0000-00-00', 50000, '', '1'),
(98, 2204, 'SPP', '2023-06-30', 'June 2023', '0000-00-00', 50000, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `vw_password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `vw_password`, `role_id`, `is_active`, `date_created`) VALUES
(2, 'Yeun Arinda Eka Sari', 'admin@gmail.com', 'image.jpg', '$2y$10$Ju6rfMTEVtux8PU3CplZhOtL9RX1MUm8D00CrBerajPqjloqXvnNS', 'admin', 1, 1, 1656404855),
(3, 'Purwati Ningsih', 'stafadmin@gmail.com', 'image.jpg', '$2y$10$3wPfW/FAlQk1w43NwLBVQufxHFDdKPZzrw7gPdpNP4PkkF3Jyl7se', 'stafadmin', 2, 1, 1656595716),
(4, 'Juwarsri', 'keuangan@gmail.com', 'image.jpg', '$2y$10$V3e.Sz2nvJ0yPnh3SvfRJelu.UvwnAtZ7ODsWHRJeZo8C6XmrYZ.C', 'keuangan', 3, 1, 1656595766),
(5, 'Sriati', 'pembina@gmail.com', 'image.jpg', '$2y$10$AEqE5aAyRHAxpqGViZmvkuGhvw.2i6qvN/ZF5hENfA4Y3b0d1.RIO', 'pembina', 4, 1, 1656595978),
(19, 'Yieun Arinda Eka Sari', 'yieunarinda@gmail.com', 'image.jpg', '$2y$10$.53VKC6yDILDjwWhOYYXjuqZyATZ6GEWATRrOBqB6Jw1g5xMspHUe', '', 5, 1, 1684986795),
(20, 'Anindia Dwi Faza Putri Lestari', 'anindiadwi@gmail.com', 'image.jpg', '$2y$10$H1KPQ3YNRI1EGQvF0ANxUulW41xsm3S4fYU6jul0GCpNoGshTK3VC', '', 5, 1, 1684986867),
(21, 'Andhika Trian Sakti Evryan Jaya', 'andhikatrian@gmail.com', 'image.jpg', '$2y$10$yTGRbdfiVG5y.B3wD/NtdOFmnJgl9Vw7TLPeBkM4DTbnGNVi1i3Hu', '', 5, 1, 1684986899);

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
(2, 1, 2),
(3, 2, 1),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 7),
(8, 2, 4),
(9, 2, 5),
(10, 3, 1),
(11, 3, 6),
(12, 3, 7),
(13, 4, 8),
(15, 5, 1),
(16, 4, 1),
(17, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'User'),
(2, 'Admin'),
(4, 'ppdb'),
(5, 'siswa'),
(6, 'data siswa'),
(7, 'keuangan'),
(8, 'laporan'),
(9, 'data keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Stafadmin'),
(3, 'Keuangan'),
(4, 'Pembina'),
(5, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'dashboard', 'fas fa-fw fa-tachometer-alt', 1),
(4, 2, 'Role', 'admin/role', 'fas fa-fw fa-universal-access', 1),
(5, 2, 'Menu', 'menu', 'fas fa-fw fa-folder', 1),
(6, 2, 'Submenu', 'submenu', 'fas fa-fw fa-folder-open', 1),
(7, 4, 'Pendaftaran', 'daftar', 'fas fa-fw fa-users', 1),
(8, 5, 'Daftar Siswa', 'siswa', 'fas fa-fw fa-user-tie', 1),
(9, 7, 'Jenis Pembayaran', 'jenisbayar', 'fas fa-fw fa-dollar-sign', 1),
(10, 7, 'Tagihan Siswa', 'tagihan/list_tagihan', 'fas fa-fw fa-file-invoice', 1),
(11, 7, 'Pengajuan Dispensasi', 'dispensasi', 'fas fa-fw fa-clock', 1),
(12, 7, 'Pembayaran', 'pembayaran', 'fas fa-fw fa-money-bill-alt', 1),
(13, 6, 'Daftar Siswa', 'data_siswa', 'fas fa-fw fa-user-tie', 1),
(14, 8, 'Laporan Pendaftaran', 'laporan/lap_daftar', 'fas fa-fw fa-file-alt', 1),
(15, 8, 'Laporan Pembayaran', 'laporan/lap_bayar', 'fas fa-fw fa-file-invoice-dollar', 1),
(16, 9, 'Daftar Tagihan', 'data_tagihan', 'fas fa-fw fa-file-invoice', 1),
(17, 9, 'Pengajuan Dispensasi', 'data_dispen', 'fas fa-fw fa-clock', 1),
(18, 9, 'Pembayaran', 'data_bayar', 'fas fa-fw fa-money-bill-alt', 0),
(19, 2, 'User Pengguna', 'pengguna', 'fas fa-fw fa-users-cog', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispensasi`
--
ALTER TABLE `dispensasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`kode_jenis`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kode_pembayaran`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`kd_daftar`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nomor_induk`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`kode_tagihan`);

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
-- AUTO_INCREMENT for table `dispensasi`
--
ALTER TABLE `dispensasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `kode_pembayaran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `kd_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `kode_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
