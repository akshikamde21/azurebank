-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 11:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azurebanc`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sonia', 'Shraddha', 500, '2021-12-16 15:38:09'),
(2, 'Neha', 'Mayank', 100, '2021-12-16 15:40:02'),
(3, 'Sunny', 'Bobby', 80, '2021-12-16 15:40:02'),
(4, 'Akshi', 'Shweta', 50, '2021-12-16 15:52:28'),
(5, 'Shweta', 'Akshi', 40, '2021-12-16 15:53:04'),
(6, 'Sonia', 'Akshi', 10, '2021-12-16 15:53:27'),
(7, 'Ankit', 'Neha', 50, '2021-12-16 16:01:09'),
(8, 'Sunny', 'Ankit', 140, '2021-12-16 16:01:43'),
(9, 'Jheel', 'Sonia', 50, '2021-12-16 16:05:33'),
(10, 'Shraddha', 'Shreya', 64, '2021-12-16 16:06:21'),
(11, 'Neha', 'Bobby', 500, '2021-12-16 16:07:08'),
(12, 'Neha', 'Shweta', 45, '2021-12-16 16:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(103, 'Akshi', 'akshi@gmail.com', 50600),
(123, 'Sonia', 'reehal@gmail.com', 36040),
(256, 'Shraddha', 'ghosh@gmail.com', 45936),
(263, 'Jheel', 'swadha@gmail.com', 45978),
(326, 'Shweta', 'ghosh2@gmail.com', 45655),
(341, 'Sunny', 'kamde2@gmail.com', 45460),
(458, 'Neha', 'kamde@gmail.com', 84505),
(546, 'Ankit', 'ankit@gmail.com', 76010),
(575, 'Bobby', 'jksarang@gmail.com', 36944),
(590, 'Shreya', 'ghosh3@gmail.com', 42064);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
