-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 06:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flasktab`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `pan` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `address`, `gstin`, `pan`, `email`) VALUES
(1, 'Yatin bhatia', 'nit2', '1234567890qwert', 'Chgpb1121g', 'yatinbhati.a14@gmail.in'),
(2, 'Atul vashisth', 'himachal', '1234567890qwerr', 'Chgpb1123gb', 'atulv@gmail.com'),
(3, 'Chetan', 'yt', '1234567890qwert', 'chgpb1123g', 'ybhatia128@gmail.com'),
(4, 'Him', '304 thinknyx', '1234567890qwert', 'chgpb1123g', 'ybhatia128@gmail.com'),
(5, 'Ytin', '304 thinknyx', '1234567890qwerd', 'chgpb1123g', 'ybhatia128@gmail.com'),
(6, 'Madhav', '304 thinknyx', '1234567890qsdfg', 'chgpb1123g', 'ybhatia128@gmail.com'),
(7, 'Anup', '304 thinknyx', 'rtyuidfghj56789', '67890opuyt', 'ybhatia128@gmail.com'),
(8, 'Anup vashisth', 'sec 83', '1234567890qwerc', 'Chgpb1124g', 'ybhatia128@gmail.com'),
(9, 'Roopam', 'Street no 34 mumbai sec 45', '123456789qwsdfa', 'Chgpb1123g', 'r@gmil.com'),
(10, 'Yatin bhatia', '2e/137 nit', '1234567890qwerb', 'Chgpb1123uu', 'ybhatia128@gmail.com'),
(11, 'Yatin bhatia', '2e/137 nit', '1234567890qwerm', 'Chgpb1123g', 'ybhatia128@gmail.com'),
(12, 'Aman', '81 hb', '11111111111111d', 'Chgp111111', 'a.g@gmail.com'),
(13, 'Yatin bhatia', '2e/137 nit', '1234567890qwerj', 'Chgpb1111g', 'ybhatia128@gmail.com'),
(14, 'Yatin bhatia', '2e/137 nit', 'Zxcvbnmlkjhgfds', 'Sdfghjklou', 'ybhatia128@gmail.com'),
(15, 'Roopam', '2e/137 nit', '6666rtyudfghcvb', 'Chgpb114fr', 'ybhatia128@gmail.com'),
(16, 'Yatin bhatia', '2e/137 nit', '1234567890qwtyg', 'Chgpb5623g', 'ybhatia128@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `description`, `file`, `dated`, `amount`, `status`) VALUES
(1, 'Yatin bhatia', 'Monthly web updates ', '<FileStorage: \'art1.jpg\' (\'image/jpeg\')>', '2020-10-09', 44, 'Approved'),
(2, 'Roopam', 'Fork from https://javascript.info/function-basi', '<FileStorage: \'anuj cvv.docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', '2020-10-15', 2345, 'Approved'),
(3, 'Yatin', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'abc.jpg\' (\'image/jpeg\')>', '2020-09-24', 0, 'Pending'),
(4, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'art4.jpg\' (\'image/jpeg\')>', '2020-09-08', 45.1, 'Approved'),
(5, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'cmdee3.PNG\' (\'image/png\')>', '2020-09-23', 56, 'Pending'),
(6, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'art3.jpg\' (\'image/jpeg\')>', '2020-09-30', 45, 'Pending'),
(7, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'art4.jpg\' (\'image/jpeg\')>', '2020-09-30', 45, 'Pending'),
(8, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'art4.jpg\' (\'image/jpeg\')>', '2020-09-30', 45, 'Pending'),
(9, 'Yat', 'none', '<FileStorage: \'art1.jpg\' (\'image/jpeg\')>', '2020-09-15', 56, 'Pending'),
(11, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'apple iphone 8.jpeg\' (\'image/jpeg\')>', '2020-09-30', 67, 'Pending'),
(12, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'err2.PNG\' (\'image/png\')>', '2020-09-24', 45, 'Pending'),
(13, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'err2.PNG\' (\'image/png\')>', '2020-10-07', 45, 'Pending'),
(14, 'Roopam', 'none', '<FileStorage: \'beloved2.jpg\' (\'image/jpeg\')>', '2020-09-28', 56, 'Pending'),
(15, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'err2.PNG\' (\'image/png\')>', '2020-09-30', 45, 'Pending'),
(16, 'Roopam', 'yuiop', '<FileStorage: \'cmderr2.PNG\' (\'image/png\')>', '2020-09-24', 45, 'Pending'),
(17, 'Roopam', 'yuiop', '<FileStorage: \'apple iphone 8.jpeg\' (\'image/jpeg\')>', '2020-09-15', 56, 'Pending'),
(18, 'Yatin bhatia', 'Computerv repair', '<FileStorage: \'anuj cvv.docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', '2020-10-20', 45, 'Pending'),
(19, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'anuj cvv.docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', '2020-10-14', 78, 'Pending'),
(20, 'Yatin bhatia', 'Fork from https://javascript.info/function-basics', '<FileStorage: \'charvi cvv (1).docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', '2020-10-08', 67, 'Pending'),
(21, 'Yatin bhatia', 'tttttttt', '<FileStorage: \'bg-01.jpg\' (\'image/jpeg\')>', '2020-10-20', 67, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `unitcost` varchar(10) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `pric` varchar(10) DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `subtotal` int(10) DEFAULT NULL,
  `paid` int(10) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoiced`
