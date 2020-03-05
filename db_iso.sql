-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 03:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_iso`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_mutu`
--

CREATE TABLE `form_mutu` (
  `id` int(11) NOT NULL,
  `kode` varchar(64) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `id_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_mutu`
--

INSERT INTO `form_mutu` (`id`, `kode`, `judul`, `file`, `id_pk`) VALUES
(1, 'FM.BALITTAS.WP.2.2.01', 'Program Audit Internal', 'FM.WP.2.2.01 PROGRAM AUDIT INTERNAL.doc', 1),
(2, 'FM.BALITTAS.WP.2.2.02', 'Jadwal Audit Internal', 'FM.WP.2.2.02 JADWAL AUDIT INTERNAL.doc', 1),
(3, 'FM.BALITTAS.WP.2.2.03', 'Checklist Audit Internal', 'FM.WP.2.2.03 CHECKLIST AUDIT INTERNAL.doc', 1),
(4, 'FM.BALITTAS.WP.2.2.04', 'Rekapitulasi PTKP Audit Internal', 'FM.WP.2.2.04 REKAPITULASI.doc', 1),
(5, 'FM.BALITTAS.WP.2.2.05', 'Laporan Audit Internal', 'FM.WP.2.2.05 LAPORAN AUDIT INTERNAL.doc', 1),
(6, 'FM.BALITTAS.WP.2.2.06', 'Evaluasi Efektifitas Audit', 'FM.WP.2.2.06 Evaluasi Aktivitas audit.doc', 1),
(7, 'FM.BALITTAS.JP.2.1.01', 'Tinjauan Order', 'FM.WP.2.1.01 USULAN PERUBAHAN DOKUMEN.doc', 2),
(8, 'FM.BALITTAS.JP.2.1.02', 'Pemeriksaan Persiapan Publikasi', 'FM.JP.2.1.02 PEMERIKSAAN PERSIAPAN PUBLIKASI.doc', 2),
(9, 'FM.BALITTAS.JP.2.1.03', 'Persiapan Pameran', 'FM.JP.2.1.03 PERSIAPAN PAMERAN.doc', 2),
(10, 'FM.BALITTAS.JP.2.1.04', 'Laporan Kegiatan', 'FM.JP.2.1.04 LAPORAN KEGIATAN.doc', 2),
(11, 'FM.BALITTAS.JP.2.1.05', 'Persetujuan Magang, PKL, dan Penelitian', 'FM.JP.2.1.05 PERSETUJUAN MAGANG, PKL, DAN PENELITIAN.R2.doc', 2),
(12, 'FM.BALITTAS.JP.2.1.06', 'Persetujuan Pengiriman Naskah', 'FM.JP.2.1.06 PERSETUJUAN PENGIRIMAN NASKAH.R3.doc', 2),
(13, 'FM.BALITTAS.JP.2.1.07', 'Publikasi Hasil Penelitian/Review', 'FM.JP.2.1.07 PUBLIKASI HASIL PENELITIAN DILUAR BALAI.R3.doc', 2),
(14, 'FM.BALITTAS.WP.2.1.01', 'Usulan Perubahan Dokumen', 'FM.WP.2.1.01 USULAN PERUBAHAN DOKUMEN.doc', 3),
(15, 'FM.BALITTAS.WP.2.1.02', 'Daftar Induk Dokumen', 'FM.WP.2.1.02 DAFTAR INDUK DOKUMEN.doc', 3),
(16, 'FM.BALITTAS.WP.2.1.03', 'Distribusi Dokumen', 'FM.WP.2.1.03 DISTRIBUSI DOKUMEN.doc', 3),
(17, 'FM.BALITTAS.WP.2.1.04', 'Daftar Dokumen Eksternal', 'FM.WP.2.1.04 DAFTAR  DOKUMEN  EKSTERNAL.doc', 3),
(18, 'FM.BALITTAS.WP.2.1.05', 'Berita Acara Pemusnahan Dokumen', 'FM.WP.2.1.05 BERITA ACARA PEMUSNAHAN DOKUMEN.doc', 3),
(19, 'FM.BALITTAS.WP.2.1.06', 'Daftar Rekaman Mutu', 'FM.WP.2.1.06 DAFTAR REKAMAN MUTU.doc', 3),
(20, 'FM.BALITTAS.YT.2.4.01', 'Surat Permohonan Pengajuan Lahan Penelitian', 'FM.YT.2.4.01 SURAT PERMOHONAN PENGAJUAN LAHAN PENELITIAN.doc', 4),
(21, 'FM.BALITTAS.YT.2.4.02', 'Tinjauan Order Pelaksanaan Kegiatan Penelitian', 'FM.YT.2.4.02 TINJAUAN ORDER PELAKSANAAN PENELITIAN.revisi.3.doc', 4),
(22, 'FM.BALITTAS.YT.2.4.03', 'Rencana Pembelian Barang', 'FM.YT.2.4.03 RENCANA PEMBELIAN BARANG.doc', 4),
(23, 'FM.BALITTAS.YT.2.4.04', 'Rencana Penggunaan Tenaga Kerja', 'FM.YT.2.4.04 RENCANA  PENGGUNAAN TENAGA KERJA.doc', 4),
(24, 'FM.BALITTAS.YT.2.4.05', 'Pemantauan Pelaksanaan Kegiatan Lapang', 'FM.YT.2.4.05 PEMANTAUAN PELAKS KEGIATAN LAPANG  REVIISI.doc', 4),
(25, 'FM.BALITTAS.YT.2.4.06', 'Pengajuan Barang', 'FM.YT.2.4.06 PENGAJUAN BARANG.doc', 4),
(26, 'FM.BALITTAS.YT.2.4.07', 'Buku Tamu Kebun Percobaan', 'FM.YT.2.4.07 KUNJUNGAN TAMU.doc', 4),
(27, 'FM.BALITTAS.YT.2.4.08', 'Data Penggunaan Lahan di Kerbun Percobaan', 'FM.YT.2.4.08 DATA PENGGUNAAN LAHAN DI KP. KARANGPLOSO.doc', 4),
(28, 'FM.BALITTAS.YT.2.4.09', 'Daftar Kegiatan Penelitian dan Sumber Daya Dukungannya di Kebun Percobaan', 'FM.YT.2.4.09 DAFTAR KEG PENELITIAN DAN SD DUKUNG-EDIT.doc', 4),
(29, 'FM.BALITTAS.YT.2.4.10', 'Kuisioner Kepuasan Pelanggan', 'FM.YT.2.4.10 KUISIONER KEPUASAN PELANGGAN.doc', 4),
(30, 'FM.BALITTAS.YT.2.4.11', 'Buku Instruksi Kegiatan Penelitian', 'FM.YT.2.4.11 BUKU INSTRUKSI KEG PENELITIAN-EDIT.doc', 4),
(31, 'FM.BALITTAS.YT.2.4.12', 'Daftar Inventaris Alat Ukur dan Pemeliharaannya', 'FM.YT.2.4.12 DAFTAR INVENT ALAT UKUR DAN PEMELIHARAANNYA.doc', 4),
(32, 'FM.BALITTAS.YT.2.4.13', 'Pemeliharaan Alat Operasional', 'FM.YT.2.4.13 PEMELIHARAAN ALAT OPERASIONAL.doc', 4),
(33, 'FM.BALITTAS.YT.2.4.14', 'Ketetapan Persyaratan Kompetensi Tenaga Kontrak/Harian Lepas', 'FM.YT.2.4.14 PERSYARATAN KOMPETENSI PENYEDIA EKSTERNAL.doc', 4),
(34, 'FM.BALITTAS.YT.2.4.15', 'Evaluasi Kinerja Tenaga Kontrak/Harian Lepas Kebun Percobaan', 'FM.YT.2.4.15 EVALUASI KINERJA TENAGA KONTRAK-HARIAN LEPAS.doc', 4),
(35, 'FM.BALITTAS.YT.2.5.01', 'Ringkasan Perubahan Rancangan', 'FM.BALITTAS.YT.2.5.01 Ringkasan Perubahan Rancangan.docx', 5),
(36, 'FM.BALITTAS.TU.2.2.01', 'Daftar Urut Kepangkatan', 'FM.TU.2.2.01 DAFTAR URUT KEPANGKATAN.doc', 6),
(37, 'FM.BALITTAS.TU.2.2.02', 'Daftar Nominatif Pegawai', 'FM.TU.2.2.02 DAFTAR NOMINATIF PEGAWAI.doc', 6),
(38, 'FM.BALITTAS.TU.2.2.03', 'Cuti Pegawai', 'FM.TU.2.2.03 CUTI PEGAWAI.doc', 6),
(39, 'FM.BALITTAS.TU.2.2.04', 'Daftar Susunan Keluarga', 'FM.TU.2.2.04 DAFTAR SUSUNAN KELUARGA.doc', 6),
(40, 'FM.BALITTAS.TU.2.2.05', 'Data Perorangan Calon Penerima Pensiun (DPCP)', 'FM.TU.2.2.05 DATA PERORANGAN CALON PENERIMA PENSIUN (DPCP).doc', 6),
(41, 'FM.BALITTAS.TU.2.2.06', 'Berkas Kenaikan Pangkat', 'FM.TU.2.2.06 BERKAS KENAIKAN PANGKAT.doc', 6),
(42, 'FM.BALITTAS.TU.2.2.07', 'Surat Keterangan Untuk Mendapatkan Tunjangan Keluarga / KP4', 'FM.TU.2.2.07 SURAT KETERANGAN UNTUK MENDAPATKAN TUNJANGAN KELUARGA (KP4).doc', 6),
(43, 'FM.BALITTAS.TU.2.2.08', 'Masa Persiapan Pensiun / MPP', 'FM.TU.2.2.08  MASA PERSIAPAN PENSIUN (MPP).doc', 6),
(44, 'FM.BALITTAS.TU.2.2.09', 'Indetifikasi Kebutuhan Pengetahuan', 'FM.TU.2.2.09 IDENTIFIKASI KEBUTUHAN PENGETAHUAN.doc', 6),
(45, 'FM.BALITTAS.TU.2.2.10', 'Identifikasi / Usulan Kebutuhan Pegawai', 'FM.TU.2.2.10 IDENTIFIKASI KEBUTUHAN PEGAWAI.doc', 6),
(46, 'FM.BALITTAS.TU.2.2.11', 'Program Pelaksanaan Analisa Kompetensi', 'FM.TU.2.2.11 Program Pelaksanaan Analisa Kompetensi.doc', 6),
(47, 'FM.BALITTAS.TU.2.2.12', 'Struktur Organisasi', 'FM.TU.2.2.12 STRUKTUR ORGANISASI.doc', 6),
(48, 'FM.BALITTAS.TU.2.2.13', 'Uraian Tugas dan Persyaratan Kompetensi', 'FM.TU.2.2.13 U-TUGAS & PERSY KOMPETENSI.doc', 6),
(49, 'FM.BALITTAS.TU.2.2.14', 'Form Daftar Riwayat Hidup', 'FM.TU.2.2.14 DAFTAR RIWAYAT HIDUP.doc', 6),
(50, 'FM.BALITTAS.TU.2.2.15', 'Identifikasi Kebutuhan Pelatihan', 'FM.TU.2.2.15 IDENTIFIKASI KEBUTUHAN PELATIHAN.doc', 6),
(51, 'FM.BALITTAS.TU.2.2.16', 'Analisa Kompetensi', 'FM.TU.2.2.16 ANALISA KOMPETENSI.doc', 6),
(52, 'FM.BALITTAS.TU.2.2.17', 'Daftar Hadir - Laporan Harian', 'FM.TU.2.2.17 DAFTAR HADIR.xls', 6),
(53, 'FM.BALITTAS.TU.2.2.18', 'Evaluasi Efektivitas Pelatihan', 'FM.TU.2.2.18 EVALUASI EFEKTIVITAS PELALATIHAN_FM BARU 2014.doc', 6),
(54, 'FM.BALITTAS.TU.2.2.19', 'Permohonan Ijin', 'FM.TU.2.2.19 PERMOHONAN IJIN Tidak MAsuk Kerja.doc', 6),
(55, 'FM.BALITTAS.TU.2.2.20', 'Perjalanan Dinas Non Dipa Balittas', 'FM.TU.2.2.20 PERJALANAN DINAS NON DIPA BALITTAS.doc', 6),
(56, 'FM.BALITTAS.TU.2.2.21', 'Permohonan Ijin Dinas', 'FM.TU.2.2.21 PERMOHONAN IJIN - dinas.doc', 6),
(57, 'FM.BALITTAS.TU.2.2.22', 'Permohonan Ijin Non Dinas', 'FM.TU.2.2.22 PERMOHONAN IJIN - non Dinas.doc', 6),
(58, 'FM.BALITTAS.JP.2.3.01', 'Kuisioner Umpan Balik Mitra Kerjasama', 'FM.BALITTAS.JP.2.3.01 Kuesioner umpan balik mitra kerjasama.doc', 7),
(59, 'FM.BALITTAS.TU.2.1.01', 'Permintaan Uang Muka Kerja', 'FM.TU.2.1.01 PERMINTAAN UANG MUKA KERJA.doc', 8),
(60, 'FM.BALITTAS.TU.2.1.02', 'Pengajuan Bahan', 'FM.TU.2.1.02 PENGAJUAN BAHAN.doc', 8),
(61, 'FM.BALITTAS.TU.2.1.03', 'Daftar Pengajuan Lembur', 'FM.TU.2.1.03 PENGAJUAN LEMBUR.doc', 8),
(62, 'FM.BALITTAS.TU.2.1.04', 'Pengajuan Perjalanan Dinas', 'FM.TU.2.1.04 PENGAJUAN PERJALANAN DINAS.doc', 8),
(63, 'FM.BALITTAS.TU.2.1.05', 'Surat Perintah Perjalanan Dinas', 'FM.TU.2.1.05 SPPD.doc', 8),
(64, 'FM.BALITTAS.TU.2.1.06', 'Checklist Pengajuan SPM', 'FM.TU.2.1.06 CHECKLIST PENGAJUAN SPM.doc', 8),
(65, 'FM.BALITTAS.TU.2.1.07', 'Surat Pernyataan Kesanggupan Penyetoran PNBP', 'FM.TU.2.1.07 SURAT PERNYATAAN PENYETORAN PNBP.doc', 8),
(66, 'FM.BALITTAS.TU.2.1.08', 'Realisasi Penerimaan PNBP', 'FM.TU.2.1.08  REALISASI PENERIMAAN PNBP-blanko.docx', 8),
(67, 'FM.BALITTAS.TU.2.1.09', 'Inventarisasi Pendapatan/Penjualan Hasil Kebun', 'FM.TU.2.1.09 INVENTARISASI PENDAPATAN.doc', 8),
(68, 'FM.BALITTAS.TU.2.1.10', 'Berita Acara Panen', 'FM.TU.2.1.10 BERITA ACARA PANEN.doc', 8),
(69, 'FM.BALITTAS.TU.2.1.11', 'Penyetoran PNBP', 'FM.TU.2.1.11 PENYETORAN PNBP.doc', 8),
(70, 'FM.BALITTAS.TU.2.1.12', 'Pengawasan Anggaran Belanja', 'FM.TU.2.1.12 BUKU PENGAWASAN ANGGARAN BELANJA.doc', 8),
(71, 'FM.BALITTAS.TU.2.1.13', 'Pengendalian Anggaran', 'FM.TU.2.1.13 PENGENDALIAN ANGGARAN.doc', 8),
(72, 'FM.BALITTAS.YT.2.2.01', 'Penyusunan Laporan Bulanan, Triwulan', 'FM.YT.2.2.01 PENYUSUNAN LAPORAN BULANAN, TRIWULAN.doc', 9),
(73, 'FM.BALITTAS.YT.2.2.02', 'Penyusunan Laporan Laporan Tengah Tahun', 'FM.YT.2.2.02 PENYUSUNAN LAPORAN TENGAH TAHUN.doc', 9),
(74, 'FM.BALITTAS.YT.2.2.03', 'Penyusunan Laporan Akhir Tahun', 'FM.YT.2.2.03 PENYUSUNAN LAPORAN AKHIR.doc', 9),
(75, 'FM.BALITTAS.YT.2.2.04', 'Penyusunan Laporan Lakin', 'FM.YT.2.2.04 PENYUSUNAN LAKIN.doc', 9),
(76, 'FM.BALITTAS.YT.2.2.05', 'Rencana Pelaksanaan Monitoring dan Evaluasi', 'FM.YT.2.2.05.RENCANA PELAKSANAAN MONEV.doc', 9),
(77, 'FM.BALITTAS.YT.2.2.06', 'Laporan Pelaksanaan Monitoring dan Evaluasi', 'FM.YT.2.2.06 HASIL MONITORING.doc', 9),
(78, 'FM.BALITTAS.YT.2.2.07', 'Laporan Tahunan', 'FM.YT.2.2.07. LAPORAN TAHUNAN.docx', 9),
(79, 'FM.BALITTAS.KT.2.3.01', 'Rencana Kerja Pelepasan Varietas Tanaman Pemanis, Serat, Tembakau dan Minyak Industri', 'FM  KT.2.3.01 RENCANA KERJA PELEPASAN VARIETAS.doc', 10),
(80, 'FM.BALITTAS.KT.2.3.02', 'Rencana Perlindungan Varietas Tanaman Pemanis, Serat, Tambakau, dan Minyak Industri', 'FM  KT.2.3.02 RENCANA PERLINDUNGAN VARIETAS.doc', 10),
(81, 'FM.BALITTAS.KT.2.3.03', 'Pemantauan Pelepasan Varietas Tanaman Pemanis, Serat, Tambakau dan Minyak Industri', 'FM  KT.2.3.03 PEMANTAUAN PELEPASAN VARIETAS.doc', 10),
(82, 'FM.BALITTAS.KT.2.4.01', 'Pembinaan Kader Peneliti / Teknisi', 'FM.KT.2.4.01.Pembinaan_REVISI 17FEB14 OK.docx', 11),
(83, 'FM.BALITTAS.TU.2.4.01', 'Kriteria Seleksi Penyedia Barang/Jasa', 'FM.TU.2.4.01 KRITERIA SELEKSI PENYEDIA BARANG-JASA.doc', 13),
(84, 'FM.BALITTAS.TU.2.4.02', 'Kualifikasi Penyedia Barang/Jasa', 'FM.TU.2.4.02 FORM KUALIFIKASI PENYEDIA BARANG-JASA.doc', 13),
(85, 'FM.BALITTAS.TU.2.4.03', 'Berita Acara Pemeriksaan Barang/Jasa', 'FM.TU.2.4.03 BERITA ACARA PEMERIKSAAN BARANG-JASA.doc', 13),
(86, 'FM.BALITTAS.TU.2.4.04', 'Berita Acara Serah Terima Barang/Jasa', 'FM.TU.2.4.04 BERITA ACARA SERAH TERIMA BARANG-JASA.doc', 13),
(87, 'FM.BALITTAS.TU.2.4.05', 'Daftar Penyedia Barang/Jasa', 'FM.TU.2.4.05 DAFTAR PENYEDIA BARANG - JASA.doc', 13),
(88, 'FM.BALITTAS.TU.2.4.06', 'Evaluasi Penyedia Eksternal Barang/Jasa', 'FM.TU.2.4.06 EVALUASI PENYEDIA BARANG-JASA.doc', 13),
(89, 'FM.BALITTAS.TU.2.4.07', 'Pengajuan Barang', 'FM.TU.2.4.07 PENGAJUAN BARANG.doc', 13),
(90, 'IK.BALITTAS.JP.2.4.01', 'Kuisoner Kepuasan Pelanggan', 'FM.JP.2.4.01 KUESIONER KEPUASAN PELANGGAN.docx', 14),
(91, 'IK.BALITTAS.JP.2.4.02', 'Keluhan Pelanggan', 'FM.JP.2.4.02 KELUHAN PELANGGAN.doc', 14),
(92, 'IK.BALITTAS.JP.2.4.03', 'Log Book Keluhan Pelanggan', 'FM.JP.2.4.03 Log Book Keluhan Pelanggan_.docx', 14),
(93, 'FM.BALITTAS.WP.2.3.01', 'Pemantauan Tindak Lanjut Kegiatan', 'FM.WP.2.3.01. Pemantauan laporan kinerja sistem 2016.docx', 15),
(94, 'FM.BALITTAS.WP.2.3.02', 'Analisa Data', 'FM.WP.2.3.02.Analisa Data.docx', 15),
(95, 'FM.BALITTAS.WP.2.3.03', 'Evaluasi dan Analisa Kefektifan Tindakan Penanganan Resiko dan Peluang', 'FM.WP.2.3.03.IDENTIFIKASI RESIKOdoc.doc', 15),
(96, 'FM.BALITTAS.TU.2.3.01', 'Berita Acara Mutasi Pemakaian Barang Milik Negara', 'FM.TU.2.3.01 BERITA ACARA MUTASI PEMAKAIAN BMN.doc', 16),
(97, 'FM.BALITTAS.TU.2.3.02', 'BON Permintaan Barang/Bahan Habis Pakai', 'FM.TU.2.3.02 BON PERMINTAAN BARANG-BAHAN PAKAI HABIS.doc', 16),
(98, 'FM.BALITTAS.TU.2.3.03', 'BON Pinjam Inventaris Milik Negara', 'FM.TU.2.3.03 BON PINJAM BARANG INVENTARIS MILIK NEGARA.doc', 16),
(99, 'FM.BALITTAS.TU.2.3.04', 'BON Pengembalian Barang Inventaris Milik Negara', 'FM.TU.2.3.04 BON PENGEMBALIAN BARANG INVENTARIS.doc', 16),
(100, 'FM.BALITTAS.TU.2.3.05', 'BON Mutasi Barang Milik Negara', 'FM.TU.2.3.05 BON MUTASI BARANG MILIK NEGARA.doc', 16),
(101, 'FM.BALITTAS.JP.2.2.01', 'Kartu Peminjaman Koleksi', 'FM.JP.2.2.01 KARTU PEMINJAMAN-minta revisi.doc', 17),
(102, 'FM.BALITTAS.JP.2.2.02', 'Penambahan Koleksi Bahan Pustaka', 'FM.JP.2.2.02 PENAMBAHAN KOLEKSI BAHAN PUSTAKA.docx', 17),
(103, 'FM.BALITTAS.JP.2.2.03', 'Jadwal Pemeliharaan Bahan Pustaka', 'FM.JP.2.2.03 JADWAL PEMELIHARAAN BAHAN PUSTAKA.docx', 17),
(104, 'FM.BALITTAS.KT.2.1.01', 'Hasil Monitoring Daya Berkecambah Benih', 'FM.KT.2.1.01 Hasil Monitoring Daya Berkecambahan benih.docx', 27),
(105, 'FM.BALITTAS.KT.2.1.02', 'Rekomendasi Rejuvinasi Benih Plasma Nutfah', 'FM.KT.2.1.02 Rekomendasi rejuvinasi benih plasma nutfah.docx', 27),
(106, 'FM.BALITTAS.JP.2.5.01', 'Checklist Kelengkapan Berkas Berkas Usulan Paten', 'FM.JP.2.5.01 CHECKLIST KELENGKAPAN BERKAS USULAN PATEN.doc', 26),
(107, 'FM.BALITTAS.UB.2.3.01', 'Evaluasi Persiapan Pelaksanaan Produksi Benih Sumber', 'FM.BALITTAS.UB.2.3.01.(persiapan).docx', 23),
(108, 'FM.BALITTAS.UB.2.3.02', 'Evaluasi Budidaya Tanaman', 'FM.BALITTAS.UB.2.3.02.(budidaya).docx', 23),
(109, 'FM.BALITTAS.UB.2.3.03', 'Evaluasi Persyaratan Mutu Kebun Benih', 'FM.BALITTAS.UB.2.3.03.(mutu_kebun).docx', 23),
(110, 'FM.BALITTAS.UB.2.3.04', 'Evaluasi Persyaratan Mutu Produk', 'FM.BALITTAS.UB.2.3.04.(produk).docx', 23),
(111, 'FM.BALITTAS.UB.2.3.05', 'Evaluasi Gudang Penyimpanan', 'FM.BALITTAS.UB.2.3.05.(gudang).docx', 23),
(112, 'FM.BALITTAS.UB.2.2.01', 'Benih Masuk UPBS', 'FM.BALITTAS.UB.2.2.01.docx', 24),
(113, 'FM.BALITTAS.UB.2.2.02', 'Pengeluaran Benih UPBS', 'FM.BALITTAS.UB.2.2.02.docx', 24),
(114, 'FM.BALITTAS.UB.2.2.03', 'Pengajuan Penghapusan Benih UPBS', 'FM.BALITTAS.UB.2.2.03.docx', 24),
(115, 'FM.BALITTAS.UB.2.2.04', 'Pengajuan Pemeriksaan Benih Untuk Penghapusan', 'FM.BALITTAS.UB.2.2.04.docx', 24),
(116, 'FM.BALITTAS.UB.2.2.05', 'Penghapusan Benih UPBS', 'FM.BALITTAS.UB.2.2.05.docx', 24),
(117, 'FM.BALITTAS.UB.2.2.06', 'Berita Acara Penghapusan Benih UPBS', 'FM.BALITTAS.UB.2.2.06.docx', 24),
(118, 'FM.BALITTAS.UB.2.2.07', 'Monitoring Suhu dan Kelembaban Gudang', 'FM.BALITTAS.UB.2.2.07.docx', 24),
(119, 'FM.BALITTAS.UB.2.2.08', 'Pengeluaran Benih Untuk Uji Mutu', 'FM.BALITTAS.UB.2.2.08.docx', 24),
(120, 'FM.BALITTAS.UB.2.1.01', 'Jadwal Kegiatan Budidaya Kenaf dan Rosela Herbal', 'FM.BALITTAS.UB.2.1.01.(jdw_kenaf).docx', 25),
(121, 'FM.BALITTAS.UB.2.1.02', 'Jadwal Kegiatan Budidaya Tebu Bagal Mikro', 'FM.BALITTAS.UB.2.1.02.(jdw_tebu).docx', 25),
(122, 'FM.BALITTAS.UB.2.1.03', 'Jadwal Kegiatan Budidaya Tembakau', 'FM.BALITTAS.UB.2.1.03.(jdw_tembakau).docx', 25),
(123, 'FM.BALITTAS.UB.2.1.04', 'Jadwal Kegiatan Budidaya Kapas', 'FM.BALITTAS.UB.2.1.04.(jdw_kapas).docx', 25),
(124, 'FM.BALITTAS.UB.2.1.05', 'Jadwal Kegiatan Budidaya Jarak Kepyar', 'FM.BALITTAS.UB.2.1.05.(jdw_kepyar).docx', 25),
(125, 'FM.BALITTAS.UB.2.1.06', 'Jadwal Kegiatan Budidaya Wijen', 'FM.BALITTAS.UB.2.1.06.(jdw_wijen).docx', 25),
(126, 'FM.BALITTAS.UB.2.1.07', 'Pemantauan Hama Kenaf', 'FM.BALITTAS.UB.2.1.07.(hama_kenaf).docx', 25),
(127, 'FM.BALITTAS.UB.2.1.08', 'Pemantauan Hama & Penyakit Tebu', 'FM.BALITTAS.UB.2.1.08.(hama_tebu).docx', 25),
(128, 'FM.BALITTAS.UB.2.1.09', 'Pemantauan Hama dan Penyakit Tembakau', 'FM.BALITTAS.UB.2.1.09.(Hama_Tembakau).docx', 25),
(129, 'FM.BALITTAS.UB.2.1.10', 'Pemantauan Hama Kapas', 'FM.BALITTAS.UB.2.1.10.(hama_kapas).docx', 25),
(130, 'FM.BALITTAS.UB.2.1.11', 'Pemantauan Hama Jarak Kepyar', 'FM.BALITTAS.UB.2.1.11.(hama_kepyar).docx', 25),
(131, 'FM.BALITTAS.UB.2.1.12', 'Pemantauan Hama Wijen', 'FM.BALITTAS.UB.2.1.12.(hama_wijen).docx', 25),
(132, 'FM.BALITTAS.UB.2.1.13', 'Penentuan Lokasi', 'FM.BALITTAS.UB.2.1.13.(lokasi).docx', 25),
(133, 'FM.BALITTAS.UB.2.1.14', 'Penyerahan Produksi Benih Sumber', 'FM.BALITTAS.UB.2.1.14.(penyerahan_benih).docx', 25),
(134, 'FM.BALITTAS.WP.2.4.01', 'Undangan Rapat', 'FM.WP.2.4.01 UNDANGAN  RAPAT.doc', 22),
(135, 'FM.BALITTAS.WP.2.4.02', 'Laporan Kinerja Sistem Manajemen', 'FM.WP.2.4.02 Laporan Kinerja Sistem Manajemen.doc', 22),
(136, 'FM.BALITTAS.WP.2.4.03', 'Matrix Komunikasi', 'WP.2.4.03 Matrix Komunikasi.docx', 22),
(137, 'FM.BALITTAS.WP.2.4.04', 'Daftar Hadir', 'FM.WP.2.4.04 DAFTAR HADIR.doc', 22),
(138, 'FM.BALITTAS.WP.2.4.05', 'Notulen Rapat', 'FM.WP.2.4.05 NOTULEN RAPAT.doc', 22),
(139, 'FM.BALITTAS.TU.2.5.01', 'Kartu Kendali', 'FM.BALITTAS.TU.2.5.01 KARTU KENDALI.doc', 21),
(140, 'FM.BALITTAS.TU.2.5.02', 'Lembar Disposisi', 'FM.BALITTAS.TU.2.5.02 KARTUS DISPOSISI.doc', 21),
(141, 'FM.BALITTAS.TU.2.5.03', 'Lembar Pengantar/Lembar Kendali Surat Masuk', 'FM.BALITTAS.TU.2.5.03 KENDALI PENGANTAR.doc', 21),
(142, 'FM.BALITTAS.YT.2.1.01', 'Form Penyusunan Matriks Penelitian dan Diseminasi', 'FM.YT.2.1.01 PENYUSUNAN MATRIK-edisi revisi2.docx', 18),
(143, 'FM.BALITTAS.YT.2.1.02', 'Form Penyusunan Rencana Penelitian Tim Peneliti (RPTP)', 'FM.YT.2.1.02 PENYUSUNAN RPTP.doc', 18),
(144, 'FM.BALITTAS.YT.2.1.03', 'Form Penyusunan Rencana Diseminasi Hasil Penelitian', 'FM.YT.2.1.03 PENYUSUNAN RDHP.doc', 18),
(145, 'FM.BALITTAS.YT.2.1.04', 'Form Penyusunan Rencana Kerja Tingkat Manajemen (RKTM)', 'FM.YT.2.1.04 PENYUSUNAN RKTM.doc', 18),
(146, 'FM.BALITTAS.YT.2.1.05', 'Form Penyusunan Rencana Operasional Penelitian Pertanian (ROPP)', 'FM.YT.2.1.05 PENYUSUNAN ROPP.doc', 18),
(147, 'FM.BALITTAS.YT.2.1.06', 'Form Penyusunan Rencana Operasional Diseminasi Hasil Penelitian (RODHP)', 'FM.YT.2.1.06 PENYUSUNAN RODHP.doc', 18),
(148, 'FM.BALITTAS.YT.2.1.07', 'Form Penyusunan Rencana Operasional Pengelolaan Kegiatan (ROPK)', 'FM.YT.2.1.07 PENYUSUNAN ROPK.doc', 18),
(149, 'FM.BALITTAS.YT.2.1.08', 'Form Revisi POK', 'FM.YT.2.1.08 FORM REVISI POK.doc', 18),
(150, 'FM.BALITTAS.YT.2.1.09', 'Form Pengajuan Revisi DIPA', 'FM.YT.2.1.09 FORM REVISI DIPA.doc', 18),
(151, 'FM.BALITTAS.YT.2.3.01', 'Usulan Pengadaan Sarana Penelitian', 'FM.YT.2.3.01 DAFTAR USULAN PENGADAAN SARANA PENELITIAN.doc', 19),
(152, 'FM.BALITTAS.YT.2.3.02', 'Rekapitulasi Usul Pengadaan Sarana Penelitian', 'FM.BALITTAS.YT.2.3. 02 REKAPITULASI USUL PENGADAAN SARANA PENELITIAN.docx', 19),
(153, 'FM.BALITTAS.YT.2.3.03', 'Kuesioner Umpan Balik Mitra Kerjasama', 'FM.YT.2.3.03 USULAN PENGADAAN YANG DISETUJUI KEPALA BALAI.doc', 19),
(154, 'FM.BALITTAS.TU.2.6.01', 'Daftar Inventaris', 'FM.BALITTAS.TU.2.6.01 DAFTAR INVENTARIS.docx', 20),
(155, 'FM.BALITTAS.TU.2.6.02', 'Jadwal Pemeliharaan Sarana dan Prasarana', 'FM.BALITTAS.T.U.2.6.02 JADWAL PEMELIHARAAN SARANA DAN PRASARANA.doc', 20),
(156, 'FM.BALITTAS.TU.2.6.03', 'Pengajuan Pemeliharaan dan Perbaikan Sarana dan Prasarana', 'FM.BALITTAS.TU.2.6.03 PENGAJUAN PEMELIHARAAN DAN PERBAIKAN.doc', 20),
(157, 'FM.BALITTAS.TU.2.6.04', 'Berita Acara Verifikasi Alat Ukur/ Alat Laboratorium', 'FM.BALITTAS.T.U.2.6.04. BA.VERIFIKASI ALAT UKUR.docx', 20),
(158, 'FM.BALITTAS.TU.2.6.05', 'Logbook dan Realisasi Pelaksanaan Perbaikan', 'FM.BALITTAS.TU.2.6.05 LOGBOOK PERBAIKAN SARANA PRASARANA.docx', 20),
(159, 'FM.BALITTAS.TU.2.6.06', 'Jadwal Pemantauan Pelaksanaan Kebersihan', 'FM.BALITTAS.TU.2.6.06 JADWAL PEMANTAUAN PELAKS KEBERSIHAN.docx', 20),
(160, 'FM.BALITTAS.TU.2.6.07', 'Pengajuan Kalibrasi Atau Verifikasi Alat Ukur dan Alat Laboratorium', 'FM.BALITTAS.TU.2.6.07 PENGAJUAN KALIBRASI.doc', 20),
(161, 'FM.BALITTAS.TU.2.6.08', 'Peminjaman Kendaraan Dinas', 'FM.BALITTAS.TU.2.6.08 PEMINJAMAN KENDARAAN DINAS.doc', 20),
(162, 'FM.BALITTAS.TU.2.6.09', 'Peminjaman Ruang Rapat', 'FM.BALITTAS.TU.2.6.09 PEMINJAMAN RUANG RAPAT.doc', 20);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` varchar(2) NOT NULL,
  `nama` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `nama`) VALUES
('AD', 'Admin'),
('JP', 'Bidang Jasa Penelitian'),
('KT', 'Bidang Kelompok Penelitian'),
('PS', 'Tamu'),
('TU', 'Sub Bagian Tata Usaha'),
('UB', 'Unit Pengelola Benih Sumber (UPBS)'),
('WP', 'Wakil Penanggung Jawab dan Sekretariat ISO'),
('YT', 'Bagian Pelayanan Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `tahun` varchar(32) NOT NULL,
  `file` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `tahun`, `file`, `id_kategori`, `id_dokumen`) VALUES
(1, '2020', 'IK.TU.2.2.22 PENERBITAN SK PNS 100%.pdf', 3, 40),
(2, '2020', 'FM.WP.2.3.01. Pemantauan tindak lanjut kegiatan.pdf', 4, 93),
(3, '2020', 'FM.JP.2.1.01 TINJAUAN ORDER.doc', 4, 7),
(4, '2020', 'FM.WP.2.2.01 PROGRAM AUDIT INTERNAL.pdf', 4, 1),
(5, '2020', 'FM.WP.2.2.02 JADWAL AUDIT INTERNAL.pdf', 4, 2),
(6, '2020', 'FM.WP.2.2.03 CHECKLIST AUDIT INTERNAL.pdf', 4, 3),
(7, '2020', 'FM.WP.2.2.04 REKAPITULASI.pdf', 4, 4),
(8, '2020', 'FM.WP.2.2.05 LAPORAN AUDIT INTERNAL.pdf', 4, 5),
(9, '2020', 'FM.WP.2.2.06 Evaluasi Aktivitas audit.pdf', 4, 6),
(10, '2020', 'FM.JP.2.1.02 PEMERIKSAAN PERSIAPAN PUBLIKASI.pdf', 4, 8),
(11, '2020', 'FM.JP.2.1.03 PERSIAPAN PAMERAN.pdf', 4, 9),
(12, '2020', 'FM.JP.2.1.04 LAPORAN KEGIATAN.pdf', 4, 10),
(13, '2020', 'FM.JP.2.1.05 PERSETUJUAN MAGANG, PKL, DAN PENELITIAN.R2.pdf', 4, 11),
(14, '2020', 'FM.JP.2.1.06 PERSETUJUAN PENGIRIMAN NASKAH.R3.pdf', 4, 12),
(15, '2020', 'FM.JP.2.1.07 PUBLIKASI HASIL PENELITIAN DILUAR BALAI.R3.pdf', 4, 13),
(16, '2020', 'FM.WP.2.1.02 DAFTAR INDUK DOKUMEN.pdf', 4, 15),
(17, '2020', 'FM.WP.2.1.03 DISTRIBUSI DOKUMEN.pdf', 4, 16),
(18, '2020', 'FM.WP.2.1.04 DAFTAR  DOKUMEN  EKSTERNAL.pdf', 4, 17),
(19, '2020', 'FM.WP.2.1.05 BERITA ACARA PEMUSNAHAN DOKUMEN.pdf', 4, 18),
(20, '2020', 'FM.WP.2.1.06 DAFTAR REKAMAN MUTU.pdf', 4, 19),
(21, '2020', 'FM.WP.2.1.01 USULAN PERUBAHAN DOKUMEN.pdf', 4, 14),
(22, '2020', 'FM.YT.2.4.01 SURAT PERMOHONAN PENGAJUAN LAHAN PENELITIAN.pdf', 4, 20),
(23, '2020', 'FM.YT.2.4.02 TINJAUAN ORDER PELAKSANAAN PENELITIAN.revisi.3.pdf', 4, 21),
(24, '2020', 'FM.YT.2.4.03 RENCANA PEMBELIAN BARANG.pdf', 4, 22),
(25, '2020', 'FM.YT.2.4.04 RENCANA  PENGGUNAAN TENAGA KERJA.pdf', 4, 23),
(26, '2020', 'FM.YT.2.4.05 PEMANTAUAN PELAKS KEGIATAN LAPANG  REVIISI.pdf', 4, 24),
(27, '2020', 'FM.YT.2.4.06 PENGAJUAN BARANG.pdf', 4, 25),
(28, '2020', 'FM.YT.2.4.07 KUNJUNGAN TAMU.pdf', 4, 26),
(29, '2020', 'FM.YT.2.4.08 DATA PENGGUNAAN LAHAN DI KP. KARANGPLOSO.pdf', 4, 27),
(30, '2020', 'FM.YT.2.4.09 DAFTAR KEG PENELITIAN DAN SD DUKUNG-EDIT.pdf', 4, 28),
(31, '2020', 'FM.YT.2.4.10 KUISIONER KEPUASAN PELANGGAN.pdf', 4, 29),
(32, '2020', 'FM.YT.2.4.11 BUKU INSTRUKSI KEG PENELITIAN-EDIT.pdf', 4, 30),
(33, '2020', 'FM.YT.2.4.12 DAFTAR INVENT ALAT UKUR DAN PEMELIHARAANNYA.pdf', 4, 31),
(34, '2020', 'FM.YT.2.4.13 PEMELIHARAAN ALAT OPERASIONAL.pdf', 4, 32),
(35, '2020', 'FM.YT.2.4.14 PERSYARATAN KOMPETENSI PENYEDIA EKSTERNAL.pdf', 4, 33),
(36, '2020', 'FM.YT.2.4.15 EVALUASI KINERJA TENAGA KONTRAK-HARIAN LEPAS.pdf', 4, 34),
(37, '2020', 'FM.BALITTAS.YT.2.5.01 Ringkasan Perubahan Rancangan.pdf', 4, 35),
(38, '2020', 'FM.TU.2.2.01 DAFTAR URUT KEPANGKATAN.pdf', 4, 36),
(39, '2020', 'FM.TU.2.2.02 DAFTAR NOMINATIF PEGAWAI.pdf', 4, 37),
(40, '2020', 'FM.TU.2.2.03 CUTI PEGAWAI.pdf', 4, 38),
(41, '2020', 'FM.TU.2.2.04 DAFTAR SUSUNAN KELUARGA.pdf', 4, 39),
(42, '2020', 'FM.TU.2.2.05 DATA PERORANGAN CALON PENERIMA PENSIUN (DPCP).pdf', 4, 40),
(43, '2020', 'FM.TU.2.2.06 BERKAS KENAIKAN PANGKAT.pdf', 4, 41),
(44, '2020', 'FM.TU.2.2.07 SURAT KETERANGAN UNTUK MENDAPATKAN TUNJANGAN KELUARGA (KP4).pdf', 4, 42),
(45, '2020', 'FM.TU.2.2.08  MASA PERSIAPAN PENSIUN (MPP).pdf', 4, 43),
(46, '2020', 'FM.TU.2.2.09 IDENTIFIKASI KEBUTUHAN PENGETAHUAN.pdf', 4, 44),
(47, '2020', 'FM.TU.2.2.10 IDENTIFIKASI KEBUTUHAN PEGAWAI.pdf', 4, 45),
(48, '2020', 'FM.TU.2.2.11 Program Pelaksanaan Analisa Kompetensi.pdf', 4, 46),
(49, '2020', 'FM.TU.2.2.12 STRUKTUR ORGANISASI.pdf', 4, 47),
(50, '2020', 'FM.TU.2.2.13 U-TUGAS & PERSY KOMPETENSI.pdf', 4, 48),
(51, '2020', 'FM.TU.2.2.14 DAFTAR RIWAYAT HIDUP.pdf', 4, 49),
(52, '2020', 'FM.TU.2.2.15 IDENTIFIKASI KEBUTUHAN PELATIHAN.pdf', 4, 50),
(53, '2020', 'FM.TU.2.2.16 ANALISA KOMPETENSI.pdf', 4, 51),
(54, '2020', 'FM.TU.2.2.17 DAFTAR HADIR.pdf', 4, 52),
(55, '2020', 'FM.TU.2.2.18 EVALUASI EFEKTIVITAS PELALATIHAN_FM BARU 2014.pdf', 4, 53),
(56, '2020', 'FM.TU.2.2.19 PERMOHONAN IJIN Tidak MAsuk Kerja.pdf', 4, 54),
(57, '2020', 'FM.TU.2.2.20 PERJALANAN DINAS NON DIPA BALITTAS.pdf', 4, 55),
(58, '2020', 'FM.TU.2.2.21 PERMOHONAN IJIN - dinas.pdf', 4, 56),
(59, '2020', 'FM.TU.2.2.22 PERMOHONAN IJIN - non Dinas.pdf', 4, 57),
(60, '2020', 'FM.BALITTAS.JP.2.3.01 Kuesioner umpan balik mitra kerjasama.pdf', 4, 58),
(61, '2020', 'FM.TU.2.1.01 PERMINTAAN UANG MUKA KERJA.pdf', 4, 59),
(62, '2020', 'FM.TU.2.1.02 PENGAJUAN BAHAN.pdf', 4, 60),
(63, '2020', 'FM.TU.2.1.03 PENGAJUAN LEMBUR.pdf', 4, 61),
(64, '2020', 'FM.TU.2.1.04 PENGAJUAN PERJALANAN DINAS.pdf', 4, 62),
(65, '2020', 'FM.TU.2.1.05 SPPD.pdf', 4, 63),
(66, '2020', 'FM.TU.2.1.06 CHECKLIST PENGAJUAN SPM.pdf', 4, 64),
(67, '2020', 'FM.TU.2.1.07 SURAT PERNYATAAN PENYETORAN PNBP.pdf', 4, 65),
(68, '2020', 'FM.TU.2.1.08  REALISASI PENERIMAAN PNBP-blanko.pdf', 4, 66),
(69, '2020', 'FM.TU.2.1.09 INVENTARISASI PENDAPATAN.pdf', 4, 67),
(70, '2020', 'FM.TU.2.1.10 BERITA ACARA PANEN.pdf', 4, 68),
(71, '2020', 'FM.TU.2.1.11 PENYETORAN PNBP.pdf', 4, 69),
(72, '2020', 'FM.TU.2.1.12 BUKU PENGAWASAN ANGGARAN BELANJA.pdf', 4, 70),
(73, '2020', 'FM.TU.2.1.13 PENGENDALIAN ANGGARAN.pdf', 4, 71),
(74, '2020', 'FM.YT.2.2.01 PENYUSUNAN LAPORAN BULANAN, TRIWULAN.pdf', 4, 72),
(75, '2020', 'FM.YT.2.2.02 PENYUSUNAN LAPORAN TENGAH TAHUN.pdf', 4, 73),
(76, '2020', 'FM.YT.2.2.03 PENYUSUNAN LAPORAN AKHIR.pdf', 4, 74),
(77, '2020', 'FM.YT.2.2.04 PENYUSUNAN LAKIN.pdf', 4, 75),
(78, '2020', 'FM.YT.2.2.05.RENCANA PELAKSANAAN MONEV.pdf', 4, 76),
(79, '2020', 'FM.YT.2.2.06 HASIL MONITORING.pdf', 4, 77),
(80, '2020', 'FM.YT.2.2.07. LAPORAN TAHUNAN.pdf', 4, 78),
(81, '2020', 'FM  KT.2.3.01 RENCANA KERJA PELEPASAN VARIETAS.pdf', 4, 79),
(82, '2020', 'FM  KT.2.3.02 RENCANA PERLINDUNGAN VARIETAS.pdf', 4, 80),
(83, '2020', 'FM  KT.2.3.03 PEMANTAUAN PELEPASAN VARIETAS.pdf', 4, 81),
(84, '2020', 'FM.KT.2.4.01.Pembinaan_REVISI 17FEB14 OK.pdf', 4, 82),
(85, '2020', 'FM.TU.2.4.01 KRITERIA SELEKSI PENYEDIA BARANG-JASA.pdf', 4, 83),
(86, '2020', 'FM.TU.2.4.02 FORM KUALIFIKASI PENYEDIA BARANG-JASA.pdf', 4, 84),
(87, '2020', 'FM.TU.2.4.03 BERITA ACARA PEMERIKSAAN BARANG-JASA.pdf', 4, 85),
(88, '2020', 'FM.TU.2.4.04 BERITA ACARA SERAH TERIMA BARANG-JASA.pdf', 4, 86),
(89, '2020', 'FM.TU.2.4.05 DAFTAR PENYEDIA BARANG - JASA.pdf', 4, 87),
(90, '2020', 'FM.TU.2.4.06 EVALUASI PENYEDIA BARANG-JASA.pdf', 4, 88),
(91, '2020', 'FM.TU.2.4.07 PENGAJUAN BARANG.pdf', 4, 89),
(92, '2020', 'FM.JP.2.4.01 KUESIONER KEPUASAN PELANGGAN.pdf', 4, 90),
(93, '2020', 'FM.JP.2.4.02 KELUHAN PELANGGAN.pdf', 4, 91),
(94, '2020', 'FM.JP.2.4.03 Log Book Keluhan Pelanggan_.pdf', 4, 92),
(95, '2020', 'FM.WP.2.3.02.Analisa Data.pdf', 4, 94),
(96, '2020', 'FM.WP.2.3.03.IDENTIFIKASI RESIKOdoc.pdf', 4, 95),
(97, '2020', 'FM.TU.2.3.01 BERITA ACARA MUTASI PEMAKAIAN BMN.pdf', 4, 96),
(98, '2020', 'FM.TU.2.3.02 BON PERMINTAAN BARANG-BAHAN PAKAI HABIS.pdf', 4, 97),
(99, '2020', 'FM.TU.2.3.03 BON PINJAM BARANG INVENTARIS MILIK NEGARA.pdf', 4, 98),
(100, '2020', 'FM.TU.2.3.04 BON PENGEMBALIAN BARANG INVENTARIS.pdf', 4, 99),
(101, '2020', 'FM.TU.2.3.05 BON MUTASI BARANG MILIK NEGARA.pdf', 4, 100),
(102, '2020', 'FM.JP.2.2.01 KARTU PEMINJAMAN-minta revisi.pdf', 4, 101),
(103, '2020', 'FM.JP.2.2.02 PENAMBAHAN KOLEKSI BAHAN PUSTAKA.pdf', 4, 102),
(104, '2020', 'FM.JP.2.2.03 JADWAL PEMELIHARAAN BAHAN PUSTAKA.pdf', 4, 103),
(105, '2020', 'FM.KT.2.1.01 Hasil Monitoring Daya Berkecambahan benih.pdf', 4, 104),
(106, '2020', 'FM.KT.2.1.02 Rekomendasi rejuvinasi benih plasma nutfah.pdf', 4, 105),
(107, '2020', 'FM.JP.2.5.01 CHECKLIST KELENGKAPAN BERKAS USULAN PATEN.pdf', 4, 106),
(108, '2020', 'FM.BALITTAS.UB.2.3.01.(persiapan).pdf', 4, 107),
(109, '2020', 'FM.BALITTAS.UB.2.3.02.(budidaya).pdf', 4, 108),
(110, '2020', 'FM.BALITTAS.UB.2.3.03.(mutu_kebun).pdf', 4, 109),
(111, '2020', 'FM.BALITTAS.UB.2.3.04.(produk).pdf', 4, 110),
(112, '2020', 'FM.BALITTAS.UB.2.3.05.(gudang).pdf', 4, 111),
(113, '2020', 'FM.BALITTAS.UB.2.2.01.pdf', 4, 112),
(114, '2020', 'FM.BALITTAS.UB.2.2.02.pdf', 4, 113),
(115, '2020', 'FM.BALITTAS.UB.2.2.03.pdf', 4, 114),
(116, '2020', 'FM.BALITTAS.UB.2.2.04.pdf', 4, 115),
(117, '2020', 'FM.BALITTAS.UB.2.2.05.pdf', 4, 116),
(118, '2020', 'FM.BALITTAS.UB.2.2.06.pdf', 4, 117),
(119, '2020', 'FM.BALITTAS.UB.2.2.07.pdf', 4, 118),
(120, '2020', 'FM.BALITTAS.UB.2.2.08.pdf', 4, 119),
(121, '2020', 'FM.BALITTAS.UB.2.1.01.(jdw_kenaf).pdf', 4, 120),
(122, '2020', 'FM.BALITTAS.UB.2.1.02.(jdw_tebu).pdf', 4, 121),
(123, '2020', 'FM.BALITTAS.UB.2.1.03.(jdw_tembakau).pdf', 4, 122),
(124, '2020', 'FM.BALITTAS.UB.2.1.04.(jdw_kapas).pdf', 4, 123),
(125, '2020', 'FM.BALITTAS.UB.2.1.05.(jdw_kepyar).pdf', 4, 124),
(126, '2020', 'FM.BALITTAS.UB.2.1.06.(jdw_wijen).pdf', 4, 125),
(127, '2020', 'FM.BALITTAS.UB.2.1.07.(hama_kenaf).pdf', 4, 126),
(128, '2020', 'FM.BALITTAS.UB.2.1.08.(hama_tebu).pdf', 4, 127),
(129, '2020', 'FM.BALITTAS.UB.2.1.09.(Hama_Tembakau).pdf', 4, 128),
(130, '2020', 'FM.BALITTAS.UB.2.1.10.(hama_kapas).pdf', 4, 129),
(131, '2020', 'FM.BALITTAS.UB.2.1.11.(hama_kepyar).pdf', 4, 130),
(132, '2020', 'FM.BALITTAS.UB.2.1.12.(hama_wijen).pdf', 4, 131),
(133, '2020', 'FM.BALITTAS.UB.2.1.13.(lokasi).pdf', 4, 132),
(134, '2020', 'FM.BALITTAS.UB.2.1.14.(penyerahan_benih).pdf', 4, 133),
(135, '2020', 'FM.WP.2.4.01 UNDANGAN  RAPAT.pdf', 4, 134),
(136, '2020', 'FM.WP.2.4.02 Laporan Kinerja Sistem Manajemen.pdf', 4, 135),
(137, '2020', 'WP.2.4.03 Matrix Komunikasi.pdf', 4, 136),
(138, '2020', 'FM.WP.2.4.04 DAFTAR HADIR.pdf', 4, 137),
(139, '2020', 'FM.WP.2.4.05 NOTULEN RAPAT.pdf', 4, 138),
(140, '2020', 'FM.BALITTAS.TU.2.5.01 KARTU KENDALI.pdf', 4, 139),
(141, '2020', 'FM.BALITTAS.TU.2.5.02 KARTUS DISPOSISI.pdf', 4, 140),
(142, '2020', 'FM.BALITTAS.TU.2.5.03 KENDALI PENGANTAR.pdf', 4, 141),
(143, '2020', 'FM.YT.2.1.01 PENYUSUNAN MATRIK-edisi revisi2.pdf', 4, 142),
(144, '2020', 'FM.YT.2.1.02 PENYUSUNAN RPTP.pdf', 4, 143),
(145, '2020', 'FM.YT.2.1.03 PENYUSUNAN RDHP.pdf', 4, 144),
(146, '2020', 'FM.YT.2.1.04 PENYUSUNAN RKTM.pdf', 4, 145),
(147, '2020', 'FM.YT.2.1.05 PENYUSUNAN ROPP.pdf', 4, 146),
(148, '2020', 'FM.YT.2.1.06 PENYUSUNAN RODHP.pdf', 4, 147),
(149, '2020', 'FM.YT.2.1.07 PENYUSUNAN ROPK.pdf', 4, 148),
(150, '2020', 'FM.YT.2.1.08 FORM REVISI POK.pdf', 4, 149),
(151, '2020', 'FM.YT.2.1.09 FORM REVISI DIPA.pdf', 4, 150),
(152, '2020', 'FM.YT.2.3.01 DAFTAR USULAN PENGADAAN SARANA PENELITIAN.pdf', 4, 151),
(153, '2020', 'FM.BALITTAS.YT.2.3. 02 REKAPITULASI USUL PENGADAAN SARANA PENELITIAN.pdf', 4, 152),
(154, '2020', 'FM.YT.2.3.03 USULAN PENGADAAN YANG DISETUJUI KEPALA BALAI.pdf', 4, 153),
(155, '2020', 'FM.BALITTAS.TU.2.6.01 DAFTAR INVENTARIS.pdf', 4, 154),
(156, '2020', 'FM.BALITTAS.T.U.2.6.02 JADWAL PEMELIHARAAN SARANA DAN PRASARANA.pdf', 4, 155),
(157, '2020', 'FM.BALITTAS.TU.2.6.03 PENGAJUAN PEMELIHARAAN DAN PERBAIKAN.pdf', 4, 156),
(158, '2020', 'FM.BALITTAS.T.U.2.6.04. BA.VERIFIKASI ALAT UKUR.pdf', 4, 157),
(159, '2020', 'FM.BALITTAS.TU.2.6.05 LOGBOOK PERBAIKAN SARANA PRASARANA.pdf', 4, 158),
(160, '2020', 'FM.BALITTAS.TU.2.6.06 JADWAL PEMANTAUAN PELAKS KEBERSIHAN.pdf', 4, 159),
(161, '2020', 'FM.BALITTAS.TU.2.6.07 PENGAJUAN KALIBRASI.pdf', 4, 160),
(162, '2020', 'FM.BALITTAS.TU.2.6.08 PEMINJAMAN KENDARAAN DINAS.pdf', 4, 161),
(163, '2020', 'FM.BALITTAS.TU.2.6.09 PEMINJAMAN RUANG RAPAT.pdf', 4, 162),
(164, '2020', 'PM.2.PEDOMAN MUTU.T6-Rev1.docx', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `instruksi_kerja`
--

CREATE TABLE `instruksi_kerja` (
  `id` int(11) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `id_pk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruksi_kerja`
--

INSERT INTO `instruksi_kerja` (`id`, `kode`, `judul`, `file`, `id_pk`) VALUES
(1, 'IK.BALITTAS.JP.2.1.01', 'Pengelolaan Website dan Media Sosial', 'IK.BALITTAS.JP.2.1.01 PENGELOLAAN WEBSITE versi 2015.pdf', 2),
(2, 'IK.BALITTAS.JP.2.1.07', 'Ruang Display', 'IK.BALITTAS.JP.2.1.07 RUANG DISPLAY.pdf', 2),
(3, 'IK.BALITTAS.JP.2.1.02', 'Partisipasi Pameran', 'IK.JP.2.1.02 PARTISIPASI PAMERAN.pdf', 2),
(4, 'IK.BALITTAS.JP.2.1.03', 'Penerbitan Publikasi Ilmiah', 'IK.JP.2.1.03 PENERBITAN PUBLIKASI.pdf', 2),
(5, 'IK.BALITTAS.JP.2.1.04', 'Pelaksanaan Seminar Rutin', 'IK.JP.2.1.04 SEMINAR RUTIN.pdf', 2),
(6, 'IK.BALITTAS.JP.2.1.05', 'Pelaksanaan Seminar/Lokakarya Nasional', 'IK.JP.2.1.05 SEMINAR NASIONAL.pdf', 2),
(7, 'IK.BALITTAS.JP.2.1.06', 'Pelaksanaan Magang, PKL, dan Penelitian', 'IK.JP.2.1.06 MAGANG, PKL.pdf', 2),
(8, 'IK.BALITTAS.YT.2.4.01', 'Pelaksanaan Penelitian di Kebun Percobaan', 'IK.YT.2.4.01 PELAKSANAAN PENELITIAN DI KEBUN PERCOBAAN.pdf', 4),
(9, 'IK.BALITTAS.YT.2.4.02', 'Pengelolaan Tenaga Kerja Harian Kebun Percobaan', 'IK.YT.2.4.02 PENGELOLAAN TENAGA KERJA HARIAN KEBUN PERCOBAAN.pdf', 4),
(10, 'IK.BALITTAS.YT.2.4.03', 'Pemanfaatan Lahan Kebun Percobaan', 'IK.YT.2.4.03 PEMANFAATAN LAHAN KEBUN PERCOBAAN KARANGPLOSO.pdf', 4),
(11, 'IK.BALITTAS.YT.2.4.04', 'Pengelolaan Keuangan Kebun Percobaan', 'IK.YT.2.4.04 PENGELOLAAN KEUANGAN.pdf', 4),
(12, 'IK.BALITTAS.YT.2.4.05', 'Pengelolaan Barang Habis Pakai Kebun Percobaan', 'IK.YT.2.4.05 PENGELOLAAN BARANG HABIS PAKAI.pdf', 4),
(13, 'IK.BALITTAS.YT.2.4.06', 'Kunjungan Tamu ke Kebun Percobaan', 'IK.YT.2.4.06KUNJUNGAN TAMU.pdf', 4),
(14, 'IK.BALITTAS.YT.2.5.01', 'Instruksi Kerja Penelitian Bidang Ekofisiologi', 'IK.BALITTAS.YT.2.5.01 Penelitian Ekofisiologi.pdf', 5),
(15, 'IK.BALITTAS.YT.2.5.02', 'Instruksi Kerja Penelitian Bidang Entomologi dan Fitopatologi', 'IK.BALITTAS.YT.2.5.02 Penelitian Entomologi.pdf', 5),
(16, 'IK.BALITTAS.YT.2.5.03', 'Instruksi Kerja Penelitian Pemuliaan, Plasma Nutfah dan Perbenihan', 'IK.BALITTAS.YT.2.5.03 Penelitian Pemuliaan dan Perbenihan.pdf', 5),
(17, 'IK.BALITTAS.YT.2.5.04', 'Penggunaan Cold dan Seed Storage', 'IK.BALITTAS.YT.2.5.04 Penggunaan Cold dan Seed Storage.pdf', 5),
(18, 'IK.BALITTAS.YT.2.5.05', 'Penggunaan Rumah Kassa/Kaca', 'IK.BALITTAS.YT.2.5.05 Rumah kassa dan kaca.pdf', 5),
(19, 'IK.BALITTAS.TU.2.2.01', 'Usulan Diklat Fungsional', 'IK.TU.2.2.01 DIKLAT FUNGSIONAL.pdf', 6),
(20, 'IK.BALITTAS.TU.2.2.02', 'Usulan Diklat Kepemimpinan', 'IK.TU.2.2.02 DIKLAT KEPEMIMPINAN.pdf', 6),
(21, 'IK.BALITTAS.TU.2.2.03', 'Usulan Diklat Prajabatan', 'IK.TU.2.2.03 DIKLAT PRAJABATAN.pdf', 6),
(22, 'IK.BALITTAS.TU.2.2.04', 'Usulan Ijin Belajar Biaya Mandiri', 'IK.TU.2.2.04 IJIN BELAJAR.pdf', 6),
(23, 'IK.BALITTAS.TU.2.2.05', 'Usulan Tugas Belajar', 'IK.TU.2.2.05 TUGAS BELAJAR.pdf', 6),
(24, 'IK.BALITTAS.TU.2.2.06', 'Usulan Ujian Dinas', 'IK.TU.2.2.06 UJIAN DINAS.pdf', 6),
(25, 'IK.BALITTAS.TU.2.2.07', 'Usulan Penerimaan Penghargaan', 'IK.TU.2.2.07 PENERIMA PENGHARGAAN.pdf', 6),
(26, 'IK.BALITTAS.TU.2.2.08', 'Pengelola Database SIMPEG', 'IK.TU.2.2.08 PENGELOLAAN DATABASE SIMPEG.pdf', 6),
(27, 'IK.BALITTAS.TU.2.2.09', 'Usulan Penilaian Prestasi Kerja Pegawai (SKP)', 'IK.TU.2.2.09 PENILAIAN PRESTASI KERJA.pdf', 6),
(28, 'IK.BALITTAS.TU.2.2.10', 'Usulan KARPEG, KARIS, dan KARSU', 'IK.TU.2.2.10 USULAN KARPEG-KARIS-KARSU DAN KARPEG.pdf', 6),
(29, 'IK.BALITTAS.TU.2.2.11', 'Usulan Sumpah PNS', 'IK.TU.2.2.11 SUMPAH PNS.pdf', 6),
(30, 'IK.BALITTAS.TU.2.2.12', 'Usulan Cuti Pegawai', 'IK.TU.2.2.12 CUTI PEGAWAI.pdf', 6),
(31, 'IK.BALITTAS.TU.2.2.13', 'Usulan KP4', 'IK.TU.2.2.13 KP4.pdf', 6),
(32, 'IK.BALITTAS.TU.2.2.14', 'Permohonan Ijin', 'IK.TU.2.2.14 PERMOHONAN IJIN.pdf', 6),
(33, 'IK.BALITTAS.TU.2.2.15', 'Kenaikan Gaji Berkala', 'IK.TU.2.2.15 KENAIKAN GAJI BERKALA.pdf', 6),
(34, 'IK.BALITTAS.TU.2.2.16', 'Usulan Mutasi / Alih Tugas', 'IK.TU.2.2.16 MUTASI ALIH TUGAS.pdf', 6),
(35, 'IK.BALITTAS.TU.2.2.17', 'Usulan Penyesuaian Ijazah', 'IK.TU.2.2.17 PENYESUAIAN IJAZAH.pdf', 6),
(36, 'IK.BALITTAS.TU.2.2.18', 'Usulan Pemberhentian / Pensiun', 'IK.TU.2.2.18 PENSIUN.pdf', 6),
(37, 'IK.BALITTAS.TU.2.2.19', 'Usulan Kenaikan Pangkat Fungsional', 'IK.TU.2.2.19 KENAIKAN PANGKAT FUNGSIONAL.pdf', 6),
(38, 'IK.BALITTAS.TU.2.2.20', 'Usulan Kenaikan Pangkat Reguler', 'IK.TU.2.2.20 KENAIKAN PANGKAT REGULER.pdf', 6),
(39, 'IK.BALITTAS.TU.2.2.21', 'Penerbitan SK Kenaikan Pangkat Reguler', 'IK.TU.2.2.21 PENERBITAN SK KENAIKAN PANGKAT REGULER.pdf', 6),
(40, 'IK.BALITTAS.TU.2.2.22', 'Usulan Penerbitan SK PNS (100%)', 'IK.TU.2.2.22 PENERBITAN SK PNS.pdf', 6),
(41, 'IK.BALITTAS.TU.2.2.23', 'Usulan Pembebasan Sementara Jabatan Fungsional', 'IK.TU.2.2.23 PEMBEBASAN SEMENTARA JABFUNG.pdf', 6),
(42, 'IK.BALITTAS.TU.2.2.24', 'Usulan Aktif Bekerja Kembali', 'IK.TU.2.2.24 AKTIF BEKERJA KEMBALI.pdf', 6),
(43, 'IK.BALITTAS.TU.2.2.25', 'Usulan Aktif Fungsional', 'IK.TU.2.2.25 AKTIF FUNGSIONAL.pdf', 6),
(44, 'IK.BALITTAS.TU.2.2.26', 'Usulan Jabatan Fungsional Non - Peneliti', 'IK.TU.2.2.26 USULAN JABATAN FUNGSIONAL NON - PENELITI.pdf', 6),
(45, 'IK.BALITTAS.TU.2.2.27', 'Usulan Kenaikan Jabatan Fungsional Peneliti', 'IK.TU.2.2.27 KENAIKAN JABFUNG PENELITI.pdf', 6),
(46, 'IK.BALITTAS.TU.2.2.28', 'Laporan Kehadiran Pegawai', 'IK.TU.2.2.28 LAPORAN KEHADIRAN PEGAWAI.pdf', 6),
(47, 'IK.BALITTAS.TU.2.2.29', 'Usulan Pembuatan Surat Peringatan Pegawai', 'IK.TU.2.2.29 PEMBUATAN SURAT PERINGATAN.pdf', 6),
(48, 'IK.BALITTAS.TU.2.2.30', 'Usulan Penyelesaian Kasus Pegawai', 'IK.TU.2.2.30 PENYELESAIAN KASUS PEGAWAI.pdf', 6),
(49, 'IK.BALITTAS.TU.2.2.31', 'Usulan Tes Kesehatan PNS', 'IK.TU.2.2.31 TES KESEHATAN PNS.pdf', 6),
(50, 'IK.BALITTAS.TU.2.1.01', 'Laporan Penerimaan Negara Bukan Pajak (PNBP)', 'IK.TU.2.1.01 LAPORAN PNBP.pdf', 8),
(51, 'IK.BALITTAS.TU.2.1.02', 'Pengelola Keuangan', 'IK.TU.2.1.02 PENGELOLAAN KEUANGAN.pdf', 8),
(52, 'IK.BALITTAS.TU.2.1.03', 'Usulan Revisi', 'IK.TU.2.1.03 USULAN REVISI.pdf', 8),
(53, 'IK.BALITTAS.TU.2.1.04', 'Pembuatan Daftar Gaji', 'IK.TU.2.1.04 PEMBUATAN DAFTAR GAJI.pdf', 8),
(54, 'IK.BALITTAS.TU.2.1.05', 'Kendali Belanja Gaji', 'IK.TU.2.1.05 KENDALI GAJI.pdf', 8),
(55, 'IK.BALITTAS.TU.2.1.06', 'Verifikasi Keuangan', 'IK.TU.2.1.06 VERIVIKASI KEUANGAN.pdf', 8),
(56, 'IK.BALITTAS.TU.2.1.07', 'Pungutan dan Penyetoran Pajak', 'IK.TU.2.1.07 PUNGUTAN DAN PENYETORAN PAJAK.pdf', 8),
(57, 'IK.BALITTAS.TU.2.1.08', 'Perjalanan Dinas', 'IK.TU.2.1.08 PERJALANAN DINAS.pdf', 8),
(58, 'IK.BALITTAS.TU.2.1.09', 'Pengajuan UP/TUP/GUP', 'IK.TU.2.1.09 PENGAJUAN UP-TUP-GUP.pdf', 8),
(59, 'IK.BALITTAS.TU.2.1.10', 'Pembayaran Langsung', 'IK.TU.2.1.10 PEMBAYARAN LANGSUNG.pdf', 8),
(60, 'IK.BALITTAS.TU.2.1.11', 'Proses Penerbitan SPM', 'IK.TU.2.1.11 PEMBUATAN SPM.pdf', 8),
(61, 'IK.BALITTAS.TU.2.1.12', 'Rekonsiliasi Anggaran', 'IK.TU.2.1.12 REKOSILIASI ANGGARAN.pdf', 8),
(62, 'IK.BALITTAS.TU.2.1.13', 'Penyusunan Laporan SAIBA', 'IK.TU.2.1.13 PENYUSUNAN SAKPA.pdf', 8),
(63, 'IK.BALITTAS.TU.2.1.14', 'Pengelolaan Uang Muka Kerja', 'IK.TU.2.1.14 PENGELOLAAN UANG MUKA KERJA.pdf', 8),
(64, 'IK.BALITTAS.TU.2.1.15', 'Pengawasan Mata Anggaran Keuangan', 'IK.TU.2.1.15 PENGAWASAN MATA ANGGARAN.pdf', 8),
(65, 'IK.BALITTAS.TU.2.1.16', 'Pengarsipan SPJ/SPM/SP2D', 'IK.TU.2.1.16 PENGARSIPAN SPJ-SPM-SP2D.pdf', 8),
(66, 'IK.BALITTAS.TU.2.1.17', 'Tindak Lanjut Laporan LHP', 'IK.TU.2.1.17 TINDAK LANJUT LHP.pdf', 8),
(67, 'IK.BALITTAS.TU.2.1.18', 'Pengajuan Lembur', 'IK.TU.2.1.18 PENGAJUAN LEMBUR.pdf', 8),
(68, 'IK.BALITTAS.YT.2.2.01', 'Prosedur Monitoring', 'IK.YT.2.2.01 PROSEDUR  MONITORING.pdf', 9),
(69, 'IK.BALITTAS.YT.2.2.02', 'Penyusunan Laporan Bulanan, Triwulan, Tengah Tahun dan Akhir', 'IK.YT.2.2.02 PENYUSUNAN LAPORAN.pdf', 9),
(70, 'IK.BALITTAS.KT.2.3.01', 'Pelepasan Varietas', 'IK.KT.2.3.01 PELEPASAN   VARIETAS-1.pdf', 10),
(71, 'IK.BALITTAS.KT.2.3.02', 'Pendaftaran Varietas Tanaman', 'IK.KT.2.3.02 PENDAFTARAN VARIETAS  TANAMAN-1.pdf', 10),
(72, 'IK.BALITTAS.KT.2.3.03', 'Perlindungan Varietas Tanaman', 'IK.KT.2.3.03 PERLINDUNGAN VARIETAS  TANAMAN (1).pdf', 10),
(73, 'IK.BALITTAS.KT.2.2.01', 'Pemuliaan Tanaman Pemanis, Serat, Tembakau dan Minyak Industri', 'IK.KT.2.2.01 PEMULIAAN TANAMAN TSM.pdf', 12),
(74, 'IK.BALITTAS.TU.2.4.01', 'Mekanisme Pengadaan Barang/Jasa, Pemborongan Dengan Pengadaan Langsung', 'IK.TU.2.4.01 PENGADAAN LANGSUNG.pdf', 13),
(75, 'IK.BALITTAS.TU.2.4.02', 'Mekanisme Pengadaan Barang/Jasa Dengan Pelelangan Umum LPSE', 'IK.TU.2.4.02 MEKANISME PENGADAAN BARANG-JASA.pdf', 13),
(76, 'IK.BALITTAS.TU.2.4.03', 'Mekanisme Seleksi Penyedia Barang/Jasa', 'IK.TU.2.4.03 MEKANISME SELEKSI PENYEDIA BARANGJASA.pdf', 13),
(77, 'IK.BALITTAS.TU.2.4.04', 'Mekanisme Pengadaan Barang/Alat Secara On-line/E Katalog', 'IK.TU.2.4.04 SITEM E KATALOG.pdf', 13),
(78, 'IK.BALITTAS.TU.2.4.05', 'Mekanisme Pengadaan Bahan Sarana Penelitian/Perkantoran (Barang Habis Pakai)', 'IK.TU.2.4.05 MEKANISME PENGADAAN BARANG HABIS PAKAI.pdf', 13),
(79, 'IK.BALITTAS.TU.2.3.01', 'Prosedur Akuntansi Barang Milik Negara', 'IK.TU.2.3.01 PROSEDUR AKUNTANSI BARANG MILIK NEGARA.pdf', 16),
(80, 'IK.BALITTAS.TU.2.3.02', 'Pencatatan dan Pendistribusian Pengadaan Barang dan Jasa', 'IK.TU.2.3.02 PENCATATAN DAN DISTRIBUSU PENGADAAN BMN DAN JASA.pdf', 16),
(81, 'IK.BALITTAS.TU.2.3.03', 'Usulan Penetapan Rumah Negara', 'IK.TU.2.3.03 PENETAPAN RUMAH NEGARA.pdf', 16),
(82, 'IK.BALITTAS.TU.2.3.04', 'Usulan Penghunian Rumah Negara', 'IK.TU.2.3.04 PENGHUNIAN RUMAH NEGARA.pdf', 16),
(83, 'IK.BALITTAS.TU.2.3.05', 'Usulan Pemanfaatan/Penggunaan Barang Milik Negara', 'IK.TU.2.3.05 PEMANFAATAN-PENGGUNAAN BMN.pdf', 16),
(84, 'IK.BALITTAS.TU.2.3.06', 'Penghapusan Barang Milik Negara', 'IK.TU.2.3.06 PENGHAPUSAN BARANG MILIK NEGARA.pdf', 16),
(85, 'IK.BALITTAS.TU.2.3.07', 'Barang Persediaan/Pakai Habis', 'IK.TU.2.3.07 PROSES PENGADAAN DAN DISTRIBUSI BARANG PAKAI HABIS.pdf', 16),
(86, 'IK.BALITTAS.TU.2.3.08', 'Proses Usulan Pinjam Pakai Barang Milik Negara', 'IK.TU.2.3.08 PROSES USULAN PINJAM PAKAI BMN.pdf', 16),
(87, 'IK.BALITTAS.JP.2.2.01', 'Pengolahan Bahan Pustaka', 'IK.JP.2.2.01 PENGOL.BAHAN PUSTAKA.pdf', 17),
(88, 'IK.BALITTAS.JP.2.2.02', 'Pelayanan Perpustakaan Terbuka', 'IK.JP.2.2.02 PELAYANAN PERPUS.pdf', 17),
(89, 'IK.BALITTAS.JP.2.2.03', 'Peminjaman dan Pengembalian Buku', 'IK.JP.2.2.03 PEMINJAMAN DAN PENGEMBALIAN BUKU.pdf', 17),
(90, 'IK.BALITTAS.KT.2.1.01', 'Eksplorasi dan Koleksi Plasma Nutfah Tanaman Pemanis, Serat, Tembakau dan Minyak Industri', 'IK.KT.2.1.01 EKSPLORASI DAN KOLEKSI PN.pdf', 27),
(91, 'IK.BALITTAS.KT.2.1.02', 'Konservasi Plasma Nutfah Tanaman Pemanis, Serat, Tembakau, dan Minyak Industri', 'IK.KT.2.1.02 KONSERVASI PN.pdf', 27),
(92, 'IK.BALITTAS.KT.2.1.03', 'Karakterisasi dan Evaluasi Plasma Nutfah Tanaman Pemanis, Serat, Tembakau dan Minyak Industri', 'IK.KT.2.1.03 KARAKTERISASI DAN EVALUASI PN.pdf', 27),
(93, 'IK.BALITTAS.KT.2.1.04', 'Dokumentasi Plasma Nutfah Tanaman Pemanis, Serat, Tembakau dan Minyak Industri', 'IK.KT.2.1.04 DOKUMENTASI PLASMA NUTFAH TANAMAN.pdf', 27),
(94, 'IK.BALITTAS.UB.2.1.01', 'Produksi Benih Sumber Kenaf dan Rosela Herbal', 'IK.BALITTAS.UB.2.1.01.(kenaf).pdf', 25),
(95, 'IK.BALITTAS.UB.2.1.02', 'Produksi Benih Sumber Tebu Bagal Mikro', 'IK.BALITTAS.UB.2.1.02.(tebu).pdf', 25),
(96, 'IK.BALITTAS.UB.2.1.03', 'Produksi Benih Sumber Tembakau', 'IK.BALITTAS.UB.2.1.03.(tembakau).pdf', 25),
(97, 'IK.BALITTAS.UB.2.1.04', 'Produksi Benih Sumber Kapas', 'IK.BALITTAS.UB.2.1.04.(kapas).pdf', 25),
(98, 'IK.BALITTAS.UB.2.1.05', 'Produksi Benih Sumber Jarak Kepyar', 'IK.BALITTAS.UB.2.1.05.(kepyar).pdf', 25),
(99, 'IK.BALITTAS.UB.2.1.06', 'Produksi Benih Sumber Wijen', 'IK.BALITTAS.UB.2.1.06.(wijen).pdf', 25),
(100, 'IK.BALITTAS.YT.2.1.01', 'Penyusunan Matrik Penelitian dan Diseminasi', 'IK.YT.2.1.01 PENYUSUNAN MATRIKS.pdf', 18),
(101, 'IK.BALITTAS.YT.2.1.02', 'Penyusunan RPTP dan RDHP', 'IK.YT.2.1.02 PENYUSUNAN RPTP-RDHP.pdf', 18),
(102, 'IK.BALITTAS.YT.2.1.03', 'Penyusunan RKTM', 'IK.YT.2.1.03 PENYUSUNAN RKTM.pdf', 18),
(103, 'IK.BALITTAS.YT.2.1.04', 'Penyusunan RKAKL/DIPA', 'IK.YT.2.1.04 PENYUSUNAN RKAKL-DIPA.pdf', 18),
(104, 'IK.BALITTAS.YT.2.1.05', 'Revisi DIPA', 'IK.YT.2.1.05 REVISI DIPA.pdf', 18),
(105, 'IK.BALITTAS.YT.2.1.06', 'Revisi POK', 'IK.YT.2.1.06 REVISI POK.pdf', 18),
(106, 'IK.BALITTAS.YT.2.1.07', 'Penyusunan Renja Penelitian dan Diseminasi', 'IK.YT.2.1.07 PENYUSUNAN RENJA.pdf', 18),
(107, 'IK.BALITTAS.YT.2.3.01', 'Perencanaan Pengadaan Sarana Penelitian', 'IK.YT.2.3. 01 PERENCANAAN PENGADAAN SARANA PENELITIAN.pdf', 19),
(108, 'IK.BALITTAS.TU.2.6.01', 'Pengamanan Lingkungan Kantor', 'IK.BALITTAS. TU.2.6.01 KEAMANAN KANTOR.pdf', 20),
(109, 'IK.BALITTAS.TU.2.6.02', 'Peminjaman Kendaraan', 'IK.BALITTAS.TU.2.6.02 PEMINJAMAN KENDARAAN.pdf', 20),
(110, 'IK.BALITTAS.TU.2.6.03', 'Peminjaman Ruang Rapat', 'IK.BALITTAS.TU.2.6.03 PEMINJAMAN RUANG RAPAT.pdf', 20),
(111, 'IK.BALITTAS.TU.2.6.04', 'Cleaning Service', 'IK.BALITTAS.TU.2.6.04 CLEANING SERVICE.pdf', 20),
(112, 'IK.BALITTAS.TU.2.6.05', 'Pemeliharaan Kendaraan', 'IK.BALITTAS.TU.2.6.05 PEMELIHARAAN KENDARAAN.pdf', 20),
(113, 'IK.BALITTAS.TU.2.6.06', 'Pemeliharaan Gedung', 'IK.BALITTAS.TU.2.6.06 PEMELIHARAAN GEDUNG.pdf', 20),
(114, 'IK.BALITTAS.TU.2.6.07', 'Pemeliharaan Jaringan', 'IK.BALITTAS.TU.2.6.07 PEMELIHARAAN JARINGAN.pdf', 20),
(115, 'IK.BALITTAS.TU.2.6.08', 'Pengaturan Parkir Kendaraan', 'IK.BALITTAS.TU.2.6.08 PENGATURAN PARKIR KENDARAAN.pdf', 20),
(116, 'IK.BALITTAS.TU.2.6.09', 'Petunjuk Pengelolaan Genset', 'IK.BALITTAS.TU.2.6.09 PETUNJUK PENGELOLAAN GENSET.pdf', 20),
(117, 'IK.BALITTAS.TU.2.6.10', 'Petunjuk Mengoperasionalkan Hand Traktor', 'IK.BALITTAS.TU.2.6.10 PETUNJUK PENGGUNAAN HAND TRAKTOR.pdf', 20);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Pedoman Mutu'),
(2, 'Prosedur Kerja'),
(3, 'Instruksi Kerja'),
(4, 'Form Mutu');

-- --------------------------------------------------------

--
-- Table structure for table `pedoman_mutu`
--

CREATE TABLE `pedoman_mutu` (
  `id` int(11) NOT NULL,
  `kode_prosedur` varchar(64) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedoman_mutu`
--

INSERT INTO `pedoman_mutu` (`id`, `kode_prosedur`, `judul`, `file`) VALUES
(1, 'PM.BALITTAS.2', 'Pedoman Mutu', 'PM.2.PEDOMAN MUTU.T6-Rev1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `prosedur_kerja`
--

CREATE TABLE `prosedur_kerja` (
  `id` int(11) NOT NULL,
  `kode` varchar(64) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `klausul` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `id_pedoman_mutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prosedur_kerja`
--

INSERT INTO `prosedur_kerja` (`id`, `kode`, `judul`, `klausul`, `file`, `id_pedoman_mutu`) VALUES
(1, 'PK.BALITTAS.WP.2.2', 'Audit Internal', '', 'PK.WP.2.2. AUDIT INTERNAL.pdf', 1),
(2, 'PK.BALITTAS.JP.2.1', 'Informasi Hasil Penelitian', '', 'PK.BALITTAS.JP.2.1 INFORMASI HSL PENELITIAN.pdf', 1),
(3, 'PK.BALITTAS.WP.2.1', 'Informasi Terdokumentasi', '', 'PK.WP.2.1 INFORMASI TERDOKUMENTASI.pdf', 1),
(4, 'PK.BALITTAS.YT.2.4', 'Pengelolaan Kebun Percobaan', '', 'PK.YT.2.4 PENGELOLAAN KEBUN PERCOBAAN.pdf', 1),
(5, 'PK.BALITTAS.YT.2.5', 'Kegiatan Penelitian dan Diseminasi Hasil Penelitian', '', 'PK.BALITTAS.YT.2.5. PELAKSANAAN KEGIATAN PENELITIAN.pdf', 1),
(6, 'PK.BALITTAS.TU.2.2', 'Pengelolaan Kepegawaian', '', 'PK.TU.2.2 PENGELOLA KEPEGAWAIAN.pdf', 1),
(7, 'PK.BALITTAS.JP.2.3', 'Pengelolaan Kerjasama', '', 'PK.JP.2.3 KERJASAMA.pdf', 1),
(8, 'PK.BALITTAS.TU.2.1', 'Pengelolaan Keuangan', '', 'PK.TU.2.1 KEUANGAN.pdf', 1),
(9, 'PK.BALITTAS.YT.2.2', 'Monitoring, Evaluasi dan Pelaporan', '', 'PK.YT.2.2 MONITORING EVALUASI.pdf', 1),
(10, 'PK.BALITTAS.KT.2.3', 'Pelepasan dan Perlindungan Varietas', '', 'PK.KT.2.3 PELEPASAN DAN    PERLINDUNGAN TANAMAN.pdf', 1),
(11, 'PK.BALITTAS.KT.2.4', 'Pembinaan Kader Peneliti dan Teknisi', '', 'PK.KT.2.4 KADER PENELITI.pdf', 1),
(12, 'PK.BALITTAS.KT.2.2', 'Pemuliaan Tanaman Pemanis, Serat, dan Minyak Industri', '', 'PK.KT.2.2.PEMULIAAN TANAMAN PEMANIS, SERAT, TEMBAKAU DAN MINYAK INDUSTRI.pdf', 1),
(13, 'PK.BALITTAS.TU.2.4', 'Pengadaan Barang dan Jasa', '', 'PK.TU.2.4 PENGAD BRG-JASA.pdf', 1),
(14, 'PK.BALITTAS.JP.2.4', 'Pengukuran Kepuasan Pelanggan', '', 'PK.JP.2.4 PELANGGAN.pdf', 1),
(15, 'PK.BALITTAS.WP.2.3', 'Peningkatan Berkelanjutan', '', 'PK.WP.2.3. PENINGKATAN BERKELANJUTAN.pdf', 1),
(16, 'PK.BALITTAS.TU.2.3', 'Pengelolaan Perlengkapan', '', 'PK.TU.2.3 URUSAN PERLENGKAPAN.pdf', 1),
(17, 'PK.BALITTAS.JP.2.2', 'Pengelolaan Perpustakaan', '', 'PK.JP.2.2 PERPUSTAKAAN.pdf', 1),
(18, 'PK.BALITTAS.YT.2.1', 'Pengelolaan Rencana Kerja dan Anggaran', '', 'PK.YT.2.1 PENGELOLAAN RENCANA KERJA DAN ANGGARAN.pdf', 1),
(19, 'PK.BALITTAS.YT.2.3', 'Pengelolaan Sarana Penelitian dan Pengembangan', '', 'PK.YT.2.3. PENGELOLAAN SARANA PENELITIAN.pdf', 1),
(20, 'PK.BALITTAS.TU.2.6', 'Pemeliharaan Sarana Prasarana dan Lingkungan Kerja', '', 'PK.BALITTAS.TU.2.6 SARANA DAN PRASARANA.pdf', 1),
(21, 'PK.BALITTAS.TU.2.5', 'Pengelolaan Surat dan Kearsipan', '', 'PK.TU.2.5 PENGELOLAAN SURAT DAN KEARSIPAN.pdf', 1),
(22, 'PK.BALITTAS.WP.2.4', 'Tinjauan Manajemen', '', 'PK.WP.2.4. TINJAUAN MANAJEMEN_T4R2016.pdf', 1),
(23, 'PK.BALITTAS.UB.2.3', 'Pengendalian Mutu Benih Sumber', '', 'PK.BALITTAS.UB.2.3.pdf', 1),
(24, 'PK.BALITTAS.UB.2.2', 'Penyimpanan dan Pemasaran Benih Sumber', '', 'PK.BALITTAS.UB.2.2.pdf', 1),
(25, 'PK.BALITTAS.UB.2.1', 'Produksi Benih Sumber', '', 'PK.BALITTAS.UB.2.1.pdf', 1),
(26, 'PK.BALITTAS.JP.2.5', 'Usulan Hak Paten', '', 'PK.JP.2.5 USULAN HAK PATEN.pdf', 1),
(27, 'PK.BALITTAS.KT.2.1', 'Pengelolaan Plasma Nutfah Tanaman Pemanis, Serat, Tembakau, dan Minyak Industri', '', 'PK.KT.2.1 PENGELOLAAN PLASMA NUTFAH TANAMAN TSM.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `id_hak_akses` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `id_hak_akses`) VALUES
(1, 'admin', 'admin', 'Admin', 'AD'),
(2, 'puspa', 'puspa', 'puspa', 'WP'),
(3, 'pengawas', 'pengawas', 'Pengawas', 'PS'),
(4, 'balittas', 'balittas', 'Umum', 'PS'),
(5, 'machfud', 'machfud', 'Machfud', 'TU');

-- --------------------------------------------------------

--
-- Table structure for table `usulan_perubahan`
--

CREATE TABLE `usulan_perubahan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pengusul` varchar(128) NOT NULL,
  `kode` varchar(128) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usulan_perubahan`
--

INSERT INTO `usulan_perubahan` (`id`, `tanggal`, `nama_pengusul`, `kode`, `judul`, `keterangan`, `id_kategori`, `id_dokumen`, `status`, `username`) VALUES
(14, '0000-00-00', '', 'PK.BALITTAS.TU.2.5', 'Pengelolaan Surat dan Kearsipan', 'Perubahan', 2, 21, 0, 'machfud'),
(15, '0000-00-00', '', 'PK.BALITTAS.TU.2.6', 'Pemeliharaan Sarana Prasarana dan Lingkungan Kerja', 'Perubahan poin 2', 2, 20, 0, 'machfud'),
(19, '2020-03-04', 'Machfud', 'PK.BALITTAS.TU.2.2', 'Pengelolaan Kepegawaian', 'Dokumen kurang lengkap', 2, 6, 0, 'machfud');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_mutu`
--
ALTER TABLE `form_mutu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_pk_from_form_mutu` (`id_pk`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_kategori_from_history` (`id_kategori`);

--
-- Indexes for table `instruksi_kerja`
--
ALTER TABLE `instruksi_kerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_pk_from_instruksi_kerja` (`id_pk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedoman_mutu`
--
ALTER TABLE `pedoman_mutu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prosedur_kerja`
--
ALTER TABLE `prosedur_kerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_pedoman_mutu_from_prosedur_kerja` (`id_pedoman_mutu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_hak_akses_from_user` (`id_hak_akses`);

--
-- Indexes for table `usulan_perubahan`
--
ALTER TABLE `usulan_perubahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_kategori_from_usulan_perubahan` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_mutu`
--
ALTER TABLE `form_mutu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `instruksi_kerja`
--
ALTER TABLE `instruksi_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pedoman_mutu`
--
ALTER TABLE `pedoman_mutu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prosedur_kerja`
--
ALTER TABLE `prosedur_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usulan_perubahan`
--
ALTER TABLE `usulan_perubahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `form_mutu`
--
ALTER TABLE `form_mutu`
  ADD CONSTRAINT `fk_id_pk_from_form_mutu` FOREIGN KEY (`id_pk`) REFERENCES `prosedur_kerja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk_id_kategori_from_history` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `instruksi_kerja`
--
ALTER TABLE `instruksi_kerja`
  ADD CONSTRAINT `fk_id_pk_from_instruksi_kerja` FOREIGN KEY (`id_pk`) REFERENCES `prosedur_kerja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prosedur_kerja`
--
ALTER TABLE `prosedur_kerja`
  ADD CONSTRAINT `fk_id_pedoman_mutu_from_prosedur_kerja` FOREIGN KEY (`id_pedoman_mutu`) REFERENCES `pedoman_mutu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_id_hak_akses_from_user` FOREIGN KEY (`id_hak_akses`) REFERENCES `hak_akses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usulan_perubahan`
--
ALTER TABLE `usulan_perubahan`
  ADD CONSTRAINT `fk_id_kategori_from_usulan_perubahan` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
