-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:28 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_login`
--

CREATE TABLE `cust_login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_login`
--

INSERT INTO `cust_login` (`username`, `password`) VALUES
('admin', '1234'),
('user', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `joinbb`
--

CREATE TABLE `joinbb` (
  `name` char(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pass_word` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joinbb`
--

INSERT INTO `joinbb` (`name`, `email`, `phone`, `pass_word`, `date`) VALUES
('nicole', 'nicole@12gmail.com', '7777776521', 'wehiwudui', '2022-08-21 20:11:57'),
('khali', 'tttt@122gmail.com', '99998', 'dfsffef', '2022-08-21 20:31:23'),
('lol', 'lol@gmail.com', '222222111', 'effe231', '2022-08-21 20:34:59'),
('SHANON', 'SHANOM@123GMAIL.COM', '7586848439', 'EIOEJHEFHEFDF', '2022-08-22 06:38:15'),
('nash', 'nash123@gmail.com', '12345', '1234', '2022-08-22 06:55:08'),
('nash', 'nash123@gmail.com', '12345', '1234', '2022-08-22 06:56:05'),
('Rafath', 'raf123@gmail.com', '11111', '1111', '2022-08-22 06:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`email`) VALUES
('nora123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_login`
--
ALTER TABLE `cust_login`
  ADD PRIMARY KEY (`username`,`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