--

CREATE TABLE `invoiced` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `gst` varchar(25) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `train` varchar(30) NOT NULL,
  `num` varchar(15) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `words` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `newgst` varchar(10) NOT NULL,
  `status` varchar(15) DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiced`
--

INSERT INTO `invoiced` (`id`, `name`, `ad`, `gst`, `pan`, `train`, `num`, `dated`, `item`, `description`, `total`, `subtotal`, `words`, `email`, `newgst`, `status`) VALUES
(3, 'Atul vashisth', 'Himachal', '1234567890qwerr', 'Chgpb1123g', 'None', 'INA3324', '2020-10-07', NULL, NULL, 78, 92.04, 'Ninety Two ', 'atulv@gmail.com', '14.04', 'open'),
(8, 'Yatin bhatia', 'Nit2', '1234567890qwert', 'Chgpb1121g', 'None', 'INA002', '2020-10-21', NULL, NULL, 88, 103.84, 'One Hundred Four Rupees only', 'yatinbhati.a14@gmail.in', '15.84', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `invoiceorders`
--

CREATE TABLE `invoiceorders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `invoiceid` int(10) UNSIGNED DEFAULT NULL,
  `item` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiceorders`
--

INSERT INTO `invoiceorders` (`orderid`, `invoiceid`, `item`, `description`) VALUES
(1, 72, 'Web Updates', 'Monthly web updates '),
(2, 72, 'Item Name', 'Description '),
(3, 72, 'Item Name', 'Description '),
(4, 73, 'Web Updates', 'Monthly web updates '),
(5, 73, 'Item Name', 'Description '),
(6, 73, 'Item Name', 'Description '),
(12, 3, 'Web Updates', 'Monthly web updates '),
(13, 3, 'Item Name3', 'Description '),
(14, 3, 'Item Name2', 'Description '),
(24, 8, 'Item Name', 'Description '),
(25, 8, 'Item Name', 'Description ');

-- --------------------------------------------------------

--
-- Table structure for table `newrecieved`
--

CREATE TABLE `newrecieved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `gst` varchar(25) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `num` varchar(15) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `words` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `newgst` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newrecieved`
--

INSERT INTO `newrecieved` (`id`, `name`, `ad`, `gst`, `pan`, `file`, `num`, `dated`, `item`, `description`, `total`, `subtotal`, `words`, `email`, `newgst`, `status`) VALUES
(1, 'Yatin b', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'bg-01.jpg\' (\'image/jpeg\')>', 'INA9631', '2020-09-10', 'Web Updates', 'Monthly web updates ', 789, 931.02, 'nine hundred thirty one.', NULL, '142.02', 'Open'),
(2, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'beloved2.jpg\' (\'image/jpeg\')>', 'INA6918', '2020-09-10', 'Web Updates', 'Monthly web updates ', 10.07, 11.88, 'twelve.', NULL, '1.81', 'open'),
(3, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'hlp.PNG\' (\'image/png\')>', 'INA9875', '2020-09-10', 'Web Updates', 'Monthly web updates ', 56, 66.08, 'sixty six.', NULL, '10.08', 'open'),
(4, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'bg-01.jpg\' (\'image/jpeg\')>', 'INA2437', '2020-09-10', 'Web Updates', 'Monthly web updates ', 789, 931.02, 'nine hundred thirty one.', NULL, '142.02', 'open'),
(6, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'hlp.PNG\' (\'image/png\')>', 'INA2497', '2020-09-19', 'Web Updates', 'Monthly web updates ', 0, 0, ' ', NULL, '0.0', 'open'),
(7, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'anuj cvv.docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', 'INA1810', '2020-10-07', NULL, NULL, 0, 0, ' ', NULL, '0.0', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `newrecievedorders`
--

CREATE TABLE `newrecievedorders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `prid` int(10) UNSIGNED DEFAULT NULL,
  `item` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newrecievedorders`
--

INSERT INTO `newrecievedorders` (`orderid`, `prid`, `item`, `description`) VALUES
(1, 7, 'Web Updates', 'Monthly web updates ');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `gst` varchar(25) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `train` varchar(30) NOT NULL,
  `num` varchar(15) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `words` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `newgst` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `name`, `ad`, `gst`, `pan`, `train`, `num`, `dated`, `item`, `description`, `total`, `subtotal`, `words`, `email`, `newgst`, `status`) VALUES
(1, 'Yatin bhatia', 'nit2', '1234567890qwert', 'Chgpb1121g', 'Python', 'INA7100', '2020-09-10', 'Web Updates', 'Monthly web updates ', 78, 92.04, 'ninety two.', 'nit2', '14.04', 'Open'),
(3, 'Atul vashisth', 'Himachal', '1234567890qwerr', 'Chgpb1123g', 'None', 'INA2439', '2020-09-11', 'Web Updates', 'Monthly web updates ', 65, 76.7, 'seventy seven.', 'atulv@gmail.com', '11.70', 'open'),
(4, 'Anup vashisth', 'Sec 83', '1234567890qwerc', 'Chgpb1124g', 'None', 'INA1669', '2020-09-11', 'Web Updates', 'Monthly web updates ', 50, 59, 'fifty nine.', 'ybhatia128@gmail.com', '9.00', 'open'),
(5, 'Yatin bhatia', 'Nit2', '1234567890qwert', 'Chgpb1121g', 'None', 'INA9643', '2020-09-11', 'Web Updates', 'Monthly web updates ', 60, 70.8, 'seventy one.', 'yatinbhati.a14@gmail.com', '10.80', 'open'),
(6, 'Chetan', 'Yt', '1234567890qwert', 'Chgpb1123g', 'None', 'INA8882', '2020-09-11', 'Web Updates', 'Monthly web updates ', 70, 82.6, 'eighty three.', 'ybhatia128@gmail.com', '12.60', 'open'),
(8, 'Him', '304 thinknyx', '1234567890qwert', 'Chgpb1123g', 'None', 'INA9236', '2020-09-19', 'Web Updates', 'Monthly web updates ', 89, 105.02, 'One Hundred Five ', 'ybhatia128@gmail.com', '16.02', 'open'),
(9, 'Chetan', 'Yt', '1234567890qwert', 'Chgpb1123g', 'None', 'INA3758', '2020-09-19', 'Web Updates', 'Monthly web updates ', 890, 1050.2, 'One Thousand Fifty ', 'ybhatia128@gmail.com', '160.20', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders`
--

