-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 03:58 PM
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
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `Id_Alamat` int(1) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Gedung` varchar(100) DEFAULT NULL,
  `Jalan` varchar(50) DEFAULT NULL,
  `Kabupaten_atau_Kota` varchar(50) DEFAULT NULL,
  `Kode_Pos` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`Id_Alamat`, `NIM`, `Gedung`, `Jalan`, `Kabupaten_atau_Kota`, `Kode_Pos`) VALUES
(1, 12200002, 'Cluster Sakura Jl. Imam Bonjol No. 03 ', 'Balaraja', 'Kabupaten Tangerang', 15610),
(2, 12200003, 'Perumahan Bumi Indah Tahap 5 Jl. Edelweis 4 Blok KG No. 20 ', 'Cikokol', 'Kota Tangerang', 15117),
(3, 12200004, 'Perumahan Taman Buah 2 Jln. Agung Raya No.19', 'Cikupa', 'Kabupaten Tangerang', 15710),
(4, 12200005, 'Perumahan Puri Jaya Jl. Anggrek 17 Blok B9', 'Bugel', 'Kota Tangerang', 50711),
(5, 12200006, 'Perumahan Taman Raya Rajeg Jl. Melati 3 Blok K5 No.4', 'Halim', 'Kota Jakarta Timur', 13610),
(6, 12200007, 'Permahan Anggara Jln Sultan No. 9', 'Asemrowo', 'Kota Surabaya', 60182),
(7, 12200008, 'JL. Nangka Raya No. 14 Gang Gapura No. 18 RT 02 RW 07', 'Banyumanik', 'Kota Semarang', 50261),
(8, 12200009, 'Jl. Cemara Gang Syawal RT 09 RW 10 ', 'Babakan', 'Kota Bogor', 45191),
(9, 12200010, 'Perumahan BTN Jln. Apel No. 10', 'Pinang Ranti', 'Kota Jakarta Timur', 13560),
(10, 12200011, 'Permahan Andara Jln. Mutiara No. 14', 'Jagakarsa', 'Kota Jakarta Selatan', 12530);

-- --------------------------------------------------------

--
-- Table structure for table `detail_dosen`
--

CREATE TABLE `detail_dosen` (
  `Id_Dosen` varchar(5) NOT NULL,
  `Kode_Matkul` int(3) UNSIGNED ZEROFILL NOT NULL,
  `NIM` int(11) NOT NULL,
  `Kode_Dosen` varchar(3) NOT NULL,
  `NoHp_Dosen` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `Email_Dosen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_dosen`
--

INSERT INTO `detail_dosen` (`Id_Dosen`, `Kode_Matkul`, `NIM`, `Kode_Dosen`, `NoHp_Dosen`, `Email_Dosen`) VALUES
('10SA', 020, 12200011, 'ASA', 0873958748, 'zizah03@gmail.com'),
('1DS', 011, 12200002, 'NDS', 0819345678, 'narsia.06dares@gmail.com'),
('2IM', 012, 12200003, 'CIM', 0812345678, 'chalvina.izumiamalia@gmail.com'),
('3CA', 013, 12200004, 'ACA', 0823409873, 'alamanda012@gmail.com'),
('4MI', 014, 12200005, 'SMI', 0846587653, 'srimar@gmail.com'),
('5NH', 015, 12200006, 'WNH', 0858760985, 'winanti.ing@gmail.com'),
('6TW', 016, 12200007, 'STW', 0897654896, 'srsubag09@gmail.com'),
('7WO', 017, 12200008, 'SWO', 0821345095, 'slamerwd56@gmail.com'),
('8AU', 018, 12200009, 'IAU', 0856278997, 'irmayu@gmail.com'),
('9HH', 019, 12200010, 'WHH', 0879309867, 'wandahidah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `detail_mahasiswa`
--

CREATE TABLE `detail_mahasiswa` (
  `Id_Mahasiswa` varchar(3) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Nama_Depan_Mahasiswa` varchar(10) DEFAULT NULL,
  `Nama_Belakang_Mahasiswa` varchar(10) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `NoHp_Mahasiswa` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `Email_Mahasiswa` varchar(50) DEFAULT NULL,
  `Kode_Matkul` int(3) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_mahasiswa`
--

INSERT INTO `detail_mahasiswa` (`Id_Mahasiswa`, `NIM`, `Nama_Depan_Mahasiswa`, `Nama_Belakang_Mahasiswa`, `Gender`, `NoHp_Mahasiswa`, `Email_Mahasiswa`, `Kode_Matkul`) VALUES
('01A', 12200002, 'Rika', 'Lestari', 'P', 0812345678, 'rika.lestari@gmail.com', 011),
('01B', 12200003, 'Wahyu', 'Raditya', 'L', 0876876871, 'wahyu05@gmail.com', 012),
('01E', 12200010, 'Tania', 'Berliana', 'P', 0895876457, 'Taniaditan@gmail.com', 019),
('02A', 12200004, 'Budi', 'Antisa', 'L', 0856908092, 'Antisia09@gmail.com', 013),
('02B', 12200005, 'Asih', 'Ningsih', 'P', 0846552433, 'Tistis.Ar56@gmail.com', 014),
('02D', 12200011, 'Tita', 'Bilqis', 'P', 0848756468, 'Titania.bilqis05@gmailcom', 020),
('02E', 12200008, 'Bunga', 'Rania', 'P', 0839876092, 'Liraaa00@yahoo.com', 017),
('03B', 12200007, 'Karim', 'Binara', 'L', 0809576895, 'Rania@gmail.com', 016),
('03C', 12200006, 'Tisna', 'Arepna', 'L', 0827654309, 'Binara09@gmail.com', 015),
('03E', 12200009, 'Lira', 'Rasian', 'P', 0804765890, 'Berry@gmail.com', 018);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Kode_Dosen` varchar(3) NOT NULL,
  `Status_Dosen` varchar(15) DEFAULT NULL,
  `Nama_Depan_Dosen` varchar(15) DEFAULT NULL,
  `Nama_Belakang_Dosen` varchar(15) DEFAULT NULL,
  `Gelar_S1` varchar(10) DEFAULT NULL,
  `Gelar_S2` varchar(10) DEFAULT NULL,
  `Gelar_S3` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Kode_Dosen`, `Status_Dosen`, `Nama_Depan_Dosen`, `Nama_Belakang_Dosen`, `Gelar_S1`, `Gelar_S2`, `Gelar_S3`) VALUES
('ACA', 'ggg', 'Alamanda', 'Cahya Aisyah', 'S. Kom', 'M. Kom', 'Dr. '),
('ASA', 'Honorer', 'Azizah', 'Siviana Tasya', 'S. E', 'M. Pd', 'Dr. '),
('CIM', 'Tidak Tetap', 'Chalvina ', 'Izumi Amalia', 'S. E', 'M. Pd', NULL),
('IAU', 'Tetap', 'Irma', 'Ayu Noviani', 'S. E', 'M. Pd', 'Dr. '),
('NDS', 'Tetap', 'Naresia', 'Dares', 'S. H', 'M. M', 'Dr. '),
('SMI', 'Tidak Tetap', 'Sri', 'Margiati', 'S. H', 'M. M', NULL),
('STW', 'Tetap', 'Sri', 'Subagyo', 'S. Kom', 'M. Kom', 'Dr. '),
('SWO', 'Tetap', 'Slamet', 'Widodo', 'S. H', 'M. M', 'Dr. '),
('WHH', 'Tetap', 'Wandah', 'Hamidah', 'S. Kom', 'M. Kom', NULL),
('WNH', 'Tidak Tetap', 'Winarti', 'Ningsih', 'S. E', 'M. Pd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `Id_Fakultas` int(2) UNSIGNED ZEROFILL NOT NULL,
  `Nama_Fakultas` varchar(30) DEFAULT NULL,
  `Nama_Depan_Dekan` varchar(10) DEFAULT NULL,
  `Nama_Belakang_Dekan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`Id_Fakultas`, `Nama_Fakultas`, `Nama_Depan_Dekan`, `Nama_Belakang_Dekan`) VALUES
