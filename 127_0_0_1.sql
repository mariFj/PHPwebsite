-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2014 at 11:08 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `limba_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Email`, `Password`) VALUES
('marmari', 'marmari'),
('wete', 'wete');
--
-- Database: `phpkurs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hased_password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `menu_name`, `position`, `visible`, `content`, `subject_id`) VALUES
(0, 'our mission', 1, 1, 'our mission', 1),
(2, 'nazi', 2, 1, 'man barye to mimonam', 2),
(3, 'nazi', 2, 1, 'man barye to mimonam', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'today widget', 1, 1),
(2, 'maryam', 3, 1),
(3, 'wete', 2, 1);
--
-- Database: `phpwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `confirmcode` varchar(32) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id_user`, `name`, `email`, `phone_number`, `username`, `password`, `confirmcode`) VALUES
(3, 'wete', 'wwtewe@yahoo.fr', '', 'wete', 'f1c3153cd65638bcadefb84fe335fb08', '7b7a01473060e39c03178b490ae1aeb6'),
(5, 'maryam', 'mjalali.63@gmail.com', '', 'amitis', '797dd643f6e0e9253fe009df346db7cf', '9b175400c8009689154d2a43f5097406');
--
-- Database: `test`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
