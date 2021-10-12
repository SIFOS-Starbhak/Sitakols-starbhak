-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Okt 2021 pada 07.37
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prikirin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni_siswa`
--

CREATE TABLE `alumni_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_lulus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alumni_siswa`
--

INSERT INTO `alumni_siswa` (`id`, `nama`, `kelas`, `tahun_lulus`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Yoga Pradipta S.T.', 'X', '2001', 'RPL', NULL, NULL),
(2, 'Langgeng Suwarno', 'XI', '2001', 'TKJ', NULL, NULL),
(3, 'Nyoman Mahdi Maheswara', 'X', '2004', 'TKJ', NULL, NULL),
(4, 'Calista Pratiwi', 'XII', '2003', 'TKJ', NULL, NULL),
(5, 'Laila Kusmawati', 'XII', '2002', 'MM', NULL, NULL),
(6, 'Harto Narpati', 'X', '2001', 'BC', NULL, NULL),
(7, 'Vera Suryatmi', 'XII', '2004', 'BC', NULL, NULL),
(8, 'Carub Eja Prasetyo', 'XII', '2004', 'BC', NULL, NULL),
(9, 'Tirta Prayoga', 'X', '2001', 'TKJ', NULL, NULL),
(10, 'Darsirah Pradipta S.T.', 'XI', '2002', 'BC', NULL, NULL),
(11, 'Salman Naradi Adriansyah', 'XII', '2004', 'BC', NULL, NULL),
(12, 'Lidya Ajeng Suartini S.Sos', 'XI', '2002', 'RPL', NULL, NULL),
(13, 'Warji Langgeng Maryadi', 'X', '2002', 'MM', NULL, NULL),
(14, 'Luwar Suryono', 'X', '2003', 'TKJ', NULL, NULL),
(15, 'Bakidin Rama Habibi', 'XII', '2001', 'MM', NULL, NULL),
(16, 'Faizah Handayani', 'XII', '2004', 'TKJ', NULL, NULL),
(17, 'Respati Jaswadi Sihombing', 'X', '2004', 'TKJ', NULL, NULL),
(18, 'Gawati Puspita', 'X', '2001', 'RPL', NULL, NULL),
(19, 'Imam Gunawan', 'XI', '2001', 'RPL', NULL, NULL),
(20, 'Cinta Chelsea Maryati', 'XII', '2001', 'MM', NULL, NULL),
(21, 'Cakrabuana Mandala M.Kom.', 'XII', '2001', 'BC', NULL, NULL),
(22, 'Garang Winarno', 'XI', '2004', 'MM', NULL, NULL),
(23, 'Maimunah Rahimah', 'X', '2004', 'MM', NULL, NULL),
(24, 'Makara Irawan S.Ked', 'XII', '2002', 'RPL', NULL, NULL),
(25, 'Ihsan Sirait', 'XII', '2002', 'MM', NULL, NULL),
(26, 'Gatra Halim', 'XI', '2004', 'BC', NULL, NULL),
(27, 'Gamanto Kasim Prasetyo S.I.Kom', 'XII', '2004', 'TKJ', NULL, NULL),
(28, 'Baktiono Estiono Budiyanto M.Pd', 'X', '2003', 'BC', NULL, NULL),
(29, 'Shania Astuti', 'X', '2002', 'TKJ', NULL, NULL),
(30, 'Amalia Raina Kusmawati', 'X', '2002', 'TKJ', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_prakerin`
--

CREATE TABLE `data_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` bigint(20) UNSIGNED DEFAULT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `id_perusahaan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('Pengajuan','Magang','Selesai','Batal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_prakerin`
--

