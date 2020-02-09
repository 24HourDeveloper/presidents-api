-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for presidents
DROP DATABASE IF EXISTS `presidents`;
CREATE DATABASE IF NOT EXISTS `presidents` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `presidents`;

-- Dumping structure for table presidents.president
DROP TABLE IF EXISTS `president`;
CREATE TABLE IF NOT EXISTS `president` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `img_url` varchar(50) NOT NULL,
  `dob` timestamp NOT NULL,
  `dod` timestamp NULL DEFAULT NULL,
  `number` int NOT NULL,
  `birth_place` varchar(50) NOT NULL,
  `impeached` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`first_name`,`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table presidents.president: ~1 rows (approximately)
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` (`id`, `first_name`, `last_name`, `height`, `img_url`, `dob`, `dod`, `number`, `birth_place`, `impeached`) VALUES
	(1, 'George', 'Washington', '99', 'rhrdhbrhbb', '2020-02-09 11:27:12', '2020-02-09 11:27:20', 1, 'virginia', 0);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;

-- Dumping structure for table presidents.term
DROP TABLE IF EXISTS `term`;
CREATE TABLE IF NOT EXISTS `term` (
  `id` int NOT NULL AUTO_INCREMENT,
  `president_id` int NOT NULL,
  `start_date` timestamp NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `president_id` (`president_id`),
  KEY `start_end_date` (`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table presidents.term: ~0 rows (approximately)
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` (`id`, `president_id`, `start_date`, `end_date`) VALUES
	(1, 1, '2020-02-09 11:29:37', '2020-02-09 11:29:38');
/*!40000 ALTER TABLE `term` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
