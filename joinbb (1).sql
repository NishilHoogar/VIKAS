-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 04:42 PM
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
-- Database: `vikas2`
--

-- --------------------------------------------------------

--
-- Table structure for table `joinbb`
--

CREATE TABLE `joinbb` (
  `name` char(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pass_word` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joinbb`
--

INSERT INTO `joinbb` (`name`, `email`, `phone`, `pass_word`, `date`) VALUES
('nicole', 'nicole@12gmail.com', '7777776521', 'wehiwudui', '2022-08-21 20:11:57'),
('khali', 'tttt@122gmail.com', '99998', 'dfsffef', '2022-08-21 20:31:23'),
('lol', 'lol@gmail.com', '222222111', 'effe231', '2022-08-21 20:34:59'),
('SHANON', 'SHANOM@123GMAIL.COM', '7586848439', 'EIOEJHEFHEFDF', '2022-08-22 06:38:15'),
('NISHIL', 'khali@123.com', '7869555448', 'GYYFUHUHUGUG', '2022-08-22 09:40:22'),
('KAMLESH', 'KAMLESH23@GMAIL.COM', '3323111313', 'IEFEFKJEKLFS', '2022-08-22 19:25:10'),
('sunny', 'sunny12@gmail.com', '121212121', 'odjddsf', '2022-08-22 19:27:31'),
('JJJVHJV', 'JHGGJHFJ@GMAIL.COM', '78578985', 'KIGKYHKIIU', '2022-08-23 14:02:48'),
('', '', '', '', '2022-08-23 14:02:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
