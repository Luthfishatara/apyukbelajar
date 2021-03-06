-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 10:50 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Sandi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Email`, `Sandi`) VALUES
(1, 'luthfi.shatara01@gmail.com', 'luthfi');

-- --------------------------------------------------------

--
-- Table structure for table `akun_guru`
--

CREATE TABLE `akun_guru` (
  `id` int(100) NOT NULL,
  `Nama` text NOT NULL,
  `Username` varchar(90) NOT NULL,
  `Email` text NOT NULL,
  `Alamat` text NOT NULL,
  `Gender` text NOT NULL,
  `Telepon` int(13) NOT NULL,
  `Sandi` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `Nama_Bank` text NOT NULL,
  `Nama_akun_bank` text NOT NULL,
  `Nomor_rekening` int(200) NOT NULL,
  `Nomor_ktp` int(100) NOT NULL,
  `Image_ktp` text NOT NULL,
  `Nomor_npwp` int(50) NOT NULL,
  `Image_npwp` text NOT NULL,
  `pendidikan` text NOT NULL,
  `nama_sekolah` text NOT NULL,
  `Image_ijazah` text NOT NULL,
  `Biografi_ustad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_guru`
--

INSERT INTO `akun_guru` (`id`, `Nama`, `Username`, `Email`, `Alamat`, `Gender`, `Telepon`, `Sandi`, `tgl_lahir`, `Nama_Bank`, `Nama_akun_bank`, `Nomor_rekening`, `Nomor_ktp`, `Image_ktp`, `Nomor_npwp`, `Image_npwp`, `pendidikan`, `nama_sekolah`, `Image_ijazah`, `Biografi_ustad`) VALUES
(0, 'Feri Firmansyah', 'FeriFirmansyah', 'feri@gmail.com', 'Jl.gadogsisi, Sukajadi, Tamansari, bogor, Jawa Barat', '', 8167348, '123', '0000-00-00', '', '', 0, 0, '', 0, '', 'S1', '', '', ''),
(1, 'Dzakwan Nibras Prayoga', 'zigotlah', 'alien@gmail.com', 'mars, jl. area 51 no.4', 'laki-laki', 821567844, 'syuhudzigot', '2019-08-14', 'Bri', 'Ibas alien', 333444555, 845894527, 'https://indocropcircles.files.wordpress.com/2017/03/e-ktp-header-01.png', 50478409, 'https://i0.wp.com/www.sadarpajak.com/wp-content/uploads/2018/07/npwp.jpg?fit=600%2C401&ssl=1', 'S1', 'Univ. Alien Indonesia', 'https://indonesia.go.id/assets/img/content_image/1567407118_Ijazah.jpg', 'halo saya alien dari indonesia'),
(2, 'Supriyanto Muhammad Zidane', 'Ustad Supriyanto', 'supriyanto6543@gmail.com', 'Jl. Gadog Sisi No.Desa, Sukajadi, Kec. Tamansari, Bogor, Jawa Barat 16610', 'laki laki', 0, 'supriyantoganteng', '1995-10-10', 'BRI', 'supriyanto', 2119, 89183884, 'http://sekolahimpian.com/Home/assets/images/qbs-logo-325x325.jpg', 18941985, 'http://sekolahimpian.com/Home/assets/images/qbs-logo-325x325.jpg', 'S1', 'Institute Pertanian Bogor', 'http://sekolahimpian.com/Home/assets/images/qbs-logo-325x325.jpg', 'Assalamualaikum nama saya  ustad supriyanto, saya mengajar it'),
(3, '', '', '', '', '', 0, 'Laki Laki', '0000-00-00', '', '', 0, 0, '', 0, '', 'D1', '', '', ''),
(4, 'Ustad Rifqi', 'Muhammad Rifqi Naufal', 'Muhammad Rifqi Naufal', '089631574065', 'toughrifqi1', 0, 'Laki Laki', '0000-00-00', 'BRI', 'RifqiGoku', 8963154, 2147483647, '', 2147483647, '', 'S2', 'Institut teknologi Bandung', '', 'hahahhdhfbbcbanqjiwlr'),
(5, '', '', 'Tanggal Lahir', '', '', 0, 'Laki Laki', '0000-00-00', '', '', 0, 0, '', 0, '', 'D1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `akun_gurus`
--

CREATE TABLE `akun_gurus` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` int(20) NOT NULL,
  `sandi` varchar(100) NOT NULL,
  `pendidikan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_gurus`
--

