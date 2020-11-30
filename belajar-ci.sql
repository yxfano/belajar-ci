-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk belajar-ci
CREATE DATABASE IF NOT EXISTS `belajar-ci` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `belajar-ci`;

-- membuang struktur untuk table belajar-ci.halaman
CREATE TABLE IF NOT EXISTS `halaman` (
  `idhalaman` int(50) NOT NULL AUTO_INCREMENT,
  `judulhalaman` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `isihalaman` varchar(50) DEFAULT NULL,
  `tglposting` int(50) DEFAULT NULL,
  PRIMARY KEY (`idhalaman`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel belajar-ci.halaman: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `halaman` DISABLE KEYS */;
REPLACE INTO `halaman` (`idhalaman`, `judulhalaman`, `author`, `isihalaman`, `tglposting`) VALUES
	(3, 'Aku Mau Membuat Sebuah Halaman', 'Fano', 'Ini merupakan sebuah halamannnnnnnnnnnnnnnnnnnnnnn', NULL);
/*!40000 ALTER TABLE `halaman` ENABLE KEYS */;

-- membuang struktur untuk table belajar-ci.master_berita
CREATE TABLE IF NOT EXISTS `master_berita` (
  `idberita` int(11) NOT NULL AUTO_INCREMENT,
  `judulberita` varchar(100) DEFAULT NULL,
  `author` varchar(70) DEFAULT NULL,
  `tglposting` int(11) DEFAULT NULL,
  `foto` varchar(70) DEFAULT NULL,
  `isiberita` text,
  PRIMARY KEY (`idberita`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel belajar-ci.master_berita: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `master_berita` DISABLE KEYS */;
REPLACE INTO `master_berita` (`idberita`, `judulberita`, `author`, `tglposting`, `foto`, `isiberita`) VALUES
	(3, 'Aku Membuat Berita', 'Fano', NULL, 'sitemap_admin.png', 'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggghgggggggggggggggggggggggggggggggggg');
/*!40000 ALTER TABLE `master_berita` ENABLE KEYS */;

-- membuang struktur untuk table belajar-ci.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(100) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email Address',
  `contact_no` varchar(50) NOT NULL COMMENT 'Contact No',
  `password` varchar(100) NOT NULL,
  `created_at` varchar(20) NOT NULL COMMENT 'Created date',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

-- Membuang data untuk tabel belajar-ci.users: ~13 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `contact_no`, `password`, `created_at`) VALUES
	(1, 'Team', 'info@test.com', '9000000001', '', '2019-01-01'),
	(2, 'Admin', 'admin@test.com', '9000000002', '', '2019-01-02'),
	(3, 'User', 'user@test.com', '9000000003', '', '2019-01-03'),
	(4, 'Editor', 'editor@test.com', '9000000004', '', '2019-01-04'),
	(5, 'Writer', 'writer@test.com', '9000000005', '', '2019-01-05'),
	(6, 'Contact', 'contact@test.com', '9000000006', '', '2019-01-06'),
	(7, 'Manager', 'manager@test.com', '9000000007', '', '2019-01-07'),
	(8, 'John', 'john@test.com', '9000000055', '', '2019-01-08'),
	(9, 'Merry', 'merry@test.com', '9000000088', '', '2019-01-09'),
	(10, 'Keliv', 'kelvin@test.com', '9000550088', '', '2019-01-10'),
	(11, 'Herry', 'herry@test.com', '9050550088', '', '2019-01-11'),
	(12, 'Mark', 'mark@test.com', '9050550998', '', '2019-01-12'),
	(17, 'Fano', 'fano@fano.com', '082317877879', '$2y$10$RkqbyroNSkJQSsvp.2aiyOQaqFduJl5p0WBmvvhj6JViIH15.xyRK', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
