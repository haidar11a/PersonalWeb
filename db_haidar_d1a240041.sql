-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 06:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_haidar_d1a240041`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id_about` int(2) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(2, 'hallo saya dede haidar,saya ingin bercita-cita ingin menjadi TENTARA\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama_artikel` text NOT NULL,
  `isi_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `isi_artikel`) VALUES
(3, 'PENTINGNYA INTERNET DALAM KEHIDUPAN SEHARI-HARI', 'Internet adalah salah satu teknologi terpenting di zaman sekarang. Dengan internet, kita bisa mengakses informasi, belajar, bekerja, dan berkomunikasi dengan orang lain di seluruh dunia.\r\n\r\nDi bidang pendidikan, internet membantu siswa dan guru mendapatkan materi pelajaran dengan mudah. Dalam pekerjaan, internet memudahkan orang untuk bekerja dari rumah atau berkomunikasi dengan rekan kerja di tempat yang jauh. Selain itu, kita juga bisa berbelanja, membayar tagihan, bahkan memesan makanan hanya melalui ponsel.\r\n\r\nNamun, kita juga harus bijak dalam menggunakan internet. Jangan mudah percaya pada informasi yang belum pasti, dan hindari mengakses situs yang tidak aman.\r\n\r\nKesimpulannya, internet sangat membantu kehidupan sehari-hari, tapi harus digunakan dengan bijak dan bertanggung jawab.\r\n\r\n'),
(4, 'Pentingnya Menjaga Kesehatan Mental di Era Digital', 'Di era digital seperti sekarang, perhatian terhadap kesehatan mental menjadi hal yang sangat penting. Kemajuan teknologi memang memberikan kemudahan dalam berbagai aspek kehidupan, namun juga membawa tantangan baru, terutama dalam hal tekanan sosial dan informasi yang berlebihan.\r\n\r\nMedia sosial, misalnya, sering menjadi sumber perbandingan yang tidak sehat antar individu. Banyak orang merasa harus selalu tampil sempurna karena melihat kehidupan orang lain yang terlihat bahagia dan sukses. Hal ini bisa memicu stres, cemas, bahkan depresi jika tidak disikapi dengan bijak.\r\n\r\nSelain itu, gaya hidup yang semakin sibuk dan tuntutan produktivitas yang tinggi juga sering membuat seseorang mengabaikan kebutuhan istirahat dan relaksasi. Padahal, mental yang sehat adalah kunci dari produktivitas yang berkelanjutan.\r\n\r\nMenjaga kesehatan mental bisa dimulai dari hal-hal sederhana, seperti membatasi waktu penggunaan gadget, rutin berolahraga, cukup tidur, hingga berbagi cerita dengan orang yang dipercaya. Jika merasa terlalu terbebani, tidak ada salahnya untuk berkonsultasi dengan psikolog.\r\n\r\nDengan kesadaran dan kepedulian terhadap kesehatan mental, kita bisa menjalani hidup yang lebih seimbang dan bahagia meskipun berada di tengah gempuran dunia digital.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(5) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(2, 'gambar1', 'poto 3.jpg'),
(3, 'gambar2', 'poto 2.jpg'),
(4, 'gambar3', 'poto1.jpg'),
(5, 'gambar 4', 'poto 4.jpg'),
(6, 'gambar 5', 'poto 5.jpg'),
(7, 'gambar 6', 'poto 6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id_about` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
