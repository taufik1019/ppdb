-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2023 pada 09.21
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
  `nama_lengkap` text NOT NULL,
  `nip` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konfirmasi_pendaftaran`
--

CREATE TABLE `tb_konfirmasi_pendaftaran` (
  `id_konfirmasi_pendaftaran` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `status` text NOT NULL,
  `pesan` text NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `angsuran1` text NOT NULL,
  `tgl_angsuran1` text NOT NULL,
  `angsuran2` text NOT NULL,
  `tgl_angsuran2` text NOT NULL,
  `angsuran3` text NOT NULL,
  `tgl_angsuran3` text NOT NULL,
  `angsuran4` text NOT NULL,
  `tgl_angsuran4` text NOT NULL,
  `angsuran5` text NOT NULL,
  `tgl_angsuran5` text NOT NULL,
  `tgl_entry` datetime NOT NULL,
  `status` text NOT NULL,
  `status_pembayaran` text NOT NULL,
  `metode_pembayaran` text NOT NULL,
  `jumlah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id_konfirmasi_pendaftaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
