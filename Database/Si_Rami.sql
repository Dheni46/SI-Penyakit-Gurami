-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2021 pada 14.42
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spcertaintyfactorv2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Bintik Putih (Ichthyophthiriasis)', 'Penyakit ini disebut juga penyakit bintik putih, karena pada sisik ikan yang menderita penyakit ini terdapat bercak atau bintik-bintik putih. Penyakit ini disebabkan oleh protozoa Ich (Ichthyophthirius multifilis).', 'Jika penyakitnya tergolong akut dan ikan yang terserang lebih dari 50%, sebaiknya kolam dikuras dan ikan yang sehat dipindahkan ke kolam lain. Biasanya protozoa penyebab penyakit ini akan mati jika tidak menempel pada ikan selama lebih dari 48 jam. Oleh karena itu, pengosongan kolam sebaiknya dilakukan setidaknya selama 2 hari 2 malam.', 'bintik putih.jpeg'),
(2, 'Bercak Merah (Motile Aeromonas Septicemia)', 'Penyakit Motile Aeromonas Septicemia disebut juga bercak merah karena pada ikan gurami atau ikan lain yang terserang bakteri ini akan terlihat bercak-bercak kemerahan dikulitnya.', 'Penjegahan penyakit ini adalah dengan membuat lingkungan pembudidaya nyaman untuk pertumbuhan ikan. Kondisi lingkungan yang tidak cocok dapat membuat ikan mudah stres yang berlanjut pada menurunnya daya tahan tubuh. Jika hal itu terjadi, penyakit akan lebih mudah bersarang. Beberapa hal yang dapat menyebabkan kondisi kekebalan tubuh melemah adalah kualitas air yang buruk, nutrisi yang tidak terpenuhi dan kepadatan yang terlalu tinggi.', 'bercak merah.jpg'),
(3, 'Edwardsiellosis', 'Penyakit Edwardsiellosis adalah penyakit yang mengeluarkan darah dari lubang lubang ditubuhnya, seperti mulut, lubang hidung dan anus.', 'jika ditemukan ikan gurami yang terjangkit penyakit ini, harus diberi antibiotik pada air kolamnya. antibiotik yang biasa digunakan adalah Terramycin. Adapun dosisnya sesuai anjuran petugas kesehatan hewan setempat. Pemberian Sulfonamide dan Gentamicin Sufate juga dapat membantu mengobati ikan gurami.', 'edwardsiellosis 2.jpg'),
(4, 'Vibriosis', 'Penyakit Vibriosis ini lebih sering ditemukan pada ikan yang dibudidayakan di air asin. Ikan air tawar yang sering terjangkit vibriosis terutama yang dibudidayakan di daerah tropis, termasuk indonesia. penyebabnya adalah bakteri Vibrio anguillarum, Vibrio Harveyi dan sejenisnya. selain itu, penyakit ini lebih sering ditemukan pada ikan usia muda, terutama pada stadium pendederan.', 'Pencegahan penyakit ini dengan memperhatikan kebersihan air, kolam dan pakan serta melakukan vaksinasi yang diperlukan', 'vibriosis.jpg'),
(5, 'Streptococcosis', 'Penyakit Streptococcosis disebabkan oleh bakteri Streptococcus agalactiae. ikan tawar yang dipelihara di air tenang atau yang sirkulasi air nya minim, lebih rentan terserang penyakit ini. jika ditemukan ikan yang menderita penyakit ini, risiko penularan pada ikan lain di kolam yang sama lebih dari 30%.', 'Penyakit ini dapat diatasi dengan pemberian antibiotik. Akan tetapi, pemberian antibiotik ini harus sesuai saran petugas kesehatan peternakan setempat. pemberian antibotik yang tidak sesuai kebutuhan dapat membuat bakteri kebal terhadap antibiotik tersebut.', 'Streptococcosis.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
