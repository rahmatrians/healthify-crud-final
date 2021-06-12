-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 07:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthify`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_makanan`
--

CREATE TABLE `tb_makanan` (
  `id` int(11) NOT NULL,
  `nama_makanan` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_makanan`
--

INSERT INTO `tb_makanan` (`id`, `nama_makanan`, `keterangan`) VALUES
(1, 'kacang-kacangan', 'kacang-kacangan sangat baik untuk kesehatan jantung dan jadi salah satu pencegah diabetes'),
(6, 'Yogurt', 'Yogurt mengandung probiotik yang sehat untuk kesehatan usus dan sistem pencernaan. Selain itu, terdapat juga kandungan lain yang sangat baik untuk tubuh, yaitu kalsium, vitamin B12, kalium, fosfor, dan zinc'),
(7, 'Buah Jeruk', 'Buah yang satu ini merupakan sumber vitamin C, serat dan folat yang sangat dibutuhkan oleh tubuh. Vitamin C dalam jeruk sangat diperlukan tubuh untuk memproduksi sel darah putih dan antibody yang dapat melawan infeksi dalam tubuh'),
(8, 'Pepaya', 'Satu pepaya kecil mengandung berbagai nutrisi yang penting seperti serat, vitamin C, vitamin A, folat (vitamin B9), kalium, kalsium, magnesium, serta vitamin B1, B3, B5, E serta K');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tips`
--

CREATE TABLE `tb_tips` (
  `id` int(11) NOT NULL,
  `nama_tips` varchar(30) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tips`
--

INSERT INTO `tb_tips` (`id`, `nama_tips`, `keterangan`) VALUES
(1, 'Frekuensi latihan', 'latihan lebih baik Seminggu 2 – 3 Kali dengan Latihan otot dan kardio adalah kombinasi olahraga yang baik untuk mulai berolahraga kembali.'),
(4, 'Pastikan kondisi tubuh sedang ', 'Ada baiknya berkonsultasi dulu dengan dokter untuk memastikan kondisi fisik Anda cukup fit sebelum langsung berolahraga.'),
(5, 'Pemilihan Waktu', 'Pilihlah pemilihan waktu yang tetap untuk ada berolahraga contohnya pagi hari'),
(6, 'Jenis Olahraga', 'Pilihlah jenis olahraga yang sesuai dengan kondisi tubuh anda, disarankan untuk aerobic dan jogging ringan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_makanan`
--
ALTER TABLE `tb_makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tips`
--
ALTER TABLE `tb_tips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_makanan`
--
ALTER TABLE `tb_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_tips`
--
ALTER TABLE `tb_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
