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
CREATE DATABASE
IF NOT EXISTS `presidents` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `presidents`;

-- Dumping structure for table presidents.president
DROP TABLE IF EXISTS `president`;
CREATE TABLE
IF NOT EXISTS `president`
(
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar
(50) NOT NULL,
  `last_name` varchar
(50) NOT NULL,
  `height` varchar
(50) NOT NULL,
  `img_url` varchar
(50) NOT NULL,
  `dob` Date NOT NULL,
  `dod` Date NULL DEFAULT NULL,
  `number` int NOT NULL,
  `birth_place` varchar
(50) NOT NULL,
  `impeached` tinyint
(1) DEFAULT '0',
  PRIMARY KEY
(`id`),
  KEY `name`
(`first_name`,`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table presidents.president: ~1 rows (approximately)
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` (
`id`,
`first_name`
, `last_name`, `height`, `img_url`, `dob`, `dod`, `number`, `birth_place`, `impeached`) VALUES
(1, 'George', 'Washington', '74', 'http://localhost:5000/images/president1.jpg', '1732-02-22', '1799-12-14', 1, 'Westmoreland County, Virginia', 0),
(2, 'John', 'Adams', '68', 'http://localhost:5000/images/president2.jpg', '1735-10-30', '1826-07-04', 2, 'Braintree, Massachusetts', 0),
(3, 'Thomas', 'Jefferson', '74', 'http://localhost:5000/images/president3.jpg', '1743-04-13', '1826-07-04', 3, 'Shadewell, Virginia', 0),
(4, 'James', 'Madison Jr', '65', 'http://localhost:5000/images/president4.jpg', '1751-03-16', '1836-06-28', 4, 'Port Conway, Virginia', 0),
(5, 'James', 'Monroe', '72', 'http://localhost:5000/images/president5.jpg', '1758-04-28', '1831-07-04', 5, 'Westmoreland County, Virginia', 0),
(6, 'John Quincy', 'Adams', '68', 'http://localhost:5000/images/president6.jpg', '1767-04-11', '1848-02-23', 6, 'Braintree, Massachusetts', 0),
(7, 'Andrew','Jackson','73','http://localhost:5000/images/president7.jpg','1767-03-15','1845-06-08',7,'Waxhaws, South Carolina',0),
(8, 'Martin Van', 'Buren', '66', 'http://localhost:5000/images/president8.jpg','1782-12-05','1862-07-24',8,'Kinderhook, New York',0),
(9, 'William Henry','Harrison','68', 'http://localhost:5000/images/president9.jpg','1773-02-09','1841-04-04',9,'Richmond, Virginia',0),
(10, 'John','Tyler','72','http://localhost:5000/images/president10.png','1790-03-29','1862-01-18',10,'Charles City, Virginia',0),
(11, 'James Knox', 'Polk', '68','http://localhost:5000/images/president11.jpg','1795-11-02','1849-06-15',11,'Pineville, North Carolina',0),
(12, 'Zachary','Taylor','68','http://localhost:5000/images/president12.jpg','1784-11-24','1850-07-09',12,'Barboursville, Virginia',0),
(13,'Millard','Fillmore','69','http://localhost:5000/images/president13.jpg','1800-01-07','1874-07-09',13,'Moravia, New York',0),
(14, 'Franklin','Pierce','70','http://localhost:5000/images/president14.jpg','1804-11-23','1869-10-08',14,'Hillsborough, New Hampshire',0),
(15, 'James','Buchanan Jr.','72','http://localhost:5000/images/president15.jpg','1791-04-23','1868-06-01',15,'Cove Gap, Pennsylvania',0),
(16, 'Abraham','Lincolln','76','http://localhost:5000/images/president16.jpg','1809-02-12','1865-04-15',16,'Sinking Spring Farm, Kentucky',0),
(17, 'Andrew','Johnson','70','http://localhost:5000/images/president17.jpg','1808-12-29','1875-07-31',17,'Raleigh, North Carolina',0),
(18, 'Ulysess S','Grant','68','http://localhost:5000/images/president18.jpg','1822-04-27','1885-07-23',18,'Point Pleasant, Ohio',0),
(19, 'Rutherford Birchard','Hayes','69','http://localhost:5000/images/president19.jpg','1822-10-04','1893-01-17',19,'Delaware, Ohio',0),
(20, 'James Abram','Garfield','72','http://localhost:5000/images/president20.jpg','1831-11-19','1881-11-19',20,'Moreland Hills, Ohio',0),
(21, 'Chester Alan','Arthur','72','http://localhost:5000/images/president21.jpg','1829-10-05','1886-11-18',21,'Fairfield, Vermont',0),
(22,  'Grover','Cleveland','71','http://localhost:5000/images/president22.jpg','1837-03-18','1908-06-24',22,'Caldwell, New Jersey',0),
(23, 'Benjamin','Harrison','66','http://localhost:5000/images/president23.jpg','1833-08-20','1901-03-13',23,'North Bend, Ohio',0),
(24, 'Grover','Cleveland','71','http://localhost:5000/images/president24.jpg','1837-03-18','1908-06-24',24,'Caldwell, New Jersey',0),
(25, 'William','Mckinley','67','http://localhost:5000/images/president25.jpg','1843-01-29','1901-09-14',25,'Niles, Ohio',0),
(26, 'Theodore', 'Roosevelt', '71.5','http://localhost:5000/images/president26.jpg', '1858-10-27', '1919-01-06',26, 'New York City, New York', 0),
(27, 'William Howard', 'Taft', '72','http://localhost:5000/images/president27.jpg', '1857-09-15', '1930-03-08',27, 'Cincinnati, Ohio', 0),
(28, 'Woodrow', 'Wilson', '71.5','http://localhost:5000/images/president28.jpg', '1856-12-28', '1924-02-03',28, 'Washington, D.C.', 0),
(29, 'Warren G.', 'Harding', '72','http://localhost:5000/images/president29.jpg', '1865-11-02', '1923-08-02', 29, 'Blooming Grove, Ohio', 0),
(30, 'Calvin', 'Coolidge', '71.5','http://localhost:5000/images/president30.jpg', '1872-07-04', '1933-01-05', 30, 'Plymouth Notch, Vermont', 0),
(31, 'Herbert Clark', 'Hoover' ,'72','http://localhost:5000/images/president31.jpg', '1874-08-10', '1964-10-20', 31, 'West Branch, Iowa', 0),
(32, 'Franklin D.', 'Roosevelt', '74','http://localhost:5000/images/president32.jpg', '1882-01-30', '1945-04-12', 32, 'Hype Park, New York', 0),
(33, 'Harry S.', 'Truman', '70','http://localhost:5000/images/president33.jpg','1884-05-08', '1972-12-26', 33, 'Lamar, Missouri',0),
(34,'Dwight D.', 'Eisenhower' ,'71.5','http://localhost:5000/images/president34.jpg', '1890-10-14', '1969-03-28', 34, 'Denison, Texas',0),
(35,'John F.', 'Kennedy', '72','http://localhost:5000/images/president35.jpg', '1917-05-29', '1963-11-22', 35,  'Dallas, Texas',0),
(36,'Lyndon B.', 'Johnson', '77','http://localhost:5000/images/president36.jpg', '1908-08-27', '1973-01-22', 36, 'Stonewall, Texas',0),
(37,'Richard','Nixon', '71' ,'http://localhost:5000/images/president37.jpg',  '1913-01-09', '1994-04-22', 37, 'Yorba Linda, California' ,0),
(38,'Gerald', 'Ford', '72', 'http://localhost:5000/images/president38.jpg', '1913-07-14' , '2006-12-26', 38, 'Omaha, Nebraska', 0),
(39,'Jimmy', 'Carter', '71.5','http://localhost:5000/images/president39.jpg', '1924-10-01', null, 39, 'Plains Georgia' ,0),
(40,'Ronald', 'Reagan', '73','http://localhost:5000/images/president40.jpg', '1911-02-06' , '2004-06-05', 40, 'Tampico, Illinois', 0),
(41,'George H. W.', 'Bush', '74','http://localhost:5000/images/president41.jpg', '1924-06-12' , '2018-11-30', 41, 'Milton, MA', 0),
(42,'Bill', 'Clinton', '74','http://localhost:5000/images/president42.jpg', '1946-08-19', null, 42, 'Hope, Arkansas', 1),
(43,'George W.', 'Bush', '72','http://localhost:5000/images/president43.jpg',  '1946-07-06', null, 43 ,'New Haven, Connecticut', 0),
(44,'Barack', 'Obama Sr' ,'74','http://localhost:5000/images/president44.jpg', '1961-08-04', null, 44 , 'Honolulu, Hawaii', 0),
(45,'Donald', 'Trump', '76','http://localhost:5000/images/president45.jpg', '1946-06-14', null, 45, 'New York, NY', 1);

/*!40000 ALTER TABLE `president` ENABLE KEYS */;

-- Dumping structure for table presidents.term
DROP TABLE IF EXISTS `term`;
CREATE TABLE
IF NOT EXISTS `term`
(
  `id` int NOT NULL AUTO_INCREMENT,
  `president_id` int NOT NULL,
  `start_date` timestamp NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`),
  KEY `president_id`
(`president_id`),
  KEY `start_end_date`
(`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table presidents.term: ~0 rows (approximately)
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` (
`id`,
`president_id`
, `start_date`, `end_date`) VALUES
(1, 1, '1789-04-30', '1797-03-04'),
(2, 2, '1797-03-04', '1801-03-04'),
(3, 3, '1801-03-04', '1809-03-04'),
(4, 4, '1809-03-04', '1817-03-04'),
(5, 5, '1817-03-04', '1825-03-04');
/*!40000 ALTER TABLE `term` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
