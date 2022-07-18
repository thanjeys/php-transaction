-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 08:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction`
--

-- --------------------------------------------------------

--
-- Table structure for table `cityusers`
--

CREATE TABLE `cityusers` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cityusers`
--

INSERT INTO `cityusers` (`id`, `city`, `count`) VALUES
(1, 'Chennai', 5),
(2, 'Hyderabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `amount` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `city`, `age`, `amount`) VALUES
(1, 'Thana', 'Chennai', 35, '2000.0000'),
(2, 'Guna', 'Chennai', 33, '1000.0000'),
(3, 'Ramu', 'hyderabad', 45, '999999.9999'),
(5, 'Suresh', 'Chennai', 44, '5000.0000'),
(6, 'Suresh', 'Chennai', 44, '5000.0000'),
(7, 'Suresh', 'Chennai', 44, '5000.0000'),
(8, 'Dummy', 'Dummy', 44, '5000.0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cityusers`
--
ALTER TABLE `cityusers`
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
-- AUTO_INCREMENT for table `cityusers`
--
ALTER TABLE `cityusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
