/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Android (aarch64)
--
-- Host: localhost    Database: oems_db
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `stok_celana`
--

DROP TABLE IF EXISTS `stok_celana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_celana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warna_celana` varchar(100) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_celana`
--

LOCK TABLES `stok_celana` WRITE;
/*!40000 ALTER TABLE `stok_celana` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `stok_celana` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `stok_kaos_jadi`
--

DROP TABLE IF EXISTS `stok_kaos_jadi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_kaos_jadi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warna_kaos` varchar(100) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `desain` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_kaos_jadi`
--

LOCK TABLES `stok_kaos_jadi` WRITE;
/*!40000 ALTER TABLE `stok_kaos_jadi` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `stok_kaos_jadi` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `stok_kaos_polos`
--

DROP TABLE IF EXISTS `stok_kaos_polos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stok_kaos_polos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warna_kaos` varchar(100) DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stok_kaos_polos`
--

LOCK TABLES `stok_kaos_polos` WRITE;
/*!40000 ALTER TABLE `stok_kaos_polos` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `stok_kaos_polos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
(1,'Hilman','123','Operator Produksi'),
(2,'Khofi','xyz','Designer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-11-29 18:14:21