CREATE TABLE `purchaseorders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `purchaseid` int(10) UNSIGNED DEFAULT NULL,
  `item` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recieved`
--

CREATE TABLE `recieved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `gst` varchar(25) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `num` varchar(15) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `item` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `words` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `newgst` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recieved`
--

INSERT INTO `recieved` (`id`, `name`, `ad`, `gst`, `pan`, `file`, `num`, `dated`, `item`, `description`, `total`, `subtotal`, `words`, `email`, `newgst`, `status`) VALUES
(1, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'abc.jpg\' (\'image/jpeg\')>', 'INA9551', '2020-09-17', 'Web Updates', 'Monthly web updates ', 78, 92.04, 'Ninety Two ', NULL, '14.04', 'open'),
(2, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'er1.PNG\' (\'image/png\')>', 'INA6137', '2020-09-17', 'Web Updates', 'Monthly web updates ', 67890, 80110.2, 'Eighty Thousand One Hundred Ten ', NULL, '12220.20', 'open'),
(3, 'Yatin bhatia', NULL, '1234567890qwert', 'Chgp1', '<FileStorage: \'anuj cvv.docx\' (\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\')>', 'INA4164', '2020-10-07', NULL, NULL, 0, 0, ' ', NULL, '0.0', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `recievedorders`
--

CREATE TABLE `recievedorders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `irid` int(10) UNSIGNED DEFAULT NULL,
  `item` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `trainertype` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `pan` varchar(12) DEFAULT NULL,
  `acc1` varchar(40) DEFAULT NULL,
  `acc2` varchar(40) DEFAULT NULL,
  `acc3` varchar(40) DEFAULT NULL,
  `acc4` varchar(40) DEFAULT NULL,
  `tech1` varchar(60) DEFAULT NULL,
  `tech2` varchar(60) DEFAULT NULL,
  `tech3` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `name`, `trainertype`, `status`, `gstin`, `pan`, `acc1`, `acc2`, `acc3`, `acc4`, `tech1`, `tech2`, `tech3`) VALUES
(1, 'Yatin Bhatiaa', 'Internal', 'Corporate', '1234567890qwert', 'chgp111111', 'qqw55', 'himanshu', 'citi', '1234567yhb', 'terra', 'python', 'validation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `usertype` varchar(10) NOT NULL,
  `status` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `usertype`, `status`) VALUES
(13, 'admin', 'admin@thinknyx.com', 'password@123', 'admin', 1),
(15, 'Yatin Bhatia', 'ybhatia128@gmail.com', 'yo@123', 'user', 1),
(16, 'Yatin', 'ybhatia128@gmail.com', 'yo@123', 'user', 0),
(18, 'Roopam', 'roopam.g@gmail.com', 'yo@123', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoiced`
--
ALTER TABLE `invoiced`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoiceorders`
--
ALTER TABLE `invoiceorders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `newrecieved`
--
ALTER TABLE `newrecieved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newrecievedorders`
--
ALTER TABLE `newrecievedorders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `prid` (`prid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `purchaseid` (`purchaseid`);

--
-- Indexes for table `recieved`
--
ALTER TABLE `recieved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recievedorders`
--
ALTER TABLE `recievedorders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `irid` (`irid`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
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
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoiced`
--
ALTER TABLE `invoiced`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoiceorders`
--
ALTER TABLE `invoiceorders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newrecieved`
--
ALTER TABLE `newrecieved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newrecievedorders`
--
ALTER TABLE `newrecievedorders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recieved`
--
ALTER TABLE `recieved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recievedorders`
--
ALTER TABLE `recievedorders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoiceorders`
--
ALTER TABLE `invoiceorders`
  ADD CONSTRAINT `invoiceorders_ibfk_1` FOREIGN KEY (`invoiceid`) REFERENCES `invoiced` (`id`);

--
-- Constraints for table `newrecievedorders`
--
ALTER TABLE `newrecievedorders`
  ADD CONSTRAINT `newrecievedorders_ibfk_1` FOREIGN KEY (`prid`) REFERENCES `newrecieved` (`id`);

--
-- Constraints for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD CONSTRAINT `purchaseorders_ibfk_1` FOREIGN KEY (`purchaseid`) REFERENCES `purchase` (`id`);

--
-- Constraints for table `recievedorders`
--
ALTER TABLE `recievedorders`
  ADD CONSTRAINT `recievedorders_ibfk_1` FOREIGN KEY (`irid`) REFERENCES `recieved` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
