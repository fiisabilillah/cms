-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: cmsdatagoe_445
-- ------------------------------------------------------
-- Server version 	8.0.30
-- Date: Thu, 21 Mar 2024 10:42:47 +0800

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `agenda_id` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_tema` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isi_agenda` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tempat` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pengirim` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `tgl_posting` date DEFAULT NULL,
  `jam` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`agenda_id`),
  KEY `id` (`id`),
  CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `agenda` VALUES (2,'Bimtek Pengelolaan Website Dinas Versi terbaru','bimtek-pengelolaan-website-dinas-versi-terbaru','1627956974_0377753d26438dc3142d.png','  <p>Bimtek ini bertujuan untuk memberikan pelatihan agar Administrator OPD dapat memanfaatkan semua fitur secara optimal.</p>','Kantor Dinas Pemuda dan Olahraga','Datagoe Software','2021-09-09','2021-09-10','2021-08-03','09.00 - selesai',75,1,NULL),(3,'Pembahasan Verifikasi Usulan Rencana Kerja dan Anggaran TA 2021','pembahasan-verifikasi-usulan-rencana-kerja-dan-anggaran-ta-2021','default.png','<p>Rapat penting yang berfungsi untuk membahas berbagai isu strategis dengan ribu ratu Lembata, terkhusus di bidang pemuda olahraga dan kebudayaan.</p>','Kantor Dinas BKD Keuangan Kab. Lembata','Dinas BKD Keuangan','2021-09-12','2021-09-13','2021-06-02','09.00 - selesai',86,1,NULL),(4,'Gelar Rapat Persiapan Pengadaan Barang dan Jasa TA 2021','gelar-rapat-persiapan-pengadaan-barang-dan-jasa-ta-2021','default.png','<p>Mempersiapkan data-data penunjang kinerja setiap instansi yang merupakan hal penting dalam pengolaan pengadaan barang dan jasa yang profesional dan akuntabel.</p>','Kantor Dinas Pemuda dan Olahraga','Dinas Kominfo Kab. Lembata','2021-09-11','2021-09-11','2021-06-02','09.00 - selesai',104,1,NULL),(5,'Rapat Tindak Lanjuti PP Nomor 49 Tahun 2020','rapat-tindak-lanjuti-pp-nomor-49-tahun-2020','default.png',' <p>Mengingat Peraturan Perundangan yang belum maksimal dilaksanakan, maka akan dilaksanan rapat konsolidasi setiap OPD yang ada di Pemerintahan daerah Kabupaten Lembata.</p>','Kantor Dinas Pemuda dan Olahraga','Dinas Kominfo Kabupaten Lembata','2021-10-01','2021-10-01','2021-06-03','08.00 - selesai',124,1,NULL),(8,'Rilies Update CMS Versi 3.0.2','rilies-update-cms-versi-302','default.png','  Untuk meningkatkan kenyamanan dalam penggunaan CMS maka akan segera dibuka workshop CMS Datagoe','Lembata - NTT','Datagoe Software','2022-04-25','2022-04-26','2022-04-23','08 sampai selesai',56,1,NULL),(9,'El Tari Memorial Cup Ke-31 Tahun 2022','el-tari-memorial-cup-ke-31-tahun-2022','default.png',' <p><span style=\"color: rgb(34, 34, 34); font-family: Poppins; font-size: 15px; letter-spacing: 0.32px;\">Kompetisi sepak bola liga III zona Nusa Tenggara Timur, El Tari Memorial Cup (ETMC) ke – 31 tahun 2022 akan digelar di Kabupaten Lembata NTTx</span><br></p>','Gelora 99 Kabupaten Lembata','Disporabud','2022-07-01','2022-07-31','2023-07-19','14.00 - Selesai',79,1,NULL),(16,'Rilis CMS DATAGOE Ver. 4.0','rilis-cms-datagoe-ver-40','default.png','<p style=\"line-height: 1.8;\"><span style=\"font-size: 18px;\">Berbagai perbaikan dan penyempurnaan CMS Datagoe terus dilakukan agar Lembaga, atau Instansi yang sudah mempercayakan situs resmi nya menggunakan CMS anak kampung ini, mendapatkan layanan yang maksimal. Untuk itu CMS yang awalnya dikembangkan tahun 2021 ini, terus berbenah. Hal ini ditandai dengan dirilesnya CMS Versi 4.0 pada tanggal 17 Agustus 2023 mendatang.&nbsp;</span></p>','Lembata - NTT','Datagoe Software','2023-08-02','2023-08-17','2023-08-02','08.00 - Selesai',30,1,NULL),(17,'Launching CMS versi baru','launching-cms-versi-baru','default.png',' <p>sa</p>','Lembata - NTT','Datagoe','2023-10-29','2023-10-29','2023-10-29','08',12,1,NULL);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `agenda` with 8 row(s)
--

