-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 11:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'kalijogo', '0c8eb7852e684799b3214b93dea24b01');

-- --------------------------------------------------------

--
-- Table structure for table `fire1`
--

CREATE TABLE `fire1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire1`
--

INSERT INTO `fire1` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:39:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fire2`
--

CREATE TABLE `fire2` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire2`
--

INSERT INTO `fire2` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:39:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `humidity1`
--

CREATE TABLE `humidity1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `humidity1`
--

INSERT INTO `humidity1` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-10-30', '08:53:30', 10),
(2, '2022-11-02', '15:40:25', 20.5);

-- --------------------------------------------------------

--
-- Table structure for table `humidity2`
--

CREATE TABLE `humidity2` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `humidity2`
--

INSERT INTO `humidity2` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-10-30', '08:53:51', 11),
(3, '2022-11-02', '15:40:25', 20.5);

-- --------------------------------------------------------

--
-- Table structure for table `humidity3`
--

CREATE TABLE `humidity3` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `humidity3`
--

INSERT INTO `humidity3` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:40:25', 20.5);

-- --------------------------------------------------------

--
-- Table structure for table `movement1`
--

CREATE TABLE `movement1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movement1`
--

INSERT INTO `movement1` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smoke1`
--

CREATE TABLE `smoke1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smoke1`
--

INSERT INTO `smoke1` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smoke2`
--

CREATE TABLE `smoke2` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smoke2`
--

INSERT INTO `smoke2` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temperature1`
--

CREATE TABLE `temperature1` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperature1`
--

INSERT INTO `temperature1` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:45', 20);

-- --------------------------------------------------------

--
-- Table structure for table `temperature2`
--

CREATE TABLE `temperature2` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperature2`
--

INSERT INTO `temperature2` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:45', 21.4);

-- --------------------------------------------------------

--
-- Table structure for table `temperature3`
--

CREATE TABLE `temperature3` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperature3`
--

INSERT INTO `temperature3` (`id`, `date`, `time`, `value`) VALUES
(1, '2022-11-02', '15:41:45', 21.4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire1`
--
ALTER TABLE `fire1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire2`
--
ALTER TABLE `fire2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humidity1`
--
ALTER TABLE `humidity1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humidity2`
--
ALTER TABLE `humidity2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humidity3`
--
ALTER TABLE `humidity3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movement1`
--
ALTER TABLE `movement1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smoke1`
--
ALTER TABLE `smoke1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smoke2`
--
ALTER TABLE `smoke2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperature1`
--
ALTER TABLE `temperature1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperature2`
--
ALTER TABLE `temperature2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperature3`
--
ALTER TABLE `temperature3`
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
-- AUTO_INCREMENT for table `fire1`
--
ALTER TABLE `fire1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fire2`
--
ALTER TABLE `fire2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `humidity1`
--
ALTER TABLE `humidity1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `humidity2`
--
ALTER TABLE `humidity2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `humidity3`
--
ALTER TABLE `humidity3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movement1`
--
ALTER TABLE `movement1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smoke1`
--
ALTER TABLE `smoke1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smoke2`
--
ALTER TABLE `smoke2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temperature1`
--
ALTER TABLE `temperature1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temperature2`
--
ALTER TABLE `temperature2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temperature3`
--
ALTER TABLE `temperature3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
