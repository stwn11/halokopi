-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2021 pada 12.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halokopi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_whatsapp` varchar(14) NOT NULL,
  `password` text NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `tipe_daftar` varchar(50) NOT NULL,
  `tipe_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, '1635395222.png', 'User', 'user@gmail.com', '0123456789', '$2y$10$uDy0.tHRpB0alUAAwL.1XOT/f3Y6O4SfIZ28rnhyyRlkEgacqimPu', '2021-06-18 16:20:48', '', ''),
(15, '1635395184.png', 'Administrator', 'admin@gmail.com', '0812345678910', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2021-07-11 01:18:30', '', 'Admin'),
(20, 'user.png', 'Angga Setiyawan', 'anggasetiyawan11@gmail.com', '', '', '2021-11-01 09:36:48', 'Google', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `banner_promo`
--

INSERT INTO `banner_promo` (`idbanner`, `image`, `status`) VALUES
(32, '26a5d7920c99cf4b2f62e423ef9608e7.jpg', ''),
(33, '3db0dc28f880920b94d544b110772558.jpg', ''),
(34, '66e80e0b20b73dee4f51aacc3e305825.jpg', ''),
(35, '1f06b103a5176afd4302362c973f706e.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '1643475600');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `judul` varchar(200) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `berat` int(11) NOT NULL,
  `warna` text NOT NULL,
  `ukuran` text NOT NULL,
  `stok` int(5) NOT NULL,
  `terjual` int(5) NOT NULL,
  `diskon` int(3) NOT NULL,
  `tipe_iklan` varchar(15) NOT NULL,
  `waktu` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(43, 1, '1635733911-1.jpg', 'Aceh Gayo Anaerob Natural 200g Kopi Arabica', 85000, 'Aceh Gayo Anaerob Natural 200g Kopi Arabica\n\nUntuk setiap bubuk kopi single origin yang dijual di Halo Kopi, semuanya digiling dengan memakai mesin penggiling Mahlkonig VTA 6S. Mesin ini memiliki conical burr yang terkenal dengan hasil gilingan yang presisi di setiap partikel gilingannya. Karenanya, kini para pelanggan setia Halo Kopi bisa memilih berbagai rentang pilihan level gilingan sesuai dengan kebutuhan masing-masing, mulai dari super fine hingga coarse.\n\nUntuk bahan rekomendasi:\nSuper fine: Turkish coffee\nFine: Espresso\nMedium fine: Mokapot\nMedium: Pour over (V60, Chemex, Kalita) syphon, Aeropress, Vietnam Drip\nMedium coarse: French press\nCoarse: Cold drip, cold brew', 200, '', '', 20, 0, 0, '', '2021-11-01 03:31:51', ''),
(44, 1, '1635734452-1.jpg', 'Bali Honey Process 200g Kopi Arabica', 95000, 'Bali Honey Process 200g Kopi Arabica\n\nUntuk setiap bubuk kopi single origin yang dijual di Halo Kopi semuanya digiling dengan memakai mesin penggiling Mahlkonig VTA 6S. Mesin ini memiliki conical burr yang terkenal dengan hasil gilingan yang presisi di setiap partikel gilingannya. Karenanya, kini para pelanggan setia Halo Kopi bisa memilih berbagai rentang pilihan level gilingan sesuai dengan kebutuhan masing-masing, mulai dari super fine hingga coarse.\n\nUntuk bahan rekomendasi:\nSuper fine: Turkish coffee\nFine: Espresso\nMedium fine: Mokapot\nMedium: Pour over (V60, Chemex, Kalita) syphon, Aeropress, Vietnam Drip\nMedium coarse: French press\nCoarse: Cold drip, cold brew', 200, '', '', 20, 0, 0, '', '2021-11-01 03:40:52', ''),
(45, 2, '1635744112-1.jpg,1635744112-2.jpg', 'A-IDIO - Drip Coffee Kettle 240ml', 585000, 'A-IDIO - Drip Coffee Kettle 240ml\n\nKETEL leher angsa produksi A-IDIO dari Taiwan ini melengkapi satu lagi daftar ketel-ketel pilihan Anda untuk menyeduh dan membuat kopi. Ketel dengan desain stylish yang kini sudah bisa Anda pesan di Halo Kopi ini memiliki tampilan elegan dan sekaligus fungsional. Bentuk corongnya yang panjang dan corong yang kecil membuat jatuh tetesan air lebih lambat, kecil dan sangat terkontrol. Menuangkan air pun menjadi jauh lebih mudah dan praktis.\n\nSet ketel A-IDIO ini termasuk bagian tutup (lid) dari kayu yang stylish. Bagian handle-nya juga sangat nyaman digenggam dan disangga, sehingga semakin memudahkan Anda menentukan kendali tuangan aliran air yang Anda butuhkan, apakah dengan laju deras atau bahkan sekecil mungkin.\n\nKetel A-IDIO yang didesain oleh Vcomplus TECH. INC. dari Taiwan ini pun merupakan finalis Golden Pin Design Award 2018 untuk kategori desain produk. Ketel leher angsa A-IDIO ini cocok digunakan di kedai-kedai kopi, kafe, maupun di rumah untuk penggunaan sehari-hari. Segera pesan di Halo Kopi sebelum kehabisan.', 500, 'Rose Gold,Blue', '', 10, 0, 0, '', '2021-11-01 06:21:51', ''),
(46, 2, '1635744386-1.jpg,1635744386-2.jpg', 'A-IDIO - Stylish Temperature Kettle 350ml', 740000, 'A-IDIO - Stylish Temperature Kettle 350ml \n\nSALAH satu rangkaian alat-alat untuk membuat kopi terbaru dari A-IDIO, perusahaan asal Taiwan, ini adalah ketel mini yang telah dilengkapi dengan thermometer. Ketel stylish ini bisa Anda pesan di Halo Kopi dan memiliki desain minimalis yang elegan sehingga akan menarik perhatian siapa saja yang melihatnya – termasuk pelanggan di kedai kopi atau kafe Anda.\n\nMaterialnya terbuat dari stainless steel grade 304 yang berkualitas dan sekaligus tahan lama. Material ini juga halus, cepat kering dan tahan karat.\nKetel A-IDIO dengan pengukur temperatur telah mendapat penghargaan desain dari Golden Pin Design Award di tahun 2017.\n\nKonsep desain: spout tipis pada corong leher angsa berukuran 5 mm, memungkinkan jatuh tetesan air mengalir dengan laju begitu tipis dan terkendali – sangat baik untuk menuangkan air untuk kebutuhan pour over. \nPegangan nyaman, dengan tutup kayu.\nDilengkapi dengan thermometer pengukur suhu (yang dapat dilepas), sehingga Anda pun bisa mengawasi suhu air setiap saat sembari menuangkan air.\nHandel ergonomis yang telah dipatenkan.\n\nKetel stylish temperature A-IDIO cocok digunakan di kedai kopi, kafe yang mengedepankan presisi dalam laju tetesan air dan sekaligus sisi artistiknya, maupun dipakai di rumah untuk kebutuhan menyeduh kopi sehari-hari. Segera pesan di Halo Kopi sebelum kehabisan.', 800, 'Rose Gold,Mirror Silver', '', 15, 0, 0, '', '2021-11-01 06:26:25', ''),
(47, 3, '1635744726-1.jpg', 'Apron OTA 2A', 350000, 'Apron OTA 2A\n\nMerupakan celemek khusus yang umum digunakan para barista, karena selain melindungi dari cipratan selama membuat kopi, celemek barista juga menjadikan penampilan menarik ketika melayani pengunjung. Terbuat dari bahan kain denim marsoto premium dan dilengkapi dengan tali yang terbuat dari bahan kulit sintetis. Dijahit penuh ketelitian dengan benang nilon berkualitas untuk mengedepankan kenyamanan ketika menggunakannya selama proses seduh, sebabnya Halo Kopi merekomendasikan apron ini pada Anda.\n\nTersedia dalam 7 desain celemek berbeda, dengan variasi kantung sesuai kebutuhan Anda, lihat koleksi Apron lainnya. Jangan khawatir pakaian Anda menjadi kotor, karena celemek barista ini akan selalu melindungi selama bekerja di bar. Gantungkan tali apron di leher, dan rasakan kenyamanan menggunakannya, maka tunggu apa lagi, pesan segera di Halo Kopi', 700, 'Navy', '', 5, 0, 0, '', '2021-11-01 06:32:06', ''),
(48, 3, '1635745129-1.jpg', 'Apron OTA 3A', 350000, 'Apron OTA 3A﻿\n\nMerupakan celemek khusus yang umum digunakan para barista, karena selain melindungi dari cipratan selama membuat kopi, celemek barista juga menjadikan penampilan menarik ketika melayani pengunjung. Terbuat dari bahan kain denim marsoto premium dan dilengkapi dengan tali yang terbuat dari bahan kulit sintetis. Dijahit penuh ketelitian dengan benang nilon berkualitas untuk mengedepankan kenyamanan ketika menggunakannya selama proses seduh, sebabnya Halo Kopi merekomendasikan apron ini pada Anda.\n\nTersedia dalam 7 desain celemek berbeda, dengan variasi kantung sesuai kebutuhan Anda, lihat koleksi Apron lainnya. Jangan khawatir pakaian Anda menjadi kotor, karena celemek barista ini akan selalu melindungi selama bekerja di bar. Gantungkan tali apron di leher, dan rasakan kenyamanan menggunakannya, maka tunggu apa lagi, pesan segera di Halo Kopi', 700, 'Hitam', '', 5, 0, 0, '', '2021-11-01 06:38:48', ''),
(49, 6, '1635748347-1.jpg,1635748347-2.jpg', 'BUNN - AXIOM3 Automatic Coffee Brewer (2 Upper / 1 Lower Warmers)', 18000000, 'BUNN - AXIOM3 Automatic Coffee Brewer (2 Upper / 1 Lower Warmers)\n\nSpesifikasi :\nBrand : BUNN\nModel : AXIOM3\nVoltase : 230 V / 50-60 Hz\nUkuran : 54,4 x 21,6 x 48 cm\nBerat : 14,36 kg\nFinish : Stainless steel\nWarmers : 2 Upper / 1 Lower\nWater Access : Plumbed\nIncluded : 3 Decanter\nGaransi 1 Tahun\n\nFeatures :\nAdjusts automatically to varying water pressure\nFor high lime areas, BrewLOGIC® technology calculates flow rate and adjusts brew time to maintain consistent pot levels \nCold brew lock-out and automatic warmer time-out ensure high quality, fresh tasting coffee\nFront of machine programming simplifies installation\nFor high lime areas, BrewLOGIC® technology calculates flow rate and adjusts brew time to maintain consistent pot levels\nLarge 200oz. (5.9L) tank provides back-to-back brewing capacity\nCoffee extraction controlled with pre-infusion and pulse brew, digital temperature control, and large sprayhead; coffee strength controlled with variable by-pass.\nEnergy-saver mode reduces tank temperature during idle periods \nEnsures coffee brew quality with cold brew lock out capability\nHot water faucet\nSplashGard® funnel deflects hot liquids away from the hand\n\nNote : Pengiriman akan dilakukan maksimal 1 Minggu setelah orderan masuk', 14360, '', '', 2, 0, 3, 'flash sale', '2021-11-01 07:32:26', ''),
(50, 6, '1635748722-1.jpg,1635748722-2.jpg', 'Barisieur - Pour Over Filter Coffee Maker', 9650000, 'Barisieur - Pour Over Filter Coffee Maker\n\nBARISIEUR merupakan alat membuat kopi otomatis yang sekaligus berfungsi sebagai “alarm” yang membantu Anda bangun tepat waktu saat pagi. Produk jebolan Kickstarter ini dibuat oleh Joshua Renouf, desainer asal Inggris, sejak 2016 yang tampilannya terinspirasi akan konsep desain yang elegan, mampu memberikan pengalaman personal bagi penggunanya, dan sekaligus terbuat dari material yang berkualitas. Setelah mendapat cukup banyak perhatian dari para penggemar kopi Internasional, kini Barisieur telah hadir di Halo Kopi dan bisa Anda pesan untuk mengalami juga sensasinya.\n\nSpesifikasi :\nBrand : Barisieur\nMaterial : Black Corian, Stainless Steel Ball-Bearings, Sustainable Stainless Steel Coffee Filter, Bespoke Hand-Blown Glass, and American Walnut Tray\nUkuran : 25 x 16,5 x 26 cm\nBoiling Vessel : 200ml max\nGlass Funnel : 90ml\nDrawer : 180g\nMilk Vessel : 25ml\nSpoon : 15g\nCup : 160ml\nColor : White & Black\nDesign by Joshua Renouf, London\nMade by Joshua Shires, Shenzhen', 5000, 'White,Black', '', 5, 0, 5, 'flash sale', '2021-11-01 07:38:41', ''),
(51, 6, '1635748978-1.jpg', 'DeLonghi - ECP 33 / ECP 35 Replacement - Portafilter', 550000, 'DeLonghi - ECP 33 / ECP 35 Replacement - Portafilter\nSpesifikasi :\nBrand : DeLonghi\nMaterial : Plastik & Stainless Steel\nCocok untuk DeLonghi - Espresso Machine ECP 33 / ECP 35\nMade in China\n\nNote : Belum termasuk filter basket', 1000, '', '', 3, 0, 0, '', '2021-11-01 07:42:57', ''),
(52, 6, '1635749117-1.jpg', 'DeLonghi - Espresso Machine ECP 33.21.BK', 2650000, 'DeLonghi - Espresso Machine ECP 33.21.BK\n\nTidak ada yang tidak mungkin, dengan cara mudah Anda bisa menikmati sajian espresso setiap harinya. Maka dengan ini seharusnya Anda akan terkesima dengan kehebatan Mesin Espresso ECP 33.21. Daya tarik desain minimalis dengan kemampuan hasilkan sajian kopi berkualitas tentu menjadi incaran banyak pecinta espresso. Mudah digunakan, merawatnya pun gampang, sebabnya Halo Kopi merekomendasikan mesin espresso ini hanya pada Anda yang membutuhkan kesederhanaan dengan kualitas sajian luar biasa. Kapasitas air bisa menampung hingga 1.1liter, proses mengukus susu untuk persiapan cappuccino dapat disesuaikan.\n\nSpesifikasi :\nBrand : DeLonghi\nKode : ECP33.21.BK\nDaya : 1.100 W\nVoltase : 220-240 Volt ~ 50/60Hz\nBody material : Plastic\nHeating system : Stainless steal boiler\nDimensi (PxLxT) cm : 18,5 x 24 x 30,5 cm\nBerat : 4,1 kg\nWater Tank Capacity : 1,1 L\nMaximum cup height : 13\nPump pressure : 15 bar\nKompatibel dengan ESE pods\nWarna : Black\nGaransi : 2 Tahun\nMade in China', 4100, '', '', 3, 0, 2, 'flash sale', '2021-11-01 07:45:16', ''),
(53, 12, '1635749471-1.jpg,1635749471-2.jpg', 'Baratza - Coffee Grinder Encore Black', 2950000, 'Baratza Encore\n\nBaratza adalah sebuah perusahaan yang menciptakan alat penggiling kopi dengan berkomitmen menciptakan alat terbaik untuk para penikmat kopi. Sejak 1999 hingga sekarang Kyle Anderson dan Kyra Kennedy dua orang yang berada di balik kesuksesan Baratza terus melakukan inovasi dari tahun ke tahun untuk mendukung kepuasan para kostumernya. Baratza berkomitmen menciptakan alat penggiling kopi yang hasilnya konsisten, presisi dan menjaga cita rasa biji kopi, mengubahnya menjadi bubuk tanpa mengubah rasa dan kesegarannya. Baratza diperuntukkan untuk mini café dan para peminat kopi yang menginginkan kenikmatan secangkir kopi di tiap harinya. \n\nSpesifikasi :\nBrand : Baratza\nPower : 110 W\nVoltase : 230 V AC ~50/60Hz\nBerat : 3.1 kg\nKapasitas : 227gr biji kopi, 142gr bubuk\nUkuran (PxLxT) : 16 x 12 x 35 cm\nMaterial : Plastic\nBurr Type : Conical, Steel\nBurr Size : 71mm\nSpeed to Grind: 0.8 - 1.1 gr / sec\nBurr Speed : 550 rpm\nWarna : Hitam\nGaransi 1 Tahun\nMade in Taiwan', 3100, '', '', 4, 0, 0, '', '2021-11-01 07:51:11', ''),
(54, 12, '1635749602-1.jpg', 'Baratza - Coffee Grinder Sette 30-S02', 4450000, 'Baratza - Coffee Grinder Sette 30S02\n\nMerupakan mesin penggiling kopi elektrik, secara otomatis menggiling biji kopi sesuai yang diinginkan. Sangat tepat mendukung rutinitas minum kopi harian untuk penggunaan kedai kopi atau penggunaan rumahan. Baratza sendiri adalah merek ternama di kalangan pecinta kopi, bahkan penghargaan pun diterbitkan oleh Specialty Coffee Association pada produsen mesin grinder elektrik ini. Oleh karenanya, Halo Kopi merekomendasikan penggunaan Baratza untuk kebutuhan menggiling biji kopi Anda.\n\nSpesifikasi :\nBrand : Baratza\nModel : Sette 30S02\nPower : 280 W\nVoltase : 230 V AC ~50/60Hz\nDimensi (PxLxT) : 24 x 13 x 38 cm\nBerat : 3.2 kg\nKapasitas hopper : 300-400g\nBurr : 40mm steel burrs by Etzinger\nSpeed to Grind : fine (3.5g/sec), coarse (5.5g/sec)\nGaransi 1 Tahun\nMade in Taiwan', 3200, '', '', 3, 0, 0, '', '2021-11-01 07:53:22', ''),
(55, 13, '1635749942-1.jpg,1635749942-2.jpg', 'ACME - Demitasse Cup 70ml ', 70000, 'ACME DEMITASSE CUP 70ML\n\nACME cups adalah produk-produk cangkir khusus untuk berbagai variasi minuman kopi produksi New Zealand. Cangkir-cangkir ACME didesain langsung oleh Jeff Kennedy, yang merupakan seorang ahli kopi senior dan disebut-sebut sebagai “Godfather” dari New Zealand espresso. Ia juga penerima penghargaan Lifetime Achievement Award dari Specialty Coffee Association New Zealand dimana cangkir-cangkir kopi produksinya telah banyak dipakai di negara itu selama bertahun-tahun.\n\nSpesifikasi:\nMerek : ACME\nTipe : Demitasse Cups\nBahan : Ceramic\nDiameter  Luar : 6.5 cm, Tinggi : 5.5 cm\nKapasitas : 70ml\nWarna : Cokelat \nCocok untuk ACME - Saucer 11cm Brown\nMade in China', 200, 'Brown (Weka),Grey (Dolphin)', '', 10, 0, 0, '', '2021-11-01 07:59:01', ''),
(56, 13, '1635750156-1.jpg,1635750156-2.jpg', 'ACME - Latte Cup 280ml with Saucer', 220000, 'ACME LATTE CUP 280ML\n\nACME cups adalah produk-produk cangkir khusus untuk berbagai variasi minuman kopi produksi New Zealand. Cangkir-cangkir ACME didesain langsung oleh Jeff Kennedy, yang merupakan seorang ahli kopi senior dan disebut-sebut sebagai “Godfather” dari New Zealand espresso. Ia juga penerima penghargaan Lifetime Achievement Award dari Specialty Coffee Association New Zealand dimana cangkir-cangkir kopi produksinya telah banyak dipakai di negara itu selama bertahun-tahun.', 300, 'Blue (Kokako),Red (Rata)', '', 10, 0, 0, '', '2021-11-01 08:02:36', ''),
(57, 13, '1635750321-1.jpg', 'Artworks - Coffee is Brewed for Friend', 375000, 'Artworks\n\nMerupakan pajangan artworks dekorasi penuh estetis terbuat dari bahan kayu pilihan, guna menambah nuansa ramah dan nyaman sebagai penyejuk mata bagi pengunjung kedai kopi. Nikmatnya sajian kopi dengan interior menarik tentu kombinasi tepat dari sebuah kedai kopi nyaman. Bahkan sekarang ini, konsep interior secara tidak langsung menampilkan identitas dari sebuah kedai kopi, dan juga sebagai alternatif pemasaran ketika pengunjung mengabadikan momen di kedai kopi. Oleh karenanya, Halo Kopi merekomendasikan Artworks ini untuk menambah nuansa kedai kopi Anda menjadi lebih menarik.\n\nSpesifikasi:\nArtworks - Coffee is Brewed for Friend\nMaterial : Kayu\nUkuran (PxL) : 60 x 60 cm', 1000, '', '', 5, 0, 0, '', '2021-11-01 08:05:21', ''),
(58, 15, '1635750470-1.jpg', 'Braun - MultiQuick 3 Hand Blender (MQ 3035)', 1450000, 'Braun - MultiQuick 3 Hand Blender (MQ 3035)\nSpesifikasi :\nBrand : Braun\nKode : MQ 3035\nWattage : 700W\nBPA free food contact parts: Yes\nColour: White / blue\nBlending shaft material: Stainless steel\nPower cord length: 1.2 m\nKnife material: Stainless steel\nInclude : MQ 30 Chopper, Braun MQ 10 Whisk & Beaker\nDishwasher safe parts (refer to instructions): Yes\nGaransi : 1 Tahun', 1000, '', '', 5, 0, 4, 'flash sale', '2021-11-01 08:07:50', ''),
(59, 15, '1635750627-1.jpg,1635750627-2.jpg', 'Kenwood - Electric Oven (MO280)', 975000, 'Kenwood - Electric Oven (MO280)\n\nTidak ada yang secantik ini, memanggang adonan terlihat indah. Kenwood - electric oven merupakan alat dapur elegan yang digunakan untuk memanggang sajian masakan seperti roti, pizza, dan kreasi masakan favorit Anda lainnya. Dengan hanya memasukkannya ke nampan kemudian mengatur waktu yang diperlukan, panggangan sudah selesai. Kemudahan, kualitas dan juga desain yang stylish inilah Halo Kopi merekomendasikan penggunaan oven canggih ini untuk kebutuhan di dapur rumah Anda.\n\nSpesifikasi :\nBrand : Kenwood\nKode : MO280\nDaya : 1100W\nBody Material : Metal\nDimensi (PxLxT) : 36 x 30 x 20 cm\nWeight : 2.9 kg\nCapacity : 10L\nGaransi : 1 Tahun\nFeatures :\nCompact\nThermostat temperature\nCrumb tray\nIndicator light', 3000, '', '', 5, 0, 0, '', '2021-11-01 08:10:26', ''),
(60, 14, '1635750806-1.jpg,1635750806-2.jpg', 'Alat Seduh Manual Kopi Pour Over V02 (Set)', 1250000, 'Alat Seduh Manual Kopi Pour Over V02 (Set)\n\nSpesifikasi :\nMaterial case : EVA + 600D\nDimensi (PxLxT) : 56 x 28 x 16 cm\nTerdiri dari : \nScale\nManual grinder\nKettle\nCoffee dripper V02\nCoffee filter V02 - 100 pcs\nCoffee server 600ml\nMade in China', 1000, '', '', 5, 0, 3, 'flash sale', '2021-11-01 08:13:25', ''),
(61, 14, '1635750958-1.jpg', 'DeLonghi - Breakfast Set A', 6550000, 'DeLonghi - Breakfast Set A', 5000, '', '', 5, 0, 0, '', '2021-11-01 08:15:58', ''),
(62, 14, '1635751137-1.jpg,1635751137-2.jpg', 'Coffee Gifts - Cold Brew (Set 1)', 430000, 'Coffee Gifts - Cold Brew (Set 1)\n\nBerikan kejutan teramat bahagia pada para pecinta kopi di mana pun mereka berada. Coffee Gifts ini merupakan paket hadiah pilihan khusus untuk mereka yang menikmati tiap proses sajian kopi. Dikemas secara istimewa hanya untuk hari ini, momen terbaik untuk menghadiahkannya.', 1000, '', '', 5, 0, 0, '', '2021-11-01 08:18:56', ''),
(63, 14, '1635751267-1.jpg,1635751267-2.jpg', 'Coffee Gifts - Cold Brew (Set 2)', 540000, 'Coffee Gifts - Cold Brew (Set 2)\n\nBerikan kejutan teramat bahagia pada para pecinta kopi di mana pun mereka berada. Coffee Gifts ini merupakan paket hadiah pilihan khusus untuk mereka yang menikmati tiap proses sajian kopi. Dikemas secara istimewa hanya untuk hari ini, momen terbaik untuk menghadiahkannya.', 1000, '', '', 5, 0, 0, '', '2021-11-01 08:21:06', ''),
(64, 1, '1635751907-1.jpg,1635751907-2.jpg', 'Bali Kintamani 200g Kopi Arabica', 75000, 'Bali Kintamani 200g Kopi Arabica\n\nKopi yang berasal dari daerah Kintamani Bali nan sejuk ini memang memiliki keunikan cita rasa yang berbeda dari kopi di daerah lain di nusantara. Kopi Bali Kintamani memiliki cita rasa buah-buahan yang asam dan segar. Hal tersebut terjadi dikarenakan tanaman kopi di Bali Kintamani ditanam bersamaan dengan tanaman lain seperti aneka sayuran dan buah jeruk. Kopi jenis ini menggunakan sistem ‘tumpang sari’ bersama dengan jenis tanaman lain. Itu kenapa biji kopinya meresap rasa buah-buahan seperti jeruk. Selain memiliki cita rasa ‘buah’, kopi Bali Kintamani memiliki cita rasa yang lembut dan tidak berat. Keunikanya tersebut di dapat dari letak geografisnya yang unik juga. Bagi kamu yang menyukai cita rasa kopi berbeda, kopi Bali Kintamani bisa menjadi pilihan yang tepat. \n\nUntuk setiap bubuk kopi single origin yang dijual di Otten Coffee, semuanya digiling dengan memakai mesin penggiling Mahlkonig VTA 6S. Mesin ini memiliki conical burr yang terkenal dengan hasil gilingan yang presisi di setiap partikel gilingannya. Karenanya, kini para pelanggan setia Halo Kopi bisa memilih berbagai rentang pilihan level gilingan sesuai dengan kebutuhan masing-masing, mulai dari super fine hingga coarse.', 200, '', '', 10, 0, 0, '', '2021-11-01 08:31:47', ''),
(65, 1, '1635752088-1.jpg,1635752088-2.jpg', 'Aceh Gayo Atu Lintang 200g Kopi Arabica', 65000, 'Aceh Gayo Atu Lintang 200g Kopi Arabica\n\nSiapa yang tidak kenal dengan kopi Aceh Gayo yang sudah tersohor kenikmatannya? Kopi yang berasal dari daerah Tanah Gayo Aceh Tengah ini menjadi salah satu jenis kopi yang paling banyak dikonsumsi masyarakat maupun yang diekspor ke luar negeri. Kopi Gayo memiliki ciri unik dengan kekhasan aroma yang berbeda dengan kopi-kopi lain di Indonesia. Kopi Gayo menghasilkan sebagian besar jenis kopi Arabika terbaik. Cita rasa kopi Gayo sendiri terasa lebih pahit dengan tingkat keasaman rendah. Aromanya yang sangat tajam menjadikan jenis kopi ini disukai. Tak heran kopi ini menjadi penghasil kopi terbesar di Asia. Meskipun rasanya pahit, kopi Gayo memberi aroma gurih pada setiap tegukan.\n', 200, '', '', 10, 0, 0, '', '2021-11-01 08:34:47', ''),
(66, 1, '1635752252-1.jpg,1635752252-2.jpg', 'Bali Natural Process 200g Kopi Arabica', 95000, 'Bali Natural Process 200g Kopi Arabica\n\nUntuk setiap bubuk kopi single origin yang dijual di Halo Kopi semuanya digiling dengan memakai mesin penggiling Mahlkonig VTA 6S. Mesin ini memiliki conical burr yang terkenal dengan hasil gilingan yang presisi di setiap partikel gilingannya. Karenanya, kini para pelanggan setia Halo Kopi bisa memilih berbagai rentang pilihan level gilingan sesuai dengan kebutuhan masing-masing, mulai dari super fine hingga coarse.\n\nUntuk bahan rekomendasi:\nSuper fine: Turkish coffee\nFine: Espresso\nMedium fine: Mokapot\nMedium: Pour over (V60, Chemex, Kalita) syphon, Aeropress, Vietnam Drip\nMedium coarse: French press\nCoarse: Cold drip, cold brew', 200, '', '', 10, 0, 0, '', '2021-11-01 08:37:32', ''),
(67, 1, '1635752408-1.jpg,1635752408-2.jpg', 'Cappuccino Del Italiano - Kopi House Blend 500gr', 90000, 'Cappuccino Del Italiano - Kopi House Blend 500gr\n\nCappuccino Del Italiano, rayakan cita rasa klasik sajian kopi susu berkelas khas cappuccino Italia. Dioptimalkan dengan tingkatan sangrai yang sesuai medium dark, merupakan rahasia karakter rasa eksklusif dari biji kopoi ini. Pengalaman meneguk kopi susu nikmat layaknya sajian kopi susu yang umum di kedai-kedai kopi Italia.\n\nJika Anda penikmat kopi susu yang mencintai karakter kopi yang klasik dengan susu berbusa lembut yang nikmat, maka pilihan terbaik untuk seduhan kopi susu di rumah adalah racikan biji kopi Cappuccino Del Italiano. Perpaduan 100% robusta premium yang tumbuh dan berasal dari kebun kopi di Bali, Garut dan Flores Manggarai. Kondisi alam 3 daerah kebun kopi itulah yang menjadi rahasia dari karakter rasa yang tercipta, Chocolate, Hazelnut, Vanilla, Velvety.\n\nSecara teliti diracik untuk semakin menikmati pengalaman meneguk kopi susu khas Italia, klasik yang berkelas. Selalu sediakan Cappuccino del Italiano di rumah ataupun penuhi kebutuhan kopi di kedai kopi Anda. Eksplorasi rasio favorit Anda, dan rasakan bagaimana biji kopi ini mengubah pengalaman minum kopi susu Anda.\nPersiapkan alat seduh favorit Anda, baik espresso maker untuk pecinta espresso rumahan atau pun mesin espresso manual bagi para barista profesional.\n\nGiling biji kopi pada tingkat kehalusan sesuai yang Anda inginkan, takar rasio kopi untuk proses seduh espresso\nNikmati tiap detail persiapan dan proses ekstraksi dari racikan berkualitas premium Cappuccino del Italiano dan temukan resep espresso nikmat andalan Anda.\nPadukan dengan susu segar sesuai keinginan Anda, kemudian teguk nikmat kopi susu seduhan nikmat.', 500, '', '', 10, 0, 0, '', '2021-11-01 08:40:07', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `warna_i` text NOT NULL,
  `ukuran_i` text NOT NULL,
  `harga_i` int(11) NOT NULL,
  `diskon_i` int(11) NOT NULL,
  `kurir` varchar(10) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `layanan_kurir` text NOT NULL,
  `etd` text NOT NULL,
  `harga_ongkir` int(11) NOT NULL,
  `resi` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `tipe_progress` varchar(50) NOT NULL,
  `transaction` text NOT NULL,
  `type` text NOT NULL,
  `order_id` text NOT NULL,
  `fraud` text NOT NULL,
  `bank_manual` text NOT NULL,
  `bukti_transfer` text NOT NULL,
  `waktu_transaksi` text NOT NULL,
  `waktu_dikirim` text NOT NULL,
  `waktu_selesai` text NOT NULL,
  `waktu_dibatalkan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(99, 26, 14, 2, '', '', 87000, 0, 'jne', 0, 'OKE', '2-3', 30000, '12345523245', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 16:54:57', 'Selesai', '', '', '', '', 'BCA', '99-bukti-transfer.jpeg', '2021-07-25 16:55:10', '2021-07-25 17:04:10', '2021-07-25 17:12:37', ''),
(100, 25, 14, 1, 'MERAH', 'S', 75000, 10, 'jne', 0, 'OKE', '2-3', 15000, '12189624823', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 17:15:06', 'Selesai', '', '', '', '', 'BCA', '100-bukti-transfer.jpeg', '2021-07-25 17:15:17', '2021-07-25 17:15:47', '2021-07-25 17:15:52', ''),
(101, 27, 14, 2, '', '', 75000, 10, 'jne', 0, 'OKE', '2-3', 30000, '12456765432', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:09:36', 'Selesai', '', '', '', '', 'BCA', '101-bukti-transfer.png', '2021-07-25 22:09:46', '2021-07-25 22:11:24', '2021-07-25 22:14:15', ''),
(102, 29, 14, 1, '', '', 415000, 30, 'jne', 0, 'OKE', '2-3', 15000, '123456', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:38:31', 'Selesai', '', '', '', '', 'BCA', '102-bukti-transfer.png', '2021-07-25 22:38:44', '2021-09-09 12:26:33', '2021-09-09 12:26:48', ''),
(103, 20, 14, 1, '', '', 222000, 0, 'jne', 0, 'OKE', '2-3', 90000, '123', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 23:27:20', 'Selesai', '', '', '', '', 'BCA', '103-bukti-transfer.png', '2021-07-25 23:27:32', '2021-09-09 12:26:21', '2021-09-09 12:26:44', ''),
(105, 21, 14, 1, '', '', 15000000, 0, 'jne', 0, '', '', 0, '', '', '', '', '2021-09-09 12:44:57', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(106, 44, 14, 1, '', '', 95000, 0, 'jne', 0, 'OKE', '3-5', 47000, '', '15,Kalimantan Timur', '89,Bontang', 'JL S Parman', '2021-11-01 06:07:09', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(107, 49, 20, 1, '', '', 18000000, 3, 'jne', 0, '', '', 0, '', '', '', '', '2021-11-01 09:36:53', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(108, 49, 14, 1, '', '', 18000000, 3, 'jne', 0, '', '', 0, '', '', '', '', '2021-11-01 09:54:20', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(109, 67, 14, 1, '', '', 90000, 0, 'jne', 0, 'OKE', '3-5', 47000, '', '15,Kalimantan Timur', '89,Bontang', 'JL S Parman', '2021-11-01 10:31:34', 'Belum Bayar', '', '', '', '', '', '', '', '', '', ''),
(110, 67, 20, 1, '', '', 90000, 0, 'jne', 0, 'OKE', '3-5', 47000, '', '15,Kalimantan Timur', '89,Bontang', 'Jl s parman', '2021-11-01 10:46:30', 'Belum Bayar', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(1, 'Coffe', 'c4ffeb1b1a2a86581baada8a0c7b68fe.png'),
(2, 'Coffe Tools', '1f65b611811c6080d43ce7824c071c78.png'),
(3, 'Barista Tools', '21b80c8924c78bc8803f32b4a05ec667.png'),
(6, 'Coffe Machine', '0a88c1b074de61b95c3a11a8bf4054f7.png'),
(12, 'Grinders', '7dec276369b96ba78d8630cfd50af42a.png'),
(13, 'Roaster & Others', 'f564ffda4a5fd783aea7c7d886492c8f.png'),
(14, 'Bundling Set', 'a6633e641b281b9bb220480c928057b4.png'),
(15, 'Kitchen Appliances', '44a5fecfee6fcad9ed3b3643846df894.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga_k` int(15) NOT NULL,
  `diskon_k` int(11) NOT NULL,
  `warna_k` text NOT NULL,
  `ukuran_k` text NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_user`
--

CREATE TABLE `lokasi_user` (
  `idlokasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` text NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(9, 3, 'Jawa Timur', 11, 'Surabaya', 444, '', '', 'Jl banyu urip'),
(10, 14, 'Kalimantan Timur', 15, 'Bontang', 89, '', '', 'JL S Parman'),
(11, 20, 'Kalimantan Timur', 15, 'Bontang', 89, '', '', 'Jl s parman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BCA', '123456789', 'HALO KOPI'),
(2, 'BRI', '1876889286539', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `nama_notif` text NOT NULL,
  `deskripsi_notif` text NOT NULL,
  `waktu_notif` text NOT NULL,
  `status_notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `notification`
--

INSERT INTO `notification` (`id_notif`, `id_user`, `id_invoice`, `nama_notif`, `deskripsi_notif`, `waktu_notif`, `status_notif`) VALUES
(1, 3, 36, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-06-18 14:51:53', 'Read'),
(2, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-22 18:09:46', 'Read'),
(3, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 12:53:23', 'Read'),
(4, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:55', 'Read'),
(5, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(6, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(7, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(8, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 12:59:56', 'Read'),
(9, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:01:14', 'Read'),
(10, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:01:19', 'Read'),
(11, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:03:03', 'Read'),
(12, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:54', 'Read'),
(13, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:05:55', 'Read'),
(14, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:05:58', 'Read'),
(15, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:06:00', 'Read'),
(16, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:02', 'Read'),
(17, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:08:04', 'Read'),
(18, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:07', 'Read'),
(19, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:08:15', 'Read'),
(20, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:11:39', 'Read'),
(21, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:11:41', 'Read'),
(22, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:12:12', 'Read'),
(23, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:13:50', 'Read'),
(24, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:13:53', 'Read'),
(25, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:15:52', 'Read'),
(26, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:23', 'Read'),
(27, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:16:24', 'Read'),
(28, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:27', 'Read'),
(29, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:16:29', 'Read'),
(30, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:11', 'Read'),
(31, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-06-24 13:17:12', 'Read'),
(32, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:15', 'Read'),
(33, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-06-24 13:17:16', 'Read'),
(34, 3, 49, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 22:55:36', 'Read'),
(35, 3, 49, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-13 22:55:45', 'Read'),
(36, 3, 48, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-13 23:43:31', 'Read'),
(37, 3, 66, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:00:16', 'Read'),
(38, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:41:18', 'Read'),
(39, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:42:26', 'Read'),
(40, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:50', 'Read'),
(41, 3, 70, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-19 02:44:57', 'Read'),
(42, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 11:41:08', 'Read'),
(43, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 11:41:08', 'Read'),
(44, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:09:46', 'Read'),
(45, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:09:46', 'Read'),
(46, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:19:14', 'Read'),
(47, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:19:14', 'Read'),
(48, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-23 12:22:13', 'Read'),
(49, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-23 12:22:13', 'Read'),
(50, 3, 87, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:44:34', 'Read'),
(51, 3, 87, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:44:34', 'Read'),
(52, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 15:47:14', 'Read'),
(53, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 15:47:14', 'Read'),
(54, 3, 86, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:09:00', 'Read'),
(55, 3, 86, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:09:00', 'Read'),
(56, 3, 91, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:12:45', 'Read'),
(57, 3, 91, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:12:45', 'Read'),
(58, 3, 92, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:26:19', 'Read'),
(59, 3, 92, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:26:19', 'Read'),
(60, 3, 93, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:19', 'Read'),
(61, 3, 93, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:19', 'Read'),
(62, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:30:21', 'Read'),
(63, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:30:21', 'Read'),
(64, 3, 94, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:31:38', 'Read'),
(65, 3, 94, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:31:38', 'Read'),
(66, 3, 95, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:33:05', 'Read'),
(67, 3, 95, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:33:05', 'Read'),
(68, 3, 96, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:36:58', 'Read'),
(69, 3, 96, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:36:58', 'Read'),
(70, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:41:02', 'Read'),
(71, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:41:02', 'Read'),
(72, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:42:33', 'Read'),
(73, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:42:33', 'Read'),
(74, 3, 98, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:44:30', 'Read'),
(75, 3, 98, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:44:30', 'Read'),
(76, 3, 99, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 16:55:18', ''),
(77, 3, 99, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 16:55:18', ''),
(78, 3, 99, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:04:10', ''),
(79, 3, 99, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:12:37', ''),
(80, 3, 100, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 17:15:32', ''),
(81, 3, 100, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 17:15:32', ''),
(82, 3, 100, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 17:15:47', ''),
(83, 3, 100, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 17:15:52', ''),
(84, 3, 101, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 22:09:55', ''),
(85, 3, 101, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 22:09:55', ''),
(86, 3, 101, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-07-25 22:11:24', ''),
(87, 3, 101, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-07-25 22:14:15', ''),
(88, 3, 103, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-07-25 23:29:08', ''),
(89, 3, 103, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-07-25 23:29:08', ''),
(90, 14, 102, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2021-09-09 12:25:46', 'Read'),
(91, 14, 102, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2021-09-09 12:25:46', 'Read'),
(92, 14, 103, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:21', 'Read'),
(93, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:30', 'Read'),
(94, 14, 102, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:33', 'Read'),
(95, 14, 103, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:44', 'Read'),
(96, 14, 102, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:48', 'Read');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`idrating`, `id_invoice_rat`, `star_rat`, `deskripsi_rat`, `waktu_rat`) VALUES
(7, 35, 5, 'Barang nya bagus sekali', '2021-06-18 14:51:53'),
(8, 35, 5, '', '2021-06-18 14:51:53'),
(9, 35, 5, '', '2021-06-18 14:51:53'),
(10, 35, 3, '', '2021-06-18 14:51:53'),
(11, 103, 5, 'kerennn dan berkualitas', ''),
(12, 102, 4, 'kerennn dan berkualitas', ''),
(13, 101, 5, 'kerennn dan berkualitas', ''),
(14, 100, 5, 'kerennn dan berkualitas', ''),
(15, 99, 2, 'kegedean', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_apikey`
--

CREATE TABLE `setting_apikey` (
  `id_apikey` int(11) NOT NULL,
  `google_client_id` text NOT NULL,
  `google_client_secret` text NOT NULL,
  `midtrans_client_key` text NOT NULL,
  `midtrans_server_key` text NOT NULL,
  `rajaongkir_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '790743961937-r4dggoinbott1fr3lo2dfb6hu26pfq4c.apps.googleusercontent.com', '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', 'SB-Mid-client-2Um3YUABSlMSWTjS', 'SB-Mid-server-2w7zG-N563RzB-pgbCu6ziAf', '5173efd45a839016b39a9775a82c229e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_email`
--

CREATE TABLE `setting_email` (
  `id` int(11) NOT NULL,
  `email_notif` text NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `port_smtp` int(11) NOT NULL,
  `username_smtp` varchar(100) NOT NULL,
  `password_smtp` varchar(100) NOT NULL,
  `setfrom_smtp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@halokopi.com', 'mail.halokopi.com', 465, 'support@halokopi.com', 'PASSWORD EMAIL ANDA', 'Halo Kopi STORE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(1, 'Facebook', '<i class=\"ri-facebook-box-fill\"></i>', 'https://facebook.com/halokopi', ''),
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', 'https://instagram.com/halokopi', ''),
(3, 'Whatsapp', '<i class=\"ri-whatsapp-fill\"></i>', 'https://wa.me/628123456', ''),
(4, 'Twitter', '<i class=\"ri-twitter-fill\"></i>', 'https://twitter.com/halokopi', ''),
(5, 'YouTube', '<i class=\"ri-youtube-fill\"></i>', 'https://youtube.com/halokopi', ''),
(6, 'LinkedIn', '<i class=\"ri-linkedin-fill\"></i>', 'https://linkedin.com/halokopi', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'logo1.png', 'Halo Kopi Store', 'Pencarian..');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Jawa Timur', 'Malang', 11, 255);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', 'active'),
(2, 'Manual', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indeks untuk tabel `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indeks untuk tabel `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indeks untuk tabel `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indeks untuk tabel `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indeks untuk tabel `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indeks untuk tabel `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indeks untuk tabel `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indeks untuk tabel `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT untuk tabel `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
