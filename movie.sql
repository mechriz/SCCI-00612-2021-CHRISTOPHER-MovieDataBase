-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 06:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--
CREATE DATABASE IF NOT EXISTS `movie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `movie`;

-- --------------------------------------------------------

--
-- Table structure for table `audittrail`
--

CREATE TABLE IF NOT EXISTS `audittrail` (
  `auditid` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(50) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `timestamp` time DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `recordid` int(11) DEFAULT NULL,
  `olddata` varchar(50) DEFAULT NULL,
  `newdata` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auditid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `D.O.B` date DEFAULT NULL,
  `passport_photo` varchar(50) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  KEY `deleted_by` (`deleted_by`),
  KEY `added_by` (`added_by`),
  KEY `director_id` (`director_id`)
) ;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director_id`, `first_name`, `last_name`, `D.O.B`, `passport_photo`, `added_by`, `deleted`, `date_deleted`, `deleted_by`, `gender`) VALUES
(1, 'Justin', 'Lin', '1971-10-11', 'https://th.bing.com/th?id=OSK.HEROhwIgVmtloZGxkye8', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(2, 'James', 'Wan', '1977-02-26', 'https://th.bing.com/th?id=OSK.HERONnUkcNNMspkN4DUM', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(3, 'Felix', 'Gray', '1969-07-17', 'https://th.bing.com/th?id=OSK.HEROTY6RWdFSQq47jJDA', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(4, 'Louis', 'Leterrier', '1977-06-22', 'https://th.bing.com/th?id=OSK.HEROQC3SjrD2oVkk8zeJ', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(5, 'Rob', 'Cohen', '1949-03-12', 'https://www.bing.com/th?id=OIP.W0SCnyRpM-p7--hvlV9', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(6, 'John', 'Singleton', '1968-01-06', 'https://upload.wikimedia.org/wikipedia/commons/4/4', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(9, 'Steven', 'Spielberg', '1946-12-18', 'https://upload.wikimedia.org/wikipedia/commons/8/8', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(10, 'Kathryn', 'Bigelow', '1951-11-27', 'https://upload.wikimedia.org/wikipedia/commons/2/2', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(11, 'Quentin', 'Tarantino', '1963-03-27', 'https://upload.wikimedia.org/wikipedia/commons/0/0', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(12, 'Ava', 'DuVernay', '1972-08-24', 'https://upload.wikimedia.org/wikipedia/commons/8/8', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(13, 'Martin', 'Scorsese', '1942-11-17', 'https://upload.wikimedia.org/wikipedia/commons/4/4', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(14, 'Christopher', 'Nolan', '1970-07-30', 'https://upload.wikimedia.org/wikipedia/commons/0/0', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(15, 'Greta', 'Gerwig', '1983-08-04', 'https://upload.wikimedia.org/wikipedia/commons/2/2', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(16, 'Spike', 'Lee', '1957-03-20', 'https://upload.wikimedia.org/wikipedia/commons/3/3', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(17, 'Sofia', 'Coppola', '1971-05-14', 'https://upload.wikimedia.org/wikipedia/commons/5/5', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(18, 'Steven', 'Spielberg', '1946-12-18', 'https://upload.wikimedia.org/wikipedia/commons/8/8', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(19, 'Kathryn', 'Bigelow', '1951-11-27', 'https://upload.wikimedia.org/wikipedia/commons/2/2', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(20, 'Quentin', 'Tarantino', '1963-03-27', 'https://upload.wikimedia.org/wikipedia/commons/0/0', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(21, 'Ava', 'DuVernay', '1972-08-24', 'https://upload.wikimedia.org/wikipedia/commons/8/8', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(22, 'Martin', 'Scorsese', '1942-11-17', 'https://upload.wikimedia.org/wikipedia/commons/4/4', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(23, 'Christopher', 'Nolan', '1970-07-30', 'https://upload.wikimedia.org/wikipedia/commons/0/0', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(24, 'Greta', 'Gerwig', '1983-08-04', 'https://upload.wikimedia.org/wikipedia/commons/2/2', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female'),
(25, 'Spike', 'Lee', '1957-03-20', 'https://upload.wikimedia.org/wikipedia/commons/3/3', NULL, 'no', '0000-00-00 00:00:00', NULL, 'male'),
(26, 'Sofia', 'Coppola', '1971-05-14', 'https://upload.wikimedia.org/wikipedia/commons/5/5', NULL, 'no', '0000-00-00 00:00:00', NULL, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `genreId` int(11) NOT NULL AUTO_INCREMENT,
  `genrename` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `rated` int(11) DEFAULT NULL,
  PRIMARY KEY (`genreId`),
  KEY `deletedby` (`deletedby`)
) ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genreId`, `genrename`, `dateadded`, `deleted`, `deletedby`, `datedeleted`, `rated`) VALUES
(1, 'Action', '2024-07-31 00:00:00', 'no', NULL, NULL, 0),
(2, 'Comedy', '2024-07-30 00:00:00', 'no', NULL, NULL, 0),
(3, 'Drama', '2024-07-29 00:00:00', 'no', NULL, NULL, 0),
(4, 'Horror', '2024-07-28 00:00:00', 'no', NULL, NULL, 0),
(5, 'Sci-Fi', '2024-07-27 00:00:00', 'no', NULL, NULL, 0),
(6, 'Romance', '2024-07-26 00:00:00', 'no', NULL, NULL, 0),
(7, 'Thriller', '2024-07-25 00:00:00', 'no', NULL, NULL, 0),
(8, 'Fantasy', '2024-07-24 00:00:00', 'no', NULL, NULL, 0),
(9, 'Documentary', '2024-07-23 00:00:00', 'no', NULL, NULL, 0),
(10, 'Animation', '2024-07-22 00:00:00', 'no', NULL, NULL, 0),
(11, 'Adventure', '2024-07-21 00:00:00', 'no', NULL, NULL, 0),
(12, 'Mystery', '2024-07-20 00:00:00', 'no', NULL, NULL, 0),
(13, 'Musical', '2024-07-19 00:00:00', 'no', NULL, NULL, 0),
(14, 'Biography', '2024-07-18 00:00:00', 'no', NULL, NULL, 0),
(15, 'Western', '2024-07-17 00:00:00', 'no', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languageId` int(11) NOT NULL AUTO_INCREMENT,
  `languagename` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL,
  PRIMARY KEY (`languageId`),
  KEY `addedby` (`addedby`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `releasedate` date NOT NULL,
  `runningtime` time NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `cover` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`movieId`),
  KEY `movies_ibfk_1` (`addedby`),
  KEY `movies_ibfk_2` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE IF NOT EXISTS `movie_cast` (
  `castId` int(11) NOT NULL AUTO_INCREMENT,
  `movieId` int(11) NOT NULL,
  `starId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `roledescription` varchar(2000) NOT NULL,
  `castname` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL,
  PRIMARY KEY (`castId`),
  KEY `movieId` (`movieId`),
  KEY `starId` (`starId`),
  KEY `roleId` (`roleId`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movie_categories`
--

CREATE TABLE IF NOT EXISTS `movie_categories` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE IF NOT EXISTS `movie_genres` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `genreId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieId`),
  KEY `genreId` (`genreId`),
  KEY `userId` (`userId`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movie_languages`
--

CREATE TABLE IF NOT EXISTS `movie_languages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `movieId` int(11) NOT NULL,
  `languageId` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`Id`),
  KEY `movieId` (`movieId`),
  KEY `languageId` (`languageId`),
  KEY `addedby` (`addedby`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movie_production_companies`
--

CREATE TABLE IF NOT EXISTS `movie_production_companies` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieId`),
  KEY `userId` (`userId`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `movie_resolution`
--

CREATE TABLE IF NOT EXISTS `movie_resolution` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `resolutionId` int(11) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieId`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE IF NOT EXISTS `nationalities` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(50) DEFAULT NULL,
  `movie_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `priviledges`
--

CREATE TABLE IF NOT EXISTS `priviledges` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `objectId` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `ratingid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`ratingid`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `resolution`
--

CREATE TABLE IF NOT EXISTS `resolution` (
  `resolutionId` int(11) NOT NULL AUTO_INCREMENT,
  `resolutionname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`resolutionId`),
  KEY `userId` (`userId`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `roleId` int(11) NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `addedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deltedby` int(11) NOT NULL,
  KEY `addedby` (`addedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE IF NOT EXISTS `stars` (
  `starId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nationalityId` int(11) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `alist` tinyint(1) NOT NULL DEFAULT 0,
  `addedby` int(11) DEFAULT NULL,
  `deleted` varchar(3) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`starId`),
  KEY `nationalityId` (`nationalityId`),
  KEY `addedby` (`addedby`),
  KEY `deletedby` (`deletedby`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `systemadmin` tinyint(1) NOT NULL,
  `accountactive` tinyint(1) NOT NULL,
  `dateadded` date NOT NULL,
  `addedby` int(11) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `firstname`, `lastname`, `password`, `salt`, `systemadmin`, `accountactive`, `dateadded`, `addedby`, `mobile`, `email`) VALUES
(1, 'jdoe', 'John', 'Doe', 'password123', 'salt1', 0, 0, '2024-07-31', 0, '1234567890', 'jdoe@example.com'),
(2, 'asmith', 'Alice', 'Smith', 'password456', 'salt2', 0, 0, '2024-07-30', 0, '1234567891', 'asmith@example.com'),
(3, 'bwhite', 'Bob', 'White', 'password789', 'salt3', 0, 0, '2024-07-29', 0, '1234567892', 'bwhite@example.com'),
(4, 'cjones', 'Carol', 'Jones', 'password101', 'salt4', 0, 0, '2024-07-28', 0, '1234567893', 'cjones@example.com'),
(5, 'dgreen', 'David', 'Green', 'password202', 'salt5', 0, 0, '2024-07-27', 0, '1234567894', 'dgreen@example.com'),
(6, 'ewilson', 'Emma', 'Wilson', 'password303', 'salt6', 0, 0, '2024-07-26', 0, '1234567895', 'ewilson@example.com'),
(7, 'fthomas', 'Frank', 'Thomas', 'password404', 'salt7', 0, 0, '2024-07-25', 0, '1234567896', 'fthomas@example.com'),
(8, 'gmartin', 'Grace', 'Martin', 'password505', 'salt8', 0, 0, '2024-07-24', 0, '1234567897', 'gmartin@example.com'),
(9, 'hlee', 'Henry', 'Lee', 'password606', 'salt9', 0, 0, '2024-07-23', 0, '1234567898', 'hlee@example.com'),
(10, 'ijackson', 'Ivy', 'Jackson', 'password707', 'salt10', 0, 0, '2024-07-22', 0, '1234567899', 'ijackson@example.com'),
(11, 'kmoore', 'Kevin', 'Moore', 'password808', 'salt11', 0, 0, '2024-07-21', 0, '1234567800', 'kmoore@example.com'),
(12, 'lclark', 'Laura', 'Clark', 'password909', 'salt12', 0, 0, '2024-07-20', 0, '1234567801', 'lclark@example.com'),
(13, 'mking', 'Michael', 'King', 'password010', 'salt13', 0, 0, '2024-07-19', 0, '1234567802', 'mking@example.com'),
(14, 'nwright', 'Nancy', 'Wright', 'password111', 'salt14', 0, 0, '2024-07-18', 0, '1234567803', 'nwright@example.com'),
(15, 'operez', 'Oscar', 'Perez', 'password212', 'salt15', 0, 0, '2024-07-17', 0, '1234567804', 'operez@example.com'),
(16, 'pwalker', 'Paul', 'Walker', 'password313', 'salt16', 0, 0, '2024-07-16', 0, '1234567805', 'pwalker@example.com'),
(17, 'qyoung', 'Quincy', 'Young', 'password414', 'salt17', 0, 0, '2024-07-15', 0, '1234567806', 'qyoung@example.com'),
(18, 'rhall', 'Rachel', 'Hall', 'password515', 'salt18', 0, 0, '2024-07-14', 0, '1234567807', 'rhall@example.com'),
(19, 'sallen', 'Sam', 'Allen', 'password616', 'salt19', 0, 0, '2024-07-13', 0, '1234567808', 'sallen@example.com'),
(20, 'tturner', 'Tina', 'Turner', 'password717', 'salt20', 0, 0, '2024-07-12', 0, '1234567809', 'tturner@example.com'),
(21, 'uwilliams', 'Uma', 'Williams', 'password818', 'salt21', 0, 0, '2024-07-11', 0, '1234567810', 'uwilliams@example.com'),
(22, 'vclark', 'Victor', 'Clark', 'password919', 'salt22', 0, 0, '2024-07-10', 0, '1234567811', 'vclark@example.com'),
(23, 'wmartinez', 'Wendy', 'Martinez', 'password020', 'salt23', 0, 0, '2024-07-09', 0, '1234567812', 'wmartinez@example.com'),
(24, 'xrobinson', 'Xander', 'Robinson', 'password121', 'salt24', 0, 0, '2024-07-08', 0, '1234567813', 'xrobinson@example.com'),
(25, 'ylopez', 'Yara', 'Lopez', 'password222', 'salt25', 0, 0, '2024-07-07', 0, '1234567814', 'ylopez@example.com'),
(26, 'zjohnson', 'Zach', 'Johnson', 'password323', 'salt26', 0, 0, '2024-07-06', 0, '1234567815', 'zjohnson@example.com'),
(27, 'aanderson', 'Amy', 'Anderson', 'password424', 'salt27', 0, 0, '2024-07-05', 0, '1234567816', 'aanderson@example.com'),
(28, 'bthompson', 'Brian', 'Thompson', 'password525', 'salt28', 0, 0, '2024-07-04', 0, '1234567817', 'bthompson@example.com'),
(29, 'cgarcia', 'Carmen', 'Garcia', 'password626', 'salt29', 0, 0, '2024-07-03', 0, '1234567818', 'cgarcia@example.com'),
(30, 'dlee', 'Daniel', 'Lee', 'password727', 'salt30', 0, 0, '2024-07-02', 0, '1234567819', 'dlee@example.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD CONSTRAINT `audittrail_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userId`);

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `directors_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`userId`);

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`),
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`starId`) REFERENCES `stars` (`starId`),
  ADD CONSTRAINT `movie_cast_ibfk_3` FOREIGN KEY (`roleId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `movie_cast_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`),
  ADD CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`genreId`) REFERENCES `genres` (`genreId`),
  ADD CONSTRAINT `movie_genres_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `movie_genres_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movie_languages`
--
ALTER TABLE `movie_languages`
  ADD CONSTRAINT `movie_languages_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`),
  ADD CONSTRAINT `movie_languages_ibfk_2` FOREIGN KEY (`languageId`) REFERENCES `languages` (`languageId`),
  ADD CONSTRAINT `movie_languages_ibfk_3` FOREIGN KEY (`addedby`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `movie_languages_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movie_production_companies`
--
ALTER TABLE `movie_production_companies`
  ADD CONSTRAINT `movie_production_companies_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `movie_production_companies_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`),
  ADD CONSTRAINT `movie_production_companies_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `movie_resolution`
--
ALTER TABLE `movie_resolution`
  ADD CONSTRAINT `movie_resolution_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`),
  ADD CONSTRAINT `movie_resolution_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `resolution`
--
ALTER TABLE `resolution`
  ADD CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `resolution_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userId`);

--
-- Constraints for table `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`nationalityId`) REFERENCES `nationalities` (`countryId`),
  ADD CONSTRAINT `stars_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `stars_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
