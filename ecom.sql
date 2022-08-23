-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 06:56 PM
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
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 0),
(2, 'Rafath', 'Rafath', 1, 'umaimathrafath@gmail.com', '7840936583', 1),
(3, 'Nicole', 'Nicole', 1, 'nicoleana1204@gmail.com', '768943567', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(2, 'Women', 1),
(3, 'Men', 1),
(5, 'Kids', 1),
(6, 'Indigo collection', 1),
(7, 'Seasonal store', 1),
(8, 'Festive', 1),
(11, 'New Arrivals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Vishal', 'vishal@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(27, 11, 'VISCOSE SILK STRAIGHT KNEE LENGTH KURTA', 3000, 2700, 1, '38042854_10732177-1.jpg', 'women\'s Kurta', 'Women\'s Kurta', 'kurtas', 'kurtas', 'kurtas', 1, 1),
(28, 11, 'COTTON NAGARI PINTUCK DETAIL SHORT KURTA', 1500, 1500, 1, '38794992_10655313-2.jpg', 'Men\'s Kurta', 'Men\'s Kurta', 'kurta', 'kurta', 'kurta', 1, 1),
(29, 11, 'SILK MATKA PRINTED NEHRU JACKET', 1500, 1500, 1, '57036210_10692156-1.jpg', 'kurta', 'kurta', 'kurta', 'kurta', 'kurta', 1, 1),
(30, 11, 'ANTIQUE GOLD VINTAGE BRASS ROTI BOX', 1037, 1037, 1, '31283341_ezgif.com-gif-maker (2).jpg', 'roti bx', 'roti box', 'roti box', 'roti box', 'box', 1, 1),
(31, 11, 'PASHMINA SHAWL WITH PATTERN', 13, 13, 1, '17344868_AS01061164-1.jpg', 'shawl', 'shawl', 'shawl', 'shawl', 'shawl', 1, 1),
(32, 11, 'WOODEN CUTTING BOARD', 1, 1, 1, '90347079_yu.jpg', 'wooden board', 'board', 'board', 'board', 'board', 1, 1),
(33, 11, 'LEATHER PERFORATED JUTTIE', 2750, 2750, 1, '87915753_10661504-1.jpg', 'SHOES', 'juttie', 'juttie', 'juttie', 'juttie', 1, 1),
(34, 11, 'COTTON CAMBRIC FIT SHIRT', 1358, 1358, 1, '44463279_10695188-1.jpg', 'shirt', 'shirt', 'shirt', 'shirt', 'shirt', 1, 1),
(35, 11, 'PRITHI COTTON TABLE RUNNER', 1199, 1199, 1, '37563712_10675859-1.jpg', 'TABLE RUNNER', 'TABLE RUNNER', 'TABLE RUNNER', 'TABLE RUNNER', 'RUNNER', 1, 1),
(36, 11, 'COTTON AJRAKH PRINTED SHORT KURTA', 1700, 1700, 1, '67160889_10648999-1.jpg', 'KURTA', 'KURTA', 'KURTA', 'KURTA', 'KURTA', 1, 1),
(37, 11, 'COTTON PRINTED 3 PIECE LEHENGA CHOLI SET', 4600, 4600, 1, '51437241_10712070-1.jpg', 'LEHENGA', 'LEHENGA', 'LEHENGA', 'LEHENGA', 'LEHENGA', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Rafath Umaimath', '', 'umaimathrafath@gmail.com', '7840936583', '2020-01-14 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