INSERT INTO `data_prakerin` (`id`, `nama`, `id_kelas`, `id_siswa`, `id_perusahaan`, `id_guru`, `status`, `tgl_mulai`, `tgl_selesai`, `created_at`, `updated_at`) VALUES
(1, 'Nur Firdaus', 2, 1, 1, 20, 'Pengajuan', '2020-10-10', '2021-11-11', '2021-10-12 05:35:12', NULL),
(2, 'Rafie aydin', 3, 2, 1, 20, 'Pengajuan', '2020-10-10', '2021-11-11', '2021-10-12 05:35:12', NULL),
(3, 'Dana', 2, 3, 1, 20, 'Pengajuan', '2020-10-10', '2021-11-11', '2021-10-12 05:35:12', NULL),
(4, 'Walada', 2, 4, 1, 19, 'Pengajuan', '2020-10-10', '2021-11-11', '2021-10-12 05:35:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengajuan_prakerin`
--

CREATE TABLE `detail_pengajuan_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pengajuan_prakerin` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_pengajuan_prakerin`
--

INSERT INTO `detail_pengajuan_prakerin` (`id`, `id_pengajuan_prakerin`, `no_surat`, `created_at`, `updated_at`) VALUES
(1, 4, '001', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_surat`
--

CREATE TABLE `detail_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_surat` date NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_surat_m` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_surat`
--

INSERT INTO `detail_surat` (`id`, `tgl_surat`, `no_surat`, `id_surat_m`, `created_at`, `updated_at`) VALUES
(1, '2021-10-12', '001', 1, '2021-10-12 05:35:29', NULL),
(2, '2021-10-12', '002', 2, '2021-10-12 05:35:29', NULL),
(3, '2021-10-12', '003', 3, '2021-10-12 05:35:29', NULL),
(4, '2021-10-12', '004', 4, '2021-10-12 05:35:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_surat_k`
--

CREATE TABLE `detail_surat_k` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_template_surat` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `path_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tanda_tangan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_surat_keluar` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_surat_k`
--

INSERT INTO `detail_surat_k` (`id`, `id_template_surat`, `no_surat`, `tgl_surat`, `path_surat`, `id_tanda_tangan`, `id_surat_keluar`, `created_at`, `updated_at`) VALUES
(1, 1, '01', '2021-10-12', '/file/surat_keluar/surat/default.pdf', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pokjatujuan` enum('hubin','kurikulum','kesiswaan','sarpras') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keterangan_disposisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_detail_surat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_prakerin`
--

CREATE TABLE `fasilitas_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jurnal_prakerin` bigint(20) UNSIGNED NOT NULL,
  `mess` enum('iya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `buss_antar_jemput` enum('iya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `makan_siang` enum('iya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `intensif` enum('iya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_prakerin`
--

INSERT INTO `fasilitas_prakerin` (`id`, `id_jurnal_prakerin`, `mess`, `buss_antar_jemput`, `makan_siang`, `intensif`, `created_at`, `updated_at`) VALUES
(1, 1, 'tidak', 'tidak', 'tidak', 'iya', NULL, NULL),
(2, 2, 'iya', 'tidak', 'iya', 'tidak', NULL, NULL),
(3, 3, 'iya', 'iya', 'iya', 'iya', NULL, NULL),
(4, 4, 'iya', 'iya', 'iya', 'tidak', NULL, NULL),
(5, 5, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(6, 6, 'tidak', 'tidak', 'iya', 'tidak', NULL, NULL),
(7, 7, 'iya', 'iya', 'tidak', 'tidak', NULL, NULL),
(8, 8, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(9, 9, 'tidak', 'tidak', 'tidak', 'iya', NULL, NULL),
(10, 10, 'tidak', 'tidak', 'iya', 'iya', NULL, NULL),
(11, 11, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(12, 12, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(13, 13, 'iya', 'iya', 'iya', 'iya', NULL, NULL),
(14, 14, 'iya', 'tidak', 'iya', 'tidak', NULL, NULL),
(15, 15, 'iya', 'tidak', 'iya', 'tidak', NULL, NULL),
(16, 16, 'iya', 'iya', 'iya', 'iya', NULL, NULL),
(17, 17, 'iya', 'iya', 'tidak', 'tidak', NULL, NULL),
(18, 18, 'iya', 'iya', 'tidak', 'tidak', NULL, NULL),
(19, 19, 'iya', 'iya', 'tidak', 'tidak', NULL, NULL),
(20, 20, 'tidak', 'tidak', 'tidak', 'iya', NULL, NULL),
(21, 21, 'iya', 'iya', 'iya', 'tidak', NULL, NULL),
(22, 22, 'iya', 'tidak', 'tidak', 'tidak', NULL, NULL),
(23, 23, 'tidak', 'iya', 'tidak', 'iya', NULL, NULL),
(24, 24, 'iya', 'iya', 'tidak', 'iya', NULL, NULL),
(25, 25, 'tidak', 'tidak', 'iya', 'tidak', NULL, NULL),
(26, 26, 'iya', 'iya', 'tidak', 'iya', NULL, NULL),
(27, 27, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(28, 28, 'iya', 'iya', 'iya', 'tidak', NULL, NULL),
(29, 29, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(30, 30, 'tidak', 'tidak', 'tidak', 'iya', NULL, NULL),
(31, 31, 'iya', 'iya', 'iya', 'tidak', NULL, NULL),
(32, 32, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(33, 33, 'iya', 'iya', 'iya', 'iya', NULL, NULL),
(34, 34, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(35, 35, 'iya', 'tidak', 'tidak', 'tidak', NULL, NULL),
(36, 36, 'tidak', 'iya', 'tidak', 'iya', NULL, NULL),
(37, 37, 'tidak', 'tidak', 'iya', 'tidak', NULL, NULL),
(38, 38, 'iya', 'tidak', 'tidak', 'iya', NULL, NULL),
(39, 39, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(40, 40, 'iya', 'iya', 'iya', 'tidak', NULL, NULL),
(41, 41, 'tidak', 'tidak', 'iya', 'tidak', NULL, NULL),
(42, 42, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(43, 43, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(44, 44, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(45, 45, 'iya', 'iya', 'tidak', 'iya', NULL, NULL),
(46, 46, 'tidak', 'iya', 'iya', 'iya', NULL, NULL),
(47, 47, 'iya', 'tidak', 'iya', 'tidak', NULL, NULL),
(48, 48, 'iya', 'tidak', 'iya', 'iya', NULL, NULL),
(49, 49, 'tidak', 'iya', 'tidak', 'iya', NULL, NULL),
(50, 50, 'tidak', 'tidak', 'tidak', 'iya', NULL, NULL),
(51, 51, 'tidak', 'tidak', 'iya', 'iya', NULL, NULL),
(52, 52, 'iya', 'tidak', 'tidak', 'tidak', NULL, NULL),
(53, 53, 'tidak', 'iya', 'iya', 'tidak', NULL, NULL),
(54, 54, 'iya', 'iya', 'tidak', 'tidak', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_detail_surat` bigint(20) UNSIGNED NOT NULL,
  `id_dari` bigint(20) UNSIGNED NOT NULL,
  `id_untuk` bigint(20) UNSIGNED NOT NULL,
  `description_feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `nik` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` enum('admin','litbang','tu','kaprog','kepsek','waka','bkk','hubin','kurikulum','kesiswaan','sarpras','kejuruan','pembimbing') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jurusan` bigint(20) UNSIGNED DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_user`, `nik`, `nama`, `jabatan`, `id_jurusan`, `no_telp`, `created_at`, `updated_at`) VALUES
(1, NULL, 7211384704068337, 'Hj.Cemani Siregar', 'kejuruan', 3, '18098613', NULL, NULL),
(2, NULL, 1224732007213646, 'Hj.Hendri Kuswoyo S.Pd', 'kejuruan', 2, '105019956', NULL, NULL),
(3, NULL, 3522052105106648, 'drg.Calista Diah Riyanti', 'kejuruan', 4, '13675053', NULL, NULL),
(4, NULL, 1210734208164620, 'Hj.Niyaga Okto Nainggolan', 'kejuruan', 4, '782042321', NULL, NULL),
(5, NULL, 6302361507008612, 'dr.Ibun Gunarto', 'kejuruan', 5, '871620481', NULL, NULL),
(6, NULL, 1376440806961221, 'H.Sakti Kenari Saefullah', 'kejuruan', 5, '390843868', NULL, NULL),
(7, NULL, 1309051906944754, 'Hj.Ida Usada', 'kejuruan', 2, '784006264', NULL, NULL),
(8, 1, 1109131002124743, 'Hj.Tina Sudiati M.Pd', 'hubin', NULL, '583405563', NULL, NULL),
(9, 2, 7501615103183219, 'dr.Harto Zulkarnain S.Farm', 'kaprog', 1, '864043848', NULL, NULL),
(10, 3, 7603566307120526, 'drg.Dian Riyanti M.M.', 'bkk', NULL, '118038351', NULL, NULL),
(11, 12, 6502541111134385, 'Drs.Samiah Anggraini', 'tu', 1, '733768696', NULL, NULL),
(12, 13, 3275253006965588, 'drg.Malika Suartini', 'kurikulum', NULL, '335926394', NULL, NULL),
(13, 14, 1605371604925915, 'Dr.Olivia Aryani S.Pt', 'kesiswaan', NULL, '867734582', NULL, NULL),
(14, 15, 3577570502039876, 'drg.Nova Diana Hasanah', 'litbang', NULL, '145949473', NULL, NULL),
(15, 16, 7471225908188470, 'Dr.Paulin Wijayanti', 'kepsek', NULL, '951076587', NULL, NULL),
(16, 17, 1708565605974837, 'dr.Cakrawangsa Asmuni Dabukke', 'hubin', NULL, '212389811', NULL, NULL),
(17, 18, 6106000709936627, 'drg.Praba Tampubolon S.Kom', 'sarpras', NULL, '109809385', NULL, NULL),
(18, 19, 5101766506099886, 'drg.Harjaya Winarno', 'pembimbing', NULL, '509834015', NULL, NULL),
(19, 20, 3204571002145306, 'Hj.Oliva Usamah', 'pembimbing', NULL, '616348213', NULL, NULL),
(20, 21, 1613686511999745, 'dr.Eli Agnes Melani M.Farm', 'pembimbing', NULL, '676888219', NULL, NULL),
(21, 22, 9203202712988363, 'Hj.Puput Palastri', 'pembimbing', NULL, '745320721', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_surat`
--

CREATE TABLE `isi_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pukul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `id_detail_surat_k` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `isi_surat`
--

INSERT INTO `isi_surat` (`id`, `nama_surat`, `hari`, `tanggal`, `pukul`, `tempat`, `alamat`, `id_guru`, `id_detail_surat_k`, `created_at`, `updated_at`) VALUES
(1, 'Surat tugas', 'Senin s.d. Sabtu', '25 Januari s.d. 26 Februari 2021', '08.00 WIB s.d Selesai ', 'APKOMINDO ', 'Ruko Harco Mangga Dua Blok I/28, Jl. Mangga Dua Raya,  Mangga Dua Sel., Sawah Besar, Kota Jakarta Pusat', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_harian`
--

CREATE TABLE `jurnal_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `datang` time NOT NULL,
  `pulang` time NOT NULL,
  `kegiatan_harian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_perusahaan` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurnal_harian`
--

INSERT INTO `jurnal_harian` (`id`, `tanggal`, `datang`, `pulang`, `kegiatan_harian`, `id_perusahaan`, `id_siswa`, `created_at`, `updated_at`) VALUES
(1, '2021-12-30', '07:11:54', '12:03:26', 'Itaque iure ea neque. Aut itaque iure corrupti non. Iure sit sint consequatur ducimus.', 1, 1, NULL, NULL),
(2, '2022-01-29', '07:19:26', '12:12:51', 'Sunt consequatur nisi iusto hic dolores. Aut autem repellat ad unde.', 1, 1, NULL, NULL),
(3, '2022-01-24', '07:13:22', '14:41:23', 'Adipisci modi beatae et vel. Iure dignissimos eius molestiae autem. Et neque at quia sit.', 1, 1, NULL, NULL),
(4, '2022-02-07', '07:32:51', '14:41:19', 'Magnam qui eum iste ut corrupti. Iste doloribus voluptatem harum dolorem assumenda voluptatem.', 1, 1, NULL, NULL),
(5, '2021-12-04', '07:54:46', '13:44:28', 'Omnis eos ut facere doloremque earum. Impedit neque praesentium atque est porro consectetur.', 1, 1, NULL, NULL),
(6, '2022-02-19', '07:45:01', '13:20:11', 'Nulla est cum rem harum est. Tempora aliquam velit est quaerat suscipit.', 1, 1, NULL, NULL),
(7, '2022-01-29', '07:00:05', '12:14:16', 'Quidem voluptatem et illum. Laboriosam aliquid aut voluptas maiores culpa deserunt.', 1, 1, NULL, NULL),
(8, '2022-03-15', '07:22:58', '13:54:20', 'Natus quam nostrum quisquam enim. Sint facilis nulla sit dolorem et id aut.', 1, 1, NULL, NULL),
(9, '2022-02-15', '07:12:11', '12:41:57', 'Dolores vel ut neque voluptatem quia excepturi. Cum molestiae et cumque autem sunt sapiente.', 1, 1, NULL, NULL),
(10, '2021-12-20', '07:00:33', '13:06:02', 'Accusamus non nulla accusantium veritatis sed provident sed. Molestiae voluptate quis illo in.', 2, 2, NULL, NULL),
(11, '2021-10-12', '07:20:10', '14:20:03', 'Earum et enim architecto maiores ducimus voluptatum. Ex suscipit iste amet dolor.', 2, 2, NULL, NULL),
(12, '2021-12-12', '07:42:12', '13:58:16', 'Qui laboriosam cupiditate eum fuga doloremque. Tempore quod ipsum eos.', 2, 2, NULL, NULL),
(13, '2022-03-08', '07:44:04', '12:08:53', 'Est dolor doloribus itaque ut et. Repudiandae accusantium voluptas aut ut numquam.', 2, 2, NULL, NULL),
(14, '2022-03-10', '07:49:26', '14:22:15', 'Qui placeat a iure officia voluptatibus. Dolor rerum qui amet officia numquam.', 2, 2, NULL, NULL),
(15, '2022-01-15', '07:55:14', '13:31:24', 'Fuga ad cupiditate sint. Quas corrupti aperiam aut qui harum. Commodi vitae unde nihil odit harum.', 2, 2, NULL, NULL),
(16, '2022-02-27', '07:35:40', '13:27:09', 'Odio suscipit ut dolores nobis sed iure. Ipsum voluptas vel qui sapiente aspernatur dolorum error.', 2, 2, NULL, NULL),
(17, '2021-11-21', '07:32:23', '12:31:57', 'Aspernatur accusantium laborum sed vel illo. Tempora dolor numquam expedita unde voluptate quae.', 2, 2, NULL, NULL),
(18, '2022-04-05', '07:58:04', '14:35:19', 'Error magnam soluta totam eius omnis tenetur. Tenetur nostrum assumenda aut excepturi nostrum.', 2, 2, NULL, NULL),
(19, '2022-02-12', '07:51:44', '12:11:15', 'Explicabo cupiditate omnis quae. Saepe eius nobis molestiae facere consequuntur a.', 3, 3, NULL, NULL),
(20, '2022-01-27', '07:58:14', '14:42:46', 'Quis et debitis quia quasi officia at delectus facilis. Culpa sapiente nemo sapiente est minus.', 3, 3, NULL, NULL),
(21, '2022-03-12', '07:15:47', '12:52:46', 'Quo nam modi est quia. Sit blanditiis aut dolor et incidunt vitae.', 3, 3, NULL, NULL),
(22, '2022-01-16', '07:22:24', '12:59:42', 'Eos aut odio id velit minima iusto eos rerum. Minus perferendis eligendi aperiam.', 3, 3, NULL, NULL),
(23, '2022-02-02', '07:05:00', '14:50:53', 'Porro quidem tenetur numquam. Enim in officiis sit officia ut.', 3, 3, NULL, NULL),
(24, '2022-01-04', '07:25:05', '12:20:34', 'Corrupti molestiae quod et amet. Quae voluptatem autem aut.', 3, 3, NULL, NULL),
(25, '2021-12-26', '07:01:35', '12:18:35', 'Voluptatem omnis sit sit rerum beatae quos ex. In assumenda ratione consequuntur aspernatur.', 3, 3, NULL, NULL),
(26, '2021-12-25', '07:37:56', '14:34:28', 'Aperiam nesciunt distinctio repellat aut. Perferendis dolor quo id hic harum enim velit.', 3, 3, NULL, NULL),
(27, '2021-10-18', '07:25:41', '12:33:09', 'Sit quasi non iure vitae atque. Blanditiis quidem reprehenderit tempora architecto.', 3, 3, NULL, NULL),
(28, '2021-12-03', '07:50:50', '14:21:28', 'Deleniti quia nemo iusto non consequatur. Id aut sed ratione illo. Earum officiis aut dolor.', 4, 4, NULL, NULL),
(29, '2021-12-15', '07:38:37', '12:40:32', 'Vero molestiae earum nihil nemo. Ab iure labore aut voluptatem quo. Et in perspiciatis vitae autem.', 4, 4, NULL, NULL),
(30, '2022-01-18', '07:12:06', '14:44:39', 'Et in odit sit et iusto et et. Est vero ut consequuntur. Distinctio inventore ex autem eos.', 4, 4, NULL, NULL),
(31, '2022-01-22', '07:08:38', '14:47:46', 'Autem quod expedita temporibus. Molestias quis voluptatem recusandae occaecati.', 4, 4, NULL, NULL),
(32, '2021-10-29', '07:24:09', '12:41:25', 'Occaecati qui architecto aut aut cum. Nihil voluptatem animi et sunt iure impedit.', 4, 4, NULL, NULL),
(33, '2022-02-12', '07:29:27', '13:51:04', 'Vitae harum qui doloremque sit quae ipsum dolore. Libero consequatur autem hic sunt.', 4, 4, NULL, NULL),
(34, '2021-11-15', '07:43:34', '12:49:02', 'Tempore omnis ut aspernatur odit dolorem pariatur qui. Et molestias et aut atque voluptas.', 4, 4, NULL, NULL),
(35, '2021-11-11', '07:26:51', '13:57:16', 'Sit earum aut eos ex amet. Rerum et qui qui quod sunt. Ut modi quasi qui quia ut.', 4, 4, NULL, NULL),
(36, '2022-04-06', '07:42:19', '13:00:58', 'Rerum voluptatibus fuga dolores fugit. Quo nobis perspiciatis est similique dicta.', 4, 4, NULL, NULL),
(37, '2021-10-20', '07:12:32', '12:32:19', 'Sed ut laborum optio rem veritatis. Aliquid amet aut pariatur.', 5, 5, NULL, NULL),
(38, '2022-04-01', '07:42:38', '14:07:20', 'Harum unde veritatis autem iure. Atque rerum et facilis aut eum atque et.', 5, 5, NULL, NULL),
(39, '2021-12-15', '07:18:54', '13:54:36', 'Saepe vel qui nam molestiae aliquam molestiae ut. Eum est amet qui ut blanditiis.', 5, 5, NULL, NULL),
(40, '2022-01-22', '07:13:13', '14:09:31', 'Eos molestiae dolorem et ut. Est dolores tenetur aperiam optio modi.', 5, 5, NULL, NULL),
(41, '2021-11-01', '07:56:51', '14:26:59', 'Corporis sit quas commodi rerum. Voluptas voluptas quaerat cum et.', 5, 5, NULL, NULL),
(42, '2022-02-21', '07:44:46', '12:38:58', 'Qui asperiores dicta voluptatem perferendis. Laborum tempore saepe dicta est.', 5, 5, NULL, NULL),
(43, '2021-12-28', '07:10:47', '14:42:45', 'Natus vel quia totam vitae est. Qui repellendus est vel inventore quo.', 5, 5, NULL, NULL),
(44, '2021-10-19', '07:09:21', '14:43:08', 'Omnis aut voluptate eaque animi rerum. Similique sit quis numquam quis expedita impedit distinctio.', 5, 5, NULL, NULL),
(45, '2021-12-18', '07:38:44', '13:22:30', 'Blanditiis sint quas veritatis delectus. Et debitis est quis tempore dolorem libero.', 5, 5, NULL, NULL),
(46, '2021-11-13', '07:54:06', '14:09:09', 'Voluptate ut deserunt itaque eum accusamus amet tempore. Natus tenetur tempore nihil occaecati.', 6, 6, NULL, NULL),
(47, '2021-10-31', '07:32:47', '14:04:49', 'Laudantium ut sed libero numquam alias. Soluta libero id nemo quia ipsam.', 6, 6, NULL, NULL),
(48, '2022-01-25', '07:30:05', '13:00:16', 'Aut unde eum dolorem cupiditate ab aut nesciunt. Fugit ullam suscipit atque id. Et ex eius sint.', 6, 6, NULL, NULL),
(49, '2021-12-04', '07:53:16', '14:30:49', 'Veniam quaerat est sit rerum ea ut quia. Sequi veritatis ipsa ea. Voluptas et ut illum.', 6, 6, NULL, NULL),
(50, '2021-10-12', '07:55:32', '14:44:38', 'Est rem delectus accusamus omnis. Rem magnam cumque blanditiis qui officia fugiat.', 6, 6, NULL, NULL),
(51, '2021-11-09', '07:52:17', '12:22:44', 'Necessitatibus est nihil quas dolores. Voluptatem distinctio illum non.', 6, 6, NULL, NULL),
(52, '2021-10-15', '07:13:17', '14:09:57', 'Qui aspernatur sit iste soluta. Repellat id et laborum eos. Nobis saepe adipisci dignissimos eum.', 6, 6, NULL, NULL),
(53, '2021-12-17', '07:57:51', '12:35:58', 'Fugit ea eum magni rerum quos sit laudantium. Sit optio ratione consequatur facilis.', 6, 6, NULL, NULL),
(54, '2021-11-03', '07:33:30', '13:40:00', 'Et fugiat harum esse in. Aliquam corporis qui illo sequi aut sequi laudantium.', 6, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_prakerin`
--

CREATE TABLE `jurnal_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kompetisi_dasar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik_pekerjaan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari_pelaksanaan` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_istirahat` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `id_perusahaan` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurnal_prakerin`
--

INSERT INTO `jurnal_prakerin` (`id`, `kompetisi_dasar`, `topik_pekerjaan`, `hari_pelaksanaan`, `jam_masuk`, `jam_istirahat`, `jam_pulang`, `id_perusahaan`, `id_siswa`, `created_at`, `updated_at`) VALUES
(1, 'Culpa labore quia inventore dolorem. Ducimus illo aliquam non est error.', 'Membuat desain perusahaan', '2022-03-17', '07:36:46', '09:27:46', '12:20:03', 1, 1, NULL, NULL),
(2, 'Aut qui assumenda cum aut aliquam. Omnis esse qui harum quae saepe. Fugit blanditiis cum labore id.', 'Membuat web perusahaan', '2021-12-06', '07:18:18', '09:57:57', '13:44:35', 1, 1, NULL, NULL),
(3, 'Reiciendis quo neque sed. Libero voluptatum eos rerum est. Quidem autem occaecati omnis cumque.', 'Membuat desain perusahaan', '2022-01-20', '07:04:10', '09:38:32', '13:35:35', 1, 1, NULL, NULL),
(4, 'Sint molestias eum quas dolorum ut maxime est delectus. Vitae eaque libero alias.', 'Membuat desain perusahaan', '2022-02-15', '07:41:11', '09:33:13', '13:50:03', 1, 1, NULL, NULL),
(5, 'Qui sed laudantium tempora sit ex et dolor. Illo voluptates facere totam voluptates.', 'Membuat web perusahaan', '2022-01-07', '07:47:55', '09:57:49', '12:01:05', 1, 1, NULL, NULL),
(6, 'Non rerum harum ab et. Voluptas repellat laboriosam ipsam dolorum.', 'Membuat desain perusahaan', '2021-10-31', '07:37:28', '09:23:49', '13:43:34', 1, 1, NULL, NULL),
(7, 'Id laudantium dolorem et ipsam ea modi quis dolor. Dolores ea id deleniti deleniti.', 'Membuat desain perusahaan', '2022-01-29', '07:46:55', '09:49:15', '13:44:37', 1, 1, NULL, NULL),
(8, 'Totam aut ipsa vero sit adipisci distinctio. Libero reprehenderit blanditiis vero distinctio at.', 'Membuat desain perusahaan', '2021-12-30', '07:00:20', '09:34:02', '13:22:15', 1, 1, NULL, NULL),
(9, 'Porro adipisci culpa est ex soluta vitae. Provident quo eos qui optio dicta nobis impedit.', 'Membuat web perusahaan', '2022-03-18', '07:48:36', '09:32:01', '13:33:00', 1, 1, NULL, NULL),
(10, 'Et sapiente nihil ea eaque. Illum at aperiam pariatur dolorem nemo illo.', 'Membuat desain perusahaan', '2022-02-17', '07:30:01', '09:01:25', '14:29:29', 2, 2, NULL, NULL),
(11, 'Numquam maiores sed consequatur illo ut. Nam error facilis sequi corporis voluptas ex commodi sed.', 'Membuat web perusahaan', '2021-12-21', '07:15:51', '09:45:26', '12:16:52', 2, 2, NULL, NULL),
(12, 'Qui voluptatibus vel sint nam ex. Laborum qui quis accusantium quos mollitia amet fuga quidem.', 'Membuat web perusahaan', '2021-10-16', '07:28:24', '09:54:02', '12:01:46', 2, 2, NULL, NULL),
(13, 'Esse ex tenetur et ab non. Mollitia ab id illum et. Occaecati debitis omnis ducimus sunt.', 'Membuat desain perusahaan', '2022-03-21', '07:07:09', '09:38:01', '12:34:46', 2, 2, NULL, NULL),
(14, 'Et reprehenderit dolores placeat omnis. In quaerat tenetur quaerat laborum ex aliquam ducimus rem.', 'Membuat web perusahaan', '2022-02-06', '07:48:01', '09:39:59', '12:39:16', 2, 2, NULL, NULL),
(15, 'Distinctio harum molestias sunt esse aut consequatur enim voluptas. Ea iste et dolore quo quia ut.', 'Membuat desain perusahaan', '2022-02-12', '07:19:44', '09:08:28', '14:39:05', 2, 2, NULL, NULL),
(16, 'Quos doloribus similique sed ad laudantium. Iure unde reiciendis corrupti nemo sapiente recusandae.', 'Membuat web perusahaan', '2022-03-23', '07:23:50', '09:10:21', '14:22:04', 2, 2, NULL, NULL),
(17, 'Quas nam temporibus illum cumque voluptates. Nihil commodi harum reprehenderit autem.', 'Membuat web perusahaan', '2022-04-08', '07:13:13', '09:49:18', '13:38:56', 2, 2, NULL, NULL),
(18, 'Quo animi ut non aut vel. Ducimus quos sunt ex maiores quos hic sed. Qui illum id velit aut qui.', 'Membuat web perusahaan', '2022-01-12', '07:57:27', '09:21:31', '12:35:29', 2, 2, NULL, NULL),
(19, 'Mollitia ut nostrum quo vel exercitationem. Enim repellat non ut nulla totam placeat facere.', 'Membuat web perusahaan', '2021-12-29', '07:53:26', '09:35:44', '12:43:53', 3, 3, NULL, NULL),
(20, 'Veniam sunt ea qui repudiandae. Ut sed dolor consequuntur quis dolore et.', 'Membuat desain perusahaan', '2022-02-24', '07:18:14', '09:51:52', '12:14:58', 3, 3, NULL, NULL),
(21, 'Illo harum ut est sint dolor reprehenderit molestiae consequuntur. Minus harum dicta sit ab eos in.', 'Membuat web perusahaan', '2021-11-20', '07:53:06', '09:36:17', '14:42:12', 3, 3, NULL, NULL),
(22, 'Modi quas sed iste cupiditate id qui. Voluptatem et veritatis corporis eveniet quia.', 'Membuat desain perusahaan', '2021-11-27', '07:35:25', '09:22:46', '14:01:14', 3, 3, NULL, NULL),
(23, 'Aspernatur eveniet fuga a repellat ut. Animi officia alias velit et illum ad.', 'Membuat web perusahaan', '2021-10-31', '07:52:01', '09:36:27', '13:39:44', 3, 3, NULL, NULL),
(24, 'Amet laboriosam sequi amet. Doloremque hic et quo et iste. Qui id ipsa aut error facere.', 'Membuat desain perusahaan', '2022-02-23', '07:02:39', '09:42:27', '12:23:04', 3, 3, NULL, NULL),
(25, 'Voluptatem dolorem itaque sequi impedit. Dolor iusto et ullam ut. Magnam laborum quae dolores in.', 'Membuat desain perusahaan', '2021-11-08', '07:27:38', '09:27:40', '12:33:51', 3, 3, NULL, NULL),
(26, 'Qui id quis voluptas quam. Voluptate nihil mollitia odit quis. Ullam qui quis provident omnis.', 'Membuat desain perusahaan', '2022-01-13', '07:57:56', '09:28:47', '14:11:53', 3, 3, NULL, NULL),
(27, 'Numquam libero quia cum vero. Voluptate illo quasi et modi nulla perspiciatis enim.', 'Membuat web perusahaan', '2021-10-31', '07:22:30', '09:09:16', '13:34:14', 3, 3, NULL, NULL),
(28, 'Autem temporibus nemo vitae non sit dolore. Sed nam est aperiam consequatur ipsum.', 'Membuat web perusahaan', '2021-10-28', '07:19:05', '09:36:01', '13:02:12', 4, 4, NULL, NULL),
(29, 'Alias atque est et omnis laboriosam alias ad. Laboriosam laudantium dolorem sed et.', 'Membuat web perusahaan', '2022-03-07', '07:22:01', '09:34:07', '13:19:47', 4, 4, NULL, NULL),
(30, 'Totam et sequi dolorem ut rerum est dignissimos aut. Dolorum incidunt ad aut.', 'Membuat desain perusahaan', '2021-12-21', '07:27:51', '09:03:15', '14:31:28', 4, 4, NULL, NULL),
(31, 'Et consequatur nulla est quo aut natus nisi. Et et et soluta dolores. Modi doloremque neque ut.', 'Membuat desain perusahaan', '2022-02-22', '07:18:57', '09:09:22', '12:38:49', 4, 4, NULL, NULL),
(32, 'Nesciunt asperiores quis qui ipsam soluta voluptas. Eos reprehenderit eos in voluptatem vero nam.', 'Membuat desain perusahaan', '2022-01-10', '07:30:51', '09:06:43', '12:19:16', 4, 4, NULL, NULL),
(33, 'Officia cumque magni nihil quia deserunt aliquid sit. Et amet corporis tempora rerum aut aut.', 'Membuat desain perusahaan', '2021-12-23', '07:11:41', '09:54:52', '14:39:34', 4, 4, NULL, NULL),
(34, 'Maxime dolor at impedit quisquam aut rerum blanditiis. Placeat hic voluptatem dolore.', 'Membuat web perusahaan', '2021-11-07', '07:07:43', '09:16:58', '14:51:57', 4, 4, NULL, NULL),
(35, 'Ipsam eaque ut mollitia nihil ipsum. Enim architecto et provident assumenda.', 'Membuat web perusahaan', '2022-04-06', '07:00:01', '09:01:14', '14:06:02', 4, 4, NULL, NULL),
(36, 'Aut est et pariatur. Aut eum cumque doloremque cupiditate. Commodi in cum qui impedit quia.', 'Membuat web perusahaan', '2022-01-03', '07:37:12', '09:12:00', '12:22:16', 4, 4, NULL, NULL),
(37, 'Non aut ut mollitia repellat illum doloremque praesentium. Totam eos eum aut eos.', 'Membuat desain perusahaan', '2021-11-23', '07:23:07', '09:02:09', '12:17:21', 5, 5, NULL, NULL),
(38, 'Iure maiores sit earum corrupti. Quibusdam doloremque consequuntur minima rerum.', 'Membuat desain perusahaan', '2022-01-12', '07:47:02', '09:00:33', '14:16:46', 5, 5, NULL, NULL),
(39, 'Consequatur placeat et eligendi ipsum. Qui voluptates in illum reiciendis minus quis.', 'Membuat desain perusahaan', '2022-01-21', '07:33:30', '09:50:26', '13:03:36', 5, 5, NULL, NULL),
(40, 'Ut est tempora officia expedita. Voluptatem corporis perferendis aut odio.', 'Membuat web perusahaan', '2021-12-17', '07:46:42', '09:53:40', '13:41:46', 5, 5, NULL, NULL),
(41, 'Nulla enim esse reiciendis voluptates. Quia asperiores placeat ut quis.', 'Membuat desain perusahaan', '2022-01-04', '07:08:02', '09:49:38', '12:06:50', 5, 5, NULL, NULL),
(42, 'Sit omnis doloribus nulla et molestias quis qui. Soluta blanditiis dolorem doloremque voluptas.', 'Membuat desain perusahaan', '2022-03-26', '07:15:41', '09:28:21', '14:19:49', 5, 5, NULL, NULL),
(43, 'Ipsam dicta neque qui. Laudantium autem et blanditiis.', 'Membuat web perusahaan', '2022-04-07', '07:26:28', '09:05:22', '12:41:57', 5, 5, NULL, NULL),
(44, 'Soluta nihil iste aliquam dolore laboriosam. Sunt vel qui ut incidunt ea quod.', 'Membuat desain perusahaan', '2021-12-16', '07:27:00', '09:54:13', '13:55:30', 5, 5, NULL, NULL),
(45, 'Amet reprehenderit dolores rerum est mollitia. Voluptatem in facilis qui laborum incidunt.', 'Membuat desain perusahaan', '2022-01-29', '07:16:07', '09:55:49', '12:18:04', 5, 5, NULL, NULL),
(46, 'Quam quos non et vero. Sed quis quia aliquid odio aut. Quia perferendis nemo rem qui.', 'Membuat desain perusahaan', '2021-12-05', '07:55:00', '09:53:08', '12:30:47', 6, 6, NULL, NULL),
(47, 'Est laudantium ut iure. Enim ea qui ipsum molestiae. Incidunt beatae eum ab et hic quod non.', 'Membuat web perusahaan', '2021-10-20', '07:02:34', '09:05:38', '13:12:03', 6, 6, NULL, NULL),
(48, 'Dolor possimus minus assumenda atque praesentium voluptatem. Rerum sed non ex labore nobis.', 'Membuat web perusahaan', '2022-01-09', '07:39:26', '09:00:58', '13:50:49', 6, 6, NULL, NULL),
(49, 'Ut iste eos et. Consequatur dolorem reiciendis omnis. Asperiores a non a earum earum.', 'Membuat web perusahaan', '2022-03-19', '07:31:23', '09:35:10', '12:59:27', 6, 6, NULL, NULL),
(50, 'Quae eum corrupti dignissimos sit nulla. Quos nemo ex eius dicta rerum.', 'Membuat desain perusahaan', '2021-12-30', '07:03:25', '09:37:36', '12:56:29', 6, 6, NULL, NULL),
(51, 'Et nam incidunt ipsam omnis. Sint autem quo tempore rerum non cum. Ipsum alias itaque amet.', 'Membuat desain perusahaan', '2022-01-18', '07:11:30', '09:37:50', '13:43:25', 6, 6, NULL, NULL),
(52, 'Sed modi dolores nesciunt optio ipsa. Nesciunt placeat ipsum voluptas eaque eos.', 'Membuat desain perusahaan', '2022-01-07', '07:54:08', '09:10:05', '13:50:29', 6, 6, NULL, NULL),
(53, 'Dicta quia quia quidem enim laudantium placeat. Et eum qui qui sed eos iste iste.', 'Membuat desain perusahaan', '2022-01-02', '07:30:48', '09:12:08', '13:23:20', 6, 6, NULL, NULL),
(54, 'Eligendi nulla qui suscipit. Dolores omnis sequi temporibus.', 'Membuat desain perusahaan', '2022-01-13', '07:19:32', '09:12:58', '12:46:10', 6, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `singkatan_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `singkatan_jurusan`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'RPL', 'Rekayasa Perangkat Lunak', '2021-10-12 05:35:05', NULL),
(2, 'BC', 'Broadcasting', '2021-10-12 05:35:05', NULL),
(3, 'MM', 'Multimedia', '2021-10-12 05:35:05', NULL),
(4, 'TKJ', 'Teknologi Kominikasi Jaringan', '2021-10-12 05:35:05', NULL),
(5, 'TEI', 'Teknologi Elektromatika Industru', '2021-10-12 05:35:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_nilai_prakerin`
--

CREATE TABLE `kategori_nilai_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aspek_yang_dinilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED NOT NULL,
  `domain` enum('pelaksanaan','ketrampilan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` enum('Nilai Sekolah','Nilai Perusahaan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_nilai_prakerin`
--

INSERT INTO `kategori_nilai_prakerin` (`id`, `aspek_yang_dinilai`, `id_jurusan`, `domain`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'intensif', 1, 'pelaksanaan', 'Nilai Perusahaan', NULL, NULL),
(2, 'kedisiplinan', 1, 'pelaksanaan', 'Nilai Perusahaan', NULL, NULL),
(3, 'tanggung jawab', 1, 'pelaksanaan', 'Nilai Perusahaan', NULL, NULL),
(4, 'kerjinan', 1, 'pelaksanaan', 'Nilai Perusahaan', NULL, NULL),
(5, 'kerjsama', 1, 'pelaksanaan', 'Nilai Perusahaan', NULL, NULL),
(6, 'Motor_otomotif', 1, 'ketrampilan', 'Nilai Perusahaan', NULL, NULL),
(7, 'Litstrik Otomotif', 1, 'ketrampilan', 'Nilai Perusahaan', NULL, NULL),
(8, 'Nilai Laporan Tertulis', 1, 'ketrampilan', 'Nilai Sekolah', NULL, NULL),
(9, 'Presentasi Sidang Laporan', 1, 'pelaksanaan', 'Nilai Sekolah', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `level`, `id_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'X', 1, '2021-10-12 05:35:06', NULL),
(2, 'X', 2, '2021-10-12 05:35:06', NULL),
(3, 'X', 3, '2021-10-12 05:35:06', NULL),
(4, 'X', 4, '2021-10-12 05:35:06', NULL),
(5, 'X', 5, '2021-10-12 05:35:06', NULL),
(6, 'XI', 1, '2021-10-12 05:35:06', NULL),
(7, 'XI', 2, '2021-10-12 05:35:06', NULL),
(8, 'XI', 3, '2021-10-12 05:35:06', NULL),
(9, 'XI', 4, '2021-10-12 05:35:06', NULL),
(10, 'XI', 5, '2021-10-12 05:35:06', NULL),
(11, 'XII', 1, '2021-10-12 05:35:06', NULL),
(12, 'XII', 2, '2021-10-12 05:35:06', NULL),
(13, 'XII', 3, '2021-10-12 05:35:06', NULL),
(14, 'XII', 4, '2021-10-12 05:35:06', NULL),
(15, 'Xii', 5, '2021-10-12 05:35:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_laporan`
--

CREATE TABLE `kelompok_laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telpon` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelompok_laporan`
--

INSERT INTO `kelompok_laporan` (`id`, `no`, `id_guru`, `id_siswa`, `nama_perusahaan`, `no_telpon`, `created_at`, `updated_at`) VALUES
(1, '1', 18, 1, 'Thiel, Lowe and Blick', '08999991', NULL, NULL),
(2, '1', 18, 2, 'Thiel, Lowe and Blick', '08999991', NULL, NULL),
(3, '1', 18, 3, 'Thiel, Lowe and Blick', '08999991', NULL, NULL),
(4, '1', 18, 4, 'Thiel, Lowe and Blick', '08999991', NULL, NULL),
(5, '2', 19, 5, 'Feil, Oberbrunner and Gottlieb', '08999991', NULL, NULL),
(6, '2', 19, 6, 'Feil, Oberbrunner and Gottlieb', '08999991', NULL, NULL),
(7, '2', 19, 7, 'Feil, Oberbrunner and Gottlieb', '08999991', NULL, NULL),
(8, '2', 19, 8, 'Feil, Oberbrunner and Gottlieb', '08999991', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_prakerin`
--

CREATE TABLE `laporan_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelompok_laporan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_16_061701_create_siswa_table', 1),
(5, '2021_01_26_073512_create_data_prakerin_table', 1),
(6, '2021_01_26_073934_create_perusahaan_table', 1),
(7, '2021_01_26_081007_create_kelompok_laporan_table', 1),
(8, '2021_01_26_081154_create_laporan_prakerin_table', 1),
(9, '2021_01_27_064504_create_jurnal_prakerin_table', 1),
(10, '2021_01_27_100118_create_guru_table', 1),
(11, '2021_02_03_125054_create_jurnal_harian_table', 1),
(12, '2021_02_03_125446_create_pembekalan_magang_table', 1),
(13, '2021_02_09_162148_create_fasilitas_table', 1),
(14, '2021_05_25_172857_create_kelas_table', 1),
(15, '2021_05_29_142648_create_surat_masuk_table', 1),
(16, '2021_05_29_142803_create_surat__m_table', 1),
(17, '2021_05_29_142956_create_detail_surat_table', 1),
(18, '2021_05_29_143022_create_disposisi__table', 1),
(19, '2021_06_05_144951_create_surat_keluar_table', 1),
(20, '2021_06_05_145543_create_template_surat_table', 1),
(21, '2021_06_05_150040_create_detail_surat_k_table', 1),
(22, '2021_06_05_150308_create_isi_surat_table', 1),
(23, '2021_06_05_151047_create_tanda_tangan_table', 1),
(24, '2021_06_14_222252_create_jurusan_table', 1),
(25, '2021_06_18_071022_create_pengajuan_prakerin_table', 1),
(26, '2021_06_18_072819_create_detail_pengajuan_prakerin_table', 1),
(27, '2021_07_13_175819_create_penelusuran_tamatan_table', 1),
(28, '2021_07_13_175836_create_nilai_prakerin_table', 1),
(29, '2021_07_13_175909_create_kategori_nilai_prakerin_table', 1),
(30, '2021_07_14_144935_create_alumni_siswa_table', 1),
(31, '2021_07_19_002433_create_feedback_table', 1),
(32, '2021_07_27_160950_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_prakerin`
--

CREATE TABLE `nilai_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_kelompok_laporan` bigint(20) UNSIGNED DEFAULT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` enum('A','B','C','D','E') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ketegori` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_prakerin`
--

INSERT INTO `nilai_prakerin` (`id`, `id_siswa`, `id_kelompok_laporan`, `nilai`, `keterangan`, `id_ketegori`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '90', 'A', 3, NULL, NULL),
(2, 1, NULL, '75', 'B', 2, NULL, NULL),
(3, 1, NULL, '40', 'D', 1, NULL, NULL),
(4, 2, NULL, '80', 'B', 5, NULL, NULL),
(5, 2, NULL, '20', 'D', 1, NULL, NULL),
(6, 2, NULL, '90', 'A', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembekalan_magang`
--

CREATE TABLE `pembekalan_magang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `psikotes` enum('sudah','belum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_skill` enum('sudah','belum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_portofolio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembekalan_magang`
--

INSERT INTO `pembekalan_magang` (`id`, `psikotes`, `soft_skill`, `file_portofolio`, `id_guru`, `id_siswa`, `created_at`, `updated_at`) VALUES
(1, 'sudah', 'sudah', 'file/portofolio/1 default.pdf', NULL, 1, '2021-10-12 05:35:14', NULL),
(2, 'sudah', 'sudah', 'file/portofolio/2 default.pdf', NULL, 2, '2021-10-12 05:35:14', NULL),
(3, 'sudah', 'sudah', 'file/portofolio/3 default.pdf', NULL, 3, '2021-10-12 05:35:14', NULL),
(4, 'sudah', 'sudah', 'file/portofolio/4 default.pdf', NULL, 4, '2021-10-12 05:35:15', NULL),
(5, 'sudah', 'sudah', 'file/portofolio/5 default.pdf', NULL, 5, '2021-10-12 05:35:15', NULL),
(6, 'sudah', 'sudah', 'file/portofolio/6 default.pdf', NULL, 6, '2021-10-12 05:35:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelusuran_tamatan`
--

CREATE TABLE `penelusuran_tamatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_alumni` bigint(20) UNSIGNED NOT NULL,
  `status` enum('bekerja','kuliah','Wirausaha','Bekerja dan Kuliah','Wirausaha dan Kuliah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kampus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_kampus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk_kuliah` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_perusahaan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_kuliah` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_usaha` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penelusuran_tamatan`
--

INSERT INTO `penelusuran_tamatan` (`id`, `id_alumni`, `status`, `nama_kampus`, `alamat_kampus`, `tahun_masuk_kuliah`, `nama_perusahaan`, `alamat_perusahaan`, `tahun_kuliah`, `nama_usaha`, `created_at`, `updated_at`) VALUES
(1, 1, 'bekerja', NULL, 'Jr. Jend. A. Yani No. 466, Bitung 68936, Banten', '2025', 'PT Winarsih Salahudin', 'Jr. Bakti No. 385, Sorong 35298, Babel', NULL, NULL, NULL, NULL),
(2, 2, 'kuliah', 'Citra Halimah', 'Ki. Suryo Pranoto No. 254, Salatiga 45448, Babel', '2025', 'Perum Hutapea', NULL, NULL, NULL, NULL, NULL),
(3, 3, 'Wirausaha', NULL, NULL, NULL, NULL, NULL, NULL, 'PD Pratama Marbun', NULL, NULL),
(4, 4, 'Bekerja dan Kuliah', NULL, 'Kpg. Karel S. Tubun No. 698, Yogyakarta 73524, Maluku', '2025', 'UD Melani Tbk', 'Ki. B.Agam Dlm No. 288, Batu 99133, Sumut', NULL, NULL, NULL, NULL),
(5, 5, 'Wirausaha dan Kuliah', 'Kasiyah Gina Purwanti M.Pd', 'Psr. Gajah No. 476, Padangsidempuan 97231, Sulut', '2025', NULL, NULL, NULL, 'PD Waluyo (Persero) Tbk', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan_prakerin`
--

CREATE TABLE `pengajuan_prakerin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `id_tanda_tangan` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuan_prakerin`
--

INSERT INTO `pengajuan_prakerin` (`id`, `no`, `id_guru`, `id_siswa`, `id_tanda_tangan`, `nama_perusahaan`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 1, NULL, 'Thiel, Lowe and Blick', NULL, NULL),
(2, '1', 1, 2, NULL, 'Thiel, Lowe and Blick', NULL, NULL),
(3, '1', 1, 3, NULL, 'Thiel, Lowe and Blick', NULL, NULL),
(4, '1', 1, 4, NULL, 'Thiel, Lowe and Blick', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemimpin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_perusahaan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mou` date NOT NULL,
  `status_mou` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `nama`, `bidang_usaha`, `alamat`, `link`, `foto`, `email`, `nama_pemimpin`, `deskripsi_perusahaan`, `tanggal_mou`, `status_mou`, `created_at`, `updated_at`) VALUES
(1, 'Jacobi-Mayer', 'RPL', '406 Feeney Stravenue Suite 193\nRitchietown, AL 58218-7168', 'http://www.larkin.info/qui-non-qui-iusto-in.html', 'default.jpg', 'alexandra.becker@hotmail.com', 'Syble Howe', 'Non laboriosam ex velit facere ut et quae. Provident consequatur velit odit fugiat aut laudantium et perspiciatis. Aliquid eum voluptatem quia omnis et quia non. Et fuga nam suscipit totam. Blanditiis impedit excepturi fugit est. Esse id temporibus et autem tenetur nisi praesentium. Dolores reiciendis eveniet dolores harum rerum deleniti commodi. Nesciunt a exercitationem blanditiis nesciunt qui suscipit. Omnis nostrum veritatis officiis. Dolor amet voluptas officia qui ad. Officiis laudantium cupiditate temporibus ut molestias nemo numquam. Aut ullam qui voluptatibus. Voluptas dolor at tempore. Nam dolorum enim tenetur cum eos blanditiis. Sit molestiae porro omnis est quo tempore. Error commodi nam et rem. Et enim voluptatem rerum qui. Ratione occaecati rerum vel saepe placeat adipisci quo. Enim facere est consectetur rem harum velit quas numquam. Omnis nam nam animi qui.', '2007-04-27', '8  Tahun', '2021-10-12 05:35:10', NULL),
(2, 'Nader, Dickinson and Murray', 'MM', '8204 Funk Meadows\nNorth Sharonborough, AL 28298-4564', 'https://www.barton.biz/nemo-ullam-asperiores-modi-repudiandae-quia-nesciunt-sed', 'default.jpg', 'wwillms@yahoo.com', 'Kendall Doyle DDS', 'Ea voluptatibus dolores voluptatem minima sed. In dolorem eius corporis temporibus. Quia expedita consequuntur assumenda dolores. Rem blanditiis velit et ratione accusantium blanditiis consequatur. At error eos molestiae non accusantium. Quam in dolores corporis reprehenderit quod voluptates ut. Omnis nesciunt animi sed quas voluptas. Expedita maiores sed debitis. Modi qui unde vitae voluptatem. Nam sed aliquam quas iste. Et voluptatem eos laudantium sint. Sed ipsum distinctio quo itaque commodi. Deleniti consequuntur unde consequatur tempora delectus. Repellat velit dolore magnam. Ut molestiae porro qui et nihil et. Sit velit est ducimus ipsam deserunt. Consequuntur modi quos voluptatem maiores. Incidunt iste quia magnam quia eos rerum. Magni omnis rerum aperiam est recusandae incidunt consequatur. Dolor dolorem maxime nostrum deserunt voluptates. Non blanditiis corrupti occaecati omnis aperiam aut maiores. Quas accusamus autem rerum nam. Error quis vel quas earum ab fuga.', '2010-03-26', '7 Tahun', '2021-10-12 05:35:10', NULL),
(3, 'Pagac, Kohler and Jacobson', 'MM', '5503 Koby Centers Suite 612\nKayabury, MI 09184', 'https://www.dibbert.com/qui-pariatur-modi-nesciunt-labore-minima', 'default.jpg', 'ygutmann@hill.info', 'Ben Ferry', 'Blanditiis odit aperiam consectetur. Illo excepturi in eligendi sint. Molestiae omnis quia et enim et consequuntur soluta. Illum non aut reprehenderit eum molestiae voluptas optio soluta. Aut doloribus qui minima. Voluptatibus velit et nisi voluptatum. Corporis est totam voluptatem qui aut magnam optio sapiente. Enim vel tenetur repudiandae. Eius quibusdam temporibus quia. Aut qui modi ab sit iure est. Odio numquam consequatur nisi impedit impedit quibusdam rem possimus. Repellat blanditiis sed enim maiores ut commodi nulla. Minima quas minima quo cum corrupti. Praesentium enim et in soluta ut et facilis. Et nostrum nihil sapiente voluptatem eius ducimus. In libero ut sed est temporibus aut ratione. Dignissimos deleniti quasi quia sunt est ut aspernatur. Possimus deserunt adipisci voluptatem nostrum molestias molestias. Consequatur atque quia fugit assumenda facere nam. Aut velit sint cumque eligendi quisquam enim. Dolorem expedita ut dicta quisquam consectetur.', '2005-11-14', '7 Tahun', '2021-10-12 05:35:10', NULL),
(4, 'Zemlak-Sauer', 'MM', '15184 Ortiz Road\nDeonmouth, KY 40206-3972', 'http://www.hilpert.com/maxime-et-officiis-autem-qui', 'default.jpg', 'tyler.schaefer@hotmail.com', 'Oscar Schroeder', 'Magni soluta numquam in quis beatae alias minima. Est sint dignissimos est quae non. Voluptas voluptas beatae accusamus nam ipsa. Maiores maxime consectetur aliquid temporibus iure maxime. Fuga voluptatibus dolores tempore sunt est modi adipisci sit. Eum distinctio incidunt sapiente doloremque est. Facere tenetur voluptatum quia tenetur enim aspernatur. Corporis molestiae distinctio possimus consequuntur. Expedita dolor rerum est ducimus consequatur non. Provident sunt necessitatibus ut sunt nulla qui consequatur. Quis magnam excepturi optio nemo id voluptatem. Dolores optio ut sed nam similique error quis autem. Veniam eum omnis non eveniet laudantium accusantium. Sunt magnam velit eius doloremque minima sint blanditiis mollitia. Atque ea recusandae nihil possimus deserunt laudantium. Recusandae est qui ducimus velit numquam debitis. Omnis neque cum laborum est cupiditate exercitationem.', '2014-11-10', '8  Tahun', '2021-10-12 05:35:10', NULL),
(5, 'Rogahn-Gulgowski', 'MM', '34156 D\'Amore Motorway\nWest Melody, ID 89205-4397', 'http://www.kassulke.com/dolorem-dolores-est-iusto-delectus-beatae-est', 'default.jpg', 'sigmund81@stroman.com', 'Terry Kuhlman', 'Officiis qui nobis veniam ipsum sapiente aut vero. Esse numquam ut sed officia voluptas magnam. Odit vero et architecto non ut praesentium officiis. Sed ex sed voluptates consequatur qui tempora corporis. Molestiae provident sit aliquam odit ut. Earum id iste vel reprehenderit placeat ut quis aut. Sit eligendi quidem eos officiis recusandae adipisci. Fuga numquam quia eum ut consequuntur ad. Voluptate commodi perspiciatis minus quisquam. Id aperiam omnis architecto illo et. Vero rerum eum qui est. Quidem aut nam aut ducimus rerum sunt minima consequatur. Sint nihil omnis aut explicabo ut aut. A fuga consequuntur molestiae unde nihil impedit. Dolores omnis quam velit ad ea repudiandae animi. Accusantium repellat voluptas reprehenderit ad. Ut et recusandae non totam non quasi velit. Dolorum repudiandae mollitia qui sed. Inventore pariatur expedita delectus et dolorem eos sed.', '1991-04-06', '7 Tahun', '2021-10-12 05:35:11', NULL),
(6, 'Bartell, Reichel and Hammes', 'MM', '8225 Walter Plains Apt. 202\nKuhlmanfort, DE 01742', 'https://www.grimes.com/mollitia-laborum-fugit-rerum-tempora', 'default.jpg', 'jocelyn.okeefe@hotmail.com', 'Guy Dach V', 'Voluptatem illo consequatur recusandae consequuntur sint. Est dolor sed voluptatum eveniet quis velit accusantium. Temporibus quia voluptatibus ipsum dolores iure. Ducimus velit quia sequi laborum ducimus. A qui doloremque vero ea recusandae consequatur neque. Nisi aut veritatis aut dolore est quis. Enim sit laborum ipsum sint eum. Reprehenderit ab vel fuga officia vero non. Aut enim consequatur culpa qui provident et. Et voluptas nulla ipsa reiciendis. Id praesentium eos labore eos. Rerum enim et incidunt cupiditate ratione. Odit dolorem accusantium qui eius voluptatem suscipit. Temporibus cum ex vel. Aliquid est perspiciatis nesciunt in quas iusto. Recusandae et quo sed. Id id tenetur animi a. Ea non hic molestias. A velit minima perspiciatis molestias at unde. Optio repellat beatae quia quis earum. Ipsum nulla labore nihil accusantium. Culpa tempora distinctio modi.', '2002-12-03', '10 Tahun', '2021-10-12 05:35:11', NULL),
(7, 'Tremblay, Cole and Gislason', 'TKJ', '401 Parker Orchard\nLomaland, OH 32457', 'http://www.friesen.com/et-molestias-quaerat-quibusdam-ipsum-consequuntur', 'default.jpg', 'fgreenholt@gmail.com', 'Gunnar Olson', 'Aspernatur cupiditate inventore et vel voluptatibus voluptatem et. Vero qui quis nostrum non sit adipisci. Laboriosam facilis commodi et aliquam cumque. Molestias temporibus et autem aut sapiente. Facere voluptatem quis necessitatibus eos quos aut aut officiis. Eos voluptatum labore blanditiis tempore maxime magni. Quasi consequatur ut est ex pariatur. Rerum non ducimus ea id. Sit quas repudiandae et esse. Neque quaerat quos temporibus pariatur similique placeat consequuntur velit. Reprehenderit enim ipsa quia et. Assumenda autem dicta praesentium odit quibusdam qui recusandae. Quo in voluptas nisi tempora cum qui suscipit. Ut eveniet minus deleniti architecto. Minima id voluptatibus voluptate dolor. Aut consectetur repellat quas cumque reprehenderit. Hic iusto dolorum omnis magni architecto nobis qui. Ipsam possimus velit pariatur voluptatibus corrupti recusandae.', '2011-07-12', '9 Tahun', '2021-10-12 05:35:11', NULL),
(8, 'Ruecker Inc', 'BC', '712 Josie Crossing\nDayanaview, ID 98995-0446', 'http://lynch.com/molestias-illum-nihil-qui-aut', 'default.jpg', 'huel.ursula@hotmail.com', 'Kurtis Stanton', 'Doloremque voluptas illum voluptas minus. Eos blanditiis doloremque blanditiis voluptates. Dolores sunt quas tenetur maxime debitis. Quia provident est est officia quasi recusandae. Fugiat consectetur consequatur nihil necessitatibus. Vero ut alias facilis odio. Odio sint amet officiis corporis asperiores. Ut corrupti aut consequatur tenetur numquam ipsam nihil. Eum quis et consectetur et occaecati amet debitis. Cupiditate veritatis voluptatem ea expedita. Incidunt et sint vitae rerum quasi harum. Rerum adipisci beatae officiis accusantium maiores. Deleniti tempora natus non maxime. Odio cumque voluptates sequi ut aperiam architecto perspiciatis nobis. Architecto sed voluptas saepe accusantium in. Dolores exercitationem harum reprehenderit aut rerum sit. Sed necessitatibus aut ea voluptas tenetur deserunt. Et explicabo illo enim velit. Quos explicabo inventore error quam animi tenetur. Culpa doloribus molestias culpa voluptas debitis laborum.', '2008-09-12', '7 Tahun', '2021-10-12 05:35:11', NULL),
(9, 'Yundt, Schuster and Wisozk', 'BC', '147 Koss Court Apt. 869\nBatzland, LA 69400-0691', 'http://www.homenick.net/aliquam-et-quam-aut-esse.html', 'default.jpg', 'georgiana25@yahoo.com', 'Ellen Dare', 'Architecto enim ipsum voluptates labore sequi qui. Rerum velit eos perspiciatis. Et odit consequuntur explicabo perspiciatis earum. Sed et provident est veniam qui hic ut quae. Vel quas error odit sapiente et. Unde molestiae natus nesciunt totam dignissimos ad illo. Id quia mollitia est delectus. Veritatis commodi numquam nobis tempora officia quis. Temporibus ducimus harum dolore ipsam voluptatem. Saepe sit sit dolorum et. Voluptas omnis quia vitae blanditiis sed enim. Maiores id accusamus id at autem sint. Consequatur sed consequatur et. Et neque omnis rerum qui molestiae et. Ut voluptates ipsam qui error qui autem. Quae facere ut facere blanditiis quibusdam. Id unde vel repellendus ad corporis qui. Quaerat tempora cum veniam nihil et ut eos. Aut ut aut consectetur amet quia illo. Aperiam voluptas suscipit cum voluptas maiores. Sed dolorem voluptatum qui dolorum ut dolorem soluta. Et dolor nemo autem voluptatem fugiat sunt et. Provident quod qui fugiat voluptatibus.', '1994-05-05', '10 Tahun', '2021-10-12 05:35:11', NULL),
(10, 'Lemke-Konopelski', 'RPL', '35140 Reinger Islands\nEast Erikafurt, NJ 13864', 'http://www.rohan.com/quas-in-beatae-itaque-molestiae-iusto-et-quos.html', 'default.jpg', 'urohan@aufderhar.net', 'Lyric Parker', 'Esse est excepturi esse. Dolor dolores veniam aspernatur vitae qui eaque. Perspiciatis iure libero doloribus sed id minima commodi. Quis officia sunt voluptas corporis necessitatibus natus dolore. Vero eos vitae quia aspernatur. Repudiandae deleniti necessitatibus fuga ea. Sint possimus tempora excepturi reiciendis. Consequatur voluptates nulla blanditiis a error tempora. Quae voluptate laudantium et doloremque eveniet. Quos necessitatibus id voluptatem eligendi velit iusto adipisci. Est blanditiis excepturi ut. Sed cupiditate reiciendis eveniet in. Quas quibusdam ducimus minus aliquid vero voluptatem. Dolore quis facilis autem. Eligendi enim voluptatem aut sit. Alias ut sit recusandae natus. Debitis rerum est architecto repudiandae architecto amet rerum. Ipsum placeat ex quae est similique commodi repellendus. Quod nemo sed nobis tenetur quo aliquid sed. Veritatis omnis enim similique eveniet aut hic rerum. Quam eum quaerat id sint ut dolorum. Non dolore optio qui omnis ratione.', '2020-01-29', '8  Tahun', '2021-10-12 05:35:11', NULL),
(11, 'Brakus, Hettinger and Wintheiser', 'BC', '72708 Fred Burgs Apt. 457\nEbertchester, CO 52635-7137', 'http://www.mcclure.com/eius-reiciendis-cum-et-aut-consequatur-distinctio', 'default.jpg', 'jakubowski.zoey@gmail.com', 'Macie Gottlieb MD', 'Quod corporis qui itaque voluptatem ut. Provident sequi hic deleniti sit. Harum aut quod delectus aperiam velit labore. Nihil omnis soluta id in eveniet ut. Rerum et ipsam officiis consequatur. Tempora aliquam non tenetur porro nostrum. Ipsam hic et consequatur. Ea assumenda explicabo ratione aut quod. Et nobis est rerum aliquam perferendis ea aperiam. Sed ea aut aspernatur est. Consequatur rerum consequatur ab sint aspernatur eaque. Ea animi eos impedit quam consectetur quis a quas. Dolore sed alias ut quas voluptates excepturi. Debitis minus nostrum et atque. Culpa qui rerum est sed facere. Ab dolorem nulla possimus est ipsa et ipsam. Explicabo occaecati ut totam et maiores ut omnis incidunt. Consequuntur ut est vel corporis ratione rerum. Eaque id harum fugiat perferendis odio necessitatibus iste. Consectetur facere eius harum quod omnis. Sunt qui enim voluptate ea. Aliquam doloremque aspernatur provident facere totam dolorem quia.', '2000-10-13', '7 Tahun', '2021-10-12 05:35:11', NULL),
(12, 'Williamson Ltd', 'BC', '457 Zena Point\nFeeneyberg, WV 51361-8013', 'http://lueilwitz.net/est-error-error-ipsa-aperiam-aut-unde', 'default.jpg', 'haylie.pfannerstill@yahoo.com', 'Fay Pfannerstill', 'Ipsa minus dolorem possimus cupiditate reiciendis. Vel consectetur voluptatem laboriosam porro dolorum sunt. Qui cumque quidem expedita enim doloribus. Ut officiis ipsa et aut quo minus. Provident sed eum quo saepe laudantium eligendi qui. Voluptatem dolorem officiis aspernatur reiciendis deleniti. Aut cum mollitia dolorum ipsam officiis at. Neque id deleniti et necessitatibus voluptatem facilis. Repellat ullam ad distinctio amet cumque est deserunt. Occaecati error totam cupiditate qui. Distinctio ex tenetur veniam aliquam molestiae ullam accusantium. Et alias sunt qui rerum officia. Optio perspiciatis officia odio aut sit voluptatem molestiae dignissimos. Neque nam magnam omnis non ex ipsam quae. Rerum qui magni repudiandae repellat modi. Dignissimos hic et velit id porro assumenda optio et. Iure pariatur quo velit. Praesentium vel qui eligendi vel. Quis modi debitis distinctio voluptas id. Molestias quasi quibusdam sed reiciendis. Libero modi nulla beatae veniam placeat ullam.', '1976-08-28', '8  Tahun', '2021-10-12 05:35:11', NULL),
(13, 'Turcotte Ltd', 'TKJ', '581 Kihn Stravenue Suite 541\nLake Hayleeborough, NE 05608', 'http://www.wolf.info/quidem-mollitia-laboriosam-architecto-sunt-ducimus.html', 'default.jpg', 'dstamm@cormier.biz', 'Prof. Horace Batz', 'Suscipit numquam ad eius ipsum unde quia. Sunt qui labore id. Sunt et consequatur id natus voluptatibus. Ad vel aut debitis sed at. Nesciunt animi a quos ut. Eaque dolorem quia asperiores sapiente consequatur. Est quas repellendus fugiat aspernatur eligendi. Laudantium reiciendis molestias quia maiores ducimus. Commodi tempore rem voluptas sunt in qui. Ut voluptatum voluptatem dignissimos rerum aliquam mollitia. Accusamus magnam iste consequatur neque mollitia non nam. Omnis voluptatem corrupti alias. Sint qui sequi voluptatem et assumenda. Et cum laboriosam consequatur. Sequi ut aut neque dolor. Ut sint amet soluta consequatur. Autem consequatur sit provident sed ex omnis. Facere veritatis alias et amet. Ea aut ut expedita ut. Perspiciatis et expedita aut dicta. Quasi dolor quasi magni quisquam ex esse est. Voluptate itaque voluptatem eos distinctio. Fuga tempore architecto ea est.', '2001-04-22', '9 Tahun', '2021-10-12 05:35:11', NULL),
(14, 'Ortiz Inc', 'TKJ', '977 Jeff Ridge Suite 832\nEdgardobury, AR 32522-2840', 'https://www.dach.com/soluta-architecto-corrupti-in-sint-odit-ea-magni', 'default.jpg', 'vance59@ryan.com', 'Lon Doyle', 'Tempore alias iure commodi ea. Numquam quidem odio in numquam ipsam dolores. Ut dolorum sunt temporibus impedit omnis error qui accusamus. Mollitia officiis cum ex nostrum natus. Aliquid ipsa rem ad qui sit. Quasi ipsam inventore dolorem incidunt quia. Ut rerum excepturi libero. Aut et voluptas vero velit eos. Quia aut illo neque optio aperiam explicabo temporibus. Occaecati minus possimus temporibus voluptas consectetur et. Voluptas adipisci provident labore quibusdam qui iusto iste. Commodi quidem in sunt eos eum corrupti. Eos dolorum molestiae ex. Quo qui minima velit distinctio deleniti omnis. Expedita nobis voluptatibus dolor. Distinctio rerum autem maxime omnis fugiat non. Soluta saepe soluta animi id consequatur quam quo. Molestiae et corrupti officia reprehenderit quisquam molestiae. Libero voluptatem nemo iusto dolorem corrupti deleniti rerum eaque.', '1994-02-16', '8  Tahun', '2021-10-12 05:35:11', NULL),
(15, 'Wehner-Gibson', 'RPL', '115 Goodwin Cove Suite 995\nNicolaschester, VT 14670-9485', 'https://www.lebsack.biz/ipsum-nam-impedit-eos-dolore-quia-voluptatem-aut', 'default.jpg', 'shomenick@kunze.org', 'Eldon Morar', 'Sapiente eos ullam eveniet ea at ea eos. Eos consequatur vitae nesciunt. Consequatur minima ab quas. Iste recusandae illum at perspiciatis. Et commodi adipisci laborum sit rerum qui ut. Perspiciatis voluptas quibusdam sint aspernatur voluptatem. Omnis ut sunt sit. Dolores laboriosam voluptas illo aliquid. Quia aut et quo voluptas. Ea consequuntur beatae et error voluptates. Natus aspernatur ipsum sunt odio quisquam. Est asperiores quo est consequatur sunt. Distinctio fugiat blanditiis ut deleniti. Assumenda magnam ea ex. Dolor repellat eaque perferendis quod. Hic officiis in nobis facilis. Eaque esse at voluptatem sit commodi. Blanditiis sint illo voluptas est ad pariatur dolorum. Non consequuntur placeat et voluptas neque iusto quos. Est sapiente aut quia ipsum atque iure. Nihil ab natus veniam iusto minima dolore. Aspernatur dolorem illo neque odio incidunt dolores impedit.', '2001-08-11', '10 Tahun', '2021-10-12 05:35:11', NULL),
(16, 'Kohler and Sons', 'MM', '8664 Alverta Ferry Suite 716\nWest Madge, NJ 50090', 'http://bernhard.com/voluptatibus-tenetur-et-at-voluptatem-cumque-quod.html', 'default.jpg', 'erice@yahoo.com', 'Anibal Swift', 'Ipsa itaque vel minus ut consequatur vero quibusdam. Quos hic quo eos est magni. Voluptatibus sed quia aliquam in voluptas vero accusamus. Qui non qui est possimus molestias cumque. Ut quo quaerat recusandae accusamus magnam molestiae. Voluptates consequatur dolore eos qui et adipisci. Mollitia vero fugiat aliquid quas. Aliquam sapiente ipsam nobis modi sequi ut odio. Laudantium sit voluptas beatae quia assumenda tempore dolorem eveniet. Quia iusto excepturi ab officiis. Qui hic corporis dolores fuga recusandae. Ea dolores ducimus dolorem repudiandae odio sunt ut. Ratione voluptatibus quaerat tempora. Et nesciunt est vel aut esse hic et. Quia et et voluptas veritatis consectetur qui quas. Quisquam quo voluptatem consequatur sapiente quis sapiente eos. Dolor ea qui voluptas sint itaque. Consequuntur corrupti consectetur quisquam.', '1986-07-11', '10 Tahun', '2021-10-12 05:35:11', NULL),
(17, 'Volkman-Tremblay', 'BC', '630 Rau Estate Apt. 207\nBernitahaven, TN 42855', 'http://sporer.biz/quis-quas-beatae-ut-aut.html', 'default.jpg', 'langworth.leonard@hagenes.com', 'Morris Moore', 'Dicta nostrum veritatis eligendi reprehenderit occaecati. Sequi sed reprehenderit laudantium perspiciatis et dolorum unde. Quo accusamus quia cum. Nisi tenetur ratione sed fugit omnis autem earum voluptatem. Consequatur nihil maxime perferendis voluptas ratione dolorum. Vero magni dolor laboriosam eum asperiores nemo. Quasi rerum eos rerum nihil. Ea sapiente autem totam et sunt laudantium repudiandae amet. Ut at atque eveniet harum iusto dolores. Est perspiciatis tenetur amet est maxime quas. Qui ut impedit laborum deserunt delectus numquam. Rerum doloremque quia hic inventore dolorem qui magni sunt. Dicta dicta est eum soluta quibusdam voluptatem voluptatibus. Dolorem excepturi ea et ut illum. Et vero odio quae minima nihil. Unde aut delectus eaque reiciendis a. Esse ullam repellat voluptatum sint ducimus voluptas pariatur. Asperiores laboriosam pariatur iure nulla est sunt. Nesciunt eveniet odit repudiandae et ducimus totam ut velit. Ducimus veniam eum porro tempore voluptatum qui.', '1996-04-07', '10 Tahun', '2021-10-12 05:35:11', NULL),
(18, 'Littel, Kiehn and Greenholt', 'RPL', '116 Estevan Coves Apt. 971\nKochside, MI 70349', 'http://gislason.com/labore-debitis-sint-sunt-nihil-nam.html', 'default.jpg', 'qemard@gmail.com', 'Lee Ondricka', 'Eos dolores explicabo recusandae. Omnis accusamus blanditiis nulla quos placeat voluptatem a sunt. Aliquid in ea aut necessitatibus esse aut. Veritatis error fuga at ea. Dicta sunt aut sed quos doloribus quisquam voluptatem. Voluptatem fuga explicabo enim voluptatem. Nesciunt nihil quia consectetur dolor maiores. Sunt accusantium id omnis officia velit. Error asperiores quos excepturi eos ut qui occaecati voluptas. Iure et enim voluptas error labore quaerat earum. Reprehenderit magnam laborum consequatur ad non. Est tempora et numquam quo possimus. Facere vel perferendis aliquam. Dignissimos accusantium dolorum repellendus illum dolorem ratione. Eius eum delectus omnis. Provident unde et et et tempora rerum sed. Ipsam ipsum nemo autem magnam est repellat sit. Et iusto animi exercitationem ducimus molestiae. Ratione ut consectetur maxime rem.', '2007-02-19', '8  Tahun', '2021-10-12 05:35:11', NULL),
(19, 'Gutkowski-Windler', 'RPL', '33346 Schowalter Keys Apt. 700\nNorth Samirtown, IL 01419-1944', 'http://koch.com/', 'default.jpg', 'zschmidt@schneider.com', 'Dr. Dillon Langworth DVM', 'Voluptatem necessitatibus in aut. Sed perferendis omnis dolores eum. Ullam quia rerum sequi ut dolore sapiente aliquid. Sequi omnis quia consequuntur dolorem ut facilis et consequatur. Unde ut sit nostrum. In saepe tempore id. Quibusdam ut fugit architecto esse commodi. Odio non rerum assumenda soluta cupiditate. Aut ut est earum quia. Consequatur natus magnam excepturi doloribus praesentium odit voluptatem. Et sunt qui omnis. Voluptas doloribus voluptatem eum aut labore. Aut sed quis reiciendis exercitationem et qui. Ut necessitatibus libero aut. Mollitia omnis est quisquam inventore quis at et. Accusamus fugiat et nostrum consequatur ipsum voluptas molestiae doloremque. Repellendus nobis voluptas sed placeat doloremque. Hic consequatur repudiandae quod. Sint vel pariatur neque distinctio. Et non et eum ut et adipisci recusandae. Beatae unde hic voluptas. Fugiat omnis ut ad molestias. Consectetur id saepe quia neque id ut.', '2002-05-28', '7 Tahun', '2021-10-12 05:35:12', NULL),
(20, 'Hoppe, D\'Amore and Gorczany', 'RPL', '525 Lowe Creek\nWuckertstad, HI 05515-3483', 'http://wilderman.com/', 'default.jpg', 'durward.bruen@mayert.net', 'Rowena Huels DDS', 'Nobis eaque vel sint aspernatur voluptatem voluptatibus eos laborum. Nam autem in soluta voluptate. Dignissimos voluptas et nam laborum maiores rem. Rerum dolorem et enim minima at aut. Cupiditate dolorum odio magni corporis ut molestiae aut. Ipsa veritatis earum non at. Commodi reiciendis earum fugiat soluta. Adipisci id adipisci doloribus hic in soluta est. Omnis ea unde quisquam magni. Ex doloribus expedita sunt ea. Dolor sed laudantium non eius recusandae. Temporibus laudantium soluta eius illo consectetur sunt. Itaque qui nam molestiae cumque voluptas rerum officiis. Laborum consectetur recusandae est dolor. Quisquam necessitatibus ad sed sint sit. Quae magnam odit aut aut minima voluptas. Consequuntur consequatur vero enim quas. Mollitia repudiandae dolor in quibusdam quia aperiam.', '1985-08-31', '9 Tahun', '2021-10-12 05:35:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nipd` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `id_user`, `nama_siswa`, `nipd`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nur Firdaus', '942929291', '000000', 'Daratan', '1998-01-23', 'X ', 'RPL 3', NULL, NULL),
(2, 5, 'Rafie Aydin', '942929292', '000000', 'Daratan', '1998-01-23', 'X ', 'RPL 3', NULL, NULL),
(3, 6, 'Dana', '942929293', '000000', 'Daratan', '1998-01-23', 'X ', 'RPL 3', NULL, NULL),
(4, 7, 'Walada', '942929294', '000000', 'Daratan', '1998-01-23', 'X ', 'RPL 3', NULL, NULL),
(5, 8, 'Radit', '942929295', '000000', 'Daratan', '1998-01-23', 'X', 'RPL 3', NULL, NULL),
(6, 9, 'Falih', '942929296', '000000', 'Daratan', '1998-01-23', 'X', 'RPL 3', NULL, NULL),
(7, 10, 'Vik', '942929297', '000000', 'Daratan', '1998-01-23', 'X', 'RPL 3', NULL, NULL),
(8, 11, 'JiArisa', '942929298', '000000', 'Daratan', '1998-01-23', 'X ', 'RPL 3', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dari` bigint(20) UNSIGNED NOT NULL,
  `id_untuk` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pengajuan','acc','tolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pengajuan',
  `id_template_surat` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`id`, `id_dari`, `id_untuk`, `status`, `id_template_surat`, `created_at`, `updated_at`) VALUES
(1, 14, 15, 'pengajuan', 1, '2021-10-12 05:35:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_m`
--

CREATE TABLE `surat_m` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_surat_masuk` date NOT NULL,
  `id_surat_masuk` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_m`
--

INSERT INTO `surat_m` (`id`, `nama_surat`, `path_surat`, `tgl_surat_masuk`, `id_surat_masuk`, `created_at`, `updated_at`) VALUES
(1, 'surat1', '/surat/surat_masuk/default.pdf', '2021-10-12', 1, '2021-10-12 05:35:28', NULL),
(2, 'surat2', '/surat/surat_masuk/default.pdf', '2021-10-12', 2, '2021-10-12 05:35:28', NULL),
(3, 'surat3', '/surat/surat_masuk/default.pdf', '2021-10-12', 3, '2021-10-12 05:35:28', NULL),
(4, 'surat4', '/surat/surat_masuk/default.pdf', '2021-10-12', 4, '2021-10-12 05:35:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dari` bigint(20) UNSIGNED NOT NULL,
  `id_untuk` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pengajuan','acc','tolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pengajuan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id`, `id_dari`, `id_untuk`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 15, 'pengajuan', '2021-10-12 05:35:27', NULL),
(2, 12, 15, 'pengajuan', '2021-10-12 05:35:27', NULL),
(3, 12, 15, 'pengajuan', '2021-10-12 05:35:28', NULL),
(4, 12, 15, 'pengajuan', '2021-10-12 05:35:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanda_tangan`
--

CREATE TABLE `tanda_tangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tanda_tangan`
--

INSERT INTO `tanda_tangan` (`id`, `nama`, `path_gambar`, `created_at`, `updated_at`) VALUES
(1, 'Ramadin Tarigan', 'ttd/default-ttd.png', NULL, NULL),
(2, 'Nur Firdaus', 'ttd/default2-ttd.png', NULL, NULL),
(3, 'Elon Musk', 'ttd/default4-ttd.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `template_surat`
--

CREATE TABLE `template_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `template_surat`
--

INSERT INTO `template_surat` (`id`, `nama_surat`, `path_surat`, `created_at`, `updated_at`) VALUES
(1, 'Surat Penugasan guru', '/surat_keluar/template/default.blade.php', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','litbang','tu','siswa','kaprog','kepsek','waka','bkk','hubin','kurikulum','kesiswaan','sarpras','Kejuruan','pembimbing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siswa',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_logout_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `remember_token`, `last_logout_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$ySYzBSFL7nLoZ1Ft5aNJUObN5uBF8ZweUxyOwyyl/0r1/ziAAt93S', 'admin', NULL, NULL, '2021-10-12 05:35:00', NULL),
(2, 'BidangKaprog', '$2y$10$BBM1sSnu83KQbODzeSlbEezApPzNaKUPn99c8/P5UZFj4JDKNAIYW', 'kaprog', NULL, NULL, '2021-10-12 05:35:00', NULL),
(3, 'BidangBkk', '$2y$10$MakC9K6jp3mkQDFpkJJwYub8Z0U5g1JXNeFkbZGARQFjPGEPM63Am', 'bkk', NULL, NULL, '2021-10-12 05:35:01', NULL),
(4, 'siswa1', '$2y$10$J5voYdOXtPYjm4/PtIEtzOZpFWz.srzPmyAMmDeg649SG1PmGt.tK', 'siswa', NULL, NULL, '2021-10-12 05:35:01', NULL),
(5, 'siswa2', '$2y$10$l8gyN/YVliI2VuAfvI5EveJUaMRT0yEFwapS1fnaj3x0wMwuZ3q7C', 'siswa', NULL, NULL, '2021-10-12 05:35:01', NULL),
(6, 'siswa3', '$2y$10$PVRIcK/bSNebPwmNhjotK.gKLOhsTwd.E/MbB07L55ylDEgpHGd1.', 'siswa', NULL, NULL, '2021-10-12 05:35:01', NULL),
(7, 'siswa4', '$2y$10$yByKN8X42DJVMR1TP0YhKee6Im2HL6RmpHPrMG4q77D00iDppf6JG', 'siswa', NULL, NULL, '2021-10-12 05:35:02', NULL),
(8, 'siswa5', '$2y$10$jprUkjYSZpJgTk5EGQ2whuzHcVdptsK2WNV/7ut.CBkk7mVmeXuPm', 'siswa', NULL, NULL, '2021-10-12 05:35:02', NULL),
(9, 'siswa6', '$2y$10$2ECHZjh28HQazxb4Ljuj8.GAtHvyNM83dH11J/nW2oUqwY5.oF3dS', 'siswa', NULL, NULL, '2021-10-12 05:35:02', NULL),
(10, 'siswa7', '$2y$10$eF2GGvSLGmBMIinCEYKYqudpc7WrQR.an2SN3jVbg25mp/L0BFxqe', 'siswa', NULL, NULL, '2021-10-12 05:35:02', NULL),
(11, 'siswa8', '$2y$10$nqE17gxfh5r.AjvO43uBwOimE9BSrqAu3O1MBIjSU.qQWUJFKyq2W', 'siswa', NULL, NULL, '2021-10-12 05:35:03', NULL),
(12, 'BidangTU', '$2y$10$CkysDMD7gGJ95omMZ4XJTe2eYwAihEqYrhpk4Tc56CVKSk4T4xgZW', 'tu', NULL, NULL, '2021-10-12 05:35:03', NULL),
(13, 'Kurikulum', '$2y$10$GF7TlFtjedmEILHpaanExOY.tOrldzODd2f/wC5fsuqqVNW34l9Ca', 'kurikulum', NULL, NULL, '2021-10-12 05:35:03', NULL),
(14, 'Kesiswaan', '$2y$10$ka6ly0hSQJzBpuBFIATMcuDPEyf9vMQE8FwTnQI8LLHV.vW97pYqi', 'kesiswaan', NULL, NULL, '2021-10-12 05:35:03', NULL),
(15, 'litbang', '$2y$10$42ZMxcPxlqxzGWo/qVErou0nn8x9SiYqmT.Z9UDp6wB8rhyP/tlSK', 'litbang', NULL, NULL, '2021-10-12 05:35:04', NULL),
(16, 'KepalaSekolah', '$2y$10$UinCkh5.U5vBrfefnPTCYuYQnjcDbp1Hd4khwkq6zn0rQuOPz8Uce', 'kepsek', NULL, NULL, '2021-10-12 05:35:04', NULL),
(17, 'hubin', '$2y$10$tkUEGUY576V4GLSt6oQyJeeP/UqNgfTNFr3evBcucmDT8w4XydKRW', 'hubin', NULL, NULL, '2021-10-12 05:35:04', NULL),
(18, 'Sarpras', '$2y$10$IaOgiA3dh5IqDUk6xSmYpOvACiEwFaCZjMN83tqKl2OeOgYOl8OHa', 'sarpras', NULL, NULL, '2021-10-12 05:35:04', NULL),
(19, 'Pembimbing', '$2y$10$dsEIbSwTWE8iMorQDzQxgersu4S29JHIb2KihTsW.kRWer7vR559C', 'pembimbing', NULL, NULL, '2021-10-12 05:35:04', NULL),
(20, 'Pembimbing1', '$2y$10$bE/1s6FKLaA2.a8W5cPfc.ti69.Gk9Ih/7nUcdHuE9Dc/OJAJVMqW', 'pembimbing', NULL, NULL, '2021-10-12 05:35:05', NULL),
(21, 'Pembimbing2', '$2y$10$lFhtM6orWXjL4LDg8k18qOxp75EjLVSU30TaLseegyn22y3brhmJm', 'pembimbing', NULL, NULL, '2021-10-12 05:35:05', NULL),
(22, 'Pembimbing3', '$2y$10$DurlAJGzGyogj6ijvWkceONKPIHAgAUhZsgj2LIxxdy2lZjhR74py', 'pembimbing', NULL, NULL, '2021-10-12 05:35:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alumni_siswa`
--
ALTER TABLE `alumni_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_prakerin`
--
ALTER TABLE `data_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_prakerin_id_siswa_foreign` (`id_siswa`),
  ADD KEY `data_prakerin_id_perusahaan_foreign` (`id_perusahaan`),
  ADD KEY `data_prakerin_id_guru_foreign` (`id_guru`),
  ADD KEY `data_prakerin_id_kelas_foreign` (`id_kelas`);

--
-- Indeks untuk tabel `detail_pengajuan_prakerin`
--
ALTER TABLE `detail_pengajuan_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pengajuan_prakerin_id_pengajuan_prakerin_foreign` (`id_pengajuan_prakerin`);

--
-- Indeks untuk tabel `detail_surat`
--
ALTER TABLE `detail_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_surat_id_surat_m_foreign` (`id_surat_m`);

--
-- Indeks untuk tabel `detail_surat_k`
--
ALTER TABLE `detail_surat_k`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_surat_k_id_template_surat_foreign` (`id_template_surat`),
  ADD KEY `detail_surat_k_id_surat_keluar_foreign` (`id_surat_keluar`),
  ADD KEY `detail_surat_k_id_tanda_tangan_foreign` (`id_tanda_tangan`);

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disposisi_id_detail_surat_foreign` (`id_detail_surat`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fasilitas_prakerin`
--
ALTER TABLE `fasilitas_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_prakerin_id_jurnal_prakerin_foreign` (`id_jurnal_prakerin`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_id_detail_surat_foreign` (`id_detail_surat`),
  ADD KEY `feedback_id_dari_foreign` (`id_dari`),
  ADD KEY `feedback_id_untuk_foreign` (`id_untuk`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id_user_foreign` (`id_user`),
  ADD KEY `guru_id_jurusan_foreign` (`id_jurusan`);

--
-- Indeks untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isi_surat_id_guru_foreign` (`id_guru`),
  ADD KEY `isi_surat_id_detail_surat_k_foreign` (`id_detail_surat_k`);

--
-- Indeks untuk tabel `jurnal_harian`
--
ALTER TABLE `jurnal_harian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_harian_id_perusahaan_foreign` (`id_perusahaan`),
  ADD KEY `jurnal_harian_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `jurnal_prakerin`
--
ALTER TABLE `jurnal_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnal_prakerin_id_perusahaan_foreign` (`id_perusahaan`),
  ADD KEY `jurnal_prakerin_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_nilai_prakerin`
--
ALTER TABLE `kategori_nilai_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_nilai_prakerin_id_jurusan_foreign` (`id_jurusan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id_jurusan_foreign` (`id_jurusan`);

--
-- Indeks untuk tabel `kelompok_laporan`
--
ALTER TABLE `kelompok_laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_laporan_id_siswa_foreign` (`id_siswa`),
  ADD KEY `kelompok_laporan_id_guru_foreign` (`id_guru`);

--
-- Indeks untuk tabel `laporan_prakerin`
--
ALTER TABLE `laporan_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_prakerin_id_kelompok_laporan_foreign` (`id_kelompok_laporan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_prakerin`
--
ALTER TABLE `nilai_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_prakerin_id_siswa_foreign` (`id_siswa`),
  ADD KEY `nilai_prakerin_id_ketegori_foreign` (`id_ketegori`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembekalan_magang`
--
ALTER TABLE `pembekalan_magang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembekalan_magang_id_guru_foreign` (`id_guru`),
  ADD KEY `pembekalan_magang_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `penelusuran_tamatan`
--
ALTER TABLE `penelusuran_tamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penelusuran_tamatan_id_alumni_foreign` (`id_alumni`);

--
-- Indeks untuk tabel `pengajuan_prakerin`
--
ALTER TABLE `pengajuan_prakerin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_prakerin_id_guru_foreign` (`id_guru`),
  ADD KEY `pengajuan_prakerin_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_keluar_id_dari_foreign` (`id_dari`),
  ADD KEY `surat_keluar_id_untuk_foreign` (`id_untuk`);

--
-- Indeks untuk tabel `surat_m`
--
ALTER TABLE `surat_m`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_m_id_surat_masuk_foreign` (`id_surat_masuk`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_masuk_id_dari_foreign` (`id_dari`),
  ADD KEY `surat_masuk_id_untuk_foreign` (`id_untuk`);

--
-- Indeks untuk tabel `tanda_tangan`
--
ALTER TABLE `tanda_tangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `template_surat`
--
ALTER TABLE `template_surat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `alumni_siswa`
--
ALTER TABLE `alumni_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `data_prakerin`
--
ALTER TABLE `data_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_pengajuan_prakerin`
--
ALTER TABLE `detail_pengajuan_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_surat`
--
ALTER TABLE `detail_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_surat_k`
--
ALTER TABLE `detail_surat_k`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_prakerin`
--
ALTER TABLE `fasilitas_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jurnal_harian`
--
ALTER TABLE `jurnal_harian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `jurnal_prakerin`
--
ALTER TABLE `jurnal_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori_nilai_prakerin`
--
ALTER TABLE `kategori_nilai_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kelompok_laporan`
--
ALTER TABLE `kelompok_laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `laporan_prakerin`
--
ALTER TABLE `laporan_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `nilai_prakerin`
--
ALTER TABLE `nilai_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembekalan_magang`
--
ALTER TABLE `pembekalan_magang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penelusuran_tamatan`
--
ALTER TABLE `penelusuran_tamatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengajuan_prakerin`
--
ALTER TABLE `pengajuan_prakerin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_m`
--
ALTER TABLE `surat_m`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tanda_tangan`
--
ALTER TABLE `tanda_tangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `template_surat`
--
ALTER TABLE `template_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_prakerin`
--
ALTER TABLE `data_prakerin`
  ADD CONSTRAINT `data_prakerin_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `data_prakerin_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `data_prakerin_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `data_prakerin_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pengajuan_prakerin`
--
ALTER TABLE `detail_pengajuan_prakerin`
  ADD CONSTRAINT `detail_pengajuan_prakerin_id_pengajuan_prakerin_foreign` FOREIGN KEY (`id_pengajuan_prakerin`) REFERENCES `pengajuan_prakerin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_surat`
--
ALTER TABLE `detail_surat`
  ADD CONSTRAINT `detail_surat_id_surat_m_foreign` FOREIGN KEY (`id_surat_m`) REFERENCES `surat_m` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_surat_k`
--
ALTER TABLE `detail_surat_k`
  ADD CONSTRAINT `detail_surat_k_id_surat_keluar_foreign` FOREIGN KEY (`id_surat_keluar`) REFERENCES `surat_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_surat_k_id_tanda_tangan_foreign` FOREIGN KEY (`id_tanda_tangan`) REFERENCES `detail_surat_k` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_surat_k_id_template_surat_foreign` FOREIGN KEY (`id_template_surat`) REFERENCES `template_surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD CONSTRAINT `disposisi_id_detail_surat_foreign` FOREIGN KEY (`id_detail_surat`) REFERENCES `detail_surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fasilitas_prakerin`
--
ALTER TABLE `fasilitas_prakerin`
  ADD CONSTRAINT `fasilitas_prakerin_id_jurnal_prakerin_foreign` FOREIGN KEY (`id_jurnal_prakerin`) REFERENCES `jurnal_prakerin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_id_dari_foreign` FOREIGN KEY (`id_dari`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_id_detail_surat_foreign` FOREIGN KEY (`id_detail_surat`) REFERENCES `detail_surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_id_untuk_foreign` FOREIGN KEY (`id_untuk`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD CONSTRAINT `isi_surat_id_detail_surat_k_foreign` FOREIGN KEY (`id_detail_surat_k`) REFERENCES `detail_surat_k` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `isi_surat_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jurnal_harian`
--
ALTER TABLE `jurnal_harian`
  ADD CONSTRAINT `jurnal_harian_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_harian_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jurnal_prakerin`
--
ALTER TABLE `jurnal_prakerin`
  ADD CONSTRAINT `jurnal_prakerin_id_perusahaan_foreign` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_prakerin_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori_nilai_prakerin`
--
ALTER TABLE `kategori_nilai_prakerin`
  ADD CONSTRAINT `kategori_nilai_prakerin_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelompok_laporan`
--
ALTER TABLE `kelompok_laporan`
  ADD CONSTRAINT `kelompok_laporan_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `kelompok_laporan_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `laporan_prakerin`
--
ALTER TABLE `laporan_prakerin`
  ADD CONSTRAINT `laporan_prakerin_id_kelompok_laporan_foreign` FOREIGN KEY (`id_kelompok_laporan`) REFERENCES `kelompok_laporan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_prakerin`
--
ALTER TABLE `nilai_prakerin`
  ADD CONSTRAINT `nilai_prakerin_id_ketegori_foreign` FOREIGN KEY (`id_ketegori`) REFERENCES `kategori_nilai_prakerin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_prakerin_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembekalan_magang`
--
ALTER TABLE `pembekalan_magang`
  ADD CONSTRAINT `pembekalan_magang_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pembekalan_magang_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penelusuran_tamatan`
--
ALTER TABLE `penelusuran_tamatan`
  ADD CONSTRAINT `penelusuran_tamatan_id_alumni_foreign` FOREIGN KEY (`id_alumni`) REFERENCES `alumni_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengajuan_prakerin`
--
ALTER TABLE `pengajuan_prakerin`
  ADD CONSTRAINT `pengajuan_prakerin_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_prakerin_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_id_dari_foreign` FOREIGN KEY (`id_dari`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_keluar_id_untuk_foreign` FOREIGN KEY (`id_untuk`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_m`
--
ALTER TABLE `surat_m`
  ADD CONSTRAINT `surat_m_id_surat_masuk_foreign` FOREIGN KEY (`id_surat_masuk`) REFERENCES `surat_masuk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD CONSTRAINT `surat_masuk_id_dari_foreign` FOREIGN KEY (`id_dari`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_masuk_id_untuk_foreign` FOREIGN KEY (`id_untuk`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
