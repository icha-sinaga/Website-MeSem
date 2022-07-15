-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2022 pada 18.51
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mesem`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idsembako` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `totalhargakeluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idsembako`, `tanggal`, `penerima`, `qty`, `harga`, `totalhargakeluar`) VALUES
(1, 5, '2022-06-20 04:27:30', 'ditha', 10, 20000, 0),
(2, 3, '2022-06-20 04:29:41', 'icha', 5, 10000, 0),
(3, 1, '2022-06-20 04:32:40', 'renjun', 10, 20000, 0),
(4, 1, '2022-06-20 04:35:29', 'renjun', 10, 20000, 0),
(5, 1, '2022-06-20 04:41:37', 'icha', 10, 20000, 0),
(6, 1, '2022-06-20 04:43:16', 'haechan', 10, 10000, 0),
(7, 6, '2022-06-20 05:05:49', 'renjun', 10, 200000, 0),
(11, 7, '2022-06-25 15:07:05', 'haechan', 10, 150000, 0),
(12, 10, '2022-06-25 16:22:12', 'Mark', 20, 40000, 0),
(17, 16, '2022-06-29 18:28:02', 'icha', 40, 15000, 600000),
(28, 22, '2022-06-29 20:09:25', 'j', 20, 10000, 200000),
(29, 22, '2022-06-29 23:12:04', 'hj', 30, 10000, 300000),
(30, 22, '2022-06-29 23:13:20', 'renjun', 30, 10000, 300000),
(31, 22, '2022-06-29 23:19:18', 'kj', 50, 10000, 500000),
(32, 22, '2022-06-29 23:21:24', 'kj', 30, 10000, 300000),
(33, 24, '2022-06-30 01:03:49', 'Ditha', 5, 50000, 250000),
(37, 27, '2022-06-30 01:32:18', 'ditha', 20, 50000, 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'icha@gmail.com', 'akucantik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idsembako` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `totalhargamasuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idsembako`, `tanggal`, `keterangan`, `qty`, `harga`, `totalhargamasuk`) VALUES
(47, 18, '2022-06-29 18:19:30', 'Mark', 30, 2000, 100000),
(48, 19, '2022-06-29 18:20:52', 'budi', 20, 5000, 150000),
(49, 20, '2022-06-29 18:23:12', 'renjun', 100, 10000, 1000000),
(50, 16, '2022-06-29 18:30:29', 'Mark', 50, 15000, 750000),
(51, 20, '2022-06-29 18:58:27', 'baekhyun', 50, 10000, 500000),
(52, 21, '2022-06-29 19:00:18', 'ditha', 50, 5000, 250000),
(53, 21, '2022-06-29 19:02:45', 'jeno', 20, 1000, 20000),
(54, 21, '2022-06-29 19:06:23', 'haechan', 40, 1000, 40000),
(55, 21, '2022-06-29 19:09:00', 'jeno', 50, 1000, 50000),
(62, 23, '2022-06-30 00:42:35', 'icha', 25, 10000, 250000),
(63, 24, '2022-06-30 01:03:25', 'Icha ', 10, 50000, 500000),
(64, 25, '2022-06-30 16:42:57', 'Icha ', 30, 10000, 300000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `idsembako` int(11) NOT NULL,
  `namasembako` varchar(25) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `totalharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`idsembako`, `namasembako`, `kategori`, `stok`, `harga`, `totalharga`) VALUES
(23, 'Sunco', 'Minyak Goreng', 125, 10000, 1250000),
(25, 'Tepung Tapioka', 'Tepung', 50, 10000, 500000),
(29, 'Sugar', 'Gula Pasir', 30, 15000, 450000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`idsembako`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `idsembako` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
