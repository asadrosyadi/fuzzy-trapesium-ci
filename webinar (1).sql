-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 09:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webinar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `nama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 123, 123, 34324);

-- --------------------------------------------------------

--
-- Table structure for table `android`
--

CREATE TABLE `android` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `android`
--

INSERT INTO `android` (`id`, `nama`, `alamat`, `hp`) VALUES
(2, 'Rafi', 'Sidoarjo', '0939018429');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nim` text NOT NULL,
  `hp` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama`, `nim`, `hp`, `username`, `password`) VALUES
(1, 'aa', 'aaaa', 'aaa', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `data1`, `data2`, `data3`) VALUES
(10, '70', '30', '20'),
(11, '10', '20', '30'),
(12, '10', '20', '30'),
(13, '30', '70', '60'),
(14, '10', '10', '10'),
(15, '30', '30', '30'),
(16, '30', '30', '30'),
(17, '30', '30', '30'),
(18, '30', '30', '30'),
(19, '30', '30', '30'),
(20, '30', '30', '30'),
(21, '30', '30', '30'),
(22, '30', '30', '30'),
(23, '30', '30', '30'),
(24, '30', '30', '30'),
(25, '30', '30', '30'),
(26, '30', '30', '30'),
(27, '30', '30', '30'),
(28, '', '', ''),
(29, '', '', ''),
(30, '70', '60', '50');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `fakultas` text NOT NULL,
  `administrasi` text NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `fakultas`, `administrasi`, `hasil`) VALUES
(1, 'Teknik', 'Lengkap', 'Lolos'),
(2, 'Teknik', 'Tidak Lengkap', 'Tidak Lolos'),
(10, 'Filkom', 'Tidak Lengkap', 'Lolos'),
(11, 'Filkom', 'Lengkap', 'Lolos'),
(12, 'Filkom', 'Lengkap', 'Tidak Lolos'),
(13, 'Filkom', 'Tidak Lengkap', 'Lolos'),
(14, 'Teknik', 'Tidak Lengkap', 'Tidak Lolos');

-- --------------------------------------------------------

--
-- Table structure for table `dataset2`
--

CREATE TABLE `dataset2` (
  `id` int(11) NOT NULL,
  `sensor1` text NOT NULL,
  `sensor2` text NOT NULL,
  `sensor3` text NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataset2`
--

