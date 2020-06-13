-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2020 pada 09.22
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
  `jenis_obat` varchar(225) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_kadaluwarsa` date NOT NULL,
  `jumlah_stock` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_obat`
--

INSERT INTO `stock_obat` (`id`, `nama_obat`, `kode_obat`, `jenis_obat`, `tanggal_masuk`, `tanggal_kadaluwarsa`, `jumlah_stock`, `harga_beli`, `harga_jual`, `supplier`) VALUES
(1, 'Paramex', 'par01', 'Tablet', '1222-12-12', '2020-06-20', 10, 0, 3500, ''),
(4, 'Panadol', 'PDL01', 'Tablet', '2020-06-12', '2020-09-17', 15, 0, 7500, ''),
(6, 'Paracetamol', 'Pa09', 'Tablet', '2020-06-13', '2020-07-24', 10, 0, 8500, ''),
(7, 'Mantap-mantap', 'Kolis', 'Gila', '2000-12-12', '2020-09-26', 69, 0, 9000, ''),
(8, 'Panadol Biru', 'PDBR1', 'Tablet', '0000-00-00', '0000-00-00', 10, 0, 1111, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