--
-- Table structure for table `bankdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankdata` (
  `bankdata_id` int NOT NULL AUTO_INCREMENT,
  `nama_bankdata` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fileupload` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`bankdata_id`),
  KEY `id` (`id`),
  CONSTRAINT `bankdata_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankdata`
--

LOCK TABLES `bankdata` WRITE;
/*!40000 ALTER TABLE `bankdata` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `bankdata` VALUES (1,'Rencana dan program kerja pembinaan organisasi kepemudaan','1624787922_9110c06de6b051bd2a4a.txt','rencana-dan-program-kerja-pembinaan-organisasi-kepemudaan','2021-06-04',18,1,NULL,NULL),(2,'Rumusan kebijakan teknis bidang keolahragaan','1629372547_de2ea6f345b7e33bb086.png','rumusan-kebijakan-teknis-bidang-keolahragaan','2021-06-04',21,1,NULL,NULL),(3,'Laporan hasil pelaksanaan rencana strategis dan rencana kerja Dinas','1689768228_d346a58433ac8b0c0d4a.xlsx','laporan-hasil-pelaksanaan-rencana-strategis-dan-rencana-kerja-dinas','2021-06-04',26,1,NULL,NULL);
/*!40000 ALTER TABLE `bankdata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `bankdata` with 3 row(s)
--

--
-- Table structure for table `berita`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita` (
  `berita_id` int NOT NULL AUTO_INCREMENT,
  `judul_berita` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_berita` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ringkasan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `gambar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_berita` date DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori_id` int DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `jenis_berita` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `likepost` int DEFAULT '0',
  `headline` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filepdf` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_komen` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `pilihan` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`berita_id`),
  KEY `id` (`id`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON UPDATE CASCADE,
  CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita`
--

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `berita` VALUES (1,'Literasi Digital Bergulir ke Seluruh Negeri','literasi-digital-bergulir-ke-seluruh-negeri','     Tantangan di ruang digital di tanah air saat ini semakin besar. Konten-konten negatif terus bermunculan, kejahatan di ruang digital terus meningkat. Hoaks, penipuan daring, perjudian, eksploitasi seksual pada anak, perundungan siber, ujaran kebencian, dan radikalisme berbasis digital perlu terus diwaspadai karena mengancam persatuan dan kesatuan bangsa.','      <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Tantangan di ruang digital di tanah air saat ini semakin besar. Konten-konten negatif terus bermunculan, kejahatan di ruang digital terus meningkat. Hoaks, penipuan daring, perjudian, eksploitasi seksual pada anak, perundungan siber, ujaran kebencian, dan radikalisme berbasis digital perlu terus diwaspadai karena mengancam persatuan dan kesatuan bangsa.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Hal tersebut diungkapkan Presiden Joko Widodo saat membuka program nasional <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">”Indonesia Makin Cakap Digital”</em> secara virtual, Kamis (20/05/2021). Peluncuran program yang bertepatan dengan Peringatan 113 Tahun Hari Kebangkitan Nasional tersebut merupakan bagian dari Gerakan Nasional Literasi Digital Siberkreasi dan dilaksanakan serentak di 34 provinsi dan 514 kabupaten/kota.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Kewajiban kita bersama untuk terus meminimalkan konten negatif, membanjiri ruang digital dengan konten-konten positif. Banjiri terus, isi terus dengan konten-konten positif. Kita harus tingkatkan kecakapan digital masyarakat agar mampu menciptakan lebih banyak konten-konten kreatif yang mendidik, yang menyejukkan, yang menyerukan perdamaian,\" ujar Kepala Negara.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Tidak hanya itu, menurut Presiden Jokowi, aplikasi internet juga harus mampu meningkatkan produktivitas masyarakat supaya UMKM bisa naik kelas. Sudah saatnya, memperbanyak UMKM <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">onboarding</em> ke platform <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">e-commerce</em>, sehingga internet bisa memberi nilai tambah ekonomi bagi seluruh lapisan masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Saya harap gerakan ini menggelinding dan terus membesar, bisa mendorong berbagai inisiatif di tempat lain, melakukan kerja-kerja konkret di tengah masyarakat agar makin cakap memanfaatkan internet untuk kegiatan edukatif dan produktif,\" kata Presiden.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menteri Komunikasi dan Informatika (Kominfo) Johnny G Plate menambahkan, setelah peluncuran tersebut, selama enam bulan ke depan, Kemenkominfo akan menyelenggarakan kelas-kelas webinar yang mengupas berbagai hal seputar literasi digital dan terbuka untuk seluruh warga masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Untuk diketahui, Program Literasi Digital Nasional ditujukan untuk menciptakan ruang digital yang seru, namun tetap aman, beretika, dan produktif.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Terkait Gerakan Nasional Literasi Digital Siberkreasi, sebelumnya pada 16 April, Kemenkominfo telah lebih dulu meluncurkan empat modul literasi digital di Surabaya, Jawa Timur. Keempat modul literasi tersebut meliputi Budaya Bermedia Digital, Aman Bermedia Digital, Etis Bermedia Digital, dan Cakap Bermedia Digital.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Modul-modul tersebut disusun berdasarkan empat pilar literasi digital yang utama, yakni <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital culture</em>, <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital safety</em>, <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital ethics</em>, dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital skills</em>. Modul ini merupakan manifestasi kolaborasi dari Gerakan Nasional Literasi Digital (GNLD) Siberkreasi, Jaringan Penggiat Literasi Digital (Japelidi), dan Kementerian Kominfo.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pada 2021, Kementerian Kominfo mencanangkan gerakan literasi bagi 12,4 juta rakyat Indonesia di 34 provinsi dan 514 kabupaten/kota. Dan keempat modul tersebut akan diterapkan dalam program literasi tingkat <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">basic digital skills</em> dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">intermediate digital skills</em>.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Jadi, ini gerakan besar dan masif yang dilakukan secara nasional. Perlu kerja kolaboratif seluruh kementerian,\" ucap Johnny.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Kementerian Kominfo berharap, dari gerakan ini dalam tiga tahun mendatang bakal ada 30 juta dari 64 juta UMKM yang ada dapat memanfaatkan ruang-ruang digital sebagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">marketplace</em>. Setidaknya bisa memberdayakan 100 juta orang.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menyangkut infrastruktur digital, Kementerian Kominfo bersama dengan ekosistem terkait sedang mempercepat pembangunan infrastruktur telekomunikasi untuk menjangkau daerah-daerah yang belum memiliki akses internet memadai.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pembangunan infrastruktur telekomunikasi juga dibarengi dengan kesiapan sumber daya manusia (SDM) yang akan memanfaatkan layanan internet tersebut. Tanpa kesiapan SDM, ruang digital justru berpotensi digunakan untuk tujuan penyebaran konten negatif seperti penipuan daring, perjudian, prostitusi <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">online</em>, disinformasi atau hoaks, pencurian data pribadi, perundungan siber (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">cyberbullying</em>), ujaran kebencian (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">hate speech</em>), penyebaran paham radikalisme/terorisme di ruang digital, dan sebagainya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Berdasarkan temuan survei Katadata Insight Center (KIC) yang bekerja sama dengan Kementerian Komunikasi dan Informatika serta Siberkreasi tahun 2020, setidaknya 30% sampai hampir 60% orang Indonesia terpapar hoaks saat mengakses dan berkomunikasi melalui dunia maya. Sementara itu, hanya 21% sampai 36% yang mampu mengenali hoaks. Kebanyakan hoaks yang ditemukan terkait isu politik, kesehatan, dan agama.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut survei tersebut, selain kemampuan mengenali hoaks masih rendah, tingkat literasi digital orang Indonesia juga masih belum cukup tinggi. Dalam survei yang mengukur status literasi digital di 34 provinsi Indonesia ditemukan, indeks literasi digital secara nasional belum sampai level baik. Dari skor tertinggi adalah 5 dan terendah adalah 1, maka indeks literasi digital nasional baru 3,47.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dari hasil survei itu, ada indikasi bahwa akses internet yang semakin tersebar dan terjangkau belum diiringi dengan meningkatnya kemampuan masyarakat dalam mengolah informasi dan berpikir kritis.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Adapun Indonesia diprediksi memiliki potensi ekonomi digital yang amat besar di dunia tahun 2025 yakni sebesar USD133 miliar. Sedangkan potensi ekonomi digital di negara-negara ASEAN mencapai USD300 miliar. Potensi ekonomi itu menunjukkan hampir setengah potensi ekonomi digital ASEAN ada di Indonesia.</span></p>','1649428698_148958c068e84178b93c.jpg','2021-05-24','1',2,1,'Berita',288,0,'1','   Literasi digital Sumber foto :unslpash.com',NULL,'1',NULL),(2,'Politik Digital Anak Muda','politik-digital-anak-muda','Kehidupan berdemokrasi di suatu negara salah satunya ditentukan oleh seberapa besar partisipasi politik dari masyarakatnya. Partisipasi itu akan tampak ketika masyarakat ikut terlibat secara aktif dalam kehidupan berpolitik. Contohnya, ketika pemilihan presiden, kepala daerah, atau saat memilih wakil-wakil mereka yang akan duduk di kursi parlemen, baik di pusat maupun di daerah.','   <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Kehidupan berdemokrasi di suatu negara salah satunya ditentukan oleh seberapa besar partisipasi politik dari masyarakatnya. Partisipasi itu akan tampak ketika masyarakat ikut terlibat secara aktif dalam kehidupan berpolitik. Contohnya, ketika pemilihan presiden, kepala daerah, atau saat memilih wakil-wakil mereka yang akan duduk di kursi parlemen, baik di pusat maupun di daerah.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut pakar ilmu politik, mendiang Miriam Budiardjo dalam bukunya <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Partisipasi dan Partai Politik</em>, tinggi atau rendahnya partisipasi politik di masyarakat menjadi indikator penting bagaimana perkembangan berdemokrasi di negara tersebut. Semakin tinggi tingkat partisipasi politik masyarakatnya, maka itu menunjukkan bahwa mereka peduli terhadap perkembangan politik di negara mereka. Sebaliknya, semakin rendah angka partisipasi politik masyarakat di suatu negara menjadi pertanda kurang baik.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam proses berdemokrasi tadi, terdapat kelompok-kelompok di masyarakat yang akan ikut mempengaruhi tinggi-rendahnya tingkat partisipasi politik. Salah satunya adalah anak-anak muda. Mereka adalah kelompok masyarakat yang menurut Pasal 1 Undang-Undang nomor 40 tahun 2009 tentang Kepemudaan didefinisikan sebagai warga negara Indonesia dalam rentang usia 16 hingga 30 tahun.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam perkembangannya, mereka kemudian disebut sebagai Generasi Z dan Generasi Milenial. Badan Pusat Statistik mendefinisikan Generasi Z sebagai penduduk Indonesia yang lahir dalam rentang tahun 1997-2012 dan Generasi Milenial adalah mereka yang lahir antara 1981 hingga 1996.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Berdasarkan hasil Sensus Penduduk 2020, dari 270,2 juta jiwa populasi Indonesia saat ini, sebanyak 53,81 persen di antaranya merupakan gabungan dari kedua generasi di atas tadi. Rinciannya sebanyak 27,94 persen diisi oleh Generasi Z dan 25,87 persen lainnya masuk dalam kategori Generasi Milenial. “Kedua generasi ini termasuk dalam usia produktif yang dapat menjadi peluang untuk mempercepat pertumbuhan ekonomi,” kata Kepala BPS Kecuk Suhariyanto, ketika memberikan keterangan pers mengenai hasil Sensus Penduduk 2020 di Jakarta, (21/1/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut Hasanuddin Ali dari Alvara Research, tipikal Generasi Z menuntut kehadiran internet nyaris di sepanjang kesehariannya. Ketergantungan mereka terhadap internet bahkan menyentuh angka 93,9 persen atau biasa disebut sebagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">mobile generation</em>. Generasi ini kehidupannya lebih banyak diwarnai dengan keceriaan (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">cheerful</em>).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Sedangkan Generasi Milenial memiliki ketergantungan dengan internet sekitar 88,4 persen dan dalam kehidupannya masih berjuang untuk meniti karier. Demikian diungkapnya saat menjadi pembicara dalam diskusi daring bertema “Politik Digital, Pendidikan Politik, dan Partisipasi Politik Bagi Generasi Muda\" yang digelar Kementerian Komunikasi dan Informasi di Jakarta, Sabtu (17/4/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam dunia politik, kata Hasanuddin, anak-anak muda tadi merupakan aset berharga dan menjadi incaran partai-partai politik. Ini lantaran Generasi Z dan Generasi Milenial merupakan kekuatan tersendiri yang harus direbut suaranya di dalam kontestasi pemilihan, baik pemilihan pemimpin negara, kepala daerah, atau saat memilih wakil rakyat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: large; line-height: inherit; font-family: arial, helvetica, sans-serif; vertical-align: baseline; text-size-adjust: none;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 18px; line-height: 20.7px; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pengaruh Media Sosial</span></span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Penetrasi internet di Indonesia saat ini telah menjangkau 196,7 juta penduduk berdasarkan survei Asosiasi Penyelenggara Jasa Internet Indonesia (APJII). Kondisi ini membuat partai-partai politik berlomba-lomba menceburkan diri membangun kekuatan baru di ranah digital. Mereka kemudian masuk ke berbagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform</em> media sosial yang ada demi mendapatkan simpati anak-anak muda melek teknologi.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pemanfaatan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform</em> media sosial untuk kepentingan politik telah dirasakan manfaatnya oleh Hillary Brigitta Lasut. Anggota DPR RI termuda ini memakai berbagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform </em>media sosial sebagai wadah berkampanye dalam Pemilihan Legislatif 2019. Selain lebih murah, kehadiran media sosial, menurut wakil rakyat daerah pemilihan Sulawesi Utara itu, mampu menjangkau jauh lebih banyak pemilih muda.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Ia sendiri saat itu mampu meraup 70.345 suara untuk mengantarkannya ke Senayan. \"Saya merasakan benar pengaruh media sosial ketika berkampanye. Melalui media sosial pula saya bisa berinteraksi secara cepat dengan masyarakat, termasuk para konstituen saya. Kita bisa langsung mengetahui persoalan yang terjadi pada daerah pemilihan di Sulawesi Utara,\" kata wakil rakyat yang lahir 22 Mei 1996 tersebut.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Brigitta juga mengakui pada saat pandemi seperti sekarang keberadaan media sosial pun sangat diperlukan untuk berinteraksi dengan banyak orang, bahkan dalam sekali waktu. Teknologi digital juga telah memudahkan partai politik dalam menjangkau para kader-kadernya di seluruh negeri. \"Di partai kami, nyaris semua urusan kepartaian bisa dilakukan dengan teknologi digital, termasuk mengurus dan mencetak kartu anggota partai secara <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">online</em>. Sehingga orang-orang tidak perlu mendatangi kantor partai setiap saat hanya untuk mengurusnya,\" katanya dalam forum yang sama.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Di mata Komisioner KPI Pusat Yuliandre Darwis, kehadiran media sosial untuk meraih suara anak-anak muda untuk ikut berpartisipasi di dunia politik merupakan hal yang wajar di era teknologi digital. Doktor bidang komunikasi massa ini menyebutkan, ada yang harus diperhatikan oleh anak-anak muda saat ingin menyampaikan aspirasi politiknya di media sosial.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Belajar dari kasus bertebarannya informasi berupa berita bohong (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">hoaks</em>) dalam Pemilihan Umum 2019, Yuliandre menyebut, sangat diperlukan kehati-hatian dan langkah bijak dari Generasi Z dan Milenial. \"Banyak bertebaran informasi tak benar ketika Pemilu 2019, mulai dari berita bohong, hasutan, ujaran kebencian, dan lainnya. Diperlukan kesantunan di dalam berpolitik di media sosial terutama bagi anak-anak muda. Saring dulu sebelum <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">sharing</em> dan lakukan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">tabbayun</em>, mengecek terlebih dulu kebenaran suatu informasi,\" katanya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Oleh karena itu, kendalikan jempolmu sebelum menyebarkan suatu informasi ke media sosial.</span></p>','1649428373_279a0b9ae3cd1ac3d5d0.jpg','2021-05-24','1',2,1,'Berita',103,2,'0','',NULL,'0',NULL),(3,'Cerdas Terima Informasi, Masyarakat Perlu Diedukasi','cerdas-terima-informasi-masyarakat-perlu-diedukasi','    Kemajuan teknologi informasi, khususnya melalui platform digital, terjadi sangat pesat belakangan ini. Banyak hal positif yang dapat diambil, namun tidak sedikit juga sisi negatif yang dapat terjadi akibat disrupsi informasi yang ditimbulkan, seperti menyebarnya kabar bohong/hoax, fitnah, atau adu domba. ','     <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo</span> – Kemajuan teknologi informasi, khususnya melalui platform digital, terjadi sangat pesat belakangan ini. Banyak hal positif yang dapat diambil, namun tidak sedikit juga sisi negatif yang dapat terjadi akibat disrupsi informasi yang ditimbulkan, seperti menyebarnya kabar bohong/hoax, fitnah, atau adu domba. Oleh karena itu, untuk memperkecil sisi negatif yang terjadi dari kemajuan teknologi informasi, diperlukan edukasi kepada masyarakat agar dapat mengolah informasi yang diterima dengan baik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Ya, makanya itu kita harus mengedukasi masyarakat supaya masyarakat itu cerdas, tidak menerima semua informasi yang diperoleh. Seperti tadi kita katakan, bahwa informasi ini ada yang positif, ada yang negatif, ada fitnah, ada kabar bohong, ada hoax ada berbagai macam hal. Ada yang destruktif, ada yang konstruktif. Nah, ini memang kita harus mengedukasi masyarakat untuk tidak menerima apa yang diterimanya,” tegas Wakil Presiden (Wapres) K. H. Ma’ruf Amin ketika diwawancara secara virtual dari Kediaman Resmi Wapres, Jl. Diponegoro No. 2 Jakarta, yang di muat oleh Harian Kompas, Sabtu (26/06/2021).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Dalam wawancara yang dipandu oleh Pemimpin Redaksi Harian Kompas, Sutta Dharmasaputra ini, lebih lanjut Wapres menyampaikan bahwa bagi umat Islam, perintah untuk melakukan pengecekan ulang informasi sudah tertera di dalam Al-Quran.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Kalau di dalam Islam itu kan memang sudah ada, sudah ada ayatnya ya. Kalau ada berita, itu harus di-tabayyun dulu, dicek dulu. Jangan langsung diterima ya. Sebab mungkin sekali berita itu tidak benar, sehingga kamu membuat pandangan, pendapat, keputusan yang kamu sebenarnya tidak tahu persis, sehingga merugikan orang lain dan nanti kamu akhirnya akan menyesal,” ungkapnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Wapres pun kemudian menjelaskan, bahwa disrupsi informasi tidak hanya terjadi di Indonesia saja, tetapi juga secara global. Untuk itu, diperlukan upaya-upaya edukasi yang bersifat global untuk meredam terjadinya penyebaran informasi yang tidak bertanggung jawab.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Oleh karena itu, memang ada upaya-upaya yang sifatnya nasional, regional, bahkan juga global,” urai Wapres.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Ini memang harus ada strategi yang betul-betul yang tepat untuk menghadapi itu dan diperlukan adanya kewaspadaan dan kesiapan kita,” tambahnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Di sisi lain, Wapres juga menekankan tentang pentingnya penguatan empat bingkai kerukunan agar masyarakat tidak mudah terpecah belah akibat informasi yang menyesatkan, khususnya di Indonesia yang merupakan negara majemuk dengan beragam suku bangsa, agama, dan budaya. Keempat bingkai kerukunan tersebut adalah bingkai politis, bingkai teologis, bingkai sosiologis, dan bingkai yuridis.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Wapres, bingkai politis berarti kerukunan yang dibangun sesuai dengan kesepakatan nasional (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">al mitsaq al wathani</em>), yang diperkuat dengan konsep Pancasila, Undang-Undang Dasar 1945, Negara Kesatuan Republik Indonesia, dan Bhinneka Tunggal Ika.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Sementara, bingkai teologis, Wapres mengatakan, kerukunan yang dibangun sesuai dengan ajaran agama, sehingga jika ada perbedaan, yang dibangun adalah kerukunan bukan narasi konflik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Narasi-narasi yang dalam menyampaikan dakwah, penyiaran agamanya itu harus menghindarkan narasi konflik ini. Ini yang harus kita jaga betul pemahaman ini. Nah ini harus kita upayakan,” tegas Wapres.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Terkait bingkai sosiologis, lanjutnya, kerukunan yang diciptakan sesuai dengan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">local wisdom</em>, yaitu kearifan lokal, seperti di Batak ada <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">dalihan natolu,</em> di Ambon ada <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">pela gandong</em>, dan di Kalimantan ada rumah betang.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Jadi, ini semua sebenarnya di daerah itu ada kearifan lokal yang menjaga kerukunan, dia harus kita hidupkan dan kita bangun, sehingga mereka, masing-masing daerah itu kembali kepada kearifan lokalnya,” imbaunya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Yang terakhir, bingkai yuridis, Wapres menuturkan, kerukunan dibentuk sesuai dengan aturan-aturan sehingga tidak terjadi konflik nasional. Baik kerukunan antar pemeluk agama, antar sesama bangsa, etnis dan lain sebagainya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menutup wawancara, Wapres pun mengimbau kepada para pihak terkait yang memiliki otoritas dalam mengawasi peredaran informasi agar terus bekerja keras untuk dapat mengantisipasi dampak buruk dari disrupsi informasi dan mengedukasi masyarakat untuk dapat menerima serta mencerna informasi dengan baik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Maka itu kita ingin supaya Kominfo (Kementerian Komunikasi dan Informatika), kemudian juga dari kalangan baik intelijen maupun cyber kita itu siap menghadapi setiap [disrupsi informasi yang terjadi], sehingga tidak terjadi penyebaran yang masif. Begitu muncul itu harus sudah bisa diantisipasi, dideteksi. Barangkali memang ini butuh kerja keras, kerja tidak mudah, ya dan kesadaran tinggi,” pungkasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Selain Pemimpin Redaksi Harian Kompas, hadir secara virtual dalam wawancara ini beberapa wartawan Kompas yang bertugas di lingkungan Istana Wakil Presiden diantaranya Suhartono, Antony Lee, Cyprianus Anto Saptowalyono, Mawar Kusuma, dan Nina Susilo.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Sementara Wapres didampingi oleh Kepala Sekretariat Wapres Mohamad Oemar serta para Staf Khusus Wapres Bambang Widianto dan Masduki Baidlowi.</p>','1649428328_0800129f4db890c8ea22.jpeg','2021-05-24','1',1,1,'Berita',74,0,'0',' Ilustrasi',NULL,'0','0'),(4,'Pemerintah Dorong Pemanfaatan 5G untuk Industri Dalam Negeri','pemerintah-dorong-pemanfaatan-5g-untuk-industri-dalam-negeri','  Pemerintah mendorong pemanfaatan teknologi telekomunikasi 5G untuk industri dalam negeri. Direktur Jenderal Industri Logam, Mesin, Alat Transportasi dan Elektronika Kementerian Perindustrian, Taufiek Bawazier menyatakan Kementerian Perindustrian mendorong industri dalam negeri memproduksi perangkat pendukung base station 5G.','   <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo -</span> Pemerintah mendorong pemanfaatan teknologi telekomunikasi 5G untuk industri dalam negeri. Direktur Jenderal Industri Logam, Mesin, Alat Transportasi dan Elektronika Kementerian Perindustrian, Taufiek Bawazier menyatakan Kementerian Perindustrian mendorong industri dalam negeri memproduksi perangkat pendukung <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">base station</em> 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"H<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">al ini sejalan dengan pesan Presiden Joko Widodo, khususnya untuk menunjang produksi industri manufaktur yang menggunakan teknologi IoT. </span><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pengembangan R&D teknologi 5G, akan diarahkan ke Technopark binaan Kemenperin, hasil kerja sama dengan vendor-vendor dalam negeri,\" ujarnya dalam Webinar “5G dan Peran Insinyur Elektro dalam Pengembangan Transformasi Digital Indonesia” dari Jakarta, Sabtu (26/06/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Pemerintah telah meluncurkan “Peta Jalan Making Indonesia 4.0” pada 4 April 2018 lalu sebagai inisiatif untuk percepatan pembangunan industri memasuki era industri 4.0 dengan sasaran utama menjadikan Indonesia sebagai 10 negara ekonomi terbesar dunia berdasarkan PDB pada tahun 2030. </p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Dirjen Taufiek, Kemenperin tengah menyiapkan industri dalam negeri dalam penyediaan perangkat pendukung base station 5G maupun aplikasinya. Sedangkan untuk tahap awal nilai persentase ambang batas minimum TKDN perangkat pengguna (User Equipment) 5G, dapat mengikuti nilai yang berlaku saat ini pada perangkat dengan teknologi 4G/LTE.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Pemerintah telah menetapkan 10 (sepuluh) program prioritas nasional, diantaranya dengan membangun Infrastruktur Digital, dan infrastruktur 5G termasuk di dalamnya untuk dapat mempercepat transformasi digital. Untuk itu dibutuhkan revitalisasi industri manufaktur guna mendukung program tersebut,” jelasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Dirjen Ilmate menyatakan <span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">teknologi 5G memiliki kombinasi antara konektivitas berkecepatan tinggi, latensi yang rendah, dan cakupan yang luas untuk dioptimalkan bagi penerapan industri 4.0. </span><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Sehingga sensor dan penganalisaan data akan menjadi </span><em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">real time</em><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\"> dan tanpa jeda,” tuturnya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain itu, 5G juga membuat pengguna bisa mengontrol lebih banyak perangkat secara remote. Bahkan, 5G dapat membuka lebih banyak ragam <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">use case</em>, peluang bisnis, dan kebermanfaatan bagi masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Di mana kinerja jaringan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">real-time</em> sangat kritis, seperti pada<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\"> remote control</em> alat berat di lingkungan berbahaya, sehingga dapat meningkatkan faktor keselamatan pekerja, dan banyak lainnya,” ungkap Dirjen Taufiek.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Direktur Jenderal Ilmate berharap dengan adanya webinar yang dilaksanakan BKE PII dan IEEE Indonesia Section dapat memberikan wawasan kepada Insinyur Elektro Indonesia untuk bisa memanfaatkan peluang teknologi 5G dalam menunjang Industri 4.0, membangun SDM dan ekosistem untuk mengakomodasi transformasi digital Indonesia.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Webinar yang diselenggarakan Persatuan Insinyur Indonesia) dan IEEE (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Institute of Electrical and Electronics Engineers</em>) Indonesia <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Section</em> khususnya bidang <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Government Relation Chapter</em>, diharapkan dapat menjadi wadah bagi para akademisi untuk bersinergi dalam membangun solusi teknologi berbasis 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain Dirjen Ilmate Kementerian Perindustrian, webinar juga diisi dengan pembicara Kepala Badan Riset dan Inovasi Nasional, LT. Handoko dan Dirjen SDPPI Kementerian Kominfo, Ismail. Hadir pula perwakilan ekosistem 5G antara lain dari Telkomsel, PT. Tata Sarana Mandiri (TSM); ShintaVR; Asosiasi Internet of Things Indonesia (ASIOTI); serta <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Schneider Electric</em>. (hm.ys)</span></p>','1649428444_dc2c821f6881c5bbddec.jpeg','2021-05-24','1',1,1,'Berita',53,0,'0','',NULL,'0',NULL),(5,'Menpora: Persiapan PON XX Berjalan sesuai Rencana','menpora-persiapan-pon-xx-berjalan-sesuai-rencana','   Menteri Pemuda dan Olahraga, Zainudin Amali mengatakan bahwa persiapan fisik dalam penyelenggaraan PON XX, khususnya yang menjadi tanggung jawab Kemenpora telah berjalan sesuai dengan yang direncanakan.','      <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo</span> - Menteri Pemuda dan Olahraga, Zainudin Amali mengatakan bahwa persiapan fisik dalam penyelenggaraan PON XX, khususnya yang menjadi tanggung jawab Kemenpora telah berjalan sesuai dengan yang direncanakan.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Persiapan venue, persiapan tempat penginapan, kemudian transportasi dan berbagai hal itu saya kira sudah berjalan. Mana yang menjadi tanggung jawab pemerintah pusat melalui pendanaan APBN, baik di Kemenpora maupun Kementerian PUPR, Kemkominfo, kemudian Kementerian Perhubungan dan lain-lain, saya kira itu sudah teralokasi,\" kata Zainudin Amali dalam diskusi Forum Merdeka Barat 9 (FMB9) yang mengangkat tema \"Mengintip Kesiapan PON XX Papua\" dari Jakarta, Kamis (24/06/2021).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Menpora, hal yang menjadi tanggung jawab pemerintah daerah, baik provinsi maupun kabupaten dan kota juga sudah siap. Secara keseluruhan, dalam rapat terbatas pada 15 Maret 2021 yang juga dihariri Gubernur Papua, Kemenpora telah memaparkan persiapan PON XX.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Setelah kami memaparkan persiapan, kemudian Bapak Presiden bertanya kepada Gubernur Papua. Pak Gubernur bagaimana, sangat singkat jawaban Pak Gubernur waktu itu bahwa Papua siap menyelenggarakan PON 2021,\" ujar Menpora.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurutnya, kalau ditanya apakah persiapan di lapangannya seperti apa tentu kami berkoordinasi terus. \"Kami bahkan dari Kemenpora menempatkan orang di sana secara bergiliran, kita tugaskan untuk memantau di empat klaster tersebut,\" katanya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menpora memaparkan, pada umumnya untuk pembangunan fisik dalam rangka persiapan PON XX sudah tidak menjadi masalah, termasuk apa yang menjadi tanggung jawab Kemenpora yakni pengadaan beberapa peralatan cabang olahraga (cabor).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Untuk pengadaan peralatan cabor tentunya tidak semuanya ada di Kemenpora, ada juga di provinsi. Kemudian, juga terkait penyelenggaraan, saya yakin akan berjalan sesuai jadwal,\" tegasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menteri Zainudin Amali juga mengingatkan penting persiapan PON XX yang bersifat non fisik. Menurutnya, persiapan-persiapan non fisik seperti juga penting disamping mempersiapkan hal-hal yang bersifat fisik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Menpora, pemain utama dari penyelenggaraan PON ini ini adalah Panitia Besar Pekan Olahraga Nasional (PB PON) yang Ketuanya adalah Gubernur Papua. Kemudian ada sub-sub dari PB PON, ada empat klaster, yakni di Kota Jayapura, Kabupaten Jayapura, Kabupaten Timika, dan Kabupaten Merauke.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Tentu ini harus bisa terkoordinasi dengan baik supaya hajatan besar, hajatan olahraga nasional yang menjadi agenda empat tahunan ini bisa berlangsung dengan baik. sebab kalau tidak terjadi sinkronisasi gerak atau komunikasi ada yang terputus-putus baik antara pemerintah pusat dengan pemerintah propinsi, atau pemerintah provinsi dengan pemerintah kabupaten/kota. Apabila tidak sinkron pasti akan menggangu persiapan. Itu yang paling penting bagi kami. Jadi persiapan-persiapan non fisik seperti ini juga penting disamping kita mempersiapkan hal-hal yang bersifat fisik,\" ujar Menpora.</p>','1649428277_530c62a6d47d3ede979f.jpeg','2021-05-25','1',1,1,'Berita',41,0,'1',' ',NULL,'0',NULL),(6,'Visi dan Misi','visi-dan-misi',NULL,'               <p class=\"MsoNormal\" style=\"line-height:150%\"><b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\">VISI PEMERINTAH DAERAH KABUPATEN LEMBATA</span></b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\"> :<span style=\"color:#777777\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meneguhkan\r\nKabupaten Lembata Sebagai Kota Nyaman Huni&nbsp;dan Pusat Pelayanan Jasa yang\r\nBerdaya Saing Kuat&nbsp;untuk Keberdayaan Masyarakat dengan Berpijak pada Nilai\r\nKeistimewaan</span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\">MISI PEMERINTAH&nbsp;DAERAH KABUPATEN LEMBATA</span></b><span arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt; line-height: 150%;\">&nbsp;:</span><br></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan\r\nkesejahteraan dan keberdayaan masyarakat<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat ekonomi\r\nkerakyatan dan daya saing Kabupaten Lembata<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat moral,\r\netika dan budaya masyarakat Kabupaten Lembata<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan kualitas\r\npendidikan, kesehatan, sosial dan budaya<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat tata kota\r\ndan kelestarian lingkungan<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Membangun sarana\r\nprasarana publik dan permukiman<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan\r\ntatakelola pemerintah yang baik dan bersih</span></p>','1649391138_5a957340d4671f1969a2.png','2021-05-25','1',2,1,'Halaman',593,1,NULL,'',NULL,'0',NULL),(7,'Struktur Organisasi','struktur-organisasi',NULL,'   <p><i>Struktur Organisasi Dinas</i></p>','1660095373_bca7e20fe5a426b3f313.png','2021-05-28','1',0,1,'Halaman',263,1,NULL,'',NULL,'0',NULL),(8,'Tugas Pokok dan Fungsi','tugas-pokok-dan-fungsi',NULL,' <p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34);\"><strong style=\"font-weight: bold;\">Tugas</strong><span style=\"color: rgb(51, 102, 255);\"><strong style=\"font-weight: bold;\"><br></strong></span>Dinas Kelautan dan Perikanan Provinsi Jawa Timur mempunyai tugas membantu Gubernur melaksanakan urusan pemerintahan yang menjadi kewenangan Pemerintah Provinsi di bidang kelautan dan perikanan dan tugas pembantuan.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34);\"><strong style=\"font-weight: bold;\">Fungsi</strong><span style=\"color: rgb(51, 102, 255);\"><strong style=\"font-weight: bold;\"><br></strong></span>Dalam melaksanakan tugas tersebut, Dinas Kelautan dan Perikanan Provinsi Jawa Timur menyelenggarakan fungsi :</p><ul style=\"padding: 0px; color: rgb(34, 34, 34); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\"><li style=\"line-height: 26px; margin-left: 21px;\">perumusan kebijakan di bidang kelautan dan perikanan;</li><li style=\"line-height: 26px; margin-left: 21px;\">pelaksanaan kebijakan di bidang kelautan dan perikanan;</li><li style=\"line-height: 26px; margin-left: 21px;\">pelaksanaan evaluasi dan pelaporan di bidang kelautan dan perikanan;</li><li style=\"line-height: 26px; margin-left: 21px;\">pelaksanaan administrasi dinas di bidang kelautan dan perikanan;</li><li style=\"line-height: 26px; margin-left: 21px;\">pelaksanaan fungsi lain yang diberikan oleh Gubernur terkait dengan tugas dan fungsinya.</li></ul>','1629285661_d1882cee2ead2c2b4418.jpg','2021-05-28','1',0,1,'Halaman',284,0,NULL,'Ini adalah keterangan gambar',NULL,'0',NULL),(9,'Menpora Puji Ketum FPTI Yenny Wahid atas Prestasi Dua Atlet Panjat Tebing Indonesia','menpora-puji-ketum-fpti-yenny-wahid-atas-prestasi-dua-atlet-panjat-tebing-indonesia',' Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali memuji Ketua Umum Federasi Panjat Tebing Indonesia (FPTI) Zannuba Ariffah Chafsoh atau lebih dikenal dengan Yenny Wahid atas kesukesan atlet Indonesia meraih medali emas dan memecahkan rekor pada dalam ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA pada 20 – 30 Mei 2021','  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali memuji Ketua Umum Federasi Panjat Tebing Indonesia (FPTI) Zannuba Ariffah Chafsoh atau lebih dikenal dengan Yenny Wahid atas kesukesan atlet Indonesia meraih medali emas dan memecahkan rekor pada dalam ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA pada 20 – 30 Mei 2021.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya mengapresiasi usaha keras mbak Yenny Wahid dalam memimpin cabang olahraga panjat tebing. Sehingga para atletnya dapat mengharumkan nama bangsa di kancah internasional,” kata Menpora Amali di Jakarta, Minggu (30/5).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menpora Amali mengungkapkan cabang olahraga panjat tebing merupakan salah satu cabang olahraga unggulan dalam Grand Design Olahraga Nasional yang ditargetkan untuk meraih prestasi di setiap olimpiade.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Tangan dingin mbak Yenny sebagai Ketum PB FPTI sudah membuktikan pembinaan atlet yang terencana dan berkesinambungan. Sebagai Menpora Saya sangat terbantu dan berterimakasih kepada beliau,” ujar Menpora Amali.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, dua atlet panjat tebing tanah air yakni Veddriq Leonardo dan Kiromal Katibin memecahkan record dunia untuk kategori nomor speed 15 meter pada ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA, Sabtu (29/5). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq sendiri meraih medali emas usai berhasil mengalahkan Kiromal Katibin pada laga final. Pada final Veddriq Leonardo mencatatkan waktu 5,20 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Tidak hanya itu, record sebelumnya tercipta sejak pada babak penyisihan, Veddriq Leonardo mematahkan rekor sebelumnya yang dibuat atlet Iran, Reza Alipour, pada Piala Dunia 2017 di Nanjing, China. Kala itu catatan terbaik adalah 5,48 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq Leonardo lalu memecahkannya dengan catatan 5,37 detik. Namun kemudian Kiromal Katibin langsung melangkahi rekannya tersebut dengan membuat torehan 5,25 detik. Namun pada final, Veddriq Leonardo membuat catatan apik dengan waktu 5,20 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq yang keluar sebagai pemenang dan berhasil membawa pulang medali emas dari Kejuaraan Dunia Panjang Tebing tersebut. Catatan waktunya yang menyentuh 5,20 detik itu lantas membuatnya menjadi pemegang rekor dunia sebagai yang tercepat menyelesaikan wall 15 meter di nomor speed putra tersebut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Mereka (Veddriq dan Kiromal) melakukannya lagi. Veddric Leonardo mengalahkan rekan senegaranya Kiromal Katibin dan mencatatan lagi rekor dunia di nomor speed putra di Salt Lake City, 5,208 detik,” bunyi keterangan yang dikutip dari akun instagram @ifscclimbing, Sabtu (29/5).(dok)</p>','1649428155_00e0f38eb04f08218555.jpg','2021-05-31','1',4,1,'Berita',46,1,NULL,'',NULL,'0',NULL),(10,'Terinspirasi dari Sang Ibu, Lody Lontoh Jadi Master Aerobik Indonesia','terinspirasi-dari-sang-ibu-lody-lontoh-jadi-master-aerobik-indonesia','Perjalannannya dimulai saat ia masih berusia anak-anak, tepatnya diusia 7 tahun. Diusia itu ia akrab dengan senam aerobik ini. Lody menyampaikan, ketertarikannya untuk lebih mendalami aerobik berasal dari ibu kandungnya, yang merupakan seorang instruktur senam.\"Saya belajar langsung dari mama, saat masih remaja dan hingga sekarang tetap jadi atlet senam aerobik,\" tutur pemuda kelahiran Jakarta ini.','  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Nama Lody Lontoh mungkin sudah tak asing lagi di telinga para penggemar dan pecinta senam aerobik di Indonesia. Ia adalah master aerobiknya Indonesia saat ini. Tapi mungkin tidak semua pecinta olahraga senam ini mengetahui sang master.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Perjalannannya dimulai saat ia masih berusia anak-anak, tepatnya diusia 7 tahun. Diusia itu ia akrab dengan senam aerobik ini. Lody menyampaikan, ketertarikannya untuk lebih mendalami aerobik berasal dari ibu kandungnya, yang merupakan seorang instruktur senam.\"Saya belajar langsung dari mama, saat masih remaja dan hingga sekarang tetap jadi atlet senam aerobik,\" tutur pemuda kelahiran Jakarta ini.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Motivasinya menjadi atlet terbaik mewakili Indonesia di kancah dunia, bahkan sebelum olahraga ini memiliki tempat di hati pecinta aerobik di tanah air. \"Awalnya saya engga mau, tapi mama bilang nanti bisa ikut PON dan SEA Games. Akhirnya, ucapannya seorang ibu adalah doa, dan itu terbukti untuk saya,\" kenangnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Pria yang lahir pada 19 Agustus 1980 ini berhasil mewujudkan mimpinya dan berhasil membawa nama harum Indonesia di berbagai pentas kejuaraan aerobik internasional, segudang prestasipun telah berhasil ia raih.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ia sangat bangga dan bahagia saat Sang Saka Merah-Putih berkibar dan lagu kebangsaan Indonesia Raya berkumandang di negeri orang berkat dirinya dan senam aerobik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Semangat itulah yang menjadikannya belasan tahun terus menggeluti olahraga rekreasi yang menyehatkan ini. \"Saya hampir tak pernah merasa ada duka selama menekuni senam aerobik ini,\" ujar atlet DKI yang turun pertama kali pada PON tahun 2000 lalu.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hingga saat ini kiprah sang master terus berlanjut. Hasilnya pemerintah telah mengapresiasinya dengan menjadinya ASN pelatih di Kementerian Pemuda dan Olahraga (Kemenpora RI). \"Bagi saya menjalani profesi sebagai pesenam aerobik adalah masa paling menyenangkan,\" kata dia.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ia tak pernah berhenti dan terus berupaya berbagi pengalaman untuk lebih mengenalkan senam aerobik ke semua kalangan masyarakat Indonesia dengan menjadi pelatih nasional senam aerobik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Senam aerobik sendiri bisa diartikan, serangkaian gerakan yang dilakukan beriringan dengan irama musik dalam durasi waktu tertentu. Secara umum, senam aerobik adalah olahraga yang bisa meningkatkan fungsi jantung dan pernapasan. Jadi, senam aerobik sangat bermanfaat untuk kesehatan jantung, otak, paru-paru, tubuh, dan pikiran kita. Senam aerobik juga bisa dilakukan untuk menurunkan berat badan. Hal-hal di atas yang membuat senam aerobik banyak digemari dari berbagai kalangan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Lody berharap, kegiatan senam ini bisa bermanfaat bagi masyarakat secara luas. “Saya salut dan bangga. Senam benar-benar sangat bermanfaat, apalagi ditengah situasi pandemi. Mari kita tetap berolahraga dan patuhi protokol kesehatan. Sehat selalu semuanya,” jelasnya.(ben)</p>','1649427751_26586f3cfb36478bd9c1.jpg','2021-05-31','1',5,1,'Berita',82,0,'1','',NULL,'0',NULL),(11,'Jalani Vaksinasi, Pebulutangkis Melati Oktavianti: Rasanya Seperti Digigit Semut','jalani-vaksinasi-pebulutangkis-melati-oktavianti-rasanya-seperti-digigit-semut','Melati Daeva Oktavianti menjadi salah satu atlet yang menjalani vaksinasi di Istora Senayan, Jakarta, Jumat (26/2). Pebulutangkis andalan Indonesia ini pun meyakinkan kepada masyarakat secara luas untuk tidak takut divaksin.','  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Melati Daeva Oktavianti menjadi salah satu atlet yang menjalani vaksinasi di Istora Senayan, Jakarta, Jumat (26/2). Pebulutangkis andalan Indonesia ini pun meyakinkan kepada masyarakat secara luas untuk tidak takut divaksin. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Proses vaksinasi yang dia lakukan ini berjalan dengan lancar. Tidak ada rasa takut. Melati pun menceritakan pengalamannya usai disuntik vaksin. \"Prosesnya menjalani protokol kesehatan. Terus dicek suhu dan lain-lain. Setelahnya disuntik vaksin. Rasanya ketika divaksin seperti digigit semut,\" kata Melati. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Setelah itu, dia merasakan sedikit pegal usai disuntik. Meski begitu, Melati tidak merasakan sakit sama sekali. Dia pun merasa tambah percaya diri usai divaksin. \"Vaksin ini yang pasti bagus ya. Ini penting untuk mencegah. Jangan takut untuk divaksin. Harapan setelah divaksin tentu tambah percaya diri. Merasa lebih sehat, dan siap untuk bertanding,\" jelas Melati. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, Wakil Presiden RI Ma\'ruf Amin yang meninjau langsung pelaksanaan vaksinasi Covid-19 kepada atlet, pelatih, hingga tenaga pendukung menyebut, pelaksanaan vaksinasi untuk para atlet ini diprioritaskan bagi mereka yang akan bertanding dalam kompetisi pada level nasional maupun internasional.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Vaksinasi atlet ini penting, termasuk juga prioritas, terutama mereka yang akan mengikuti beberapa event. Maka, mereka harus kita siapkan supaya fisik mereka baik,\" kata Wapres usai peninjauannya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sementara itu, Menpora Zainudin Amali menjelaskan vaksinasi bagi atlet, pelatih dan tenaga pendukung ini adalah tahap pertama. Ini merupakan hasil kerja sama Kemenpora, Kemenkes, KONI, pimpinan cabang olahraga, hingga stakeholder terkait lainnya </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Kita berharap kegiatan ini dapat berjalan dengan baik dan lancar. Untuk selanjutnya yang didaerah, tentu akan berkoordinasi dengan dinas kesehatan setempat,\" ujarnya.(jef)</p>','1649428092_e00c8a5aadb80a30893c.jpg','2021-05-31','1',5,1,'Berita',77,0,'0','',NULL,'0',NULL),(12,'Raih WTP Untuk Kelima Kalinya, Presiden: Kita Ingin Gunakan Uang Rakyat dengan Baik','raih-wtp-untuk-kelima-kalinya-presiden-kita-ingin-gunakan-uang-rakyat-dengan-baik','Presiden Joko Widodo menerima Laporan Hasil Pemeriksaan (LHP) atas Laporan Keuangan Pemerintah Pusat (LKPP) tahun 2020 dari Badan Pemeriksa Keuangan (BPK). BPK memberikan opini Wajar Tanpa Pengecualian (WTP). Raihan WTP ini merupakan yang kelima didapat secara berturut-turut.',' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Presiden Joko Widodo menerima Laporan Hasil Pemeriksaan (LHP) atas Laporan Keuangan Pemerintah Pusat (LKPP) tahun 2020 dari Badan Pemeriksa Keuangan (BPK). BPK memberikan opini Wajar Tanpa Pengecualian (WTP). Raihan WTP ini merupakan yang kelima didapat secara berturut-turut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Alhamdulillah opininya wajar tanpa pengecualian. WTP merupakan pencapaian yang baik di tahun yang berat, dan ini WTP yang kelima yang diraih pemerintah berturut-turut sejak tahun 2016,” kata Presiden dalam acara LHP atas LKPP tahun 2020 dan Ikhtisar Hasil Pemeriksaan (IHPS) II tahun 2020, serta penyerahan LHP semester II tahun 2020 di Istana Negara, Jakarta, Jumat (25/6). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan ini, Presiden juga mengapresiasi kinerja BPK dengan berbagai keterbatasan aktivitas dan mobilitas ditengah situasi yang sulit akibat pandemi Covid-19. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Predikat WTP bukanlah tujuan akhir karena kita ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transparan dan akuntabel, kualitas belanja semakin baik, makin tepat sasaran, memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat, oleh rakyat,\" jelas Presiden.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Oleh karenanya, Presiden menegaskan bahwa pemerintah akan sangat memperhatikan rekomendasi-rekomendasi BPK dalam mengelola pembiayaan Anggaran Pendapatan dan Belanja Negara (APBN). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Saya minta kepada para menteri, para kepala lembaga, dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindaklanjuti dan diselesaikan,\" imbuhnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan yang sama, Presiden juga mengingatkan semua pihak bahwa pandemi Covid-19 belum berakhir seutuhnya. Seluruh lapisan masyarakat diminta harus tetap waspada.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Situasi luar biasa yang dihadapi bangsa harus direspons dengan kebijakan yang cepat dan tepat, yang membutuhkan kesamaan frekuensi oleh semua pihak, baik di semua tataran lembaga negara dan di seluruh jajaran pemerintah pusat sampai pemerintah daerah.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Sejak pandemi muncul di tahun 2020, kita sudah melakukan langkah-langkah extraordinary, termasuk dengan perubahan APBN kita. Refocusing dan realokasi anggaran di seluruh jenjang pemerintahan dan memberi ruang relaksasi defisit APBN dapat diperlebar diatas 3 persen selama tiga tahun,” pungkas Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ikut hadir mendampingi Presiden Joko Widodo yaitu, Wakil Presiden K.H. Ma’ruf Amin dan Ketua BPK Agung Firman Sampurna. Sementara hadir secara virtual Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali serta jajaran para menteri di Kabinet Indonesia Maju. (jef)</p>','1649428033_c1799af41cd8ab447195.jpeg','2021-06-25','1',1,1,'Berita',29,0,'1','',NULL,'0',NULL),(13,'LKPP 2020 Raih WTP, Ini Harapan Presiden Jokowi kepada Pimpinan Kementerian/Lembaga','lkpp-2020-raih-wtp-ini-harapan-presiden-jokowi-kepada-pimpinan-kementerianlembaga','Presiden Republik Indonesia Joko Widodo (Jokowi) menyampaikan apresiasi dan penghargaan kepada Badan Pemeriksa Keuangan BPK-RI yang telah memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020',' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Presiden Republik Indonesia Joko Widodo (Jokowi) menyampaikan apresiasi dan penghargaan kepada Badan Pemeriksa Keuangan BPK-RI yang telah memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020. BPK menilai LKPP pemerintah telah disajikan secara wajar dalam semua hal yang material sesuai Standar Akuntansi Pemerintahan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya memberikan apresiasi dan penghargaan kepada BPK yang di tengah berbagai keterbatasan aktivitas dan mobilitas di masa pandemi telah melaksanakan pemeriksaan atas LKPP tahun 2020 dengan tepat waktu,” kata Presiden Jokowi dalam sambutannya saat penyerahan LHP LKPP Tahun 2020 dan Ikhtisar Hasil Pemeriksaan Semester (IHPS) II Tahun 2020 dari BPK kepada Presiden Jokowi di Istana Negara, Jumat (25/6) pagi. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">LHP LKPP dan IHPS II Tahun 2020 dihadiri oleh Wakil Presiden Ma’ruf Amin, para menteri koordinator dan pimpinan kementerian termasuk Menteri Pemuda dan Olahraga Zainudin Amali yang hadir secara virtual.“Alhamdulillah opininya adalah Wajar Tanpa Pengecualian (WTP). Ini merupakan pencapaian yang baik di tahun yang berat ini,” tegas Jokowi. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menurut Presiden Jokowi, WTP yang diraih saat ini merupakan yang ke-5 diraih pemerintah secara berturut-turut sejak tahun 2016. Namun presdien menegaskan bahwa predikat WTP bukanlah tujuan akhir.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Karena kita ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transparan dan akuntabel. Kualitas belanja semakin baik, makin tepat sasaran, memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat, oleh rakyat,” harapnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Presiden Jokowi memastikan bahwa pemerintah akan sangat memperhatikan rekomendasi-rekomendasi BPK dalam mengelola pembiayaan APBN. Sehingga dengann defisit anggaran saat ini, Presiden berharap menteri dan kepala lembaga memanfaatkan sumber-sumber pembiayaan yang aman dan dilaksanakan secara responsif mendukung kebijakan Counter-cyclical dan akselerasi pemulihan sosial ekonomi secara hati-hati dan terukur.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kepada para menteri, para kepala lembaga dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindaklanjuti dan diselesaikan,” pinta Presiden Jokowi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Selain itu, Presiden juga mengingatkan bahwa pandemi belum berakhir dan semua harus tetap waspada. “Situasi yang kita hadapi masih dalam situasi extra ordinary yang harus direspon dengan kebijakan yang cepat dan tepat. Membutuhkan kesamaan frekuensi oleh kita semuanya baik di semua tataran lembaga negara dan di seluruh jajaran pemerintah pusat sampai pemerintah daerah,” ujar Jokowi mengingatkan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, Ketua BPK Agung Firman Sampurna menyampaikan bahwa pihaknya memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menurut Agung Firman, pemberian opini WTP didukung oleh pemeriksaan BPK atas 86 Laporan Keuangan Kementerian/Lembaga (LKKL) dan satu Laporan Keuangan Bendahara Umum Negara (LKBUN), termasuk pemeriksaan pada tingkat Kuasa Pengguna Anggaran BUN dan badan usaha operator belanja subsidi. “84 LKKL dan LKBUN mendapat opini WTP, dan 2 KL mendapat opini Wajar Dengan Pengecualian (WDP),\" kata Agung Firman Sampurna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sementara itu, pada pemeriksaan LKPP Tahun 2020, BPK melakukan serangkaian prosedur pemeriksaan terkait pertanggungjawaban pemerintah atas pelaksanaan kebijakan keuangan negara dan langkah-langkah yang diambil pemerintah dalam menangani Covid-19. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hasil pemeriksaan atas LKPP Tahun 2020 mengungkap antara lain mekanisme pelaporan kebijakan keuangan negara dalam penanganan dampak pandemi Covid-19 pada LKPP belum disusun; realisasi insentif dan fasilitas perpajakan dalam penanganan Covid19 dan Pemulihan Ekonomi Nasional (PC-PEN) Tahun 2020 minimal Rp1,69 triliun tidak sesuai ketentuan; pengendalian pelaksanaan belanja program PC-PEN Rp9 triliun pada 10 K/L belum memadai; serta realisasi pengeluaran pembiayaan tahun 2020 Rp28,75 triliun dalam rangka PC-PEN tidak dilakukan bertahap.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam IHPS II Tahun 2020 yang juga diserahkan oleh BPK pada hari ini, memuat ringkasan dari 559 laporan hasil pemeriksaan (LHP) termasuk hasil pemeriksaan atas PC-PEN.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Pemeriksaan atas PC-PEN merupakan respon BPK yang menunjukkan kepedulian BPK, atau BPK hadir dan berperan aktif dalam mengawal pengelolaan dan tanggung jawab keuangan negara yang transparan, akuntabel, dan efektif,\" jelas Ketua BPK.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">IHPS II Tahun 2020 memuat ringkasan dari 28 LHP Keuangan, 254 LHP Kinerja, dan 277 LHP Dengan Tujuan Tertentu (DTT). Dari LHP Kinerja dan DTT tersebut, sebanyak 241 (43%) LHP merupakan hasil pemeriksaan tematik terkait PC-PEN. Alokasi anggaran PC-PEN pada pemerintah pusat, pemda, BI, OJK, LPS, BUMN, BUMD, dan dana hibah Tahun 2020 yang teridentifikasi oleh BPK sebesar Rp933,33 triliun, dengan realisasi Rp597,06 triliun (64%).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">BPK mengapresiasi upaya pemerintah dalam PC-PEN seperti pembentukan Gugus Tugas Penanganan Covid-19, penyusunan regulasi, pelaksanaan refocusing kegiatan dan realokasi anggaran, serta kegiatan pengawasan atas pelaksanaan PC-PEN.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Tanpa mengurangi apresiasi atas upaya keras pemerintah itu, BPK menyimpulkan bahwa efektivitas, transparansi, akuntabilitas dan kepatuhan pengelolaan dan tanggung jawab keuangan negara dalam kondisi darurat pandemi covid-19 belum sepenuhnya dapat tercapai. Karena alokasi anggaran dalam APBN belum teridentifikasi dan kodifikasi secara menyeluruh serta realisasi anggaran PC PEN belum sepenuhnya disalurkan sesuai dengan yang direncanakan,” pungkasnya.(ded)</p>','1649427954_de93dccf8d3260bef391.jpeg','2021-06-25','1',1,1,'Berita',93,0,'1','',NULL,'0',NULL),(14,'Menpora Amali Hadiri Penyampaian LHP LKPP 2020 Secara Virtual','menpora-amali-hadiri-penyampaian-lhp-lkpp-2020-secara-virtual',' Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali menghadiri Laporan Hasil Pemeriksaan atas Laporan Keuangan Pemerintah Pusat (LHP LKPP) dan Ikhtisar Hasil Pemeriksaan Pusat (IHPS) II serta penyerahan LHP Semester II Tahun 2020 secara virtual dari Kantor Kemenpora',' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali menghadiri Laporan Hasil Pemeriksaan atas Laporan Keuangan Pemerintah Pusat (LHP LKPP) dan Ikhtisar Hasil Pemeriksaan Pusat (IHPS) II serta penyerahan LHP Semester II Tahun 2020 secara virtual dari Kantor Kemenpora, Jumat (25/6). Laporan ini dibacakan oleh Ketua Badan Pemeriksa Keuangan (BPK) Agung Firman Sampurna. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Agung menyampaikan,  LHP LKPP dan IHPS II 2020 dilaksanakan dengan semangat akuntabilitas untuk semua. Semangat ini dilandaskan pada komitmen untuk melaksanakan segala sesuatunya dengan cara-cara yang dapat dipertanggung jawabkan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kami apresiasi dan terima kasih yang sebesar-besarnya kepada presiden, wakil presiden, para pimpinan kementerian/lembaga serta seluruh jajaran atas kerja samanya sehingga pemeriksaan atas pertanggung jawaban pelaksanaan APBN dapat terlaksana dengan baik. Kami juga mohon maaf apabila dalam pemeriksaan ada hal-hal yang kurang berkenan,” katanya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Setelah itu, Presiden Joko Widodo memberikan pengarahan langsung dari Istana Negara, Kompleks Istana Kepresidenan, Jakarta. Dalam sambutannya, Presiden mengatakan, pemerintah tetap berkomitmen untuk mempertahankan dan meningkatkan kualitas LKPP. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Alhamdulillah opininya wajar tanpa pengecualian (WTP). WTP merupakan pencapaian yang baik di tahun yang berat dan ini WTP yang ke lima yang diraih pemerintah berturut turut. Saya memberikan apresiasi dan penghargaan kepada BPK yang ditengah keterbatasan aktivitas dan mobilitas ditengah pandemi telah melaksanaan pemeriksaan atas LKPP tahun 2020 dengan tepat waktu,” ujar Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Kepala Negara menerangkan, raihan WTP bukanlah tujuan akhir, karena pemerintah ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transaparan, makin tepat sasaran, serta memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Karena itu pemerintah sangat memperhatikan rekomendasi-rekomendasi BPK dalam pengelolaan pembiayaan APBN. Saya minta kepada para menteri, para kepala lembaga, dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindak lanjuti dan diselesaikan,” pesan Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan ini, Presiden Joko Widodo mengingatkan semua pihak bahwa pandemi Covid-19 belum berakhir seutuhnya. Seluruh lapisan masyarakat diminta harus tetap waspada. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya ingin mengingatkan kita semuanya bahwa pandemi belum berakhir, kita harus tetap waspada dan situasi yang kita hadapi masih dalam situasi extraordinary,” terang Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Untuk itu, Presiden menekankan agar situasi ini harus direspons dengan kebijakan yang cepat dan tepat. Diperlukan adanya kesamaan frekuensi, baik disemua lembaga negara, jajaran pemerintah pusat sampai pemerintah daerah. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Sejak pandemi muncul, kita sudah melakukan langkah-langkah extraordinary termasuk dengan perubahan APBN kita. Refocusing dan realokasi anggaran diseluruh jenjang pemerintahan dan memberi ruang relaksasi APBN dapat diperlebar diatas 3 persen selama tiga tahun,” tegas Presiden. (jef)</p>','1649428562_63cd1f00021540e3b0eb.jpeg','2021-06-25','1',1,1,'Berita',142,0,'1','',NULL,'0',NULL),(15,'Buka Peluang Ekonomi Kreatif dengan Infrastuktur dan Talenta Digital','buka-peluang-ekonomi-kreatif-dengan-infrastuktur-dan-talenta-digital',' Kepala Badan Riset dan Inovasi Nasional LT. Handoko menilai kehadiran infrastruktur 5G dapat membuka peluang ekonomi kreatif berbasis inovasi digital. Menurutnya hal itu bisa diwujudkan dengan memperkuat infrastruktur dan talenta digital.','  <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Jakarta, Kominfo - Kepala Badan Riset dan Inovasi Nasional LT. Handoko menilai kehadiran infrastruktur 5G dapat membuka peluang ekonomi kreatif berbasis inovasi digital. Menurutnya hal itu bisa diwujudkan dengan memperkuat infrastruktur dan talenta digital.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Ekonomi kreatif merupakan proses nilai tambah bersumber dari kreativitas individu yang memiliki pengetahuan, teknologi dan seni-budaya sebagai penghasil barang, jasa, atau karya seni. Jadi, dalam mengantisipasi tantangan dari persaingan ekonomi kreatif yang mengglobal perlu kiranya disiapkan sejumlah strategi. Selain penguatan infrastruktur digital, yang tidak kalah penting adalah penguatan di sisi SDM talenta digital,” ungkapnya dalam Webinar “5G dan Peran Insinyur Elektro dalam Pengembangan Transformasi Digital Indonesia”, dari Jakarta, Sabtu (26/06/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Kepala BRIN menyatakan dalam era ekonomi digital terdapat banyak peluang bisa dihasilkan dan ada sejumlah tantangan yang harus dituntaskan bersama oleh seluruh pemangku kepentingan.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Beberapa hal yang harus diperhatikan, yaitu; penggunaan sumber daya yang lebih efisien, mendorong transparansi finansial, meningkatkan kesejahteraan masyarakat, dan mendorong adanya jejak digital (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital footprint</em>),” paparnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Meski demikian, menurut Handoko ekonomi digital dan teknologi digital bukan merupakan tujuan melainkan perubahan perilaku dan efisiensi proses bisnis yang diharapkan memberikan manfaat besar bagi masyarakat serta pelaku usaha.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Oleh karena itu, Kepala BRIN mengingatkan di dalam era ekonomi digital semua orang akan memiliki kesempatan yang lebih merata dalam perannya terlibat dalam perekonomian. “idak seperti di era ekonomi konvensional. Ekonomi digital dan inovasi digital membuka peluang bagi penciptaan dan juga peningkatan ekonomi kreatif Indonesia secara besar-besaran,” jelasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Salah satu yang disiapkan pemerintah, menurut Handoko dengan memperkuat industri TIK dalam negeri serta adopsi teknologi mutakhir seperti <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Artificial Intelligence</em> (AI), <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Big Data Analytics</em>, dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Internet of Things</em> (IoT). Hal tersebut dilakukan melalui penyelenggaraan tata kelola SDM unggul sehingga inovasi digital dan ekonomi kreatif dapat terus bertumbuh.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Inovasi digital harus terus berjalan paralel seiring perkembangan hadirnya layanan 5G di Indonesia agar use case 5G dapat bernilai manfaat maksimal khususnya bagi masyarakat dan bangsa Indonesia,” tutur Kepala BRIN.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Webinar yang diselenggarakan Persatuan Insinyur Indonesia) dan IEEE (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Institute of Electrical and Electronics Engineers)</em> Indonesia <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Section</em> khususnya bidang <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Government Relation Chapter</em>, diharapkan dapat menjadi wadah bagi para akademisi untuk bersinergi dalam membangun solusi teknologi berbasis 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain Kepala Badan Riset dan Inovasi Nasional, LT. Handoko, hadir sebagai pembicara antara lain Dirjen SDPPI Kominfo, Ismail; Dirjen Ilmate (Industri Logam, Mesin, Alat Transportasi dan Elektronika) Kementerian Perindustrian, Taufiek Bawazier. Hadir pula perwakilan ekosistem 5G antara lain dari Telkomsel, PT. Tata Sarana Mandiri (TSM); ShintaVR; Asosiasi Internet of Things Indonesia (ASIOTI); serta <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Schneider Electric</em>.(hm.ys)</span></p>','1649428629_ebe3cbb1ca13030c101c.jpeg','2021-06-28','1',1,1,'Berita',286,0,'0',' ',NULL,'1',NULL),(16,'Lantik Karo Perencanaan dan Organisasi, Ini Pesan Menpora Amali','lantik-karo-perencanaan-dan-organisasi-ini-pesan-menpora-amali',' Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali melantik Kepala Biro (Karo) Perencanaan dan Organisasi Kemenpora, Sri Wahyuni secara virtual dari Kemenpora, Jumat (16/7). Sejumlah pesan dan harapan disampaikan Menpora Amali agar kinerja Kemenpora terus baik dalam pelantikan yang berjalan khidmat ini.','        <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali melantik Kepala Biro (Karo) Perencanaan dan Organisasi Kemenpora, Sri Wahyuni secara virtual dari Kemenpora, Jumat (16/7). Sejumlah pesan dan harapan disampaikan Menpora Amali agar kinerja Kemenpora terus baik dalam pelantikan yang berjalan khidmat ini. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Hari ini saya secara resmi melantik saudari dalam jabatan baru. Saya percaya saudari mampu melaksanakan tugas dengan baik dan sesuai tanggung jawab yang diberikan. Suasana ini mengharuskan kita melakukan kegiatan dengan baru. Ada yang hadir langsung di Wisma Kemenpora dan saya hadir virtual dari Lantai 10 Kemenpora,” kata Menpora Amali. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menpora Amali mengatakan, pelantikan merupakan hal yang biasa dan lumrah pada lingkungan birokrasi. Kemudian, Menpora Amali meminta agar Sri Wahyuni dapat segera beradaptasi dan konsentrasi dalam menjalankan tugasnya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Ada program prioritas, saya minta betul perencanaan dan pelaksanaannya dilakukan dengan baik. Segera koordinasi dengan pimpinan satuan kerja yang ada. Tidak boleh perencanaan merencanakan sendiri tanpa diskusi dengan pimpinan satuan kerja, begitu juga sebaliknya,” ujarnya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Lebih lanjut, Menpora Amali yakin Sri Wahyuni mampu mengemban tugas baru ini. Melihat kemampuannya, Menpora Amali yakin dan berharap hal yang baik telah dicapai bisa ditingkatkan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kalau lihat pengalamannya, cukup lumayan daya tahan fisiknya. Jaga terus kesehatannya. Sekali lagi selamat kepada Bu Sri Wahyuni atas amanah ini. Mudah-mudahan kerja di Kemenpora dapat terus baik dan optimal,” jelas Menpora Amali. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hadir sebagai saksi dalam pelantikan yaitu Sesmenpora Gatot S. Dewa Broto dan Deputi Pengembangan Pemuda Kemenpora Asrorun Ni’am Sholeh. Seperti diketahui, Sri Wahyuni sebelumnya menjabat sebagai Asisten Deputi Industri dan Promosi Olahraga pada Deputi Bidang Peningkatan Prestasi Olahraga.(jef)</p>','1649427829_79b53cb35750dfca57cd.jpg','2021-07-17','1',1,1,'Berita',412,2,'1','Pelantikan Karo Perencanaan',NULL,'0',NULL),(17,'Pengaruh Kemajuan Teknologi Komunikasi dan Informasi Terhadap Karakter Anak','pengaruh-kemajuan-teknologi-komunikasi-dan-informasi-terhadap-karakter-anak','            Kehidupan manusia yang bermula dari kesederhanaan kini menjadi kehidupan yang bisa dikategorikan sangat modern. Di jaman yang semakin canggihnya teknologi informasi dan komunikasi yang berkembang  saat sekarang, segala sesuatu dapat diselesaikan dengan cara-cara yang praktis.','             <p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Kehidupan manusia yang bermula dari kesederhanaan kini menjadi kehidupan yang bisa dikategorikan sangat modern. Di jaman yang semakin canggihnya teknologi informasi dan komunikasi yang berkembang &nbsp;saat sekarang, segala sesuatu dapat diselesaikan dengan cara-cara yang praktis. Teknologi informasi dan komunikasi adalah sesuatu yang bermanfaat untuk mempermudah semua aspek kehidupan manusia. Dunia informasi saat ini seakan tidak bisa terlepas dari teknologi. Penggunaan teknologi informasi dan komunikasi oleh masyarakat menjadikan dunia teknologi semakin lama semakin canggih.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Dunia informasi saat ini seakan tidak bisa terlepas dari teknologi. Penggunaan teknologi oleh masyarakat menjadikan dunia teknologi semakin lama semakin canggih. Komunikasi yang dulunya memerlukan waktu yang lama dalam penyampaiannya, kini dengan teknologi segalanya menjadi sangat cepat dan seakan tanpa jarak.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Dengan kemajuan teknologi yang begitu pesat ini, pepatah yang menyatakan bahwa“Dunia tak selebar daun kelor” sepantasnya berubah menjadi “Dunia seakan selebar daun kelor”. Hal ini disebabkan karena semakin cepatnya akses informasi dalam kehidupan sehari-hari. Kita bisa mengetahui peristiwa yang sedang terjadi di daerah lain atau bahkan di negara lain, misalnya Amerika Serikat walaupun kita berada di Indonesia.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Salah satunya dalam bidang teknologi komunikasi seperti adanya smartphone dan internet, membuat manusia semakin meningkatkan cara komunikasinya. Berbagai macam media untuk berkomunikasi pun hadir untuk memudahkan manusia berinteraksi. Seiring dengan perkembangan zaman, teknologi internet sudah menjadi kebutuhan bagi masyarakat, hal inilah yang melahirkan media sosial. Media sosial merupakan media online, yaitu media yang hanya ada dengan menggunakan internet dimana para penggunanya bisa menuangkan ide, mengekspresikan diri, dan menggunakan sesuai dengan kebutuhannya. Kehadiran media sosial memberikan kemudahan bagi manusia untuk berkomunikasi dan bersosialisasi.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Menurut penelitian Center of Innovation Policy and Governance (CIPG) yang dirilis pekan lalu, saat ini laju penetrasi internet Indonesia merupakan yang tertinggi di Asia yang kini sudah mencapai 51%.&nbsp;Angka yang lebih fenomenal terlihat dari jumlah pengguna seluler. Di tahun 2016, diprediksi ada sekitar 371,4 juta nomor seluler yang aktif di Indonesia. Jumlah tersebut bahkan lebih besar dari pada proyeksi jumlah penduduk Indonesia yakni 261,89 juta penduduk.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Salah satu aplikasi di media sosial yang saat ini sedang booming dikalangan anak-anak, remaja bahkan orang dewasa yaitu&nbsp;</span><a href=\"https://www.kompasiana.com/tag/tiktok\" style=\"box-sizing: inherit;\">TikTok</a><span style=\"font-size: 16px;\">. TikTok adalah aplikasi buatan dari negeri Tirai Bambu lebih tepatnya Tiongkok, aplikasi yang platformnya khusus video, musik dan Foto, spesifik pada perusahaan ByteDance. Ketenaran dari Tik Tok sendiri telah terbukti dengan bergabung Rich Chigga dalam acara Official Warm Up Party yang diadakan dalam rangka Djakarta Warehouse Project (DWP) ditahun sebelumnya, dengan jumlah penonton yang luar biasa.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Aplikasi ini hampir dengan aplikasi lain, layaknya Musical.ly, Selain itu, bukti boomingnya aplikasi tiktok dilihat dari nilai reviewnya yang sangat tinggi di Play Store maupun App Store yaitu 4,6. Rating yang hampir sempurna, memadukan Artificial Intelligence dan Image Capture. di Google Play atau Play Store rata-rata yang mengomentari aplikasi tiktok ini adalah kaum hawa dan remaja-remaja di bawah umur.</span></font></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Dari penjelasan di atas,saya tidak akan membahas mengenai fitur yang terdapat dalam aplikasi tiktok sendiri, tapi saya akan membahas dampak- dampak yang di hasilkan dari aplikasi tiktok kepada remaja, khusunya dampak teknologi informasi dan komunikasi dari segi positif maupun segi negatif . Dari segi positif sendiri aplikasi tiktok memiliki beberapa manfaat untuk remaja salah satunya yaitu:</span></font></p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.75em; margin-left: 24px; padding: 0px; list-style-position: initial; list-style-image: initial; font-size: 15px;\"><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Sebagai salah satu aplikasi yang dapat mendorong kreativitas seseroang dalam membuat suatu karya.</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Aplikasi untuk mengekspresikan kreativitas khusunya dalam pembuatan video, Aplikasi Tik Tok sendiri merupakan platform untuk membuat video dengan efek spesial dan unik dengan mudah. Tik Tok juga menyuguhkan berbagai macam musik untuk latar video, sehingga penggunanya dapat menciptakan video yang lebih menarik.</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Aplikasi tiktok ini juga berbasis video dan musik, dan dapat melati diri remaja atau anak anak untuk mengasah skill editing video, untuk konten-konten yang lebih bermanfaat.</span></font></li></ol><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Tetapi dari beberapa point positif dari tik tok sendiri, terdapat banyak dampak negatif untuk remaja, sudah banyak artikel yang membahas tentang dampak negatif dari tiktok sendiri sampai kominfo harus memblokir aplikasi tiktok di indonesia, salah satunya segi negatif dari tiktok sendiri adalah</span></font></p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.75em; margin-left: 24px; padding: 0px; list-style-position: initial; list-style-image: initial; font-size: 15px;\"><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Secara tidak langsung, tiktok menjadi penyebab generasi remaja untuk suka bergoyang ria, Apabila anda termasuk seseorang yang sering aktif di Instagram, pastinya anda akan menjumpai beberapa netizen dengan berbagai video yang dibuat dengan menggunakan aplikasi tiktok ini. Ada yang biasa saja, dan ada yang Luar Biasa, luar biasa keterlaluan. Bahkan ada beberapa remaja dan anak-anak bergoyang ria yang tidak wajar.&nbsp;</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Membuat video yang tidak sewajarnya, bahkan tidak hanya remaja saja mereka melibatkan anak-anak kecil dalam pembuatan video tiktok demi respon yang banyak dari netizen , berani bernyanyi lagu dan berakting orang dewasa.&nbsp;</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Apabila ini dianggap sebagai media hiburan, maka Youtube lebih baik. Memang benar, tujuan aplikasi ini plure untuk hiburan, tapi hiburan yang berlebihan juga tidaklah benar. Kita mungkin sudah akrab dengan berbagai berita viral, yang mengheboh alias miris melibatkan aplikasi ini. Sebenarnya kita dapat mengasah kemampuan menjadi video creator langsung dengan aplikasi-aplikasi yang lebih memadai</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Terdapat banyak video yang tidak pantas menjadi contoh yang tidak baik bagi perilaku remaja dan anak jaman sekarang. Mungkin kita juga sudah sama-sama tahu banyaknya video dengan aksi-aksi yang tidak pantas dilakukan penggunanya yang meleceng kepada penistaan agama seperti membuat video berjoged bersama saat melaksanakan sholat. Ironisnya banyak akun yang mengunggah video sejenis tanpa mereka bisa menyadari bahwa video yang mereka tiru itu bukanlah hal yang pantas untuk di tiru yang dapat membuat kenakalan anak jaman sekarang&nbsp;semakin beragam. Dalam hal ini diperlukan peran keluarga dan peran orang tua dalam mendidik anak-anaknya dengan memberikan pengarahan pada anak yang kecanduan tik tok. Belum lagi adanya kasus-kasus lain yang memberikan dampak negatif&nbsp;pada penggunanya karena melakukan aksi yang kurang baik yang pada akhirnya merugikan diri sendiri.</span></font></li><li style=\"box-sizing: inherit; line-height: 1.8;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">Seseorang menjadi terlalu kreatif demi video yang lucu dan menarik sehingga tidak mampu menilai mana yang pantas dan mana yang tidak. Banyak remaja yang memang kreatif dalam membuat video agar bisa mendapat banyak respon dari orang lain. Tapi mereka menjadi seperti tidak berpikir dahulu sebelum merekam apa yang mereka lakukan. Mungkin mereka hanya berpikir bagaimana cara membuat video yang ok, bagus, menarik dan banyak respon dari penonton tanpa peduli dengan apa yang mereka tampilkan itu baik atau buruk untuk orang lain maupun dirinya sendiri.</span></font></li></ol><p style=\"box-sizing: inherit; line-height: 1.8;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px;\">Dari penjelasan di atas kita sudah membahas tentang dampak positif maupun negatif dari aplikasi yang sedang fenomena di indonesia ini yaitu tiktok, meskipun masyarakat berpikir lebih banyak sisi negatifnya dibandingnya positif, tapi kita tidak bisa menyalahkan perkembangan dari teknologi ini. Kembali lagi kepada diri kita sendiri untuk menggunakan teknologi lebih baik dan bijak serta arahan dari orang tua sangatlah amat penting bagi remaja jaman sekarang ini serta penanaman pendidikan agama dan karakter yang baik agar generasi muda Indonesia menjadi generasi yang cerdas dan sehat serta memiliki karakter yang baik</span><font color=\"#000000\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"line-height: 1.8;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 15px; line-height: 1.8;\"></p><p style=\"line-height: 1.8;\"></p><p style=\"box-sizing: inherit; margin: 0px 0px 20px; font-family: Roboto, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; line-height: 1.6;\"><font color=\"#000000\"><span style=\"font-size: 16px;\">.</span></font></p>','1690274601_e67e70d3ccacdc0c476b.png','2021-07-19','1',2,1,'Berita',587,0,'0','Pengaruh Kemajuan Teknologi Komunikasi dan Informasi Terhadap Karakter Anak',NULL,'1','0'),(18,'Syarat dan Kondisi','syarat-dan-kondisi',NULL,'  <h3 style=\"margin-top: 0px; margin-bottom: 15px; font-weight: inherit; line-height: inherit; font-size: 16px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Portal Dinas Kepemudaan, Olahraga dan Kebudayaan&nbsp;</h3><h3 style=\"margin-top: 0px; margin-bottom: 15px; font-weight: inherit; line-height: inherit; font-size: 16px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\"><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\">Dengan menggunakan portal ini, maka anda telah mengerti dan menyetujui seluruh syarat dan kondisi yang berlaku dalam penggunaan Portal&nbsp;<span style=\"font-size: 16px; font-weight: inherit;\">Dinas Kepemudaan, Olahraga dan Kebudayaan, sebagaimana tercantum di bawah ini:</span></p><ul style=\"margin: 10px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Informasi yang diperoleh atau di-download oleh pengguna akan dipergunakan oleh sang pengguna secara bertanggung-jawab. Pengutipan atas sebagian atau seluruh isi portal ini diijinkan dengan menyebutkan sumber-sumber secara lengkap.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Situs web ini dimaksudkan semata-mata untuk keperluan komunikasi publik, serta mendukung penyampaian informasi Dinas Pemuda dan Olahraga. Tidak ada satu bagian pun dalam portal ini yang bertujuan promosi atau merekomendasikan suatu kegiatan dari lembaga atau perorangan lain, kecuali jika kegiatan tersebut berhubungan dengan pelaksanaan tugas Menteri Pemuda dan Olahraga Republik Indonesia.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Setiap isi portal ini dikelola dan diperbaharui oleh Dinas Kepemudaan, Olahraga dan Kebudayaan, atas nama Dinas Pemuda dan Olahraga Kabupaten Lembata. Untuk itu, Dinas Pemuda dan Olahraga Republik Indonesia adalah satu-satunya lembaga yang memiliki hak penuh untuk menambah, mengubah dan mengurangi materi web site sewaktu-waktu sesuai dengan kebutuhan.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Dinas Pemuda dan Olahraga tidak bertanggung-jawab atas materi situs web lembaga-lembaga lain yang di-<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">link</span>&nbsp;oleh Portal kami.&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Link</span>&nbsp;tersebut hanya disediakan untuk mempermudah pengguna memperoleh tambahan informasi dari lembaga-lembaga lain yang punya kaitan dengan dinas kami.</li></ul><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\">Jika anda ingin menyampaikan pertanyaan, kritik, saran dan masukan lainnya agar menghubungi</p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">kami di&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: bolder;\">form&nbsp;</span></span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: bolder;\">Kritik Saran</span></span><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">&nbsp;yang telah disediakan di Portal kami.&nbsp;</span></p></h3>','default.png','2021-07-28','1',0,1,'Halaman',50,0,NULL,NULL,NULL,'0',NULL),(19,'Redaksi','redaksi',NULL,'    <main class=\"maincontent\" style=\"margin-right: 20px; width: 860px; min-width: 0px;\"><div class=\"widsection\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><div class=\"gen-section\" style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><div class=\"gen-content\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5; font-family: inherit; vertical-align: baseline;\"><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Portal Dinas Pemuda dan Olahraga ini dikelola oleh&nbsp;</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Dinas Pemuda dan Olahraga Kabupaten Lembata.</strong></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">&nbsp;</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Penanggung Jawab</strong></p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><i>Kepala Dinas</i><span style=\"font-style: inherit;\"> : Domi Juang, S.H.</span></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">&nbsp;</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Penasehat Redaksi</strong></p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><span style=\"font-style: inherit;\">- </span><i>Sekertaris</i><span style=\"font-style: inherit;\">&nbsp;: Desi Gili</span></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Staf Khusus Bidang Pengembangan dan Prestasi Olahraga</span>&nbsp;: Vian Taum</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Kepala Biro Humas dan Hukum</span>&nbsp;: Deril Taum</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">&nbsp;</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Dewan Redaksi</strong><br>-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Pemimpin Redaksi</span>&nbsp;: Erel</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Wakil Pimpinan Redaksi</span>&nbsp;: Devi</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Redaktur Pelaksana</span>&nbsp;: Vania</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Reporter</span>&nbsp;: Ega, Hosea, Renata</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">-&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Fotografer</span>&nbsp;: Blakataduk, Kim Kom</p></div></div></div></main>','default.png','2021-07-31','1',0,1,'Halaman',29,0,NULL,'','','0',NULL),(21,'Rencana Strategis','rencana-strategis',NULL,'                <p style=\"text-align: center;\"><b>RENCANA STRATEGIS DINAS TAHUN 2019 - 2022</b></p><p style=\"text-align: left;\"><span arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\">Contoh halaman yang disematkan dengan file pdf.</span><br></p><p class=\"MsoListParagraph\" style=\"margin-bottom: 0.0001pt; text-indent: -18pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><!--[if !supportLists]--><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" arial;color:#333333;mso-fareast-language:in\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp; </span></span><!--[endif]--><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Langkah 1 : Tambahkan halaman seperti biasa. </span></b><span style=\"font-size: 12pt;\">Silahkan masukan&nbsp; judul dan isi seperti biasa, dan simpan halaman.</span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom: 0.0001pt; text-indent: -18pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><!--[if !supportLists]--><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" arial;color:#333333;mso-fareast-language:in\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp; </span></span><!--[endif]--><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Langkah </span></b><b><span lang=\"EN-US\" style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-ansi-language:en-us;mso-fareast-language:=\"\" in\"=\"\">2</span></b><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:=\"\" in\"=\"\"> : Sematkan file pdf pada judul halaman dengan icon putih.</span></b></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Pada halaman yang hendak disematkan klik disamping judul untuk menambahkan file PDF.</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\"><br></span></p><p style=\"margin-left: 25px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:12.0pt;line-height:115%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#333333;mso-ansi-language:in;=\"\" mso-fareast-language:in;mso-bidi-language:ar-sa\"=\"\">Halaman yang berhasil disematkan file PDF, iconnya akan berubah menjadi file pdf.</span></p>','default.png','2021-08-18','1',0,1,'Halaman',170,0,NULL,'','1630684760_0cedb3658bbf674bc524.pdf','0',NULL),(28,'Soroti Tubuh Politik Bupati Sunur, Ini Yang DiKatakan Aktivis ARBL','soroti-tubuh-politik-bupati-sunur-ini-yang-dikatakan-aktivis-arbl','       Praesent dui ex, dapibus eget mauris ut, finibus vestibulum enim. Quisque arcu leo, facilisis in fringilla id, luctus in tortor. Nunc vestibulum est quis orci varius viverra. Curabitur dictum volutpat massa vulputate molestie. In at felis ac velit maximus convallis.','                <h4 class=\"mt-0 font-16\"><b>This Week\'s Top Stories</b></h4><p>Dear Lorem Ipsum,</p><p>Praesent dui ex, dapibus eget mauris ut, finibus vestibulum enim. Quisque arcu leo, facilisis in fringilla id, luctus in tortor. Nunc vestibulum est quis orci varius viverra. Curabitur dictum volutpat massa vulputate molestie. In at felis ac velit maximus convallis.</p><p>Sed elementum turpis eu lorem interdum, sed porttitor eros commodo. Nam eu venenatis tortor, id lacinia diam. Sed aliquam in dui et porta. Sed bibendum orci non tincidunt ultrices. Vivamus fringilla, mi lacinia dapibus condimentum, ipsum urna lacinia lacus, vel tincidunt mi nibh sit amet lorem.</p><p>Sincerly, berikut kodenya:</p><p></p><pre class=\"prettyprint\"><p></p><p>&lt;style&gt;\r\n          .pointer {\r\n              cursor: pointer;\r\n          }\r\n      &lt;/style&gt;</p><p>&lt;div class=\"modal-body\"&gt;\r\n                &lt;div class=\"form-group row\"&gt;\r\n                    &lt;img id=\'img_load\' width=\'100%\' src=\'&lt;?= base_url(\'public/img/galeri/foto/\' . $gambar) ?&gt;\'&gt;\r\n                &lt;/div&gt;\r\n                &lt;table class=\"table table-bordered table-hover table-striped\"&gt;\r\n                    &lt;tbody&gt;\r\n                        &lt;tr&gt;\r\n                            &lt;td colspan=\"2\"&gt;&lt;strong&gt;&lt;?= $kategorifoto ?&gt; | &lt;?= $judul ?&gt;&lt;/strong&gt;&lt;/td&gt;\r\n                        &lt;/tr&gt;\r\n                    &lt;/tbody&gt;\r\n                &lt;/table&gt;\r\n            &lt;/div&gt;<br></p><p></p></pre><p></p><div class=\"line number1 index0 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&lt;</code><code class=\"html keyword\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-weight: 700 !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 102,=\"\" 153)=\"\" !important;\"=\"\">pre</code> <code class=\"html color1\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" grey=\"\" !important;\"=\"\">class</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">=</code><code class=\"html string\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 255)=\"\" !important;\"=\"\">\"prettyprint\"</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&gt;</code></div><div class=\"line number1 index0 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\"><br></code></div><div class=\"line number2 index1 alt1\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><style></div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">          .pointer {</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">              cursor: pointer;</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">          }</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">      </style></div></div><div class=\"line number3 index2 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\"><!--</code--><code class=\"html keyword\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-weight: 700 !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 102,=\"\" 153)=\"\" !important;\"=\"\">pre</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&gt;</code></code></div>','1649378212_1331633ba5612595f0b6.png','2021-12-04','1',4,1,'Berita',509,1,'0','Kunjungan Mentri Kominfo',NULL,'1','0'),(29,'Pemerintah Terbitkan Perpres tentang Stranas Percepatan Pembangunan Daerah Tertinggal','pemerintah-terbitkan-perpres-tentang-stranas-percepatan-pembangunan-daerah-tertinggal','   “Strategi Nasional Percepatan Pembangunan Daerah Tertinggal yang selanjutnya disingkat Stranas-PPDT adalah dokumen perencanaan pembangunan daerah tertinggal untuk periode lima tahun yang merupakan penjabaran dari rencana pembangunan jangka menengah nasional,” didefinisikan pada Pasal 1 ayat (1).','          <p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta Pusat, Kominfo -</strong><span>&nbsp;</span>Presiden RI Joko Widodo (Jokowi) telah menandatangani Peraturan Presiden Republik Indonesia (Perpres) Nomor 105 Tahun 2021 tentang Strategi Nasional Percepatan Pembangunan Daerah Tertinggal Tahun 2020-2024 pada tanggal 10 Desember 2021.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Peraturan yang dapat diakses pada laman&nbsp;<a href=\"https://jdih.setkab.go.id/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none; cursor: pointer; text-decoration: none; color: rgb(37, 40, 42);\">JDIH Sekretariat Kabinet</a>&nbsp;ini menindaklanjuti ketentuan Pasal 10 ayat (1)&nbsp;<a href=\"https://jdih.setkab.go.id/PUUdoc/174302/PP0782014.pdf\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none; cursor: pointer; text-decoration: none; color: rgb(37, 40, 42);\">Peraturan Pemerintah (PP) Nomor 78 Tahun 2014</a>&nbsp;tentang Pembangunan Daerah Tertinggal.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">“Strategi Nasional Percepatan Pembangunan Daerah Tertinggal yang selanjutnya disingkat Stranas-PPDT adalah dokumen perencanaan pembangunan daerah tertinggal untuk periode lima tahun yang merupakan penjabaran dari rencana pembangunan jangka menengah nasional,” didefinisikan pada Pasal 1 ayat (1).</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Stranas PPDT yang ditetapkan dalam rangka percepatan pembangunan daerah tertinggal secara nasional ini memuat: (1) isu, kebijakan, dan sasaran PPDT; (2) strategi PPDT; (3) program-kegiatan strategis PPDT; dan (4) strategi pembinaan daerah tertinggal terentaskan.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">“Penyusunan Stranas-PPDT Tahun 2020-2024 dimaksudkan untuk mendorong upaya percepatan pembangunan daerah tertinggal menjadi daerah tertinggal entas, secara khusus, terencana, sistematis, dan berkelanjutan,” disebutkan dalam Stranas yang tercantum dalam lampiran Perpres.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Stranas-PPDT Tahun 2020-2024 memiliki empat tujuan. Pertama, mempercepat pengurangan kesenjangan antardaerah dalam menjamin terwujudnya pemerataan dan keadilan pembangunan nasional. Kedua, mempercepat terpenuhinya kebutuhan dasar serta sarana-prasarana dasar daerah tertinggal. Ketiga, meningkatkan koordinasi, integrasi, dan sinkronisasi antara pusat dan daerah dalam perencanaan, pendanaan dan pembiayaan, pelaksanaan, pengendalian, dan evaluasi. Keempat, menjamin terselenggaranya operasionalisasi kebijakan PPDT.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Adapun operasionalisasi kebijakan percepatan pembangunan daerah tertinggal yang dimaksud meliputi tiga hal. Pertama, memberikan pedoman tentang upaya-upaya strategis dan afirmasi yang perlu dilakukan oleh kementerian, lembaga, pemerintah daerah provinsi dan pemerintah daerah kabupaten serta pemangku kepentingan lain dalam menyusun program dan kegiatan PPDT yang berorientasi pada hasil (<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">outcome</em>) dan dampak (<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">impact</em>) bukan hanya keluaran kegiatan (<em style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">output</em>) dengan capaian yang terukur. Kedua, memberikan acuan bagi pemerintah daerah provinsi dan pemerintah daerah kabupaten dalam menyusun Strategi Daerah (Strada)-PPDT Provinsi dan Strada-PPDT Kabupaten. Terakhir, memberikan acuan bagi pemerintah daerah provinsi dan pemerintah daerah kabupaten dalam menyusun Rencana Aksi Daerah Percepatan Pembangunan Daerah Tertinggal (RAD-PPDT) Provinsi dan Kabupaten.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Strategi PPDT yang tercantum dalam BAB III Stranas meliputi integrasi PPDT serta strategi yang disusun berdasarkan wilayah, yaitu Papua, Maluku, Nusa Tenggara, Sulawesi, dan Sumatra. Sedangkan program-kegiatan strategis PPDT yang tercantum dalam BAB IV meliputi program-kegiatan strategis kementerian/lembaga mendukung PPDT serta program-kegiatan strategis untuk masing-masing wilayah, yaitu Papua, Maluku, Nusa Tenggara, Sulawesi, dan Sumatra.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Sebagaimana ditegaskan pada Perpres 105/2021, Stranas-PPDT dilaksanakan oleh menteri yang menyelenggarakan urusan pemerintahan di bidang pembangunan daerah tertinggal (PDT), menteri/pimpinan lembaga, gubernur, dan bupati sesuai dengan kewenangannya serta dikoordinasikan oleh menteri yang menyelenggarakan urusan pemerintahan di bidang PDT.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">“Pelaksanaan Stranas-PPDT sebagaimana dimaksud didukung oleh pelaku usaha, masyarakat, dan pemangku kepentingan lainnya,” ditegaskan pada Pasal 3 ayat (2).</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Selanjutnya, ditegaskan pada Pasal 4, para kepala daerah menetapkan Strada-PPDT dengan ketentuan gubernur menetapkan Strada-PPDT Provinsi yang merupakan penjabaran dari rencana pembangunan jangka menengah daerah (RPJMD) provinsi dan memperhatikan Stranas-PPDT. Sedangkan, bupati menetapkan Strada-PPDT Kabupaten yang merupakan penjabaran dari RPJMD kabupaten dan memperhatikan Strada-PPDT Provinsi dan Stranas-PPDT.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pemantauan dan evaluasi terhadap tingkat capaian Strada dan Stranas-PPDT dilaksanakan oleh bupati, gubernur, dan menteri sesuai dengan ketentuan peraturan peraturan perundang-undangan dan hasilnya dilaporkan kepada Presiden.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">“Berdasarkan hasil pemantauan dan evaluasi, terhadap daerah tertinggal yang telah terentaskan dari status daerah tertinggal diberikan pembinaan oleh menteri (yang menyelenggarakan urusan pemerintahan di bidang pembangunan daerah tertinggal) paling lama selama tiga tahun setelah terentaskan,” bunyi Pasal 6 ayat (1).</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Adapun ketentuan lebih lanjut mengenai pembinaan daerah tertinggal yang telah terentaskan diatur dengan peraturan menteri.</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Berikut daftar kabupaten tertinggal tahun 2020-2024 yang tercantum Stranas PPDT 2020-204:</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">A. Wilayah Papua (Sebanyak 30 Kabupaten)</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Papua Barat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">1. Kabupaten Teluk Wondama<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">2. Kabupaten Teluk Bintuni<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">3. Kabupaten Sorong Selatan<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">4. Kabupaten Sorong<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">5. Kabupaten Tambrauw<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">6. Kabupaten Maybrat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">7. Kabupaten Manokwari Selatan<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">8. Kabupaten Pegunungan Arfak</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Papua<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">9. Kabupaten Jayawijaya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">10. Kabupaten Nabire<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">11. Kabupaten Paniai<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">12. Kabupaten Puncak Jaya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">13. Kabupaten Boven Digoel<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">14. Kabupaten Mappi<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">15. Kabupaten Asmat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">16. Kabupaten Yahukimo<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">17. Kabupaten Pegunungan Bintang<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">18. Kabupaten Tolikara<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">19. Kabupaten Keerom<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">20. Kabupaten Waropen<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">21. Kabupaten Supiori<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">22. Kabupaten Mamberamo Raya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">23. Kabupaten Nduga<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">24. Kabupaten Lanny Jaya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">25. Kabupaten Mamberamo Tengah<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">26. Kabupaten Yalimo<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">27. Kabupaten Puncak<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">28. Kabupaten Dogiyai<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">29. Kabupaten Intan Jaya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">30. Kabupaten Deiyai<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\"><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">B. Wilayah Maluku (Sebanyak 8 Kabupaten)</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Maluku<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">1. Kabupaten Kepulauan Tanimbar<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">2. Kabupaten Kepulauan Aru<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">3. Kabupaten Seram Bagian Barat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">4. Kabupaten Seram Bagian Timur<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">5. Kabupaten Maluku Barat Daya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">6. Kabupaten Buru Selatan</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Maluku Utara<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">7. Kabupaten Kepulauan Sula<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">8. Kabupaten Pulau Taliabu</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">C. Wilayah Nusa Tenggara (Sebanyak 14 Kabupaten)</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Nusa Tenggara Barat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">1. Kabupaten Lombok Utara</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Nusa Tenggara Timur<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">2. Kabupaten Sumba Barat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">3. Kabupaten Sumba Timur<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">4. Kabupaten Kupang<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">5. Kabupaten Timor Tengah Selatan<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">6. Kabupaten Belu<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">7. Kabupaten Alor<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">8. Kabupaten Lembata<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">9. Kabupaten Rote Ndao<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">10. Kabupaten Sumba Tengah<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">11. Kabupaten Sumba Barat Daya<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">12. Kabupaten Manggarai Timur<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">13. Kabupaten Sabu Raijua<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">14. Kabupaten Malaka</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">D. Wilayah Sulawesi (Sebanyak 3 Kabupaten)</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Sulawesi Tengah<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">1. Kabupaten Donggala<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">2. Kabupaten Tojo Una-una<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">3. Kabupaten Sigi</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">E. Wilayah Sumatra (Sebanyak 7 Kabupaten)</strong></p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Sumatra Utara<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">1. Kabupaten Nias<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">2. Kabupaten Nias Selatan<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">3. Kabupaten Nias Utara<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">4. Kabupaten Nias Barat</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Sumatra Barat<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">5. Kabupaten Kepulauan Mentawai</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Sumatra Selatan<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">6. Kabupaten Musi Rawas Utara</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Provinsi Lampung<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">7. Kabupaten Pesisir Barat</p><p style=\"box-sizing: border-box; margin: 0px 0px -15px; padding: 1em 0px; border: 0px; outline: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline; text-size-adjust: none; color: rgb(51, 51, 51) !important; position: relative; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><a href=\"https://jdih.setkab.go.id/PUUdoc/176582/Salinan_Perpres_Nomor_105_Tahun_2021.pdf\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; background-color: transparent; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none; cursor: pointer; text-decoration: none; color: rgb(37, 40, 42);\">Perpres 105/2021</a>&nbsp;ini mulai berlaku sejak tanggal diundangkan oleh Menteri Hukum dan Hak Asasi Manusia Yasonna H. Laoly&nbsp; tanggal 10 Desember 2021.</p>','1657458917_0eba243894387b3ba136.jpg','2022-07-08','1',1,16,'Berita',300,0,'0','',NULL,'1','0'),(30,'Sejarah','sejarah',NULL,'<p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\"><u style=\"color: var(--colour-primary);\">SEJARAH BERDIRINYA&nbsp;DINAS</u></span></p><p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\">Dinas Pendidikan Kota Yogyakarta berdiri pada tanggal 19 September 1983. Awalnya diberi nama Kantor Departemen Pendidikan dan Kebudayaan Kotamadya Yogyakarta, dipimpin oleh seorang Kepala.</p><p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\">Pada saat itu Kantor Departemen Pendidikan dan Kebudayaan Kotamadya Yogyakarta dibawah koordinasi Kantor Wilayah Departemen Pendidikan dan Kebudayaan Propinsi DIY, mempunyai tugas dan fungsi sebagai pengelola dan pembina pendidikan jenjang TK, SD, SMP, se-Kotamadya Yogyakarta.</p><p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\">Pada tahun 1997 nama Kantor Departemen Pendidikan dan Kebudayaan Kotamadya Yogyakarta diganti namanya menjadi Kantor Departemen Pendidikan Nasional, dengan Kepala Kantor masih dijabat oleh Ir. Markus Sugiharjo.</p><p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\">Sejak tanggal 21 Mei 2001, sesuai Undang undang Nomor 22 Tahun 1999 Tentang Pemerintahan Daerah, setelah otonomi daerah, tugas dan fungsi Kantor Departemen Pendidikan Nasional bertambah sebagai pengelola dan pembina pendidikan jenjang TK, SD, SMP, SMA, dan SMK. Pengelolaan pendidikan untuk jenjang pendidikan dasar dan menengah di kota Yogyakarta sejak tanggal tersebut secara penuh diserahkan dari Pemerintah Pusat (Departemen Pendidikan Nasional) kepada Pemerintah Kota Yogyakarta, dan diganti nama menjadi Dinas Pendidikan dan Pengajaran Kota Yogyakarta, dibawah wewenang Pemerintah Daerah Kota Yogyakarta. Hal ini ditandai dengan pelantikan Kepala Dinas Pendidikan dan Pengajaran Kota Yogyakarta, Drs. Sugito, M.Si. diikuti oleh seluruh pejabat struktural di lingkungan instansi tersebut. Sejak saat itu dimulailah otonomi daerah di seluruh wilayah Indonesia untuk hampir semua sektor penyelenggaraan negara.</p><p style=\"margin-bottom: 10px; color: rgb(119, 119, 119); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\">Sebelum otonomi daerah dilaksanakan, penyelenggaraan pendidikan di kota Yogyakarta hampir semuanya dikelola oleh Pemerintah Pusat melalui Kantor Departemen Pendidikan dan Kebudayaan Kotamadya Yogyakarta yang berdiri melalui Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Tahun 1983. Sebagai Kepala Kandepdikbud Kotamadya Yogyakarta yang pertama adalah Drs. Sukirno (Tahun 1983 sd tahun 1989), setelah pensiun. dilanjutkan secara berturut-turut oleh Drs. Soehardjo (Tahun 1989 sd 1992 ), setelah pension dilanjutkan Drs. Koesdarto Pramono (Tahun 1992 sd 1995 ), kemudian pada tahun1995 beliau dipromosi ke Kantor Wilayah Departemen Pendidikan dan Kebudayaan Provinsi DIY, dilanjutkan oleh Ir. Markus Sugiharjo (Tahun 1995 sd 1998 ). Pada tahun1998 Ir Markus Sugiharjo di promosikan ke Kantor Wilayah Departemen Pendidikan Nasional Provinsi DIY. Pada tahun 1998 dilantik Drs. Bambang Haryanto, M.M sebagai Kepala Kantor Departemen Pendidikan Nasional (Tahun 1998 sd 2000). Pada tahun 2000 dilantik Drs. Sugito, M.Si (Tahun 2000 sd 2004).</p>','1701407841_de1a7abcc5956d9aad3a.png','2022-10-31','1',0,1,'Halaman',2,0,NULL,'',NULL,'0',NULL),(31,'RPJPD','rpjpd',NULL,'   <p style=\"line-height: 1.8;\"><span style=\"color: rgb(39, 48, 68); font-size: 16px;\" open=\"\" sans\";=\"\" font-size:=\"\" 14px;\"=\"\">RPJPD adalah dokumen perencanaan pembangunan daerah periode 20 (dua</span><span style=\"color: rgb(39, 48, 68); font-size: 16px;\" open=\"\" sans\";=\"\" font-size:=\"\" 14px;\"=\"\">puluh) tahun terhitung sejak tahun 2005 sampai dengan tahun 2025, ditetapkan dengan maksud sebagai arah dan acuan pelaku pembangunan daerah untuk mewujudkan cita-cita dan tujuan pembangunan di daerah yang sesuai dengan visi, misi dan arah pembangunan daerah yang lebih efektif, efisien, terpadu, berkesinambungan dan saling melengkapi dalam pola sikap dan tindak bagi pelaku pembangunan.</span></p><p style=\"line-height: 1.8;\"><span style=\"color: rgb(39, 48, 68); font-family: \" open=\"\" sans\";=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"font-size: 16px;\">(Upload RPJPD)</span></span><br></p>','1690626462_9e5642544491d95c09f8.jpg','2022-10-31','1',0,1,'Halaman',33,0,NULL,'','','0',NULL);
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `berita` with 24 row(s)
--

--
-- Table structure for table `berita_komen`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_komen` (
  `beritakomen_id` int NOT NULL AUTO_INCREMENT,
  `berita_id` int DEFAULT NULL,
  `nama_komen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hp_komen` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isi_komen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tanggal_komen` datetime DEFAULT NULL,
  `balas_komen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` int unsigned DEFAULT NULL,
  `sts_komen` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_komen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_balas` datetime DEFAULT NULL,
  PRIMARY KEY (`beritakomen_id`),
  KEY `id` (`id`),
  KEY `berita_id` (`berita_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_komen`
--

LOCK TABLES `berita_komen` WRITE;
/*!40000 ALTER TABLE `berita_komen` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `berita_komen` VALUES (1,28,'Devi Taum','819121','Ini Komentar di soroti tubuh','2021-12-10 00:00:00','@Devi Taum, Terima kasih atas atensinya.',1,'1','devi@yahoo.com','2021-12-15 09:21:07'),(2,17,'Andreas Juang','081981203121','Semoga teknologi memudahkan manusia, dan bukannya menyusahkan.','2021-12-10 21:53:09','Teknologi hakekatnya memudahkan dan semestinya dimanfaatkan untuk kepentingan yang lebih.',1,'1','andreas@juang.com','2021-12-10 21:54:36'),(3,17,'Tukang Iris','081353967028','Semoga teknologi tidak membuat anak melupakan budaya lokal.','2021-12-11 08:05:04','@Tukang Iris, Semoga',1,'1','tukang@iris.com','2022-09-18 13:06:20');
/*!40000 ALTER TABLE `berita_komen` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `berita_komen` with 3 row(s)
--

--
-- Table structure for table `berita_tag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berita_tag` (
  `beritatag_id` int NOT NULL AUTO_INCREMENT,
  `berita_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`beritatag_id`),
  KEY `berita_id` (`berita_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `berita_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita_tag`
--

LOCK TABLES `berita_tag` WRITE;
/*!40000 ALTER TABLE `berita_tag` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `berita_tag` VALUES (1,5,1),(4,15,1),(20,1,1),(21,1,3),(33,3,6),(56,28,1),(59,17,6),(60,29,1),(61,29,6);
/*!40000 ALTER TABLE `berita_tag` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `berita_tag` with 9 row(s)
--

--
-- Table structure for table `bt_bidang`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_bidang` (
  `bidang_id` int NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`bidang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_bidang`
--

LOCK TABLES `bt_bidang` WRITE;
/*!40000 ALTER TABLE `bt_bidang` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `bt_bidang` VALUES (4,'Infrastruktur dan Telematika'),(6,'Persandian');
/*!40000 ALTER TABLE `bt_bidang` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `bt_bidang` with 2 row(s)
--

--
-- Table structure for table `bt_bukutamu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bt_bukutamu` (
  `bukutamu_id` int NOT NULL AUTO_INCREMENT,
  `bidang_id` int DEFAULT NULL,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instansi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`bukutamu_id`),
  KEY `bidang_id` (`bidang_id`),
  CONSTRAINT `bt_bukutamu_ibfk_1` FOREIGN KEY (`bidang_id`) REFERENCES `bt_bidang` (`bidang_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_bukutamu`
--

LOCK TABLES `bt_bukutamu` WRITE;
/*!40000 ALTER TABLE `bt_bukutamu` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `bt_bukutamu` VALUES (1,4,'vian taum','9999','Tuak','Tes saja','0','2023-07-15'),(5,4,'News Members','232','Kominfo','ddsf','0','2023-12-07');
/*!40000 ALTER TABLE `bt_bukutamu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `bt_bukutamu` with 2 row(s)
--

--
-- Table structure for table `cms__grupakses`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms__grupakses` (
  `id_grupakses` int NOT NULL AUTO_INCREMENT,
  `id_grup` int NOT NULL,
  `id_modul` int NOT NULL,
  `akses` tinyint DEFAULT '0',
  `aksesmenu` int DEFAULT '0',
  `tambah` tinyint NOT NULL DEFAULT '0',
  `ubah` tinyint NOT NULL DEFAULT '0',
  `hapus` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_grupakses`),
  KEY `id_grup` (`id_grup`),
  KEY `id_modul` (`id_modul`),
  CONSTRAINT `cms__grupakses_ibfk_2` FOREIGN KEY (`id_modul`) REFERENCES `cms__modul` (`id_modul`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms__grupakses_ibfk_3` FOREIGN KEY (`id_grup`) REFERENCES `cms__usergrup` (`id_grup`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms__grupakses`
--

LOCK TABLES `cms__grupakses` WRITE;
/*!40000 ALTER TABLE `cms__grupakses` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms__grupakses` VALUES (1,1,1,1,0,0,0,0),(2,1,2,1,0,1,1,1),(3,1,3,1,0,1,1,1),(4,1,4,1,0,1,1,1),(5,1,5,1,0,1,1,1),(6,1,6,1,0,1,1,1),(7,1,7,1,0,1,1,1),(8,1,8,1,0,1,1,1),(9,1,9,1,0,1,1,1),(10,1,10,1,0,0,0,0),(11,1,11,1,0,1,1,1),(12,1,12,1,0,1,1,1),(13,1,13,1,0,1,1,1),(15,1,15,1,0,1,1,1),(16,1,16,1,0,1,1,1),(18,1,18,1,0,1,1,1),(20,1,20,1,0,1,1,1),(21,1,21,1,0,1,1,1),(22,1,22,1,0,1,1,1),(23,1,23,1,0,1,1,1),(27,1,27,1,0,1,1,1),(28,1,28,1,0,1,1,1),(29,1,29,1,0,0,0,0),(30,1,30,1,0,1,1,1),(31,1,31,1,0,1,1,1),(33,1,33,1,0,1,1,1),(34,1,34,1,0,1,1,1),(35,1,35,1,0,1,1,1),(36,1,36,1,0,1,1,1),(37,1,37,1,0,1,1,1),(38,1,38,1,0,0,0,0),(39,1,39,1,0,1,1,1),(41,1,41,1,0,1,1,1),(45,1,45,1,1,0,0,0),(46,1,46,1,1,0,0,0),(47,1,47,0,1,0,0,0),(48,1,48,0,1,0,0,0),(51,1,49,0,1,0,0,0),(52,1,50,0,1,0,0,0),(53,1,51,0,1,0,0,0),(54,1,52,1,0,0,0,0),(55,1,53,0,1,0,0,0),(56,1,54,0,1,0,0,0),(57,2,2,1,0,1,1,1),(58,2,3,1,0,1,1,1),(59,2,4,1,0,1,1,1),(62,2,5,1,0,1,1,1),(63,2,6,1,0,1,1,1),(64,2,7,1,0,1,1,1),(65,2,8,1,0,1,1,1),(66,2,9,1,0,1,1,1),(67,2,10,1,0,1,1,1),(68,2,11,1,0,1,1,1),(69,2,12,1,0,1,1,1),(70,2,13,1,0,1,1,1),(71,2,15,1,0,1,1,1),(72,2,16,1,0,1,1,1),(74,2,18,1,0,1,1,1),(76,2,20,1,0,1,1,1),(77,2,21,1,0,1,1,1),(78,2,22,1,0,1,1,1),(80,2,23,1,0,1,1,1),(82,2,27,1,0,1,1,1),(83,2,28,1,0,1,1,1),(84,2,29,3,0,0,0,0),(85,2,31,3,0,0,0,0),(87,2,39,3,0,0,0,0),(89,2,30,3,0,0,0,0),(90,2,52,3,0,0,0,0),(91,2,33,1,0,1,1,1),(92,2,34,3,0,0,0,0),(93,2,35,3,0,0,0,0),(94,2,36,3,0,0,0,0),(95,2,37,3,0,0,0,0),(96,2,38,3,0,0,0,0),(97,2,41,3,0,0,0,0),(101,2,45,0,1,0,0,0),(102,2,46,0,1,0,0,0),(103,2,47,0,1,0,0,0),(104,2,48,0,1,0,0,0),(105,2,49,0,1,0,0,0),(106,2,50,0,1,0,0,0),(107,2,54,0,1,0,0,0),(108,2,51,0,0,0,0,0),(109,2,53,0,0,0,0,0),(110,3,2,2,0,1,1,1),(111,3,3,3,0,0,0,0),(112,3,4,3,0,0,0,0),(115,3,5,2,0,1,1,1),(116,3,6,2,0,1,1,1),(117,3,7,2,0,1,1,1),(118,3,8,2,0,1,1,1),(119,3,9,3,0,0,0,0),(120,3,10,3,0,0,0,0),(121,3,11,3,0,0,0,0),(122,3,12,3,0,0,0,0),(123,3,13,3,0,0,0,0),(124,3,15,3,0,0,0,0),(125,3,16,2,0,0,0,0),(127,3,18,2,0,0,0,0),(129,3,20,3,0,0,0,0),(130,3,21,3,0,0,0,0),(131,3,22,3,0,0,0,0),(133,3,23,3,0,0,0,0),(135,3,27,2,0,1,1,1),(136,3,28,3,0,0,0,0),(137,3,29,3,0,0,0,0),(138,3,31,3,0,0,0,0),(140,3,39,3,0,0,0,0),(142,3,30,3,0,0,0,0),(143,3,52,3,0,0,0,0),(144,3,33,3,0,0,0,0),(145,3,34,3,0,0,0,0),(146,3,35,3,0,0,0,0),(147,3,36,3,0,0,0,0),(148,3,37,3,0,0,0,0),(149,3,38,3,0,0,0,0),(150,3,41,3,0,0,0,0),(154,3,45,0,1,0,0,0),(155,3,46,0,1,0,0,0),(156,3,47,0,0,0,0,0),(157,3,48,0,1,0,0,0),(158,3,49,0,0,0,0,0),(159,3,50,0,1,0,0,0),(160,3,54,0,0,0,0,0),(161,3,51,0,0,0,0,0),(162,3,53,0,0,0,0,0),(163,1,55,1,0,1,1,1),(164,2,55,3,0,0,0,0),(165,3,55,3,0,0,0,0),(166,1,57,1,0,1,1,1),(167,1,58,1,0,1,1,1),(259,1,62,1,0,1,1,1),(260,1,63,1,0,1,1,1),(261,1,64,1,0,1,1,1);
/*!40000 ALTER TABLE `cms__grupakses` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms__grupakses` with 135 row(s)
--

--
-- Table structure for table `cms__modpublic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms__modpublic` (
  `id_modpublic` int NOT NULL AUTO_INCREMENT,
  `modpublic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stsmod` int DEFAULT '1',
  PRIMARY KEY (`id_modpublic`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms__modpublic`
--

LOCK TABLES `cms__modpublic` WRITE;
/*!40000 ALTER TABLE `cms__modpublic` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms__modpublic` VALUES (1,'Berita','berita',1),(2,'Data Pegawai','pegawai',1),(3,'Layanan','layanan',1),(4,'Pengumuman','pengumuman',1),(5,'Agenda Kegiatan','agenda',1),(6,'Bank Data','bankdata',1),(7,'Produk Hukum','produkhukum',1),(8,'Info Grafis','infografis',1),(9,'Transparansi','transparansi',1),(10,'Galeri Foto','foto',1),(11,'Galeri Video','video',1),(12,'Survei','survey',1),(13,'Buku Tamu','bukutamu',1),(15,'Masukan dan Saran','masukansaran',1),(16,'E-Book','ebook',1),(17,'Peta Situs','petasitus',1),(18,'Fasilitas','fasilitas',1),(20,'Permohonan Informasi','permohonan-informasi',1);
/*!40000 ALTER TABLE `cms__modpublic` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms__modpublic` with 18 row(s)
--

--
-- Table structure for table `cms__modul`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms__modul` (
  `id_modul` int NOT NULL AUTO_INCREMENT,
  `modul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `urut` int DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `gm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipemn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urlmenu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ikonmn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms__modul`
--

LOCK TABLES `cms__modul` WRITE;
/*!40000 ALTER TABLE `cms__modul` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms__modul` VALUES (1,'Dashboard',1,0,1,1,'-',NULL,NULL,'-'),(2,'Data Berita',1,1,0,0,'Berita','sm','berita/all','mdi mdi-newspaper'),(3,'Kategori Berita',1,2,1,0,'Berita','sm','berita/allkategori','mdi mdi-window-restore'),(4,'Tagar Berita',1,3,1,0,'Berita','sm','berita/alltag','mdi mdi-tag-multiple'),(5,'Data Layanan',1,1,1,0,'Informasi','sm','layanan/all','mdi mdi-teach'),(6,'Data Agenda',1,2,1,0,'Informasi','sm','agenda/all','mdi mdi-timetable'),(7,'Bank Data',1,3,1,0,'Informasi','sm','bankdata/all','mdi mdi-file-multiple'),(8,'Pengumuman',1,4,1,0,'Informasi','sm','pengumuman/all','mdi mdi-bullhorn'),(9,'Produk Hukum',1,5,1,0,'Informasi','sm','produkhukum/all','mdi mdi-scale-balance'),(10,'Sambutan Kepala',1,1,1,0,'Lembaga','sm','sambutan','mdi mdi-voice'),(11,'Data Pegawai',1,2,1,0,'Lembaga','sm','pegawai/all','mdi mdi-folder-account'),(12,'Transparansi',1,3,1,0,'Lembaga','sm','transparansi/list','mdi mdi-chart-arc'),(13,'Fasilitas',1,4,1,0,'Lembaga','sm','fasilitas/list','mdi mdi-folder-star'),(15,'Counter',1,5,1,0,'Lembaga','sm','counter','mdi mdi-chart-timeline'),(16,'Data Foto',1,1,1,0,'Galeri','sm','foto/all','mdi mdi-folder-multiple-image'),(18,'Data Video',1,2,1,0,'Galeri','sm','video/all','mdi mdi-youtube'),(20,'Survei',1,1,1,0,'Interaksi','sm','survey/all','far fa-check-square'),(21,'Jajak Pendapat',1,2,1,0,'Interaksi','sm','poling','mdi mdi-chart-bar-stacked'),(22,'Buku Tamu',1,4,1,0,'Interaksi','sm','bukutamu/list','far fa-comment-dots'),(23,'Masukan Saran',1,3,1,0,'Interaksi','sm','kritiksaran/list','far fa-comments'),(27,'Ebook',1,1,1,0,'Ebook','sm','ebook/all','mdi mdi-library'),(28,'Kategori Ebook',1,2,1,0,'Ebook','sm','ebook/kategori','mdi mdi-layers'),(29,'Pengaturan',1,1,1,0,'Pengaturan','sm','konfigurasi','mdi mdi-wrench'),(30,'Template',1,4,1,0,'Pengaturan','sm','template','mdi mdi-palette'),(31,'Pengguna',1,2,1,0,'Pengaturan','sm','user','mdi mdi-account-settings-variant'),(33,'Halaman',1,1,1,0,'Setkonten','sm','halaman','mdi mdi mdi-book-open-page-variant'),(34,'Banner',1,2,1,0,'Setkonten','sm','banner','mdi mdi-image-multiple'),(35,'Infografis',1,3,1,0,'Setkonten','sm','infografis/all','mdi mdi-folder-multiple-image mdi-2x'),(36,'Section',1,4,1,0,'Setkonten','sm','section','mdi mdi-vector-arrange-below'),(37,'Link Terkait',1,5,1,0,'Setkonten','sm','linkterkait','mdi mdi-link-variant'),(38,'Modal Popup',1,6,1,0,'Setkonten','sm','penawaran','mdi mdi-camera-metering-center'),(39,'Menu',1,3,1,0,'Pengaturan','sm','menu','mdi mdi-sitemap'),(41,'Unit Kerja',1,7,1,0,'Setkonten','sm','unitkerja','mdi mdi-file-multiple mdi-2x'),(45,'BLOG',1,1,2,1,'Berita','utm',NULL,'mdi mdi-rss'),(46,'INFORMASI',1,2,2,1,'Informasi','utm',NULL,'mdi mdi-inbox-multiple'),(47,'LEMBAGA',1,3,2,1,'Lembaga','utm',NULL,'mdi mdi-bank'),(48,'GALERI',1,4,2,1,'Galeri','utm',NULL,'mdi mdi-folder-multiple-outline'),(49,'INTERAKSI',1,5,2,1,'Interaksi','utm',NULL,'mdi mdi-forum'),(50,'EBOOK',1,6,2,1,'Ebook','utm',NULL,'mdi mdi-book-open-page-variant'),(51,'KONFIGURASI',1,7,2,1,'Pengaturan','utm',NULL,'mdi mdi-cogs mdi-2x'),(52,'Modul CMS',1,5,1,0,'Pengaturan','sm','modul','mdi mdi-compare'),(53,'KELOLA KONTEN',1,8,2,1,'Setkonten','utm',NULL,'mdi mdi-bulletin-board'),(54,'MASTER DATA',1,9,3,1,'Master','utm',NULL,'mdi mdi-database'),(55,'Iklan',1,8,3,0,'Setkonten','sm','iklan','mdi mdi-camera-burst'),(56,'Upgrade CMS',0,6,3,0,'Pengaturan','sm','upgradecms','fas fa-code'),(57,'Tanya Jawab',1,9,3,0,'Setkonten','sm','tanyajawab/list','mdi mdi-comment-question-outline'),(58,'Permintaan Informasi',0,5,3,0,'Interaksi','sm','permintaan-info/list','fab fa-slideshare'),(62,'Cara Peroleh Info',1,1,3,0,'Master','sm','m-caraperoleh_info','mdi mdi-checkbox-multiple-blank-circle-outline'),(63,'Cara Dapatkan Info',1,2,3,0,'Master','sm','m-caradapat_info','mdi mdi-checkbox-multiple-blank-circle-outline'),(64,'Pekerjaan',0,3,3,0,'Master','sm','m-pekerjaan','mdi mdi-checkbox-multiple-blank-circle-outline');
/*!40000 ALTER TABLE `cms__modul` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms__modul` with 50 row(s)
--

--
-- Table structure for table `cms__usergrup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms__usergrup` (
  `id_grup` int NOT NULL AUTO_INCREMENT,
  `nama_grup` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` tinyint NOT NULL DEFAULT '1',
  `ketgrup` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int NOT NULL,
  `sts_menu` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_grup`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms__usergrup`
--

LOCK TABLES `cms__usergrup` WRITE;
/*!40000 ALTER TABLE `cms__usergrup` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms__usergrup` VALUES (1,'Global Administrator',1,'Super User (Akses semua Modul dan Menu)','2021-04-30 17:45:38',NULL,'2021-04-30 17:45:38',0,1),(2,'Editor',2,'Wewenang Pengguna untuk Editor (Akses semua Menu Kecuali Pengaturan)','2022-03-16 09:34:03',NULL,'2022-03-16 09:34:03',0,1),(3,'Author',2,'Wewenang untuk Author, Hanya Mengolah Datanya sendiri.  Menu aktif Berita, Informasi, Galeri & E-book','2022-03-17 00:59:24',NULL,'2022-03-17 00:59:24',0,1);
/*!40000 ALTER TABLE `cms__usergrup` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms__usergrup` with 3 row(s)
--

--
-- Table structure for table `counter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `id_counter` int NOT NULL AUTO_INCREMENT,
  `nm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jm` int DEFAULT NULL,
  `ic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `bgc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#2f79b6',
  PRIMARY KEY (`id_counter`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `counter` VALUES (1,'SEKOLAH DASAR',49090,'fa fa-university','Sekretariat','#','1','#00a7e1'),(2,'SLTP',564,'fas fa-chalkboard-teacher','Sekretariat','#','1','#3ddc97'),(3,'PAUD',331,'fas fa-child','Sekretariat','#','1','#e4cc37'),(4,'PKBM',4312,'fas fa-boxes','Sekretariat','#','1','#f06543');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `counter` with 4 row(s)
--

--
-- Table structure for table `custome__anggota`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custome__anggota` (
  `anggota_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tgl_daftar` date NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nik` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kab` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kec` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rtrw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dok_ktp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`anggota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome__anggota`
--

LOCK TABLES `custome__anggota` WRITE;
/*!40000 ALTER TABLE `custome__anggota` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `custome__anggota` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custome__anggota` with 0 row(s)
--

--
-- Table structure for table `custome__masterdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custome__masterdata` (
  `id_masterdata` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_master` varchar(200) DEFAULT NULL,
  `jns_master` varchar(1) DEFAULT NULL,
  `sts_master` varchar(1) DEFAULT NULL,
  `slug_master` varchar(150) DEFAULT NULL,
  `image_master` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_masterdata`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome__masterdata`
--

LOCK TABLES `custome__masterdata` WRITE;
/*!40000 ALTER TABLE `custome__masterdata` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `custome__masterdata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custome__masterdata` with 0 row(s)
--

--
-- Table structure for table `custome__mohoninfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custome__mohoninfo` (
  `id_mohoninfo` int unsigned NOT NULL AUTO_INCREMENT,
  `nama_pemohon` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat_pemohon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pek_pemohon` int NOT NULL,
  `hp_pemohon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_pemohon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info_ygdibutuhkan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tujuan_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto_ktp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cara_perolehinfo` int NOT NULL,
  `cara_dapatkaninfo` int NOT NULL,
  `tgl_ajuan` datetime NOT NULL,
  `tgl_respon` datetime DEFAULT NULL,
  `respon_balas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` int unsigned DEFAULT NULL,
  `sts_info` tinyint(1) NOT NULL,
  `sts_public` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mohoninfo`),
  KEY `id` (`id`),
  KEY `cara_dapatkaninfo` (`cara_dapatkaninfo`),
  KEY `cara_perolehinfo` (`cara_perolehinfo`),
  KEY `pek_pemohon` (`pek_pemohon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome__mohoninfo`
--

LOCK TABLES `custome__mohoninfo` WRITE;
/*!40000 ALTER TABLE `custome__mohoninfo` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `custome__mohoninfo` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custome__mohoninfo` with 0 row(s)
--

--
-- Table structure for table `custome__opd`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custome__opd` (
  `opd_id` int NOT NULL AUTO_INCREMENT,
  `nama_opd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi_opd` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `singkatan_opd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipe_id` int DEFAULT NULL,
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1',
  PRIMARY KEY (`opd_id`),
  KEY `tipe_id` (`tipe_id`),
  CONSTRAINT `custome__opd_ibfk_1` FOREIGN KEY (`tipe_id`) REFERENCES `custome__opdtipe` (`tipe_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome__opd`
--

LOCK TABLES `custome__opd` WRITE;
/*!40000 ALTER TABLE `custome__opd` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `custome__opd` VALUES (0,'ALL','-','-','-',1,'1'),(1,'DINAS PENDIDIKAN','   Sebuah OPD di Lingkup Pemerintah Daerah Kabupaten Banggai yang Bentuk Berdasarkan SK Bupati Tahun 2002','DIKBUD','Jl. Ahmad Yani No.11, Luwuk, Kabupaten Banggai, Sulawesi Tengah',1,'1'),(2,'DINAS LINGKUNGAN HIDUP',' Dinas Lingkungan HIdup','DLH','Jalan Bukit Halimun, Luwuk, Banggai, Sulawesi Tengah',1,'1'),(3,'DINAS SOSIAL',' Dinas Sosial Kabupaten Banggai ','DINSOS','Jl. Urip Sumoharjo No.15, Karaton, Luwuk, Kabupaten Banggai, Sulawesi Tengah 94711',1,'1'),(4,' DINAS KOMUNIKASI DAN INFORMATIKA ','Dinas Komunikasi dan Informatika','DISKOMINFO','Jl. Urip Sumoharjo No.15, Karaton, Luwuk, Kabupaten Banggai, Sulawesi Tengah',1,'1'),(5,'DINAS PERHUBUNGAN','Dinas Perhubungan atau biasa disingkat Dishub ','DISHUB','Jalan MT Haryono, Luwuk, Banggai, Sulawesi Tengah',1,'1');
/*!40000 ALTER TABLE `custome__opd` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custome__opd` with 6 row(s)
--

--
-- Table structure for table `custome__opdtipe`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custome__opdtipe` (
  `tipe_id` int NOT NULL AUTO_INCREMENT,
  `nama_tipe` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`tipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custome__opdtipe`
--

LOCK TABLES `custome__opdtipe` WRITE;
/*!40000 ALTER TABLE `custome__opdtipe` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `custome__opdtipe` VALUES (1,'DINAS'),(2,'BADAN'),(3,'INSPEKTORAT'),(4,'INSTANSI VERTIKAL');
/*!40000 ALTER TABLE `custome__opdtipe` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `custome__opdtipe` with 4 row(s)
--

--
-- Table structure for table `ebook`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebook` (
  `ebook_id` int NOT NULL AUTO_INCREMENT,
  `kategoriebook_id` int DEFAULT NULL,
  `judul` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fileebook` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penulis` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `j_hal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ebook_id`),
  KEY `kategoriebook_id` (`kategoriebook_id`),
  KEY `id` (`id`),
  CONSTRAINT `ebook_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `ebook_ibfk_2` FOREIGN KEY (`kategoriebook_id`) REFERENCES `kategori_ebook` (`kategoriebook_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebook`
--

LOCK TABLES `ebook` WRITE;
/*!40000 ALTER TABLE `ebook` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `ebook` VALUES (2,1,'Digital Marketing melalui Aplikasi','1639361861_351b4e0a65f86a8c0ba3.jpg','1634212422_40a889d196d4391a76d4.pdf','Usman Camdani','190','2021-10-14',34,'1',1),(5,1,'Mengelola Kualitas Layanan di bidang Telekomunikasi','1639578966_3427d41502e76bb7fb11.jpg','1634288761_8dbbb2854600cb088a00.pdf','Ikatan Bankir Indonesia  ','124','2021-10-15',17,'1',1),(6,3,'Legenda Putri Duyung','1639579019_ea6360db0359f7106061.jpg','1634358817_58dd7a7fdb1651781f28.pdf','Dian K ','102','2021-10-16',25,'1',1),(7,1,'Internet Marketing','1639361251_8c7e8af5a81339c63bf9.png','1639361251_5298acf8cc7605860af8.pdf','James Murdor','122','2021-12-13',17,'1',1),(8,1,'Ebook Author','1639400811_8036ce709ce1978cbe3d.png','1639400811_c09db5abd955a1bf3bc5.pdf','Vian Taum     ','233','2021-12-13',19,'1',14);
/*!40000 ALTER TABLE `ebook` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `ebook` with 5 row(s)
--

--
-- Table structure for table `faq_jawab`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_jawab` (
  `faq_jawabid` int NOT NULL AUTO_INCREMENT,
  `faq_tanyaid` int DEFAULT NULL,
  `faq_jawaban` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sts_jwb` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`faq_jawabid`),
  KEY `faq_tanyaid` (`faq_tanyaid`),
  CONSTRAINT `faq_jawab_ibfk_1` FOREIGN KEY (`faq_tanyaid`) REFERENCES `faq_tanya` (`faq_tanyaid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_jawab`
--

LOCK TABLES `faq_jawab` WRITE;
/*!40000 ALTER TABLE `faq_jawab` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `faq_jawab` VALUES (1,1,'<font color=\"#333333\" face=\"AmazonEmber, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">CMS DataGoe adalah sebuah sistem manajemen konten yang dirancang untuk membantu pengguna dalam membuat, mengelola, dan mengatur konten di situs web atau aplikasi. DataGoe memiliki fitur-fitur yang dirancang khusus untuk pengelolaan data, termasuk pengumpulan, penyimpanan, dan analisis data secara efisien.</span></font><br>',NULL),(3,3,'<div>Untuk menginstal CMS DataGoe, Anda perlu mengunduh paket instalasi dari sumber yang terpercaya. Setelah unduhan selesai, ikuti panduan instalasi yang disediakan. Setelah terinstal, Anda dapat mengakses CMS DataGoe melalui browser web dengan menggunakan URL atau alamat yang ditentukan saat instalasi.</div><div><br></div><div>Setelah masuk ke CMS DataGoe, Anda dapat mulai mengelola konten dan data dengan antarmuka yang telah disediakan. Biasanya, terdapat menu atau panel pengaturan yang memungkinkan Anda untuk membuat, mengedit, dan menghapus konten, serta mengatur pengaturan lainnya sesuai kebutuhan.</div>',NULL),(7,2,' <ol><li>Manajemen konten yang intuitif: DataGoe menyediakan antarmuka pengguna yang mudah digunakan untuk mengelola konten di situs web atau aplikasi.</li><li>Pengelolaan data: CMS ini memungkinkan pengguna untuk mengumpulkan, menyimpan, dan mengatur data dengan mudah. DataGoe juga dilengkapi dengan fitur pencarian yang canggih untuk membantu menemukan data yang dibutuhkan.<br></li><li>Keamanan: Keamanan data merupakan prioritas utama dalam CMS DataGoe. Sistem ini menyediakan lapisan keamanan yang kuat untuk melindungi data dari akses yang tidak sah.<br></li><li>Responsif dan SEO-friendly: CMS DataGoe didesain untuk memberikan tampilan yang responsif di berbagai perangkat dan juga memiliki fitur yang mendukung optimasi mesin pencari (SEO).<br></li></ol>',NULL),(8,4,' <p>CMS Datagoe bersifat Open source dengan syarat dan ketentuan berlaku</p>',NULL);
/*!40000 ALTER TABLE `faq_jawab` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `faq_jawab` with 4 row(s)
--

--
-- Table structure for table `faq_tanya`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_tanya` (
  `faq_tanyaid` int NOT NULL AUTO_INCREMENT,
  `faqtanya` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_faqtanya` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`faq_tanyaid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_tanya`
--

LOCK TABLES `faq_tanya` WRITE;
/*!40000 ALTER TABLE `faq_tanya` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `faq_tanya` VALUES (1,'Apa itu CMS Datagoe?','1'),(2,'Apa saja fitur-fitur utama yang dimiliki oleh CMS DataGoe?','1'),(3,'Bagaimana cara menginstal dan menggunakan CMS DataGoe?','1'),(4,'Apakah CMS DataGoe bersifat open source?','1');
/*!40000 ALTER TABLE `faq_tanya` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `faq_tanya` with 4 row(s)
--

--
-- Table structure for table `fasilitas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fasilitas` (
  `fasilitas_id` int NOT NULL AUTO_INCREMENT,
  `fasilitas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `tipe_fas` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fasilitas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fasilitas`
--

LOCK TABLES `fasilitas` WRITE;
/*!40000 ALTER TABLE `fasilitas` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fasilitas` VALUES (1,'Stadion Utama','1642839353_c1596bffeec6d82ca89f.jpg','Berikut data foto stadion besar','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3947.1369737286846!2d123.4043691143332!3d-8.388185886927594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dab73867f9b5147%3A0xcd1190d849e57905!2sDatagoe%20Software!5e0!3m2!1sid!2sid!4v1623407918344!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','1',0),(2,'Stadion Mini','1689911260_78109ed7ec38ccca789f.png','<p>Coba</p>','','0',0);
/*!40000 ALTER TABLE `fasilitas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fasilitas` with 2 row(s)
--

--
-- Table structure for table `fasilitas_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fasilitas_detail` (
  `fasilitasdetail_id` int NOT NULL AUTO_INCREMENT,
  `fasilitas_id` int DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`fasilitasdetail_id`),
  KEY `fasilitas_id` (`fasilitas_id`),
  CONSTRAINT `fasilitas_detail_ibfk_1` FOREIGN KEY (`fasilitas_id`) REFERENCES `fasilitas` (`fasilitas_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fasilitas_detail`
--

LOCK TABLES `fasilitas_detail` WRITE;
/*!40000 ALTER TABLE `fasilitas_detail` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fasilitas_detail` VALUES (1,1,'1666793399_e5c458ce0d0acdb50ee2.jpg','Tampak Belakang'),(2,1,'1682519094_4ae2ee1d647f08c1fea2.jpg','Tampak depan'),(5,2,'1696732987_3432fe52ba628d85518f.png','Mini 1');
/*!40000 ALTER TABLE `fasilitas_detail` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fasilitas_detail` with 3 row(s)
--

--
-- Table structure for table `foto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `foto_id` int NOT NULL AUTO_INCREMENT,
  `kategorifoto_id` int DEFAULT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `hits` int DEFAULT NULL,
  PRIMARY KEY (`foto_id`),
  KEY `id` (`id`),
  KEY `kategorifoto_id` (`kategorifoto_id`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`kategorifoto_id`) REFERENCES `kategori_foto` (`kategorifoto_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `foto` VALUES (44,1,'Wisma Atlet Kemayoran dan Rusunawa Raih Penghargaan Inovasi Pelayanan Publik Penanganan Covid-19','2021-06-14','1623601134_a4755ab7a88523662a5d.jpg',1,1),(46,1,'CMS Datagoe New Versi','2021-06-14','1623816361_35910235c35789e18949.jpg',1,1),(47,2,'Demo Foto','2021-06-16','1650116579_1b9dd22e99989cd76e14.jpg',1,1),(50,1,'Demo Foto 4','2021-06-16','1650115911_30b8d2e45c439caba8da.jpg',1,1),(51,1,'Demo Foto 2','2021-06-16','1650115989_656fa50360a1157aeddf.jpg',1,1),(52,2,'Demo Foto 2','2021-06-16','1623816515_25de364958d48be7a6ad.jpg',1,1),(57,6,'Expect Nothing','2021-06-16','1623816679_7fb1cfd80ab799fdafe9.png',1,1),(58,7,'Tampilan Baru CMS','2022-04-16','1650116664_2e68aa0d5bf747c2b424.jpg',1,NULL),(59,7,'Konfigurasi CMS','2022-04-16','1650115295_3bd00ce6766779ebb32b.jpg',1,NULL),(60,1,'Lembata','2023-04-25','1682428273_b663e3fd2f73b2634414.jpg',1,NULL);
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `foto` with 10 row(s)
--

--
-- Table structure for table `informasi`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informasi` (
  `informasi_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_informasi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isi_informasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `gambar` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_informasi` date DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '0=Layanan\r\n1=Pengumuman',
  `id` int unsigned DEFAULT NULL,
  `fileunduh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_aktif` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`informasi_id`),
  KEY `id` (`id`),
  CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informasi`
--

LOCK TABLES `informasi` WRITE;
/*!40000 ALTER TABLE `informasi` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `informasi` VALUES (2,'Renstra Dinas Pemuda Olahraga dan Kebudayaan Tahun 2020 - 2021','renstra-dinas-pemuda-olahraga-dan-kebudayaan-tahun-2020-2021',' Rencana strategis Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata Tahun 2020 - 202.','1622784809_6fd7ee491a1ba50ed3aa.jpg','2021-06-02',129,0,1,NULL,NULL),(5,'LKJIP DISPORABUD Tahun 2021','lkjip-disporabud-tahun-2021',' <p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Laporan Kinerja Instansi Pemerintah (</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">LKjIP</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">) merupakan suatu bentuk pertanggungjawaban tentang penyelenggaraan negara yang berdayaguna dan berhasilguna sesuai dengan Instruksi Presiden (Inpres) Nomor 7 tahun 1999 tentang Akuntabilitas Kinerja Instansi Pemerintah dan Surat Edaran Menteri Pendayagunaan Aparatur Negara.</span><br></p>','default.png','2021-06-02',117,0,1,'',NULL),(6,'IKU DISPORABUD Tahun 2021','iku-disporabud-tahun-2021','<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Indikator kinerja utama atau&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">IKU</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;adalah ukuran atau indikator kinerja suatu instansi, utamanya dalam mencapai tujuan dan sasaran tertentu. Setiap lembaga atau instansi pemerintah wajib merumuskan indikator kinerja utama, dan menjadikan hal itu sebagai prioritas utama.</span><br></p>','default.png','2021-06-02',176,0,1,'1622707876_b0c0282580f4b6491c83.pdf',NULL),(8,'Surat Edaran Penyelenggaran Latihan di Masa Pandemi Covid 19','surat-edaran-penyelenggaran-latihan-di-masa-pandemi-covid-19','  <p>Di informasikan untuk setiap pengurus cabang olahraga, untuk tetap mematuhi protokol kesehatan di masa covid 19. Surat lengkap dapat di unduh dibawah.<br></p>','1649395987_d7a90790767459ee4818.jpg','2021-06-04',96,1,1,'',NULL),(9,'Sebaran Data Quisioner Online','sebaran-data-quisioner-online','<p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Titillium Web&quot;, Arial, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(102, 102, 102);\">Sesuai surat dari DISPORABUD Kabupaten Lembata Nomor : 556/1737 tanggal 04 Juni 2021 perihal permintaan sebaran data Quisioner&nbsp; Online, dimohon kepada pengunjung Website DINPORAPAR Kabupaten Purbalingga untuk membantu&nbsp; proses penyebaran dan pengisian Quisioner online melalui Media sosial. Adapun tautan dari quisioner yang akan disebarkan :&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">bit/ly/siapberbagiwisatalagi.</span></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Titillium Web&quot;, Arial, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(102, 102, 102);\">atas kerjasama dari pengunjung website kami sampaikan terima kasih</p>','1649395640_44f0761ca182d8e9a585.jpeg','2021-06-04',117,1,1,'1622789361_38adb5a21a9f05960095.png',NULL),(16,'7 Arahan Presiden','7-arahan-presiden','<p>Arahan Presiden</p>','1701867407_6ceb278eb3b3f7f277fe.jpeg','2023-12-06',10,1,1,NULL,NULL),(17,'Ajakan Kibarkan Bendera','ajakan-kibarkan-bendera','<p>Ayo Kibarkan Bendera<br></p>','1701868341_ba40cc926a8cf305a8a3.jpeg','2023-12-06',15,1,1,NULL,NULL);
/*!40000 ALTER TABLE `informasi` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `informasi` with 7 row(s)
--

--
-- Table structure for table `kategori`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `kategori_id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kategori` VALUES (0,'Hal','Hal'),(1,'Berita Dinas','berita-dinas'),(2,'Artikel','artikel'),(4,'Olahraga','olahraga'),(5,'Inspirasi','inspirasi'),(13,'Internasional','internasional'),(15,'Teknologi Informasi','teknologi-informasi');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kategori` with 7 row(s)
--

--
-- Table structure for table `kategori_ebook`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_ebook` (
  `kategoriebook_id` int NOT NULL AUTO_INCREMENT,
  `kategoriebook_nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategoriebook_slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`kategoriebook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_ebook`
--

LOCK TABLES `kategori_ebook` WRITE;
/*!40000 ALTER TABLE `kategori_ebook` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kategori_ebook` VALUES (1,'Informasi Publik','Informasi-Publik'),(3,'Cerita Rakyat','Cerita-Rakyat');
/*!40000 ALTER TABLE `kategori_ebook` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kategori_ebook` with 2 row(s)
--

--
-- Table structure for table `kategori_foto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_foto` (
  `kategorifoto_id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori_foto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_kategori_foto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tgl_album` date DEFAULT NULL,
  PRIMARY KEY (`kategorifoto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_foto`
--

LOCK TABLES `kategori_foto` WRITE;
/*!40000 ALTER TABLE `kategori_foto` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kategori_foto` VALUES (1,'Kegiatan Rutin','kegiatan-rutin','1642839147_51201b1afce8001fa5b4.jpg','Kegiatan rutin sehari-hari','2021-05-13'),(2,'Bidang Pembangunan','bidang-pembangunan','1642839500_bdf1ff9c580c1419927f.png','Kegiatan pembangunan','2021-11-20'),(6,'Sistem Informasi Administrasi Desa (SIAD)','sistem-informasi-administrasi-desa-siad','1639713786_09acbc84296386269b5e.png','Sistem informasi yang digunakan untuk membantu mengelola data penduduk, umum, pemerintahan, surat menyurat secara profesional.','2021-11-12'),(7,'CMS Datagoe','cms-datagoe','1642820285_05c4c220a8cac10b434c.jpg','Berikut ini Content Management System CMS Datagoe','2022-01-22');
/*!40000 ALTER TABLE `kategori_foto` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kategori_foto` with 4 row(s)
--

--
-- Table structure for table `kategori_video`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_video` (
  `kategorivideo_id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori_video` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_kategori_video` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`kategorivideo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_video`
--

LOCK TABLES `kategori_video` WRITE;
/*!40000 ALTER TABLE `kategori_video` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kategori_video` VALUES (1,'Tutorial SIAD','Tutorial-SIAD'),(9,'Hiburan','Hiburan'),(10,'CMS Datagoe','CMS-Datagoe');
/*!40000 ALTER TABLE `kategori_video` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kategori_video` with 3 row(s)
--

--
-- Table structure for table `kritiksaran`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kritiksaran` (
  `kritiksaran_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `judul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isi_kritik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tanggal` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `no_hpusr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `balas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tgl_bls` date DEFAULT NULL,
  PRIMARY KEY (`kritiksaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kritiksaran`
--

LOCK TABLES `kritiksaran` WRITE;
/*!40000 ALTER TABLE `kritiksaran` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kritiksaran` VALUES (1,'Vian Taum','viantaum17@gmail.com','Permintaan Informasi','Kapan akan dilakukan asistensi untuk semua perangkat desa?','2022-07-21',2,'6281353967028','Tangal 17 Agustus mendatang','2022-07-21'),(2,'Desi Gili','disporabudkablembata@gmail.com','Pengaduan','Pelayanan kurang baik untuk beberapa perangkat. Mohon ditingkatkan pelayanannya.','2022-07-21',2,'0813538909821','Baik. Akan kami tindak lanjuti. Mohon maaf atas ketidaknyamanan nya klik <a href=\"https://cms.datagoe.com\" target=\"_blank\">disini </a>untuk ke web cms datagoe','2022-09-07');
/*!40000 ALTER TABLE `kritiksaran` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kritiksaran` with 2 row(s)
--

--
-- Table structure for table `link_terkait`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_terkait` (
  `id_link` int NOT NULL AUTO_INCREMENT,
  `nama_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_link`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_terkait`
--

LOCK TABLES `link_terkait` WRITE;
/*!40000 ALTER TABLE `link_terkait` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `link_terkait` VALUES (1,'Datagoe Software','https://datagoe.com','1695893274_a4d1a50db5a4c2839baa.png',1),(2,'OSS ','https://oss.go.id/','1682579463_a43db32ae5ae81fc0a2f.png',1),(3,'Humanitarian Journal','https://humanitarianjournal.com','1658449167_7423522e5db112c0f0b3.png',1),(5,'Sicantik Cloud','https://sicantik.go.id/','1682599955_a81d39f9d1c298801b4b.jpg',1),(6,'Kominfo','https://www.kominfo.go.id/','1624851972_da31dfea25f48c80a51d.png',1),(7,'LAPOR.GO.ID','https://lapor.go.id','1681902947_870056369b988232f4ff.png',1);
/*!40000 ALTER TABLE `link_terkait` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `link_terkait` with 6 row(s)
--

--
-- Table structure for table `menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urutan` int DEFAULT NULL,
  `target` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posisi` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `linkexternal` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stsmenu` int DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `menu` VALUES (1,'HOME','/','N','fas fa-home',0,'_parent','0','Y',1),(2,'PROFIL','#','Y','',1,'_parent','0','',1),(3,'BERITA','berita','N','',2,'_parent','0','N',1),(5,'GALERI','#','Y','',4,'_parent','0','',1),(6,'INFORMASI','#','Y','',3,'_parent','0','',1),(13,'Redaksi','page/redaksi',NULL,'',1,'_parent','2','N',1),(14,'Syarat & Kondisi','page/syarat-dan-kondisi',NULL,'',2,'_parent','2','N',1),(15,'Peta Situs','petasitus',NULL,'',3,'_parent','2','N',1),(19,'E-BOOK','ebook','N','mdi mdi-book-open-page-variant',6,'_parent','0','N',1),(21,'INTERAKSI','#','Y','fas fa-hands-helping',5,'_parent','0','N',1),(22,'BERANDA','/',NULL,'fas fa-home',1,'_parent','1','Y',1),(23,'PEGAWAI','pegawai','N','',2,'_parent','1','N',1),(24,'PROFIL DINAS','page/sejarah','N','',3,'_parent','1','N',1),(25,'TRANSPARANSI ANGGARAN','transparansi',NULL,'',4,'_parent','1','N',1);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `menu` with 14 row(s)
--

--
-- Table structure for table `migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `migrations` VALUES (1,'2017-11-20-223112','Myth\\Auth\\Database\\Migrations\\CreateAuthTables','default','Myth\\Auth',1613099987,1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `migrations` with 1 row(s)
--

--
-- Table structure for table `modalpopup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalpopup` (
  `modalpopup_id` int NOT NULL AUTO_INCREMENT,
  `judultawaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isitawaran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `gbrtawaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linktawaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namatombol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_tombol` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`modalpopup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalpopup`
--

LOCK TABLES `modalpopup` WRITE;
/*!40000 ALTER TABLE `modalpopup` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `modalpopup` VALUES (1,'CMS DATAGOE INFO','                                                                         <div><div><div><p style=\"font-size: 14px; font-family: Poppins, sans-serif;\"><span style=\"font-weight: bolder; font-size: 15px;\"><font style=\"\" color=\"#083139\">Versi 4.1.0</font><font color=\"#666666\" style=\"color: rgb(34, 34, 34);\">&nbsp;</font></span><span style=\"font-family: Roboto, sans-serif; font-size: 15px; font-weight: 700;\"><font color=\"#ce0000\">New</font></span><font style=\"color: rgb(34, 34, 34);\"><span style=\"font-size: 15px;\">:</span></font></p><ul><li>Untuk full bundle CMS menggunakan Codeigniter Versi <font color=\"#9c0000\">4.4.3</font>.</li><li>Tambahan Akses modul, Tambah, Edit Hapus untuk Hak Akses.</li><li>Penyesuaian upload file selain image, untuk versi ci terbaru</li><li>Perubahan tampilan pada khusus Tema Desa (all modul).</li><li>Perubahan tampilan menu untuk tema Plus 1.</li><li>Perbaikan bug yang ditemukan<br></li></ul></div><div><div><div style=\"text-align: center; \"><font color=\"#ce0000\" style=\"font-weight: bolder; background-color: rgb(247, 247, 247);\"><br></font></div><div style=\"text-align: center; \"><font style=\"font-weight: bolder; background-color: rgb(247, 247, 247);\"><font color=\"#ce0000\">ANDA DAPAT MENCOBA TEMA LAINNYA YANG TERSEDIA&nbsp; SESUAI SELERA DENGAN CARA KLIK&nbsp;</font><a href=\"https://plus3.datagoe.com/page/menerapkan-tema-pada-cms-datagoe\" target=\"_blank\" style=\"\"><font color=\"#003163\">DISINI</font></a></font><br></div></div></div></div><div style=\"text-align: center; \"><i><font color=\"#397b21\"><b>Informasi lengkap silahkan Kontak WA Kami 081 353 967 028 !!</b></font></i><br></div></div>','1690984941_bcf3035dfd026ccca23a.png','https://cms.datagoe.com','Lihat Semua Tema CMS','1');
/*!40000 ALTER TABLE `modalpopup` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `modalpopup` with 1 row(s)
--

--
-- Table structure for table `pegawai`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `pegawai_id` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pangkat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filetupoksi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publikasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `penelitian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pengabdian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `asal_s1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `asal_s2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `asal_s3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bidang_pakar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bio_singkat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`pegawai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pegawai` VALUES (58,'0912212','Budiman','Waikomo','1985-03-20','L','Islam','II A','Kepala Bagian Hukum','1690369676_688da60ffcf47771cb24.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'9912012','Wahyu Jatmiko','London','1985-03-21','L','Islam','IIC','Kepala Bagian Komunikasi dan informatika','1690369340_66c47e16adf97d609bf9.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'1929411','Vian Taum','Bukit','1985-03-22','L','Katolik','III D','Staf','1690369372_2220ba0b73c87742d128.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'8812012','Fournet Juang','Waikomo','1985-03-23','P','Katolik','IV A','Staf','1690369420_92fab1c305ace6a200b0.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'8200000','Maria Goreti Ose Taum','Waikomo','2020-06-17','P','Katolik','VI A','Pembantu Bendahara I ','1690369570_7367ddd2a6893d8ed3ed.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'892255','Pulcheria Nogo Devi Taum','Waikomo','2023-03-10','P','Katolik','VI A','Kepala Bidang Statistik','1690369601_f0e84ba7bd438ee74ca9.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'1121','Fournet Juang2','Waikomo','1985-03-23','P','Katolik','IV A','Staf','default.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `pegawai` with 7 row(s)
--

--
-- Table structure for table `poling`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poling` (
  `poling_id` int NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` int DEFAULT '0',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Y',
  `id` int unsigned DEFAULT NULL,
  `informasi_id` int unsigned DEFAULT '0',
  PRIMARY KEY (`poling_id`),
  KEY `id` (`id`),
  KEY `informasi_id` (`informasi_id`),
  CONSTRAINT `poling_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poling`
--

LOCK TABLES `poling` WRITE;
/*!40000 ALTER TABLE `poling` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `poling` VALUES (1,'Bagaimanakah menurut Anda dengan Pelayanan dan Kinerja CMS Datagoe ?','Pertanyaan',NULL,'Y',1,0),(2,'Sangat Baik','Jawaban',28,'Y',1,0),(3,'Baik','Jawaban',13,'Y',1,0),(4,'Cukup Baik','Jawaban',9,'Y',1,0),(6,'Belum Tahu','Jawaban',3,'Y',1,0);
/*!40000 ALTER TABLE `poling` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `poling` with 5 row(s)
--

--
-- Table structure for table `produk_hukum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk_hukum` (
  `produk_id` int NOT NULL AUTO_INCREMENT,
  `id` int unsigned DEFAULT NULL,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`produk_id`),
  KEY `id` (`id`),
  CONSTRAINT `produk_hukum_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk_hukum`
--

LOCK TABLES `produk_hukum` WRITE;
/*!40000 ALTER TABLE `produk_hukum` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `produk_hukum` VALUES (8,1,'UNDANG - UNDANG'),(9,1,'PERATURAN GUBERNUR'),(10,1,'PERATURAN DAERAH');
/*!40000 ALTER TABLE `produk_hukum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `produk_hukum` with 3 row(s)
--

--
-- Table structure for table `produk_kathukum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk_kathukum` (
  `kathukum_id` int NOT NULL AUTO_INCREMENT,
  `produk_id` int DEFAULT NULL,
  `nama_kathukum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_kathukum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_kathukum` date DEFAULT NULL,
  `status_kathukum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '0=tidak aktif 1=aktif',
  `skathukum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '1=lanjut, 0=tidaklanjut',
  `hits` int DEFAULT '0',
  PRIMARY KEY (`kathukum_id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `produk_kathukum_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk_hukum` (`produk_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk_kathukum`
--

LOCK TABLES `produk_kathukum` WRITE;
/*!40000 ALTER TABLE `produk_kathukum` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `produk_kathukum` VALUES (22,8,'UNDANG - UNDANG KEARSIPAN','-','2022-01-26','1','1',0),(23,9,'Pergub Perpustakaan 13 Tahun 2019','1643183596_597406ee73d127728042.pdf','2022-01-26','1','0',0),(24,8,'UNDANG - UNDANG KOMUNIKASI','-','2022-01-26','1','1',0),(25,10,'Perda Perpustakaan 12 Tahun 2019','1643185291_d7fc0936dcfa6805ea8b.txt','2022-01-26','1','0',0),(26,10,'Perda Kearsipan 2021','1643185324_ad098a596cdf6315a73d.txt','2022-01-26','1','0',0),(27,10,'Perda 2',NULL,'2023-06-05','1','1',0);
/*!40000 ALTER TABLE `produk_kathukum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `produk_kathukum` with 6 row(s)
--

--
-- Table structure for table `produk_subkathukum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk_subkathukum` (
  `subkathukum_id` int NOT NULL AUTO_INCREMENT,
  `kathukum_id` int DEFAULT NULL,
  `nama_subkathukum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_subkathukum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_subkathukum` date DEFAULT NULL,
  `status_subkathukum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hits` int DEFAULT NULL,
  PRIMARY KEY (`subkathukum_id`),
  KEY `kathukum_id` (`kathukum_id`),
  CONSTRAINT `produk_subkathukum_ibfk_1` FOREIGN KEY (`kathukum_id`) REFERENCES `produk_kathukum` (`kathukum_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk_subkathukum`
--

LOCK TABLES `produk_subkathukum` WRITE;
/*!40000 ALTER TABLE `produk_subkathukum` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `produk_subkathukum` VALUES (15,22,'Undang-undang kearsipan no 22','1643162886_fd2dc6ea89a708c17fc3.pdf','2022-01-26','1',NULL),(16,22,'Undang -Undang No 30','1643184229_2f4a6da77bc16aa72b22.txt','2022-01-26','1',NULL),(17,22,'Undang-undang no 50','1643184306_278b6dfaa0d49f5ae9d8.txt','2022-01-26','1',NULL),(18,24,'Undang-undang Komunikasi no 1','1643184455_f6f959e514f55a33607e.txt','2022-01-26','1',NULL),(19,27,'Isi Perda 2','1685929315_e36643f2f537189f64d4.jpg','2023-06-05','1',NULL);
/*!40000 ALTER TABLE `produk_subkathukum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `produk_subkathukum` with 5 row(s)
--

--
-- Table structure for table `section`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `nama_section` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linksumber` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `section` VALUES (1,'LAYANAN','1655792214_70107ab76c42da98cef0.png','layanan','N'),(2,'SURVEI','1655792202_eca61b1640dcdda50be4.png','survey','N'),(3,'AGENDA','1655791207_4c583efb71366983ae12.png','agenda','N'),(4,'BANK DATA','1655791375_bed701f9e766b52f59ac.png','bankdata','N'),(5,'PEGAWAI','1655791791_3724d6d86a2f9576a145.png','pegawai','N'),(6,'STRUKTUR','1655791700_3a9c6901c6da15da8cb0.png','page/struktur-organisasi','N'),(7,'VISI MISI','1655791541_d700245f9a864657be9d.png','page/visi-dan-misi','N'),(8,'DATAGOE','1655791598_484fe526227a4618c477.png','https://datagoe.com','Y');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `section` with 8 row(s)
--

--
-- Table structure for table `submenu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `submenu_id` int NOT NULL AUTO_INCREMENT,
  `menu_id` int DEFAULT NULL,
  `nama_submenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_submenu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iconsm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urutansm` int DEFAULT NULL,
  `targetsm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkexternalsm` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stssubmenu` int NOT NULL DEFAULT '1',
  `parentsm` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`submenu_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `submenu` VALUES (1,2,'Visi dan Misi','page/visi-dan-misi','mdi mdi-library-books',0,'_parent','N',1,'N'),(2,2,'Struktur Organisasi','page/struktur-organisasi','fa fa-users',1,'_parent','N',1,'N'),(3,2,'Data Pegawai','pegawai','fas fa-user-tie',3,'_parent','N',1,'N'),(4,5,'Foto','foto','far fa-image',1,'_parent','N',1,'N'),(5,5,'Video','video','fas fa-video',2,'_parent','N',1,'N'),(6,6,'Layanan','layanan','fas fa-chalkboard-teacher',1,'_parent','N',1,'N'),(7,6,'Pengumuman','pengumuman','fas fa-bullhorn',2,'_parent','N',1,'N'),(8,6,'Agenda','agenda','far fa-calendar-check',3,'_parent','N',1,'N'),(9,6,'Bank Data','bankdata','fas fa-database',4,'_parent','N',1,'N'),(10,2,'Tugas Pokok dan Fungsi','page/tugas-pokok-dan-fungsi','mdi mdi-buffer',2,'_parent','N',1,'N'),(13,6,'Produk Hukum','produkhukum','fa fa-balance-scale',5,'_parent','N',1,'N'),(14,6,'Infografis','infografis','far fa-images',6,'_parent','N',1,'N'),(16,21,'Survei','survey','far fa-check-square',1,'_parent','N',1,'N'),(17,21,'Buku Tamu','bukutamu','far fa-comment-alt',3,'_parent','N',1,'N'),(19,6,'Transparansi Anggaran','transparansi','fas fa-chart-pie',7,'_parent','N',1,'N'),(20,21,'Masukan Saran','masukansaran','far fa-comments',2,'_parent','N',1,'N'),(21,6,'Informasi Berkala','#','fas fa-expand',8,'_parent','Y',1,'Y');
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `submenu` with 17 row(s)
--

--
-- Table structure for table `subsubmenu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsubmenu` (
  `subsubmenu_id` int NOT NULL AUTO_INCREMENT,
  `submenu_id` int DEFAULT NULL,
  `nama_subsubmenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_subsubmenu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `iconssm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urutanssm` int DEFAULT NULL,
  `targetssm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkexternalssm` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stsssm` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`subsubmenu_id`),
  KEY `submenu_id` (`submenu_id`),
  CONSTRAINT `subsubmenu_ibfk_1` FOREIGN KEY (`submenu_id`) REFERENCES `submenu` (`submenu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsubmenu`
--

LOCK TABLES `subsubmenu` WRITE;
/*!40000 ALTER TABLE `subsubmenu` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `subsubmenu` VALUES (1,21,'Daftar Informasi Publik','page/rpjpd','fas fa-sticky-note',1,'_parent','N','1'),(2,21,'Rencana Strategis','page/rencana-strategis','far fa-sticky-note',2,'_parent','N','1');
/*!40000 ALTER TABLE `subsubmenu` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `subsubmenu` with 2 row(s)
--

--
-- Table structure for table `survey_jawaban`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_jawaban` (
  `jawaban_id` int NOT NULL AUTO_INCREMENT,
  `pertanyaan_id` int DEFAULT NULL,
  `jawaban` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nilai` int DEFAULT '0',
  PRIMARY KEY (`jawaban_id`),
  KEY `pertanyaan_id` (`pertanyaan_id`),
  CONSTRAINT `survey_jawaban_ibfk_1` FOREIGN KEY (`pertanyaan_id`) REFERENCES `survey_pertanyaan` (`pertanyaan_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_jawaban`
--

LOCK TABLES `survey_jawaban` WRITE;
/*!40000 ALTER TABLE `survey_jawaban` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `survey_jawaban` VALUES (1,3,'Tidak sesuai',1),(2,3,'Kurang sesuai',2),(3,3,'Sesuai',3),(6,3,'Sangat Sesuai',4),(7,4,'Tidak Mudah',1),(8,4,'Kurang Mudah',2),(9,4,'Mudah',3),(10,4,'Sangat Mudah',4),(11,5,'Tidak Tepat Waktu',1),(12,5,'Kadang Tepat waktu',2),(13,5,'Banyak Tepat Waktu',3),(14,5,'Selalu Tepat Waktu',4),(15,6,'Sangat Mahal',1),(16,6,'Cukup Mahal',2),(17,6,'Murah',3),(18,6,'Gratis',4),(19,7,'Tidak Sesuai',1),(20,7,'Kadang Sesuai',2),(21,7,'Sesuai',3),(22,7,'Sangat Sesuai',4),(23,8,'Tidak Mampu',1),(24,8,'Kurang Mampu',2),(25,8,'Mampu',3),(26,8,'Sangat Mampu',4),(27,9,'Tidak Baik',1),(28,9,'Kurang Baik',2),(29,9,'Baik',3),(30,9,'Sangat Baik',4),(31,10,'Tidak Sesuai',1),(32,10,'Kurang Sesuai',2),(33,10,'Sesuai',3),(34,10,'Sangat Sesuai',4),(35,11,'Tidak Sopan dan Ramah',1),(36,11,'Kurang Sopan dan Ramah',2),(37,11,'Sopan dan Ramah',3),(38,11,'Sangat Sopan dan Ramah',4);
/*!40000 ALTER TABLE `survey_jawaban` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `survey_jawaban` with 36 row(s)
--

--
-- Table structure for table `survey_pertanyaan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_pertanyaan` (
  `pertanyaan_id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int DEFAULT NULL,
  `pertanyaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`pertanyaan_id`),
  KEY `survey_id` (`survey_id`),
  CONSTRAINT `survey_pertanyaan_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_topik` (`survey_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_pertanyaan`
--

LOCK TABLES `survey_pertanyaan` WRITE;
/*!40000 ALTER TABLE `survey_pertanyaan` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `survey_pertanyaan` VALUES (3,1,'Bagaimana pendapat Saudara tentang kesesuaian persyaratan pelayanan dengan jenis pelayanannya','1'),(4,1,'Bagaimana pemahaman Saudara tentang kemudahan prosedur pelayanan di unit ini.','1'),(5,1,'Bagaimana pendapat saudara tentang kecepatan pelayanan di unit ini','1'),(6,1,'Bagaimana pendapat saudara tentang kewajaran biaya / tarif dalam pelayanan','1'),(7,1,'Bagaimana pendapat saudara tentang kesesuaian hasil pelayanan yang diberikan dan diterima dengan waktu yang ditetapkan','1'),(8,1,'Bagaimana pendapat saudara tentang kemampuan petugas dalam memberi pelayanan','1'),(9,1,'Bagaimana pendapat saudara tentang penanganan pengaduan,saran dan masukan pelayanan yang diberikan','1'),(10,1,'Bagaimana pendapat saudara tentang sarana dan prasarana yang digunakan dalam pelayanan','1'),(11,1,'Bagaimana pendapat saudara tentang perilaku petugas dalam pelayanan terkait kesopanan dan keramahan','1');
/*!40000 ALTER TABLE `survey_pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `survey_pertanyaan` with 9 row(s)
--

--
-- Table structure for table `survey_responden`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_responden` (
  `responden_id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int DEFAULT NULL,
  `nohp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `saran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tanggal` date DEFAULT NULL,
  `jpoin` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`responden_id`),
  KEY `survey_id` (`survey_id`),
  CONSTRAINT `survey_responden_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_topik` (`survey_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_responden`
--

LOCK TABLES `survey_responden` WRITE;
/*!40000 ALTER TABLE `survey_responden` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `survey_responden` VALUES (2,1,'081353967028','Deril Taum','Tingkatkan layanan publik karena masyarakat berhak memperoleh layanan yang maksimal','2023-07-28',29),(3,1,'081353967028','Vian','Plus 2','2023-08-06',22),(7,1,'081353967028','Vian company','Tes','2023-09-27',24),(8,1,'081353967028','Vian','Tes','2023-12-07',28);
/*!40000 ALTER TABLE `survey_responden` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `survey_responden` with 4 row(s)
--

--
-- Table structure for table `survey_topik`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_topik` (
  `survey_id` int NOT NULL AUTO_INCREMENT,
  `id` int unsigned DEFAULT NULL,
  `nama_survey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hits` int DEFAULT '0',
  `skor` int DEFAULT '0',
  `r1_stb` int DEFAULT '0',
  `r2_stb` int DEFAULT '0',
  `r1_kb` int DEFAULT '0',
  `r2_kb` int DEFAULT '0',
  `r1_b` int DEFAULT '0',
  `r2_b` int DEFAULT '0',
  `r1_sb` int DEFAULT '0',
  `r2_sb` int DEFAULT '0',
  `ket_stb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_kb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_sb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`survey_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_topik`
--

LOCK TABLES `survey_topik` WRITE;
/*!40000 ALTER TABLE `survey_topik` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `survey_topik` VALUES (1,1,'Quisioner Survei Kepuasan Pelayanan Masyarakat','1',9,103,9,17,18,26,27,35,36,100,'Sangat Tidak Baik','Kurang Baik','Baik','Sangat Baik'),(3,1,'Bagaimana dengan layanan yang diberikan oleh dinas kami','0',0,0,0,0,0,0,0,0,0,0,'Sangat kurang','Kurang Baik','Baik','Sangat baik');
/*!40000 ALTER TABLE `survey_topik` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `survey_topik` with 2 row(s)
--

--
-- Table structure for table `tag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug_tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tag` VALUES (1,'Olahraga','olahraga'),(2,'Atlet','atlet'),(3,'Kesehatan','kesehatan'),(5,'Taekwondo','taekwondo'),(6,'Teknologi','teknologi');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tag` with 5 row(s)
--

--
-- Table structure for table `tbl_banner`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_banner` (
  `id_banner` int NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posisi` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banner`
--

LOCK TABLES `tbl_banner` WRITE;
/*!40000 ALTER TABLE `tbl_banner` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_banner` VALUES (1,'1638761650_69a7e858b593cba59fb4.jpg','Pesan Presiden RI Jokowi, saat pembukaan HAORNAS ke- 37 pada 9 September lalu',1,NULL,NULL),(2,'1638761743_e37a26ddd2b4a5be19c4.jpeg','Kembangkan Sistem dan big data analytic',1,NULL,NULL),(3,'1638761689_1ee8af85c9b1b4f8ee5b.jpeg','Olahraga bukan hanya urusan individu',1,NULL,NULL),(4,'1638761583_c0d10721fde79e3224a5.jpg','Olahraga adalah ibadah',1,NULL,NULL),(5,'1638761953_37739d0da03652bb60cd.png','Ekonomi Digital Untuk Indonesia Lebih Sejahtera',1,NULL,NULL),(6,'1638761531_e0124927df005023b977.jpeg','Tumbuh Kembang Anak Media Digital',1,NULL,NULL),(7,'1666836763_7199eae813fcf44003c1.jpg','Manfaat Teknologi Digital bagi Pendidikan Anak',1,NULL,NULL),(8,'1649471939_1b1b743dd4ff22cebac8.jpg','Dapatkan full source code',0,'transparansi',NULL),(9,'1666836591_a7f275b099bba1f337dc.png','Efek Negatif Teknologi Digital pada Anak',1,NULL,NULL),(10,'1649379662_4130ce3d17b3e0031b50.jpg','CMS Datagoe',0,'detail/lantik-karo-perencanaan-dan-organisasi-ini-pesan-menpora-amali',NULL),(11,'1649471872_526b659c1c96104221d0.jpg','Banner New',0,'survey',NULL),(14,'1658642029_3da19d397e07fd8c975c.jpeg','Tetap Terapkan Protokol Kesehatan',2,'http://cms.datagoe.com','1'),(15,'1698764589_70f99285a1d3b4b0a43a.jpg','Selamat Hari Pancasila Tahun 2022',2,'#','1'),(16,'1658648273_b04aa409496d163c1684.jpeg','Ucapan Selamat Hari Otonomi Lembata',2,'http://cms.datagoe.com','2'),(17,'1666587280_0cef4b8a5570755da611.jpg','Stop Gratifikasi',2,'http://cms.datagoe.com','3'),(31,'1698764451_47333064c15c2e7399c1.jpg','Ads Google',2,'https://cms.datagoe.com','3'),(34,'1705375012_f17a4a2afdd39b320be1.jpg','Bagian Kanan',2,'https://cms.datagoe.com','4'),(35,'1705378348_0d28d5432e9530b5c467.jpg','Portal layanan 2',2,'https://datagoe.com','4');
/*!40000 ALTER TABLE `tbl_banner` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_banner` with 18 row(s)
--

--
-- Table structure for table `tbl_setaplikasi`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_setaplikasi` (
  `id_setaplikasi` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_telp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kecamatan` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kabupaten` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_sambutan` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nama_pimpinan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jabatan_pimpinan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sambutan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `gbr_sambutan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link_gmap` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sosmed_fb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sosmed_instagram` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sosmed_twiter` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sosmed_youtube` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori_id` int DEFAULT NULL,
  `judul_section` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_section` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_modal` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ck` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_count` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_rt` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_regis` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_web` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_posting` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '0=langsung aktif\r\n1=verifikasi admin',
  `smtp_host` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_port` int DEFAULT NULL,
  `smtp_pengirim` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smtp_pesanbalas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `g_sitekey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `g_secretkey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vercms` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verdb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `konek_opd` tinyint(1) DEFAULT '0',
  `id_grup` int DEFAULT '3',
  `footer_cms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ukuran_upload` int DEFAULT NULL,
  `tokenwa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_waysender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wa_penerima` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `katamutiara` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `namasingkat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urlserver` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_setaplikasi`),
  KEY `kategori_id` (`kategori_id`),
  KEY `id_grup` (`id_grup`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_setaplikasi`
--

LOCK TABLES `tbl_setaplikasi` WRITE;
/*!40000 ALTER TABLE `tbl_setaplikasi` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_setaplikasi` VALUES (1,'Content Management System (CMS) DATAGOE','Jln. RS Bukit - Lembata Waikomo','+6281353967028','Lebatukan','Lembata','Nusa Tenggara Timur','https://cms.datagoe.com/','layanan@datagoe.com','Content Management System (CMS) DATAGOE dibuat khusus untuk situs pemerintahan, yayasan, sekolah, company profile dan lain-lain. CMS ini dibangun dengan Framework Codeigniter Versi 4.4.3 dan akan terus diupdate.','p2.png','1','1695875015_e24e1d3978f1bd000b20.png','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31577.350186403717!2d123.3909895718859!3d-8.38505492086326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dab731d6607bd57%3A0xe9072c1a3368c33b!2sDatagoe!5e0!3m2!1sid!2sid!4v1681788486436!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','Deri Taum, S.Kom','Kepala Dinas','                       <p class=\"MsoNormal\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px;\">Selamat datang di Website kami Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata, Website ini dimaksudkan sebagai sarana publikasi untuk memberikan Informasi dan gambaran Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata dalam Hal Publikasi kepada masyarakat. Melalui keberadaan website ini kiranya masyarakat dapat mengetahui seluruh informasi tentang Kebijakan Pemerintah Kabupaten Lembata pengelolaan sektor Kepemudaan dan Keolahragaan di wilayah Pemerintahan Kabupaten Lembata. </span><span open=\"\" \",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" \"=\"\" sans\",=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">Diharapkan website ini bisa dijadikan sebagai salah satu media komunikasi yang efektif, dapat memberi</span><span style=\"font-size: 16px;\">﻿</span><span open=\"\" \",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" \"=\"\" sans\",=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">kan informasi, layanan yang akurat dan akuntabel untuk membangun <span lang=\"EN-US\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">olahraga</span> di Kabupaten <span lang=\"EN-US\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">Lembata</span>. </span></p><p class=\"MsoNormal\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px;\">Dan sebagai wujud rasa tanggungjawab kami dalam rangka meningkatkan pelayanan kepada masyarakat, maka kami adakan website dinas ini. Kritik dan saran terhadap kekurangan dan kesalahan yang ada sangat kami harapkan guna penyempurnaan Website ini dimasa akan datang. Semoga Website ini memberikan manfaat bagi kita semua. Terima Kasih..!</span></p><p class=\"MsoNormal\"><br></p>','1666974119_e6c4ee83f9e5204955fe.png','https://goo.gl/maps/QVtSNqKmgkHTBUCN8','https://www.facebook.com/datagoe','https://instagram.com/datagoe','http://twitter.com/datagoe','https://www.youtube.com/c/datagoe',1,'INFORMASI INSTANSI','1','1','1','1','1','1','1','1','smtp.hostinger.com','layanan@datagoe.com','xxxxx',465,'CMS DATAGOE','Terima Kasih telah menghubungi kami..!','','','4.1.0',NULL,1,3,'Dibuat dengan <i class=\"mdi mdi-heart text-danger\"></i> Oleh <a href=\"https://datagoe.com\" target=\"_blank\"> Datagoe Software </a>',NULL,'','','','“Mewujudkan Kabupaten Lembata sebagai <i style=\"color:#AC0C0C;\">kota budaya</i> yang Modern, Tangguh, Gesit, Kreatif dan Sejahtera”','CMS Datagoe','https://waysender-v2.ridped.com');
/*!40000 ALTER TABLE `tbl_setaplikasi` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_setaplikasi` with 1 row(s)
--

--
-- Table structure for table `template`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template` (
  `template_id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pembuat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `folder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `id` int unsigned NOT NULL,
  `ket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jtema` int NOT NULL DEFAULT '1',
  `hplogo` int NOT NULL,
  `wllogo` int NOT NULL,
  `hpbanner` int NOT NULL,
  `wlbanner` int NOT NULL,
  `verbost` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `duatema` int NOT NULL DEFAULT '0',
  `warna_topbar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '2378b4',
  `sidebar_mode` int DEFAULT '0',
  PRIMARY KEY (`template_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `template` VALUES (1,'Web PLUS 1','DATAGOE','plus1',0,1,'Tema PLUS 1','1664432678_54cd12a3ae164bb4b421.jpg',1,121,112,600,1800,'0',0,'-',0),(2,'Web PLUS 2','DATAGOE','plus2',0,1,'Ukuran logo : Tinggi 90px Lebar 375px','1664432530_bf187694af6636360050.jpg',1,90,375,600,1800,'0',0,'-',0),(3,'PLUS 3','DATAGOE','plus3',0,1,'Template Dengan Konsep Plus 2','1667354397_77e368dcd334194f9b45.jpg',1,90,375,600,1800,'0',0,'-',0),(4,'YASBIN','DATAGOE','yayasan',0,1,'Template Yayasan Binawirawan Lembata','1664434780_4d872cf84036ae0d7c68.jpg',1,121,112,600,1800,'0',0,'-',0),(5,'Tema Desa','DATAGOE','desaku',0,1,'Template Web Desa','1664449596_014062b9dfa62802af5d.jpg',1,90,375,600,1800,'1',0,'-',0),(6,'Company Profile','DATAGOE','company',1,1,'Template Company','1664435795_ae53f2bd19069129b9a7.jpg',1,90,375,600,1800,'1',0,'-',0),(7,'Tema Web Perijinan','DATAGOE','perijinan',0,1,'Tema dengan Satu Halaman',NULL,1,60,309,600,1800,'1',0,'-',0),(9,'Web BASIC','DATAGOE','basic',0,1,'Ukuran logo : Tinggi 55px Lebar 255px','1664433609_1aaa4f7447ef765011be.jpg',1,55,255,600,1800,'0',0,'-',0),(10,'Template P4','DATAGOE','plus4',0,1,'Tema Plus 4','default.png',1,45,255,1080,1920,'1',0,'-',0),(11,'Dashboard Standar','Datagoe','standar',1,1,'Tema Admin Standar CMS DATAGOE','default.png',0,0,0,0,0,'0',0,'#365d93',0),(13,'Gradien','DATAGOE','synadmin',0,1,'Ads Google tengah 1','default.png',0,0,0,0,0,'0',0,'#000000',0),(14,'HeroBiz','Template Hero','herobiz',0,1,'Web Perpustakaan','default.png',1,55,255,600,1800,'1',0,'-',0);
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `template` with 12 row(s)
--

--
-- Table structure for table `transparan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transparan` (
  `transparan_id` int NOT NULL AUTO_INCREMENT,
  `id` int unsigned NOT NULL DEFAULT '1',
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '0=Pendapatan\r\n1=Pengeluaran',
  `sts` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vawal` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  PRIMARY KEY (`transparan_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transparan`
--

LOCK TABLES `transparan` WRITE;
/*!40000 ALTER TABLE `transparan` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `transparan` VALUES (1,1,'Realisasi Pendapatan Tahun Anggaran 2015','2015','0','1','1'),(2,1,'Realisasi Belanja Tahun Anggaran 2015','2015','1','1','0');
/*!40000 ALTER TABLE `transparan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `transparan` with 2 row(s)
--

--
-- Table structure for table `transparan_detail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transparan_detail` (
  `transparandetail_id` int NOT NULL AUTO_INCREMENT,
  `transparan_id` int DEFAULT NULL,
  `transparan_nama` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transparan_jumlah` int DEFAULT NULL,
  PRIMARY KEY (`transparandetail_id`),
  KEY `transparan_id` (`transparan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transparan_detail`
--

LOCK TABLES `transparan_detail` WRITE;
/*!40000 ALTER TABLE `transparan_detail` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `transparan_detail` VALUES (1,1,'Pembentukan Dana Cadangan',11500),(2,1,'Penyertaan Modal',3307),(3,1,'Retribusi',379),(4,1,'Pajak Daerah',240),(8,2,'Belanja Pegawai',1208),(9,2,'Belanja Hibah',2126),(10,2,'Belanja Bantuan Sosial',342),(11,2,'Belanja Bagi Hasil kepada kepada Provinsi',200),(12,2,'Belanja tidak terduga',1007);
/*!40000 ALTER TABLE `transparan_detail` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `transparan_detail` with 9 row(s)
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opd_id` int DEFAULT '0',
  `id_grup` int DEFAULT '1',
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'avatar.PNG',
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `level` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `new_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activate_hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset_expires` bigint DEFAULT NULL,
  `created_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `sts_on` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_attempts` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `username_2` (`username`),
  KEY `username_3` (`username`),
  KEY `opd_id` (`opd_id`),
  KEY `id_grup` (`id_grup`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES (1,'viantaum20@gmail.com','admin',0,1,'Vian Taum','1649394521_dd7f9ba3dc6b70c44beb.png','$2y$10$r8qpXJVHdYRMLFOuL/In3.R8LbLDovMpivG3O0P2zp7Sa09LhP6D.',1,'admin',NULL,NULL,NULL,NULL,NULL,'2021-10-14 10:05:30','2024-03-21 10:20:30','1',0),(12,'blakataduk@yahoo.co.id','Desi',0,2,'Desi Gili','1633952653_0ab591eeeb6f2420bfbf.png','$2y$10$SJnt7UWrJl2BjQB7Xlp.OexxHzU/QBo99U64wH6eBrEAP2fRyH6ra',1,'autor',NULL,NULL,NULL,NULL,NULL,'1634011822','2022-10-03 09:08:26','0',NULL),(14,'fournet@yahoo.co.id','fournet321',1,3,'Fournet Juang','1679377778_ac07bf58bf3001a93adf.png','$2y$10$lzbeqh5omxB1nypW2PA1Ku83n5RqMrgmYT3JDNhFFRcY6YHaSG18a',1,'autor',NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-21 13:54:41','0',NULL),(16,'deril@yahoo.com','deril',0,3,'Ama Deril Taum','1649394870_0472d0a15867201a4cdc.png','$2y$10$0bTtg4IDpx9NZB.BNEaRBuHc2kSjR8iHfM7JdF7UtI8M6.eo24DLy',1,'autor',NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-03 09:06:41','0',4),(19,'fournet2@yahoo.co.id','admin2',0,3,'satu nama','default.png','$2y$10$vIHDms3CbUq1kapa4ecuBeJ4PNCeALaktS/yIM6P5Oor958nspKuq',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-04 11:13:00','0',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 5 row(s)
--

--
-- Table structure for table `video`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `kategorivideo_id` int DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `sts_v` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `hits` int DEFAULT NULL,
  `likevideo` int DEFAULT '0',
  PRIMARY KEY (`video_id`),
  KEY `id` (`id`),
  KEY `kategorivideo_id` (`kategorivideo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `video` VALUES (1,1,'Tambah Kelompok dan Program Bantuan pada SIAD Datagoe','X_fh-xVmto0','2021-06-08',1,'1',NULL,32,NULL),(2,1,'Ganti Logo Sesuai ukuran standar Aplikasi','ln-UEyLx_qU','2021-06-08',1,'1',NULL,18,1),(5,1,'Tambah Dusun dan Reset Database','3i3jwdi33NA','2021-06-08',1,'1','',36,NULL),(6,1,'Tambah Jenis Surat Baru ','e3Ul4b-nYko','2021-06-08',1,'1','',15,1),(7,10,'Update CMS DATAGOE To Versi 3.0.2','cANQuJMptcc','2023-05-10',1,'1','Update CMS DATAGOE To Versi 3.0.2',23,0),(10,1,'MEMBUAT SPT DAN SPPD (SURAT PERINTAH PERJALANAN DINAS)','3uEhPCVlJIo','2024-01-15',1,'1','Dengan aplikasi desa ini, surat perintah perjalanan dinas dengan mudah dibuat dan dapat digunakan sebagai alat bantu administrasi dokumentasi perjalanan dinas pada sebuah instansi pemerintah desa.',NULL,0),(11,1,'UPGRADE APLIKASI DAN SETTING MENU','sP74CR0SKNc','2024-01-15',1,'1','Setelah anda sukses instal update terbaru, database anda harus diupgrade terlebih dahulu sebelum digunakan. Disini anda akan dipandu bagaimana cara upgrade database lama anda. Untuk dapatkan update dan aplikasi desa ini, silahkan kunjungi website kami https://datagoe.com. Terima kasih',NULL,0),(12,10,'UPDATE DAN IMPORT DATA PEGAWAI PADA CMS DATAGOE','sw5L2tXC2Rg','2024-01-15',1,'1','Pada Video kali ini akan menunjukkan bagaimana Cara Update dan menggunakan fitur IMPORT DATA pada CMS Datagoe. Fitur ini akan memudahkan pengguna yang memiliki banyak pegawai, dan sudah terdata di file excel, untuk diupdate ke dalam Websitenya. ',NULL,0);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `video` with 8 row(s)
--

--
-- Table structure for table `visitor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor` (
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `online` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `visitor` VALUES ('127.0.0.1','2023-06-26',2,'1687822987','2023-06-26 23:43:07'),('127.0.0.1','2023-06-27',2,'1687828028','2023-06-27 01:07:08'),('127.0.0.1','2023-07-12',10,'1689163460','2023-07-12 12:04:20'),('127.0.0.1','2023-07-25',4,'1690255460','2023-07-25 03:24:20'),('127.0.0.1','2023-07-28',3,'1690520933','2023-07-28 05:08:53'),('127.0.0.1','2023-08-01',7,'1690910608','2023-08-01 17:23:28'),('127.0.0.1','2023-08-02',2,'1690947255','2023-08-02 03:34:15'),('127.0.0.1','2023-08-05',128,'1691217332','2023-08-05 06:35:32'),('::1','2023-11-03',24,'1698973169','2023-11-03 08:59:29'),('::1','2023-11-04',1,'1699096419','2023-11-04 19:13:39'),('::1','2023-11-05',8,'1699190034','2023-11-05 21:13:54'),('::1','2023-11-06',490,'1699278197','2023-11-06 21:43:17'),('::1','2023-11-07',26,'1699329323','2023-11-07 11:55:23'),('::1','2023-11-09',8,'1699541128','2023-11-09 22:45:28'),('::1','2023-11-11',2,'1699662287','2023-11-11 08:24:47'),('::1','2023-11-14',22,'1699965184','2023-11-14 20:33:04'),('::1','2023-11-15',10,'1700042971','2023-11-15 18:09:31'),('::1','2023-11-16',7,'1700145300','2023-11-16 22:35:00'),('::1','2023-11-17',2,'1700190994','2023-11-17 11:16:34'),('::1','2023-11-24',16,'1700798545','2023-11-24 12:02:25'),('::1','2023-11-27',105,'1701083029','2023-11-27 19:03:49'),('::1','2023-11-28',35,'1701181243','2023-11-28 22:20:43'),('::1','2023-11-29',29,'1701261699','2023-11-29 20:41:39'),('::1','2023-11-30',5,'1701326774','2023-11-30 14:46:14'),('::1','2023-12-01',4,'1701409462','2023-12-01 13:44:22'),('::1','2023-12-02',145,'1701520882','2023-12-02 20:41:22'),('127.0.0.1','2023-12-02',2,'1701496279','2023-12-02 13:51:19'),('::1','2023-12-03',8,'1701605552','2023-12-03 20:12:32'),('127.0.0.1','2023-12-03',4,'1701607275','2023-12-03 20:41:15'),('::1','2023-12-04',460,'1701702717','2023-12-04 23:11:57'),('::1','2023-12-05',361,'1701788906','2023-12-05 23:08:26'),('::1','2023-12-06',425,'1701871316','2023-12-06 22:01:56'),('::1','2023-12-07',259,'1701959405','2023-12-07 22:30:05'),('::1','2023-12-08',105,'1702006804','2023-12-08 11:40:04'),('127.0.0.1','2023-12-08',10,'1702002819','2023-12-08 10:33:39'),('::1','2023-12-11',165,'1702295596','2023-12-11 19:53:16'),('::1','2023-12-12',7,'1702356436','2023-12-12 12:47:16'),('::1','2023-12-15',5,'1702627699','2023-12-15 16:08:19'),('::1','2023-12-17',5,'1702811793','2023-12-17 19:16:33'),('::1','2023-12-19',20,'1702958057','2023-12-19 11:54:17'),('::1','2023-12-26',3,'1703586937','2023-12-26 18:35:37'),('::1','2023-12-27',8,'1703650766','2023-12-27 12:19:26'),('::1','2023-12-29',43,'1703852899','2023-12-29 20:28:19'),('::1','2024-01-02',4,'1704176477','2024-01-02 14:21:17'),('127.0.0.1','2024-01-03',3,'1704260400','2024-01-03 13:40:00'),('::1','2024-01-03',1,'1704261384','2024-01-03 13:56:24'),('::1','2024-01-04',12,'1704378081','2024-01-04 22:21:21'),('::1','2024-01-05',88,'1704463417','2024-01-05 22:03:37'),('::1','2024-01-06',17,'1704556292','2024-01-06 23:51:32'),('127.0.0.1','2024-01-06',5,'1704550632','2024-01-06 22:17:12'),('::1','2024-01-07',10,'1704627394','2024-01-07 19:36:34'),('::1','2024-01-08',5,'1704722258','2024-01-08 21:57:38'),('::1','2024-01-09',467,'1704811179','2024-01-09 22:39:39'),('::1','2024-01-10',543,'1704890923','2024-01-10 20:48:43'),('127.0.0.1','2024-01-10',2,'1704878726','2024-01-10 17:25:26'),('::1','2024-01-11',604,'1704975759','2024-01-11 20:22:39'),('127.0.0.1','2024-01-11',20,'1704969224','2024-01-11 18:33:44'),('::1','2024-01-12',741,'1705061288','2024-01-12 20:08:08'),('::1','2024-01-13',429,'1705154063','2024-01-13 21:54:23'),('::1','2024-01-14',278,'1705240342','2024-01-14 21:52:22'),('::1','2024-01-15',372,'1705325878','2024-01-15 21:37:58'),('::1','2024-01-16',484,'1705402982','2024-01-16 19:03:02'),('::1','2024-01-17',58,'1705491458','2024-01-17 19:37:38'),('::1','2024-01-18',7,'1705532131','2024-01-18 06:55:31'),('::1','2024-01-19',77,'1705667651','2024-01-19 20:34:11'),('::1','2024-01-21',23,'1705811926','2024-01-21 12:38:46'),('::1','2024-02-03',16,'1706928230','2024-02-03 10:43:50'),('::1','2024-02-06',54,'1707194825','2024-02-06 12:47:05'),('127.0.0.1','2024-02-06',15,'1707228415','2024-02-06 22:06:55'),('::1','2024-02-07',3,'1707265493','2024-02-07 08:24:53'),('::1','2024-02-08',1,'1707380415','2024-02-08 16:20:15'),('::1','2024-03-06',15,'1709718790','2024-03-06 17:53:10'),('::1','2024-03-12',13,'1710257854','2024-03-12 23:37:34'),('::1','2024-03-21',5,'1710987667','2024-03-21 10:21:07');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `visitor` with 74 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Thu, 21 Mar 2024 10:42:47 +0800
