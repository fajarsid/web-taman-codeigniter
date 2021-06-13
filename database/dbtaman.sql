-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 04:02 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '3f0edd4a3de4375c41038e0ccf300b3b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Pertamanan', 'pertamanan', 'Y'),
(7, 'Jalur Hijau', 'jalur-hijau', 'Y'),
(8, 'Hutan Kota', 'hutan-kota', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Ini adalah project portal berita dan artikel sederhana, yang bertujuan membantu para programmer memahami dalam pembuatan projects serta penguasaan dalam bahasa pemrograman, library dan framework.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'Taman Kota', 'Tamankota.com', 'Taman kota cibdak', 'Tamankota.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'Y'),
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(88, 'Taman Kota', 'taman-kota', 'Indonesia merupakan negara kepulauan dengan karakteristik penduduk yang beragam dan merupakan salah satu negara dengan jumlah penduduk terbesar di dunia. Salah satu permasalahan utama yang terjadi di Indonesia adalah konsentrasi penduduk yang terpusat di Pulau Jawa. Hal tersebut tidak lepas dari adanya fenomena urbanisasi penduduk non-perkotaan yang berpindah dari desa menuju kawasan perkotaan di Indonesia terutama Pulau Jawa, dimana merupakan pusat pemerintahan, perekonomian, perdagangan, dan pusat-pusat pembangunan lainnya di Indonesia. Berbicara mengenai masyarakat perkotaan, keberadaannya seringkali dikaitkan dengan masyarakat modern. Karakteristik masyarakat perkotaan sendiri sangat berbeda dengan karakteristik masyarakat pedesaan. Masyarakat perkotaan memiliki karakteristik yang produktif namun dapat dikatakan cenderung individualis, dimana segala bentuk interaksi didasarkan pada kepentingan individu. \r\n\r\nKeberadaan ruang terbuka hijau di kawasan perkotaan dapat menjadi salah satu sarana dalam membentuk interaksi sosial masyarakat perkotaan. Proporsi RTH pada kawasan perkotaan minimal sebesar 30% yang terdiri atas 20% ruang terbuka hijau publik dan 10% terdiri atas ruang terbuka hijau privat. Salah satu bentuk ruang terbuka hijau di kawasan perkotaan adalah taman kota. Taman kota merupakan salah satu kebutuhan vital yang harus terpenuhi di kawasan perkotaan. Tujuan diselenggarakan taman kota adalah untuk kelestarian, keserasian, dan keseimbangan ekosistem perkotaan yang meliputi unsur lingkungan, sosial, dan budaya. Taman kota memiliki fungsi ekologis dan sosialis yang cukup tinggi, dimana keberadaan taman kota dapat membantu mereduksi polusi udara yang ada di kota serta dapat digunakan sebagai wadah dalam menciptakan interkasi sosial hingga membentuk budaya sehat bagi masyarakat perkotaan. Secara ekologis, setiap satu hektar daun hijau yang ada di taman dapat menyerap delapan kilogram CO2 yang setara dengan CO2 yang diembuskan oleh sekitar 200 orang dalam waktu yang sama. Hal tersebut tentu dapat meminimalisir risiko adanya berbagai gangguan kesehatan masyarakat perkotaan. Kemudian, dengan adanya taman kota, dapat digunakan sebagai area untuk berinteraksi, berkomunikasi, dan beraktivitas seperti olah raga, rekreasi, dan lain sebagainya yang pada akhirnya dapat mengarahkan masyarakat menuju pola hidup yang sehat. ', 'Y', 'N', 'Y', 6, '0918e5d9ed191ca2e4e0dca1b7806c87.jpg', 'Y', '2021-06-13'),
(89, 'Jalur Hijau', 'jalur-hijau', 'Jalur hijau merupakan daerah hijau sekitar lingkungan permukiman atau sekitar kota, bertujuan mengendalikan pertumbuhan pembangunan, mencegah dua kota atau lebih menyatu, dan mempertahankan daerah hijau, rekreasi, ataupun daerah resapan hu-jan.Smart Green Land merupakan inovasi konsep RTH yang berfungsisebagai paru-paru kota dan sebagai tempat yang nyaman melalui penyediaan fasilitas penunjang se-hingga tercipta kenyamanan dan kesegaran. Penelitian ini bertujuan mengetahui, mempe-lajaripermasalahan dan kendala dalam lanskap jalur hijau, menganalisis permasalahan, mengembangkan potensi dan menyusun rekomendasi rencana dan penerapan smart green land yang berkelanjutan. Penelitian dilaksanakan pada jalur hijau jalan Ijen, jalur hijau jalan Jakarta dan jalur hijau Dieng, dan penerapan smart green land pada Alun-alun Kota dan Alun-alun Tugu Kota Cibadak. Penelitian ini menggunakan tiga tahap yaitu inventarisasi, analisis data, dan interprestasi data. Hasil penelitian menunjukkan jalur hijau Jalan Dieng, Jalan Jakarta dan Jalan Ijen le-bih tertuju pada penambahan jenis vegetasi tanaman perdu, semak berbunga indah, lam-pu penerangan jalan dan tempat duduk. Smart Green Land pada Alun-alun Kota Cibadak dan Alun-alun Tugu lebih tertuju pa-da penambahan jenis vegetasi tanaman ber-bunga dan tanaman rumput.', 'Y', 'N', 'Y', 7, '7c0348ab70ccccb41260e4926bb4615c.jpg', 'Y', '2021-06-13'),
(90, 'Hutan Kota', 'hutan-kota', 'erkembangan dan kemajuan kota memicu tingginya roda perputaran uang dan orientasi profit di banyak kota di Indonesia. Sementara itu, keberadaan hutan dalam kota semakin terabaikan. Kapitalisme dunia menjadi kontrol kegiatan perekonomian kota, melalaikan penerapan pembangunan kota dan infrastruktur yang ramah lingkungan. Hutan dalam kota pun dilindas habis untuk keperluan pembangunan. Tak ada lagi keseimbangan antara kota dan hutan, kehadiran hutan dalam kota pun semakin jauh dari harapan. Hal ini diperparah dengan makin banyaknya lahan hijau kota lainnya yang beralih fungsi menjadi bangunan. Tak hanya di pusat kota saja, di beberapa permukiman pinggiran, kebutuhan akan hunian maupun toko dan warung sebagai penggerak ekonomi, telah menggusur kehadiran hutan dalam kota. Lantas ketika hutan di pinggiran kota lenyap dibabat, sementara lahan hijau lainnya di pusat kota hilang terbangun, apa jadinya kota ini? Kota pun semakin gersang.\r\n\r\nKehadiran hutan dalam kota menjadi paru-paru dunia yang mampu menyerap udara kotor dan meredam kegersangan suatu kota. Namun, besarnya tuntutan akan pembangunan infrastruktur kota telah mengesampingkan urusan penyelamatan hutan dan lingkungan. Tak bisakah kita menghadirkan kembali hutan sebagai penyangga lingkungan, sementara pembangunan kota terus berjalan? Hal itu sangat mungkin dilakukan. Bahkan, menghadirkan hutan di dalam kota sangat mungkin diwujudkan, yaitu dengan menciptakan hutan kota.', 'N', 'N', 'Y', 8, '14127ba2e96bd6a1906c973d72829c0f.jpg', 'Y', '2021-06-13'),
(91, 'Event Taman Kota', 'event-taman-kota', 'Karang Taruna Abhinaya Karya Desa Karangatengah. Kecamatan Cibadak. Kabupaten Sukabumi Jawa Barat. Memiliki cara tersendiri dalam menunggu waktu berbuka puasa. Atau biasa disebut ngabuburit.\r\nPara pemuda tersebut. Menggandeng Sanggar Seni Sangkuriang. Jumat (24/5/19). Berbagi kebahagiaan di Bulan Ramadhan 1440 Hijriah. Dengan menggelar buka puasa bersama. Serta berbagi takjil. Di Taman Kota Karangtengah.\r\n“Kami ingin memeriahkan Bulan Suci Ramadhan. Dengan menggelar acara ngagaburit dan pembagian takjil,” ungkap koordinator kegiatan : Gerry Imam Sutrisno. Di lokasi kegiatan. Jumat (24/5/19).\r\nTak hanya itu. Kegiatan tersebut memiliki tujuan lainnya. Yakni mengenalkan kebudayaan Sunda. Yang saat ini mulai rawan hilang. Ditelan zaman. Bahkan di tengah masyarakat Sunda itu sendiri.\r\n\r\n“Kami juga ingin membantu para pedagang. Di Taman Kota Karangtengah. Untuk meningkatkan omzetnya,” jelasnya.\r\n\r\nDi tempat sama. Ketua Karang Taruna Abhinaya Karya : Andilala Somantri. Berharap adanya ketertarikan generasi muda. Kepada kebudayaan Sunda. Terlebih di Bulan Suci Ramadhan.', 'Y', 'Y', 'N', 6, 'fc712498b7c9bdacaad824c2a99eb4de.jpg', 'Y', '2021-06-13'),
(92, 'Hutan Kota Indonesia', 'hutan-kota-indonesia', 'Hutan kota adalah kawasan yang ditutupi pepohonan yang dibiarkan tumbuh secara alami menyerupai hutan, tidak tertata seperti taman, dan lokasinya berada di dalam atau sekitar perkotaan.  Hutan kota bermanfaat untuk mengurangi degradasi lingkungan kota yang diakibatkan oleh ekses negatif pembangunan. Selain mempunyai fungsi perbaikan lingkungan hidup, hutan kota juga memiliki fungsi estetika.\r\n\r\nPembangunan fisik di perkotaan sejatinya ditujukan untuk memberikan kemudahan bagi manusia dalam menjalani hidup. Namun dengan semakin banyaknya bangunan, keberadaan ruang terbuka hijau menjadi terbatas. Sehingga berpengaruh pada ketidak seimbangan ekosistem, seperti rusaknya fungsi resapan air, banjir, kekeringan dan polusi. Pada kondisi seperti ini, hutan kota sangat diperlukan untuk memperbaiki kualitas lingkungan kota.', 'N', 'Y', 'N', 8, '420643a2043c98286942558b92436ff6.jpg', 'Y', '2021-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'N'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1597292859, 1, 'Garsans', 'News', NULL, '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
