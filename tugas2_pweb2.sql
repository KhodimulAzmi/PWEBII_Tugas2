-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 03:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas2_pweb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_izin`
--

CREATE TABLE `permohonan_izin` (
  `izin_id` int(11) NOT NULL,
  `nama_dsn` varchar(255) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `pangkat_jabatan` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permohonan_izin`
--

INSERT INTO `permohonan_izin` (`izin_id`, `nama_dsn`, `nip`, `pangkat_jabatan`, `jabatan`, `unit_kerja`, `dosen_id`) VALUES
(1, 'Sayaka', '2110234', '3-A', 'Kepala Jurusan', 'Komputer dan Bisnis', 1),
(2, 'Ayato', '2110244', '1-B', 'Dosen', 'Mesin', 2),
(3, 'Budi Santoso', '123456789', '1-A', 'Dosen', 'Teknik Informatika', 101),
(4, 'Siti Aminah', '987654321', '1-B', 'Dosen', 'Sistem Informasi', 102),
(5, 'Andi Setiawan', '111223344', '1-C', 'Dosen', 'Matematika', 103),
(6, 'Rina Wijaya', '222334455', '2-A', 'Dosen', 'Fisika', 104),
(7, 'Dewi Lestari', '333445566', '2-B', 'Dosen', 'Biologi', 105),
(8, 'Joko Prasetyo', '444556677', '2-C', 'Dosen', 'Kimia', 106),
(9, 'Eko Kurniawan', '555667788', '3-A', 'Dosen', 'Ekonomi', 107),
(10, 'Rina Purnama', '666778899', '3-B', 'Dosen', 'Seni', 108),
(11, 'Benny Setiawan', '777889900', '3-C', 'Dosen', 'Hukum', 109),
(12, 'Nina Amelia', '888990011', '1-A', 'Dosen', 'Kedokteran', 110),
(13, 'Soni Rahardjo', '999100122', '1-B', 'Dosen', 'Agronomi', 111),
(14, 'Dini Maulani', '000211233', '1-C', 'Dosen', 'Pendidikan', 112),
(15, 'Rudi Hartono', '111322344', '2-A', 'Dosen', 'Psikologi', 113),
(16, 'Wanda Agustin', '222433455', '2-B', 'Dosen', 'Sosial', 114),
(17, 'Alfian Prabowo', '333544566', '2-C', 'Dosen', 'Sejarah', 115);

-- --------------------------------------------------------

--
-- Table structure for table `surat_tugas`
--

CREATE TABLE `surat_tugas` (
  `surat_tugas_id` int(11) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `nama_dsn` varchar(255) NOT NULL,
  `tgl_surat_tugas` date NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `transportasi` varchar(50) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_tugas`
--

INSERT INTO `surat_tugas` (`surat_tugas_id`, `nomor`, `nama_dsn`, `tgl_surat_tugas`, `tujuan`, `transportasi`, `keperluan`, `dosen_id`) VALUES
(1, 'ST-001', 'Budi Santoso', '2023-09-01', 'Semarang', 'Mobil', 'Rapat', 101),
(2, 'ST-002', 'Siti Aminah', '2023-09-02', 'Salatiga', 'Motor', 'Seminar', 102),
(3, 'ST-003', 'Andi Setiawan', '2023-09-03', 'Purwokerto', 'Mobil', 'Pelatihan', 103),
(4, 'ST-004', 'Rina Wijaya', '2023-09-04', 'Banyumas', 'Bus', 'Workshop', 104),
(5, 'ST-005', 'Dewi Lestari', '2023-09-05', 'Semarang', 'Mobil', 'Presentasi', 105),
(6, 'ST-006', 'Joko Prasetyo', '2023-09-06', 'Salatiga', 'Motor', 'Studi Banding', 106),
(7, 'ST-007', 'Eko Kurniawan', '2023-09-07', 'Purwokerto', 'Mobil', 'Koordinasi', 107),
(8, 'ST-008', 'Rina Purnama', '2023-09-08', 'Banyumas', 'Bus', 'Diskusi', 108),
(9, 'ST-009', 'Benny Setiawan', '2023-09-09', 'Semarang', 'Mobil', 'Evaluasi', 109),
(10, 'ST-010', 'Nina Amelia', '2023-09-10', 'Salatiga', 'Motor', 'Pertemuan', 110),
(11, 'ST-011', 'Soni Rahardjo', '2023-09-11', 'Purwokerto', 'Mobil', 'Pelaporan', 111),
(12, 'ST-012', 'Dini Maulani', '2023-09-12', 'Banyumas', 'Bus', 'Kunjungan', 112),
(13, 'ST-013', 'Rudi Hartono', '2023-09-13', 'Semarang', 'Mobil', 'Audit', 113),
(14, 'ST-014', 'Wanda Agustin', '2023-09-14', 'Salatiga', 'Motor', 'Monitoring', 114),
(15, 'ST-015', 'Alfian Prabowo', '2023-09-15', 'Purwokerto', 'Mobil', 'Penerimaan', 115);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permohonan_izin`
--
ALTER TABLE `permohonan_izin`
  ADD PRIMARY KEY (`izin_id`);

--
-- Indexes for table `surat_tugas`
--
ALTER TABLE `surat_tugas`
  ADD PRIMARY KEY (`surat_tugas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
