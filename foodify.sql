-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 05:46 AM
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
-- Database: `foodify`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`) VALUES
(50, 'Burjo'),
(51, 'Mc Donald'),
(52, 'Gokana Ramen'),
(53, 'Wing Heng'),
(54, 'Moon Chicken'),
(55, 'Mak Gobang'),
(56, 'test indo 1'),
(57, 'test indo 2'),
(58, 'test indo 3'),
(59, 'test indo 4');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_moora`
--

CREATE TABLE `hasil_moora` (
  `id_hasil_moora` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_moora`
--

INSERT INTO `hasil_moora` (`id_hasil_moora`, `id_alternatif`, `nilai`) VALUES
(1, 50, 0.8907),
(2, 51, 1.1013),
(3, 52, 0.9842),
(4, 53, 0.8789),
(5, 54, 0.8789),
(6, 55, 0.6448),
(7, 56, 1.113),
(8, 57, 1.113),
(9, 58, 1.113),
(10, 59, 1.113);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`, `jenis`) VALUES
(38, 'Harga', 'C1', 1, 'Cost'),
(39, 'Kategori Makanan', 'C2', 1, 'Benefit'),
(47, 'Suasana', 'C3', 1, 'Benefit'),
(48, 'Rating Restoran', 'C4', 1, 'Benefit'),
(49, 'Kebersihan Restoran', 'C5', 1, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `id_sub_kriteria`) VALUES
(136, 50, 38, 70),
(137, 50, 39, 76),
(138, 51, 38, 72),
(139, 51, 39, 77),
(140, 52, 38, 73),
(141, 52, 39, 78),
(142, 53, 38, 72),
(143, 53, 39, 75),
(144, 54, 38, 72),
(145, 54, 39, 79),
(146, 50, 47, 90),
(147, 51, 47, 90),
(148, 52, 47, 90),
(149, 53, 47, 90),
(150, 54, 47, 90),
(151, 50, 48, 94),
(152, 50, 49, 97),
(153, 51, 48, 96),
(154, 51, 49, 99),
(155, 52, 48, 96),
(156, 52, 49, 99),
(157, 53, 48, 95),
(158, 53, 49, 98),
(159, 54, 48, 95),
(160, 54, 49, 98),
(161, 55, 38, 74),
(162, 55, 39, 76),
(163, 55, 47, 90),
(164, 55, 48, 95),
(165, 55, 49, 98),
(166, 56, 38, 70),
(167, 56, 39, 76),
(168, 56, 47, 90),
(169, 56, 48, 95),
(170, 56, 49, 98),
(171, 57, 38, 70),
(172, 57, 39, 76),
(173, 57, 47, 90),
(174, 57, 48, 95),
(175, 57, 49, 98),
(176, 58, 38, 70),
(177, 58, 39, 76),
(178, 58, 47, 90),
(179, 58, 48, 95),
(180, 58, 49, 98),
(181, 59, 38, 70),
(182, 59, 39, 76),
(183, 59, 47, 90),
(184, 59, 48, 95),
(185, 59, 49, 98);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(70, 38, '10.000-20.000', 1),
(71, 38, '20.000-30.000', 2),
(72, 38, '30.000-40.000', 3),
(73, 38, '40.000-50.000', 4),
(74, 38, '50.000 Lebih', 5),
(75, 39, 'Chinese', 1),
(76, 39, 'Indonesian', 1),
(77, 39, 'Western', 1),
(78, 39, 'Japanese', 1),
(79, 39, 'Korean', 1),
(90, 47, 'Indoor', 1),
(91, 47, 'Outdoor', 1),
(92, 48, 'Bintang 1', 1),
(93, 48, 'Bintang 2', 2),
(94, 48, 'Bintang 3', 3),
(95, 48, 'Bintang 4', 4),
(96, 48, 'Bingtang 5', 5),
(97, 49, 'Kurang Bersih', 1),
(98, 49, 'Cukup Bersih', 2),
(99, 49, 'Sangat Bersih', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(9, 2, 'Nehemia', 'nehe@mail.com', 'nehe', '264140f65150fa3c08d878c37d3aab37');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil_moora`
--
ALTER TABLE `hasil_moora`
  ADD PRIMARY KEY (`id_hasil_moora`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`id_sub_kriteria`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `hasil_moora`
--
ALTER TABLE `hasil_moora`
  MODIFY `id_hasil_moora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_moora`
--
ALTER TABLE `hasil_moora`
  ADD CONSTRAINT `hasil_moora_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_sub_kriteria`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