(01, 'Fakultas Sastra', 'Haikal', 'Fais'),
(02, 'Fakultas Agama', 'Suroto', 'Siponoro'),
(03, 'Fakultas Teknik', 'Rica', 'Marito Siregar'),
(04, 'Fakultas Kedokteran', 'Susanto', 'Adi Kusumo'),
(05, 'Fakultas Ekonomi', 'Sania', 'Tresia'),
(06, 'Fakultas Hukum', 'Nadoma', 'Nasution'),
(07, 'Fakultas Sosiologi', 'Nilam', 'Antania'),
(08, 'Fakultas Psikologi', 'Dwi', 'Prasojo'),
(09, 'Fakultas Seni Rupa dan Desai', 'Larasati', 'Chintya'),
(10, 'Fakultas MIPA', 'Ghifari', 'Satrio');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `Id_Jurusan` varchar(15) NOT NULL,
  `Nama_Jurusan` varchar(50) DEFAULT NULL,
  `Id_Ruang` int(3) NOT NULL,
  `Id_Fakultas` int(2) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`Id_Jurusan`, `Nama_Jurusan`, `Id_Ruang`, `Id_Fakultas`) VALUES
('FSK003', 'Fisika Murni', 303, 03),
('HKM001', 'Hukum', 307, 02),
('MTK002', 'Matematika Murnni', 308, 01),
('PEND.EK006', 'Pendidikan Eknomi', 311, 09),
('PEND.MTK001', 'Pendidikan Matematika', 304, 07),
('PEND.OR003', 'Pendidikan Olahraga', 312, 10),
('SIF004', 'Sistem Informasi', 302, 05),
('SIF005', 'Bahasa Inggris', 305, 06),
('STI001', 'Sistem dan Teknologi Informasi', 306, 08),
('TBD001', 'Teknologi Bisis Digital', 301, 04);

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `Id_KHS` int(2) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Matkul_Kode` int(3) UNSIGNED NOT NULL,
  `Huruf_Mutu` varchar(3) DEFAULT NULL,
  `Angka_Mutu` float(3,2) DEFAULT NULL,
  `IPK` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`Id_KHS`, `NIM`, `Matkul_Kode`, `Huruf_Mutu`, `Angka_Mutu`, `IPK`) VALUES
(1, 12200002, 11, 'B', 4.00, 4.00),
(2, 12200003, 12, 'A', 3.50, 4.00),
(3, 12200004, 13, 'A-', 3.75, 3.97),
(4, 12200005, 14, 'A', 4.00, 4.00),
(5, 12200006, 15, 'A', 4.00, 4.00),
(6, 12200007, 16, 'A', 4.00, 4.00),
(7, 12200008, 17, 'A', 4.00, 4.00),
(8, 12200009, 18, 'A-', 3.75, 3.50),
(9, 12200010, 19, 'A', 4.00, 3.50),
(10, 12200011, 20, 'A', 4.00, 3.50);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `Id_KRS` varchar(5) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Kode_Matkul` int(3) UNSIGNED ZEROFILL NOT NULL,
  `Matkul_Kelas` varchar(50) NOT NULL,
  `Semester` int(1) NOT NULL,
  `Tahun_Ajaran` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`Id_KRS`, `NIM`, `Kode_Matkul`, `Matkul_Kelas`, `Semester`, `Tahun_Ajaran`) VALUES
