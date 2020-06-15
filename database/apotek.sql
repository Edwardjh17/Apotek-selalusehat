-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2020 pada 10.05
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
-- Struktur dari tabel `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3630, 1592117400, '::1', '243023'),
(3629, 1592117386, '::1', '617261'),
(3628, 1592115672, '::1', '091705'),
(3627, 1592115660, '::1', '764031'),
(3626, 1592115658, '::1', '583240'),
(3625, 1592115642, '::1', '336546'),
(3632, 1592121570, '::1', '410460'),
(3631, 1592121541, '::1', '971120');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(1, '::1', '', '2019-01-30 20:39:29', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(2, '::1', '', '2019-11-05 17:45:51', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(3, '::1', '', '2019-11-05 17:47:27', 'Menambah Purchasing Invoice dengan data sbb:<br />\r\n                    <ul><li><b>no_pi</b> dengan value <b>001/kalingga/11/2019</b></li><li><b>id_buyer</b> dengan value <b>1</b></li><li><b>tgl</b> dengan value <b>2019-11-05</b></li><li><b>tgl_pengiriman</b> dengan value <b>2020-02-01</b></li><li><b>fsc_cert</b> dengan value <b>34124</b></li><li><b>fsc_lisence</b> dengan value <b>524554</b></li><li><b>buyer_po_nr</b> dengan value <b>778</b></li><li><b>pembayaran</b> dengan value <b>2</b></li><li><b>id</b> dengan value <b>1</b></li></ul>', 'superadmin'),
(4, '::1', '', '2020-03-10 17:15:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(5, '::1', '', '2020-03-12 09:55:56', 'Menambah menu dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>Instansi</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>alias</b> dengan value <b>instansi</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/instansi</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>1</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'superadmin'),
(6, '::1', '', '2020-03-12 13:25:13', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(7, '::1', '', '2020-03-12 13:39:55', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>1</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(8, '::1', '', '2020-03-12 13:40:20', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>kosong</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(9, '::1', '', '2020-03-12 13:40:52', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'superadmin'),
(10, '::1', '', '2020-05-08 07:34:20', 'Login  by Jihan Ali Ahmad', 'superadmin'),
(11, '::1', '', '2020-05-08 07:47:34', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>-</b></li></ul>', 'superadmin'),
(12, '::1', '', '2020-05-08 07:47:56', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>lihat</b></li></ul>', 'superadmin'),
(13, '::1', '', '2020-05-08 09:37:33', 'Login  by Kholiq', 'kholiq'),
(14, '::1', '', '2020-05-08 09:39:40', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(15, '::1', '', '2020-05-11 20:57:56', 'Logout SIONLAB by ', 'Tamu'),
(16, '::1', '', '2020-05-11 21:06:47', 'Login  by Kholiq', 'kholiq'),
(17, '::1', '', '2020-05-12 13:10:44', 'Logout SIONLAB by ', 'Tamu'),
(18, '::1', '', '2020-05-12 13:17:34', 'Login  by Kholiq', 'kholiq'),
(19, '::1', '', '2020-05-12 13:21:03', 'Logout SIONLAB by Kholiq', 'kholiq'),
(20, '::1', '', '2020-05-12 13:21:28', 'Login  by Kholiq', 'kholiq'),
(21, '::1', '', '2020-05-12 17:33:04', 'Logout SIONLAB by ', 'Tamu'),
(22, '::1', '', '2020-05-12 18:38:30', 'Login  by Kholiq', 'kholiq'),
(23, '::1', '', '2020-05-12 18:46:14', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>MK01</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(24, '::1', '', '2020-05-13 11:15:42', 'Logout SIONLAB by ', 'Tamu'),
(25, '::1', '', '2020-05-13 11:38:26', 'Login  by Kholiq', 'kholiq'),
(26, '::1', '', '2020-05-13 14:28:52', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop Besar</b></li></ul>', 'kholiq'),
(27, '::1', '', '2020-05-13 14:32:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(28, '::1', '', '2020-05-13 14:49:29', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori3</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(29, '::1', '', '2020-05-13 15:13:29', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(30, '::1', '', '2020-05-13 15:14:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori I</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(31, '::1', '', '2020-05-13 15:14:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(32, '::1', '', '2020-05-13 15:19:18', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 4</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(33, '::1', '', '2020-05-13 15:26:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(34, '::1', '', '2020-05-13 15:27:03', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori2</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(35, '::1', '', '2020-05-13 15:57:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(36, '::1', '', '2020-05-13 19:55:19', 'Logout SIONLAB by ', 'Tamu'),
(37, '::1', '', '2020-05-13 19:56:35', 'Login  by Kholiq', 'kholiq'),
(38, '::1', '', '2020-05-13 19:57:11', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(39, '::1', '', '2020-05-13 20:19:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(40, '::1', '', '2020-05-13 20:25:59', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(41, '::1', '', '2020-05-13 20:53:33', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(42, '::1', '', '2020-05-13 21:44:42', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop</b></li></ul>', 'kholiq'),
(43, '::1', '', '2020-05-13 21:44:54', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>kode</b> dengan value <b>MK02</b></li><li><b>nama_alat</b> dengan value <b>Mikroskop Besar</b></li><li><b>keterangan</b> dengan value <b>Mikroskop besar</b></li></ul>', 'kholiq'),
(44, '::1', '', '2020-05-13 21:59:12', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(45, '::1', '', '2020-05-13 21:59:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(46, '::1', '', '2020-05-13 22:01:08', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(47, '::1', '', '2020-05-13 22:02:04', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(48, '::1', '', '2020-05-13 22:02:37', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(49, '::1', '', '2020-05-13 22:03:05', 'Mengedit Master kategori_alat_dan_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(50, '::1', '', '2020-05-13 22:04:54', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(51, '::1', '', '2020-05-13 22:05:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori x</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(52, '::1', '', '2020-05-13 22:06:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(53, '::1', '', '2020-05-13 22:06:47', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(54, '::1', '', '2020-05-13 22:10:42', 'Menambah grup menu dengan data sbb:<br />\r\n                    <ul><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq'),
(55, '::1', '', '2020-05-13 22:10:53', 'Mengedit grup menu dengan data sbb:<br />\r\n                    <ul><li><b>id_grup_menu</b> dengan value <b>4</b></li><li><b>nama_grup</b> dengan value <b>Kelola</b></li></ul>', 'kholiq'),
(56, '::1', '', '2020-05-13 22:13:11', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(57, '::1', '', '2020-05-13 22:13:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(58, '::1', '', '2020-05-13 22:14:00', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(59, '::1', '', '2020-05-13 22:14:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(60, '::1', '', '2020-05-13 22:16:04', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(61, '::1', '', '2020-05-13 22:16:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori y</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(62, '::1', '', '2020-05-13 22:18:27', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(63, '::1', '', '2020-05-13 22:20:04', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(64, '::1', '', '2020-05-13 22:21:22', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(65, '::1', '', '2020-05-13 22:21:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(66, '::1', '', '2020-05-13 22:22:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(67, '::1', '', '2020-05-13 22:25:16', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(68, '::1', '', '2020-05-13 22:27:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori v</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(69, '::1', '', '2020-05-13 23:15:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori 0</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(70, '::1', '', '2020-05-13 23:16:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(71, '::1', '', '2020-05-13 23:16:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(72, '::1', '', '2020-05-13 23:19:15', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(73, '::1', '', '2020-05-13 23:19:27', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(74, '::1', '', '2020-05-14 00:41:52', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(75, '::1', '', '2020-05-14 01:02:50', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>cpu</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(76, '::1', '', '2020-05-14 02:05:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori w</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(77, '::1', '', '2020-05-14 02:05:56', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(78, '::1', '', '2020-05-14 12:46:06', 'Logout SIONLAB by ', 'Tamu'),
(79, '::1', '', '2020-05-14 12:46:16', 'Logout SIONLAB by ', 'Tamu'),
(80, '::1', '', '2020-05-14 12:49:58', 'Login  by Kholiq', 'kholiq'),
(81, '::1', '', '2020-05-14 14:16:04', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori o</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(82, '::1', '', '2020-05-14 14:16:18', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(83, '::1', '', '2020-05-14 14:17:34', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kp</b></li></ul>', 'kholiq'),
(84, '::1', '', '2020-05-14 15:27:51', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(85, '::1', '', '2020-05-14 15:28:03', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(86, '::1', '', '2020-05-14 15:28:12', 'Mengedit Master id dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(87, '::1', '', '2020-05-14 15:33:07', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>k</b></li></ul>', 'kholiq'),
(88, '::1', '', '2020-05-14 16:00:36', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>wc</b></li></ul>', 'kholiq'),
(89, '::1', '', '2020-05-14 16:00:55', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qe</b></li></ul>', 'kholiq'),
(90, '::1', '', '2020-05-14 20:15:16', 'Logout SIONLAB by ', 'Tamu'),
(91, '::1', '', '2020-05-14 20:15:36', 'Login  by Kholiq', 'kholiq'),
(92, '::1', '', '2020-05-14 20:19:13', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>qw</b></li></ul>', 'kholiq'),
(93, '::1', '', '2020-05-14 20:19:31', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pc</b></li><li><b>keterangan</b> dengan value <b>kc</b></li></ul>', 'kholiq'),
(94, '::1', '', '2020-05-14 20:20:26', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>oc</b></li><li><b>keterangan</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(95, '::1', '', '2020-05-14 20:29:41', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>wlw</b></li></ul>', 'kholiq'),
(96, '::1', '', '2020-05-14 20:56:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>pcc</b></li><li><b>keterangan</b> dengan value <b>pwq</b></li></ul>', 'kholiq'),
(97, '::1', '', '2020-05-14 21:31:48', 'Menghapus Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq'),
(98, '::1', '', '2020-05-14 21:39:25', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(99, '::1', '', '2020-05-14 21:39:38', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(100, '::1', '', '2020-05-14 21:42:51', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul></ul>', 'kholiq'),
(101, '::1', '', '2020-05-14 21:55:05', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(102, '::1', '', '2020-05-14 21:55:21', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>129</b></li><li><b>nama</b> dengan value <b>Gambar Depan</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/gambar_depan</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>2</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(103, '::1', '', '2020-05-15 07:09:16', 'Logout SIONLAB by ', 'Tamu'),
(104, '::1', '', '2020-05-15 07:09:50', 'Login  by Kholiq', 'kholiq'),
(105, '::1', '', '2020-05-15 08:04:49', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(106, '::1', '', '2020-05-15 08:22:20', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(107, '::1', '', '2020-05-15 08:25:14', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(108, '::1', '', '2020-05-15 08:32:23', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(109, '::1', '', '2020-05-15 08:41:42', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>umum</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(110, '::1', '', '2020-05-15 08:41:53', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori_alat_bahan</b> dengan value <b>kategori1</b></li><li><b>keterangan</b> dengan value <b>alat</b></li></ul>', 'kholiq'),
(111, '::1', '', '2020-05-15 18:29:39', 'Logout SIONLAB by ', 'Tamu'),
(112, '::1', '', '2020-05-15 18:30:55', 'Login  by Kholiq', 'kholiq'),
(113, '::1', '', '2020-05-15 19:09:06', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(114, '::1', '', '2020-05-15 19:09:53', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(115, '::1', '', '2020-05-15 19:10:43', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(116, '::1', '', '2020-05-15 19:15:15', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(117, '::1', '', '2020-05-15 19:17:10', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(118, '::1', '', '2020-05-15 19:17:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>MK02</b></li><li><b>jenis_bahan</b> dengan value <b>Mikroskop</b></li><li><b>nama_bahan</b> dengan value <b>Mikroskop Besar</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwk</b></li></ul>', 'kholiq'),
(119, '::1', '', '2020-05-15 19:19:58', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>BK01</b></li><li><b>jenis_bahan</b> dengan value <b>Buku</b></li><li><b>nama_bahan</b> dengan value <b>Lean UX</b></li><li><b>tahun</b> dengan value <b>2011</b></li><li><b>pengarang</b> dengan value <b>Josh gothel</b></li></ul>', 'kholiq'),
(120, '::1', '', '2020-05-15 19:22:03', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(121, '::1', '', '2020-05-15 19:23:23', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>bk03</b></li><li><b>jenis_bahan</b> dengan value <b>buku</b></li><li><b>nama_bahan</b> dengan value <b>buku petunjuk</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>-</b></li></ul>', 'kholiq'),
(122, '::1', '', '2020-05-15 19:28:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li></ul>', 'kholiq'),
(123, '::1', '', '2020-05-15 19:28:55', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>002</b></li><li><b>jenis_bahan</b> dengan value <b>kertas</b></li><li><b>nama_bahan</b> dengan value <b>kertas karton</b></li><li><b>tahun</b> dengan value <b>2009</b></li><li><b>pengarang</b> dengan value <b>wkwkwkwk</b></li></ul>', 'kholiq'),
(124, '::1', '', '2020-05-15 19:30:32', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(125, '::1', '', '2020-05-15 19:30:57', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>cho3</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(126, '::1', '', '2020-05-15 19:33:29', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>-</b></li><li><b>pengarang</b> dengan value <b>we</b></li></ul>', 'kholiq'),
(127, '::1', '', '2020-05-15 19:36:32', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(128, '::1', '', '2020-05-15 19:37:27', 'Mengedit Master nama_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>kode</b> dengan value <b>ch02</b></li><li><b>jenis_bahan</b> dengan value <b>cair</b></li><li><b>nama_bahan</b> dengan value <b>co2</b></li><li><b>tahun</b> dengan value <b>2019</b></li><li><b>pengarang</b> dengan value <b>wk</b></li></ul>', 'kholiq'),
(129, '::1', '', '2020-05-15 21:54:44', 'Login  by Kholiq', 'kholiq'),
(130, '::1', '', '2020-05-18 13:13:35', 'Logout SIONLAB by ', 'Tamu'),
(131, '::1', '', '2020-05-18 13:14:18', 'Login  by Kholiq', 'kholiq'),
(132, '::1', '', '2020-05-18 13:14:19', 'Login  by Kholiq', 'kholiq'),
(133, '::1', '', '2020-05-18 21:49:55', 'Logout SIONLAB by ', 'Tamu'),
(134, '::1', '', '2020-05-18 21:50:12', 'Login  by Kholiq', 'kholiq'),
(135, '::1', '', '2020-05-19 13:35:37', 'Logout SIONLAB by ', 'Tamu'),
(136, '::1', '', '2020-05-19 13:35:58', 'Login  by Kholiq', 'kholiq'),
(137, '::1', '', '2020-05-19 19:45:54', 'Login  by Kholiq', 'kholiq'),
(138, '::1', '', '2020-05-19 22:57:27', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(139, '::1', '', '2020-05-19 23:29:05', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>semester</b> dengan value <b>semester 4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-05-09</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-06-09</b></li><li><b>pajak</b> dengan value <b>7</b></li><li><b>status_pengajuan</b> dengan value <b>belum turun</b></li><li><b>status</b> dengan value <b>tidak</b></li></ul>', 'kholiq'),
(140, '::1', '', '2020-05-20 19:35:53', 'Logout SIONLAB by ', 'Tamu'),
(141, '::1', '', '2020-05-20 19:36:35', 'Login  by Kholiq', 'kholiq'),
(142, '::1', '', '2020-05-20 19:37:19', 'Logout SIONLAB by Kholiq', 'kholiq'),
(143, '::1', '', '2020-05-20 19:37:33', 'Login  by Kholiq', 'kholiq'),
(144, '::1', '', '2020-05-20 19:38:47', 'Logout SIONLAB by Kholiq', 'kholiq'),
(145, '::1', '', '2020-05-20 19:39:04', 'Login  by Kholiq', 'kholiq'),
(146, '::1', '', '2020-05-21 19:07:28', 'Login  by Kholiq', 'kholiq'),
(147, '::1', '', '2020-05-21 23:18:23', 'Login  by Kholiq', 'kholiq'),
(148, '::1', '', '2020-05-21 23:54:31', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(149, '::1', '', '2020-05-21 23:56:20', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(150, '::1', '', '2020-05-21 23:57:49', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(151, '::1', '', '2020-05-21 23:58:30', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>katgeori 2</b></li><li><b>keterangan</b> dengan value <b>bahan</b></li></ul>', 'kholiq'),
(152, '::1', '', '2020-05-21 23:59:09', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq'),
(153, '::1', '', '2020-05-22 02:13:00', 'Login  by Kholiq', 'kholiq'),
(154, '::1', '', '2020-05-22 07:02:43', 'Login  by Kholiq', 'kholiq'),
(155, '::1', '', '2020-05-22 18:25:12', 'Login  by Kholiq', 'kholiq'),
(156, '::1', '', '2020-05-23 13:37:07', 'Login  by Kholiq', 'kholiq'),
(157, '::1', '', '2020-05-23 19:56:37', 'Login  by Kholiq', 'kholiq'),
(158, '::1', '', '2020-05-23 19:57:13', 'Logout SIONLAB by Kholiq', 'kholiq'),
(159, '::1', '', '2020-05-23 19:57:54', 'Login  by Kholiq', 'kholiq'),
(160, '::1', '', '2020-05-23 20:01:56', 'Logout SIONLAB by Kholiq', 'kholiq'),
(161, '::1', '', '2020-05-27 12:41:50', 'Login  by Kholiq', 'kholiq'),
(162, '::1', '', '2020-05-27 12:41:59', 'Logout SIONLAB by Kholiq', 'kholiq'),
(163, '::1', '', '2020-05-27 12:42:19', 'Login  by Kholiq', 'kholiq'),
(164, '::1', '', '2020-05-27 12:42:27', 'Logout SIONLAB by Kholiq', 'kholiq'),
(165, '::1', '', '2020-05-27 12:42:42', 'Login  by Kholiq', 'kholiq'),
(166, '::1', '', '2020-05-27 12:42:48', 'Logout SIONLAB by Kholiq', 'kholiq'),
(167, '::1', '', '2020-05-27 12:43:03', 'Login  by Kholiq', 'kholiq'),
(168, '::1', '', '2020-05-27 14:31:46', 'Logout SIONLAB by Kholiq', 'kholiq'),
(169, '::1', '', '2020-05-27 14:33:05', 'Login  by kepala lab', 'kepala_lab01'),
(170, '::1', '', '2020-05-27 14:37:25', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(171, '::1', '', '2020-05-27 14:37:48', 'Login  by kepala lab', 'kepala_lab01'),
(172, '::1', '', '2020-05-27 14:37:55', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(173, '::1', '', '2020-05-27 14:38:12', 'Login  by Kholiq', 'kholiq'),
(174, '::1', '', '2020-05-27 14:54:50', 'Logout SIONLAB by Kholiq', 'kholiq'),
(175, '::1', '', '2020-05-27 14:55:05', 'Login  by kepala lab', 'kepala_lab01'),
(176, '::1', '', '2020-05-27 14:58:22', 'Logout SIONLAB by kepala lab', 'kepala_lab01'),
(177, '::1', '', '2020-05-27 14:58:35', 'Login  by Kholiq', 'kholiq'),
(178, '::1', '', '2020-05-27 19:50:58', 'Login  by Kholiq', 'kholiq'),
(179, '::1', '', '2020-05-28 00:38:41', 'Login  by Kholiq', 'kholiq'),
(180, '::1', '', '2020-05-28 01:16:30', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(181, '::1', '', '2020-05-28 01:17:54', 'Menambah Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(182, '::1', '', '2020-05-28 01:18:07', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq'),
(183, '::1', '', '2020-05-28 01:18:46', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Buruk</b></li></ul>', 'kholiq'),
(184, '::1', '', '2020-05-28 01:18:56', 'Mengedit Kelola kelola_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_bahan</b> dengan value <b>Kabel Lan</b></li><li><b>satuan_bahan</b> dengan value <b>Meter</b></li><li><b>kategori</b> dengan value <b>Umum</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>stock</b> dengan value <b>100</b></li><li><b>lokasi_penyimpanan</b> dengan value <b>Lemari 3</b></li><li><b>tipe_bahan</b> dengan value <b>Tidak Habis Pakai</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'kholiq'),
(185, '::1', '', '2020-05-28 22:10:52', 'Login  by Kholiq', 'kholiq'),
(186, '::1', '', '2020-05-29 08:10:49', 'Login  by kepala lab', 'kepala_lab01'),
(187, '::1', '', '2020-05-29 08:11:49', 'Logout SILADU by kepala lab', 'kepala_lab01'),
(188, '::1', '', '2020-05-29 08:12:06', 'Login  by Kholiq', 'kholiq'),
(189, '::1', '', '2020-05-29 09:55:38', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*813002F7088C5B1BBF0A1CB75DD83CA8AE5CE931</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/c9bbd5b516fd82b52dea0368790a1967.jpg</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholiq'),
(190, '::1', '', '2020-05-29 10:10:55', 'Logout SIONLAB by Kholiq', 'kholiq'),
(191, '::1', '', '2020-05-29 10:11:10', 'Login  by kholis', 'kholis'),
(192, '::1', '', '2020-05-29 10:14:46', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li></ul>', 'kholis'),
(193, '::1', '', '2020-05-29 10:14:50', 'Logout SIONLAB by kholis', 'kholis'),
(194, '::1', '', '2020-05-29 10:15:47', 'Login  by kholis', 'kholis'),
(195, '::1', '', '2020-05-29 10:17:27', 'Logout SIONLAB by kholis', 'kholis'),
(196, '::1', '', '2020-05-29 10:17:44', 'Login  by Kholiq', 'kholiq'),
(197, '::1', '', '2020-05-29 11:25:13', 'Menghapus laporan dengan id 7', 'kholiq'),
(198, '::1', '', '2020-05-29 11:25:57', 'Menghapus laporan dengan id 11', 'kholiq'),
(199, '::1', '', '2020-05-29 11:26:02', 'Menghapus laporan dengan id 13', 'kholiq'),
(200, '::1', '', '2020-05-29 11:47:15', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq'),
(201, '::1', '', '2020-05-29 11:48:04', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>wkwkwk</b></li><li><b>email</b> dengan value <b>wwwkkwkwk@gmail.com</b></li><li><b>username</b> dengan value <b>wkwkwkw</b></li><li><b>password</b> dengan value <b>*E6CC90B878B948C35E92B003C792C46C58C4AF40</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/e31e0255d173e709580cfd705c7e0e63.jpg</b></li><li><b>no_hp</b> dengan value <b>88900087</b></li></ul>', 'kholiq'),
(202, '::1', '', '2020-05-29 11:48:10', 'Menghapus laporan dengan id 16', 'kholiq'),
(203, '::1', '', '2020-05-29 12:47:53', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>15</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>088766899</b></li></ul>', 'kholiq'),
(204, '::1', '', '2020-05-29 12:48:45', 'Logout SIONLAB by Kholiq', 'kholiq'),
(205, '::1', '', '2020-05-29 12:49:01', 'Login  by kholis', 'kholis'),
(206, '::1', '', '2020-05-29 12:49:42', 'Logout SIONLAB by kholis', 'kholis'),
(207, '::1', '', '2020-05-29 12:50:00', 'Login  by kholis', 'kholis'),
(208, '::1', '', '2020-05-29 12:54:48', 'Logout SIONLAB by kholis', 'kholis'),
(209, '::1', '', '2020-05-29 12:55:07', 'Login  by Kholiq', 'kholiq'),
(210, '::1', '', '2020-05-29 12:55:18', 'Menghapus laporan dengan id 2', 'kholiq'),
(211, '::1', '', '2020-05-29 12:55:21', 'Menghapus laporan dengan id 3', 'kholiq'),
(212, '::1', '', '2020-05-29 12:55:26', 'Menghapus laporan dengan id 8', 'kholiq'),
(213, '::1', '', '2020-05-29 12:55:29', 'Menghapus laporan dengan id 9', 'kholiq'),
(214, '::1', '', '2020-05-29 12:55:31', 'Menghapus laporan dengan id 10', 'kholiq'),
(215, '::1', '', '2020-05-29 12:55:33', 'Menghapus laporan dengan id 12', 'kholiq'),
(216, '::1', '', '2020-05-29 12:55:34', 'Menghapus laporan dengan id 14', 'kholiq'),
(217, '::1', '', '2020-05-29 13:00:34', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>password</b> dengan value <b>*6D45FD76D5E9C6A404E39C25106A7F032659ACB8</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/24dfeeb34e92bc2ddf1aca0bf3c2ce98.jpg</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(218, '::1', '', '2020-05-29 13:04:43', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>password</b> dengan value <b>*9575C0046B29C853A98731B0053B780947E0524B</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/b9bc5717ad559fdd46b73b0c369b089a.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(219, '::1', '', '2020-05-29 13:05:29', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>password</b> dengan value <b>*C7E1AAB5C1E92CE2835AB5E35BC54EAC2D290817</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/21c379d76f68969567b1b2e5c40e48f3.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(220, '::1', '', '2020-05-29 13:06:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>password</b> dengan value <b>*EC2A9F2AC0FF65E0B34FB7C1CE20030855EFF156</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ae5395d6d32f2bbdfc3a08767e41152d.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(221, '::1', '', '2020-05-29 13:07:20', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>password</b> dengan value <b>*34D4F44511DF537724AECB9C20245800A653C680</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/ea2fbde56d3e1f0a302267e4d4f7b04f.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(222, '::1', '', '2020-05-29 13:07:59', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/69b47bbede1893d66edd2d40a62995b6.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(223, '::1', '', '2020-05-29 13:08:51', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>password</b> dengan value <b>*58B1E0151C7DBF4DF0D59581B6C5C4E031D9F62A</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/05/3448f7f0daa177766c9142c47441a803.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(224, '::1', '', '2020-05-29 13:09:04', 'Logout SIONLAB by Kholiq', 'kholiq'),
(225, '::1', '', '2020-05-29 13:09:24', 'Login  by mahasiswa', 'mahasiswa'),
(226, '::1', '', '2020-05-29 13:10:14', 'Logout SIONLAB by mahasiswa', 'mahasiswa'),
(227, '::1', '', '2020-05-29 13:10:34', 'Login  by admin', 'admin'),
(228, '::1', '', '2020-05-29 13:12:13', 'Logout SIONLAB by admin', 'admin'),
(229, '::1', '', '2020-05-29 13:12:29', 'Login  by laboran', 'laboran'),
(230, '::1', '', '2020-05-29 13:16:58', 'Logout SIONLAB by laboran', 'laboran'),
(231, '::1', '', '2020-05-29 13:17:15', 'Login  by Kholiq', 'kholiq'),
(232, '::1', '', '2020-05-29 13:23:54', 'Menghapus laporan dengan id 22', 'kholiq'),
(233, '::1', '', '2020-05-29 13:24:30', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/181ad34638551080659d5a56b4e439b9.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(234, '::1', '', '2020-05-29 13:24:43', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>2</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(235, '::1', '', '2020-05-29 13:26:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(236, '::1', '', '2020-05-29 13:30:42', 'Menghapus laporan dengan id 15', 'kholiq'),
(237, '::1', '', '2020-05-29 13:30:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(238, '::1', '', '2020-05-29 13:31:07', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(239, '::1', '', '2020-05-29 13:31:18', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(240, '::1', '', '2020-05-29 13:32:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(241, '::1', '', '2020-05-29 13:32:59', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(242, '::1', '', '2020-05-29 13:33:06', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(243, '::1', '', '2020-05-29 13:33:12', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(244, '::1', '', '2020-05-29 13:45:53', 'Logout SIONLAB by Kholiq', 'kholiq'),
(245, '::1', '', '2020-05-29 13:46:12', 'Login  by laboran', 'laboran'),
(246, '::1', '', '2020-05-29 13:50:06', 'Logout SIONLAB by laboran', 'laboran'),
(247, '::1', '', '2020-05-29 13:50:26', 'Login  by Kholiq', 'kholiq'),
(248, '::1', '', '2020-05-29 13:50:40', 'Menghapus laporan dengan id 1', 'kholiq'),
(249, '::1', '', '2020-05-29 13:50:54', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(250, '::1', '', '2020-05-29 13:51:09', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 2</b></li><li><b>keterangan</b> dengan value <b>Bahan</b></li></ul>', 'kholiq'),
(251, '::1', '', '2020-05-29 13:57:00', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(252, '::1', '', '2020-05-29 14:29:37', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/878d88ce02e175e7fdd4970355e3a743.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(253, '::1', '', '2020-05-29 14:29:58', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(254, '::1', '', '2020-05-29 14:30:14', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>kosong</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(255, '::1', '', '2020-05-29 14:32:28', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(256, '::1', '', '2020-05-29 14:35:27', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(257, '::1', '', '2020-05-29 15:03:29', 'Logout SIONLAB by Kholiq', 'kholiq'),
(258, '::1', '', '2020-05-29 15:03:47', 'Login  by laboran', 'laboran'),
(259, '::1', '', '2020-05-29 15:04:00', 'Logout SIONLAB by laboran', 'laboran'),
(260, '::1', '', '2020-05-29 15:04:29', 'Login  by admin', 'admin'),
(261, '::1', '', '2020-05-29 15:04:44', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>19</b></li><li><b>nama</b> dengan value <b>laboran</b></li><li><b>email</b> dengan value <b>laboran</b></li><li><b>username</b> dengan value <b>laboran</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(262, '::1', '', '2020-05-29 15:04:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>20</b></li><li><b>nama</b> dengan value <b>koordinator_lab</b></li><li><b>email</b> dengan value <b>koordinator_lab</b></li><li><b>username</b> dengan value <b>koordinator_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(263, '::1', '', '2020-05-29 15:05:08', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>21</b></li><li><b>nama</b> dengan value <b>asisten</b></li><li><b>email</b> dengan value <b>asisten</b></li><li><b>username</b> dengan value <b>asisten</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(264, '::1', '', '2020-05-29 15:05:17', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>23</b></li><li><b>nama</b> dengan value <b>mahasiswa</b></li><li><b>email</b> dengan value <b>mahasiswa</b></li><li><b>username</b> dengan value <b>mahasiswa</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>8</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(265, '::1', '', '2020-05-29 15:05:31', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>24</b></li><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(266, '::1', '', '2020-05-29 18:06:53', 'Login  by Kholiq', 'kholiq'),
(267, '::1', '', '2020-05-29 18:16:41', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(268, '::1', '', '2020-05-29 18:17:05', 'Logout SIONLAB by Kholiq', 'kholiq'),
(269, '::1', '', '2020-05-29 18:17:20', 'Login  by admin', 'admin'),
(270, '::1', '', '2020-05-29 21:57:49', 'Logout SIONLAB by ', 'Tamu'),
(271, '::1', '', '2020-05-29 21:58:09', 'Login  by Kholiq', 'kholiq'),
(272, '::1', '', '2020-05-29 23:11:49', 'Logout SILADU by Kholiq', 'kholiq'),
(273, '::1', '', '2020-05-29 23:12:08', 'Login  by dosen', 'dosen'),
(274, '::1', '', '2020-05-29 23:12:31', 'Logout SILADU by dosen', 'dosen'),
(275, '::1', '', '2020-05-29 23:13:06', 'Login  by laboran', 'laboran'),
(276, '::1', '', '2020-05-29 23:18:10', 'Logout SIONLAB by laboran', 'laboran'),
(277, '::1', '', '2020-05-29 23:18:42', 'Login  by admin', 'admin'),
(278, '::1', '', '2020-05-29 23:19:57', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin'),
(279, '::1', '', '2020-05-29 23:21:50', 'Menghapus laporan dengan id 25', 'admin'),
(280, '::1', '', '2020-05-29 23:21:59', 'Menghapus laporan dengan id 24', 'admin'),
(281, '::1', '', '2020-05-29 23:23:25', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/05/90b4b3bfd44f5c07ff9a1c92c0878955.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(282, '::1', '', '2020-05-31 22:48:27', 'Login  by Kholiq', 'kholiq'),
(283, '::1', '', '2020-06-01 19:15:05', 'Login  by Kholiq', 'kholiq'),
(284, '::1', '', '2020-06-01 19:46:46', 'Logout SIONLAB by Kholiq', 'kholiq'),
(285, '::1', '', '2020-06-01 19:47:29', 'Login  by dosen', 'dosen'),
(286, '::1', '', '2020-06-02 00:19:17', 'Login  by admin', 'admin'),
(287, '::1', '', '2020-06-02 00:38:02', 'Logout SIONLAB by admin', 'admin'),
(288, '::1', '', '2020-06-02 00:38:19', 'Login  by Kholiq', 'kholiq'),
(289, '::1', '', '2020-06-03 18:46:02', 'Login  by Kholiq', 'kholiq'),
(290, '::1', '', '2020-06-03 18:48:20', 'Logout SIONLAB by Kholiq', 'kholiq'),
(291, '::1', '', '2020-06-03 18:48:37', 'Login  by Kholiq', 'kholiq'),
(292, '::1', '', '2020-06-03 19:04:15', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5A562BB3AE4DEB9E61FD707484C323DE11989E4F</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/59213f4a0c4e3451ac877b1c924f8c84.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq'),
(293, '::1', '', '2020-06-03 19:16:28', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/a772243507dbfb0bf5321f212f60e4f2.jpg</b></li><li><b>no_hp</b> dengan value <b>89</b></li></ul>', 'kholiq'),
(294, '::1', '', '2020-06-03 19:33:46', 'Logout SILADU by Kholiq', 'kholiq'),
(295, '::1', '', '2020-06-03 19:39:15', 'Login  by admin', 'admin'),
(296, '::1', '', '2020-06-03 19:41:21', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>0</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'admin'),
(297, '::1', '', '2020-06-03 19:41:28', 'Logout SIONLAB by admin', 'admin'),
(298, '::1', '', '2020-06-03 19:41:44', 'Login  by admin', 'admin'),
(299, '::1', '', '2020-06-03 19:45:08', 'Logout SIONLAB by admin', 'admin'),
(300, '::1', '', '2020-06-03 19:45:47', 'Login  by Kholiq', 'kholiq'),
(301, '::1', '', '2020-06-03 19:46:32', 'Logout SILADU by Kholiq', 'kholiq'),
(302, '::1', '', '2020-06-03 19:46:57', 'Login  by Kholiq', 'kholiq'),
(303, '::1', '', '2020-06-03 19:47:29', 'Menghapus laporan dengan id 26', 'kholiq'),
(304, '::1', '', '2020-06-03 19:48:32', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/bbc11d3ea2db9009ba44a5c1763ab675.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(305, '::1', '', '2020-06-03 19:48:38', 'Menghapus laporan dengan id 29', 'kholiq'),
(306, '::1', '', '2020-06-03 19:50:12', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>dosen</b></li><li><b>email</b> dengan value <b>dosen</b></li><li><b>username</b> dengan value <b>dosen</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*48A0B1F829AA82E193E29FD7B0FBDB0A146AA710</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/106292ac4c5fa37adf7eb3cc11880936.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(307, '::1', '', '2020-06-03 19:51:33', 'Logout SIONLAB by Kholiq', 'kholiq'),
(308, '::1', '', '2020-06-03 19:51:51', 'Login  by admin', 'admin'),
(309, '::1', '', '2020-06-03 20:40:43', 'Logout SIONLAB by admin', 'admin'),
(310, '::1', '', '2020-06-03 20:40:59', 'Login  by Kholiq', 'kholiq'),
(311, '::1', '', '2020-06-03 21:26:29', 'Logout SIONLAB by Kholiq', 'kholiq'),
(312, '::1', '', '2020-06-03 21:26:43', 'Login  by admin', 'admin'),
(313, '::1', '', '2020-06-03 21:48:04', 'Logout SIONLAB by admin', 'admin'),
(314, '::1', '', '2020-06-03 21:48:20', 'Login  by laboran', 'laboran'),
(315, '::1', '', '2020-06-03 21:51:44', 'Logout SIONLAB by laboran', 'laboran'),
(316, '::1', '', '2020-06-03 21:51:58', 'Login  by admin', 'admin'),
(317, '::1', '', '2020-06-03 22:42:20', 'Logout SILADU by admin', 'admin'),
(318, '::1', '', '2020-06-03 22:42:42', 'Login  by mahasiswa', 'mahasiswa'),
(319, '::1', '', '2020-06-03 22:45:44', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(320, '::1', '', '2020-06-03 22:45:59', 'Login  by Kholiq', 'kholiq'),
(321, '::1', '', '2020-06-03 22:54:50', 'Logout SILADU by Kholiq', 'kholiq'),
(322, '::1', '', '2020-06-03 22:55:40', 'Login  by koordinator_lab', 'koordinator_lab'),
(323, '::1', '', '2020-06-03 22:56:03', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(324, '::1', '', '2020-06-03 22:56:41', 'Login  by dosen', 'dosen'),
(325, '::1', '', '2020-06-03 22:56:47', 'Logout SILADU by dosen', 'dosen'),
(326, '::1', '', '2020-06-03 22:57:10', 'Login  by koordinator_lab', 'koordinator_lab'),
(327, '::1', '', '2020-06-03 22:57:21', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(328, '::1', '', '2020-06-03 22:57:54', 'Login  by asisten', 'asisten'),
(329, '::1', '', '2020-06-03 22:58:09', 'Logout SILADU by asisten', 'asisten'),
(330, '::1', '', '2020-06-03 22:58:45', 'Login  by asisten', 'asisten'),
(331, '::1', '', '2020-06-03 22:58:57', 'Logout SILADU by asisten', 'asisten'),
(332, '::1', '', '2020-06-03 22:59:18', 'Login  by koordinator_lab', 'koordinator_lab'),
(333, '::1', '', '2020-06-03 22:59:37', 'Logout SILADU by koordinator_lab', 'koordinator_lab'),
(334, '::1', '', '2020-06-03 22:59:54', 'Login  by admin', 'admin'),
(335, '::1', '', '2020-06-03 23:00:52', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholi2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*8B72A61B6A0FD345E9206D636EB8B21BF204689D</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/3ebd97eb13ee6c461f93687583038aba.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(336, '::1', '', '2020-06-03 23:01:01', 'Logout SILADU by admin', 'admin'),
(337, '::1', '', '2020-06-03 23:01:25', 'Login  by kholis', 'kholi2'),
(338, '::1', '', '2020-06-03 23:01:40', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>31</b></li><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>mnurkholismajid66@students.unnes.ac.id</b></li><li><b>username</b> dengan value <b>kholis2</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholi2'),
(339, '::1', '', '2020-06-03 23:01:46', 'Logout SILADU by kholis', 'kholi2'),
(340, '::1', '', '2020-06-03 23:02:02', 'Login  by kholis', 'kholis2'),
(341, '::1', '', '2020-06-03 23:02:07', 'Logout SILADU by kholis', 'kholis2'),
(342, '::1', '', '2020-06-03 23:02:21', 'Login  by dosen', 'dosen'),
(343, '::1', '', '2020-06-03 23:02:27', 'Logout SILADU by dosen', 'dosen'),
(344, '::1', '', '2020-06-03 23:02:43', 'Login  by mahasiswa', 'mahasiswa'),
(345, '::1', '', '2020-06-03 23:03:21', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(346, '::1', '', '2020-06-03 23:03:41', 'Login  by admin', 'admin'),
(347, '::1', '', '2020-06-03 23:04:01', 'Menghapus laporan dengan id 31', 'admin'),
(348, '::1', '', '2020-06-03 23:04:48', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>kholis</b></li><li><b>email</b> dengan value <b>kholis</b></li><li><b>username</b> dengan value <b>kholis</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*5BEE99044580ED345557DFE1AECA212F5F4327CC</b></li><li><b>level</b> dengan value <b>7</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>gambar</b> dengan value <b>files/2020/06/46d165093f9bdbf75da466c295707091.jpg</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'admin'),
(349, '::1', '', '2020-06-03 23:04:55', 'Logout SILADU by admin', 'admin'),
(350, '::1', '', '2020-06-03 23:05:13', 'Login  by kholis', 'kholis'),
(351, '::1', '', '2020-06-03 23:06:55', 'Logout SILADU by kholis', 'kholis'),
(352, '::1', '', '2020-06-03 23:08:48', 'Login  by Kholiq', 'kholiq'),
(353, '::1', '', '2020-06-04 00:00:25', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(354, '::1', '', '2020-06-04 00:20:12', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(355, '::1', '', '2020-06-04 00:20:16', 'Menghapus laporan dengan id 4', 'kholiq'),
(356, '::1', '', '2020-06-04 00:20:29', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>Meter</b></li><li><b>keterangan</b> dengan value <b>Meter</b></li></ul>', 'kholiq'),
(357, '::1', '', '2020-06-04 00:20:32', 'Menghapus laporan dengan id 2', 'kholiq'),
(358, '::1', '', '2020-06-04 00:20:57', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>jenis_bahan</b> dengan value <b>akwkw</b></li><li><b>nama_bahan</b> dengan value <b>awaea</b></li><li><b>tahun</b> dengan value <b>2090</b></li></ul>', 'kholiq'),
(359, '::1', '', '2020-06-04 00:21:45', 'Menghapus laporan dengan id 3', 'kholiq'),
(360, '::1', '', '2020-06-04 00:22:10', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>234</b></li><li><b>nama_alat</b> dengan value <b>dffeaad</b></li><li><b>keterangan</b> dengan value <b>adda</b></li></ul>', 'kholiq'),
(361, '::1', '', '2020-06-04 00:22:12', 'Menghapus laporan dengan id 3', 'kholiq'),
(362, '::1', '', '2020-06-04 00:22:22', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kategori_alat_bahan</b> dengan value <b>Kategori 1</b></li><li><b>keterangan</b> dengan value <b>Alat</b></li></ul>', 'kholiq'),
(363, '::1', '', '2020-06-04 00:22:24', 'Menghapus laporan dengan id 7', 'kholiq'),
(364, '::1', '', '2020-06-04 19:45:11', 'Login  by Kholiq', 'kholiq'),
(365, '::1', '', '2020-06-04 19:48:35', 'Logout SILADU by Kholiq', 'kholiq'),
(366, '::1', '', '2020-06-04 19:48:55', 'Login  by mahasiswa', 'mahasiswa'),
(367, '::1', '', '2020-06-04 19:49:12', 'Logout SILADU by mahasiswa', 'mahasiswa'),
(368, '::1', '', '2020-06-05 10:46:19', 'Login  by Kholiq', 'kholiq'),
(369, '::1', '', '2020-06-05 11:45:26', 'Logout SILADU by Kholiq', 'kholiq'),
(370, '::1', '', '2020-06-05 12:42:05', 'Login  by Kholiq', 'kholiq'),
(371, '::1', '', '2020-06-05 12:42:36', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>17</b></li><li><b>nama</b> dengan value <b>admin</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>88888888888</b></li></ul>', 'kholiq'),
(372, '::1', '', '2020-06-07 13:30:23', 'Login  by Kholiq', 'kholiq'),
(373, '::1', '', '2020-06-07 13:30:50', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Kholiq</b></li><li><b>email</b> dengan value <b>kholiq</b></li><li><b>username</b> dengan value <b>kholiq</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kholiq'),
(374, '::1', '', '2020-06-07 15:01:16', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(375, '::1', '', '2020-06-07 15:01:30', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>peta_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'kholiq'),
(376, '::1', '', '2020-06-09 13:54:02', 'Login  by Kholiq', 'kholiq'),
(377, '::1', '', '2020-06-09 20:12:39', 'Login  by Kholiq', 'kholiq'),
(378, '::1', '', '2020-06-09 21:08:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>56789</b></li><li><b>semester</b> dengan value <b>Semester4</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-008</b></li><li><b>pajak</b> dengan value <b>100.0000</b></li><li><b>status_pengajuan</b> dengan value <b>Sudah Turun</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(379, '::1', '', '2020-06-09 21:28:33', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>567</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(380, '::1', '', '2020-06-09 21:29:42', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>221563213</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-08</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(381, '::1', '', '2020-06-09 21:34:02', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(382, '::1', '', '2020-06-09 21:34:15', 'Menghapus laporan dengan id 1', 'kholiq'),
(383, '::1', '', '2020-06-09 21:34:18', 'Menghapus laporan dengan id 2', 'kholiq'),
(384, '::1', '', '2020-06-09 21:34:21', 'Menghapus laporan dengan id 567', 'kholiq'),
(385, '::1', '', '2020-06-09 21:34:48', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>314314653</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-10</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(386, '::1', '', '2020-06-09 21:42:46', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(387, '::1', '', '2020-06-09 21:44:01', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(388, '::1', '', '2020-06-09 21:44:07', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>145344678</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>Aktif</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'kholiq'),
(389, '::1', '', '2020-06-09 21:49:48', 'Menghapus laporan dengan id 56789', 'kholiq'),
(390, '::1', '', '2020-06-09 22:07:35', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Universitas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(391, '::1', '', '2020-06-09 22:28:09', 'Mengedit Pengajuan periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5676234</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-17</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-08</b></li><li><b>pajak</b> dengan value <b>1000000</b></li><li><b>status_pengajuan</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(392, '::1', '', '2020-06-09 22:28:30', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>tidak ada</b></li></ul>', 'kholiq'),
(393, '::1', '', '2020-06-09 22:34:23', 'Mengedit Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>sumber_pendanaan</b> dengan value <b>Fakultas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'kholiq'),
(394, '::1', '', '2020-06-10 10:45:55', 'Login  by Kholiq', 'kholiq'),
(395, '::1', '', '2020-06-10 12:55:11', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>Bos</b></li></ul>', 'kholiq'),
(396, '::1', '', '2020-06-10 13:10:53', 'Menambah Master sumber_pendanaan dengan data sbb:<br />\r\n                    <ul><li><b>sumber_pendanaan</b> dengan value <b>wkwkwkw</b></li></ul>', 'kholiq'),
(397, '::1', '', '2020-06-10 13:29:29', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>125455163</b></li><li><b>semester</b> dengan value <b>Ganjil</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-12</b></li><li><b>sumber_pendanaan</b> dengan value <b>4</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-07-12</b></li><li><b>pajak</b> dengan value <b>20000</b></li><li><b>status_pengajuan</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(398, '::1', '', '2020-06-10 13:29:45', 'Menghapus laporan dengan id 5676234', 'kholiq'),
(399, '::1', '', '2020-06-10 13:29:47', 'Menghapus laporan dengan id 145344678', 'kholiq'),
(400, '::1', '', '2020-06-10 13:29:49', 'Menghapus laporan dengan id 221563213', 'kholiq'),
(401, '::1', '', '2020-06-10 13:29:50', 'Menghapus laporan dengan id 314314653', 'kholiq'),
(402, '::1', '', '2020-06-10 13:30:25', 'Menambah Pengajuan Periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>135145763</b></li><li><b>semester</b> dengan value <b>Genap</b></li><li><b>tgl_pengajuan</b> dengan value <b>2020-06-27</b></li><li><b>sumber_pendanaan</b> dengan value <b>3</b></li><li><b>tgl_pendanaan_turun</b> dengan value <b>2020-08-27</b></li><li><b>pajak</b> dengan value <b>230000</b></li><li><b>status_pengajuan</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(403, '::1', '', '2020-06-10 13:54:58', 'Menghapus laporan dengan id 7', 'kholiq'),
(404, '::1', '', '2020-06-10 13:55:18', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>satuan_alat</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>6</b></li><li><b>stok</b> dengan value <b>5</b></li><li><b>stok_minimal</b> dengan value <b>2</b></li><li><b>lokasi</b> dengan value <b>5</b></li><li><b>pendanaan</b> dengan value <b>3</b></li><li><b>harga</b> dengan value <b>90000</b></li><li><b>kondisi</b> dengan value <b>baik</b></li></ul>', 'kholiq'),
(405, '::1', '', '2020-06-10 14:39:13', 'Logout SIONLAB by Kholiq', 'kholiq'),
(406, '::1', '', '2020-06-10 14:39:35', 'Login  by kepala_lab', 'kepala_lab'),
(407, '::1', '', '2020-06-10 14:43:35', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>18</b></li><li><b>nama</b> dengan value <b>kepala_lab</b></li><li><b>email</b> dengan value <b>kepala_lab</b></li><li><b>username</b> dengan value <b>kepala_lab</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>no_hp</b> dengan value <b>9</b></li></ul>', 'kepala_lab'),
(408, '::1', '', '2020-06-10 14:43:57', 'Logout SIONLAB by kepala_lab', 'kepala_lab'),
(409, '::1', '', '2020-06-10 14:45:08', 'Login  by laboran', 'laboran'),
(410, '::1', '', '2020-06-10 14:52:59', 'Logout SILADU by laboran', 'laboran'),
(411, '::1', '', '2020-06-10 14:56:15', 'Login  by Kholiq', 'kholiq'),
(412, '::1', '', '2020-06-10 16:00:32', 'Logout SIONLAB by Kholiq', 'kholiq'),
(413, '::1', '', '2020-06-10 16:35:06', 'Login  by Kholiq', 'kholiq'),
(414, '::1', '', '2020-06-10 16:40:42', 'Logout SIONLAB by Kholiq', 'kholiq'),
(415, '::1', '', '2020-06-10 16:40:58', 'Login  by Kholiq', 'kholiq'),
(416, '::1', '', '2020-06-10 16:45:40', 'Logout SIONLAB by ', 'Tamu'),
(417, '::1', '', '2020-06-10 16:49:33', 'Login  by Kholiq', 'kholiq'),
(418, '::1', '', '2020-06-10 16:51:51', 'Logout SIONLAB by Kholiq', 'kholiq'),
(419, '::1', '', '2020-06-10 17:05:21', 'Login  by Kholiq', 'kholiq'),
(420, '::1', '', '2020-06-10 17:11:10', 'Logout SIONLAB by Kholiq', 'kholiq'),
(421, '::1', '', '2020-06-10 17:30:32', 'Login  by Kholiq', 'kholiq'),
(422, '::1', '', '2020-06-10 18:02:54', 'Logout SIONLAB by Kholiq', 'kholiq'),
(423, '::1', '', '2020-06-10 18:27:11', 'Login  by Kholiq', 'kholiq'),
(424, '::1', '', '2020-06-10 18:31:53', 'Logout SELALU SEHAT by Kholiq', 'kholiq'),
(425, '::1', '', '2020-06-10 18:34:15', 'Login  by psdp', 'psdp'),
(426, '::1', '', '2020-06-10 19:23:48', 'Logout SELALU SEHAT by psdp', 'psdp'),
(427, '::1', '', '2020-06-10 19:24:37', 'Login  by psdp', 'psdp'),
(428, '::1', '', '2020-06-10 19:33:06', 'Logout SELALU SEHAT by psdp', 'psdp'),
(429, '::1', '', '2020-06-10 19:36:33', 'Login  by psdp', 'psdp'),
(430, '::1', '', '2020-06-12 23:02:38', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(431, '::1', '', '2020-06-12 23:03:16', 'Login  by psdp', 'psdp'),
(432, '::1', '', '2020-06-12 23:54:17', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(433, '::1', '', '2020-06-12 23:54:31', 'Login  by psdp', 'psdp'),
(434, '::1', '', '2020-06-13 10:48:26', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(435, '::1', '', '2020-06-13 10:48:42', 'Login  by psdp', 'psdp'),
(436, '::1', '', '2020-06-13 10:55:49', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(437, '::1', '', '2020-06-13 10:56:02', 'Login  by psdp', 'psdp'),
(438, '::1', '', '2020-06-13 11:00:51', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(439, '::1', '', '2020-06-13 11:03:27', 'Login  by psdp', 'psdp'),
(440, '::1', '', '2020-06-13 13:11:34', 'Login  by psdp', 'psdp'),
(441, '::1', '', '2020-06-13 13:18:12', 'Login  by psdp', 'psdp'),
(442, '::1', '', '2020-06-13 13:30:09', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(443, '::1', '', '2020-06-13 13:30:25', 'Login  by psdp', 'psdp'),
(444, '::1', '', '2020-06-13 13:53:31', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(445, '::1', '', '2020-06-13 13:53:49', 'Login  by psdp', 'psdp'),
(446, '::1', '', '2020-06-13 14:18:12', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(447, '::1', '', '2020-06-13 14:18:26', 'Login  by psdp', 'psdp'),
(448, '::1', '', '2020-06-13 14:36:04', 'Login  by psdp', 'psdp'),
(449, '::1', '', '2020-06-13 15:18:40', 'Login  by psdp', 'psdp'),
(450, '::1', '', '2020-06-13 15:46:35', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Paramex</b></li><li><b>kode_obat</b> dengan value <b>pmx</b></li><li><b>jenis_obat</b> dengan value <b>1</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-01-01</b></li><li><b>jumlah_stock</b> dengan value <b>100</b></li><li><b>harga_beli</b> dengan value <b>5000</b></li><li><b>harga_jual</b> dengan value <b>6500</b></li><li><b>suplier</b> dengan value <b>1001</b></li></ul>', 'psdp'),
(451, '::1', '', '2020-06-13 19:06:11', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(452, '::1', '', '2020-06-13 19:06:27', 'Login  by psdp', 'psdp'),
(453, '::1', '', '2020-06-13 19:31:16', 'Login  by psdp', 'psdp'),
(454, '::1', '', '2020-06-13 20:46:21', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(455, '::1', '', '2020-06-13 20:46:36', 'Login  by psdp', 'psdp'),
(456, '::1', '', '2020-06-13 22:00:29', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Amoxilin</b></li><li><b>kode_obat</b> dengan value <b>amx</b></li><li><b>jenis_obat</b> dengan value <b>2</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-09-30</b></li><li><b>jumlah_stock</b> dengan value <b>8</b></li><li><b>harga_beli</b> dengan value <b>5000</b></li><li><b>harga_jual</b> dengan value <b>6500</b></li><li><b>suplier</b> dengan value <b>1002</b></li></ul>', 'psdp'),
(457, '::1', '', '2020-06-13 22:00:57', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_obat</b> dengan value <b>Amoxilin</b></li><li><b>kode_obat</b> dengan value <b>amx</b></li><li><b>jenis_obat</b> dengan value <b>2</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>kosong</b></li><li><b>jumlah_stock</b> dengan value <b>0</b></li><li><b>harga_jual</b> dengan value <b>6500</b></li></ul>', 'psdp'),
(458, '::1', '', '2020-06-13 22:49:14', 'Menghapus laporan dengan id 4', 'psdp'),
(459, '::1', '', '2020-06-13 23:07:21', 'Logout Apotek Selalu Sehat by psdp', 'psdp'),
(460, '::1', '', '2020-06-13 23:14:52', 'Login  by owner', 'owner'),
(461, '::1', '', '2020-06-13 23:15:23', 'Logout Apotek Selalu Sehat by owner', 'owner'),
(462, '::1', '', '2020-06-13 23:15:38', 'Login  by admin', 'admin'),
(463, '::1', '', '2020-06-13 23:15:38', 'Login  by admin', 'admin'),
(464, '::1', '', '2020-06-13 23:16:42', 'Logout Apotek Selalu Sehat by admin', 'admin'),
(465, '::1', '', '2020-06-13 23:16:59', 'Login  by gudang', 'gudang'),
(466, '::1', '', '2020-06-13 23:17:14', 'Logout Apotek Selalu Sehat by gudang', 'gudang'),
(467, '::1', '', '2020-06-13 23:17:47', 'Login  by penjualan', 'penjualan'),
(468, '::1', '', '2020-06-13 23:27:52', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-13</b></li><li><b>no_referensi</b> dengan value <b>2543rfvdhg</b></li><li><b>nama_obat</b> dengan value <b>Amoxilin</b></li><li><b>harga_jual</b> dengan value <b>6500</b></li><li><b>nama_pembeli</b> dengan value <b>Kupret</b></li><li><b>banyak</b> dengan value <b>5</b></li><li><b>total_penjualan</b> dengan value <b>55000</b></li></ul>', 'penjualan'),
(469, '::1', '', '2020-06-13 23:28:49', 'Logout Apotek Selalu Sehat by penjualan', 'penjualan'),
(470, '::1', '', '2020-06-13 23:29:02', 'Login  by psdp', 'psdp'),
(471, '::1', '', '2020-06-13 23:29:21', 'Menghapus laporan dengan id 3', 'psdp'),
(472, '::1', '', '2020-06-14 00:32:51', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Berkah Abadi</b></li><li><b>no_telephone</b> dengan value <b>62896764368</b></li><li><b>alamat</b> dengan value <b>Peterongan</b></li></ul>', 'psdp'),
(473, '::1', '', '2020-06-14 00:38:17', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Mundur Terartur</b></li><li><b>no_telephone</b> dengan value <b>62888466178</b></li><li><b>alamat</b> dengan value <b>Semarang Barat</b></li><li><b>keterangan</b> dengan value <b>Panadol, Amoxilin, Tilung</b></li></ul>', 'psdp'),
(474, '::1', '', '2020-06-14 00:38:44', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_suplier</b> dengan value <b>Berkah Abadi</b></li><li><b>no_telephone</b> dengan value <b>2147483647</b></li><li><b>alamat</b> dengan value <b>Peterongan</b></li><li><b>keterangan</b> dengan value <b>Bodrex, Panadol, Antangin</b></li></ul>', 'psdp'),
(475, '::1', '', '2020-06-14 00:39:58', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Selalu Jaya</b></li><li><b>no_telephone</b> dengan value <b>62852374298</b></li><li><b>alamat</b> dengan value <b>Sekaran</b></li><li><b>keterangan</b> dengan value <b>Insana</b></li></ul>', 'psdp');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(476, '::1', '', '2020-06-14 00:40:48', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Mundur Berkah</b></li><li><b>no_telephone</b> dengan value <b>6287562348</b></li><li><b>alamat</b> dengan value <b>Tembalang</b></li><li><b>keterangan</b> dengan value <b>Perban</b></li></ul>', 'psdp'),
(477, '::1', '', '2020-06-14 00:42:14', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_suplier</b> dengan value <b>Mundur Berkah</b></li><li><b>no_telephone</b> dengan value <b>45263687894</b></li><li><b>alamat</b> dengan value <b>Tembalang</b></li><li><b>keterangan</b> dengan value <b>Perban</b></li></ul>', 'psdp'),
(478, '::1', '', '2020-06-14 00:45:59', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Mantap Jiwa</b></li><li><b>no_telephone</b> dengan value <b>3526632928</b></li><li><b>alamat</b> dengan value <b>Jati Diri</b></li><li><b>keterangan</b> dengan value <b>Betadin</b></li></ul>', 'psdp'),
(479, '::1', '', '2020-06-14 00:51:23', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>nama_suplier</b> dengan value <b>Infinix</b></li><li><b>no_telephone</b> dengan value <b>2456476878</b></li><li><b>alamat</b> dengan value <b>pengkol</b></li><li><b>keterangan</b> dengan value <b>Bahan</b></li></ul>', 'psdp'),
(480, '::1', '', '2020-06-14 00:51:37', 'Menghapus laporan dengan id 6', 'psdp'),
(481, '::1', '', '2020-06-14 00:52:33', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-10</b></li><li><b>no_referensi</b> dengan value <b>e2r3fgv2</b></li><li><b>nama_obat</b> dengan value <b>Panadol</b></li><li><b>harga_jual</b> dengan value <b>9000</b></li><li><b>nama_pembeli</b> dengan value <b>Tompel</b></li><li><b>banyak</b> dengan value <b>3</b></li><li><b>total_penjualan</b> dengan value <b>27000</b></li></ul>', 'psdp'),
(482, '::1', '', '2020-06-14 00:58:35', 'Menghapus laporan dengan id 1', 'psdp'),
(483, '::1', '', '2020-06-14 00:58:36', 'Menghapus laporan dengan id 6', 'psdp'),
(484, '::1', '', '2020-06-14 00:59:34', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Insana</b></li><li><b>kode_obat</b> dengan value <b>ins</b></li><li><b>jenis_obat</b> dengan value <b>2</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-01-29</b></li><li><b>jumlah_stock</b> dengan value <b>7</b></li><li><b>harga_beli</b> dengan value <b>5000</b></li><li><b>harga_jual</b> dengan value <b>5500</b></li><li><b>suplier</b> dengan value <b>4</b></li></ul>', 'psdp'),
(485, '::1', '', '2020-06-14 01:00:29', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Tilung</b></li><li><b>kode_obat</b> dengan value <b>tl</b></li><li><b>jenis_obat</b> dengan value <b>3</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-11-27</b></li><li><b>jumlah_stock</b> dengan value <b>5</b></li><li><b>harga_beli</b> dengan value <b>10000</b></li><li><b>harga_jual</b> dengan value <b>15000</b></li><li><b>suplier</b> dengan value <b>3</b></li></ul>', 'psdp'),
(486, '::1', '', '2020-06-14 01:01:19', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Bodrex</b></li><li><b>kode_obat</b> dengan value <b>bdr</b></li><li><b>jenis_obat</b> dengan value <b>2</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-06-14</b></li><li><b>jumlah_stock</b> dengan value <b>100</b></li><li><b>harga_beli</b> dengan value <b>3000</b></li><li><b>harga_jual</b> dengan value <b>3500</b></li><li><b>suplier</b> dengan value <b>2</b></li></ul>', 'psdp'),
(487, '::1', '', '2020-06-14 01:02:53', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>nama_obat</b> dengan value <b>Antangin</b></li><li><b>kode_obat</b> dengan value <b>atg</b></li><li><b>jenis_obat</b> dengan value <b>3</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2020-07-14</b></li><li><b>jumlah_stock</b> dengan value <b>50</b></li><li><b>harga_beli</b> dengan value <b>5000</b></li><li><b>harga_jual</b> dengan value <b>7500</b></li><li><b>suplier</b> dengan value <b>1</b></li></ul>', 'psdp'),
(488, '::1', '', '2020-06-14 01:25:55', 'Logout Apotek Selalu Sehat by psdp', 'psdp'),
(489, '::1', '', '2020-06-14 01:26:10', 'Login  by owner', 'owner'),
(490, '::1', '', '2020-06-14 01:29:35', 'Logout Apotek Selalu Sehat by owner', 'owner'),
(491, '::1', '', '2020-06-14 01:29:52', 'Login  by admin', 'admin'),
(492, '::1', '', '2020-06-14 01:31:08', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>suplier</b></li><li><b>username</b> dengan value <b>suplier</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>email</b> dengan value <b>suplier</b></li><li><b>password</b> dengan value <b>*58F60E33CFF5ECD8932D6D087E71D2DE7C8021C1</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>alamat</b> dengan value <b>Jati Diri</b></li><li><b>gambar</b> dengan value <b>files/2020/06/d51ac2e4f68bb66eb851c10f5f48c9be.jpg</b></li><li><b>no_hp</b> dengan value <b>8457686</b></li></ul>', 'admin'),
(493, '::1', '', '2020-06-14 01:31:15', 'Logout Apotek Selalu Sehat by admin', 'admin'),
(494, '::1', '', '2020-06-14 01:31:33', 'Login  by gudang', 'gudang'),
(495, '::1', '', '2020-06-14 01:31:48', 'Logout Apotek Selalu Sehat by gudang', 'gudang'),
(496, '::1', '', '2020-06-14 01:32:03', 'Login  by penjualan', 'penjualan'),
(497, '::1', '', '2020-06-14 01:32:29', 'Logout Apotek Selalu Sehat by penjualan', 'penjualan'),
(498, '::1', '', '2020-06-14 01:33:04', 'Login  by suplier', 'suplier'),
(499, '::1', '', '2020-06-14 01:44:32', 'Logout Apotek Selalu Sehat by suplier', 'suplier'),
(500, '::1', '', '2020-06-14 01:44:58', 'Login  by psdp', 'psdp'),
(501, '::1', '', '2020-06-14 01:45:48', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>35</b></li><li><b>nama</b> dengan value <b>Kupret</b></li><li><b>email</b> dengan value <b>owner</b></li><li><b>username</b> dengan value <b>owner</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>alamat</b> dengan value <b>mojo</b></li><li><b>no_hp</b> dengan value <b>26547267982</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li></ul>', 'psdp'),
(502, '::1', '', '2020-06-14 01:46:12', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>36</b></li><li><b>nama</b> dengan value <b>Tompel</b></li><li><b>email</b> dengan value <b>admin</b></li><li><b>username</b> dengan value <b>admin</b></li><li><b>level</b> dengan value <b>3</b></li><li><b>alamat</b> dengan value <b>mangkang</b></li><li><b>no_hp</b> dengan value <b>16228</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li></ul>', 'psdp'),
(503, '::1', '', '2020-06-14 01:46:39', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>37</b></li><li><b>nama</b> dengan value <b>Reza</b></li><li><b>email</b> dengan value <b>gudang</b></li><li><b>username</b> dengan value <b>gudang</b></li><li><b>level</b> dengan value <b>4</b></li><li><b>alamat</b> dengan value <b>sekaran</b></li><li><b>no_hp</b> dengan value <b>13167</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li></ul>', 'psdp'),
(504, '::1', '', '2020-06-14 01:46:51', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>38</b></li><li><b>nama</b> dengan value <b>Anisa</b></li><li><b>email</b> dengan value <b>penjualan</b></li><li><b>username</b> dengan value <b>penjualan</b></li><li><b>level</b> dengan value <b>5</b></li><li><b>alamat</b> dengan value <b>tugu</b></li><li><b>no_hp</b> dengan value <b>1563674</b></li><li><b>jenis_kelamin</b> dengan value <b>2</b></li></ul>', 'psdp'),
(505, '::1', '', '2020-06-14 01:47:28', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>39</b></li><li><b>nama</b> dengan value <b>Mundur Teratur</b></li><li><b>email</b> dengan value <b>suplier</b></li><li><b>username</b> dengan value <b>suplier</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>alamat</b> dengan value <b>Jati Diri</b></li><li><b>no_hp</b> dengan value <b>8457686</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li></ul>', 'psdp'),
(506, '::1', '', '2020-06-14 01:47:30', 'Logout Apotek Selalu Sehat by psdp', 'psdp'),
(507, '::1', '', '2020-06-14 01:47:54', 'Login  by Mundur Teratur', 'suplier'),
(508, '::1', '', '2020-06-14 01:48:06', 'Logout Apotek Selalu Sehat by Mundur Teratur', 'suplier'),
(509, '::1', '', '2020-06-14 01:48:27', 'Login  by Tompel', 'admin'),
(510, '::1', '', '2020-06-14 01:50:37', 'Logout Apotek Selalu Sehat by Tompel', 'admin'),
(511, '::1', '', '2020-06-14 01:50:52', 'Login  by Kupret', 'owner'),
(512, '::1', '', '2020-06-14 01:57:06', 'Logout Apotek Selalu Sehat by Kupret', 'owner'),
(513, '::1', '', '2020-06-14 02:00:42', 'Login  by Kupret', 'owner'),
(514, '::1', '', '2020-06-14 02:15:27', 'Logout Apotek Selalu Sehat by Kholiq', 'kholiq'),
(515, '::1', '', '2020-06-14 02:15:42', 'Login  by Mundur Teratur', 'suplier'),
(516, '::1', '', '2020-06-14 02:17:12', 'Logout Apotek Selalu Sehat by Mundur Teratur', 'suplier'),
(517, '::1', '', '2020-06-14 02:17:33', 'Login  by psdp', 'psdp'),
(518, '::1', '', '2020-06-14 02:17:57', 'Menambah Data suplier dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>nama_suplier</b> dengan value <b>Mantap Jiwa</b></li><li><b>no_telephone</b> dengan value <b>56347279</b></li><li><b>alamat</b> dengan value <b>Jati Diri</b></li><li><b>keterangan</b> dengan value <b>Betadi</b></li></ul>', 'psdp'),
(519, '::1', '', '2020-06-14 02:17:59', 'Menghapus laporan dengan id 5', 'psdp'),
(520, '::1', '', '2020-06-14 11:21:29', 'Logout Apotek Selalu Sehat by ', 'Tamu'),
(521, '::1', '', '2020-06-14 11:21:50', 'Login  by psdp', 'psdp'),
(522, '::1', '', '2020-06-14 11:24:11', 'Menambah data stock_obat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>9</b></li><li><b>nama_obat</b> dengan value <b>Amoxilin</b></li><li><b>kode_obat</b> dengan value <b>amx</b></li><li><b>jenis_obat</b> dengan value <b>2</b></li><li><b>tanggal_kadaluwarsa</b> dengan value <b>2018-06-01</b></li><li><b>jumlah_stock</b> dengan value <b>0</b></li><li><b>harga_jual</b> dengan value <b>6500</b></li></ul>', 'psdp'),
(523, '::1', '', '2020-06-14 11:39:55', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>43gbhbs</b></li><li><b>nama_obat</b> dengan value <b>8</b></li><li><b>harga_jual</b> dengan value <b>8</b></li><li><b>nama_pembeli</b> dengan value <b>Edward</b></li><li><b>banyak</b> dengan value <b>5</b></li><li><b>total_penjualan</b> dengan value <b>55000</b></li></ul>', 'psdp'),
(524, '::1', '', '2020-06-14 11:42:22', 'Menghapus laporan dengan id 6', 'psdp'),
(525, '::1', '', '2020-06-14 11:43:03', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>3efhrvhjbjh</b></li><li><b>nama_obat</b> dengan value <b>8</b></li><li><b>harga_jual</b> dengan value <b>8</b></li><li><b>nama_pembeli</b> dengan value <b>Edward</b></li><li><b>banyak</b> dengan value <b>5</b></li><li><b>total_penjualan</b> dengan value <b>55000</b></li></ul>', 'psdp'),
(526, '::1', '', '2020-06-14 11:55:24', 'Menghapus laporan dengan id 7', 'psdp'),
(527, '::1', '', '2020-06-14 11:55:49', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>14trfjh</b></li><li><b>nama_obat</b> dengan value <b>8</b></li><li><b>harga_jual</b> dengan value <b>8</b></li><li><b>nama_pembeli</b> dengan value <b>Edward</b></li><li><b>banyak</b> dengan value <b>5</b></li><li><b>total_penjualan</b> dengan value <b>55000</b></li></ul>', 'psdp'),
(528, '::1', '', '2020-06-14 11:59:42', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>2543rfvdhg</b></li><li><b>nama_obat</b> dengan value <b>9</b></li><li><b>harga_jual</b> dengan value <b>9</b></li><li><b>nama_pembeli</b> dengan value <b>kholis</b></li><li><b>banyak</b> dengan value <b>3</b></li><li><b>total_penjualan</b> dengan value <b>19500</b></li></ul>', 'psdp'),
(529, '::1', '', '2020-06-14 12:03:35', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>psdp</b></li><li><b>email</b> dengan value <b>psdp</b></li><li><b>username</b> dengan value <b>psdp</b></li><li><b>jenis_kelamin</b> dengan value <b>1</b></li><li><b>password</b> dengan value <b>*BC2712D909107D1EB6D0894588778DDA3A7A44FF</b></li><li><b>gambar</b> dengan value <b>files/2020/06/553f2c8bb703d19950c884f018867954.jpg</b></li><li><b>no_hp</b> dengan value <b>10</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'psdp'),
(530, '::1', '', '2020-06-14 12:03:40', 'Logout Apotek Selalu Sehat by psdp', 'psdp'),
(531, '::1', '', '2020-06-14 12:04:53', 'Login  by psdp', 'psdp'),
(532, '::1', '', '2020-06-14 12:08:22', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>12e3dtrevb</b></li><li><b>nama_obat</b> dengan value <b>10</b></li><li><b>harga_jual</b> dengan value <b>10</b></li><li><b>nama_pembeli</b> dengan value <b>Edward</b></li><li><b>banyak</b> dengan value <b>2</b></li><li><b>total_penjualan</b> dengan value <b>11000</b></li></ul>', 'psdp'),
(533, '::1', '', '2020-06-14 13:20:40', 'Logout Apotek Selalu Sehat by psdp', 'psdp'),
(534, '::1', '', '2020-06-14 13:21:13', 'Login  by Kupret', 'owner'),
(535, '::1', '', '2020-06-14 13:49:59', 'Login  by psdp', 'psdp'),
(536, '::1', '', '2020-06-14 13:53:34', 'Menambah Data data_enjualan dengan data sbb:<br />\r\n                    <ul><li><b>tanggal_transaksi</b> dengan value <b>2020-06-14</b></li><li><b>no_referensi</b> dengan value <b>2543rfvdhg</b></li><li><b>id_obat</b> dengan value <b>8</b></li><li><b>harga_jual</b> dengan value <b>8</b></li><li><b>nama_pembeli</b> dengan value <b>Edward</b></li><li><b>banyak</b> dengan value <b>5</b></li><li><b>total_penjualan</b> dengan value <b>55000</b></li></ul>', 'psdp'),
(537, '::1', '', '2020-06-14 13:53:45', 'Menghapus laporan dengan id 8', 'psdp'),
(538, '::1', '', '2020-06-14 14:59:30', 'Login  by psdp', 'psdp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+5+6+7+8+', 'apl/crud', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+', 'cms/catatan/catat', 1, 2, 1),
(104, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(156, 'data_penjualan', 'Data Penjualan', '-', '+1+2+3+5+', 'penjualan/data_penjualan', 1, 1, 4),
(154, 'suplier', 'Suplier', '-', '+1+2+3+4+', 'data/suplier', 1, 3, 2),
(153, 'pegawai', 'Pegawai', '-', '+1+2+3+', 'data/pegawai', 1, 2, 2),
(158, 'obat_kadaluwarsa', 'Obat Kadaluwarsa', '-', '+1+2+3+4+5+', 'obat/obat_kadaluwarsa', 1, 2, 5),
(152, 'stock_obat', 'Stock Obat', '-', '+1+2+3+4+5+', 'obat/stock_obat', 1, 1, 5),
(159, 'obat_habis', 'Obat Habis', '-', '+1+2+3+4+5+6+', 'obat/Obat_habis', 1, 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Manajemen', 'fa fa-fw fa-book'),
(2, 'Data', 'fa fa-fw fa-suitcase'),
(101, 'Dashboard', 'fa fa-dashboard'),
(4, 'Penjualan', 'fa fa-fw fa-shopping-cart'),
(5, 'Obat', 'fa fa-fw fa-hourglass-2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

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
(1, 'psdp', '1', 'files/2020/06/553f2c8bb703d19950c884f018867954.jpg', 'psdp', 'psdp', '*9EC856C2E06E6AC01D8449D4D38B86711E7CAD79', 1, 1, '10', '', '2020-06-14 14:59:30'),
(35, 'Kupret', '1', 'files/2020/06/fccd18f5dc9f85921a255ff8adfd57bc.jpg', 'owner', 'owner', '*63BDB583FB0A02D3A02FD5F95B187027DA5FD46F', 2, 1, '26547267982', 'mojo', '2020-06-14 13:21:12'),
(36, 'Tompel', '1', 'files/2020/06/0eedc18985ba07446a2a02e305c55f35.jpg', 'admin', 'admin', '*23EF57C77F8C48E0F66F59339F9729BADAFD3F37', 3, 1, '16228', 'mangkang', '2020-06-14 01:48:27'),
(37, 'Reza', '1', 'files/2020/06/7ce353160bb6bd06e890e459df64362d.jpg', 'gudang', 'gudang', '*11D9B51247BF1F765480BA5BA3D76889405AFD3C', 4, 1, '13167', 'sekaran', '2020-06-14 01:31:33'),
(38, 'Anisa', '2', 'files/2020/06/8aa483efcea16689c2657b2204a96c47.jpg', 'penjualan', 'penjualan', '*270725E0ADF2B7A9E08DFE0069FCE6A01352652B', 5, 1, '1563674', 'tugu', '2020-06-14 01:32:02'),
(39, 'Mundur Teratur', '1', 'files/2020/06/d51ac2e4f68bb66eb851c10f5f48c9be.jpg', 'suplier', 'suplier', '*58F60E33CFF5ECD8932D6D087E71D2DE7C8021C1', 6, 1, '8457686', 'Jati Diri', '2020-06-14 02:15:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penjualan`
--

