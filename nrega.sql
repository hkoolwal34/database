-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2017 at 06:08 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nrega`
--

-- --------------------------------------------------------

--
-- Table structure for table `blockdetails`
--

CREATE TABLE `blockdetails` (
  `blockCode` int(7) NOT NULL,
  `districtCode` int(4) NOT NULL,
  `blockName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blockdetails`
--

INSERT INTO `blockdetails` (`blockCode`, `districtCode`, `blockName`) VALUES
(2602002, 2602, 'ATTARI');

-- --------------------------------------------------------

--
-- Table structure for table `daysworked`
--

CREATE TABLE `daysworked` (
  `jobcardNum` varchar(20) NOT NULL,
  `workedDays` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `districtdetails`
--

CREATE TABLE `districtdetails` (
  `districtCode` int(4) NOT NULL,
  `stateCode` int(2) NOT NULL,
  `districtName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districtdetails`
--

INSERT INTO `districtdetails` (`districtCode`, `stateCode`, `districtName`) VALUES
(2602, 26, 'Amritsar');

-- --------------------------------------------------------

--
-- Table structure for table `jobavailable`
--

CREATE TABLE `jobavailable` (
  `panchayatCode` bigint(10) NOT NULL,
  `villageCode` bigint(13) NOT NULL,
  `workId` int(6) NOT NULL,
  `workCategory` varchar(2) NOT NULL,
  `work` varchar(100) NOT NULL,
  `location` varchar(30) NOT NULL,
  `totalWorkersReq` int(4) NOT NULL,
  `workersAlloted` int(4) NOT NULL,
  `startDate` date NOT NULL,
  `contracterID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobcard`
--

CREATE TABLE `jobcard` (
  `jobcardNum` varchar(20) NOT NULL,
  `headOfHousehold` varchar(25) NOT NULL,
  `father` varchar(25) NOT NULL,
  `category` varchar(10) NOT NULL,
  `dateOfRegistration` date NOT NULL,
  `address` varchar(10) NOT NULL,
  `village` varchar(15) NOT NULL,
  `panchayat` varchar(15) NOT NULL,
  `block` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `bpl` tinyint(1) NOT NULL,
  `familyId` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobcard`
--

