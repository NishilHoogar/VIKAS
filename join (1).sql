-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 04:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vikas`
--

-- --------------------------------------------------------

--
-- Table structure for table `join`
--

CREATE TABLE `join` (
  `name` text NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `regestration` int(15) NOT NULL,
  `pass_word` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `join`
--

INSERT INTO `join` (`name`, `email`, `phone`, `regestration`, `pass_word`, `date`) VALUES
('khan', 'TABIB@QUQHQ', '978765657', 77777, 'yyyyy1', '2022-08-20 03:45:45'),
('test name', 'tabib111@gmail.com', '1111111111', 11, 'tabib123', '2022-08-20 01:19:36'),
('FAIZ', 'faiz@123.com', '787879090', 111112212, '12111111h', '2022-08-20 05:02:00'),
('NISHIL', 'NISHIL@123.GMAIL.COM', '999999999', 76799, 'HDKSJDKLAJSKLDJAL888', '2022-08-20 05:37:46'),
('LUCKY', 'lucky123@ew.com', '7777768768', 11121, 'osjdoisjdlksj777', '2022-08-20 05:39:21'),
('khali', 'khali@123.com', '7777222221', 11211, 'dooiwjdoisjdd', '2022-08-20 05:48:19'),
('RAFATH', 'lucky123@ew.com', '7777768768', 76799, 'ICJJCJCOISC', '2022-08-20 08:32:08'),
('shanon', 'faiz@123.com', '7777777', 644, 'wehiwudui', '2022-08-20 08:47:58'),
('', '', '', 0, '', '2022-08-22 00:07:59'),
('reema', 'reema12@gmail.com', '7676768989', 1131, 'uwdihdhsdiui', '2022-08-22 00:16:21'),
('SDHSJHDHJDA', 'FSFSFSFFS@gmail.com', '8778665444', 89896666, 'khskajhskd666', '2022-08-22 01:28:42'),
('kunal', 'kunal@12.gmail.com', '22221111', 44233, 'dlwekdlewd', '2022-08-22 01:50:22'),
('kunal', 'kunal@12.gmail.com', '22221111', 44233, 'dlwekdlewd', '2022-08-22 01:55:19'),
('RYFYF', 'HGJHJFY@GMAIL.COM', '7879686687', 787879, 'LHKHKHJK', '2022-08-23 19:31:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
