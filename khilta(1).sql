-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 02:20 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khilta`
--

-- --------------------------------------------------------

--
-- Table structure for table `children_details`
--

CREATE TABLE `children_details` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `GENDER` varchar(10) NOT NULL,
  `SPONSORED` varchar(10) NOT NULL DEFAULT 'NO',
  `ADOPTED` varchar(10) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `children_details`
--

INSERT INTO `children_details` (`ID`, `NAME`, `DOB`, `DESCRIPTION`, `GENDER`, `SPONSORED`, `ADOPTED`) VALUES
(0, '', '0000-00-00', '', '', 'NO', 'NO'),
(1, 'rutu', '2018-04-05', 'gggg', 'm', 'n', 'n'),
(10, 'priya', '2017-06-04', 'fddfd', 'm', 'y', 'y'),
(22, 'fdfd', '0000-00-00', 'dfgd', 'fgd', 'gdfg', 'f'),
(999, 'rrr', '2018-04-05', NULL, 'm', 'NO', 'NO'),
(1234, 'jhhh', '2019-07-02', NULL, 'm', 'NO', 'NO'),
(2017, 'rewa', '2018-07-06', 'gfg', 'f', 'n', 'y'),
(10288, 'priyaaaaaaaaa', '2018-04-05', 'fddfd', 'm', 'y', ''),
(102888, 'priyaaaaaaaaa', '2018-04-05', 'fddfd', 'm', 'y', 'y'),
(102893, 'mani', '2018-04-05', NULL, 'm', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(20) NOT NULL,
  `LOCATION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `state` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `phone`, `state`, `password`, `email`) VALUES
('dfdd', 'ererer', 34343, 'fdfd', '111', 'jatin@gmail.com'),
('fdf', 'ffd', 344, '3gfg', '123', 'jatin@gmail.com'),
('g.preeya', '', 0, '', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`name`, `email`, `message`) VALUES
('Sriujan', 'sriujanh1299@gmail.com', 'Marry me Harshali!!!'),
('priya', 'priya.barbie@rocketmail.com', 'kahi chale kya ?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `children_details`
--
ALTER TABLE `children_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
