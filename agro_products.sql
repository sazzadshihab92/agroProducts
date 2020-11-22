-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2019 at 09:08 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_district`
--

CREATE TABLE `t_district` (
  `district_name` varchar(50) NOT NULL,
  `district_code` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_district`
--

INSERT INTO `t_district` (`district_name`, `district_code`) VALUES
('Sirajganj', 1),
('Rajshahi', 2),
('Pabna', 3),
('Natore', 4),
('Naogaon', 5),
('Joypurhat', 6),
('C. nawabganj', 7),
('Bogura', 8),
('Dhaka', 9),
('Dinajpur', 10);

-- --------------------------------------------------------

--
-- Table structure for table `t_products`
--

CREATE TABLE `t_products` (
  `product_name` varchar(50) DEFAULT NULL,
  `product_code` int(10) NOT NULL,
  `village_code` int(7) DEFAULT NULL,
  `product_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_products`
--

INSERT INTO `t_products` (`product_name`, `product_code`, `village_code`, `product_description`) VALUES
('banana', 16, 14, 'banana is the most important product of our life.'),
('RICE', 17, 14, 'RICE IS THE VERY IMPORTENT PORDUCT'),
('product', 18, 17, 'borshivanga producct\n'),
('product', 19, 14, 'slkjflsjf');

-- --------------------------------------------------------

--
-- Table structure for table `t_thana`
--

CREATE TABLE `t_thana` (
  `thana_name` varchar(30) DEFAULT NULL,
  `thana_code` int(3) NOT NULL,
  `district_code` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_thana`
--

INSERT INTO `t_thana` (`thana_name`, `thana_code`, `district_code`) VALUES
('Kazipur', 39, 1),
('Sirajganj Sadar', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_phone` varchar(12) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(16) NOT NULL,
  `u_gender` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`u_id`, `u_name`, `u_phone`, `u_email`, `u_password`, `u_gender`) VALUES
(33, 'sazzad Shihab', '01729', 'email', '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_village`
--

CREATE TABLE `t_village` (
  `village_name` varchar(50) DEFAULT NULL,
  `village_code` int(7) NOT NULL,
  `thana_code` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_village`
--

INSERT INTO `t_village` (`village_name`, `village_code`, `thana_code`) VALUES
('Bhabanipur', 14, 39),
('Mirpur', 15, 40),
('Borshivanga', 16, 0),
('Borshivanga', 17, 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_district`
--
ALTER TABLE `t_district`
  ADD PRIMARY KEY (`district_code`);

--
-- Indexes for table `t_products`
--
ALTER TABLE `t_products`
  ADD PRIMARY KEY (`product_code`);

--
-- Indexes for table `t_thana`
--
ALTER TABLE `t_thana`
  ADD PRIMARY KEY (`thana_code`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `t_village`
--
ALTER TABLE `t_village`
  ADD PRIMARY KEY (`village_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_district`
--
ALTER TABLE `t_district`
  MODIFY `district_code` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `t_products`
--
ALTER TABLE `t_products`
  MODIFY `product_code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `t_thana`
--
ALTER TABLE `t_thana`
  MODIFY `thana_code` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `t_village`
--
ALTER TABLE `t_village`
  MODIFY `village_code` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
