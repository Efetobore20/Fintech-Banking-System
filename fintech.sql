-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 02:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fintech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `department` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `level` int(20) NOT NULL DEFAULT 0,
  `date_crreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `last_name`, `first_name`, `middle_name`, `phone`, `department`, `email`, `password`, `status`, `level`, `date_crreated`) VALUES
(1, 'owanrieta', 'efetobore', 'benita', '08111057594', 'savings and investment', 'efe@gmail.com', 'efe', 1, 0, '2025-05-05 10:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `acct_num` int(20) NOT NULL,
  `confirm_code` int(50) NOT NULL,
  `banned` int(100) NOT NULL DEFAULT 0,
  `blocked` int(100) NOT NULL DEFAULT 0,
  `status` int(100) NOT NULL,
  `status_confirm` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`, `acct_num`, `confirm_code`, `banned`, `blocked`, `status`, `status_confirm`, `date_created`) VALUES
(1, 'owanrietaefe20@gmail.com', 'efetobore', 1200853761, 8819, 0, 1, 1, 0, '2025-05-14 10:56:11'),
(2, 'marvellous@gmail.com', 'marve', 1891010216, 1243, 0, 0, 1, 0, '2025-05-01 11:32:48'),
(3, 'fortuneokomitete@gmail.com', 'thy', 2147483567, 2375, 0, 0, 1, 0, '2025-05-02 15:26:45'),
(4, 'tega@gmail.com', 'tega', 2147483647, 1767, 0, 0, 1, 0, '2025-05-02 15:20:35'),
(5, 'samuel@gmail.com', 'samuel', 1978413108, 2197, 0, 0, 1, 0, '2025-05-09 10:35:48'),
(6, 'obasijoy@gmail.com', 'ttttt', 2147483647, 9241, 0, 0, 1, 0, '2025-12-16 10:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `both_id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `current_balance` int(50) NOT NULL,
  `acct` int(11) NOT NULL,
  `r_amount` int(50) NOT NULL,
  `r_bank` text NOT NULL,
  `narration` varchar(50) NOT NULL,
  `transaction_id` int(30) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `both_id`, `type`, `current_balance`, `acct`, `r_amount`, `r_bank`, `narration`, `transaction_id`, `status`, `date_created`) VALUES
(1, 1, 2, 'debit', 51500, 1200853761, 1500, '', 'tfare', 2147483647, 0, '2025-05-01 11:49:00'),
(2, 2, 1, 'credit', 1500, 1891010216, 1500, '', 'tfare', 2147483647, 0, '2025-05-01 11:49:00'),
(3, 1, 2, 'debit', 51000, 1200853761, 500, '', 'ho', 1126072397, 0, '2025-05-01 12:30:16'),
(4, 2, 1, 'credit', 2000, 1891010216, 500, '', 'ho', 1126072397, 0, '2025-05-01 12:30:17'),
(5, 1, 4, 'debit', 46000, 1200853761, 5000, '', 'food', 1634093544, 0, '2025-05-02 15:27:49'),
(6, 4, 1, 'credit', 5000, 2147483647, 5000, '', 'food', 1634093544, 0, '2025-05-02 15:27:49'),
(7, 1, 2, 'debit', 44000, 1200853761, 2000, '', 'cloth', 2147483647, 0, '2025-05-05 10:39:35'),
(8, 2, 1, 'credit', 4000, 1891010216, 2000, '', 'cloth', 2147483647, 0, '2025-05-05 10:39:35'),
(9, 1, 2, 'debit', 24000, 1200853761, 20000, '', 'hair', 2147483647, 0, '2025-05-14 11:32:51'),
(10, 2, 1, 'credit', 24000, 1891010216, 20000, '', 'hair', 2147483647, 0, '2025-05-14 11:32:51'),
(11, 1, 2, 'debit', 19000, 1200853761, 5000, '', 'hair', 2147483647, 0, '2025-05-14 11:34:35'),
(12, 2, 1, 'credit', 29000, 1891010216, 5000, '', 'hair', 2147483647, 0, '2025-05-14 11:34:35'),
(13, 1, 2, 'debit', 18900, 1200853761, 100, '', 'fre', 2147483647, 0, '2025-05-14 12:34:56'),
(14, 2, 1, 'credit', 29100, 1891010216, 100, '', 'fre', 2147483647, 0, '2025-05-14 12:34:56'),
(15, 6, 2, 'debit', 21700, 2147483647, 7400, '', 'food', 2147483647, 0, '2025-12-16 11:01:07'),
(16, 2, 6, 'credit', 36500, 1891010216, 7400, '', 'food', 2147483647, 0, '2025-12-16 11:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `house` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `status` int(10) NOT NULL,
  `purpose` varchar(30) NOT NULL,
  `status_p` int(10) NOT NULL,
  `bvn` varchar(20) NOT NULL,
  `nin` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `bvn_nin-status` int(20) NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `credential_status` int(11) NOT NULL,
  `transfer_pin` varchar(11) NOT NULL,
  `current_balance` int(100) NOT NULL,
  `previous_balance` int(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `state`, `city`, `house`, `street`, `status`, `purpose`, `status_p`, `bvn`, `nin`, `phone`, `bvn_nin-status`, `last_name`, `first_name`, `middle_name`, `gender`, `DOB`, `credential_status`, `transfer_pin`, `current_balance`, `previous_balance`, `date_created`) VALUES
(1, 1, 'lagos', 'lagos', '8b', 'isaac salome street', 3, 'Saving Money', 1, '08255839571', '', '', 1, 'owanrieta', 'efetobore', 'benita', 'female', '20/06/2025', 1, '1212', 18900, 0, '2025-05-14 12:34:56'),
(2, 2, 'lagos', 'lagos', '14', 'lawrence', 3, 'Everyday Transaction', 1, '', '12345678911', '08184412101', 1, 'owanrieta', 'marvellous', 'odiri', 'female', '20/06/2025', 1, '1111', 36500, 0, '2025-12-16 11:01:07'),
(4, 5, 'lagos', 'lagos', '10', 'salome', 3, 'Saving Money', 1, '11111111111', '', '', 1, 'samuel', 'akigbe', '', 'male', '20/06/2025', 1, '2222', 0, 0, '2025-05-09 10:37:56'),
(5, 6, 'lagos', 'warri', '14', 'isaac salome', 3, 'Recieving Salary', 1, '', '99999999999', '08111057594', 1, 'obasi', 'joy', 'blessing', 'female', '20/06/2025', 1, '8888', 21700, 0, '2025-12-16 11:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `v_code`
--

CREATE TABLE `v_code` (
  `id` int(100) NOT NULL,
  `code` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_code`
--
ALTER TABLE `v_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `v_code`
--
ALTER TABLE `v_code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