('1A', 12200002, 011, 'Sistem dan Teknologi Informasi', 2, 2021),
('1B', 12200010, 019, 'Hukum', 5, 2021),
('2A', 12200003, 012, 'Sistem dan Teknologi Informasi', 2, 2021),
('2C', 12200007, 016, 'Pendidikan Fisika', 3, 2021),
('3A', 12200004, 013, 'Sistem dan Teknologi Informasi', 2, 2021),
('3B', 12200008, 017, 'Hukum', 5, 2021),
('3C', 12200011, 020, 'Hukum', 5, 2021),
('4A', 12200009, 018, 'Hukum', 5, 2021),
('4B', 12200005, 014, 'Pendidikan Fisika', 3, 2021),
('5C', 12200006, 015, 'Pendidikan Fisika', 3, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(10) NOT NULL,
  `TTL` varchar(30) DEFAULT NULL,
  `Id_Jurusan` varchar(15) NOT NULL,
  `Id_Fakultas` int(2) UNSIGNED ZEROFILL NOT NULL,
  `Angkatan` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `TTL`, `Id_Jurusan`, `Id_Fakultas`, `Angkatan`) VALUES
(12200002, 'Boyolali, 06 November 2001', 'STI001', 08, 2020),
(12200003, 'Tangerang, 09 Desember 2000', 'MTK002', 01, 2020),
(12200004, 'Kendal , 10 Juni 2002', 'HKM001', 02, 2020),
(12200005, 'Mojokerto, 28 November 2001', 'FSK003', 03, 2020),
(12200006, 'Medan, 10 April 2002', 'TBD001', 04, 2020),
(12200007, 'Jombang, 02 Juli 2002', 'SIF004', 05, 2020),
(12200008, 'Solo, 03 Juli 2000', 'SIF005', 06, 2020),
(12200009, 'Jakarta, 21 Oktober 2000', 'PEND.MTK001', 07, 2020),
(12200010, 'Tangerang, 19 Juni 2001', 'PEND.EK006', 09, 2020),
(12200011, 'Semarang, 05 Mei 2001', 'PEND.OR003', 10, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `Kode_Matkul` int(3) UNSIGNED ZEROFILL NOT NULL,
  `Id_Ruang` int(3) NOT NULL,
  `Nama_Matkul` varchar(50) NOT NULL,
  `SKS` int(1) DEFAULT NULL,
  `Hari` varchar(10) DEFAULT NULL,
  `Tanggal` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `Bulan` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `Tahun` year(4) DEFAULT NULL,
  `Jam_Mulai` varchar(7) DEFAULT NULL,
  `Jam_Selesai` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`Kode_Matkul`, `Id_Ruang`, `Nama_Matkul`, `SKS`, `Hari`, `Tanggal`, `Bulan`, `Tahun`, `Jam_Mulai`, `Jam_Selesai`) VALUES
