-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 12:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

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
-- Table structure for table `akun`
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
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, '1631191185.png', 'User Biasa', 'user@gmail.com', '085381259307', '$2y$10$uDy0.tHRpB0alUAAwL.1XOT/f3Y6O4SfIZ28rnhyyRlkEgacqimPu', '2021-06-18 16:20:48', '', ''),
(15, '1631188751.png', 'Administrator', 'admin@gmail.com', '082377823390', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2021-07-11 01:18:30', '', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_promo`
--

INSERT INTO `banner_promo` (`idbanner`, `image`, `status`) VALUES
(22, '743a07a135739835dd71e195dbcc2e15.jpg', ''),
(23, 'ace11ebe998dbf07038d40b74967a3c0.png', ''),
(24, '69c8982faa69fb6b375fc52b8d98e971.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '1659110400');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
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
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(18, 1, '1623598275-1.jpg,1623598275-2.jpg', 'LED TV LG 32 Inch Digital 32LM550BPTA Garansi Resmi', 2000000, 'Product Name : 32LM550BPTA LED TV 32 Inch DIGITAL - TERBARU MODEL 2019 \nGaransi Resmi LG 1 Tahun\nBerat Unit : 11 Kg\n\nSpesifikasi:\n- LED TV Digital 32 Inch\n- Screen Resolution : 1366 x 768 HD Ready\n- USB : 1 ( Sudah bisa USB Movie )\n- HDMI : 2\n- RCA : Yes\n- Dynamic Color Enhancer \n- Resolution Upscaler\n- Virtual Surround \n- Clear Voice\n- 2.0 Channel/10 W\n- Quick Access', 11000, '', '', 10, 2, 0, '', '2021-06-13 17:31:14', ''),
(19, 1, '1623598969-1.jpg,1623598969-2.jpg', 'Sharp Rice Cooker/ Magic Comb 3in1 1.8L KSN18MGSL', 289000, 'Sharp Rice Cooker 1.8 Liter Silver - KSN18MGSL Kapasitasnya yang besar, yaitu 1.8 liter dapat membuat sampai hingga 7 porsi mangkuk nasi setiap hari. Sharp Rice Cooker 1.8 Liter Silver - KSN18MGSL juga terdapat aksesoris tambahan berupa alat pengukus, gelas ukur, dan sendok nasi.\n\nProduct Description\nSharp Rice Cooker 1.8 Liter Silver – KS N18MGSL, rice cooker Sharp dengan desainnya yang modern dan memukau membuat nuansa di dapur anda semakin lebih stylish. Anda pun dapat membuat kukusan kue serta menghangatkan makanan kembali dengan mudah.\n\nMechanical Type\nPenanak nasi dengan tipe panel mekanikal yang memudahkan pengguna saat memasak nasi.\n\nThick & Non-Sticking Inner Pot\nDengan panci tebal berukuran 1.0mm, tidak lengket dan sehat.\n\n3D Keep Warm\nFungsi penghangat yang berbeda dari rice cooker pada umumnya dengan penghangatan melalui 3 sisi yaitu penghangat atas, samping dan bawah.\n\nIndication Lights\nDilengkapi dengan 2 lampu indicator yang berguna untuk menunjukan proses memasak dan menghangatkan, kuning untuk memasak dan hijau untuk menghangatkan.\n\nProduct Information\nKapasitas : 1.8 Liter\n\nSpesifikasi\nNama Produk : Sharp Rice Cooker\nTipe : KS-N18MG-SL\nBahan Material : Plastik\nPanjang Kabel : 1 Meter\nKapasitas : 1.8 Liter\nDaya\nMemasak : 400 Watt\nMenghangatkan : 60 Watt\nTegangan : 220 Volt / 50 Hz\nDimensi (P x L x T) : 28.2 cm x 28.9 cm x 29 cm\nBerat : 4 Kg\nWarna : Silver\nAksesoris\nplastic steam tray\nrice paddle\nmeasuring cup\nrice scoop\nPengaturan Waktu : Tidak\nTersedia Pegangan Panci : Tidak', 5000, '', '', 25, 20, 12, 'flash sale', '2021-06-13 17:42:48', ''),
(20, 1, '1623599140-1.jpg', 'Cosmos Stand Fan 16 SDB (16 Inch)', 222000, 'Jenis: Stand Fan/Berdiri\nMaterial Kipas: Plastik\nDiameter: 16 Inch (40 cm)\nDaya: 46 Watt\nVoltase: 220 V ~ 50 Hz\nDimensi: 62 x 52 x 15 cm\nPengaturan Kecepatan: 3 Mode Kecepatan\nGaransi Resmi (Motor): 1 Tahun (Motor 5 Tahun)\nBarang Asli\nBersertifikat SNI\nMotor Handal\nSuara Halus\nDaya Listrik Rendah\nDesain Minimalis\nWarna Cantik\nBaling-baling Lebih Besar (16 Inch)\nSekring Pengaman Panas (Thermofuse)\nSistim Pelumasan Otomatis\nBaling-baling Super Spread: Angin menyebar lebih merata\nGaransi Resmi\n\nKipas Angin Cosmos memang terkenal kualitasnya yang sangat baik, apalagi dengan Cosmos 16-SDB ini. Tampil sangat menawan dengan warna putih-hijaunya. Kipas Angin Cosmos 16-SDB adalah tipe kipas angin berdiri dengan harga yang cukup terjangkau di pasaran. Kipas angin ini memiliki berbagai kelebihan dibandingkan dengan kipas angin lainnya. Diantaranya lebih tahan lama dan kinerjanya menggunakan daya listrik yang cukup kecil.\nKonsumsi daya kipas angin adalah 46 Watt. Kipas angin dengan ukuran 16 inch ini menawarkan 3 pilihan kecepatan yang dapat Anda putar sesuai keinginan Anda. Selain fitur di atas ada kelebihan kipas angin Cosmos di bandingkan dengan kipas lainnya, yaitu desainnya minimalis. Tentu saja kipas angin ini akan mempercantik ruangan Anda.', 6000, '', '', 100, 10, 0, '', '2021-06-13 17:45:40', ''),
(21, 2, '1623601193-1.jpg,1623601193-2.jpeg', 'ASUS ROG Strix G512LI-I565B6T', 15000000, 'Display : 15.6\"FHD(1920 x 1080) 3MS 144Hz Value IPS-level 250nits\nProcessor : Intel® Core i5-10300H Processor (8M Cache, up to 4.50 GHz)\nMemory : 8GB DDR4-3200 MHz\nStorage : 512GB SSD\nGraphics : NVIDIA GeForce GTX1650Ti 4GB GDDR6\nOperating System : Windows 10 HOME\nAudio : ASUS Technology\nNetworking : Wi-Fi  802.11ax+Bluetooth 5.0\nSlots/Interface :\n3 x USB3.2 Gen 1 Type-A\n1 X USB3.2 Gen2 Type-C (support Display Port)\n1x LAN RJ-45 jack\n1 x HDMI 2.0b\n1 x Audio combo jack: Mic-in and Head phone\nBattery : 48WHrs, 3S1P, 3-cell Li-ion\nSystem Dimensions : 360 x 275 x 21~25.8\nWeight: 2.39 kg', 3000, '', '', 25, 8, 0, '', '2021-06-13 18:19:52', ''),
(22, 2, '1623601365-1.jpg,1623601365-2.jpg,1623601365-3.jpg', 'Macbook Pro M1 Chip 512GB MYD92 MYDC2 RESMI IBOX', 22000000, '- Mohon Teliti sebelum membeli, kesalahan dalam pembelian bukan tanggung jawab Merchant\n\n- Produk yang sudah dibeli TIDAK BISA DITUKAR apalagi DIKEMBALIKAN\n\n- SEBELUM MEMBUKA segel/kemasan,PASTIKAN PRODUK yang diterima sudah SESUAI PESANAN (KOMPLAIN SETELAH BUKA SEGEL TIDAK KAMI LAYANI)\n\n- DENGAN MEMBELI ANDA SETUJU DENGAN SYARAT DAN KETENTUAN SERTA MEMBEBASKAN PENJUAL DARI SEGALA TUNTUTAN GANTI RUGI\n\n \n\n• Key Features\n\n•  Apple M1 8-Core CPU\n\n•  8GB Unified RAM | 512GB SSD\n\n•  13.3\" 2560 x 1600 IPS Retina Display\n\n•  8-Core GPU | 16-Core Neural Engine\n\n•  P3 Color Gamut | True Tone Technology\n\n•  Wi-Fi 6 (802.11ax) | Bluetooth 5.0\n\n•  Touch Bar | Touch ID Sensor\n\n•  2 x Thunderbolt 3 / USB4 Ports\n\n•  Magic Keyboard | Force Touch Trackpad\n\n•  macOS', 1500, '', '', 10, 3, 0, '', '2021-06-13 18:22:44', ''),
(23, 3, '1623601647-1.jpg,1623601647-2.jpg,1623601647-3.jpg', 'Apple iPhone 12 Smartphone [128GB]', 13500000, 'OS :iOS 14\nChip :A14 Bionic chip with next-generation Neural Engine\nDisplay :6.1-inch Super Retina XDR display with True Tone\nCapacity :64GB, 128GB, 256GB\nHeight :5.78 inches (146.7 mm)\nWidth :2.82 inches (71.5 mm)\nDepth :0.29 inch (7.4 mm)\nWeight :5.78 ounces (164 grams)\nCamera & Video :Dual 12MP cameras with Portrait mode, Depth Control, Portrait Lighting, Smart HDR, and 4K Dolby Vision HDR video up to 30 fps\nFront Camera :12MP TrueDepth front camera with Portrait mode, Depth Control, Portrait Lighting, and Smart HDR 3\nPower & Battery :\nVideo playback: Up to 17 hours\nVideo playback (streamed): Up to 11 hours\nAudio playback: Up to 65 hours\nFast-charge capable: Up to 50% charge in around 30 minutes with 20W adapter or higher Splash, Water, and Dust Resistant :All-glass and surgical-grade stainless steel design, water and dust resistant (rated IP68)', 600, '', '', 5, 2, 10, 'flash sale', '2021-06-13 18:27:27', ''),
(24, 3, '1623601820-1.jpg,1623601820-2.jpg,1623601820-3.jpeg', 'SAMSUNG GALAXY S21 ULTRA (RAM 12/ 256GB) - Garansi Resmi', 16500000, '• 1. Galaxy S21 Ultra 5G’s screen size is 6.8\" in the full rectangle and 6.6\" with accounting for the rounded corners; actual viewable area is less due to the rounded corners and camera hole.\n• 2. 100X Space Zoom includes 10x Optic Zoom and goes up to 100x Super Resolution Zoom. Super Resolution Zoom includes digital zoom\n• 4. Typical value tested under third-party laboratory condition.4855mAh', 600, '', '', 20, 1, 0, '', '2021-06-13 18:30:20', ''),
(25, 4, '1623602033-1.jpg', 'pakaian pria lengan panjang keren - atasan baju jeans tebal - kemeja jeans lengan panjang - baju pesta kondangan laki laki cowok murah kekinian', 137000, 'HAI COSTUMER\n\nORDER\n\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\n\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\n\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\n\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\n\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\n\nMOHON PENGERTIANNYA YA\n\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\n\nTERIMA KASIH', 400, 'MERAH,HIJAU,BIRU', 'S===75000,M===75000,L===80000,XL===85000', 100, 58, 10, 'flash sale', '2021-06-13 18:33:53', ''),
(26, 4, '1623602319-1.jpg', 'New [Hem dave silver OT]pakaian pria kemeja slim Terbaik', 87000, 'bahan katun stretch, ukuran all size\nlebar baju 50cm +-2cm (pengukuran dari lebar dari ujung jahitan ketiak ke ketiak)\npanjang 68cm+-1cm (pengukuran dari kerah bawah ke ujung bagian bawah)\n\n\n[Hem dave silver OT]pakaian pria kemeja slim', 210, '', '', 150, 83, 0, '', '2021-06-13 18:38:38', ''),
(27, 5, '1623602763-1.jpg', 'Joddie Pant Pink Pakaian Wanita Celana Blus Modern Atasan Hijab Kekinian Casual Pakaian Modis Baju Kerja Simple Trendy Baju Model Terbaru', 75000, 'Joddie Pank Pink Baju Wanita Gamis Baju Terusan Panjang Baju Kerja Gaun Pesta Murah Remaja Baju Muslim Terbaru\n\nGamis Wanita , Gamis Casual , Dress Wanita , Gamis Remaja , Gamis Syari , Gamis Murah , Gamis , Gaun Pesta , Daster , Gamis Wanita Terbaru , Baju Terusan , Dress Wanita XL , Baju Kerja , Dress Pesta , Baju Gamis Santai , Baju Hijab Lucu , Gaun Pesta Wanita Muslim , Baju Wanita , Gamis lucu , Baju Panjang , Gamis Trendy , Baju Muslim , Gaun Pesta , Gaun Pesta , Dress Lucu , Baju Muslim Terbaru 2018 ,Gamis Baju Muslim , Dress Murah , Dress SyaI , Dress Pesta , Baju Lengan Panjang.\n\nCode : Joddie Pant Pink\nPrice : 75000\nMaterial : Babyterry\nSize : All Size Fit to L\n\nTerima Kasih Atas Reviewnya, Mohon Beri BINTANG 5 nya Dan Ikuti Toko Kami, Silahkan Berkunjung Kembali Ke Toko Kami Dan Di Cek Terus Yah Toko Kami Pasti Update Produk Terbaru Setiap Harinya', 350, '', '', 50, 42, 10, 'flash sale', '2021-06-13 18:46:03', ''),
(28, 5, '1623603982-1.jpg', 'BLOUSE MEOZA', 139000, 'BAHAN MOSCREPE LD 100', 210, '', '', 20, 3, 0, '', '2021-06-13 19:06:22', ''),
(29, 6, '1623604078-1.jpg', 'Sepatu Nike Airmax Air Max 720 Black White Premium Original BNIB', 415000, 'Hot Item Grade Premium Original (BNIB)\nNike Air Max 720 Black White\n\nGrade / Kualitas: Premium Original (BNIB)\nSize: 39, 40, 41, 42, 43, 44, 45\nSudah Termasuk Box. Brand New In Box (BNIB)\n\nSebelum order sebaiknya tanyakan stock terlebih dahulu kepada seller untuk menghindari batal order karena stock bisa berubah sewaktu waktu.\nSaat order cantumkan size untuk menghindari salah kirim.', 400, '', '', 10, 2, 30, 'flash sale', '2021-06-13 19:07:57', ''),
(30, 6, '1623604175-1.jpg', 'Sepatu Pria - Sepatu Sneakers - Sepatu Adidas - Sepatu Casual - Sepatu Wanita - Sepatu Sekolah - RUNNING Trendy Adidas ORIGINAL', 450000, '*ADIDAS EQT BAIT EQT EQUIPMENT EQT RUNNING SEPATU PRIA WANITA SNEAKERS RUNNING JOGGING SPORT TRENDY*\n\n\"REAL PICTURE\" ya sista ^_^\n\nBahan Upper Serat Sintetis Pabrikan,\nBahan Sol Polyvinyl chloride.\n\nHitam Garis Hitam SIZE 39 hanya sampai 44\nHitam Garis Putih SIZE 39 hanya sampai 44\nAbuGARIS SIZE Toska/37 hanya sampai 40\nAbuLst SIZE Orange/39 hanya sampai 44\nAbuGARISHitam SIZE 39 hanya sampai 44\nPinkGARISPink SIZE 37 hanya sampai 40\nHitamGARISPink SIZE 37 hanya sampai 40\nMaron SIZE 39 hanya sampai 44\n---------------------------------------\nSIZE CHART\n36 : 23cm\n37 : 23.5cm\n38 : 24cm\n39 : 24.5cm\n40 : 25cm\n41 : 25.5cm\n42 : 26cm\n43 : 26.5cm\n44 : 27cm\n\nSepatu Adidas ini tidak hanya untuk pria saja , tetapi kaum hawa banyak yang menggunakannya karena bahannya bagus dan awet, selain itu nyaman ketika dipakai kemana saja, Sepatu ini diprediksi bakal menjadi tren di Masa akan Datang loh sistaaa.\nHal ini karena Sepatu ini nyaman dipakai ke berbagai acara.\nAyoo.. Jangan sampai kehabisan sisata.^_^\n\nKuat namun tetap Ringan dan Nyaman\nMembuat penampilan anda yg Sporty dan elegan menjadi makin Stylish, fashionable dan dinamis. Sangat cocok untuk dipakai Olahraga Indoor dan Outdoor.\n\nDengan pilihan warna unggulan dan menjadi pilihan utama pengguna ADIDAS.\n\n*Order cantumkan warna dan ukuran di kolom keterangan yaa....\nJika tidak ada kami kirim random, No. complain !!!\n\nBarang Baru + Dus Box\n\nMohon tanyakan stok terlebih dahulu.\n\nKepuasan Pelanggan Adalah Yang Utama Bagi kami....\nHappy Shoping...^_^', 405, '', '', 50, 11, 0, '', '2021-06-13 19:09:35', ''),
(31, 7, '1623604397-1.jpg', 'Vj bags-new tas ransel futura TAS RANSEL SEKOLAH SMP,SMU/TAS RANSEL REMAJA/TAS RANSEL TERBARU/TAS RANSEL MODEL KOREA/BACKPACK/TAS RANSEL SEKOLAH', 35000, 'Matt Kanvas d300\nModel ransel & backpack\nSize 38cm x 33cm x 14cm\nKondisi 100% Baru\nBerat 460 Gram (1 Kg Masuk 2 Pcs Tas)\nProduk Dapat Dibayar Ditempat (COD)\nProduk Lokal / Handmade\n\nPembayaran Hanya Melalui Transfer Ke Rek Lazada (Bisa Juga Bayar Di Indomaret, Alfamart Atau Outlet Terdekat)\nBiasany Ada Perubahan 1% Warna Disebabkan Faktor Pencahayaan Saat Pengambilan Gambar & Pada Resleting\nJika Anda Mengalami Masalah Silakan Chat Kami Melalui Fitur Chat', 600, '', '', 100, 38, 0, '', '2021-06-13 19:13:16', ''),
(32, 8, '1623683209-1.jpg', 'HELM BOGO JPN RETRO JPN (ARC) KACA DATAR HITAM DOFF JPN ARC', 250000, 'Helm Retro Tersedia ukuran M , L dan XL \n-- M (56)\n-- L (57-58) \n-- XL (59-60)\n\nSaran Pengambilan Ukuran\n-- M ( Untuk Remaja SMP/ Tidak Ber Hijab )\n-- L ( untuk cewek dan cowok Dewasa) \n-- XL ( untuk cewek berhijab dan cowok gemuk )\n\n- Helm Retro Bogo merk JPN Original\n- Kaca Cembung Bogo Original ( Hitam dan Bening ) \n- kaca Flat injak Original ( Hitam, Bening, Silver dan Pelangi ) \n- Ukuran M , L dan XL\n- Busa Tebal empuk nyaman di kepala\n- Busa bisa di Lepas\n- Standard SNI\n\n--- Packing Menggunakan Bubble Wrap Rangkap\n--- Packing di kenakan berat Hanya 1kg', 1000, 'MERAH,KUNING', 'M===250000,L===280000', 11, 5, 0, '', '2021-06-13 19:14:42', ''),
(42, 5, '1626966263-1.jpeg', 'TEST', 123, 'TEST', 1000, 'HIJAU,MERAH', 'L===2000,XL===1500', 12, 0, 0, '', '2021-07-22 22:04:22', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
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
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(99, 26, 14, 2, '', '', 87000, 0, 'jne', 0, 'OKE', '2-3', 30000, '12345523245', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 16:54:57', 'Selesai', '', '', '', '', 'BCA', '99-bukti-transfer.jpeg', '2021-07-25 16:55:10', '2021-07-25 17:04:10', '2021-07-25 17:12:37', ''),
(100, 25, 14, 1, 'MERAH', 'S', 75000, 10, 'jne', 0, 'OKE', '2-3', 15000, '12189624823', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 17:15:06', 'Selesai', '', '', '', '', 'BCA', '100-bukti-transfer.jpeg', '2021-07-25 17:15:17', '2021-07-25 17:15:47', '2021-07-25 17:15:52', ''),
(101, 27, 14, 2, '', '', 75000, 10, 'jne', 0, 'OKE', '2-3', 30000, '12456765432', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:09:36', 'Selesai', '', '', '', '', 'BCA', '101-bukti-transfer.png', '2021-07-25 22:09:46', '2021-07-25 22:11:24', '2021-07-25 22:14:15', ''),
(102, 29, 14, 1, '', '', 415000, 30, 'jne', 0, 'OKE', '2-3', 15000, '123456', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:38:31', 'Selesai', '', '', '', '', 'BCA', '102-bukti-transfer.png', '2021-07-25 22:38:44', '2021-09-09 12:26:33', '2021-09-09 12:26:48', ''),
(103, 20, 14, 1, '', '', 222000, 0, 'jne', 0, 'OKE', '2-3', 90000, '123', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 23:27:20', 'Selesai', '', '', '', '', 'BCA', '103-bukti-transfer.png', '2021-07-25 23:27:32', '2021-09-09 12:26:21', '2021-09-09 12:26:44', ''),
(105, 21, 14, 1, '', '', 15000000, 0, 'jne', 0, '', '', 0, '', '', '', '', '2021-09-09 12:44:57', 'Belum Bayar', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(1, 'Elektronik', 'elektronik.svg'),
(2, 'Komputer', 'komputer.svg'),
(3, 'Handphone', 'handphone.svg'),
(4, 'Pakaian Pria', 'pakaian-pria.svg'),
(5, 'Pakaian Wanita', 'pakaian-wanita.svg'),
(6, 'Sepatu', 'sepatu.svg'),
(7, 'Tas', 'tas.svg'),
(8, 'Otomotif', 'otomotif.svg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
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
-- Table structure for table `lokasi_user`
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
-- Dumping data for table `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(9, 3, 'Jawa Timur', 11, 'Surabaya', 444, '', '', 'Jl banyu urip');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BCA', '123456789', 'MC PROJECT'),
(2, 'BRI', '1876889286539', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
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
-- Dumping data for table `notification`
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
(93, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:30', ''),
(94, 14, 102, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2021-09-09 12:26:33', 'Read'),
(95, 14, 103, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:44', 'Read'),
(96, 14, 102, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2021-09-09 12:26:48', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
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
-- Table structure for table `setting_apikey`
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
-- Dumping data for table `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '667755539556-t91a5rigvs8sjn8ov5ob449uofahvjdf.apps.googleusercontent.com', 'egHGBI5BcztK-VbZNeCEHHTW', 'SB-Mid-client-rwRR5kz4E-kNnJs2', 'SB-Mid-server-iU7JbDaoVDjBJu4N-LLH0xW8', '1cb6ca038ddb281f174dbc4264474df0');

-- --------------------------------------------------------

--
-- Table structure for table `setting_email`
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
-- Dumping data for table `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@401xd.com', 'mail.401xd.com', 465, 'support@401xd.com', 'PASSWORD EMAIL ANDA', 'SENJA STORE');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(1, 'Facebook', '<i class=\"ri-facebook-box-fill\"></i>', 'https://facebook.com/mycodingxd', ''),
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', 'https://instagram.com/mycodingxd', ''),
(3, 'Whatsapp', '<i class=\"ri-whatsapp-fill\"></i>', 'https://wa.me/6282377823390', ''),
(4, 'Twitter', '<i class=\"ri-twitter-fill\"></i>', 'https://twitter.com/mycodingxd', ''),
(5, 'YouTube', '<i class=\"ri-youtube-fill\"></i>', 'https://youtube.com/mycodingxd', ''),
(6, 'LinkedIn', '<i class=\"ri-linkedin-fill\"></i>', 'https://linkedin.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'logo.png', 'Senja Teduh Store', 'Pencarian..');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Bali', 'Denpasar', 1, 114);

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', ''),
(2, 'Manual', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indexes for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indexes for table `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indexes for table `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