INSERT INTO `akun_gurus` (`id`, `nama`, `username`, `email`, `alamat`, `telepon`, `sandi`, `pendidikan`) VALUES
(1, 'Feri Firmansyah', 'FeriFirmansyah', 'feri@gmail.com', 'Jl.gadogsisi, Sukajadi, Tamansari, bogor, Jawa Barat', 8167348, '123', 'S1'),
(2, 'Supriyanto', 'Supriyanto6543', 'supriyanto@gmail.com', 'Jl.gadogsisi, Sukajadi, Tamansari, bogor, Jawa Barat', 816734833, '1234', 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(10) NOT NULL,
  `title_berita` text NOT NULL,
  `subtitle_berita` text NOT NULL,
  `image_berita` text NOT NULL,
  `isi_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`berita_id`, `title_berita`, `subtitle_berita`, `image_berita`, `isi_berita`) VALUES
(1, 'Celana cingkrang dan cadar bagi ASN: \'Jika harus pilih antara PNS dan cadar, saya pilih cadar\'', 'Sejumlah Aparatur Sipil Negara (ASN) di Aceh dan Banten mengatakan tidak setuju dengan wacana pelarangan celana cingkrang dan cadar di lingkungan kantor pemerintah, seperti diusulkan Menteri Agama Fachrul Razi.', 'https://ichef.bbci.co.uk/news/660/cpsprodpb/978D/production/_109479783_whatsappimage2019-11-01at09.44.20.jpg', '\"Jika harus memilih antara [menjadi] Pegawai Negeri Sipil (PNS) dan cadar, maka saya memilih menggunakan cadar,\" kata Meiriana, seorang ASN di Aceh kepada Hidayatullah, yang melaporkan untuk BBC News Indonesia, hari Jumat (01/11).\r\n\r\n\"Ini merupakan sunah Rasul, dan saya sudah menggunakan cadar selama lebih dari 10 tahun,\" tambah Meiriana\r\n\r\nStaf Dinas Kependudukan dan Catatan Sipil Kota Banda Aceh ini mengatakan penggunaan pakaian seperti cadar dan celana cingkrang merupakan pilihan dan dipakai untuk memenuhi ajaran agama.\r\n\r\nIa mengatakan \"tidak ada hubungan antara pakaian dan keamanan nasional\".\r\n\r\n\"Masalah radikalisme adalah masalah ideologi, bukan masalah cadar atau celana cingkrang. Jadi saya mengecam pernyataan menteri agama,\" kata Meiriana.\r\n\r\nPolwan terpapar paham radikal indikasi \'bahaya luar biasa\', pemerintah diminta lakukan audit ideologi\r\nBom Kartasura: Pelaku penjual gorengan \'lone wolf\' tak berjejaring dengan kelompok teroris tapi salah menangkap ajaran agama\r\nRepatriasi WNI eks-ISIS : Pemerintah belum ambil keputusan, BNPT setuju eks-kombatan diadili di Suriah\r\nMarzuki, ASN di Dinas Satpol Pamong Praja dan Wilayatul Hisbah (WH) -- lembaga yang mengawasi pelaksanaan syariat Islam -- Provinsi Aceh, mengatakan tidak ada kaitan antara celana cingkrang dan radikalisme atau keamanan nasional.\r\n\r\nIni semata-mata, katanya, karena sunah Rasul dan dianjurkan oleh agama.\r\n\r\n\"Orang-orang radikal itu yang bermasalah adalah ideologinya bukan pakaiannya. Menggunakan celana cingkrang memudahkan kita menjaga pakaian dari najis,\" kata Marzuki, ASN yang menggunakan celana cingkrang.\r\n\r\nWakil Ketua Majelis Permusyawaratan Ulama Aceh, Faisal Ali, mengatakan hukum dibuat dari rakyat dan untuk rakyat, jadi segala sesuatu butuh diteliti dan diskusi yang baik, sebab celana cingkrang dan penggunaan cadar tersebut tidak ada urusan dengan keamanan nasional.\r\n\r\n\"Dalam sudut pandang apa pun, tidak ada hubungan antara pakaian dan keamanan sosial, jadi sebelum melemparkan isu ke publik, lebih baik dibicarakan terlebih dahulu dan diteliti,\" kata Faisal Ali.\r\n\r\nPemerintah di Kabupaten Aceh Besar menilai jika larangan cadar dan celana cingkrang resmi menjadi peraturan, maka \"larangan tersebut tidak layak dipatuhi, karena pakaian adalah ranah personal\".'),
(2, 'Mengharukan, Inilah Unggahan Terakhir Pembalap Indonesia, Afridza Munandar, Sebelum Berpulang', '\r\nBOLASPORT.COM - Berita duka datang dari Sirkuit Sepang, Malaysia ketika salah satu pembalap masa depan Indonesia, Afridza Munandar, dikabarkan meninggal dunia.', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2019/11/02/2287831660.png', 'Afridza sedianya terdaftar sebagai salah satu kontestan yang berlaga pada ajang Idemitsu Asia Talent Cup 2019 di Sirkuit Sepang Sabtu (2/11/2019) hari ini.\r\n\r\nNahas, pembalap muda tanah air tersebut harus mengalami insiden parah saat sedang melakoni Race 1.\r\n\r\nMotor yang dikendarainya hilang keseimbangan saat melaju di tikungan 10 sehingga membuatnya terjatuh di lintasan.\r\n\r\nPembalap berusia 20 tahun itu pun sempat mendapat perawatan medis di sisi lintasan sebelum akhirnya dibawa ke Rumah Sakit Kuala Lumpur dengan helikopter.\r\n\r\n\r\n\r\nSebagai buntut dari insiden tersebut, sesi balapan yang digelar hari ini pun dibatalkan.\r\n\r\nMelalui unggahannya di akun Twitter, pihak MotoGP pun memberikan pernyataan resmi bahwa Afridza menghembuskan napas terakhir di rumah sakit.\r\n\r\nBerpulangnya Afridza meninggalkan duka yang mendalam bagi dunia balap motor pada umumnya dan masyarakat Indonesia pada khususnya.'),
(3, 'Mengenal Radang Otak, Penyakit yang Sebabkan Alfin Lestaluhu Meninggal\r\n', 'KOMPAS.com - Pemain Timnas U-16, Alfin Farhan Lestaluhu, meninggal dunia saat sedang menjalani perawatan di Rumah Sakit Harapan Kita, Jakarta, Kamis (31/10/2019) malam, sekitar pukul 22.00 WIB.\r\n', 'https://asset.kompas.com/crops/y5OhADuOFRk1SbboXA9qOjCSm88=/0x0:588x392/750x500/data/photo/2019/11/01/5dbb3b06cb19b.png', 'Mengutip laporan Kompas.com, Jumat (1/11/2019), Ketua Asprov PSSI Maluku Sofyan Lestaluhu mengungkapkan, sebelum dirawat di Rumah Sakit Harapan Kita, Alfin sebelumnya menjalani perawatan di Rumah Sakit Royal Progres selama lebih kurang lima hari. Menurut Sofyan, dari hasil diagnosa dokter, Alfin terserang infeksi radang otak. Penyakit itulah yang kemudian menyebabkan Alfin meninggal dunia. Lalu, apa itu penyakit radang otak? Radang otak atau Ensefalitis disebabkan oleh infeksi yang menyerang otak ( ensefalitis infeksi) atau melalui sistem kekebalan yang menyerang otak. Siapa pun pada usia berapa pun dapat terserang ensefalitis. Dalam kasus yang jarang terjadi dapat disebabkan oleh bakteri atau bahkan jamur. Ada dua jenis utama ensefalitis, yakni primer dan sekunder. Ensefalitis primer terjadi ketika virus menginfeksi otak dan sumsum tulang belakang secara langsung. Ensefalitis sekunder terjadi ketika infeksi dimulai di tempat lain di tubuh dan kemudian menyebar ke otak. Ensefalitis adalah penyakit langka namun serius yang dapat mengancam jiwa. Baca juga: Imam Nahrawi Jadi Tersangka, Mantan Kapten Timnas: Sangat Disayangkan Gejala Ensefalitis yang disebabkan oleh infeksi, seperti yang terjadi pada Alfin biasanya diawali dengan gejala seperti flu atau sakit kepala. Dalam tahap serius, penyakit ini bisa menyebabkan perubahan tingkat kesadaran. Mulai dari kebingungan ringan atau kantuk hingga kehilangan kesadaran dan koma. Pasien juga bisa mengalami kenaikan suhu tubuh yang tinggi, kejang, keengganan terhadap cahaya terang, ketidakmampuan untuk berbicara atau mengontrol gerakan, perubahan sensorik, kekakuan leher atau perilaku yang tidak seperti biasanya. Jika disebabkan oleh autoimun, penderita bisa mengalami perubahan kepribadian atau perilaku, psikosis, gangguan gerakan, kejang, halusinasi, kehilangan ingatan atau gangguan tidur. Perawatan Untuk mengatasi penyakit ini, dokter biasanya memberikan obat anti-virus agar dapat membantu mengobati herpes ensefalitis. Namun, cara ini tidak efektif dalam mengobati bentuk lain dari ensefalitis. Sebagai gantinya, perawatan sering berfokus pada menghilangkan gejala, seperti: Istirahat total Konsumsi penghilang rasa sakit Pemberian kortikosteroid untuk Mengurangi peradangan otak Ventilasi mekanis untuk membantu pernapasan Antikonvulsan untuk mencegah atau menghentikan kejang Obat penenang untuk gelisah, agresivitas, dan lekas marah Pencegahan Ensefalitis tidak selalu dapat dicegah, tetapi kita dapat menurunkan risiko dengan vaksinasi virus yang dapat menyebabkan ensefalitis. Pastikan juga anak-anak kita menerima vaksinasi untuk virus-virus penyebab ensefalitis. Di area-area di mana nyamuk dan kutu biasa terjadi, gunakan repellant, dan kenakan lengan panjang dan celana panjang. Jika bepergian ke suatu daerah yang rawan dengan virus penyebab ensefalitis, carilah rekomendasi terbaik untuk mendapatkan vaksinasi.\r\n'),
(1, 'Motivasi Praktis Menghafal Al-Quran\r\n', 'Belajar dan menghafal al-Quran selama ini identik dengan aktifitas para santri yang sedang bergelut dengan pelajaran ilmu-ilmu keislaman di pondok pesantren, sementara para pelajar dan mahasiswa lebih sering dikaitkan dengan aktifitas belajar ilmu-ilmu umum dan teknologi modern. Mungkin terbilang langka mahasiswa hafal al-Quran ataupun dosen hafal al-Quran.', 'http://www.nuranitahfidh.com/wp-content/uploads/2015/06/DSC_0435-760x300.jpg', 'Belajar dan menghafal al-Quran selama ini identik dengan aktifitas para santri yang sedang bergelut dengan pelajaran ilmu-ilmu keislaman di pondok pesantren, sementara para pelajar dan mahasiswa lebih sering dikaitkan dengan aktifitas belajar ilmu-ilmu umum dan teknologi modern. Mungkin terbilang langka mahasiswa hafal al-Quran ataupun dosen hafal al-Quran.\r\n\r\nPadahal kalau mau berkaca pada sejarah ilmuan-ilmuan muslim yang fenomenal dalam bidang filsafat dan sains pada abad pertengahan Islam, kita pasti akan mendapatkan segudang contoh orang-orang yang mumpuni di bidangnya, dan mereka rata-rata hafal dan menguasai al-Quran. Ibnu Rusyd, Ibnu Sina, al-Ghazali, Ar-Razi  dll, mereka adalah sosok ilmuan yang komplit, rumus-rumus fisika, kimia, astronomi dikuasai, tafsir, hadis, fiqh juga dipahami secara mendalam.\r\n\r\nDan menurut pengamatan penulis, sejumlah mahasiswa yang menghafal al-Quran ataupun yang telah hafal, memiliki tingkat kecerdasan dan kreatifitas lebih dibanding lainnya. Rektor Universitas Islam Negeri Maulana Malik Ibrahim (Maliki) Malang, Bapak Prof. Dr. Imam Suprayogo, dalam acara wisuda 2008 pernah menyampaikan bahwa dalam beberapa tahun terakhir peraih predikat mahasiswa terbaik selalu diraih oleh mahasiswa yang hafal al-Quran. Hal yang sama juga dibuktikan oleh keluarga Bapak Mutammimul Ula. Kesepuluh putra putrinya yang sedang menghafal al-Quran itu rata-rata menjadi pelajar dan mahasiswa terbaik di sekolah mereka masing-masing.\r\n\r\n1.   Otak, semangat, dan kesempatan Anda sekarang berada di masa keemasan\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.\r\n'),
(2, '10 Hikmah Positif Sulit Menghafal Al-Quran (Tahfidz)', 'Satu huruf al-Quran, satu kebaikan dan satu kebaikan 10 pahala. Bagi yang kesulitan melafalkan, satu hurufnya diganjar dua kebaikan. Berarti setiap hurufnya 20 pahala. Semakin sulit semakin banyak. Kalikan dengan jumlah pengulangan Anda. Rasulullah', 'https://www.openulis.com/wp-content/uploads/2016/06/Quran-surah-alwaqiah-arRahman-750x536.jpg', 'Mampu menghafal seluruh al-Quran 30 juz adalah impian semua mukmin. Karenanya, mereka amat giat meraih nikmat ini. Tetapi, tidak jarang yang mengalami kesulitan saat menghafal al-Quran.\r\n\r\n\r\n \r\nSudah berkali-kali mencoba, selalu lupa. Hari ini hafal halaman 3, yang kemarin halaman 2 udah gak inget. Capek, payah, jera dan mau putus asa rasanya. Ketahuilah, al-Quran adalah rahmat Allah dan putus asa adalah kesesatan serta pebuatan orang sesat.\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih\r\n\r\n Jangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.\r\n\r\n'),
(3, 'Belajar Pemrograman Android dengan Java atau Kotlin?', 'Kotlin merupakan bahasa pemrograman yang diperkenalkan tahun 2011 lalu oleh JetBrains. Bahasa ini dibuat dengan satu tujuan, meningkatkan produktifitas di perusahaan pembuatnya.', 'https://static.cdn-cdpl.com/700x350/998b78e349061b4971c0a2b0e8d6be41/kotlinvsjava.png', 'Karena pada waktu itu JetBrains masih menggunakan Java 100% diseluruh project-nya, maka mereka membuat agar Kotlin memiliki interoperabilitas terhadap bahasa Java (bisa memanggil kode Java dari Kotlin dan sebaliknya). Kotlin dengan berbagai kelebihannya mulai menarik minat developer Android sudah pusing menghadapi cobaan dari penggunaan Java. Lalu, pada event Google I/O 2017 lalu, Kotlin secara resmi didukung sebagai bahasa pengembangan aplikasi Android lewat Android Studio, meledaklah popularitas Kotlin sejak itu.\r\n\r\n\r\nDengan didukungnya bahasa baru sebagai sarana pengembangan aplikasi Android banyak orang, khususnya yang baru di dunia Android, bertanya-tanya,\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.'),
(4, 'Sebagai Android Beginner harus mulai dengan Java atau Kotlin?', 'Jika saya ingin belajar mengembangkan aplikasi Android, apakah saya harus mulai dengan Java atau Kotlin?', 'https://miro.medium.com/max/1000/1*yoiwnIpBhdnRVXZidIP3-w.jpeg', 'Pertanyaan ini cukup banyak muncul di komunitas dan sekarang saya akan mencoba menjelaskannya di sini. Untuk menjawabnya, saya telah melihat berbagai artikel, post, dan pendapat dari beberapa android developer dan mencoba merangkumnya secara keseluruhan. Artikel ini lebih mencerminkan apa yang para developer pikirkan daripada pendapat saya sendiri. Saya tidak cukup berpengalaman untuk memberi tahu apakah Anda harus mulai dengan Java atau Kotlin, tetapi saya dapat mencari jawabannya.\r\nAnda mungkin memperhatikan bahwa Kotlin semakin banyak didorong di komunitas Android baru-baru ini. Pertama kali diperkenalkan pada tahun 2011, Kotlin (dibandingkan dengan Java) merupakan bahasa yang relatif baru. Kotlin dikembangkan oleh tim JetBrains, orang-orang yang juga membuat IntelliJ IDEA (IDE yang menjadi dasar Android Studio). Pada tahun 2016, versi 1.0 dari Kotlin dirilis, dan pada tahun 2017, di Google I / O kotlin diperkenalkan sebagai bahasa resmi kelas utama untuk pengembangan aplikasi native Android, yang berarti bahwa Google bekerja sama dengan JetBrains untuk sepenuhnya mendukung dan meningkatkan bahasa, dan Anda dapat menggunakannya di Android Studio secara langsung. Kotlin tidak dimaksudkan untuk menggantikan Java di Android, tetapi lebih untuk berdampingan dengannya, sehingga apapun yang anda lakukan dengan Kotlin, dapat Anda lakukan dengan Java dan sebaliknya. Google tidak berencana untuk menjatuhkan Java.\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.'),
(5, 'TIPS BELAJAR JAVA LEWAT ANDROID TANPA KUOTA\r\n', 'pada umumnya belajar coding bisanya kita belajar melalui laptop/pc,tapi taukah kalian kalo sekarang belajar coding java bisa di smartphone kalian loo apalagi tanpa koneksi internet jadi bisa menghemat kuota saat belajar plus dapat e-sertifikat free dari aplikasi tersebut.mau tau caranya?? ikuti langkah berikut ya', 'https://miro.medium.com/max/1075/0*HdaAO1pr4HjDsXiZ.jpg', 'TIPS BELAJAR JAVA LEWAT ANDROID TANPA KUOTA\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.\r\n'),
(6, '10 Hikmah Positif Sulit Menghafal Al-Quran (Tahfidz)', 'Satu huruf al-Quran, satu kebaikan dan satu kebaikan 10 pahala. Bagi yang kesulitan melafalkan, satu hurufnya diganjar dua kebaikan. Berarti setiap hurufnya 20 pahala. Semakin sulit semakin banyak. Kalikan dengan jumlah pengulangan Anda. Rasulullah', 'https://www.openulis.com/wp-content/uploads/2016/06/Quran-surah-alwaqiah-arRahman-750x536.jpg', 'Mampu menghafal seluruh al-Quran 30 juz adalah impian semua mukmin. Karenanya, mereka amat giat meraih nikmat ini. Tetapi, tidak jarang yang mengalami kesulitan saat menghafal al-Quran.\r\n\r\n\r\n \r\nSudah berkali-kali mencoba, selalu lupa. Hari ini hafal halaman 3, yang kemarin halaman 2 udah gak inget. Capek, payah, jera dan mau putus asa rasanya. Ketahuilah, al-Quran adalah rahmat Allah dan putus asa adalah kesesatan serta pebuatan orang sesat.\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa.. Di ayokngaji.com Sama Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` int(100) NOT NULL,
  `email` varchar(90) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` int(11) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id`, `email`, `alamat`, `telepon`, `profile_image`, `nama`) VALUES