(011, 306, 'Pengantar Ekonomi Makro', 2, 'Senin', 06, 11, 2022, '10:15', '12:45'),
(012, 308, 'Pengantar Bisnis', 3, 'Selasa', 05, 12, 2022, '07:30', '10:00'),
(013, 307, 'Matematika Bisnis', 3, 'Kamis', 03, 11, 2022, '10:15', '12:45'),
(014, 303, 'Statiska Bisnis', 3, 'Senin', 02, 06, 2022, '07:30', '10:00'),
(015, 301, 'Akutansi Keuangan Dasar', 2, 'Jumat', 07, 05, 2022, '10:15', '12:45'),
(016, 302, 'Manajemen Keuangan', 3, 'Rabu', 04, 11, 2022, '10:15', '12:45'),
(017, 305, 'Manajemen Pemasaran', 2, 'Rabu', 04, 12, 2022, '07:30', '10:00'),
(018, 304, 'Matematika Diskrit', 2, 'Selasa', 06, 10, 2022, '10:15', '12:45'),
(019, 311, 'Bisnis Global', 2, 'Kamis', 03, 10, 2022, '07:30', '10:00'),
(020, 312, 'Metodologi Peneliatian', 3, 'Senin', 06, 11, 2022, '07:30', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `Id_Staff` varchar(5) NOT NULL,
  `Nama_Depan_Staff` varchar(10) DEFAULT NULL,
  `Nama_Belakang_Staff` varchar(30) DEFAULT NULL,
  `Staff_Status` varchar(10) DEFAULT NULL,
  `Gelar_S1` varchar(10) DEFAULT NULL,
  `Gelar_S2` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`Id_Staff`, `Nama_Depan_Staff`, `Nama_Belakang_Staff`, `Staff_Status`, `Gelar_S1`, `Gelar_S2`) VALUES
('001A', 'Randa', 'Anasi Latasya', 'Tetap', 'S.H', 'M. Sos'),
('001B', 'Fiersa', 'Bestari', 'Tetap', 'S. E', 'M.Pd'),
('001C', 'Febby', 'Ratanti', 'Tetap', 'S. Kom', NULL),
('001E', 'Angga', 'Yunanda', 'Honorer', 'S. H', 'M. M'),
('002A', 'Ridho', 'Illahi', 'Tetap', 'S. Kom', 'M. Kom'),
('002B', 'Rista', 'Ania', 'Honorer', 'S.H', NULL),
('002C', 'Gladis', 'Cahya Berliana', 'Tetap', 'S. Kom', 'M. Kom'),
('002D', 'Maria', 'Juliana', 'Honorer', 'S.Kom', NULL),
('003A', 'Rinjani', 'Klarisa', 'Tetap', 'S. E', 'M.Pd'),
('003B', 'Aura', 'Risda Valenvcia', 'Honorer', 'S. E', 'M.Pd');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `Id_Ruang` int(3) NOT NULL,
  `Id_Staff` varchar(5) NOT NULL,
  `Kapasitas` varchar(10) DEFAULT NULL,
  `Lantai` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`Id_Ruang`, `Id_Staff`, `Kapasitas`, `Lantai`) VALUES
