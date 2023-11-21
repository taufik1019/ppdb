-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2023 pada 03.49
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
(1, 'Admin PPDB', '1234567890', 'admin', '0c7540eb7e65b553ec1ba6b20de79608', 'Admin'),
(2, 'Dra. Hj. Rini Diah Herawati, M.Pd.', '0987654321', 'kepsek', 'd864774465da8063d5944f3a06336bcb', 'Kepsek'),
(3, 'Hj. Riyaningsih, S.Pd.', '02578789897', 'wawancara1', 'e2abbffda15f1a8fbb6a5b643759c3df', 'Wawancara'),
(4, 'Dra. Siti Aminah M.', '1029380123', 'wawancara2', 'faae632d47b78c32375fc20a140a3010', 'Wawancara'),
(5, 'Wasul Nuri, S.Hum.', '18923712', 'wawancara3', '458744cb130bb59922ec6512f0fee268', 'Wawancara'),
(6, 'Ris Arini', '98217319', 'bendahara', '43f052c92eed97d4728d54eed05f73b4', 'Bendahara'),
(7, 'Budi Anduk', '1902381', 'budi', '78e89e19d9992df929e519f197dff64e', 'Admin'),
(8, 'Suziyana, S.Pd.Si.', '0129830912', 'wawancara4', '8898a545720d2c9b7f8b41049360218f', 'Wawancara');

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
-- Struktur dari tabel `tb_bls_pesan`
--

CREATE TABLE `tb_bls_pesan` (
  `id_bls_pesan` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `id_pesan` int(5) NOT NULL,
  `status` text NOT NULL,
  `pesan` text NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bls_pesan`
--

INSERT INTO `tb_bls_pesan` (`id_bls_pesan`, `id_admin`, `id_pesan`, `status`, `pesan`, `tgl_konfirmasi`) VALUES
(2, 1, 2, 'Confirmation', 'Untuk Saat ini belum, masih daring', '2021-01-02 10:20:53'),
(3, 1, 5, 'Confirmation', 'Sekolah dimulai tanggal 4 januari 2020. Dan akan masih daring', '2021-01-02 10:22:15'),
(4, 1, 6, 'Confirmation', 'test`aja deh', '2021-01-10 12:44:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_catatan_kepsek`
--

CREATE TABLE `tb_catatan_kepsek` (
  `id_catatan_kepsek` int(5) NOT NULL,
  `id_admin` int(5) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_entry` datetime NOT NULL
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
(3, 1, 'Apabila calon siswa diminta hadir ke sekolah harap menerapkan protokol kesehatan (Jaga Jarak, Mencuci Tangan/Handsanitizer, Memakai Masker, Faceshield, dll)', '2021-01-19 13:14:13');

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
(30, 1, 51, 'Terdaftar', '', '2023-10-08 19:30:05');

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

--
-- Dumping data untuk tabel `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_admin`, `id_siswa`, `status_verifikasi`, `dana_pendidikan`, `infaq`, `spp`, `angsuran1`, `tgl_angsuran1`, `angsuran2`, `tgl_angsuran2`, `angsuran3`, `tgl_angsuran3`, `angsuran4`, `tgl_angsuran4`, `angsuran5`, `tgl_angsuran5`, `tgl_entry`, `status`, `status_pembayaran`, `metode_pembayaran`, `jumlah`) VALUES
(13, 4, 46, 'Cadangan', 'Rp. 3.800.000', 'Rp. 3.000.000', '400000', 'Rp. 500.000', '18-Jan-2021', '', '', '', '', '', '', '', '', '2021-01-29 13:23:31', 'Sudah Diproses', 'Diproses', 'Titip Dana', '7200000'),
(14, 4, 48, 'Diterima', 'Rp. 3.800.000', 'Rp. 3.000.000', '450000', 'Rp. 3.000.000', '18-Jan-2021', '', '', '', '', '', '', '', '', '2021-01-29 13:41:37', 'Sudah Diproses', 'Diproses', 'Titip Dana', '7250000'),
(15, 1, 74, 'Diterima', 'Rp. 3.700.000', 'Rp. 1.000.000', '300000', '50.000', '24-Sep-2023', '50.000', '24-Sep-2023', '100.000', '24-Sep-2023', '100.000', '24-Sep-2023', '', '', '2023-09-24 08:53:18', 'Sudah Diproses', 'Diproses', 'Lunas', '5000000'),
(16, 1, 40, 'Diterima', 'Rp. 3.800.000', 'Rp. 1.000.000', '300000', '50.000', '26-Sep-2023', '50.000', '26-Sep-2023', '100.000', '26-Sep-2023', '100.000', '26-Sep-2023', '', '', '2023-09-26 14:52:05', 'Sudah Diproses', 'Diproses', 'Lunas', '5100000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(5) NOT NULL,
  `nama_lengkap` text NOT NULL,
  `email` text NOT NULL,
  `judul` text NOT NULL,
  `pesan` text NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `nama_lengkap`, `email`, `judul`, `pesan`, `tgl_kirim`, `tgl_konfirmasi`, `status`) VALUES
