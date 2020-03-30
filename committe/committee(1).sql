-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 08:40 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `committee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `committeemeeting`
--

CREATE TABLE `committeemeeting` (
  `MeetingID` int(11) NOT NULL,
  `Person_to_meet` varchar(1000) NOT NULL,
  `DAY_DATE` varchar(1000) NOT NULL,
  `DAY_TIME` varchar(1000) NOT NULL,
  `Room` varchar(1000) NOT NULL,
  `Subject` varchar(8000) NOT NULL,
  `CommitteeID` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committeemeeting`
--

INSERT INTO `committeemeeting` (`MeetingID`, `Person_to_meet`, `DAY_DATE`, `DAY_TIME`, `Room`, `Subject`, `CommitteeID`) VALUES
(1, 'Ministry of Health', '12-october-2019', '2:50 PM', '201-E', 'Malaria Outbreak', 5),
(2, 'Ministry of Health', '12-october-2019', '2:50 PM', '201-E', 'Malaria Outbreak', 21),
(3, 'Ministry of defense', '12-October-2019', '2:10 PM', '220', 'BODA KILLINGS', 9),
(4, 'Ministry of Internal Affairs', '12-October-2019', '2:10 PM', '220', 'Refugees', 10),
(5, 'Ministry of Internal Affairs', '12-October-2019', '2:10 PM', '420B', 'Refugees', 22),
(6, 'Ministry of Internal Affairs', '2019-2-17', '2:10 PM', '420B', 'Refugees', 22),
(7, 'Ministry of Internal Affairs', '2019-8-19', '2:10 PM', '420B', 'Refugees', 22);

-- --------------------------------------------------------

--
-- Table structure for table `committeenames`
--

CREATE TABLE `committeenames` (
  `CommitteeID` int(11) NOT NULL,
  `Committee_Name` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committeenames`
--

INSERT INTO `committeenames` (`CommitteeID`, `Committee_Name`) VALUES
(1, 'The Business Committee'),
(2, 'The Appointments Committee'),
(3, 'The Budget Committee'),
(4, 'The Committee on Government Assurance and Implementation'),
(5, 'The Committee on Equal Opportunities'),
(6, 'The Committee on Public Accounts(Central Government)'),
(7, 'The Committee of Public Accounts(Local Government)'),
(8, 'The Committee of Public Accounts(Commissions, Statutory Authorities and State Enterprises)'),
(9, 'The Committee on Rules, Privileges and Discipline'),
(10, 'The Committee on National Economy'),
(11, 'The Committee on HIV/AIDS and Related Matters'),
(12, 'The Committee on Human Rights'),
(13, 'The Committee on Agriculture, Animal Industry and Fisheries'),
(14, 'The Committee on Defence and Internal Affairs'),
(15, 'The Committee on East African Community Affairs'),
(16, 'The Committee on Education and Sports'),
(17, 'The Committee on Finance, Planning and Economic Development'),
(18, 'The Committee on Foreign Affairs'),
(19, 'The Committee on Gender, Labour and Social Development'),
(20, 'The Committee on Health'),
(21, 'The Committee on Information, Communication Technology and National Guidance'),
(22, 'The Committee on Legal and Parliamentary Affairs'),
(23, 'The Committee on Natural Resources'),
(24, 'The Committee on Physical Infrastructure'),
(25, 'The Committee on Presidential Affairs'),
(26, 'The Committee on Public Service and Local Government'),
(27, 'The Committee on Science, Technology and Innovation'),
(28, 'The Committee on Tourism, Trade and Industry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `committeemeeting`
--
ALTER TABLE `committeemeeting`
  ADD PRIMARY KEY (`MeetingID`),
  ADD KEY `CommitteeID` (`CommitteeID`);

--
-- Indexes for table `committeenames`
--
ALTER TABLE `committeenames`
  ADD PRIMARY KEY (`CommitteeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `committeemeeting`
--
ALTER TABLE `committeemeeting`
  MODIFY `MeetingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `committeenames`
--
ALTER TABLE `committeenames`
  MODIFY `CommitteeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
