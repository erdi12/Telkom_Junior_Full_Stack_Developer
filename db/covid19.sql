-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2020 pada 03.53
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid`
--

CREATE TABLE `covid` (
  `id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `positif` int(100) NOT NULL,
  `meninggal` int(100) NOT NULL,
  `sembuh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `covid`
--

INSERT INTO `covid` (`id`, `nama_kota`, `provinsi`, `positif`, `meninggal`, `sembuh`) VALUES
(1, 'Balikpapan', 'Kalimantan Timur', 208, 4, 137),
(2, 'Samarinda', 'Kalimantan Timur', 69, 1, 58),
(3, 'Berau', 'Kalimantan Timur', 44, 0, 40),
(4, 'Kutai Barat', 'Kalimantan Timur', 32, 0, 24),
(5, 'Tarakan', 'Kalimantan Utara', 78, 0, 50),
(6, 'Bulungan', 'Kalimantan Utara', 43, 2, 39),
(7, 'Malinau', 'Kalimantan Utara', 34, 0, 2),
(8, 'Nunukan', 'Kalimantan Utara', 44, 0, 2),
(9, 'Banjar', 'Kalimantan Selatan', 367, 20, 79),
(10, 'Tabalong', 'Kalimantan Selatan', 109, 4, 31),
(11, 'Balangan', 'Kalimantan Selatan', 147, 2, 13),
(12, 'Kota Baru', 'Kalimantan Selatan', 66, 2, 37);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `covid`
--
ALTER TABLE `covid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `covid`
--
ALTER TABLE `covid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
