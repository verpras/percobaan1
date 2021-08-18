-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2021 pada 10.16
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coba_coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_vaksinasi`
--

CREATE TABLE `detail_vaksinasi` (
  `id_riwayat` int(11) NOT NULL,
  `id_pasien` int(3) NOT NULL,
  `id_vaksin` int(2) NOT NULL,
  `id_petugas` int(2) NOT NULL,
  `tgl_vaksinasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gelombang`
--

CREATE TABLE `gelombang` (
  `id_gelombang` int(11) NOT NULL,
  `jam` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gelombang`
--

INSERT INTO `gelombang` (`id_gelombang`, `jam`) VALUES
(1, '08:00-12:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `asal_pasien` varchar(100) NOT NULL,
  `umur_pasien` int(3) NOT NULL,
  `jk_pasien` char(1) NOT NULL,
  `no_telpon_pasien` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `asal_pasien`, `umur_pasien`, `jk_pasien`, `no_telpon_pasien`) VALUES
(1, 'Azrul Lintang Wiguna', 'Serang', 12, 'L', '089878618842'),
(2, 'Fahlian Bimo Narenra', 'Taktakan', 47, 'P', '08616484019'),
(3, 'Priyohadi Mohamad Saputri', 'Kasemen', 68, 'P', '082047162747');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `asal_petugas` varchar(20) NOT NULL,
  `no_telpon_pasien` bigint(15) NOT NULL,
  `periode_kerja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `asal_petugas`, `no_telpon_pasien`, `periode_kerja`) VALUES
(1, 'Budi Santoso', 'Walantaka', 878171703, '2020-08-10'),
(2, 'Santoso', 'Serang', 876392831232, '2021-06-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proses_vaksinasi`
--

CREATE TABLE `proses_vaksinasi` (
  `id_vaksinasi` int(11) NOT NULL,
  `id_pasien` int(3) NOT NULL,
  `id_vaksin` int(2) NOT NULL,
  `id_petugas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `proses_vaksinasi`
--

INSERT INTO `proses_vaksinasi` (`id_vaksinasi`, `id_pasien`, `id_vaksin`, `id_petugas`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vaksin`
--

CREATE TABLE `vaksin` (
  `id_vaksin` int(11) NOT NULL,
  `nama_vaksin` varchar(100) NOT NULL,
  `asal_vaksin` varchar(20) NOT NULL,
  `stock_vaksin` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vaksin`
--

INSERT INTO `vaksin` (`id_vaksin`, `nama_vaksin`, `asal_vaksin`, `stock_vaksin`) VALUES
(1, 'Sinovac', 'China', 50),
(2, 'Merah Putih', 'Indonesia', 50);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_vaksinasi`
--
ALTER TABLE `detail_vaksinasi`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indeks untuk tabel `gelombang`
--
ALTER TABLE `gelombang`
  ADD PRIMARY KEY (`id_gelombang`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `proses_vaksinasi`
--
ALTER TABLE `proses_vaksinasi`
  ADD PRIMARY KEY (`id_vaksinasi`);

--
-- Indeks untuk tabel `vaksin`
--
ALTER TABLE `vaksin`
  ADD PRIMARY KEY (`id_vaksin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_vaksinasi`
--
ALTER TABLE `detail_vaksinasi`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gelombang`
--
ALTER TABLE `gelombang`
  MODIFY `id_gelombang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `proses_vaksinasi`
--
ALTER TABLE `proses_vaksinasi`
  MODIFY `id_vaksinasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `vaksin`
--
ALTER TABLE `vaksin`
  MODIFY `id_vaksin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
