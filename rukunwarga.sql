/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - rukunwarga
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rukunwarga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `rukunwarga`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_06_15_031855_create_kegiatans_table',1),
(6,'2022_06_15_033302_create_laporan_keuangans_table',1),
(7,'2022_06_15_033355_create_info_pentings_table',1),
(8,'2022_06_15_033408_create_kritik_sarans_table',1),
(9,'2022_06_15_033426_create_komentar_kegiatans_table',1),
(10,'2022_06_15_033440_create_komentar_info_pentings_table',1),
(11,'2022_06_15_033531_create_asets_table',1),
(12,'2022_06_15_033842_create_anggota_p_k_k_s_table',1),
(13,'2022_06_15_033843_create_p_k_k_s_table',1),
(14,'2022_06_15_033901_create_struktur_organisasis_table',1),
(15,'2022_06_15_033911_create_profils_table',1),
(16,'2022_06_19_102955_create_karang_taruna_table',1),
(17,'2022_07_01_032556_create_pelayanans_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `tb_anggota_pkk` */

DROP TABLE IF EXISTS `tb_anggota_pkk`;

CREATE TABLE `tb_anggota_pkk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_anggota` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_anggota_pkk` */

/*Table structure for table `tb_aset` */

DROP TABLE IF EXISTS `tb_aset`;

CREATE TABLE `tb_aset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_aset` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `informasi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_aset` */

/*Table structure for table `tb_info_penting` */

DROP TABLE IF EXISTS `tb_info_penting`;

CREATE TABLE `tb_info_penting` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul_info` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_info_penting` */

/*Table structure for table `tb_karang_taruna` */

DROP TABLE IF EXISTS `tb_karang_taruna`;

CREATE TABLE `tb_karang_taruna` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_karang_taruna` */

/*Table structure for table `tb_kegiatan` */

DROP TABLE IF EXISTS `tb_kegiatan`;

CREATE TABLE `tb_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul_kegiatan` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_kegiatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_kegiatan` */

/*Table structure for table `tb_komentar_info_penting` */

DROP TABLE IF EXISTS `tb_komentar_info_penting`;

CREATE TABLE `tb_komentar_info_penting` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `komentar` text NOT NULL,
  `id_info` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_komentar_info_penting_id_info_foreign` (`id_info`),
  CONSTRAINT `tb_komentar_info_penting_id_info_foreign` FOREIGN KEY (`id_info`) REFERENCES `tb_info_penting` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_komentar_info_penting` */

/*Table structure for table `tb_komentar_kegiatan` */

DROP TABLE IF EXISTS `tb_komentar_kegiatan`;

CREATE TABLE `tb_komentar_kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `komentar` text NOT NULL,
  `id_kegiatan` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_komentar_kegiatan_id_kegiatan_foreign` (`id_kegiatan`),
  CONSTRAINT `tb_komentar_kegiatan_id_kegiatan_foreign` FOREIGN KEY (`id_kegiatan`) REFERENCES `tb_kegiatan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_komentar_kegiatan` */

/*Table structure for table `tb_kritik_saran` */

DROP TABLE IF EXISTS `tb_kritik_saran`;

CREATE TABLE `tb_kritik_saran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_kritik_saran` */

/*Table structure for table `tb_laporan_keuangan` */

DROP TABLE IF EXISTS `tb_laporan_keuangan`;

CREATE TABLE `tb_laporan_keuangan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  `informasi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_laporan_keuangan` */

/*Table structure for table `tb_pelayanan` */

DROP TABLE IF EXISTS `tb_pelayanan`;

CREATE TABLE `tb_pelayanan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_pelayanan` varchar(255) NOT NULL,
  `informasi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_pelayanan` */

/*Table structure for table `tb_pkk` */

DROP TABLE IF EXISTS `tb_pkk`;

CREATE TABLE `tb_pkk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `agenda` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_pkk` */

/*Table structure for table `tb_profil` */

DROP TABLE IF EXISTS `tb_profil`;

CREATE TABLE `tb_profil` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deskripsi` text NOT NULL,
  `link_email` varchar(255) DEFAULT NULL,
  `link_facebook` varchar(255) DEFAULT NULL,
  `link_instagram` varchar(255) DEFAULT NULL,
  `link_twitter` varchar(255) DEFAULT NULL,
  `link_youtube` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_profil` */

insert  into `tb_profil`(`id`,`deskripsi`,`link_email`,`link_facebook`,`link_instagram`,`link_twitter`,`link_youtube`,`logo`,`created_at`,`updated_at`) values 
(1,'cek','admin@rw04.ankul.site',NULL,'admin@rw04.ankul.site',NULL,NULL,'20250714152757.png','2025-07-14 15:27:57','2025-07-14 15:27:57');

/*Table structure for table `tb_struktur_organisasi` */

DROP TABLE IF EXISTS `tb_struktur_organisasi`;

CREATE TABLE `tb_struktur_organisasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL,
  `ketua_rw` varchar(255) DEFAULT NULL,
  `wakil_ketua` varchar(255) DEFAULT NULL,
  `sekretaris` varchar(255) DEFAULT NULL,
  `bendahara` varchar(255) DEFAULT NULL,
  `keamanan` varchar(255) DEFAULT NULL,
  `pelayanan_masyarakat` varchar(255) DEFAULT NULL,
  `pemuda_olahraga` varchar(255) DEFAULT NULL,
  `kesehatan_masyarakat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_struktur_organisasi` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`is_admin`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin','rukunwarga16admin@gmail.com',NULL,'$2y$10$OprdzRMAG7Or7LOTyHGeDuvuj39UK7nFzRS8UZL3eK4OAeVNLQ/KG',1,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
