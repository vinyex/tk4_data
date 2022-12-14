-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: db_tibsc
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jawaban`
--

DROP TABLE IF EXISTS `jawaban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jawaban` (
  `id_kuesioner` int DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban`
--

LOCK TABLES `jawaban` WRITE;
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
INSERT INTO `jawaban` VALUES (1,'C',NULL),(2,'B',NULL),(3,'C',NULL),(4,'A',NULL),(5,'C',NULL),(6,'B',NULL),(7,'B',NULL),(8,'B',NULL),(9,'A',NULL),(10,'B',NULL),(11,'A',NULL),(12,'D',NULL),(13,'B',NULL),(14,'C',NULL),(15,'B',NULL),(16,'C',NULL),(17,'D',NULL),(18,'E',NULL),(19,'E',NULL),(20,'B',NULL),(21,'C',NULL),(22,'D',NULL),(23,'D',NULL),(24,'C',NULL),(25,'B',NULL),(26,'D',NULL),(27,'B',NULL),(28,'C',NULL),(29,'C',NULL),(30,'A',NULL),(31,'D',NULL),(32,'C',NULL),(33,'C',NULL),(34,'D',NULL),(35,'A',NULL),(36,'A',NULL),(37,'C',NULL),(38,'B',NULL),(39,'D',NULL),(40,'D',NULL),(41,'E',NULL),(42,'C',NULL),(43,'C',NULL),(44,'A',NULL),(45,'C',NULL),(46,'C',NULL),(47,'A',NULL),(48,'C',NULL),(49,'B',NULL),(50,'D',NULL),(51,'B',NULL),(52,'B',NULL),(53,'C',NULL),(54,'E',NULL),(55,'E',NULL),(56,'C',NULL),(57,'D',NULL),(58,'C',NULL),(59,'D',NULL),(60,'E',NULL),(61,'B',NULL),(62,'B',NULL),(63,'B',NULL),(64,'C',NULL),(65,'D',NULL),(66,'D',NULL);
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbdimensi`
--

DROP TABLE IF EXISTS `tbdimensi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbdimensi` (
  `id_dimensi` int NOT NULL AUTO_INCREMENT,
  `dimensi` varchar(50) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  PRIMARY KEY (`id_dimensi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbdimensi`
--

LOCK TABLES `tbdimensi` WRITE;
/*!40000 ALTER TABLE `tbdimensi` DISABLE KEYS */;
INSERT INTO `tbdimensi` VALUES (1,'CORPORATE CONTRIBUTION',3),(2,'STAKEHOLDER (USER) ORIENTATION',4),(3,'OPERATIONAL EXCELLENCE (KEUNGGULAN OPERASIONAL) ',4),(4,'FUTURE ORIENTATION (Orientasi Masa Depan)',4);
/*!40000 ALTER TABLE `tbdimensi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbkuesioner`
--

DROP TABLE IF EXISTS `tbkuesioner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbkuesioner` (
  `id_kuesioner` int NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(200) DEFAULT NULL,
  `id_dimensi` int DEFAULT NULL,
  `variabel` varchar(50) DEFAULT NULL,
  `pila` varchar(200) DEFAULT NULL,
  `pilb` varchar(200) DEFAULT NULL,
  `pilc` varchar(200) DEFAULT NULL,
  `pild` varchar(200) DEFAULT NULL,
  `pile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_kuesioner`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbkuesioner`
--