INSERT INTO `dataset2` (`id`, `sensor1`, `sensor2`, `sensor3`, `hasil`) VALUES
(1, 'rendah', 'sedang', 'rendah', 'off'),
(2, 'tinggi', 'tinggi', 'tinggi', 'on'),
(3, 'rendah', 'tinggi', 'tinggi', 'on'),
(4, 'rendah', 'rendah', 'tinggi', 'off'),
(5, 'rendah', 'tinggi', 'rendah', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `datates`
--

CREATE TABLE `datates` (
  `id` int(11) NOT NULL,
  `fakultas` text NOT NULL,
  `administrasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datates`
--

INSERT INTO `datates` (`id`, `fakultas`, `administrasi`) VALUES
(1, 'Filkom', 'Tidak Lengkap');

-- --------------------------------------------------------

--
-- Table structure for table `datates2`
--

CREATE TABLE `datates2` (
  `id` int(11) NOT NULL,
  `sensor1` text NOT NULL,
  `sensor2` text NOT NULL,
  `sensor3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datates2`
--

INSERT INTO `datates2` (`id`, `sensor1`, `sensor2`, `sensor3`) VALUES
(1, 'rendah', 'tinggi', 'rendah');

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE `datauser` (
  `id` int(11) NOT NULL,
  `id_user` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`id`, `id_user`, `timestamp`, `data`) VALUES
(1, '1', '2021-05-09 03:26:53', '10'),
(2, '2', '2021-05-09 03:28:46', '50'),
(3, '1', '2021-05-09 03:33:31', '10'),
(4, '1', '2021-05-09 03:33:36', '30');

-- --------------------------------------------------------

--
-- Table structure for table `fuzzy`
--

CREATE TABLE `fuzzy` (
  `id` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzy`
--

INSERT INTO `fuzzy` (`id`, `tgl`, `nilai`) VALUES
(1, '2021-01-31 03:58:27', 10),
(2, '2021-01-31 04:23:42', 43),
(3, '2021-01-31 05:40:14', 50),
(4, '2021-01-31 06:02:53', 46),
(5, '2021-01-31 06:03:02', 60),
(6, '2021-01-31 06:03:41', 37),
(7, '2021-01-31 06:03:54', 77),
(8, '2021-01-31 06:34:38', 48),
(9, '2021-01-31 06:34:51', 55),
(10, '2021-02-08 07:10:24', 80),
(11, '2021-03-25 08:48:37', 30),
(12, '2021-04-10 03:33:05', 50),
(13, '2021-04-10 03:58:45', 40),
(14, '2021-05-30 04:59:16', 41),
(15, '2021-06-13 03:37:19', 56),
(16, '2021-09-05 03:28:12', 59),
(17, '2022-12-14 03:27:42', 100);

-- --------------------------------------------------------

--
-- Table structure for table `fuzzy1`
--

CREATE TABLE `fuzzy1` (
  `id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzy1`
--

INSERT INTO `fuzzy1` (`id`, `nilai`, `tgl`) VALUES
(1, 24, '2022-05-30 21:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `fuzzy2`
--

CREATE TABLE `fuzzy2` (
  `id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzy2`
--

INSERT INTO `fuzzy2` (`id`, `nilai`, `tgl`) VALUES
(1, 85, '2022-05-30 21:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `fuzzy3`
--

CREATE TABLE `fuzzy3` (
  `id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzy3`
--

INSERT INTO `fuzzy3` (`id`, `nilai`, `tgl`) VALUES
(1, 600, '2022-05-30 21:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `fuzzyrule`
--

CREATE TABLE `fuzzyrule` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `mid2` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzyrule`
--

INSERT INTO `fuzzyrule` (`id`, `min`, `mid`, `mid2`, `max`) VALUES
(1, 38, 47, 50, 82);

-- --------------------------------------------------------

--
-- Table structure for table `fuzzyrule1`
--

CREATE TABLE `fuzzyrule1` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzyrule1`
--

INSERT INTO `fuzzyrule1` (`id`, `min`, `mid`, `max`) VALUES
(1, 15, 23, 30);

-- --------------------------------------------------------

--
-- Table structure for table `fuzzyrule2`
--

CREATE TABLE `fuzzyrule2` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzyrule2`
--

INSERT INTO `fuzzyrule2` (`id`, `min`, `mid`, `max`) VALUES
(1, 54, 56, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fuzzyrule3`
--

CREATE TABLE `fuzzyrule3` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuzzyrule3`
--

INSERT INTO `fuzzyrule3` (`id`, `min`, `mid`, `max`) VALUES
(1, 250, 625, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `magic`
--

CREATE TABLE `magic` (
  `id` int(11) NOT NULL,
  `suhu` text NOT NULL,
  `lembap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `magic`
--

INSERT INTO `magic` (`id`, `suhu`, `lembap`) VALUES
(1, '30', '50'),
(2, '28', '29'),
(3, '30', '40');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id`, `time`, `nilai`) VALUES
(1, '2021-01-24 03:40:21', 10);

-- --------------------------------------------------------

--
-- Table structure for table `saw`
--

CREATE TABLE `saw` (
  `id` int(11) NOT NULL,
  `nilai1` int(11) NOT NULL,
  `nilai2` int(11) NOT NULL,
  `nilai3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw`
--

INSERT INTO `saw` (`id`, `nilai1`, `nilai2`, `nilai3`) VALUES
(1, 10, 20, 30),
(2, 30, 20, 10),
(3, 20, 10, 30),
(4, 20, 20, 10),
(5, 30, 10, 20),
(6, 40, 20, 10),
(7, 60, 60, 60),
(8, 50, 70, 40),
(9, 100, 40, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sawbobot`
--

CREATE TABLE `sawbobot` (
  `id_bobot` int(11) NOT NULL,
  `bobot1` text NOT NULL,
  `bobot2` text NOT NULL,
  `bobot3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sawbobot`
--

INSERT INTO `sawbobot` (`id_bobot`, `bobot1`, `bobot2`, `bobot3`) VALUES
(1, '30', '30', '40');

-- --------------------------------------------------------

--
-- Table structure for table `skor`
--

CREATE TABLE `skor` (
  `id` int(11) NOT NULL,
  `id_leaderboard` text NOT NULL,
  `skor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skor`
--

INSERT INTO `skor` (`id`, `id_leaderboard`, `skor`) VALUES
(1, '1', ''),
(2, '1', '118.516286'),
(3, '1', '0 : 1 : 55'),
(4, '1', '0 : 1 : 50'),
(5, '1', '0 : 1 : 57'),
(6, '3', '0 : 1 : 53'),
(7, '3', '0 : 1 : 48');

-- --------------------------------------------------------

--
-- Table structure for table `tabel`
--

CREATE TABLE `tabel` (
  `id` int(11) NOT NULL,
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `data3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `token`) VALUES
(1, 'arda0611', 'U08zfNks1b24nGxr'),
(2, 'asad11', 'cLI4soV3yDP8K6Gx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `android`
--
ALTER TABLE `android`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset2`
--
ALTER TABLE `dataset2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datates`
--
ALTER TABLE `datates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datates2`
--
ALTER TABLE `datates2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzy`
--
ALTER TABLE `fuzzy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzy1`
--
ALTER TABLE `fuzzy1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzy2`
--
ALTER TABLE `fuzzy2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzy3`
--
ALTER TABLE `fuzzy3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzyrule`
--
ALTER TABLE `fuzzyrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzyrule1`
--
ALTER TABLE `fuzzyrule1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzyrule2`
--
ALTER TABLE `fuzzyrule2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuzzyrule3`
--
ALTER TABLE `fuzzyrule3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magic`
--
ALTER TABLE `magic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw`
--
ALTER TABLE `saw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sawbobot`
--
ALTER TABLE `sawbobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `skor`
--
ALTER TABLE `skor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel`
--
ALTER TABLE `tabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `android`
--
ALTER TABLE `android`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dataset2`
--
ALTER TABLE `dataset2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `datates`
--
ALTER TABLE `datates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datates2`
--
ALTER TABLE `datates2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datauser`
--
ALTER TABLE `datauser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fuzzy`
--
ALTER TABLE `fuzzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fuzzy1`
--
ALTER TABLE `fuzzy1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzy2`
--
ALTER TABLE `fuzzy2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzy3`
--
ALTER TABLE `fuzzy3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzyrule`
--
ALTER TABLE `fuzzyrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzyrule1`
--
ALTER TABLE `fuzzyrule1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzyrule2`
--
ALTER TABLE `fuzzyrule2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuzzyrule3`
--
ALTER TABLE `fuzzyrule3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `magic`
--
ALTER TABLE `magic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saw`
--
ALTER TABLE `saw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sawbobot`
--
ALTER TABLE `sawbobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skor`
--
ALTER TABLE `skor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tabel`
--
ALTER TABLE `tabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
