-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 11:24 PM
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
-- Database: `khitta`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

CREATE TABLE `adopt` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(10) NOT NULL,
  `childname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`name`, `email`, `contact`, `childname`) VALUES
('Harshali', 'harahugaikwad3@gmail.com', 982947392, 'hara');

-- --------------------------------------------------------

--
-- Table structure for table `children_details`
--

CREATE TABLE `children_details` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(30) NOT NULL,
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
(1, 'priya', '1998-12-18', 'good girl', 'F', '', 'NO'),
(2, 'komal', '2019-10-14', 'a girl', 'F', '', 'no'),
(3, 'visaka', '2019-10-01', 'bad koala', 'F', 'no', 'yes'),
(4, 'harahu', '2019-10-15', 'dfvfgfggf', 'm', 'NO', 'NO');

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
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `username` varchar(40) NOT NULL,
  `id` int(40) NOT NULL,
  `contact` int(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`username`, `id`, `contact`, `email`) VALUES
('$user', 0, 34344, 'jfdh@gmail.com'),
('$user', 1, 4343343, 'rf@gmail.com'),
('harsha', 1, 22323, 'rf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `username`, `password`, `email`) VALUES
('', 'abc', 'abc@har.com', '123'),
('', 'anjali', '123', ''),
('', 'harsha', '123', 'harahugaikwad3@gmail.com'),
('', 'Harshali', 'harahugaikwad3@gmail.com', '123'),
('hema', 'hemag', '123', 'harahugaikwad3@gmail.com'),
('manu', 'manu', '123', 'manu@yk.com'),
('Hitmonlee', 'Mohit', '123', 'harisangam@gmail.com'),
('om', 'omi', '123', 'omi@gl.com'),
('Pandu', 'Pranav Phulpagar', '123', 'pro@gmail.com'),
('Samarth', 'samuels', '123', 'samkohirkar@gmail.com'),
('', 'Sriujan', '123', ''),
('yuvi', 'yuvig', '123', 'yuvig@gmail.com');

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
('Sriujan', 'sriujanh1299@gmail.com', 'Marry me Harshali!!!');

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