INSERT INTO `jobcard` (`jobcardNum`, `headOfHousehold`, `father`, `category`, `dateOfRegistration`, `address`, `village`, `panchayat`, `block`, `district`, `bpl`, `familyId`) VALUES
('PB02002001001/1', 'Arjun singh', 'Jaspal Singh', 'SC', '2007-10-21', '', 'ATTALGARH', 'ATTALGARH', 'ATTARI', 'AMRITSAR', 0, '1'),
('PB02002001001/10', 'BAJ SINGH	', 'amardeep singh', 'SC', '2007-10-21', '', 'ATTALGARH', 'ATTALGARH', 'attari', 'amritsar', 0, '10'),
('PB02002001001/100	', 'balkar singh	', 'baldev singh', 'SC', '2009-07-29', '', 'ATTALGARH', 'ATTALGARH', 'attari', 'amritsar', 0, '100'),
('PB02002001001/101	', 'mejor singh	', 'gura singh', 'SC', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '101'),
('PB02002001001/102	', 'sukdev singh	', 'diyal singh', 'SC', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '102'),
('PB02002001001/103', 'jaswant singh	', 'punjab singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '103'),
('PB02002001001/104', 'rawinder singh	', 'kabal singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '104'),
('PB02002001001/105', 'balwinder singh	', 'puran singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '105'),
('PB02002001001/106', 'salwant singh	', 'dalip singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '106'),
('PB02002001001/107', 'sawinder singh', 'baldev singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '107'),
('PB02002001001/108', 'dilbagh singh', 'malook singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '108'),
('PB02002001001/109', 'sonu singh', 'satta singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '109'),
('PB02002001001/11', 'baljit singh', 'gurnam singh', 'sc', '2007-11-21', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '11'),
('PB02002001001/110', 'amar singh', 'mahinder singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '110'),
('PB02002001001/111', 'samsher singh', 'mukhtar singh', 'sc', '2009-08-28', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '111'),
('PB02002001001/112', 'lakhwinder singh', 'balwant singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '112'),
('PB02002001001/113', 'kuldeep singh', 'ajit singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '113'),
('PB02002001001/114', 'charan singh', 'hazara singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '114'),
('PB02002001001/115', 'rajpal singh', 'harbans singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '115'),
('PB02002001001/116', 'lakhwinder singh', 'roop singh', 'sc', '2009-07-29', '', 'attalgarh', 'attalgarh', 'attari', 'amritsar', 0, '116'),
('PB02002002001/1', 'ajit singh', 'palwinder singh', 'sc', '2007-11-12', '', 'attari', 'attari', 'attari', 'amritsar', 1, '1'),
('PB02002002001/10', 'akashbir singh', 'satnam singh', 'sc', '2007-12-11', '', 'attari', 'attari', 'attari', 'amritsar', 1, '10'),
('PB02002002001/100', 'sawran singh', 'tara singh', 'sc', '2007-12-04', '1', 'attari', 'attari', 'attari', 'amritsar', 0, '100'),
('PB02002002001/101', 'ajit singh', 'sawaran singh', 'sc', '2004-07-11', '', 'attari', 'attari', 'attari', 'amritsar', 1, '101'),
('PB02002002001/102', 'tara singh', 'tarsem singh', 'sc', '2003-03-12', '', 'attari', 'attari', 'attari', 'attari', 0, '102'),
('PB02002002001/103	', 'veer singh', 'beer singh', 'sc', '2007-04-10', '', 'attari', 'attari', 'attari', 'amritsar', 1, '103'),
('PB02002002001/104	', 'waryan singh', 'neer singh', 'sc', '2007-04-17', '', 'attari', 'attari', 'attari', 'amritsar', 1, '104'),
('PB02002002001/105', 'kuldeep singh', 'massa singh', 'oth', '2007-10-04', '', 'attari', 'attari', 'attari', 'amritsar', 1, '105'),
('PB02002002001/106', 'malwinder singh', 'malook singh', 'oth', '2007-07-11', '', 'attari', 'attari', 'attari', 'amritsar', 0, '106'),
('PB02002002001/184', 'khajan singh', 'pritam singh', 'SC', '2010-01-01', '', 'ATTARI', 'ATTARI', 'ATTARI', 'Amritsar', 0, '184'),
('PB02002002001/185', 'baldev singh', 'nishan singh', 'SC', '2010-01-01', '', 'ATTARI', 'ATTARI', 'ATTARI', 'Amritsar', 0, '185'),
('PB02002002001/188', 'Joginder Singh', 'Hari Singh', 'SC', '2009-09-12', '', 'ATTARI', 'ATTARI', 'ATTARI', 'Amritsar', 0, '188'),
('PB02002002001/189', 'Nirmal Singh', 'Guljar Singh', 'SC', '2009-09-12', '', 'ATTARI', 'ATTARI', 'ATTARI', 'Amritsar', 0, '189'),
('PB02002002001/1A', 'sonu', 'dalbir singh', 'sc', '2013-02-12', '', 'attari', 'attari', 'attari', 'amritsar', 0, '1A'),
('PB02005007001/28	', 'rajwinder singh', 'gurdeep singh', 'sc', '2007-09-10', '', 'achintkot', 'achintkot', 'attari', 'amritsar', 0, '28'),
('PB02005007001/29', 'massa singh', 'bahadur singh', 'sc', '2007-09-10', '', 'achintkot', 'achintkot', 'attari', 'amritsar', 0, '29'),
('PB02005007001/3', 'roshan singh', 'amrik singh', 'sc', '2007-10-23', '12', 'achintkot', 'achintkot', 'attari', 'amritsar', 1, '3'),
('PB02005007001/30	', 'sukhwinder singh', 'gurmer singh', 'gen', '2008-02-12', '23', 'achintkot', 'achintkot', 'attari', 'amritsar', 1, '30'),
('PB02005007001/31', 'prab singh', 'tega singh', 'st', '2006-10-21', '23', 'achintkot', 'achintkot', 'attari', 'amritsar', 1, '31'),
('PB02005007001/32', 'variyam singh', 'desa singh', 'st', '2008-09-12', '1', 'achintkot', 'achintkot', 'attari', 'amritsar', 0, '32'),
('PB02005007001/33', 'baj singh', 'saidass singh', 'gen', '2007-08-12', '12', 'achintkot', 'achintkot', 'attari', 'amritsar', 0, '33'),
('PB02005007001/34	', 'karaj singh', 'jagtar singh', 'oth', '2008-09-12', '12', 'achintkot', 'achintkot', 'attari', 'amritsar', 0, '34'),
('PB02005007001/35', 'subera singh', 'lakha singh', 'sc', '2006-12-03', '', 'achintkot', 'achintkot', 'attari', 'amritsar', 1, '35'),
('PB02005007001/36', 'seetal singh', 'chanan singh', 'st', '2006-12-21', '', 'achintkot', 'achintkot', 'attari', 'attari', 1, '36');

-- --------------------------------------------------------

--
-- Table structure for table `panchayatdetails`
--

CREATE TABLE `panchayatdetails` (
  `blockCode` int(7) NOT NULL,
  `panchayatCode` bigint(10) NOT NULL,
  `panchayatName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panchayatdetails`
--

INSERT INTO `panchayatdetails` (`blockCode`, `panchayatCode`, `panchayatName`) VALUES
(2602002, 2602002002, 'ATTARI');

-- --------------------------------------------------------

--
-- Table structure for table `panchayatlogin`
--

CREATE TABLE `panchayatlogin` (
  `userId` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `panchayatlogin`
--

INSERT INTO `panchayatlogin` (`userId`, `password`) VALUES
(2602002002, 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `statedetails`
--

CREATE TABLE `statedetails` (
  `stateCode` int(2) NOT NULL,
  `stateName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statedetails`
--

INSERT INTO `statedetails` (`stateCode`, `stateName`) VALUES
(20, 'UP'),
(26, 'Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `villagedetails`
--

CREATE TABLE `villagedetails` (
  `panchayatCode` bigint(10) NOT NULL,
  `villageCode` bigint(13) NOT NULL,
  `villageName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `villagedetails`
--

INSERT INTO `villagedetails` (`panchayatCode`, `villageCode`, `villageName`) VALUES
(2602002002, 2602002002001, 'ATTARI');

-- --------------------------------------------------------

--
-- Table structure for table `workcategory`
--

CREATE TABLE `workcategory` (
  `workCatCode` varchar(2) NOT NULL,
  `workName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workcategory`
--

INSERT INTO `workcategory` (`workCatCode`, `workName`) VALUES
('CA', 'Coastal Areas'),
('DP', 'Drought Proofing'),
('DW', 'Rural Drinking Water'),
('FP', 'Flood Control'),
('FR', 'Fisheries'),
('IC', 'Irrigation Canals'),
('IF', 'Irrigation Facilities To SC/ST/IAY/LR'),
('LD', 'Land development'),
('OP', 'Other Works'),
('RC', 'Rural Connectivity'),
('RS', 'Rural Sanitation'),
('SK', 'Bharat Nirman Rajiv Gandhi Sewa Kendra'),
('WC', 'Water Conservation'),
('WH', 'Renovation of traditional water bodies');

-- --------------------------------------------------------

--
-- Table structure for table `workdemand`
--

CREATE TABLE `workdemand` (
  `demandId` int(6) NOT NULL,
  `villageCode` bigint(13) NOT NULL,
  `jobcardNum` varchar(20) NOT NULL,
  `applicantNum` int(2) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workdemand`
--

INSERT INTO `workdemand` (`demandId`, `villageCode`, `jobcardNum`, `applicantNum`, `startDate`, `endDate`) VALUES
(1, 2602002002001, 'PB02002002001/184', 1, '2017-04-01', '2017-04-07'),
(3, 2602002002001, 'PB02002002001/188', 1, '2017-04-01', '2017-04-07'),
(4, 2602002002001, 'PB02002002001/189', 1, '2017-04-01', '2017-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `worker_data`
--

CREATE TABLE `worker_data` (
  `jobcardNum` varchar(20) NOT NULL,
  `applicantNum` int(2) NOT NULL,
  `workerName` varchar(25) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` int(2) NOT NULL,
  `aadharNum` bigint(16) DEFAULT NULL,
  `accountNum` bigint(16) NOT NULL,
  `Bank` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker_data`
--

INSERT INTO `worker_data` (`jobcardNum`, `applicantNum`, `workerName`, `gender`, `age`, `aadharNum`, `accountNum`, `Bank`) VALUES
('PB02002002001/184', 1, 'khajan singh', 'male', 25, NULL, 1512160692728, 'Oriental Bank of Commerce'),
('PB02002002001/185', 1, 'baldev singh', 'male', 23, NULL, 1512160692729, 'Oriental Bank of Commerce'),
('PB02002002001/188', 1, 'joginder singh', 'male', 35, NULL, 1512160692732, 'Oriental Bank of Commerce'),
('PB02002002001/189', 1, 'nirmal singh', 'male', 36, NULL, 1512160692733, 'Oriental Bank of Commerce');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blockdetails`
--
ALTER TABLE `blockdetails`
  ADD PRIMARY KEY (`blockCode`),
  ADD KEY `districtCode` (`districtCode`);

--
-- Indexes for table `daysworked`
--
ALTER TABLE `daysworked`
  ADD KEY `jobcardNum` (`jobcardNum`);

--
-- Indexes for table `districtdetails`
--
ALTER TABLE `districtdetails`
  ADD PRIMARY KEY (`districtCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indexes for table `jobavailable`
--
ALTER TABLE `jobavailable`
  ADD PRIMARY KEY (`panchayatCode`,`villageCode`,`workId`),
  ADD KEY `villageCode` (`villageCode`),
  ADD KEY `workCategory` (`workCategory`);

--
-- Indexes for table `jobcard`
--
ALTER TABLE `jobcard`
  ADD PRIMARY KEY (`jobcardNum`);

--
-- Indexes for table `panchayatdetails`
--
ALTER TABLE `panchayatdetails`
  ADD PRIMARY KEY (`panchayatCode`),
  ADD KEY `blockCode` (`blockCode`);

--
-- Indexes for table `panchayatlogin`
--
ALTER TABLE `panchayatlogin`
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `statedetails`
--
ALTER TABLE `statedetails`
  ADD PRIMARY KEY (`stateCode`);

--
-- Indexes for table `villagedetails`
--
ALTER TABLE `villagedetails`
  ADD PRIMARY KEY (`villageCode`),
  ADD KEY `panchayatCode` (`panchayatCode`);

--
-- Indexes for table `workcategory`
--
ALTER TABLE `workcategory`
  ADD PRIMARY KEY (`workCatCode`);

--
-- Indexes for table `workdemand`
--
ALTER TABLE `workdemand`
  ADD PRIMARY KEY (`demandId`,`villageCode`),
  ADD UNIQUE KEY `jobcardNum` (`jobcardNum`,`applicantNum`,`startDate`,`endDate`),
  ADD KEY `villageCode` (`villageCode`);

--
-- Indexes for table `worker_data`
--
ALTER TABLE `worker_data`
  ADD PRIMARY KEY (`jobcardNum`,`applicantNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `workdemand`
--
ALTER TABLE `workdemand`
  MODIFY `demandId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blockdetails`
--
ALTER TABLE `blockdetails`
  ADD CONSTRAINT `blockdetails_ibfk_1` FOREIGN KEY (`districtCode`) REFERENCES `districtdetails` (`districtCode`);

--
-- Constraints for table `daysworked`
--
ALTER TABLE `daysworked`
  ADD CONSTRAINT `daysworked_ibfk_1` FOREIGN KEY (`jobcardNum`) REFERENCES `jobcard` (`jobcardNum`);

--
-- Constraints for table `districtdetails`
--
ALTER TABLE `districtdetails`
  ADD CONSTRAINT `districtdetails_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `statedetails` (`stateCode`);

--
-- Constraints for table `jobavailable`
--
ALTER TABLE `jobavailable`
  ADD CONSTRAINT `jobavailable_ibfk_1` FOREIGN KEY (`panchayatCode`) REFERENCES `panchayatdetails` (`panchayatCode`),
  ADD CONSTRAINT `jobavailable_ibfk_2` FOREIGN KEY (`villageCode`) REFERENCES `villagedetails` (`villageCode`),
  ADD CONSTRAINT `jobavailable_ibfk_3` FOREIGN KEY (`panchayatCode`) REFERENCES `panchayatdetails` (`panchayatCode`),
  ADD CONSTRAINT `jobavailable_ibfk_4` FOREIGN KEY (`villageCode`) REFERENCES `villagedetails` (`villageCode`),
  ADD CONSTRAINT `jobavailable_ibfk_5` FOREIGN KEY (`workCategory`) REFERENCES `workcategory` (`workCatCode`);

--
-- Constraints for table `panchayatdetails`
--
ALTER TABLE `panchayatdetails`
  ADD CONSTRAINT `panchayatdetails_ibfk_1` FOREIGN KEY (`blockCode`) REFERENCES `blockdetails` (`blockCode`);

--
-- Constraints for table `panchayatlogin`
--
ALTER TABLE `panchayatlogin`
  ADD CONSTRAINT `panchayatlogin_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `panchayatdetails` (`panchayatCode`);

--
-- Constraints for table `villagedetails`
--
ALTER TABLE `villagedetails`
  ADD CONSTRAINT `villagedetails_ibfk_1` FOREIGN KEY (`panchayatCode`) REFERENCES `panchayatdetails` (`panchayatCode`);

--
-- Constraints for table `workdemand`
--
ALTER TABLE `workdemand`
  ADD CONSTRAINT `workdemand_ibfk_1` FOREIGN KEY (`jobcardNum`,`applicantNum`) REFERENCES `worker_data` (`jobcardNum`, `applicantNum`),
  ADD CONSTRAINT `workdemand_ibfk_2` FOREIGN KEY (`villageCode`) REFERENCES `villagedetails` (`villageCode`);

--
-- Constraints for table `worker_data`
--
ALTER TABLE `worker_data`
  ADD CONSTRAINT `worker_data_ibfk_1` FOREIGN KEY (`jobcardNum`) REFERENCES `jobcard` (`jobcardNum`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
