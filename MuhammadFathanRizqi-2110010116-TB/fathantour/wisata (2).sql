-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 03.09
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `idpaket` int(5) NOT NULL,
  `namapaket` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `fasilitas` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`idpaket`, `namapaket`, `deskripsi`, `fasilitas`, `harga`) VALUES
(1, 'hemat', 'paket hemat', 'ac dan wifi', '5000'),
(2, 'regular', 'paket regular', 'wifi,ac dan wifi', '50000'),
(3, 'sedang', 'paket sedang', 'wifi ', '40000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `telpon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama`, `alamat`, `kota`, `telpon`, `email`) VALUES
(1, 'fathan', 'tanik', 'matraman', '08888', 'gathahna'),
(2, 'LOLI', 'JL.RAYA', 'BANJAR', '087615252', 'LOLI@gmail.com'),
(3, 'fathan', 'bawahan selan', 'banjar', '085849320564', 'fatahn$gmail.com'),
(4, 'ucuk', 'sungai danau', 'martapura', '085754839290', 'ucuk@gmail.com'),
(5, 'soleh', 'mataraman', 'martapura', '0847475839', 'soleh@gmail');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `idpesan` int(5) NOT NULL,
  `tanggalpesan` varchar(50) NOT NULL,
  `idpelanggan` int(5) NOT NULL,
  `idpaket` varchar(50) NOT NULL,
  `jumlahpeserta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`idpesan`, `tanggalpesan`, `idpelanggan`, `idpaket`, `jumlahpeserta`) VALUES
(1, '08 1 2024', 1, 'Paket 3', '4'),
(2, '07 01 2024', 2, 'Paket 2', '5'),
(3, '08 01 2024', 3, 'Paket 2', '4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idpesan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
