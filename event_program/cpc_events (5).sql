-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 08:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpc_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `event_id` int(11) NOT NULL,
  `events` varchar(200) NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `DATE` date NOT NULL,
  `venue` varchar(200) NOT NULL,
  `format_start` int(190) NOT NULL,
  `format_end` int(190) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`event_id`, `events`, `start_time`, `end_time`, `DATE`, `venue`, `format_start`, `format_end`) VALUES
(22, '1. CWP Steering Committee\r\n2. CWP Steering Committee Group Photograph\r\n3. Small Branches Steering Committee\r\n5. Small Branches Steering Committee Group Photograph', '09:00 AM', '1:00 PM', '2019-09-23', 'Commonwealth Banquet Hall\r\nCommonwealth Banquet Hall\r\nAlbert Conference Hall\r\nVictoria Garden', 0, 0),
(21, '1. Meeting of Regional Secretaries\r\n', '09:00 AM', '11:00 AM', '2019-09-23', 'Majestic Hall', 0, 0),
(23, '1. CWP Steering Committee Morning tea/coffee break\r\n2. Small Branches Steering Committee Morning Tea/coffee break\r\n3. CWP Conference cont\'d\r\n4. Small Branches Conference - Elections', '10:00 AM', '10:30 AM', '2019-09-23', 'Inside the meeting room\r\nInside the meeting room\r\nCommonwealth Banquet Hall\r\nAlbert Conference Hall', 0, 0),
(24, 'Lunch', '1:00 PM', '2:00 PM', '2019-09-23', 'Flag Mast', 0, 0),
(25, '1. CWP Conference\r\n2. CWP Group Photograph\r\n3. Small Branches Conference', '2:00 PM', '5:30 PM', '2019-09-23', 'Commonwealth Banquet Hall\r\nVictoria Garden\r\nAlbert Conference Hall', 0, 0),
(26, 'Working Group on Governance', '2:00 PM', '4:00 PM', '2019-09-23', 'Majestic Hall', 0, 0),
(27, '1. CWP Conference Afternoon Tea/coffee break\r\n2. Small Branches Conference Afternoon Tea/coffee break\r\n3. Working Group on Governance Afternoon tea/coffee break', '3:30 PM', '4:00 PM', '2019-09-23', 'Inside the meeting room\r\nInside the meeting room\r\nInside the meeting room', 0, 0),
(28, 'Co-ordinating Committee Meeting followed by the Audit subcommittee meeting and the CPA HQA Premises Working Group Meeting', '4:00 PM', '6:30 PM', '2019-09-23', 'Majestic Hall', 0, 0),
(29, 'CLOSE', '6:30 PM', '6:30 PM', '2019-08-23', '', 0, 0),
(30, '1. Main Executive Committee Meeting\r\n2. CWP Conference\r\n3. Small Branches Conference cont\'d\r\n4.Small Branches Conference Group Photograph', '09:00 AM', '10:30 AM', '2019-09-24', 'Meera Hall\r\nCommonwealth Banquet Hall\r\nAlbert Conference Hall\r\nTBC\r\n', 0, 0),
(31, '1. Main Executive Commiittee Morning Tea/coffee break\r\n2. CWP Conference Morning Tea/coffee break\r\n3. Small Branches Conference Morning tea/coffee break', '10:30 AM', '10:45 AM', '2019-08-24', 'Victoria Hall\r\nCalabash\r\nVictoria Garden', 0, 0),
(32, '1. Finance Subcommittee Meeting\r\n2. Planning and Review Subcommittee Meeting\r\n3. CWP Conference cont\'d\r\n4. Small Branches Conference - Elections', '10:45 AM', '1:00 PM', '2019-09-24', 'Meera Hall\r\nSheena Hall\r\nCommonwealth Banquet Hall\r\nAlbert Conference Hall', 0, 0),
(33, 'Buffet Lunch', '1:00 PM', '2:00 PM', '2019-09-24', 'Flag Mast', 0, 0),
(34, '1. Finance Subcommittee Meeting\r\n2. Planning and Review Subcommittee Meeting\r\n3. CWP Business Meeting/ Elections\r\n4. Small Branches Conference', '2:00 PM', '5:30 PM', '2019-09-24', 'Meera Hall\r\nSheena Hall\r\nCommonwealth Banquet Hall\r\nAlbert Conference Hall', 0, 0),
(35, '1. Finance Subcommittee Afternoon tea/coffee break\r\n2. Planning and Review subcommittee Afternoon tea/coffee break\r\n3. CWP Afternoon tea/coffee break \r\n4. Small Branches Conference Afternoon tea/coffe', '3:30 PM', '3:45 PM', '2019-09-24', 'Victoria Garden \r\nVictoria Garden\r\nCalabash\r\nVictoria Garden', 0, 0),
(36, 'CLOSE', '5:30 PM', '5:30 PM', '2019-09-24', '', 0, 0),
(37, '1. Main Executive  Committee Meeting cont\'d\r\n2. Main Executive Committee Group Photograph', '09:00 AM', '1:00 PM', '2019-09-25', 'Meera Hall\r\nVictoria Garden', 0, 0),
(38, 'Main Executive Committee Morning tea/coffee break', '10:30 AM', '10:45 AM', '2019-08-25', 'Victoria Garden', 0, 0),
(39, 'Boat Cruise Luncheon for Members of the Executive Committee (TBC)', '1:00 PM', '2:00 PM', '2019-09-25', 'Speke Resort Munyonyo (Lake Victoria)', 0, 0),
(40, 'Main Executive Committee Meeting cont\'d', '2:00 PM', '5:00 PM', '2019-09-25', 'Meera Hall', 0, 0),
(41, 'Main Executive Committee  Afternoon tea/coffee break', '3:30 PM', '3:45 PM', '2019-09-25', 'Victoria Garden', 0, 0),
(42, '1. Tentative launch of the IHL publication TBC\r\n2. CLOSE', '5:00 PM', '5:00 PM', '2019-09-25', '', 0, 0),
(43, 'Dinner at respective hotels', '', '', '2019-09-24', '', 0, 0),
(44, '1. Official Opening of the 64th Commonwealth Parliamentary Conference\r\n2. Official Photograph', '10:00 AM', '12:30 PM', '2019-09-26', 'Lakeside - Marquee\r\nLake Terrace', 0, 0),
(45, 'Buffet Lunch', '12:30 PM', '2:00 PM', '2019-09-26', 'Flag Mast and Speke Resort Poolside', 0, 0),
(46, '1. Briefing for delegates, observers and secretaries followed by briefing for workshop moderators, discussion leaders, rapporteurs and session secretaries. Also briefing on election of the treasurer.\r', '2:00 PM', '3:00 PM', '2019-09-26', 'Victoria Ballroom\r\nAlbert Conference Hall', 0, 0),
(47, 'Afternoon tea/ coffee ', '3:00 PM', '3:30 PM', '2019-09-26', 'Victoria Terrace', 0, 0),
(48, '1. Workshop A: Talk- show Pnael - Climate Change: Achievements, Challenges and Efficacy of Parliament Interventions(Host Branch)\r\n2. Workshop B: TED Talk- Innovation in Parliament: the impact of scien', '3:30 PM', '6:00 PM', '2019-08-26', 'Acacia Hall\r\nEbony Hall\r\n Mahogany Hall', 0, 0),
(49, 'CLOSE', '6:15 PM', '6:15 PM', '2019-09-26', '', 0, 0),
(50, '1. CPA Secretary-General\'s reception for Clerks, Secretatries to Delegations and thier spouses/partners and Accompanying officials.\r\n2. Launch of the Pilot CPA Online Parliamentary Staff Courses', '6:30 PM', '7:30 PM', '2019-08-26', 'Albert Conference Hall', 0, 0),
(51, 'Welcome Dinner hosted by the Speaker of the Parliament of Uganda for ALL Participants', '8:00 PM', '10:00 PM', '2019-09-26', 'Parliament Building, Kampala ', 0, 0),
(52, '1. Workshop C: Mentoring Session - The  role of Parliament in facilitating persons with disabilities as electors, candidates and legislators.\r\n2. Workshop D:(Youth Related Topic)  Youth Round table- S', '09:30 AM', '1:00 PM ', '2019-09-27', 'Acacia Hall\r\nAlert Conference Hall\r\nJacaranda Hall\r\nMahogany Hall (breakout rooms- Mahogany Hall two groups and Ebony Hall one group)', 0, 0),
(53, 'Tea/coffee', '10:30 AM', '11:00 AM', '2019-09-27', 'Speke Garden', 0, 0),
(54, '1. Buffet Lunch\r\n2. Slide Event: Global Forum for Parliamentarians(TBC)', '1:00 PM', '2:30 PM', '2019-09-27', 'Flag Mast\r\nJacaranda Hall', 0, 0),
(61, '1. Workshop F:(Small branches Topic) TED talk - innovation in Parliament\r\n2. Workshop G: (Gender Topic) Mentoring session- fostering a culture of respect, fairness and dignity\r\n3. Workshop H:The role ', '2:30 PM', '4:30 PM', '2019-09-26', 'Acacia Hall\r\nEbony Hall\r\nJacaranda Hall\r\nMahogany Hall', 0, 0),
(62, 'Afternoon tea/ coffee', '3:30 PM', '3:45 PM', '2019-08-27', 'Speke Garden', 0, 0),
(63, 'CPA Lecture Topic: Maintaining Stability, Evolution, Dynamics and challenges of Terrorism in Eastern Africa', '6:00 PM\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '8:00 PM', '2019-09-27', 'Albert Conference Hall', 0, 0),
(64, 'Dinner hosted by Head of State for Speakers, Heads of Delegation and Members of the Executive Committee (TBC)', '4:00 PM', '8:00 PM', '2019-08-27', 'TBCSOCA', 0, 0),
(65, 'SOCATT Dinner hosted by Secretary CPA Uganda Branch ', '6:00 PM', '9:00 PM', '2019-09-27', 'Ndere Troupe Cultural Centre', 0, 0),
(66, '1. Workshop I: Post Legislative Scrutiny(PLS)- a dimension of the oversight function of the Parliament\r\n2. Workshop J: Talk-show panel- How the update CPA benchmarks for the Democratic legislatures ha', '09:30 AM', '12:30 PM', '2019-09-28', 'Acacia Hall\r\nEbony Hall\r\nJacaranda Hall', 0, 0),
(67, '1.  Workshop I Tea/Coffee\r\n2. Workshop J Tea/Coffee', '10:30 AM', '11:00 AM', '2019-09-28', 'Acacia Hall\r\nEbony Hall', 0, 0),
(68, '1. Buffet Lunch\r\n2. Side Event: TBC\r\n3. Side Event: TBC', '12:30 PM', '2:00 PM', '2019-09-28', 'Flag Mast\r\nEbony Hall\r\nJacaranda Hall', 0, 0),
(69, 'General Assembly', '2:00 PM', '5:00 PM', '2019-09-28', 'Victoria Ballroom', 0, 0),
(70, 'New ExCo Meeting and Election of the Vice Chairperson', '05:30 PM', '06:30 PM', '2019-09-28', 'Meera Hall', 0, 0),
(71, 'Cultural Gala for all participants', '06:30 PM', '', '2019-09-28', 'Lakeside Marquee', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_format`
--

CREATE TABLE `tbl_format` (
  `id` int(11) NOT NULL,
  `format` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_format`
--

INSERT INTO `tbl_format` (`id`, `format`) VALUES
(4, 'AM'),
(5, 'PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_format`
--
ALTER TABLE `tbl_format`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_format`
--
ALTER TABLE `tbl_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
