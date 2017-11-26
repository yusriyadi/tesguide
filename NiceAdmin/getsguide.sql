-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Nov 2017 pada 01.29
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getsguide`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `basket`
--

CREATE TABLE `basket` (
  `id_b` int(11) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_dg` int(11) DEFAULT NULL,
  `id_dt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basket`
--

INSERT INTO `basket` (`id_b`, `id_job`, `id_dg`, `id_dt`) VALUES
(2, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_guide`
--

CREATE TABLE `detail_guide` (
  `id_dg` int(11) NOT NULL,
  `id_p` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `jns_kelamin` varchar(255) DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(255) DEFAULT NULL,
  `doc_ktp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_guide`
--

INSERT INTO `detail_guide` (`id_dg`, `id_p`, `nama`, `tgl_lahir`, `jns_kelamin`, `umur`, `alamat`, `telepon`, `email`, `no_ktp`, `doc_ktp`) VALUES
(1, 1, 'yusri', NULL, NULL, NULL, NULL, '082253663215', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_travel`
--

CREATE TABLE `detail_travel` (
  `id_dt` int(11) NOT NULL,
  `id_p` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_siup` varchar(255) DEFAULT NULL,
  `doc_siup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `detail_travel`
--

INSERT INTO `detail_travel` (`id_dt`, `id_p`, `nama`, `alamat`, `telepon`, `email`, `no_siup`, `doc_siup`) VALUES
(2, 2, 'travel jaya', NULL, '082253663215', NULL, NULL, NULL),
(3, 3, 'wildan', NULL, '082153487304', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `job`
--

CREATE TABLE `job` (
  `id_job` int(11) NOT NULL,
  `id_dt` int(11) DEFAULT NULL,
  `id_wisata` int(11) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `Id_p` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hak_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`Id_p`, `username`, `password`, `hak_akses`) VALUES
(1, 'yusri', '232323', 'y'),
(2, 'travel_jaya', '123456', 'travel'),
(3, 'wildan', '12345', 'guide');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_h` int(11) NOT NULL,
  `id_wisata` int(11) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_dg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama`, `kota`) VALUES
(1, '1234', 'aad'),
(2, 'aaaa', '12312wsdzsdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id_b`),
  ADD KEY `id_dt` (`id_dt`),
  ADD KEY `id_dg` (`id_dg`),
  ADD KEY `id_job` (`id_job`);

--
-- Indexes for table `detail_guide`
--
ALTER TABLE `detail_guide`
  ADD PRIMARY KEY (`id_dg`),
  ADD KEY `fk1` (`id_p`);

--
-- Indexes for table `detail_travel`
--
ALTER TABLE `detail_travel`
  ADD PRIMARY KEY (`id_dt`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id_job`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`Id_p`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_h`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_guide`
--
ALTER TABLE `detail_guide`
  MODIFY `id_dg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `detail_travel`
--
ALTER TABLE `detail_travel`
  MODIFY `id_dt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id_job` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `Id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_guide`
--
ALTER TABLE `detail_guide`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_p`) REFERENCES `pengguna` (`Id_p`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
