-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: codeCourseLaravelApi
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2018_11_28_040152_create_topics_table',2),(9,'2018_11_28_042112_create_posts_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('018758b153bcd11f1aaf6257bb84c3c0087112b34138bec23c3c383a463202fc68fbfa27a4e9fd60',2,2,NULL,'[\"*\"]',0,'2018-11-27 21:59:48','2018-11-27 21:59:48','2019-11-28 03:59:48'),('202779273ef6b9ad1255ac0cad9bc0671a6ab1e77a66103feece5a8757a00ec73c51e4585cca38f8',2,2,NULL,'[\"*\"]',0,'2018-11-27 11:32:50','2018-11-27 11:32:50','2019-11-27 17:32:50'),('23d981fff7a2aa3945206a819b1e240cb2ea7796d7cdb281c3aab440136a849aae4213646d8a82ac',1,2,NULL,'[\"*\"]',0,'2018-11-27 08:43:13','2018-11-27 08:43:13','2019-11-27 14:43:13'),('2a95f1dfdabfdab1dac1577b431534d6b2f0fbae5ecd80324931cb6e9563f84a3fb9c125cd39f4db',1,2,NULL,'[\"*\"]',0,'2018-11-27 11:33:02','2018-11-27 11:33:02','2019-11-27 17:33:02'),('556cc0ebc900221d3fcf69f53338f7b057f92c32c657f0b82bffc860210bd59e4df99e77372e1358',2,2,NULL,'[\"*\"]',0,'2018-11-27 22:00:07','2018-11-27 22:00:07','2019-11-28 04:00:07'),('57c02633c3e904be918cc22c5993c728dcae69f8302d81803eab0b734c759a43821e0836bdefe99a',2,2,NULL,'[\"*\"]',0,'2018-11-27 21:58:04','2018-11-27 21:58:04','2019-11-28 03:58:04'),('5d49c99e27df3451265a0415ae44d768a115b229bf2b933964f87bb83217471e4d2088be59cfc31f',17,2,NULL,'[\"*\"]',0,'2018-11-27 11:28:33','2018-11-27 11:28:33','2019-11-27 17:28:33'),('8b4ced326de50edc3d6ebaf52784d397a0101639d7c0379c2579f11df89f648badc8b2b0a0d67a24',2,2,NULL,'[\"*\"]',0,'2018-11-28 08:19:42','2018-11-28 08:19:42','2019-11-28 14:19:42'),('981c4dad853c3c7bb2e115507afa11ee61bb6ee9ec34bc85f5fe4836b83cf04ac1d71a0b3f95d1af',17,2,NULL,'[\"*\"]',0,'2018-11-27 11:28:36','2018-11-27 11:28:36','2019-11-27 17:28:36'),('a15a6c78265e8b67f3b5169149eb9a855fef5fe76c9e50cc884963e8222629dedbb2c69d77b226c8',2,2,NULL,'[\"*\"]',0,'2018-11-27 08:44:16','2018-11-27 08:44:16','2019-11-27 14:44:16'),('b329a140f4417aaf9265de498d0e267b908b440b3049f0951b1d4a202623180a947e0924fe49f4df',2,2,NULL,'[\"*\"]',0,'2018-12-01 09:43:41','2018-12-01 09:43:41','2019-12-01 15:43:41'),('b6355961e1f9aab3caa5dcdf255e4c7240c4c8eaaa863830f70de7c12c156882c552bb4076d45454',2,2,NULL,'[\"*\"]',0,'2018-11-27 11:30:54','2018-11-27 11:30:54','2019-11-27 17:30:54'),('be4520dddc295964ae5fc473f43eb9a854e44d2676329cdc21a6d407bcd74fea1a0d81643f2ad8b2',17,2,NULL,'[\"*\"]',0,'2018-11-27 11:28:54','2018-11-27 11:28:54','2019-11-27 17:28:54'),('c895a3a04b51c711c12e55d55ac93eec15f2b20247c9b0050b39ba65075aba4c214ad69fd632f57e',1,2,NULL,'[\"*\"]',0,'2018-11-27 08:40:58','2018-11-27 08:40:58','2019-11-27 14:40:58'),('d1cbd46ca0d78fc4098840030ba9b2831a421bce7d226a38efe1034add531c3f8d12f5ad004b4dff',1,2,NULL,'[\"*\"]',0,'2018-11-27 11:28:20','2018-11-27 11:28:20','2019-11-27 17:28:20'),('dedc4fb24a87d4cc7f58fe229635d56f8d6e3baf849a57052b994ee30d4a426e02f2a43e65d77af0',2,2,NULL,'[\"*\"]',0,'2018-12-01 08:13:29','2018-12-01 08:13:29','2019-12-01 14:13:29'),('e4df1de4430bcab15eb9397a55dbb75a2bf35923960b8e536df374a505e2155c2c3c8e33a0f37728',1,2,NULL,'[\"*\"]',0,'2018-11-27 09:11:37','2018-11-27 09:11:37','2019-11-27 15:11:37');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','uOhGhRpi7xQBOCxZshpPfpEfNaX5rBcpmdp07czI','http://localhost',1,0,0,'2018-11-27 08:40:37','2018-11-27 08:40:37'),(2,NULL,'Laravel Password Grant Client','8DbpvEGmCWAuRNUCsQVvkNxVlM67xg3NIsur7uyZ','http://localhost',0,1,0,'2018-11-27 08:40:37','2018-11-27 08:40:37');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-11-27 08:40:37','2018-11-27 08:40:37');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('068e48589ca9df7b51b6fcca8039ac9ece65f1407b6a43e7fdcd157d1492b21fbcde4ea7f71b7570','a15a6c78265e8b67f3b5169149eb9a855fef5fe76c9e50cc884963e8222629dedbb2c69d77b226c8',0,'2019-11-27 14:44:16'),('1a1adfaeb65beab518b38f066f0160f280ce278be7a7483f1501441da1e797f43ec3efa198e4bd9d','be4520dddc295964ae5fc473f43eb9a854e44d2676329cdc21a6d407bcd74fea1a0d81643f2ad8b2',0,'2019-11-27 17:28:54'),('249fce6ae8b99e6df02bd9072ef496f8a2c3a9b2a9de1ec49de6ff9e01da3de36a9b79ca5e38924b','981c4dad853c3c7bb2e115507afa11ee61bb6ee9ec34bc85f5fe4836b83cf04ac1d71a0b3f95d1af',0,'2019-11-27 17:28:36'),('2d319aabf433471602e6c5230926796e237060db95ce694d91ee5cc444d2eecbe87cb0e089403839','8b4ced326de50edc3d6ebaf52784d397a0101639d7c0379c2579f11df89f648badc8b2b0a0d67a24',0,'2019-11-28 14:19:42'),('3a88b266c8ac9f0402609e3415f0d0925e69cef0f61c64145605782f7c1fda77b0a2cb8dbb94ff2d','dedc4fb24a87d4cc7f58fe229635d56f8d6e3baf849a57052b994ee30d4a426e02f2a43e65d77af0',0,'2019-12-01 14:13:29'),('4257c68b82f9f0073087e10b6d72de86aace11943bb30b63f3f2f9a6237b3bb2fd95a7f862a1838b','c895a3a04b51c711c12e55d55ac93eec15f2b20247c9b0050b39ba65075aba4c214ad69fd632f57e',0,'2019-11-27 14:40:58'),('471fa667cd51d48e8bf5a685374a43372ff7bef677db9c4042e85f90c9e2288dc13c17388c865d68','202779273ef6b9ad1255ac0cad9bc0671a6ab1e77a66103feece5a8757a00ec73c51e4585cca38f8',0,'2019-11-27 17:32:50'),('4754ea41b4036d54618c56d8385b32c6a403ae112454a7faaf497ed27312e86fcc2a67658ee58400','57c02633c3e904be918cc22c5993c728dcae69f8302d81803eab0b734c759a43821e0836bdefe99a',0,'2019-11-28 03:58:04'),('4813f27a2bb20e4986d7383f2598efe339e1e66dbf823e8d6fa38ccceb9e958a7a1349ea77da74d8','2a95f1dfdabfdab1dac1577b431534d6b2f0fbae5ecd80324931cb6e9563f84a3fb9c125cd39f4db',0,'2019-11-27 17:33:02'),('64b727a438b010f111c5e269ef885001cb116d3d4e6fcea0f8cf9cc76eb051e67c33af3c24732dc7','e4df1de4430bcab15eb9397a55dbb75a2bf35923960b8e536df374a505e2155c2c3c8e33a0f37728',0,'2019-11-27 15:11:37'),('65b28fec203b6943423aab003b818fee2713be38783cc919dad566e5aad01155204a8c69f1928b67','d1cbd46ca0d78fc4098840030ba9b2831a421bce7d226a38efe1034add531c3f8d12f5ad004b4dff',0,'2019-11-27 17:28:20'),('75887cfcc7600e1192891daa27b27bc850148a6a06fbe96b42b7744e7720d2ba35fda7853127e18d','018758b153bcd11f1aaf6257bb84c3c0087112b34138bec23c3c383a463202fc68fbfa27a4e9fd60',0,'2019-11-28 03:59:48'),('88609be724494c6414f8c277585ad2b49a8c5df2a2af386baa8a6ceb381dfaec47ebd85e7ade3839','556cc0ebc900221d3fcf69f53338f7b057f92c32c657f0b82bffc860210bd59e4df99e77372e1358',0,'2019-11-28 04:00:07'),('9dadbd874a4274e609fc3004c9a27973fcd5a7950d8894c3fdf1a0468c099f160dd2cd6f935f0bfe','5d49c99e27df3451265a0415ae44d768a115b229bf2b933964f87bb83217471e4d2088be59cfc31f',0,'2019-11-27 17:28:33'),('a70406db1b936205b442e647c6690398426278d5466cdd44c772c44e958b863be85c9c7475faef72','23d981fff7a2aa3945206a819b1e240cb2ea7796d7cdb281c3aab440136a849aae4213646d8a82ac',0,'2019-11-27 14:43:13'),('b80f3dc204ed159d98b6eabdf71deb47acf11b67c57c98b79c8d9dd58284bcec939f32ba496be417','b6355961e1f9aab3caa5dcdf255e4c7240c4c8eaaa863830f70de7c12c156882c552bb4076d45454',0,'2019-11-27 17:30:54'),('cd54c9546e92d0c3941d37e847a1e52ed4199dd29e817a7015f6124d6eb77259eaa0b3ff85fd31f6','b329a140f4417aaf9265de498d0e267b908b440b3049f0951b1d4a202623180a947e0924fe49f4df',0,'2019-12-01 15:43:41');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_topic_id_index` (`topic_id`),
  KEY `posts_user_id_index` (`user_id`),
  CONSTRAINT `posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (5,'This is a body message',5,2,'2018-11-28 22:29:51','2018-11-28 22:29:51'),(6,'This is a body message',6,2,'2018-11-28 22:30:34','2018-11-28 22:30:34'),(7,'This is a body message',7,2,'2018-11-28 22:35:09','2018-11-28 22:35:09'),(8,'This is a body message',8,2,'2018-11-28 22:35:18','2018-11-28 22:35:18'),(9,'This is a body message',9,2,'2018-11-28 22:36:42','2018-11-28 22:36:42'),(10,'This is a body message',10,2,'2018-11-28 22:37:33','2018-11-28 22:37:33'),(11,'This is a body message',11,2,'2018-11-28 22:38:31','2018-11-28 22:38:31'),(12,'This is a body message',12,2,'2018-11-28 22:39:32','2018-11-28 22:39:32'),(13,'This is a body message',13,2,'2018-11-28 22:52:42','2018-11-28 22:52:42'),(14,'This is a body message',14,2,'2018-11-28 22:52:57','2018-11-28 22:52:57'),(15,'This is a body message',15,2,'2018-11-28 22:53:13','2018-11-28 22:53:13'),(16,'This is a body message',16,2,'2018-11-28 23:04:52','2018-11-28 23:04:52'),(17,'This is a body message',17,2,'2018-11-28 23:05:02','2018-11-28 23:05:02'),(18,'This is a body message',18,2,'2018-11-28 23:05:14','2018-11-28 23:05:14'),(19,'This is a body message',19,2,'2018-11-28 23:05:48','2018-11-28 23:05:48'),(20,'This is a body message',20,2,'2018-11-28 23:06:08','2018-11-28 23:06:08'),(21,'This is a body message',21,2,'2018-11-28 23:06:22','2018-11-28 23:06:22'),(22,'This is a body message',22,2,'2018-11-28 23:06:42','2018-11-28 23:06:42'),(23,'This is a body message',23,1,'2018-11-28 23:07:05','2018-11-28 23:07:05'),(24,'This is a body message',24,1,'2018-11-28 23:08:34','2018-11-28 23:08:34'),(25,'This is a body message',25,1,'2018-11-28 23:08:41','2018-11-28 23:08:41'),(26,'This is a body message',26,1,'2018-11-28 23:11:49','2018-11-28 23:11:49'),(27,'This is a body message',27,1,'2018-11-28 23:13:38','2018-11-28 23:13:38'),(28,'This is a body message',28,1,'2018-11-28 23:13:50','2018-11-28 23:13:50'),(29,'This is a body message',29,1,'2018-11-28 23:14:09','2018-11-28 23:14:09'),(30,'This is a body message',30,1,'2018-11-28 23:14:24','2018-11-28 23:14:24'),(31,'This is a body message',31,1,'2018-11-28 23:14:35','2018-11-28 23:14:35'),(32,'This is a body message',32,1,'2018-11-28 23:25:22','2018-11-28 23:25:22'),(33,'This is a body message',33,1,'2018-11-28 23:25:57','2018-11-28 23:25:57'),(34,'This is a body message',34,1,'2018-11-28 23:27:04','2018-11-28 23:27:04'),(35,'This is a body message',35,1,'2018-11-28 23:28:12','2018-11-28 23:28:12'),(36,'This is a body message',36,1,'2018-11-28 23:28:19','2018-11-28 23:28:19'),(37,'This is a body message',37,1,'2018-11-28 23:29:38','2018-11-28 23:29:38'),(38,'This is a body message',38,1,'2018-11-28 23:30:14','2018-11-28 23:30:14'),(39,'This is a body message',39,1,'2018-11-28 23:30:46','2018-11-28 23:30:46'),(40,'This is a body message',40,1,'2018-11-28 23:31:17','2018-11-28 23:31:17'),(41,'This is a body message',41,1,'2018-11-28 23:31:37','2018-11-28 23:31:37'),(42,'This is a body message',42,1,'2018-11-28 23:32:09','2018-11-28 23:32:09'),(43,'This is a body message',43,1,'2018-11-28 23:32:54','2018-11-28 23:32:54'),(44,'This is a body message',44,1,'2018-11-28 23:33:14','2018-11-28 23:33:14'),(45,'This is a body message',45,1,'2018-11-28 23:33:22','2018-11-28 23:33:22'),(46,'This is a body message',46,1,'2018-11-28 23:34:39','2018-11-28 23:34:39'),(47,'This is a body message',47,1,'2018-11-28 23:34:55','2018-11-28 23:34:55'),(48,'This is a body message',48,1,'2018-11-28 23:35:19','2018-11-28 23:35:19'),(49,'This is a body message',49,1,'2018-11-28 23:37:01','2018-11-28 23:37:01'),(50,'This is a body message',50,1,'2018-11-28 23:38:55','2018-11-28 23:38:55'),(51,'This is a body message',51,1,'2018-11-28 23:39:12','2018-11-28 23:39:12'),(52,'This is a body message',52,1,'2018-11-28 23:39:34','2018-11-28 23:39:34'),(53,'This is a body message',53,1,'2018-11-28 23:39:55','2018-11-28 23:39:55'),(54,'This is a body message',54,1,'2018-11-28 23:40:15','2018-11-28 23:40:15'),(55,'This is a body message',55,1,'2018-11-28 23:41:08','2018-11-28 23:41:08'),(56,'This is a body message',56,1,'2018-11-28 23:45:30','2018-11-28 23:45:30'),(57,'This is a body message',57,2,'2018-12-01 06:41:34','2018-12-01 06:41:34'),(58,'This is a body message',58,2,'2018-12-01 09:43:25','2018-12-01 09:43:25'),(59,'This is a body message',59,2,'2018-12-01 09:43:28','2018-12-01 09:43:28'),(60,'This is a body message',60,1,'2018-12-01 22:20:30','2018-12-01 22:20:30'),(61,'This is a body message',61,1,'2018-12-01 22:20:45','2018-12-01 22:20:45'),(62,'This is a body message',62,1,'2018-12-01 22:20:49','2018-12-01 22:20:49'),(63,'This is a body message',63,1,'2018-12-01 22:21:42','2018-12-01 22:21:42'),(64,'This is a body message',64,2,'2018-12-01 22:23:02','2018-12-01 22:23:02'),(65,'This is a body message',10,2,'2018-12-01 22:53:19','2018-12-01 22:53:19'),(66,'This is a body message',10,2,'2018-12-01 22:54:38','2018-12-01 22:54:38'),(67,'This is a body message',10,2,'2018-12-01 22:56:51','2018-12-01 22:56:51'),(68,'This is a body message',10,2,'2018-12-01 23:05:52','2018-12-01 23:05:52'),(69,'This is a body message',10,2,'2018-12-01 23:07:48','2018-12-01 23:07:48'),(70,'This is a body message',10,2,'2018-12-01 23:08:09','2018-12-01 23:08:09'),(71,'This is a body message',10,1,'2018-12-01 23:08:25','2018-12-01 23:08:25'),(72,'This is a body message',10,1,'2018-12-01 23:08:28','2018-12-01 23:08:28'),(73,'This is a body message',10,1,'2018-12-01 23:17:50','2018-12-01 23:17:50'),(75,'A New body message here',10,1,'2018-12-02 00:06:40','2018-12-02 01:18:25'),(76,'This is a body message',10,2,'2018-12-02 00:06:58','2018-12-02 00:06:58'),(77,'This is a body message',10,2,'2018-12-02 00:11:12','2018-12-02 00:11:12'),(78,'This is a body message',10,2,'2018-12-02 00:11:16','2018-12-02 00:11:16'),(79,'This is a body message',10,1,'2018-12-02 00:11:22','2018-12-02 00:11:22'),(80,'This is a body message',10,1,'2018-12-02 00:11:26','2018-12-02 00:11:26'),(81,'This is a body message',10,1,'2018-12-02 02:41:15','2018-12-02 02:41:15'),(82,'This is a body message',10,1,'2018-12-02 02:41:28','2018-12-02 02:41:28');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_user_id_index` (`user_id`),
  CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (5,'This is a new title',2,'2018-11-28 22:29:51','2018-12-02 01:22:34'),(6,'This is a title',2,'2018-11-28 22:30:34','2018-11-28 22:30:34'),(7,'This is a title',2,'2018-11-28 22:35:09','2018-11-28 22:35:09'),(8,'This is a title',2,'2018-11-28 22:35:17','2018-11-28 22:35:17'),(9,'This is a title',2,'2018-11-28 22:36:42','2018-11-28 22:36:42'),(10,'This is a new title',2,'2018-11-28 22:37:33','2018-12-02 01:11:21'),(11,'This is a title',2,'2018-11-28 22:38:31','2018-11-28 22:38:31'),(12,'This is a title',2,'2018-11-28 22:39:32','2018-11-28 22:39:32'),(13,'This is a title',2,'2018-11-28 22:52:42','2018-11-28 22:52:42'),(14,'This is a title',2,'2018-11-28 22:52:57','2018-11-28 22:52:57'),(15,'This is a title',2,'2018-11-28 22:53:13','2018-11-28 22:53:13'),(16,'This is a title',2,'2018-11-28 23:04:52','2018-11-28 23:04:52'),(17,'This is a title',2,'2018-11-28 23:05:02','2018-11-28 23:05:02'),(18,'This is a title',2,'2018-11-28 23:05:13','2018-11-28 23:05:13'),(19,'This is a title',2,'2018-11-28 23:05:48','2018-11-28 23:05:48'),(20,'This is a title',2,'2018-11-28 23:06:08','2018-11-28 23:06:08'),(21,'This is a title',2,'2018-11-28 23:06:22','2018-11-28 23:06:22'),(22,'This is a title',2,'2018-11-28 23:06:42','2018-11-28 23:06:42'),(23,'This is a title',1,'2018-11-28 23:07:05','2018-11-28 23:07:05'),(24,'This is a title',1,'2018-11-28 23:08:34','2018-11-28 23:08:34'),(25,'This is a new title',1,'2018-11-28 23:08:41','2018-12-02 01:23:34'),(26,'This is a title',1,'2018-11-28 23:11:49','2018-11-28 23:11:49'),(27,'This is a title',1,'2018-11-28 23:13:38','2018-11-28 23:13:38'),(28,'This is a title',1,'2018-11-28 23:13:50','2018-11-28 23:13:50'),(29,'This is a title',1,'2018-11-28 23:14:09','2018-11-28 23:14:09'),(30,'This is a title',1,'2018-11-28 23:14:24','2018-11-28 23:14:24'),(31,'This is a title',1,'2018-11-28 23:14:35','2018-11-28 23:14:35'),(32,'This is a title',1,'2018-11-28 23:25:22','2018-11-28 23:25:22'),(33,'This is a title',1,'2018-11-28 23:25:57','2018-11-28 23:25:57'),(34,'This is a title',1,'2018-11-28 23:27:04','2018-11-28 23:27:04'),(35,'This is a title',1,'2018-11-28 23:28:12','2018-11-28 23:28:12'),(36,'This is a title',1,'2018-11-28 23:28:19','2018-11-28 23:28:19'),(37,'This is a title',1,'2018-11-28 23:29:38','2018-11-28 23:29:38'),(38,'This is a title',1,'2018-11-28 23:30:14','2018-11-28 23:30:14'),(39,'This is a title',1,'2018-11-28 23:30:46','2018-11-28 23:30:46'),(40,'This is a title',1,'2018-11-28 23:31:17','2018-11-28 23:31:17'),(41,'This is a title',1,'2018-11-28 23:31:37','2018-11-28 23:31:37'),(42,'This is a title',1,'2018-11-28 23:32:09','2018-11-28 23:32:09'),(43,'This is a title',1,'2018-11-28 23:32:54','2018-11-28 23:32:54'),(44,'This is a title',1,'2018-11-28 23:33:14','2018-11-28 23:33:14'),(45,'This is a title',1,'2018-11-28 23:33:22','2018-11-28 23:33:22'),(46,'This is a title',1,'2018-11-28 23:34:39','2018-11-28 23:34:39'),(47,'This is a title',1,'2018-11-28 23:34:55','2018-11-28 23:34:55'),(48,'This is a title',1,'2018-11-28 23:35:19','2018-11-28 23:35:19'),(49,'This is a title',1,'2018-11-28 23:37:01','2018-11-28 23:37:01'),(50,'This is a title',1,'2018-11-28 23:38:55','2018-11-28 23:38:55'),(51,'This is a title',1,'2018-11-28 23:39:12','2018-11-28 23:39:12'),(52,'This is a title',1,'2018-11-28 23:39:34','2018-11-28 23:39:34'),(53,'This is a title',1,'2018-11-28 23:39:55','2018-11-28 23:39:55'),(54,'This is a title',1,'2018-11-28 23:40:15','2018-11-28 23:40:15'),(55,'This is a title',1,'2018-11-28 23:41:08','2018-11-28 23:41:08'),(56,'This is a title',1,'2018-11-28 23:45:30','2018-11-28 23:45:30'),(57,'This is a title',2,'2018-12-01 06:41:34','2018-12-01 06:41:34'),(58,'This is a title',2,'2018-12-01 09:43:25','2018-12-01 09:43:25'),(59,'This is a title',2,'2018-12-01 09:43:28','2018-12-01 09:43:28'),(60,'This is a title',1,'2018-12-01 22:20:30','2018-12-01 22:20:30'),(61,'This is a title',1,'2018-12-01 22:20:45','2018-12-01 22:20:45'),(62,'This is a title',1,'2018-12-01 22:20:49','2018-12-01 22:20:49'),(63,'This is a title',1,'2018-12-01 22:21:42','2018-12-01 22:21:42'),(64,'This is a title',2,'2018-12-01 22:23:02','2018-12-01 22:23:02');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nahid4475@gmail.com','nahid4475@gmail.com',NULL,'$2y$10$HUcCaAu3YPErPV80YG554eDfjtwfzj/XG9yMHIGxE4Ssf2WkZC.uy',NULL,'2018-11-27 08:40:18','2018-11-27 08:40:18'),(2,'mehedi4475@gmail.com','mehedi4475@gmail.com',NULL,'$2y$10$xPHITUZiHlZgVRbgTLPmuOezMyUYlt4GahcoxGwPifGrK1cnbVmza',NULL,'2018-11-27 08:43:35','2018-11-27 08:43:35'),(3,'hasan4475@gmail.com','hasan4475@gmail.com',NULL,'$2y$10$C7QZNSjNTYom222RWcRP0ewIlG6ePwatb5giUEQel6/Fkx4f.jbyq',NULL,'2018-11-27 22:00:38','2018-11-27 22:00:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02 15:39:36
