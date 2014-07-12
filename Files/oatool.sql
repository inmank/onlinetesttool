-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2014 at 01:52 PM
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

--
-- Dumping data for table `qa_basic`
--

INSERT INTO `qa_basic` (`qid`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
('1', 'Trail question-basic1?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('2', 'Trail question-basic2?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('3', 'Trail question-basic3?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('4', 'Trail question-basic4?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('5', 'Trail question-basic5?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('6', 'Trail question-basic6?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('7', 'Trail question-basic7?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('8', 'Trail question-basic8?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('9', 'Trail question-basic9?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('10', 'Trail question-basic10?', 'op1', 'op2', 'op3', 'op4', 'op5');

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

--
-- Dumping data for table `qa_expert`
--

INSERT INTO `qa_expert` (`qid`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
('1', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('2', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('3', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('4', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('5', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('6', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('7', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('8', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('9', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('10', 'Trail question-expert?', 'op1', 'op2', 'op3', 'op4', 'op5');

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

--
-- Dumping data for table `qa_medium`
--

INSERT INTO `qa_medium` (`qid`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
('1', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('2', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('3', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('4', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('5', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('6', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('7', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('8', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('9', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5'),
('10', 'Trail question-medium?', 'op1', 'op2', 'op3', 'op4', 'op5');

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
