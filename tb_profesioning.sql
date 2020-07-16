-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2020 pada 07.26
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tb_profesioning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2018_06_17_070037_create_anggotas_table', 2),
(4, '2018_06_17_130244_create_bukus_table', 2),
(5, '2018_06_18_014155_create_transaksis_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profesioning`
--

CREATE TABLE `profesioning` (
  `id` int(11) NOT NULL,
  `no_sc` varchar(25) NOT NULL,
  `tanggal_inputer` date NOT NULL,
  `myir` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `nomor_handphone` varchar(20) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `layanan` varchar(100) NOT NULL,
  `deposit` varchar(100) NOT NULL,
  `mobi` varchar(100) NOT NULL,
  `chanel` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tikor` varchar(100) NOT NULL,
  `odp_utama` varchar(100) NOT NULL,
  `odp_alternatif` varchar(100) NOT NULL,
  `sto` varchar(100) NOT NULL,
  `mitra` varchar(100) NOT NULL,
  `tl` varchar(100) NOT NULL,
  `double_check_wo` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `status_order` varchar(100) NOT NULL,
  `status_sc_order` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `sc_psb` varchar(100) DEFAULT NULL,
  `wfm_id` varchar(100) DEFAULT NULL,
  `no_internet` varchar(20) DEFAULT NULL,
  `verifikasi` varchar(100) DEFAULT NULL,
  `status_ps_mi_tech` int(100) DEFAULT NULL,
  `status_ps_hd` int(100) DEFAULT NULL,
  `cp` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `odp` varchar(20) DEFAULT NULL,
  `port` int(10) DEFAULT NULL,
  `qr_drop_core` varchar(100) DEFAULT NULL,
  `tikor_plgn` varchar(100) DEFAULT NULL,
  `tikor_odp` varchar(100) DEFAULT NULL,
  `sn_ont` varchar(100) DEFAULT NULL,
  `sn_stb` varchar(100) DEFAULT NULL,
  `material_dc` varchar(100) DEFAULT NULL,
  `material_tiang` int(10) DEFAULT NULL,
  `material_lan` int(10) DEFAULT NULL,
  `tanggal_penarikan` datetime(6) DEFAULT NULL,
  `tanggal_ps` datetime(6) DEFAULT NULL,
  `petugas_penarikan` varchar(100) DEFAULT NULL,
  `redaman_sebelum` varchar(100) DEFAULT NULL,
  `redaman_sesudah` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profesioning`
--

INSERT INTO `profesioning` (`id`, `no_sc`, `tanggal_inputer`, `myir`, `nama_pelanggan`, `nomor_handphone`, `paket`, `layanan`, `deposit`, `mobi`, `chanel`, `alamat`, `tikor`, `odp_utama`, `odp_alternatif`, `sto`, `mitra`, `tl`, `double_check_wo`, `duration`, `status_order`, `status_sc_order`, `keterangan`, `sc_psb`, `wfm_id`, `no_internet`, `verifikasi`, `status_ps_mi_tech`, `status_ps_hd`, `cp`, `nama`, `odp`, `port`, `qr_drop_core`, `tikor_plgn`, `tikor_odp`, `sn_ont`, `sn_stb`, `material_dc`, `material_tiang`, `material_lan`, `tanggal_penarikan`, `tanggal_ps`, `petugas_penarikan`, `redaman_sebelum`, `redaman_sesudah`) VALUES
(2, '123434', '2020-07-10', '23343', 'Muksin', 'ewr', 'shfshd', 'djfhdgjk', '54', 'fsdjkhf', 'dshfkhf', 'fjkhsdfjkhs', 'sfdkjh', 'sdbfjdsb', 'sdbfsdjk', 'dskfjbsdfjb', 'ssfjbfjb', 'bjfsjb', 'jbjbfd', 'jbsfjbzxfzfsfstts', 'sjbjb', 'fjgb', 'sjbkfgjksfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '13468', '2020-07-01', '12', 'claudia', '09389703', 'indhome fiber', 'telepon', 'aa', 'aaaa', '2233', 'jambi', 'ww', 'a', 'aw', 'wq', 'qw', 'wwwee', 'wwwq', 'qeer', 'qeqew', 'wqeqq', 'wqwq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `gambar`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin123', 'admin@gmail.com', '$2y$10$C4pM50.HusgwO8Tr7ZRBvO4RyR3cVkJBMeiEqG0SOfTF4WQLVl3JG', '97672-2020-07-13-02-44-37.jpg', 'admin', 'Wfde5SMhQFWPpPKbfuPYJly5eyw3UQTwnCCaeOFje6WZO6YvXabCJPw0VDff', '2020-03-20 20:56:27', '2020-07-12 19:44:37'),
(2, 'User', 'user123', 'user@gmail.com', '$2y$10$LnrC1Pipz.GRr6.c3ywWq.ChMjEFBJ4scxxYpnNh73DJeE0HD88NG', NULL, 'user', 'KhlAwvhmqqkQK0SYz7UEa1I5A3fmp676r4ORU1KgTqe59voowgRVCIxvNpR7', '2020-03-20 20:56:27', '2020-03-20 21:16:04'),
(3, 'muksin', 'muksin', 'muksinalfalah02@gmail.com', '$2y$10$Tr8QDHgfcYldD.3CfjfUF.nwioDv8ueUgMasUd6bPdY85j0ZJTZ5G', NULL, 'user', 'hdYrjqF5epnEfhu9Qk2fFP2tln559ldZxVPJp8otzA5cIDZ9pA0dMgRWD4sx', '2020-04-14 20:27:18', '2020-04-14 20:27:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profesioning`
--
ALTER TABLE `profesioning`
  ADD PRIMARY KEY (`no_sc`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `profesioning`
--
ALTER TABLE `profesioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