(301, '001B', '45 Orang', 3),
(302, '001C', '46 Orang', 3),
(303, '002A', '51 Orang', 2),
(304, '001E', '41 Orang', 1),
(305, '002D', '40 Orang', 1),
(306, '003A', '40 Orang', 1),
(307, '001A', '50 Orang', 2),
(308, '002B', '41 Orang', 1),
(311, '002C', '40 Orang', 5),
(312, '003B', '40 Orang', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`Id_Alamat`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD PRIMARY KEY (`Id_Dosen`),
  ADD KEY `Matkul_Kode` (`Kode_Matkul`,`NIM`,`Kode_Dosen`),
  ADD KEY `Kode_Dosen` (`Kode_Dosen`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD PRIMARY KEY (`Id_Mahasiswa`),
  ADD KEY `NIM` (`NIM`),
  ADD KEY `Kode_Matkul` (`Kode_Matkul`),
  ADD KEY `Kode_Matkul_2` (`Kode_Matkul`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`Kode_Dosen`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`Id_Fakultas`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Id_Jurusan`),
  ADD KEY `Id_Ruang` (`Id_Ruang`),
  ADD KEY `Id_Fakultas` (`Id_Fakultas`);

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`Id_KHS`),
  ADD UNIQUE KEY `NIM` (`NIM`,`Matkul_Kode`),
  ADD KEY `Matkul_Kode` (`Matkul_Kode`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`Id_KRS`),
  ADD KEY `Kode_Matkulkrs` (`Kode_Matkul`),
  ADD KEY `NIMkrs` (`NIM`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `Id_Fakultas` (`Id_Fakultas`),
  ADD KEY `Id_Jurusan` (`Id_Jurusan`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`Kode_Matkul`),
  ADD KEY `Id_Ruang` (`Id_Ruang`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Id_Staff`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`Id_Ruang`),
  ADD KEY `Id_Staff` (`Id_Staff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD CONSTRAINT `detail_dosen_ibfk_1` FOREIGN KEY (`Kode_Matkul`) REFERENCES `mata_kuliah` (`Kode_Matkul`),
  ADD CONSTRAINT `detail_dosen_ibfk_2` FOREIGN KEY (`Kode_Dosen`) REFERENCES `dosen` (`Kode_Dosen`),
  ADD CONSTRAINT `detail_dosen_ibfk_3` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD CONSTRAINT `detail_mahasiswa_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `detail_mahasiswa_ibfk_2` FOREIGN KEY (`Kode_Matkul`) REFERENCES `mata_kuliah` (`Kode_Matkul`);

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`Id_Ruang`) REFERENCES `ruang` (`Id_Ruang`),
  ADD CONSTRAINT `jurusan_ibfk_2` FOREIGN KEY (`Id_Fakultas`) REFERENCES `fakultas` (`Id_Fakultas`);

--
-- Constraints for table `khs`
--
ALTER TABLE `khs`
  ADD CONSTRAINT `khs_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `khs_ibfk_2` FOREIGN KEY (`Matkul_Kode`) REFERENCES `mata_kuliah` (`Kode_Matkul`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `Kode_Matkulkrs` FOREIGN KEY (`Kode_Matkul`) REFERENCES `mata_kuliah` (`Kode_Matkul`),
  ADD CONSTRAINT `NIMkrs` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`Id_Fakultas`) REFERENCES `fakultas` (`Id_Fakultas`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`Id_Jurusan`) REFERENCES `jurusan` (`Id_Jurusan`);

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`Id_Ruang`) REFERENCES `ruang` (`Id_Ruang`);

--
-- Constraints for table `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`Id_Staff`) REFERENCES `pegawai` (`Id_Staff`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