(1, 'Hariangga Indrajatmiko', 'harianggasukses@gmail.com', 'Menanyakan Perihal Uang SPP', 'Kepada Yth Bapak / Ibu Pimpinan SMP 4 Muhammadiyah<br />\r\nSaya ingin menanyakan terkait<br />\r\n1. Uang SPP perbualan<br />\r\n2. Uang tambahan selama 1 tahun <br />\r\n<br />\r\nTerima kasih ', '2020-12-26 16:43:08', '0000-00-00 00:00:00', 'Confirmation'),
(2, 'Novianti Sukmawati', 'novianti_sukmawati@yahoo.co.id', 'Model Sekolah', 'Halo. Admin<br />\r\nSaya ingin tahu apakah sekolah ini akan menerapkan tatap muka atau sekolah secara daring / online<br />\r\n<br />\r\nTerima kasih atas jawabannya.. :)', '2020-12-26 16:45:11', '0000-00-00 00:00:00', 'Confirmation'),
(4, 'NAMA LENGKAP(Requirded)', '', 'JUDUL PESAN(Requirded)', 'PESAN YANG AKAN DISAMPAIKAN(Requirded)<br />\r\n', '2020-12-29 22:13:06', '0000-00-00 00:00:00', 'Confirmation'),
(5, 'Hariangga Indrajatmiko', 'harianggasukses@gmail.com', 'Kapan Sekolah Dimulai ?', 'Saya ingin bertanya kapan sekolaha akan dimulai ya bapak / ibu', '2021-01-01 21:07:03', '0000-00-00 00:00:00', 'Confirmation'),
(6, 'Budi` a', 'email`a@gmail.com', 'judul`pesan', 'pesan ` yang disampaikan', '2021-01-10 12:43:20', '0000-00-00 00:00:00', 'Confirmation');

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
(40, 'PPDB21-001', 'KANAYA ANGGITA MAHARANI', '234', 'YOGYAKARTA', '1970-01-01', '2', 'Islam', '1', '2', 'Anak Kandung', 'GUNUNGKETUR', '23456', 'SD N BALIREJO', '-', 'BALIREJO', '2021', '345', 'BABE', 'NUBI', 'BANTUL', '890', 'Peg. Swasta', 'Ibu Rumah Tangga', 'AAN', 'BANTUL', '678', 'Wiraswasta', '', '', '250', 'kanaya', 'Regular', 'kanaya', 'a8760058726188d1418b79ba46470559', '2021-01-29 11:12:48', '0000-00-00 00:00:00', 'Terdaftar', 'Siswa', 1, 'Diterima', 90, 85, 75, 'Bantul', '', 'GUNUNGKETUR', 'BANTUL', 'B'),
(41, 'PPDB21-002', 'BINTANG RAYHAN KAMIL', '123', 'YOGYAKARTA', '1970-01-01', '1', 'Islam', '1', '2', 'Anak Kandung', 'PAKUALAMAN', '3030', 'SD MUH DANUNEGARAN', '-', 'DANUNEGARAN', '2021', '12', 'ADI', 'IDA', 'PAKUALAMAN', '085228632118', 'Wiraswasta', 'Ibu Rumah Tangga', 'ARI', 'PAKUALAMAN', '0818123455', 'BUMN', '', '', '250', 'bintang', 'Regular', 'bintang', 'e06befd0e008141e9a946364e4e35d5a', '2021-01-29 11:16:12', '0000-00-00 00:00:00', 'Terdaftar', 'Siswa', 2, 'Belum', 90, 80, 80, 'Yogyakarta', '', 'PAKUALAMAN', 'PAKUALAMAN', 'B'),
(43, 'PPDB21-004', 'MAHRIZAL VRELINO', '', 'GUNUNGKIDUL', '2009-04-21', '1', 'Islam', '1', '2', 'Anak Kandung', 'SANGGRAHAN UH I/542 , RT 004 / RW 002 YOGYAKARTA 55166', '081393950375', 'SD MUH MILIRAN', '-', 'JL KENARI 304 MILIRAN ', '2021', '', 'SUPADI', 'SRI SUYATI', 'SANGGRAHAN UH I/542 , RT 004 / RW 002 YOGYAKARTA 55166', '081903746851', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'mahrizal', '7315693f4acefca209934849afcc8499', '2021-01-29 11:45:56', '2021-01-29 11:53:57', 'Terdaftar', 'Siswa', 4, 'Belum', 0, 0, 0, 'Yogyakarta', '', 'JL GONDOSULI NO.16 SANGGRAHAN SEMAKI UMBULHARJO YO', 'JL GONDOSULI NO.16 SANGGRAHAN SEMAKI UMBULHARJO YO', ''),
(45, 'PPDB21-006', 'RAZZAQ SYAHIDA PUTRA HERMANA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'razzaq', 'bbb07dd1e56491566c2673916acf349d', '2021-01-29 12:31:16', '0000-00-00 00:00:00', 'Terdaftar', 'Siswa', 6, 'Belum', 0, 0, 0, '', '', '', '', NULL),
(46, 'PPDB21-007', 'SAKURA KHANSA RAMADHANI', '', 'SLEMAN ', '2008-09-02', '2', 'Islam', '3', '3', 'Anak Kandung', 'SAPEN GK I/561 RT 018 / RW 006 YOGYAKARTA 55221', '081599020', 'SD MUH SAPEN', '-', 'JL BIMOKURDO NO.33', '2021', '', 'MUHAMMAD SENO AJI WIBOWO', 'ISSUMAWARNI', 'SAPEN GK I/561 RT 018 / RW 006 YOGYAKARTA 55221', '08159902090', 'Peg. Swasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'ICT', 'sakura', '989279d364f0361903846f441864dda4', '2021-01-29 12:31:48', '2021-01-29 13:03:14', 'Terdaftar', 'Siswa', 7, 'Cadangan', 0, 0, 0, 'Yogyakarta', '', 'SAPEN GK I/561 RT 018 / RW 006 YOGYAKARTA 55221', 'SAPEN GK I/561 RT 018 / RW 006 YOGYAKARTA 55221', ''),
(47, 'PPDB21-008', 'DHIA AQEELA SHADY', '123', 'SANGATTA', '2009-04-04', '2', 'Islam', '1', '2', 'Anak Kandung', 'JL. SWADAYA No. 29 RT : 035 KELURAHAN KARANG REJO KECAMATAN BALIKPAPAPAN TENGAH KOTA BALIKPAPAN PROPINSI KALIMANTAN TIMUR', '081807878901', 'SD MUHAMMADIYAH SAPEN', '-', 'Jl. BIMOKURDO SAPEN YOGYAKARTA', '', '', 'TREE SHADY SETYAWAN', 'PUJI ASTUTI', 'JL. SWADAYA No. 29 RT : 035 KELURAHAN KARANG REJO KECAMATAN BALIKPAPAPAN TENGAH KOTA BALIKPAPAN PROPINSI KALIMANTAN TIMUR', '081807878901', 'Peg. Swasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'aqeela', '2c91a5cf2d2a5f42aebee8a935c3bf4f', '2021-01-29 12:33:57', '2021-01-29 12:50:59', 'Terdaftar', 'Siswa', 8, 'Belum', 0, 0, 0, 'Lainnya', 'KALIMANTAN TIMUR', 'KUTAN RT 06 JATIREJO, LENDAH, KULON PROGO', 'KUTAN RT 06 JATIREJO, LENDAH, KULON PROGO', 'B'),
(48, 'PPDB21-009', 'RAIHANI ALYA FAUZIAH MACHDUN', '', 'Jakarta', '2021-07-08', '2', 'Islam', '1', '2', 'Anak Kandung', 'Dusun Kaum Rt 005 Rw 004 Panumbangan Kec Panumbangan Kab Ciamis Jawa Barat', '085725145866', 'SD Muhammadiyah Sapen', '-', 'Jl. Bimokurdo No 33 Yogyakarta', '', '', 'Machum Yudhastoro', '-', 'Dusun Kaum Rt 005 Rw 004 Panumbangan Kec Panumbangan Kab Ciamis Jawa Barat', '085725145866', 'Peg. Swasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'ICT', 'raihani', '7fcffefff6b8742b48db8dacb091bf24', '2021-01-29 12:39:02', '2021-01-29 13:23:44', 'Terdaftar', 'Siswa', 9, 'Diterima', 0, 0, 0, 'Lainnya', 'Ciamis', 'Jl. Laksda Adisucipto No 153 Ambarukmo CT Depok Sl', 'Jl. Laksda Adisucipto No 153 Ambarukmo CT Depok Sl', ''),
(51, 'PPDB21-012', 'RR SYIFA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'syifa', '17c95ef4bc77b6aa5235963ace9ec18b', '2021-01-29 12:57:05', '0000-00-00 00:00:00', 'Terdaftar', 'Siswa', 12, 'Belum', 0, 0, 0, '', '', '', '', NULL),
(52, 'PPDB21-013', 'NISA ARIBA HASANAH', '', '-', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', 'CELEBAN BARU UH 3/633 YOGYAKARTA', '085102170256', 'SD MUH PAKEL', '-', 'PAKEL', '2021', '', '-', '-', 'CELEBAN BARU UH 3/633 YOGYAKARTA', '085102170256', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'nisa', '8d196080fc71f1b0524188e769f3855d', '2021-01-29 13:00:33', '2021-01-29 13:03:35', 'Baru', 'Siswa', 13, '', 0, 0, 0, 'Yogyakarta', '', 'CELEBAN BARU UH 3/633 YOGYAKARTA', 'CELEBAN BARU UH 3/633 YOGYAKARTA', ''),
(53, 'PPDB21-014', 'KARINA RAHMAWATI', '', '-', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', 'JL RETNO INTEN  3855 REJOWINANGUN YOGYAKARTA', '085868860363', 'SD MUH SURONATAN', '-', '-', '2021', '', '-', '-', 'JL RETNO INTEN  3855 REJOWINANGUN YOGYAKARTA', '085868860363', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'karina', '65023daf101205ecf0330f8736f45fae', '2021-01-29 13:04:18', '2021-01-29 13:08:33', 'Baru', 'Siswa', 14, '', 0, 0, 0, 'Yogyakarta', '', 'JL RETNO INTEN  3855 REJOWINANGUN YOGYAKARTA', 'JL RETNO INTEN  3855 REJOWINANGUN YOGYAKARTA', ''),
(54, 'PPDB21-015', 'CHALISA IZZATY PUTRI', '1900', 'SIDOARJO', '2009-01-19', '2', 'Islam', '1', '2', 'Anak Kandung', 'JL NAKULO 81 SOKOWATEN PLUMBON RT 003 / RW - BANGUNTAPAN BANTUL 55198', '081804122148', 'SD N SOKOWATEN', '-', 'JL ARIMBI NO 27 BANGUNTAPAN BANTUL ', '2021', '', 'SIGIT NOVIANTO SUHARDI , SE.,M.MT', 'CHRISTINE RATNA PUSPITASARI , SE', 'JL NAKULO 81 SOKOWATEN PLUMBON RT 003 / RW - BANGUNTAPAN BANTUL 55198', '081804122148', 'PNS', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'ICT', 'chalisa', 'f458dfad5825b440d278d8c0e02f438c', '2021-01-29 13:10:34', '2021-01-29 13:16:51', 'Baru', 'Siswa', 15, '', 0, 0, 0, 'Bantul', '', 'JL LARASATI NO 8 SOROWAJAN BARU BANTUL ', 'JL LARASATI NO 8 SOROWAJAN BARU BANTUL ', ''),
(55, 'PPDB21-016', 'JHEVANNO ALLAN WANGSAFYUDIN', '', 'YOGYAKARTA', '2009-02-05', '1', 'Islam', '1', '1', 'Anak Kandung', 'DUSUN CIMANGGU RT 001 / RW 001 , BATULAWANG  , PATURAMAN KOTA BANJAR JAWA BARAT 46326', '085100932290', 'SD MUH SOKONANDI ', '-', '-', '2021', '', 'AGUS SAFYUDIN', 'WIWIK YULIANTI', 'DUSUN CIMANGGU RT 001 / RW 001 , BATULAWANG  , PATURAMAN KOTA BANJAR JAWA BARAT 46326', '085100932290', 'Wiraswasta', 'Wiraswasta', '', '', '', '-', '', '', '', '', 'Regular', 'jhevano', 'e0af67617ccc06d3253eb903cc91f32c', '2021-01-29 13:19:08', '2021-01-29 13:25:11', 'Baru', 'Siswa', 16, '', 0, 0, 0, 'Lainnya', 'JAWABARAT', 'JL GONDOSULI NO 20 B YOGYAKARTA', 'JL GONDOSULI NO 20 B YOGYAKARTA', ''),
(56, 'PPDB21-017', 'KIRANA DESTANA PUSPITA BANGSA', '', '-', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', '-', '085102145992', 'SD MUH WARUNGBOTO', '-', '-', '2021', '', '-', '-', '-', '085102145992', 'Wiraswasta', 'Wiraswasta', '', '', '', '-', '', '', '', '', 'Regular', 'kirana', '84347c74f4fc50abf9e9f69d970d59a7', '2021-01-29 13:26:52', '2021-01-29 13:28:58', 'Baru', 'Siswa', 17, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(57, 'PPDB21-018', 'M ALFARREL DIDA MAULANA', '', '-', '1970-01-01', '1', 'Islam', '1', '1', 'Anak Kandung', '-', '081329880084', 'SD MUH NITIKAN', '-', '-', '2021', '', '-', '-', '-', '081329880084', 'TNI/POLRI', 'Wiraswasta', '', '', '', '-', '', '', '', '', 'Regular', 'alfarrel', 'e93240e4f3f1f0d80ab0d53e3bfc01f3', '2021-01-29 13:33:27', '2021-01-29 13:35:49', 'Baru', 'Siswa', 18, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(60, 'PPDB21-019', 'RIZKA AYU RAMADHANI', '', '-', '1970-01-01', '2', 'Islam', '-', '-', 'Anak Kandung', '-', '08994139309', 'SD Muhammadiyah Sapen', '-', 'Sapen Yk', '', '', '-', '-', '-', '08994139309', 'Peg. Swasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'rizka', '123ad3ee80d888a855682ab5faac5604', '2021-01-29 13:42:50', '2021-01-29 13:47:09', 'Baru', 'Siswa', 19, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(61, 'PPDB21-020', 'JELITA ANGGRAENI', '', '-', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', '-', '087739675660', 'SD MUH SAPEN', '-', '-', '2021', '', '-', '-', '-', '087739675660', 'Wiraswasta', 'Wiraswasta', '', '', '', '-', '', '', '', '', 'Regular', 'jelita', '70772b8eee398e98189b2e78083a16d2', '2021-01-29 13:44:44', '2021-01-29 13:51:10', 'Baru', 'Siswa', 20, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(64, 'PPDB21-022', 'RISMA AMELIA', '', '-', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', 'MINGGIRAN MJ 2 / 1438 RT 58 RW 16  YOGYAKARTA', '08179419893', 'SD N SURYODININGRATAN 1', '-', '-', '2021', '', '-', '-', '-', '-', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'risma', '093362998f21d0bcd92bcea1bf03d610', '2021-01-29 13:53:18', '2021-01-29 13:55:51', 'Baru', 'Siswa', 22, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(65, 'PPDB21-023', 'ARDYTA KUSUMANINGRUM', '718', 'TANAH GROGOT', '2008-08-01', '2', 'Islam', '1', '3', 'Anak Kandung', 'PILAHAN RT 041 RW 013 KELURAHAN REJOWINANGUN KECAMATAN KOTAGEDE  KOTA YOGYAKARTA', '081225612689', 'SD MUH MILIRAN', '-', 'Jl. KENARI 304 MILIRAN YOGYAKARTA', '2021', '', 'TEDDY WINDIARTONO', 'JUANITA INDAH SURYANI PANDHORA', 'PILAHAN RT 041 RW 013 KELURAHAN REJOWINANGUN KECAMATAN KOTAGEDE  KOTA YOGYAKARTA', '081225612689', 'PNS', 'PNS', '', '', '', '-', '', '', '', '', 'Regular', 'ardyta', '5dac837c7346e4c528db297cde0ff3e8', '2021-01-29 13:56:56', '2021-01-29 14:07:46', 'Baru', 'Siswa', 23, '', 0, 0, 0, 'Lainnya', 'KLATEN', 'PILAHAN RT 041 RW 013 KELURAHAN REJOWINANGUN KECAM', 'PILAHAN RT 041 RW 013 KELURAHAN REJOWINANGUN KECAM', ''),
(66, 'PPDB21-024', 'DHIVO PRATAMA HERLAMBANG', '', '-', '1970-01-01', '1', 'Islam', '1', '1', 'Anak Kandung', 'KAUMAN GM I / 182 YOGYAKARTA', '081802797488', 'SD MUH SURYOWIJAYAN', '-', '-', '2021', '', '-', '-', '-', '081802797488', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'dhifo', '0d94a556d2e8b1a545234395e3520aa9', '2021-01-29 13:57:51', '2021-01-29 14:01:00', 'Baru', 'Siswa', 24, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(67, 'PPDB21-025', 'GALUH NADYA SEKARLANGIT', '', 'Kulon Progo', '1970-01-01', '2', 'Islam', '1', '1', 'Anak Kandung', 'Macanan DN.3/418 Rt 023 Rw 006 Bausasran Kec Danurejan Kab Kota Yogyakarta', '081225495249', 'SD Muhammadiyah Karangkajen IV', '-', 'Karangkajen', '', '', 'Budi Marwanto', 'Early Ika Fatmawati', 'Macanan DN.3/418 Rt 023 Rw 006 Bausasran Kec Danurejan Kab Kota Yogyakarta', '081225495249', 'Peg. Swasta', 'Peg. Swasta', '', '', '', '-', '', '', '', '', 'Regular', 'galuh', '631fdc22937136b5952e17c301bf6e12', '2021-01-29 13:59:49', '2021-01-29 14:04:10', 'Baru', 'Siswa', 25, '', 0, 0, 0, 'Lainnya', 'Bekasi', 'Macanan DN.3/418 Rt 023 Rw 006 Bausasran Kec Danur', 'Macanan DN.3/418 Rt 023 Rw 006 Bausasran Kec Danur', ''),
(68, 'PPDB21-026', 'FAUSTA AL GHAZY', '', '-', '1970-01-01', '1', 'Islam', '1', '1', 'Anak Kandung', 'KARANGKAJEN NO 919 RT 51 RW 14 BRONTOKUSUMAN , MERGANGSAN YOGYAKARTA', '081229825077', 'SD MUH KARANGKAJEN', '-', '-', '2021', '', '-', '-', '-', '081229825077', 'Wiraswasta', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'Regular', 'fausta', '3f87cfcc953496d3e53148f5e63f44c3', '2021-01-29 14:01:50', '2021-01-29 14:04:17', 'Baru', 'Siswa', 26, '', 0, 0, 0, 'Yogyakarta', '', '-', '-', ''),
(69, 'PPDB21-027', 'WISNU MAHENDRA WAHYUDI', '', 'BALIKPAPAN', '2009-05-18', '1', 'Islam', '1', '2', 'Anak Kandung', 'JL GURAMI NO.44 RT 047 , RW 012 SOROSUTAN UMBULHARJO YOGYAKARTA 55162', '0274376662', 'SD BUDI MULIA DUA', '-', 'PANJEN WEDOMARTANI NGEMPLAK SLEMAN DIY', '2021', '', 'RACHMAT TRI WAHYUDI', 'SHANTY PRATIWI ,SE', 'JL GURAMI NO.44 RT 047 , RW 012 SOROSUTAN UMBULHARJO YOGYAKARTA 55162', '081254226225', 'BUMN', 'Ibu Rumah Tangga', '', '', '', '-', '', '', '', '', 'ICT', 'wisnu', 'b60fc494af15e87f155333f69a57489f', '2021-01-29 14:05:21', '2021-01-29 14:11:52', 'Baru', 'Siswa', 27, '', 0, 0, 0, 'Lainnya', 'BLORA', 'JL GURAMI NO.44 RT 047 , RW 012 SOROSUTAN UMBULHAR', 'JL GURAMI NO.44 RT 047 , RW 012 SOROSUTAN UMBULHAR', ''),
(71, 'PPDB21-029', 'KAUSTA HABIBAH', '', 'BELITUNG', '2008-07-08', '2', 'Islam', '1', '2', 'Anak Kandung', 'Jl. GAMBIRAN No. 96a PANDEYAN UMBULHARJO', '', 'SDN TANJUNG PANDAN', '-', 'TANJUNG PANDAN BELITUNG', '', '', '-', '-', 'Jl. GAMBIRAN No. 96a PANDEYAN UMBULHARJO', '085732474576', 'Wiraswasta', 'Wiraswasta', '', '', '', '-', '', '', '', '', 'Regular', 'kausta', 'c6e3f5e73335f2e85fa0309add85678f', '2021-01-29 14:09:28', '2021-01-29 14:25:16', 'Baru', 'Siswa', 29, '', 0, 0, 0, 'Lainnya', 'BELITUNG', 'Jl. GAMBIRAN No. 96a PANDEYAN UMBULHARJO', 'Jl. GAMBIRAN No. 96a PANDEYAN UMBULHARJO', 'A'),
(73, 'PPDB21-031', 'Coba1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'coba1@gmail.com', '', 'coba1', '2ce3f3bd2d1c37733aee2c648b675139', '2021-01-30 19:11:28', '0000-00-00 00:00:00', 'Baru', 'Siswa', 31, '', 0, 0, 0, '', '', '', '', NULL),
(74, 'PPDB21-032', 'Taufik Andri Rahman', '0001234', 'Sumedang', '2000-01-10', '1', 'Islam', '2', '4', 'Anak Kandung', 'Sumedang utara', '082127017691', 'SDN Pamarisen', '-', 'Sumedang', '2012', '123456', 'Dede suhara', 'lilis Farida', 'Sumedang', '082127017692', 'Wiraswasta', 'Ibu Rumah Tangga', 'yayah', 'Bandung', '0821767477456', 'Ibu Rumah Tangga', 'Profil.JPG', '2022-11-07 (1).png', '98', 'taufik@gmail.com', 'ICT', 'Taufik', 'b714337aa8007c433329ef43c7b8252c', '2023-09-24 08:42:00', '2023-10-08 17:03:03', 'Terdaftar', 'Siswa', 32, 'Diterima', 75, 74, 80, 'Lainnya', 'Bandung', 'Yogyakarta', 'Sumedang', 'O'),
(75, 'PPDB21-033', 'Taufik Andri Rahman', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ofik', 'b714337aa8007c433329ef43c7b8252c', '2023-10-15 08:34:26', '0000-00-00 00:00:00', 'Baru', 'Siswa', 33, '', 0, 0, 0, '', '', '', '', NULL);

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
-- Indeks untuk tabel `tb_bls_pesan`
--
ALTER TABLE `tb_bls_pesan`
  ADD PRIMARY KEY (`id_bls_pesan`);

--
-- Indeks untuk tabel `tb_catatan_kepsek`
--
ALTER TABLE `tb_catatan_kepsek`
  ADD PRIMARY KEY (`id_catatan_kepsek`);

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
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

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
-- AUTO_INCREMENT untuk tabel `tb_bls_pesan`
--
ALTER TABLE `tb_bls_pesan`
  MODIFY `id_bls_pesan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_catatan_kepsek`
--
ALTER TABLE `tb_catatan_kepsek`
  MODIFY `id_catatan_kepsek` int(5) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
