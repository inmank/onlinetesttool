-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2014 at 07:18 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oatool`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylogs`
--

CREATE TABLE IF NOT EXISTS `activitylogs` (
  `username` text NOT NULL,
  `ipaddr` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Captures user activity';

-- --------------------------------------------------------

--
-- Table structure for table `assesmentlog`
--

CREATE TABLE IF NOT EXISTS `assesmentlog` (
  `username` text NOT NULL,
  `assesmentname` text NOT NULL,
  `qalist` text NOT NULL,
  `score` int(10) NOT NULL,
  `timetaken` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='captures the user assessment log';

-- --------------------------------------------------------

--
-- Table structure for table `qa_basic`
--

CREATE TABLE IF NOT EXISTS `qa_basic` (
  `qid` text NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `option5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Question and answers on basic topics';

-- --------------------------------------------------------

--
-- Table structure for table `qa_expert`
--

CREATE TABLE IF NOT EXISTS `qa_expert` (
  `qid` text NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `option5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_medium`
--

CREATE TABLE IF NOT EXISTS `qa_medium` (
  `qid` text NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `option5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `Id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `Password` text NOT NULL,
  `Role` set('Admin','User','','') NOT NULL,
  `Team` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains basic user inofrmations';

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`Id`, `Name`, `Password`, `Role`, `Team`) VALUES
(184262, 'Karthik_Manavalan', '184262', 'Admin', 'EPT'),
(12345, 'Test_user1', '12345', 'User', 'WEBUI');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