CREATE TABLE `data_penjualan` (
  `id` int(11) NOT NULL,
  `tanggal_transaksi` varchar(255) NOT NULL,
  `no_referensi` varchar(255) NOT NULL,
  `id_obat` varchar(255) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `banyak` int(255) NOT NULL,
  `total_penjualan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penjualan`
--

INSERT INTO `data_penjualan` (`id`, `tanggal_transaksi`, `no_referensi`, `id_obat`, `harga_jual`, `nama_pembeli`, `banyak`, `total_penjualan`) VALUES
(4, '2020-06-13', '2543rfvdhg', 'Amoxilin', 6500, 'Kupret', 5, '55000'),
(5, '2020-06-10', 'e2r3fgv2', 'Panadol', 9000, 'Tompel', 3, '27000'),
(9, '2020-06-14', '2543rfvdhg', '9', 9, 'kholis', 3, '19500'),
(10, '2020-06-14', '12e3dtrevb', '10', 10, 'Edward', 2, '11000'),
(11, '2020-06-14', '2543rfvdhg', '8', 8, 'Edward', 5, '55000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_obat`
--

CREATE TABLE `jenis_obat` (
  `id` int(11) NOT NULL,
  `jenis_obat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_obat`
--

INSERT INTO `jenis_obat` (`id`, `jenis_obat`) VALUES
(1, 'Kapsul'),
(2, 'Tablet'),
(3, 'Sirup'),
(4, 'Pil'),
(5, 'Sirup Kering/ Serbuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Super Admin'),
(2, 'Owner'),
(3, 'Admin'),
(4, 'Gudang'),
(5, 'Penjualan'),
(6, 'Suplier');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_obat`
--

CREATE TABLE `stock_obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `kode_obat` varchar(30) NOT NULL,
  `id_jenis_obat` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_kadaluwarsa` date NOT NULL,
  `jumlah_stock` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_obat`
--

INSERT INTO `stock_obat` (`id`, `nama_obat`, `kode_obat`, `id_jenis_obat`, `tanggal_masuk`, `tanggal_kadaluwarsa`, `jumlah_stock`, `harga_beli`, `harga_jual`, `id_suplier`) VALUES
(8, 'Paramex', 'pmx', '1', '0000-00-00', '2020-01-01', 100, 5000, 6500, 1001),
(9, 'Amoxilin', 'amx', '2', '0000-00-00', '2018-06-01', 0, 5000, 6500, 1002),
(10, 'Insana', 'ins', '2', '0000-00-00', '2020-01-29', 7, 5000, 5500, 4),
(11, 'Tilung', 'tl', '3', '0000-00-00', '2020-11-27', 5, 10000, 15000, 3),
(12, 'Bodrex', 'bdr', '2', '0000-00-00', '2020-06-14', 100, 3000, 3500, 2),
(13, 'Antangin', 'atg', '3', '0000-00-00', '2020-07-14', 50, 5000, 7500, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `id` int(11) NOT NULL,
  `nama_suplier` varchar(255) NOT NULL,
  `no_telephone` varchar(13) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`id`, `nama_suplier`, `no_telephone`, `alamat`, `keterangan`) VALUES
(1, 'Berkah Abadi', '65367478', 'Peterongan', 'Bodrex, Panadol, Antangin'),
(2, 'Mundur Terartur', '45673', 'Semarang Barat', 'Panadol, Amoxilin, Tilung'),
(3, 'Selalu Jaya', '2147483647', 'Sekaran', 'Insana'),
(4, 'Mundur Berkah', '326578598', 'Tembalang', 'Perban');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indeks untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indeks untuk tabel `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indeks untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `data_penjualan`
--
ALTER TABLE `data_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_obat`
--
ALTER TABLE `jenis_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `stock_obat`
--
ALTER TABLE `stock_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3633;

--
-- AUTO_INCREMENT untuk tabel `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT untuk tabel `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT untuk tabel `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT untuk tabel `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `data_penjualan`
--
ALTER TABLE `data_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis_obat`
--
ALTER TABLE `jenis_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `stock_obat`
--
ALTER TABLE `stock_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
