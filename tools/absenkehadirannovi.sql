-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2026 at 04:06 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absenkehadirannovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `idkehadiran` int NOT NULL,
  `idsiswa` int NOT NULL,
  `iduser` int NOT NULL,
  `tanggal` date NOT NULL,
  `jammasuk` time NOT NULL,
  `status` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`idkehadiran`, `idsiswa`, `iduser`, `tanggal`, `jammasuk`, `status`, `keterangan`) VALUES
(1, 1, 1, '2026-10-03', '07:15:00', 'Hadir', 'Tepat waktu'),
(2, 2, 1, '2026-10-03', '07:30:00', 'Hadir', 'Toleransi keterlambatan'),
(3, 3, 1, '2026-10-03', '00:00:00', 'Sakit', 'Surat dokter terlampir'),
(4, 1, 1, '2026-10-03', '07:15:00', 'Hadir', 'Tepat waktu'),
(5, 2, 1, '2026-10-03', '07:30:00', 'Hadir', 'Toleransi keterlambatan'),
(6, 3, 1, '2026-10-03', '00:00:00', 'Sakit', 'Surat dokter terlampir'),
(7, 1, 1, '2026-10-03', '07:15:00', 'Hadir', 'Tepat waktu'),
(8, 2, 1, '2026-10-03', '07:30:00', 'Hadir', 'Toleransi keterlambatan'),
(9, 3, 1, '2026-10-03', '00:00:00', 'Sakit', 'Surat dokter terlampir'),
(10, 1, 1, '2026-10-03', '07:15:00', 'Hadir', 'Tepat waktu'),
(11, 2, 1, '2026-10-03', '07:30:00', 'Hadir', 'Toleransi keterlambatan'),
(12, 3, 1, '2026-10-03', '00:00:00', 'Sakit', 'Surat dokter terlampir');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int NOT NULL,
  `idwalikelas` int NOT NULL,
  `namasiswa` varchar(50) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `kelas` varchar(50) NOT NULL,
  `nohp` varchar(14) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `idwalikelas`, `namasiswa`, `nis`, `kelas`, `nohp`, `foto`) VALUES
(1, 1, 'Novi Yanti', '1235', 'XII RPL 1', '081234567890', 'novi.png'),
(2, 1, 'Ahmad Fauzi', '12365', 'XII-TKJ 2', '081234567890', 'fadillah.png'),
(3, 2, 'Muhammad Ramadhan', '7653', 'XII RPL 2', '081234567892', 'rama.png'),
(13, 1, 'Nur Fadillah', '1236765', 'X DKV 1', '081234567891', 'fadillah.png'),
(14, 2, 'Muhammad Ramadhan', '76586273', 'XI RPL 2', '081234567892', 'rama.png'),
(20, 3, 'Zea Alsya', '12291765', 'X DKV 2', '0812345683011', 'zea.png'),
(31, 1, 'Novi Yanti', '78367384', 'XI RPL 2', '081234567890', 'novi.png'),
(32, 1, 'Nur Fadillah', '98372675', 'X DKV 1', '081234567891', 'fadillah.png'),
(33, 3, 'Zea Alsya', '968591765', 'X DKV 2', '0812345683011', 'zea.png'),
(39, 1, 'Novi Yanti', '11111', 'XI RPL 2', '081234567890', 'novi.png'),
(40, 1, 'Nur Fadillah', '22222', 'X DKV 1', '081234567891', 'fadillah.png'),
(41, 3, 'Zea Alsya', '33333', 'X DKV 2', '0812345683011', 'zea.png'),
(43, 1, 'Budi Santoso', '12345678', '12 RPL 1', '081234567890', 'budi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `namauser` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` enum('admin','siswa','seketaris') NOT NULL DEFAULT 'siswa',
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `namauser`, `username`, `password`, `role`, `foto`) VALUES
(1, 'novi yanti', 'novi', '1235', 'admin', 'qygavbahaj.png'),
(2, 'nur fadillah', 'fadillah', '12365', 'seketaris', 'qygavbahajgh.png'),
(3, 'Andi Wijaya', 'rama', 'passwordBaru123', 'admin', 'qygavbahahghj.png'),
(4, 'novi yanti', 'novi', '1235', 'admin', 'qygavbahaj.png'),
(5, 'nur fadillah', 'fadillah', '12365', 'seketaris', 'qygavbahajgh.png'),
(6, 'muhammmad ramadhan', 'rama', '7653', 'siswa', 'qygavbahahghj.png'),
(7, 'novi yanti', 'novi', '1235', 'admin', 'qygavbahaj.png'),
(8, 'nur fadillah', 'fadillah', '12365', 'seketaris', 'qygavbahajgh.png'),
(9, 'muhammmad ramadhan', 'rama', '7653', 'siswa', 'qygavbahahghj.png');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `idwalikelas` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `namawalimurid` varchar(50) NOT NULL,
  `nohp` varchar(14) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`idwalikelas`, `username`, `namawalimurid`, `nohp`, `alamat`, `password`, `foto`) VALUES
(1, 'buk tini', 'kartini', '234567964321', 'bundar', '1010', 'qygavbahaj.png'),
(2, 'pak hadi', 'Abdul hadi', '12365173219', 'sekerak', '0980', 'qygavbahajgh.png'),
(3, 'sudirman', 'ahmad sudirman', '765323561919', 'bardar mahligai', '1234', 'qygavbahahghj.png'),
(4, 'buk tini', 'kartini', '234567964321', 'bundar', '1010', 'qygavbahaj.png'),
(5, 'pak hadi', 'Abdul hadi', '12365173219', 'sekerak', '0980', 'qygavbahajgh.png'),
(6, 'sudirman', 'ahmad sudirman', '765323561919', 'bardar mahligai', '1234', 'qygavbahahghj.png'),
(7, 'buk tini', 'kartini', '234567964321', 'bundar', '1010', 'qygavbahaj.png'),
(8, 'pak hadi', 'Abdul hadi', '12365173219', 'sekerak', '0980', 'qygavbahajgh.png'),
(9, 'sudirman', 'ahmad sudirman', '765323561919', 'bardar mahligai', '1234', 'qygavbahahghj.png'),
(10, ' memer', ' memerlp', ' 082243772009', ' terban', ' 123', ' memer.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`idkehadiran`),
  ADD KEY `idsiswa` (`idsiswa`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `idwalikelas` (`idwalikelas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`idwalikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `idkehadiran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `idwalikelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `idsiswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  ADD CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `idwalikelas` FOREIGN KEY (`idwalikelas`) REFERENCES `walikelas` (`idwalikelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