LOCK TABLES `tbkuesioner` WRITE;
/*!40000 ALTER TABLE `tbkuesioner` DISABLE KEYS */;
INSERT INTO `tbkuesioner` VALUES (1,'Berapa persen kira-kira dana pengembangan TIK yang dialokasikan oleh kampus dari pengeluaran yang ada ?',1,'komitmen pimpinan','Dibawah 5%','Antara 5%-10%','Antara 11%-20%','Antara 21%-30%','Diatas 30%'),(2,'Apakah perguruan tinggi memiliki program sosialisasi dan edukasi mengenai pentingnya pemanfaatan TIK kampus?',1,'komitmen pimpinan','Ada, namun bersifat sporadis dan tidak terencana','Ada, dengan ruang lingkup dan target sasaran audience sesuai dengan anggaran','Ada, terencana dengan baik dilaksanakan secara konsisten, kontinyu dan berkesinambungan','Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi perguruan','Ada, terencana dengan baik dan dilaksanakan secara konsisten, kontinyu dan berkesinambungan dan mendapatkan banyak bantuan serta didukung dari stakeholder lain diluar perangkat organisasi perguruan ti'),(3,'Apakah perguruan tinggi menggunakan media tertentu dalam melakukan sosialisasi dan edukasi mengenai pentingnya pemanfaatan teknologi informasi dan komunikasi kampus ?',1,'komitmen pimpinan','Tidak','Ya, di beberapa media namun dalam ukuran kecil','Ya, di sejumlah media dan cukup efektif','Ya, di sejumlah media dan sangat signifikan dampaknya','Ya, cukup banyak jalur media yang memberikan kontribusi positif dan signifikan terhadap perkembangan TIK perguruan tinggi.'),(4,'Dari manasajakah sumber dana terbesar yang diperuntukkan untuk melakukan investasi dalam membangun TIK Perguruan tinggi ?',1,'alokasi sumber daya','Tidak dari mana-mana, karena memang belum memiliki TIK','Diambil melalui dana yang berasal dari uang bayaran mahasiswa, baik yang berupa sumbangan maupun uang kuliah','Dialokasikan khusus oleh pemilik perguruan tinggi dalam bentuk belanja modal','Sebagian dari dana bantuan pemerintah Indonesia dan sisa hasil usaha penyelenggaraan belajar mengajar','Investasi pihak ketiga (eksternal) yang memiliki komitme penuh jangka panjang dalam membangun perguruan tinggi yang ada.'),(5,'Berapa kira-kira nilai investasi TIK dalam tiga tahun terakhir ?',1,'alokasi sumber daya','Kurang dari Rp. 100 juta','Rp. 100 ?????????????????? 500 juta','Rp. 500 juta ?????????????????? 1 Milyar','Rp. 1-3 Milyar','> Rp. 3 Milyar'),(6,'Berapa jumlah karyawan yang berlatar belakang pendidikan perguruan tinggi bidang komputer atau informatika ?',1,'alokasi sumber daya','Kurang dari 1% dari keseluruhan pegawai di Perguruan tinggi','2%-5% dari keseluruhan pegawai di Perguruan tinggi','6%-15% dari keseluruhan pegawai di Perguruan tinggi','16%-35% dari keseluruhan pegawai di Perguruan tinggi','>35% dari keseluruhan pegawai di Perguruan tinggi'),(7,'Apakah perguruan tinggi memiliki unit unit atau divisi khusus yang bertanggung jawab terhadap perencanaan, pembangunan, penerapan, pengendalian  dan pengembangan TIK di lingkungan kampus ?',1,'unit pengelola teknologi','Tidak ada','Ada, namun tidak beroperasi secara optimal karena masih mengerjakan program atau proyek','Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas','Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan','Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, dibawah tata kelola manajemen yang rapi dan transparan.'),(8,'Jika perguruan tinggi memiliki unit khusus yang dibentuk oleh pihak kampus untuk mengelola TIK yang dimiliki, dibawah komando siapa unit khusus ini berada ?',1,'unit pengelola teknologi','Tidak dibawah siapa-siapa, karena tidak terdapat unit yang dimaksud','Berada dibawah komando salah satu unit kegiatan yang ada di perguruan tinggi','Berada dibawah komando salah satu divisi kegiatan yang ada di perguruan tinggi','Berada dibawah komando salah satu wakil pimpinan perguruan tinggi institusi','Langsung dibawah komando pimpinan perguruan tinggi institusi'),(9,'Apakah perguruan tinggi memiliki unit atau divisi yang bertanggung jawab terhadap pelatihan TIK dalam lingkungan kampus ?',1,'unit pengelola teknologi','Tidak ada','Ada, namun tidak berorientasi secara optimal karena masih mengerjakan hal-hal yang bersifat ad-hoc, atau berbasis program atau proyek','Ada, dan merupakan suatu unit organisasi tersendiri dengan tanggung jawab yang jelas','Ada, merupakan suatu unit organisasi tersendiri, yang berjalan berdasarkan tanggung jawab yang jelas sesuai dengan SOP yang telah disusun dan dikembangkan.','Ada, merupakan sebuah unit organisasi independen, dimana didukung oleh berbagai pihak ketiga yang sesuai dengan bidang keahliannya, di bawah tata kelola manajemen yang rapi dan transparan'),(10,'Apakah perguruan tinggi memiliki kebijakan dan peraturan yang mengharuskan setiap civitas akademika memanfaatkan secara intensif TIK dalam lingkungan kampus sebagai penunjang kegiatan belajar mengajar',1,'kebijakan dan sistem insentif','Tidak memiliki','Tidak memiliki secara tertulis, namun sering disampaikan dan diwacanakan oleh segenap pimpinan','Terdapat kebijakan tertulis melalui surat keputusan pimpinan perguruan tinggi mengenai keharusan menggunakan TIK dalam lingkungan kampus.','Terdapat sejumlah kebijakan terkait dengan pemanfaatan TIK sesuai tata aturan yang ada, dan dijadikan sebagai salah satu pengukur kinerja unit maupun individu terkait','Terdapat berbagai kebijakan dan peraturan keharusan pemanfaatan TIK dalam lingkungan kampus dipergunakan sebagai komponen pengukur kinerja dan terdapat model insentif yang diterapkan manajemen kampus '),(11,'Apakah ada sistem insentif yang dikembangkan oleh perguruan tinggi untuk mendorong agar segenap civitas akademika di kampus memanfaatkan teknologi informasi dan komunikasi seoptimal mungkin ?',1,'kebijakan dan sistem insentif','Tidak ada','Ada, namun tidak jelas dan konsisten penerapannya','Ada, dimana implementasinya diatur dalam peraturan perguruan tinggi','Ada, dimana implementasinya telah terintegrasi dengan sistem pengelolaan sumber daya manusia yang dimiliki oleh perguruan tinggi','Ada, dimana model dan implementasinya selain telah terintegrasi secara baik dengan sistem sumber daya manusia, tingkat efekivitasnya pun diukur dan dinilai dari hari ke hari.'),(12,'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (missal : menggunakan computer dan internet) ?',1,'kebijakan dan sistem insentif','Kebanyakan belajar sendiri (mandiri) atau otodidak','Kebanyakan belajar dari orang lain dan sumber referensi (buku)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi','Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal.'),(13,'Bagaimana karyawan dan staf perguruan tinggi belajar mengenai cara memanfaatkan teknologi informasi dan komunikasi (misal : menggunakan komputer dan internet) ?',1,'kebijakan dan sistem insentif','Kebanyakan belajar sendiri (mandiri) atau otodidak','Kebanyakan belajar dari orang lain dan sumber referensi (buku)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan non formal (pelatihan dan kursus)','Kebanyakan belajar dari orang lain, sumber referensi dan mengikuti pendidikan formal dan vokasi','Kebanyakan belajar dari orang lain, sumber referensi, mengikuti pendidikan formal (akademik maupun vokasi) maupun informal'),(14,'Apakah perguruan tinggi telah memiliki dan menyusun Rencana Strategis Pengembangan TIK (IT Master Plan) untuk kebutuhan kampus ?',1,'Renstra dan peta jalan','Tidak memiliki','Memiliki, namun sudah lama tidak dimutakhirkan (update)','Memiliki dan setiap tahun diperbaharui','Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini.','Memiliki dan secara konsisten seluruh program pengembangan TIK kampus didasari pada dokumen ini dan dilakukan audit terhadap efektivitas kepatuhannya.'),(15,'Apakah Rencana Strategis Pengembangan TIK (IT Master Plan) yang dimiliki dipergunakan sebagai panduan / acuan dalam menyelenggarakan berbagai proyek kegiatan teknologi informasi dan komunikasi perguru',1,'Renstra dan peta jalan','Tidak karena memang belum memiliki Rencana Strategis Pengembangan IT (IT Master Plan)','Ya, namun baru sebagian kecil saja proyek atau kegiatan yang mengacu pada dokumen ini.','Ya, rata-rata proyek atau kegiatan mengacu pada dokumen ini','Ya, sebagian besar proyek atau kegiatan mengacu pada dokumen ini.','Ya, semua proyek mengacu pada dokumen ini, jika ada proyek yang tidak termasuk maka menjadi bahan masukan untuk merevisi dokumen yang ada.'),(16,'Bagaimana cara perguruan tinggi menyusun kebutuhan teknologi informasi dan komunikasi yang diinginkan ? ',1,'Perencanaan dan pengorganisasian','Berkaca pada perguruan tinggi lain, dan mencoba mengikutinya.','Menyusun kebutuhan TIK berdasarkan keinginan orang yang menangani TIK','Menyusun kebutuhan TIK berdasarkan jumlah unit-unit yang membutuhkan TIK','Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit','Menyusun kebutuhan TIK berdasarkan analisis kebutuhan masing-masing unit dan senantiasa diperbaharui dan dimutakhirkan sesuai perkembangan organisasi.'),(17,'Apakah perguruan tinggi memiliki dokumen arsitektur yang dipergunakan sebagai panduan atau acuan teknis pembangunan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Perencanaan dan pengorganisasian','Tidak memiliki','Ya, namun sebagian kecil inisiatif pembangunan teknologi informasi dan komunikasi yang mengadu pada rancangan arsitektur ini','Ya, rata-rata inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.','Ya, sebagian besar inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini','Ya, semua inisiatif pembangunan teknologi informasi dan komunikasi mengacu pada rancangan arsitektur ini.'),(18,'Apakah perguruan tinggi anda memiliki standar terkait teknologi informasi dan komunikasi di perguruan tinggi yang akan diadopsi (missal : standar dalam tipe aplikasi, fitur / spesifikasi piranti keras',1,'Perencanaan dan pengorganisasian','Tidak ada sama sekali','Ada, kadang-kadang dipergunakan, kadang-kadang tidak','Ada, dipergunakan secara konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan','Ada, dipergunakan secraa konsisten sebagai basis pengelolaan dan dikembangkan secara kontinyu dan berkesinambungan','Ada, dipergunakan secara konsisten sebagai basis pengelolaan, dikembangkan secara kontinyu dan berkesinambungan, dan dievaluasi / diaudit kepatuhan adopsinya'),(19,'Apakah memiliki mekanisme penghitungan cost benefit dari setiap program, atau inisiatif investasi pengembangan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Perencanaan dan pengorganisasian','Tidak ada, namun sudah dipikirkan untuk menyusunnya','Ada, namun belum secara konsisten diadopsi sepenuhnya','Ada, dan dijadikan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perguruan tinggi dan senantiasa dikembangkan / direvisi mekanisme baku yang d'),(20,'Apakah segenap pimpinan perguruan tinggi secara intensif menggunakan beragam aplikasi teknologi informasi dan komunikasi dalam aktivitas sehari-harinya ?',1,'Pengadaan dan penerapan ','Tidak sama sekali','Ya, menggunakan namun tidak optimal dan tidak intensif','Ya, menggunakan secara efektif dan cukup intensif','Ya. menggunakan secara sangat intensif, efektif dan optimal','Ya, menggunakan secara sangat intensif, efektif, optimal dan telah berhasil menularkan kebiasaan ini kepada segenap pimpinan manajerial di bawahnya'),(21,'Apakah suasana atau budaya memanfaatkan teknologi informasi dan komunikasi terasa di dalam lingkungan kampus ?',1,'Pengadaan dan penerapan','Tidak sama sekali','Cukup terasa namun dalam keadaan atau waktu-waktu tertentu saja','Cukup terasa dalam situasi sehari-hari','Ya, sangat terasa karena hampir seluruh lokasi strategis Nampak segenap civitas akademika memanfaatkan teknologi','Ya, sangat terasa karena secara massif terlihat dari aktivitas segenap civitas akademika yang berinteraksi dengan teknologi di setiap sudut-sudut kampus'),(22,'Apakah perguruan tinggi memiliki dokumen yang jelas dan detail (misal : standar operasional prosedur) dari proses pengelolaan teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Pengelolaan dan pengembangan','Tidak ada, semua berjalan seperti kebiasaan saja','Tidak ada, semua berjalan seperti kebiasaan saja','Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji maupun dimutakhirkan','Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tanggung jawab'),(23,'Apakah memiliki standar baku dalam manajemen pengelolaan proyek (project management) teknologi informasi dan komunikasi di perguruan tinggi ?',1,'Pengelolaan dan pengembangan','Tidak ada, namun sudah dipikirkan untuk menyusunnya','Ada, namun belum secara konsisten diadopsi sepenuhnya','Ada, dan dijadikan acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis evaluasi kinerja perangkat organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi','Ada, dipergunakan sebagai acuan baku pelaksanaan manajemen proyek teknologi informasi dan dijadikan basis kinerja perangkan organisasi perguruan tinggi dan senantiasa dikembangkan / direvisi mekanisme'),(24,'Apakah perguruan tinggi anda memiliki prosedur penanganan keadaan darurat (contingency plan) bila terjadi gangguan pada sistem teknologi informasi dan komunikasi ?',1,'Pengelolaan dan pengembangan','Tidak ada, semua berjalan secara naluri dan kebiasaan saja','Ada, dipergunakan sebagai panduan kerja namun tidak pernah dikaji dan dimutakhirkan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan, dan dipakai sebagai basis evaluasi kinerja serta penentuan remunerasi berdasarkan beban kerja dan tanggung ja'),(25,'Apakah tersedia pelayanan ???????help desk??????? untuk membantu para pengguna teknologi informasi dan komunikasi yang memiliki masalah ?',1,'Pengelolaan dan pengembangan','Tidak tersedia','Tersedia, namun kinerjanya tidak seperti yang diharapkan','Tersedia dan beroperasi dengan baik pada jam kerja','Tersedia dan beroperasi dengan baik selama 24 jam sehari, kecuali hari libur atau Sabtu / Minggu','Tersedia dan beroperasi dengan baik selama 24 jam sehari, dan tujuh hari seminggu'),(26,'Apakah dilakukan proses audit terhadap efektivitas penerapan teknologi informasi dan komunikasi di lingkungan kampus ?',1,'Pemantauan dan penilaian','Tidak sama sekali','Pada dasarnya dilakukan evaluasi secara umum, namun tidak berdasarkan prosedur baku audit','Ya, dilakukan audit oleh pihak internal yang berkepentingan dan memiliki kapabilitas','Ya, dilakukan audit oleh pihak eksternal yang berkepentingan dan memiliki kapabilitas','Ya, dilakukan audit oleh pihak internal dan eksternal secara independen dan bertanggung jawab'),(27,'Apakah perguruan tinggi memiliki indikator kinerja utama (Key Performance Indicator) dalam implementasi teknologi informasi dan komunikasi kampus ?',1,'Pemantauan dan penilaian','Tidak ada, semuanya berjalan secara naluri dan kebiasaan','Ada, dipergunakan sebagai panduan kerja, namun tidak pernah dikaji maupun dimutakhirkan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja','Ada, dipergunakan sebagai panduan kerja, senantiasa dimutakhirkan sesuai dengan perbaikan dan dipakai sebagai basis evaluasi kinerja dan penentuan remunerasi berdasarkan beban kerja dan tanggung jawab'),(28,'Berapa persen kira-kira materi perkuliahan yang telah berbentuk file elektronik atau digital ?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira antara 51%-75%','Kira-kira diatas 76%'),(29,'Berapa persen kira-kira materi perkuliahan yang dibawakan oleh dosen telah memanfaatkan dan melibatkan teknologi informasi dan komunikasi untuk mempermudah pemahaman mahasiswa sebagai peserta ajar ?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira antara 51%-75%','Kira-kira diatas 76%'),(30,'Berapa persen kira-kira jumlah mata kuliah yang telah dilakukan dengan menggunakan metode e-learning ?',2,'Dosen dan peneliti','Tidak ada sama sekali','Kira-kira dibawah 10%','Kira-kira antara 11%-25%','Kira-kira antara 26%-50%','Kira-kira diatas 50%'),(31,'Berapa persen kira-kira jumlah mata kuliah dimana sang dosen memberikan pekerjaan rumah yang memaksa mahasiswanya untuk menggunakan teknologi informasi dan komunikasi secara intensif ?',2,'Dosen dan peneliti','Tidak ada sama sekali','Kira-kira dibawah 10%','Kira-kira dibawah 10%','Kira-kira antara 26%-50%','Kira-kira diatas 50%'),(32,'Bagaimana tingkat literasi dosen dalam memanfaatkan berbagai aplikasi teknologi informasi dan komunikasi ?',2,'Dosen dan peneliti','Rata-rata sangat rendah, karena kebanyakan masih gagap teknologi','Rata-rata cukup mahir menggunakan komputer, hanya saja kebanyakan diperuntukkan dalam mendukung kegiatan administratif (mengetik, mengirim email, membuat tabulasi, dan lain-lain)','Rata-rata cukup mahir dan menguasai berbagai aplikasi standar yang dipergunakan oleh seorang pengajar untuk mendukung aktivitasnya sehari-hari','Kebanyakan dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum','Mayoritas dosen telah sangat mahir dalam menggunakan beragam aplikasi standar maupun aplikasi termutakhir yang dikenal masyarakat umum, bahkan cenderung lebih tinggi tingkat  literasinya dibandingkan '),(33,'Apakah terjadi komunikasi yang intens antara dosen dan mahasiswa melalui kanal dan aplikasi teknologi informasi dan komunikasi seperti email, mailing list, newsgroup, social networking dan lain-lain ?',2,'Dosen dan peneliti','Tidak sama sekali','Terjadi komunikasi virtual, namun tidak terlampau intensif','Terjadi komunikasi virtual yang cukup intensif','Hampir setiap hari rata-rata mahasiswa dan dosen melakukan interaksi secara virtual','Setiap hari mayoritas mahasiswa dan dosen melakukan interaksi secara virtual'),(34,'Berapa jumlah kelas yang pada saat diselenggarakan sang dosen membentuk sebuah mailing list khusus untuk para mahasiswa yang mengambil mata kuliah yang bersangkutan ?',2,'Dosen dan peneliti','Dibawah 5% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 16%-30% dari total kelas yang diikuti mahasiswa selama masa kuliah','Kira-kira antara 31%-60% dari total kelas yang diikuti mahasiswa selama masa kuliah','Diatas 6%-15% dari total kelas yang diikuti mahasiswa selama masa kuliah'),(35,'Berapa persen dari dosen yang memiliki alamat email yang aktif dipergunakan?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(36,'Berapa persen dari dosen yang memiliki website / homepage atau blog pribadi?',2,'Dosen dan peneliti','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(37,'Rata-rata berapa jam dalam sehari seorang dosen berinteraksi dengan internet?',2,'Dosen dan peneliti','Hanya dibawah 1 jam per hari','Kurang lebih antara 1-2 jam per hari','Kurang lebih antara 2-4 jam per hari','Kurang lebih antara 4-6 jam per hari','Hampir diatas 6 jam per hari'),(38,'Berapa persen dari mahasiswa yang memiliki alamat email yang aktif dipergunakan ?',2,'Mahasiswa, unsur pemilik dan pimpinan','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(39,'Rata-rata berapa jam dalam sehari seorang mahasiswa berinteraksi dengan internet ?',2,'Mahasiswa, unsur pemilik dan pimpinan','Hanya dibawah 1 jam per hari','Kurang lebih antara 1-2 jam per hari','Kurang lebih antara 2-4 jam per hari','Kurang lebih antara 4-6 jam per hari','Hampir diatas 6 jam per hari'),(40,'Berapa persen dari karyawan yang memiliki alamat email yang aktif dipergunakan ?',2,'Manajemen, staf dan karyawan','Dibawah 10%','Kira-kira antara 11%-20%','Kira-kira antara 21%-50%','Kira-kira antara 51%-75%','Diatas antara 75%'),(41,'Bagaimana tingkat literasi karyawan dalam memanfaatkan berbagai aplikasi teknologi informasi dan komunikasi untuk membantu kegiatan administratif dan operasional kampus ?',2,'Manajemen, staf dan karyawan','Rata-rata sangat rendah, karena kebanyakan masih ???????gagap teknologi???????','Rata-rata cukup mahir menggunakan satu atau dua aplikasi komputer','Rata-rata cukup mahir dan menguasai sejumlah aplikasi komputer untuk kegiatan operasional organisasi','Kebanyakan karyawan telah mahir dan menguasai dan menggunakan berbagai aplikasi komputer perkantoran maupun penunjang lainnya','Mayoritas karyawan sangat mahir dalam memanfaatkan dan menggunakan beraneka ragam aplikasi teknologi dan komunikasi'),(42,'Apakah anda merasa keberadaan teknologi infomasi dan komunikasi akan memberikan manfaat dan kontribusi signifikan bagi perkembangan perguruan tinggi anda ?',3,'Peningkatan kualitas','Ya, keberadaannya akan memberikan kontribusi positif namun tidak signifikan','Ya, keberadaannya akan memberikan kontribusi positif, namun signifikan tidaknya bergantung dari sudut pandang yang dipergunakan','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi ','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi bahkan dapat meningkatkan daya saing jika direncanakan dan diterapkan dengan benar','Ya keberadaan akan memberikan kontribusi positif dan signifikan bagi perguruan tinggi dan sanggup mentransformasikan situasi dan kondisi perguruan tinggi ke arah modernisasi kampus'),(43,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkata kualitas pengambilan keputusan para pembuat kebijakan di perguruan tinggi anda dalam 5 tahun terakhir',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa'),(44,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pelayanan di kalangan para mahasiswa di perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi para mahasiswa/i'),(45,'Apakah ada kontribusi teknologi informasi dan komunikasi dalam hal peningkatan peran perguruan tinggi dalam konteks nasional dalam 5 taun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi pemerintah'),(46,'Apakah pernah mendapatkan penghargaan dari lembaga-lembaga lain, dari luar maupun dalam negeri terkait dengan perkembangan teknologi informasi dan komunikasi di perguruan tinggi anda ?',3,'Peningkatan kualitas','Pernah, memperoleh 1 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 2-3 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 4-5 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh 6-10 penghargaan dalam 10 tahun terakhir','Pernah, memperoleh lebih dari 10 penghargaan dalam 10 tahun terakhir'),(47,'Apakah ada kontribusi nyata terkait dengan teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i di berbagai jurusan dalam 5 tahun terakhir ?',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i'),(48,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan kualitas pengetahuan dan kompetensi mahasiswa/i dari berbagai jurusan di perguruan tingg anda dalam 5 tahun',3,'Peningkatan kualitas','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi mahasiswa/i'),(49,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan, efisiensi operasional penyelenggaraan perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Efektivitas dan efisiensi','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(50,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan pendapatan perguruan tinggi dalam 5 tahun terakhir ?',3,'Efektivitas dan efisiensi','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(51,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal perbaikan pegawai perguruan tinggi yang bersih, akuntabel dan transparan dalam 5 tahun terakhir ?',3,'Transparansi manajemen','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi manajemen'),(52,'Apakah ada kontribusi nyata terkait teknologi informasi dan komunikasi dalam hal peningkatan optimalisasi pemanfaatan berbagai sumber daya yang dimiliki perguruan tinggi anda dalam 5 tahun terakhir ?',3,'Utilitas sumber daya','Tidak ada kontribusi yang signifikan','Ada sejumlah kontribusi positif, namun tidak signifikan','Ada kontribusi positif dan cukup signifikan','Jelas terlihat adanya kontribusi yang positif dan signifikan serta dapat diukur besaran peningkatannya','Jelas terlihat adanya kontribusi yang positif dan signifikan, dapat diukur besaran peningkatannya dan memberikan manfaat langsung bagi perguruan tinggi'),(53,'Menurut pendapat anda, apa peranan dan target utama penerapan teknologi informasi dan komunikasi di perguruan tinggi anda ?',3,'Transformasi organisasi','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat serta meningkatkan kerja operasional pelayanan dan membantu proses pengambilan keputusan yang efektif','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadinya proses ','Memfasilitas proses komunikasi dan diseminasi informasi agar lebih cepat, meningkatkan kerja operasional pelayanan, membantu proses pengambilan keputusan yang efektif dan memastikan terjadinya proses '),(54,'Apakah kebijakan perguruan tinggi memperbolehkan penyelenggaraan mata kuliah berbasis e-learing ?',4,'Implementasi e-learning','Tidak diperbolehkan sama sekali','Diperbolehkan, namun tetap harus dicampur denga model pembelajaran klasik (tatap muka)','Diperbolehkan sesuai dengan peraturan Kemdiknas / Dikti yang ada','Diperbolehkan bahkan dianjurkan untuk dilaksanakan oleh segenap dosen pengajar','Diperbolehkan bahkan  dianjurkan untuk sejumlah dosen melaksanakan sesuai dengan pengembangan yang direncanakan'),(55,'Apakah pimpinan memberikan himbauan akan pentingnya antara dosen pengajar saling berbagi pakai (sharing) materi perkuliahan dan pengetahuan yang dimilikinya ?',4,'Berbagai sumber daya','Tidak diberikan himbauan','Diberikan himbauan secara informal','Secara resmi pimpinan senantiasa memberikan himbauan tersebut dalam berbagai kesempatan formal','Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya','Terdapat surat keputusan dari pihak pimpinan yang mengharuskan para dosen untuk saling berbagi pengetahuan dan materi ajar yang dimilikinya dan dijadikan alat ukur kinerja dosen'),(56,'Apakah perguruan tinggi anda menyediakan fasilitas teknologi untuk menunjang proses berbagi materi ajar antar dosen?',4,'Berbagai sumber daya','Ya, namun jarang sekali dipergunakan oleh dosen','Ya, namun hanya beberapa dosen saja yang aktif berbagi materi ajar','Ya dan rata-rata dosen saling berbagi materi ajar antar sesamanya','Ya dan kira-kira lebih dari 50% telah secara aktif saling berbagi materi ahar','Ya hampir semua dosen saling aktif berbagi materi ajar diantara sesamanya'),(57,'Berapa banyak yang mengunjungi website perguruan tinggi sehari-hari (per idetitas unik) ?',4,'Berbagai sumber daya','Mungkin kira-kira dibawah 100 hits per hari','Kira-kira antara 101 ???????? 1000 hits per hari','Kira-kira antara 1001 ???????? 10.000 hits per hari','Kira-kira antara 10.001 ???????? 100.000 hits per hari','Diatas 100.000 hits per hari'),(58,'Berdasarkan rekam jejak, fitur website perguruan tinggi apa yang paling banyak dimanfaatkan oleh pengunjung ?',4,'Berbagai sumber daya','Tidak jelas, karena tidak ada catatannya','Fitur navigasi umum untuk mencari informasi','Fitur navigasi umum untuk mencari informasi dan berinteraksi dengan pihak perguruan tinggi','Fitur ???????searching ??????? untuk mencari dan mengunduh dokumen / artikel penting yang dimiliki perguruan tinggi','Fitur aplikasi yang menungkinkan pengunjung untuk turut berpartisipasi dalam berbagai program perguruan tinggi berbasis virtual (e-learning, webcast, knowledge simulationm smart campus dan lain-lain)'),(59,'Apakah pimpinan menganjurkan agar para dosen mengunggah berbagai hasil karyanya ke internet ?',4,'Pendidikan terbuka','Tidak menganjurkan sama sekali','Menganjurkan hanya untuk artikel tertentu saja','Menganjurkan untuk semua karya yang dimiliki dengan tetap memperhatikan unsur HAKI yang dimiliki','Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet','Mengharuskan para dosen untuk sebanyak mungkin meng-upload hasil karyanya ke internet dan dijadikan sebagai bagian dari penilaian kinerja dosen'),(60,'Apakah pimpinan dan segenap dosen perguruan tinggi mengetahui akan adanya model HAKI bernama ???????creative common??????? ?',4,'Pendidikan terbuka','Tidak mengetahui sama sekali','Pernah mendengar, namun tidak tahu persis artinya','Tahu mengenai keberadaannya dan mengerti maksudnya','Tahu mengenai keberadaannya, mengerti maksudnya dan telah dipergunakan sejumlah dosen perguruan tinggi','Tahu mengenai keberadaannya, mengerti maksudnya dan secara masif telah dipergunakan sejumlah dosen perguruan tinggi'),(61,'Berapa banyak materi perkuliahan dosen yang diberikan secara terbuka dan gratis kepada publik ',4,'Pendidikan terbuka','Tidak ada sama sekali','Dibawah 10% dari total mata kuliah','Kira-kira antara 11%-25% dari total mata kuliah','Kira-kira antara 26%-50% dari total mata kuliah','Diatas 50% dari total mata kuliah'),(62,'Apakah perguruan tinggi menjadi salah satu penggiat atau peserta forum / asosiasi Open Course Ware (OCW)',4,'Pendidikan terbuka','Tidak ada sama sekali','Berencana untuk menjadi anggotanya dalam waktu dekat','Menjadi penggiat dan anggota aktif dari perkumpulan Open Course Ware (OCW)','Menjadi penggiat dan anggota aktif dan sekaligus pengurus Open Course Ware (OCW) di sejumlah tempat','Menjadi inisiator sekaligus pemimpin gerakan Open Course Ware (OCW) di sejumlah wilayah'),(63,'Bagaimana model pengelolaan sistem informasi internal terkait dengan kewajiban melaporkan status kampus melalui sistem informasi PDPT (Pangkalan Data Perguruan Tinggi) ?',4,'Pangkalan data terpadu','Perguruan tinggi tidak memiliki sistem informasi internal','Keduanya merupakan sistem yang berdiri sendiri, tidak berhubungan','Sistem informasi dirancang sedemikian rupa sehingga menghasilkan output sebagaimana format file PDPT','Dikti dapat secara langsung mengambil file (mengunduh) dari hasil keluaran sistem informasi internal yang formatnya sesuai dengan PDPT melalui website perguruan tinggi','Kedua sistem sudah terintegrasi'),(64,'Apakah sistem informasi akademik perguruan tinggi dapat diakses melalui website oleh pihak luar ?',4,'Pangkalan data terpadu','Tidak dapat sama sekali','Dapat diakses hanya untuk dosen atau mahasiswa aktif (alumni) perguruan tinggi','Dapat diakses oleh berbagai pihak sesuai dengan hak otoritasnya masing-masing','Dapat diakses oleh berbagai pihak yang membutuhkan data/informasi mengenai dosen, mahasiswa, mata kuliah, materi ajar, pustaka internal dan lain-lain, dimana sistem mencatat keseluruhan model interaks','Dapat diakses oleh berbagai pihak luar untuk mendapatkan informasi / data yang dibutuhkan disamping itu dapat dilakukan berbagai query atau searching terhadap kumpulan basis data yang dimiliki perguru'),(65,'Apakah perguruan tinggi memiliki jejaring ke institusi pendidikan atau penelitian lain di luar negeri ?',4,'Jejaring internasional','Tidak ada','Sedang menjajaki kerjasama dengan pihak luar negeri','Memiliki jejaring ke sejumlah lembaga atau institusi lain di luar negeri','Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra','Memiliki jejaring ke sejumlah institusi lain di luar negeri yang memungkinkan dosen dan mahasiswa untuk saling mengakses sumber-sumber pembelajaran dari pihak mitra'),(66,'Apakah perguruan tinggi anda mendapatkan dukungan dan bantuan sumber daya maupun asistensi dari pihak ketiga (lembaga internasional) yang berasal dari luar negeri ?',4,'Jejaring internasional','Tidak ada','Ada, namun sangat jarang sekali (satu dalam 3-5 tahun)','Ada, namun berupa bantuan kecil paling tidak setahun sekali','Ada, jumlah bantuannya cukup besar dan diterima secara berkesinambungan','Ada, jumlah bantuannya besar dan diterima secara kontinyu serta berkesinambungan');
/*!40000 ALTER TABLE `tbkuesioner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpengguna`
--

DROP TABLE IF EXISTS `tbpengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpengguna` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `hak_akses` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpengguna`
--

LOCK TABLES `tbpengguna` WRITE;
/*!40000 ALTER TABLE `tbpengguna` DISABLE KEYS */;
INSERT INTO `tbpengguna` VALUES (4,'admin','admin','administrator'),(5,'alec','alec','dekan'),(6,'sandy','sandy','kepala puskom');
/*!40000 ALTER TABLE `tbpengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,'$2y$10$uDHWt7IxBnSz2bC0W44uVeF5L7LxFGV59w.krK3HqniwS6j2jYWMe','administrator',NULL,NULL,NULL),(2,'alec',NULL,NULL,'$2y$10$05TuVwiig3P9446TwOZ1COshRDctT/GAly1q2BRoHYRSRyXDdGnTO','dekan',NULL,NULL,NULL),(3,'sandy',NULL,NULL,'$2y$10$2luDvFCzRaV.sRBQjhtWM.gr0IkSf16KHR8W8edXzx/Z4tOdUVdWe','kepala puskom',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_tibsc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31  3:27:30
