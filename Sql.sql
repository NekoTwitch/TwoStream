-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: twostream
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pairs`
--

DROP TABLE IF EXISTS `pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pairs` (
  `id_pairs` int(20) NOT NULL AUTO_INCREMENT,
  `id_stream1` int(20) NOT NULL,
  `id_stream2` int(20) NOT NULL,
  `amount` int(255) DEFAULT '1',
  PRIMARY KEY (`id_pairs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pairs`
--

LOCK TABLES `pairs` WRITE;
/*!40000 ALTER TABLE `pairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams` (
  `id_twitch` int(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `followers` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mature` tinyint(1) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `game` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_twitch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams`
--

LOCK TABLES `streams` WRITE;
/*!40000 ALTER TABLE `streams` DISABLE KEYS */;
/*!40000 ALTER TABLE `streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `logo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `password` char(40) CHARACTER SET ascii NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2018-02-27 15:34:12
