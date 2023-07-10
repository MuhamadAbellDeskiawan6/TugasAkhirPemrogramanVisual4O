-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2023 pada 13.10
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporan_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hubungan`
--

CREATE TABLE `tabel_hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `status_hub_anak` char(50) DEFAULT NULL,
  `keterangan` char(50) DEFAULT NULL,
  `status_ortu` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_hubungan`
--

INSERT INTO `tabel_hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(1, 1, 1, 'KANDUNG', 'AYAH', 'HIDUP'),
(2, 1, 2, 'KANDUNG', 'IBU', 'HIDUP'),
(39, 2, 2, 'KANDUNG', 'IBU', 'HIDUP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelas`
--

CREATE TABLE `tabel_kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` enum('ipa','ips') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id`, `nama`, `jurusan`) VALUES
(1, '4O', 'ipa'),
(2, '4A', 'ipa'),
(3, '4B', 'ips'),
(4, '4C', 'ips'),
(5, '4D', 'ipa'),
(6, '4E', 'ips'),
(7, '4F', 'ipa'),
(8, '4G', 'ips'),
(9, '4H', 'ipa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_ortu`
--

CREATE TABLE `tabel_ortu` (
  `id` int(10) NOT NULL,
  `nik` char(16) DEFAULT NULL,
  `nama` char(50) DEFAULT NULL,
  `pendidikan` char(20) DEFAULT NULL,
  `pekerjaan` char(20) DEFAULT NULL,
  `telp` char(13) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `agama` char(20) DEFAULT NULL,
  `is_active` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_ortu`
--

INSERT INTO `tabel_ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jk`, `agama`, `is_active`) VALUES
(1, '6371011605680006', 'JARWO', 'SLTA', 'Buruh harian lepas', '083890220900', 'Jl. Kelayan A', 'laki-laki', 'ISLAM', 'TRUE'),
(2, '6371015605730011', 'SARINORANI', 'SD', 'Ibu rumah tangga', '087899002239', 'Jl. Pramuka', 'perempuan', 'ISLAM', 'TRUE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_poin`
--

CREATE TABLE `tabel_poin` (
  `id` int(10) NOT NULL,
  `nama_poin` varchar(150) DEFAULT NULL,
  `bobot` char(20) DEFAULT NULL,
  `jenis` enum('pelanggaran','prestasi') DEFAULT NULL,
  `status` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_poin`
--

INSERT INTO `tabel_poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Datang terlambat', '20', 'pelanggaran', 'TRUE'),
(2, 'Keluar kelas tanpa izin', '5', 'pelanggaran', 'TRUE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_semester`
--

CREATE TABLE `tabel_semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `poin_id` int(10) DEFAULT NULL,
  `wali_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `kelas_id` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` enum('ganjil','genap') DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `tingkat_kelas` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_semester`
--

INSERT INTO `tabel_semester` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(9, 3, 2, 3, 2, 1, '2023-06-25', 'genap', 'TRUE', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` char(13) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '2110010393', '2110010393', 'Muhamad Abell Deskiawan', '6371010612030007', 'Banjarmasin', '2003-12-06', 'laki-laki', 'Jl. Kelayan A ', '0895703228001', '0895703228001', 'TRUE'),
(2, '2110010395', '2110010395', 'Istiyana', '6371030611030008', 'Banjarmasin', '2003-11-06', 'perempuan', 'Jl. Pramuka', '0895703228002', '0895703228002', 'TRUE'),
(3, '2110010392', '2110010392', 'Ahmad Saufi', '6371030611030008', 'Banjarmasin', '2003-11-06', 'perempuan', 'Jl. Pramuka', '0895703228002', '0895703228002', 'TRUE'),
(4, '2110010399', '2110010399', 'Ilham Akbar', '6371010711040004', 'Banjarmasin', '2004-11-07', 'laki-laki', 'Jl. Banua Anyar', '0895703228004', '0895703228004', 'TRUE'),
(5, '2110010390', '2110010390', 'Purnama Sari', '6371012211030005', 'Banjarmasin', '2003-11-22', 'perempuan', 'Jl. Veteran', '0895703228005', '0895703228005', 'TRUE'),
(6, '2110010444', '2110010444', 'Agus Renaldy', '6371011101030007', 'Kandangan', '2003-01-11', 'laki-laki', 'Jl. Manarap', '0895703228006', '0895703228006', 'TRUE'),
(7, '2110010390', '2110010390', 'Kevin', '6371012204030006', 'Banjarmasin', '2003-04-22', 'laki-laki', 'Jl. Bumi Mas', '0895703229001', '0895703229001', 'TRUE'),
(8, '2110010780', '2110010780', 'Nurliantina', '6371011206020008', 'Banjarmasin', '2002-06-12', 'perempuan', 'Jl. Pekapuran Raya', '0895703223333', '0895703223333', 'TRUE'),
(9, '2110010590', '2110010590', 'Amalia Salimah', '6371012111010001', 'Banjarmasin', '2001-11-21', 'perempuan', 'Jl. Kuripan', '0895703224000', '0895703224000', 'TRUE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` int(10) NOT NULL,
  `username` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `level` char(50) DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_userid` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id`, `username`, `password`, `level`, `status`, `created_at`, `created_userid`, `updated_at`, `updated_userid`) VALUES
(1, 'admin', 'admin', '1', 'TRUE', '2023-06-25 12:49:29', 1, '2023-06-25 12:49:29', 1),
(2, 'abell', 'abell', '2', 'TRUE', '2023-06-12 00:00:00', 2, '2023-06-12 00:00:00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_walikelas`
--

CREATE TABLE `tabel_walikelas` (
  `id` int(10) NOT NULL,
  `nip` char(20) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `pendidikan` char(60) DEFAULT NULL,
  `telp` char(16) DEFAULT NULL,
  `matpel` char(30) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `status` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_walikelas`
--

INSERT INTO `tabel_walikelas` (`id`, `nip`, `nama`, `jk`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '32991001', 'Reza', 'laki-laki', 'S1 Matematika', '085200893927', 'Matematika', 'Jl. Tembus Mantuil', 'TRUE'),
(2, '32001161', 'Wati', 'perempuan', 'S1 Bahasa Indonesia', '089573990203', 'Bahasa Indonesia', 'Jl. Beruntung Jaya', 'TRUE'),
(3, '34729037', 'Zainal Abidin', 'laki-laki', 'S1 Sejarah', '087863489911', 'Sejarah', 'Jl. Sultan Adam', 'TRUE'),
(5, '32892009', 'Nova Sari', 'perempuan', 'S1 Bahasa Inggris', '085800283679', 'Bahasa Inggris', 'Jl. Pemurus', 'TRUE'),
(6, '35820308', 'Muhammad Azmi', 'laki-laki', 'S1 Pendidikan Olahraga', '089569328000', 'Olahraga', 'Jl. Pramuka', 'TRUE');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hubungan_siswa` (`siswa_id`),
  ADD KEY `fk_hubungan_ortu` (`ortu_id`);

--
-- Indeks untuk tabel `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_ortu`
--
ALTER TABLE `tabel_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_poin`
--
ALTER TABLE `tabel_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_semester`
--
ALTER TABLE `tabel_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_semester_siswa` (`siswa_id`),
  ADD KEY `fk_semester_kelas` (`kelas_id`),
  ADD KEY `fk_semester_wali` (`wali_id`),
  ADD KEY `fk_semester_poin` (`poin_id`),
  ADD KEY `fk_semester_ortu` (`ortu_id`);

--
-- Indeks untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_walikelas`
--
ALTER TABLE `tabel_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tabel_ortu`
--
ALTER TABLE `tabel_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_poin`
--
ALTER TABLE `tabel_poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_semester`
--
ALTER TABLE `tabel_semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_walikelas`
--
ALTER TABLE `tabel_walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  ADD CONSTRAINT `fk_hubungan_ortu` FOREIGN KEY (`ortu_id`) REFERENCES `tabel_ortu` (`id`),
  ADD CONSTRAINT `fk_hubungan_siswa` FOREIGN KEY (`siswa_id`) REFERENCES `tabel_siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `tabel_semester`
--
ALTER TABLE `tabel_semester`
  ADD CONSTRAINT `fk_semester_kelas` FOREIGN KEY (`kelas_id`) REFERENCES `tabel_kelas` (`id`),
  ADD CONSTRAINT `fk_semester_ortu` FOREIGN KEY (`ortu_id`) REFERENCES `tabel_ortu` (`id`),
  ADD CONSTRAINT `fk_semester_poin` FOREIGN KEY (`poin_id`) REFERENCES `tabel_poin` (`id`),
  ADD CONSTRAINT `fk_semester_siswa` FOREIGN KEY (`siswa_id`) REFERENCES `tabel_siswa` (`id`),
  ADD CONSTRAINT `fk_semester_wali` FOREIGN KEY (`wali_id`) REFERENCES `tabel_walikelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
