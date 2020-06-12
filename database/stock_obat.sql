-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2020 pada 09.53
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_obat`
--

CREATE TABLE `stock_obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `kode_obat` varchar(30) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_kadaluarsa` date NOT NULL,
  `jumlah_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_obat`
--

INSERT INTO `stock_obat` (`id`, `nama_obat`, `kode_obat`, `tanggal_masuk`, `tanggal_kadaluarsa`, `jumlah_stock`) VALUES
(1, 'Paramex', 'par01', '0000-00-00', '2022-08-01', 10),
(4, 'Panadol', 'PDL01', '2020-06-12', '0000-00-00', 15),
(6, 'Paracetamol', 'Pa09', '2020-06-13', '2020-06-30', 10),
(7, 'Mantap-mantap', 'Kolis', '2000-12-12', '2020-12-12', 69);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `stock_obat`
--
ALTER TABLE `stock_obat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `stock_obat`
--
ALTER TABLE `stock_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
