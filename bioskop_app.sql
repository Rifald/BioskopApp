-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 09:02 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `alamat`, `no_hp`, `username`, `password`) VALUES
(1, 'Admin', 'Jl. Colombo No.123', '099999', 'admin1', 'admin1'),
(3, 'Admin2', 'Jl. Cendekiawan', '087878787', 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `admin_akses`
--

CREATE TABLE `admin_akses` (
  `id_admin` int(11) NOT NULL,
  `id_bioskop` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `id_bangku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bangku`
--

CREATE TABLE `bangku` (
  `id_bangku` int(11) NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bangku`
--

INSERT INTO `bangku` (`id_bangku`, `a1`, `a2`, `a3`, `a4`, `b1`, `b2`, `b3`, `b4`, `c1`, `c2`, `c3`, `c4`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `id_bioskop` int(11) NOT NULL,
  `nama_bioskop` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`id_bioskop`, `nama_bioskop`, `alamat`) VALUES
(1, 'AMBARRUKMO XXI', 'Jl. Laksda Adisucipto KM 6 Yogyakarta'),
(2, 'EMPIRE XXI', 'Jl. Urip Sumoharjo Yogyakarta'),
(3, 'JOGJA CITY XXI', 'Jl. Magelang KM. 6 No.18');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `nama_film`, `genre`, `durasi`) VALUES
(1, 'A Quite Place ', 'Thriller', 120),
(2, 'KKN di Desa Penari', 'Horor, Misteri', 60),
(3, 'No Time to Die', 'Action', 160),
(4, 'The New Mutants', 'Horor', 99),
(5, 'Mulan', 'Laga', 120),
(6, 'The Grudge', 'Horor', 104),
(7, 'Sonic the Hedgehog', 'Laga', 100),
(8, 'Underwater', 'Horor', 90),
(9, 'Dolittle', 'Laga', 101);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `nama_admin` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `bioskop` varchar(45) NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `no_studio` varchar(45) NOT NULL,
  `kursi` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `nama_admin`, `username`, `nama_pemesan`, `bioskop`, `nama_film`, `no_studio`, `kursi`, `timestamp`) VALUES
(1, 'Admin', 'Ribal', 'Ribal', 'AMBARRUKMO XXI', 'No Time to Die', '3', 'a3', '2020-05-29 04:31:39'),
(4, 'Admin', 'Aldi123', 'Aldi', 'AMBARRUKMO XXI', 'No Time to Die', '3', 'c2', '2020-05-29 07:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `username`, `pass`, `no_hp`) VALUES
(1, 'Ribal', 'Ribal', 'ribal', '081250319163'),
(2, 'Aldi', 'Aldi123', 'aldi123', '08888888'),
(9, 'Rifaldi', 'Rifaldi', 'rifaldi', '089898898'),
(10, 'Iqbal', 'bachtiar', 'bachtiar', '0888888'),
(11, 'BACHTI', 'Ribal1', 'ribal1', '12334567'),
(12, 'IqbalBachtiar', 'Iqballl', 'iqball', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `nama_bioskop` varchar(50) NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `no_studio` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(50) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `baris` varchar(11) NOT NULL,
  `nomor` varchar(11) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `username`, `nama_bioskop`, `nama_film`, `no_studio`, `tanggal`, `jam`, `nama_pemesan`, `baris`, `nomor`, `harga`, `status`) VALUES
(1, 'Ribal', 'AMBARRUKMO XXI', 'No Time to Die', '3', '2020-06-01', '21:00', 'Ribal', 'a', '3', '45000', 'CONFIRMED'),
(4, 'Aldi123', 'AMBARRUKMO XXI', 'No Time to Die', '3', '2020-06-01', '21:00', 'Aldi', 'c', '2', '45000', 'CONFIRMED'),
(5, 'Aldi123', 'AMBARRUKMO XXI', 'No Time to Die', '3', '2020-06-01', '21:00', 'Iqbal', 'b', '4', '45000', 'NOT CONFIRM'),
(8, 'Ribal', 'JOGJA CITY XXI', 'Sonic the Hedgehog', '1', '2020-06-04', '18:00', 'Ribal', 'c', '3', '60000', 'NOT CONFIRM'),
(9, 'Ribal', 'EMPIRE XXI', 'Mulan', '2', '2020-06-02', '18:00', 'Ribal', 'a', '2', '50000', 'NOT CONFIRM');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `id_bioskop` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `no_studio` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` varchar(50) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `id_bangku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id_bioskop`, `id_film`, `no_studio`, `tanggal`, `jam_mulai`, `harga`, `id_bangku`) VALUES
(1, 1, 1, '2020-06-03', '14:00', '45000', 1),
(1, 2, 2, '2020-06-01', '18:00', '45000', 2),
(1, 3, 3, '2020-06-01', '21:00', '45000', 3),
(2, 4, 1, '2020-06-01', '14:00', '50000', 4),
(2, 5, 2, '2020-06-02', '18:00', '50000', 5),
(2, 6, 3, '2020-06-01', '21:00', '50000', 6),
(3, 7, 1, '2020-06-04', '18:00', '60000', 7),
(3, 8, 2, '2020-06-01', '18:00', '60000', 8),
(3, 9, 3, '2020-06-01', '21:00', '60000', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `admin_akses`
--
ALTER TABLE `admin_akses`
  ADD KEY `fk_admin` (`id_admin`),
  ADD KEY `fk_admin_bangku` (`id_bangku`),
  ADD KEY `fk_admin_bioskop` (`id_bioskop`),
  ADD KEY `fk_admin_pesan` (`id_pemesanan`);

--
-- Indexes for table `bangku`
--
ALTER TABLE `bangku`
  ADD PRIMARY KEY (`id_bangku`);

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`id_bioskop`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD KEY `fk_bioskop_studio` (`id_bioskop`),
  ADD KEY `fk_bangku_studio` (`id_bangku`),
  ADD KEY `fk_film_studio` (`id_film`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bangku`
--
ALTER TABLE `bangku`
  MODIFY `id_bangku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bioskop`
--
ALTER TABLE `bioskop`
  MODIFY `id_bioskop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_akses`
--
ALTER TABLE `admin_akses`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_admin_bangku` FOREIGN KEY (`id_bangku`) REFERENCES `bangku` (`id_bangku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_admin_bioskop` FOREIGN KEY (`id_bioskop`) REFERENCES `bioskop` (`id_bioskop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_admin_pesan` FOREIGN KEY (`id_pemesanan`) REFERENCES `pesan` (`id_pesan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `fk_bangku_studio` FOREIGN KEY (`id_bangku`) REFERENCES `bangku` (`id_bangku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bioskop_studio` FOREIGN KEY (`id_bioskop`) REFERENCES `bioskop` (`id_bioskop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_film_studio` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