(1, 'qbsdevs@gmail.com', 'Jl.Gadog sisi no. 8 kec. tamansari', 8214345, 'https://images.axios.com/40yKmjksUxd94lm5FsUDW9g', 'Dzakwan Nibras Prayoga');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keahlian` varchar(100) NOT NULL,
  `biografi` text NOT NULL,
  `total_santri` bigint(255) NOT NULL,
  `total_pertemuan` bigint(255) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `keahlian`, `biografi`, `total_santri`, `total_pertemuan`, `status`) VALUES
(1, 'Ustadz Supriyanto', 'Menguasai Bahasa Pemograman Java, Android, Angular', 'Saya Adalah Seorang Pengajar Di Quadrant Boarding School, Selain Itu Saya Juga Seorang Programmer', 45, 60, '1');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_mengajar`
--

CREATE TABLE `jadwal_mengajar` (
  `id_jadwal_mengajar` int(10) NOT NULL,
  `jam_pelajaran` text NOT NULL,
  `hari_1` text NOT NULL,
  `hari_2` text NOT NULL,
  `hari_3` text NOT NULL,
  `hari_4` text NOT NULL,
  `hari_5` text NOT NULL,
  `hari_6` text NOT NULL,
  `hari_7` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_mengajar`
--

INSERT INTO `jadwal_mengajar` (`id_jadwal_mengajar`, `jam_pelajaran`, `hari_1`, `hari_2`, `hari_3`, `hari_4`, `hari_5`, `hari_6`, `hari_7`) VALUES
(1, '06:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(2, '08:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(3, '10:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(4, '12:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(5, '14:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(6, '16:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(7, '18:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019'),
(8, '20:00:00', 'Jumat, 08/11/2019', 'Sabtu, 09/11/2019', 'Ahad, 10/11/2019', 'Senin, 11/11/2019', 'Selasa, 12/11/2019', 'Rabu, 13/11/2019', 'Kamis, 14/11/2019');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_it`
--

CREATE TABLE `kategori_it` (
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_it`
--

INSERT INTO `kategori_it` (`judul`, `deskripsi`) VALUES
('Learning Java For Beginner', 'Belajar Java Untuk Pemula. Disini Kalian Akan Belajar Basic Java, IntelIj Idea, Dan Masih Banyak Lagi.'),
('Learning Java For Intermediate', 'Belajar Java Untuk Menengah. Disini Kalian Akan Belajar Android Studio, Membuat Aplikasi Sederhana dan Masih Banyak Lagi.'),
('Learning Java For Beginner', 'Belajar Java Untuk Pemula. Disini Kalian Akan Belajar Basic Java, IntelIj Idea, Dan Masih Banyak Lagi.'),
('Learning Java For Intermediate', 'Belajar Java Untuk Menengah. Disini Kalian Akan Belajar Android Studio, Membuat Aplikasi Sederhana dan Masih Banyak Lagi.');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL,
  `ustad` text NOT NULL,
  `keahlian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `kelompok_id` int(10) NOT NULL,
  `jumlah_anggota` text NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`kelompok_id`, `jumlah_anggota`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, '15 orang', 'Rp.350.000,00', 'Rp.2.000.000,00', 'Rp.3.900.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `keluarga_id` int(10) NOT NULL,
  `jumlah_anggota` text NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluarga`
--

INSERT INTO `keluarga` (`keluarga_id`, `jumlah_anggota`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, 'Maksimal 10 orang', 'Rp.250.000,00', 'Rp.1.400.000,00', 'Rp.2.700.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `personal_id` int(10) NOT NULL,
  `paket_perbulan` text NOT NULL,
  `paket_persemester` text NOT NULL,
  `paket_pertahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`personal_id`, `paket_perbulan`, `paket_persemester`, `paket_pertahun`) VALUES
(1, 'Rp.100.000,00', 'Rp.500.000,00', 'Rp.900.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(1, 'luthfi', 'luthfi@gmail.com', 'luthfi123'),
(2, 'nafizbbx', 'nafiz@gmail.com', '1234'),
(3, 'royyan', 'royyan@gmail.com', 'royyan123'),
(4, 'ewr34t3g', 'tertt@heh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL,
  `umur` int(100) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` text NOT NULL,
  `status` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='pampam';

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id`, `name`, `umur`, `alamat`, `pendidikan`, `status`) VALUES
(1, 'Sami Arya', 12, 'Bekasi Barat', 'Pesantren', 'sudah bayar'),
(2, 'Sulaiman Abdul Aziz', 14, 'Bandung', 'Pesantren', 'belum bayar'),
(3, 'Azzam Syahid ', 13, 'Bekasi barat', 'SMP Negri', 'sudah bayar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `berita_id` int(10) NOT NULL,
  `title_berita` text NOT NULL,
  `subtitle_berita` text NOT NULL,
  `image_berita` text NOT NULL,
  `isi_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`berita_id`, `title_berita`, `subtitle_berita`, `image_berita`, `isi_berita`) VALUES
(1, 'Tempat Belajar Hacker Pemula dengan Mentor Profesional', 'Ketertarikan menjadi seorang hacker akhir-akhir ini meningkat tajam. Hal ini karena dibarengi dengan semakin canggihnya teknologi, dan maraknya jejaring sosial beserta keuntungan yang didapat jika bisa meretas sebuah akun tertentu. Untuk menangani peretas iseng, maka Anda pun harus memiliki kemampuan yang sama. Sebab, menjadi hacker selain dapat menembus pertahanan komputer seseorang, juga bisa menjadi cara untuk melindungi komputer Anda sendiri. Apabila Anda ingin belajar, maka ketahui dulu beberapa hal yang diperlukan untuk belajar hacker pemula.', 'https://www.course-net.com/wp-content/uploads/2018/12/Dasar-menjadi-seorang-hacker.jpg', 'Sama seperti bidang keilmuan lainnya, belajar menjadi hacker pun memiliki dasar-dasarnya sendiri. Terutama Anda harus belajar mengenai IT lebih dalam. Tidak perlu khawatir, sebab ilmu IT bisa dipelajari sendiri meskipun tanpa gelar resmi di universitas maupun SMK IT. Lalu, apakah hal-hal dasar yang harus dipelajari ketika ingin menjadi hacker, terlebih Anda seorang pemula. \r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih'),
(2, '5 Situs Belajar Hacking Berbahasa Indonesia Terbaik ', 'Dunia hacking memang selalu memiliki daya tarik tersendiri bagi banyak orang, mulai dari yang muda sampai yang dewasa. Banyak dari mereka menganggap bahwa seorang hacker adalah orang yang jenius dan keren. Dan banyak orang yang bermimpi untuk menjadi hacker juga.', 'https://obs.line-scdn.net/0h1BmQwUNtbm1QKEF0uWQROmp-bQJjRH1uNB4_cwBGMFl1Hn1vaU5yA3N8Yg8tSikzOU8mCnYhdVx6S3o6P09y/w644', 'Tapi tahukah kamu bahwa kamu bisa menjadi hacker juga loh. Gimana caranya? Cara untuk menjadi hacker bisa dibilang gampang-gampang susah. Salah satu cara termudah menjadi hacker menjadi hacker adalah dengan mempelajari teknik-tekniknya melalui 5 situs belajar hacking berbahasa indonesia terbaik di bawah ini.  \r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih'),
(3, 'Mempelajari Al-Qur\'an sebagai Kebutuhan atau Keinginan?', '\r\nAl-qur\'an sebagai kitab suci umat Islam yang diturunkan oleh Allah Subhanahu wa Ta\'ala melalui perantara malaikat Jibril kepada Nabi Muhammad Shalallahu Alaihi Wassalam. Al-qur\'an merupakan mukjizat paling agung yang diterima oleh Nabi Muhammad Shalallahu Alaihi Wassalam.', 'https://assets-a2.kompasiana.com/items/album/2019/04/13/alquran-5cb194803ba7f706f8647d04.jpg?t=o&v=760', 'Kitab suci Al-qur\'an wajib diyakini oleh seluruh umat Islam. Tidak hanya diyakini saja, tetapi juga kita harus mempelajari, membaca, dan mengamalkannya. Di dalam kitab suci Al-qur\'an terdapat banyak sekali pokok ayat-ayat yang berisikan tentang akidah, ibadah, akhlaq, hukum, peringatan, kisah-kisah, dan lain-lain.\r\n\r\nDalam proses pemahaman tentang makna Al-qur\'an melahirkan suatu upaya pembelajaran Al-qur\'an yang bervarian dan tingkatan yang berbeda. Sebagian ada yang mempelajari dan menghafalkan Al-qur\'an. Sebagian ada yang mengagungkan Al-qur\'an sampai tidak mau dicampur adukan dengan pemikiran akal manusia. Sebagian yang lainnya juga membedah dan menelaah Al-qur\'an sampai akar-akarnya dengan menggunakan akal. Ada juga dengan menggunakan beberapa ijtihad para ulama untuk membedah dan menelaah Al-qur\'an.\r\n\r\nJangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih'),
(4, '7 Keutamaan Membaca Alquran Setiap Hari', 'Alquran diturunkan kepada Muhammad SAW dan umat manusia sebagai mukjizat. Alquran menjadi salah satu bukti yang tak terbantahkan akan kebenaran Muhammad sebagai Rasulullah sekaligus kebenaran Islam sebagai agama rahmatan lil\'alamin.\r\n\r\n', 'https://akcdn.detik.net.id/community/media/visual/2019/08/28/77c5dd41-d1b3-439e-819b-bc3c9648a2d8.jpeg?w=780&q=90', 'Memiliki banyak keistimewaan, Rasulullah SAW dalam sabdanya mengatakan bahawa orang yang membaca satu huruf ayat Alquran akan diberikan balasan oleh Allah SWT 10 kali lipat.\r\n\r\n Jangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih'),
(5, 'Ini Tiga Kunci Cepat Belajar Alquran Selama 30 Menit', 'Belajar Alquran dengan menggunakan metode 30 menit lancar membaca Alquran, semudah belajar membaca huruf latin. Penemu metode 30 menit lancar membaca Alquran, Ustaz Achmaf Farid Hasan mengatakan, sesuai dengan namanya metode ini hanya memerlukan waktu 30 menit untuk dapat membaca Alquran, yang nantinya dilanjutkan dengan praktek.', 'https://static.republika.co.id/uploads/images/inpicture_slide/0.45885800-1512814768-830-556.jpeg', 'Ustaz Farid mengatakan, terdapat tiga kunci untuk lancar membaca Alquran dengan menggunakan metode tersebut. Pertama, seseorang itu harus menguasai huruf Alquran yang jumlahnya 30 huruf. Sementara, kunci yang kedua harus bisa menguasai tanda baca Alquran yang jumlahnya ada delapan tanda baca.\r\n\r\n Jangan Lupa Untuk Kunjungi Website Kita Yaa . . .  Di ayokngaji.com, dan Jangan Lupa Share Ke Teman atau Keluarga Kalian. Terimakasih');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(225) NOT NULL,
  `nama_santri` text NOT NULL,
  `nama_ustad` text NOT NULL,
  `jumlah_pertemuan` text NOT NULL,
  `waktu` text NOT NULL,
  `pertemuan` text NOT NULL,
  `pertemuan2` text NOT NULL,
  `pertemuan3` text NOT NULL,
  `pertemuan4` text NOT NULL,
  `hargatetap` text NOT NULL,
  `harga_bayar` text NOT NULL,
  `konfirmasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `nama_santri`, `nama_ustad`, `jumlah_pertemuan`, `waktu`, `pertemuan`, `pertemuan2`, `pertemuan3`, `pertemuan4`, `hargatetap`, `harga_bayar`, `konfirmasi`) VALUES
(28, 'ibaszigot@gmail.com', 'Ustad Supriyanto', '1', '05-12-2019', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Dikonfirmasi'),
(29, 'tamu', 'Ustad Supriyanto', '1', '05-12-2019', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Dikonfirmasi'),
(30, 'ibaszigot@gmail.com', ' Ustad Yusuf', '4', '09-12-2019', '12 - 9 - 2019 ', '12 - 21 - 2019 ', '12 - 20 - 2019 ', '12 - 22 - 2019 ', '100000', '400000', 'Tertunda'),
(31, 'ibaszigot@gmail.com', 'Ustad Fery', '1', '09-12-2019', '12 - 28 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '150000', '150000', 'Tertunda'),
(32, 'rifqigoku2122@gmail.com', 'Ustad Fery', '1', '09-12-2019', '12 - 18 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Dikonfirmasi'),
(33, 'rifqigoku2122@gmail.com', 'Ustad Husain', '1', '10-12-2019', '12 - 25 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Tertunda'),
(34, 'ibaszigot@gmail.com', 'Ustad Ahmad', '1', '10-12-2019', '12 - 10 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '200000', '200000', 'Tertunda'),
(35, '', 'Ustad Supriyanto', '2', '11-12-2019', '12 - 11 - 2019 ', '12 - 14 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '200000', 'Dikonfirmasi'),
(36, '', 'Ustad Supriyanto', '1', '11-12-2019', '12 - 12 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '150000', '150000', 'Tertunda'),
(37, '', 'Ustad Fery', '1', '13-12-2019', '12 - 28 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Tertunda'),
(38, '', 'Ustad Supriyanto', '2', '13-12-2019', '12 - 28 - 2019 ', '12 - 28 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '150000', '300000', 'Tertunda'),
(39, '', 'Ustad Supriyanto', '4', '13-12-2019', '12 - 13 - 2019 ', '12 - 14 - 2019 ', '12 - 17 - 2019 ', '12 - 27 - 2019 ', '100000', '400000', 'Tertunda'),
(40, '', 'Ustad Husain', '2', '13-12-2019', '12 - 17 - 2019 ', '12 - 25 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '150000', '300000', 'Tertunda'),
(41, '', 'Ustad Fajar', '1', '13-12-2019', '12 - 18 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '150000', '150000', 'Tertunda'),
(42, '', ' Ustad Yusuf', '4', '13-12-2019', '12 - 23 - 2019 ', '12 - 25 - 2019 ', '12 - 18 - 2019 ', '12 - 25 - 2019 ', '200000', '800000', 'Tertunda'),
(43, '', 'Ustad Supriyanto', '1', '18-12-2019', '12 - 18 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Tertunda'),
(44, 'qbsdevs@gmail.com', 'Ustad Supriyanto', '1', '18-12-2019', '12 - 18 - 2019 ', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', 'Belum ada jadwal dipilih', '100000', '100000', 'Tertunda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` int(10) NOT NULL,
  `name` varchar(223) NOT NULL,
  `image` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `akun_guru`
--
ALTER TABLE `akun_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `akun_gurus`
--
ALTER TABLE `akun_gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_mengajar`
--
ALTER TABLE `jadwal_mengajar`
  ADD PRIMARY KEY (`id_jadwal_mengajar`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`kelompok_id`),
  ADD UNIQUE KEY `kelompok_id` (`kelompok_id`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`keluarga_id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `akun_gurus`
--
ALTER TABLE `akun_gurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `kelompok_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `keluarga_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
