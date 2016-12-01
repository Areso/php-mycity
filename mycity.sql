-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2016 at 08:38 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycity`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id_event` smallint(6) NOT NULL,
  `gold_changing` mediumint(9) NOT NULL,
  `pop_changing` mediumint(9) NOT NULL,
  `warriors_changing` mediumint(9) NOT NULL,
  `level_changing` tinyint(4) NOT NULL,
  `level_current` tinyint(4) NOT NULL,
  `id_leveling` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_event`, `gold_changing`, `pop_changing`, `warriors_changing`, `level_changing`, `level_current`, `id_leveling`) VALUES
(1, -2, 0, 0, 1, 0, 1),
(2, -4, 0, 0, 1, 2, 1),
(3, -2, 0, 0, 1, 0, 2),
(4, -4, 0, 0, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id_leveling` tinyint(4) NOT NULL,
  `object_leveling` varchar(70) NOT NULL,
  PRIMARY KEY (`id_leveling`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id_leveling`, `object_leveling`) VALUES
(0, 'not applicable'),
(1, 'Castle'),
(2, 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id_player` mediumint(9) NOT NULL AUTO_INCREMENT,
  `gold` bigint(20) NOT NULL,
  `pop` smallint(6) NOT NULL,
  `warriors` smallint(6) NOT NULL,
  `castle_level` tinyint(4) NOT NULL,
  `house_level` tinyint(4) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  PRIMARY KEY (`id_player`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id_player`, `gold`, `pop`, `warriors`, `castle_level`, `house_level`, `nickname`, `cityname`) VALUES
(1, 0, 2, 0, 0, 0, 'Areso', 'HeroesCity');

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE IF NOT EXISTS `queues` (
  `id_queue` bigint(20) NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `id_event` smallint(6) NOT NULL,
  `id_player` mediumint(9) NOT NULL,
  PRIMARY KEY (`id_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
