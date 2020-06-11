-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2020 pada 17.20
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

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
-- Struktur dari tabel `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `jenis_kelamin`, `gambar`, `email`, `username`, `password`, `level`, `bagian`, `no_hp`, `alamat`, `last_login`) VALUES
(1, 'psdp', '1', NULL, 'psdp', 'psdp', '*9EC856C2E06E6AC01D8449D4D38B86711E7CAD79', 1, 1, '10', NULL, '2020-06-11 22:17:57'),
(35, 'owner', '1', 'files/2020/06/fccd18f5dc9f85921a255ff8adfd57bc.jpg', 'owner', 'owner', '*63BDB583FB0A02D3A02FD5F95B187027DA5FD46F', 2, 1, '26547267982', 'mojo', '2020-06-11 22:17:34'),
(36, 'admin', '1', 'files/2020/06/0eedc18985ba07446a2a02e305c55f35.jpg', 'admin', 'admin', '*23EF57C77F8C48E0F66F59339F9729BADAFD3F37', 3, 1, '16228', 'mangkang', '2020-06-11 22:16:53'),
(37, 'gudang', '1', 'files/2020/06/7ce353160bb6bd06e890e459df64362d.jpg', 'gudang', 'gudang', '*11D9B51247BF1F765480BA5BA3D76889405AFD3C', 4, 1, '13167', 'sekaran', '2020-06-11 22:15:47'),
(38, 'penjualan', '2', 'files/2020/06/8aa483efcea16689c2657b2204a96c47.jpg', 'penjualan', 'penjualan', '*270725E0ADF2B7A9E08DFE0069FCE6A01352652B', 5, 1, '1563674', 'tugu', '2020-06-11 22:15:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
