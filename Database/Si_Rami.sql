-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2021 pada 05.18
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
-- Database: `si_rami`
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
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('pakar', '87b7cf2448de01f22b0c016b272f2ec0', 'Sukses Budidaya Ikan');

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

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(103, 1, 1, 0.4, 0.2),
(104, 1, 2, 0.4, 0.2),
(105, 1, 3, 0.4, 0.2),
(106, 1, 4, 0.4, 0.2),
(107, 1, 5, 1, 0),
(108, 2, 1, 0.4, 0.2),
(109, 2, 6, 0.8, 0.2),
(110, 2, 7, 0.6, 0.2),
(111, 2, 8, 0.8, 0),
(112, 2, 9, 0.6, 0),
(113, 2, 10, 0.6, 0),
(114, 2, 18, 1, 0),
(115, 3, 1, 0.4, 0.2),
(116, 3, 11, 0.6, 0.2),
(117, 3, 12, 0.8, 0),
(118, 3, 13, 0.8, 0),
(119, 4, 2, 0.4, 0.2),
(120, 4, 6, 0.8, 0.2),
(121, 4, 7, 0.6, 0.2),
(122, 4, 12, 0.8, 0),
(123, 4, 13, 0.8, 0),
(124, 5, 1, 0.4, 0.2),
(125, 5, 2, 0.4, 0.2),
(126, 5, 7, 0.6, 0.2),
(127, 5, 12, 0.8, 0),
(128, 5, 13, 0.8, 0),
(129, 5, 15, 0.8, 0),
(130, 5, 16, 0.6, 0.2),
(131, 5, 17, 0.6, 0.2),
(132, 5, 19, 0.8, 0.2),
(133, 33, 1, 0.4, 0.2),
(134, 33, 2, 0.4, 0.2),
(135, 33, 4, 0.4, 0.2),
(136, 33, 13, 0.8, 0),
(137, 33, 14, 0.6, 0.2),
(138, 33, 18, 1, 0),
(139, 33, 21, 0.4, 0.2),
(140, 34, 4, 0.4, 0.2),
(141, 34, 16, 0.6, 0.2),
(142, 34, 15, 0.8, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(3, 'senang menyendiri'),
(2, 'kehilangan nafsu makan'),
(1, 'mata terlihat keruh dan menonjol'),
(5, 'kulit disekitar bintik putih'),
(4, 'lebih sering berada didasar kolam'),
(6, 'Kulit Terluka'),
(7, 'Perut Kembung'),
(8, 'Pendarahan Pada Insang'),
(9, 'sisik lepas'),
(10, 'sirip ekor rontok'),
(11, 'ikan terlihat pucat'),
(12, 'Pendarahan sekitar mulut, anus dan pangkal sirip'),
(13, 'Kerusakan hati, ginjal dan limpa'),
(14, 'terlihat lemah lesu'),
(15, 'pertumbuhan melambat'),
(16, 'berwarna gelap'),
(17, 'gerakannya terlihat lambat'),
(18, 'bercak bercak kemerahan dikulit'),
(19, 'kejang dan gerakan renangnya tidak stabil'),
(20, 'badan kurus'),
(21, 'warna memucat');

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

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(307, '2021-07-15 21:15:47', 'a:7:{i:1;s:6:\"0.8803\";i:33;s:6:\"0.2876\";i:5;s:6:\"0.1904\";i:4;s:6:\"0.1200\";i:34;s:6:\"0.1200\";i:2;s:6:\"0.0800\";i:3;s:6:\"0.0800\";}', 'a:5:{i:1;s:1:\"4\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"2\";}', 1, '0.8803'),
(308, '2021-07-15 21:24:55', 'a:7:{i:1;s:6:\"0.8803\";i:33;s:6:\"0.2876\";i:5;s:6:\"0.1904\";i:4;s:6:\"0.1200\";i:34;s:6:\"0.1200\";i:2;s:6:\"0.0800\";i:3;s:6:\"0.0800\";}', 'a:5:{i:1;s:1:\"4\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"2\";}', 1, '0.8803'),
(309, '2021-07-16 00:04:16', 'a:7:{i:1;s:6:\"0.8803\";i:33;s:6:\"0.2876\";i:5;s:6:\"0.1904\";i:4;s:6:\"0.1200\";i:34;s:6:\"0.1200\";i:2;s:6:\"0.0800\";i:3;s:6:\"0.0800\";}', 'a:5:{i:1;s:1:\"4\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"2\";}', 1, '0.8803'),
(310, '2021-07-16 00:23:09', 'a:4:{i:34;s:6:\"0.6364\";i:5;s:6:\"0.6048\";i:1;s:6:\"0.0800\";i:33;s:6:\"0.0800\";}', 'a:3:{i:4;s:1:\"4\";i:15;s:1:\"3\";i:16;s:1:\"3\";}', 34, '0.6364'),
(311, '2021-07-16 00:32:19', 'a:2:{i:4;s:6:\"0.1200\";i:5;s:6:\"0.0800\";}', 'a:5:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"7\";i:5;s:1:\"5\";}', 4, '0.1200');

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
(1, 'Bintik Putih (Ichthyophthiriasis)', 'Penyakit ini disebut juga penyakit bintik putih, karena pada sisik ikan yang menderita penyakit ini terdapat bercak atau bintik-bintik putih. Penyakit ini disebabkan oleh protozoa Ich (Ichthyophthirius multifilis).', 'Jika penyakitnya tergolong akut dan ikan yang terserang lebih dari 50%, sebaiknya kolam dikuras dan ikan yang sehat dipindahkan ke kolam lain. Biasanya protozoa penyebab penyakit ini akan mati jika tidak menempel pada ikan selama lebih dari 48 jam. Oleh karena itu, pengosongan kolam sebaiknya dilakukan setidaknya selama 2 hari 2 malam.', 'Ichthyophthiriasis.jpg'),
(2, 'Bercak Merah (Motile Aeromonas Septicemia)', 'Penyakit Motile Aeromonas Septicemia disebut juga bercak merah karena pada ikan gurami atau ikan lain yang terserang bakteri ini akan terlihat bercak-bercak kemerahan dikulitnya.', 'Penjegahan penyakit ini adalah dengan membuat lingkungan pembudidaya nyaman untuk pertumbuhan ikan. Kondisi lingkungan yang tidak cocok dapat membuat ikan mudah stres yang berlanjut pada menurunnya daya tahan tubuh. Jika hal itu terjadi, penyakit akan lebih mudah bersarang. Beberapa hal yang dapat menyebabkan kondisi kekebalan tubuh melemah adalah kualitas air yang buruk, nutrisi yang tidak terpenuhi dan kepadatan yang terlalu tinggi.', 'bercak merah.jpg'),
(3, 'Edwardsiellosis', 'Penyakit Edwardsiellosis adalah penyakit yang mengeluarkan darah dari lubang lubang ditubuhnya, seperti mulut, lubang hidung dan anus.', 'jika ditemukan ikan gurami yang terjangkit penyakit ini, harus diberi antibiotik pada air kolamnya. antibiotik yang biasa digunakan adalah Terramycin. Adapun dosisnya sesuai anjuran petugas kesehatan hewan setempat. Pemberian Sulfonamide dan Gentamicin Sufate juga dapat membantu mengobati ikan gurami.', 'edwardsiellosis 2.jpg'),
(4, 'Vibriosis', 'Penyakit Vibriosis ini lebih sering ditemukan pada ikan yang dibudidayakan di air asin. Ikan air tawar yang sering terjangkit vibriosis terutama yang dibudidayakan di daerah tropis, termasuk indonesia. penyebabnya adalah bakteri Vibrio anguillarum, Vibrio Harveyi dan sejenisnya. selain itu, penyakit ini lebih sering ditemukan pada ikan usia muda, terutama pada stadium pendederan.', 'Pencegahan penyakit ini dengan memperhatikan kebersihan air, kolam dan pakan serta melakukan vaksinasi yang diperlukan', 'vibriosis.jpg'),
(5, 'Streptococcosis', 'Penyakit Streptococcosis disebabkan oleh bakteri Streptococcus agalactiae. ikan tawar yang dipelihara di air tenang atau yang sirkulasi air nya minim, lebih rentan terserang penyakit ini. jika ditemukan ikan yang menderita penyakit ini, risiko penularan pada ikan lain di kolam yang sama lebih dari 30%.', 'Penyakit ini dapat diatasi dengan pemberian antibiotik. Akan tetapi, pemberian antibiotik ini harus sesuai saran petugas kesehatan peternakan setempat. pemberian antibotik yang tidak sesuai kebutuhan dapat membuat bakteri kebal terhadap antibiotik tersebut.', 'Streptococcosis.jpg'),
(33, 'Tuberkulosis Ikan Atau Mycobacteriosis', 'Penyakit ini disebut tuberkulosis ikan karena pengidapnya menunjukan gejala yang mirip dengan manusia atau hewan lain yang menderita penyakit ini. Penyebabnya adalah bakteri yang dikenal dengan nama Mycobacterium. Oleh karena itu, pembudidaya ikan harus menganggap kolam budidayanya rentan terhadap serangan bakteri ini.', 'Pencegahan penyakit ini adalah dengan menerapkan biosekuriti di sekitar kolam. Hindari penggunaan air dari sumber air yang tercemar limbah biologi maupun kimia, membersihkan kolam dan peralatan kolam secara rutin, menyimpan  dan memberikan pakan sesuai petunjuk yang ada, serta mencegah hewan yang sakit memasuki wilayah di sekitar kolam.', 'mycobacterium.jpg'),
(34, 'Trichodiniasis atau penyakit gatal', 'Trichodiniasis merupakan penyakit parasit pada larva dan ikan kecil yang disebabkan oleh ektoparasit Trichodina.Ektoparasit Trichodina tidak meyebabkan penyakit fatal pada ikan, tetapi berperan terhadap penurunan kekebalan tubuh ikan. Kondisi ini kemudian mengundang terjadinya infeksi sekunder pada gurami yang dapat berakibat fatal.', 'Pencegahan/Pengendalian penyakit ini adalah  Mempertahankan kualitas air terutama stabilisasi suhu air >= 29 derajat celcius, Mengurangi kadar bahan organik terlarut dan/atau meningkatkan frekwensi pergantian air, Ikan yang terserang trichodiniasis dengan tingkat prevalensi dan intensitas yang rendah.\r\npengobatan dapat dilakukan dengan perendaman beberapa jenis desinfektan, antara lain:\r\n1. Larutan garam dapur (untuk ikan air tawar) pada konsentrasi 500-10.000 ppm (tergantung jenis dan umur ikan', 'trichodiniasis.jpg');

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
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(27, 'Argulus Indicus atau kutu ikan', '<p>Penyakit ini disebabkan oleh parasit Argulus Indicusyang sumber penularannya adalah udang renik. Dalam bahasa Inggris dikenal dengan nama fish lae atau kutu ikan. Kutu ini akan menempel dan menggigit mangsa sehingga berdarah. Penularannya adalah melalui air dan melalui kontak langsung dengan ikan lain, biasanya penyakit ini sering muncul pada kolam ikan yang kualitas airnya buruk.</p>\r\n', '<p><em>Cara penyembuhannya adalah dengan merendam ikanyang sakit ke dalam air garam 10 -15 g/liter selama 15 menit. Sebaiknya untuk menghindari ikan tertular kembali, anda menambahkan larutan garam 10 &ndash; 15 g/m2 untuk membunuh kutu air.</em></p>\r\n', 'argulus-foliaceus.jpg'),
(28, 'Penyakit Dactylogyrus dan gryodactylus', '<p>Dua nama ini adalah sejenis cacing parasit yang tumbuh berkembang dikarenakan kualitas air yang buruk, pakan ikan yang kurang atau kepadatan kolam yang terlalu penuh. JenisDactylogyrus menyerang insang ikan, gejalanya adalah menurunnya nafsu makan dan ikan gurami sering terlihat berbaring dengan dengan posisi insang yang terbuka, sedang jenis Gyrodactylus menyerang bagian sirip ikan.</p>\r\n', '<p><em>Cara perawatannya adalah dengan memperbaiki kualitas air yang berada di kolam dengan menggantinya dengan air yang baru, dan menambahkan garam sebanyak kira2 40 gram/m2. Jika penyakit sudah sangat parah anda bisa merendam ikan dalam larutan garam selama 1 malam.</em></p>\r\n', 'Dactylogyrus dan gryodactylus.jpg'),
(29, 'Jamur', '<p>Pada tubuh ikan gurami yang terinfeksi jamur akan muncul benang &ndash; benang berwarna krem seperti kapas, biasanya pada kulit tubuh yang terluka. Jenis jamur yang menyerang ikan gurami adalah Saprolegnia dan Achyla. Jamur ini akan menyebabkan ikan menjadi lemah karena kurang makan, sehingga bisa memicu penyakit lain muncul.</p>\r\n', '<p><em>Cara penyembuhannya adalah dengan memberikan garam ke dalam kolam dengan jumlah 400g/m2 selama 24 jam untuk kemudian diganti besok harinya, selain garam bisa juga dipakai malachyte oxalatesebanyak 1 mg/l air selama 12 jam. Bisa juga menggunakan larutan formalin 200 ppm selama 2 jam.</em></p>\r\n', 'jamur.jpg'),
(30, ' bakteriAeromonas sp, dan Pseudomonas sp', '<p>Jenis bakteri yang menyerang ikan gurami adalah bakteriAeromonas sp, dan Pseudomonas sp. Gejala yang muncul yaitu terdapat luka berdarah tubuh, perut membesar, lendir mencair , sisik mengelupas dan muncul borok ditubuhnya. Dalam jangka waktu dekat ikan akan melemah, mengambang di permukaan air dan akhirnya mati.</p>\r\n', '<p><em>Pengobatan yang bisa dilakukan adalah dengan merendam ikan dalam larutan oxytetracycline 2 &ndash; 5 mg/l selama 24 jam, dan tindakan ini dilakukan berulang 3 kali. Hal lain yang bisa dilakukan adalah dengan merendam ikan yang terinfeksi bateri dengan larutan matachite green oxalat 0,5mg/l selama satu jam , selang 1 jam kemudian deberi umpan makanan yang lebih dahulu diberi kandungan oxcytetracycline 60mg/kg pakan, dan diulang selama 7 hari berturut &ndash; turut.</em></p>\r\n', 'bakter aeromas.jpg'),
(31, 'Bakteri Nocardiosis', '<p>Ciri penyakit ini yang paling mencolok adalah adanya abses di kulit ikan serta adanya bintil di insang, ginjal, dan limpanya. sesuai namanya, penyakit nocardiosis ini disebabkan oleh bakter&nbsp;<em>Nocardia Nocardia Seriolae.&nbsp;</em>Bakteri ini biasanya menjangkiti ikan saat masih usia pendederan.&nbsp;</p>\r\n', '<p>Penjegahan penyakit ini adalah dengan menjaga kebersihan kolam berikut air dan pakannya. Pemberian obat-obatan termasuk antibiotik juga disarankan setelah ikan yang menderita penyakit ini dipisahkan dari kelompoknya dan dikarantina.</p>\r\n', 'bakteri nocardia.jpg');

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
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
