-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 03:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `sno` int(4) NOT NULL,
  `name` text NOT NULL,
  `place` text NOT NULL,
  `country` text NOT NULL,
  `season` text NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`sno`, `name`, `place`, `country`, `season`, `other`, `dt`) VALUES
(1, '', '', '', '', '', '2021-01-31 14:54:26'),
(1, 'Darshan', 'Abudabi', 'Dubai', 'Winter', 'good', '2021-01-31 14:56:11'),
(1, 'Darshan', 'AbuDabi', 'Maharashtra', 'Winter', 'Awesome', '2021-01-31 16:57:33'),
(1, 'Darhan', 'xx', 'xxx', 'xxxx', 'xxxxxx', '2021-01-31 16:59:47'),
(0, 'Darshan Amol Somani', 'Abu Dabi', 'India', 'Winter', 'fazfbshbsh', '2021-01-31 17:13:07'),
(0, 'Darshan Amol Somani', 'Abu Dabi', 'India', 'Winter', 'Awesome', '2021-01-31 17:13:22'),
(0, 'Darshan Amol Somani', 'Abu Dabi', 'India', 'Winter', 'Awesome', '2021-01-31 17:16:45'),
(0, 'Darshan Amol Somani', 'Pachmadi', 'India', 'Summer', 'Best place', '2021-01-31 17:26:27'),
(0, 'Rohan', 'Delhi', 'India', 'Summer', 'Dhasu', '2021-01-31 17:27:36'),
(0, 'Rohan', 'Delhi', 'India', 'Summer', 'Dhasu', '2021-01-31 17:39:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
