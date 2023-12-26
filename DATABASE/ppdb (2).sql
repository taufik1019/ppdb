-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Des 2023 pada 01.11
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
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(5) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('Admin','Kepsek','Wawancara','Bendahara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `nip`, `username`, `password`, `status`) VALUES
(1, 'Admin PPDB', '1234567890', 'admin', '0c7540eb7e65b553ec1ba6b20de79608', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_biaya`
--

CREATE TABLE `tb_biaya` (
  `id_biaya` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `biaya` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id_informasi` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `informasi` text NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_informasi`
--

INSERT INTO `tb_informasi` (`id_informasi`, `id_admin`, `informasi`, `tgl_input`) VALUES
(1, 1, 'Apabila calon siswa dinyatakan diterima, mohon sekiranya segera melakukan Wawancara dan Pembayaran', '2021-01-19 13:12:59'),
(3, 1, ',jgnhgh', '2023-12-15 20:49:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konfirmasi_pendaftaran`
--

CREATE TABLE `tb_konfirmasi_pendaftaran` (
  `id_konfirmasi_pendaftaran` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `status` varchar(100) NOT NULL,
  `pesan` varchar(10000) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konfirmasi_pendaftaran`
--

INSERT INTO `tb_konfirmasi_pendaftaran` (`id_konfirmasi_pendaftaran`, `id_admin`, `id_siswa`, `status`, `pesan`, `tgl_konfirmasi`) VALUES
(20, 4, 48, 'Terdaftar', 'Sudah Wawancara', '2021-01-29 13:35:37'),
(21, 4, 46, 'Terdaftar', 'sudah wawancara', '2021-01-29 13:13:11'),
(22, 1, 40, 'Terdaftar', '', '2023-09-26 14:50:55'),
(23, 1, 41, 'Terdaftar', '', '2023-10-08 19:09:00'),
(25, 1, 74, 'Terdaftar', '', '2023-09-24 08:51:05'),
(27, 1, 43, 'Terdaftar', '', '2023-10-08 19:16:15'),
(28, 1, 45, 'Terdaftar', '', '2023-10-08 19:17:09'),
(29, 1, 47, 'Terdaftar', '', '2023-10-08 19:24:12'),
(30, 1, 51, 'Terdaftar', '', '2023-10-08 19:30:05'),
(31, 1, 52, 'Terdaftar', '', '2023-10-21 12:44:31'),
(32, 1, 53, 'Sedang Diproses', '', '0000-00-00 00:00:00'),
(33, 1, 81, 'Terdaftar', '', '2023-12-25 09:48:32'),
(34, 1, 80, 'Batal Mendaftar', '', '2023-12-25 09:52:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(5) NOT NULL,
  `id_admin` int(10) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `status_verifikasi` text NOT NULL,
  `dana_pendidikan` text NOT NULL,
  `infaq` text NOT NULL,
  `spp` text NOT NULL,
  `angsuran1` varchar(50) NOT NULL,
  `tgl_angsuran1` datetime NOT NULL,
  `angsuran2` varchar(50) NOT NULL,
  `tgl_angsuran2` datetime NOT NULL,
  `angsuran3` varchar(50) NOT NULL,
  `tgl_angsuran3` datetime NOT NULL,
  `angsuran4` varchar(50) NOT NULL,
  `tgl_angsuran4` datetime NOT NULL,
  `angsuran5` varchar(50) NOT NULL,
  `tgl_angsuran5` datetime NOT NULL,
  `tgl_entry` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_pembayaran` varchar(50) NOT NULL,
  `metode_pembayaran` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_admin`, `id_siswa`, `status_verifikasi`, `dana_pendidikan`, `infaq`, `spp`, `angsuran1`, `tgl_angsuran1`, `angsuran2`, `tgl_angsuran2`, `angsuran3`, `tgl_angsuran3`, `angsuran4`, `tgl_angsuran4`, `angsuran5`, `tgl_angsuran5`, `tgl_entry`, `status`, `status_pembayaran`, `metode_pembayaran`, `jumlah`) VALUES
(13, 4, 46, 'Cadangan', 'Rp. 3.800.000', 'Rp. 3.000.000', '400000', 'Rp. 500.000', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2021-01-29 13:23:31', 'Sudah Diproses', 'Diproses', 'Titip Dana', 7200000),
(14, 4, 48, 'Diterima', 'Rp. 3.800.000', 'Rp. 3.000.000', '450000', 'Rp. 3.000.000', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2021-01-29 13:41:37', 'Sudah Diproses', 'Diproses', 'Titip Dana', 7250000),
(15, 1, 74, 'Diterima', 'Rp. 3.700.000', 'Rp. 1.000.000', '300000', '50.000', '0000-00-00 00:00:00', '50.000', '0000-00-00 00:00:00', '100.000', '0000-00-00 00:00:00', '100.000', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2023-09-24 08:53:18', 'Sudah Diproses', 'Diproses', 'Lunas', 5000000),
(16, 1, 40, 'Diterima', 'Rp. 3.800.000', 'Rp. 1.000.000', '300000', '50.000', '0000-00-00 00:00:00', '50.000', '0000-00-00 00:00:00', '100.000', '0000-00-00 00:00:00', '100.000', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2023-09-26 14:52:05', 'Sudah Diproses', 'Diproses', 'Lunas', 5100000),
(17, 1, 41, 'Diterima', 'Rp. 3.700.000', 'Rp. 1.000.000', '300000', '2', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '2023-10-21 14:03:26', 'Sudah Diproses', 'Diproses', 'Lunas', 5000000),
(18, 1, 45, '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Sedang Diproses', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(5) NOT NULL,
  `no_pendaftaran` text NOT NULL,
  `nama_siswa` text NOT NULL,
  `nisn` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `agama` text NOT NULL,
  `anak_ke` text NOT NULL,
  `dari` text NOT NULL,
  `status_dalam_keluarga` text NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telepon` text NOT NULL,
  `sekolah_asal` text NOT NULL,
  `nama_sekolah` text NOT NULL,
  `alamat` text NOT NULL,
  `sttb_tahun` text NOT NULL,
  `sttb_nomor` text NOT NULL,
  `nama_ayah` text NOT NULL,
  `nama_ibu` text NOT NULL,
  `alamat_ortu` text NOT NULL,
  `telepon_ortu` text NOT NULL,
  `kerja_ayah` text NOT NULL,
  `kerja_ibu` text NOT NULL,
  `nama_wali` text NOT NULL,
  `alamat_wali` text NOT NULL,
  `telepon_wali` text NOT NULL,
  `pekerjaan_wali` text NOT NULL,
  `foto` text NOT NULL,
  `foto_skhu` text NOT NULL,
  `jumlah_nilai` text NOT NULL,
  `email_aktif` text NOT NULL,
  `kelas` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `tgl_entry` datetime NOT NULL,
  `tgl_update` datetime NOT NULL,
  `status` text NOT NULL,
  `status_user` enum('Siswa','Null') NOT NULL,
  `auto_id` int(5) NOT NULL,
  `status_pembayaran` text NOT NULL,
  `bind` int(11) NOT NULL,
  `mtk` int(11) NOT NULL,
  `ipa` int(11) NOT NULL,
  `asal_ortu` varchar(50) NOT NULL,
  `asal_lain` varchar(50) NOT NULL,
  `domisili_siswa` varchar(100) NOT NULL,
  `domisili_ortu` varchar(100) NOT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `no_pendaftaran`, `nama_siswa`, `nisn`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `anak_ke`, `dari`, `status_dalam_keluarga`, `alamat_siswa`, `telepon`, `sekolah_asal`, `nama_sekolah`, `alamat`, `sttb_tahun`, `sttb_nomor`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `telepon_ortu`, `kerja_ayah`, `kerja_ibu`, `nama_wali`, `alamat_wali`, `telepon_wali`, `pekerjaan_wali`, `foto`, `foto_skhu`, `jumlah_nilai`, `email_aktif`, `kelas`, `username`, `password`, `tgl_entry`, `tgl_update`, `status`, `status_user`, `auto_id`, `status_pembayaran`, `bind`, `mtk`, `ipa`, `asal_ortu`, `asal_lain`, `domisili_siswa`, `domisili_ortu`, `golongan_darah`) VALUES
(74, 'PPDB21-032', 'Taufik Andri Rahman', '0001234', 'Sumedang', '2000-01-10', '1', 'Islam', '2', '4', 'Anak Kandung', 'Sumedang utara', '082127017691', 'SDN Pamarisen', '-', 'Sumedang', '2012', '123456', 'Dede suhara', 'lilis Farida', 'Sumedang', '082127017692', 'Wiraswasta', 'Ibu Rumah Tangga', 'yayah', 'Bandung', '0821767477456', 'Ibu Rumah Tangga', 'Profil.JPG', '2022-11-07 (1).png', '98', 'taufik@gmail.com', 'ICT', 'Taufik', 'b714337aa8007c433329ef43c7b8252c', '2023-09-24 08:42:00', '2023-12-26 07:06:57', 'Terdaftar', 'Siswa', 32, 'Diterima', 74, 75, 80, '', '', 'Yogyakarta', 'Sumedang', 'O'),
(78, 'PPDB23-036', 'bila', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bila@gmail.com', '', 'bila', 'b714337aa8007c433329ef43c7b8252c', '2023-12-14 21:04:40', '0000-00-00 00:00:00', 'Baru', 'Siswa', 36, '', 0, 0, 0, '', '', '', '', NULL),
(79, 'PPDB23-037', 'pita', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'pita@gmail.com', '', 'pita', 'b714337aa8007c433329ef43c7b8252c', '2023-12-19 15:58:10', '0000-00-00 00:00:00', 'Baru', 'Siswa', 37, '', 0, 0, 0, '', '', '', '', NULL),
(80, 'PPDB23-038', 'akbar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'akbar@gmail.com', '', 'akbar', 'b714337aa8007c433329ef43c7b8252c', '2023-12-25 09:01:45', '0000-00-00 00:00:00', 'Batal Mendaftar', 'Siswa', 38, 'Belum', 0, 0, 0, '', '', '', '', NULL),
(81, 'PPDB23-039', 'Fikofiktaufik10@gmail.com', '12345', 'sumedang', '2023-12-05', '1', 'Islam', '2', '4', 'Anak Kandung', 'Sumedang', '082127017691', 'smp 4', '-', 'yogyakarta', '2356', '1234567', 'dede', 'lilis', 'sumedang', '082127017691', 'TNI/POLRI', 'Wiraswasta', 'farida', 'sumedang', '082127017699', 'BUMN', 'Profil.JPG', '', '98', 'Fikofiktaufik10@gmail.com', 'Regular', 'upik', 'b714337aa8007c433329ef43c7b8252c', '2023-12-25 09:25:46', '2023-12-25 09:45:00', 'Terdaftar', 'Siswa', 39, 'Belum', 80, 75, 88, 'Lainnya', 'jawa barat', 'Sumedang', 'sumedang', 'A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_biaya`
--
ALTER TABLE `tb_biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indeks untuk tabel `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `tb_konfirmasi_pendaftaran`
--
ALTER TABLE `tb_konfirmasi_pendaftaran`
  ADD PRIMARY KEY (`id_konfirmasi_pendaftaran`);

--
-- Indeks untuk tabel `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_biaya`
--
ALTER TABLE `tb_biaya`
  MODIFY `id_biaya` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id_informasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_konfirmasi_pendaftaran`
--
ALTER TABLE `tb_konfirmasi_pendaftaran`
  MODIFY `id_konfirmasi_pendaftaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
