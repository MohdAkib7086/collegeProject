-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 02:03 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-11 12:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `placement_record`
--

CREATE TABLE `placement_record` (
  `id` int(15) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `faculty_no` varchar(20) NOT NULL,
  `discipline` varchar(20) NOT NULL,
  `year_of_passing` varchar(4) NOT NULL,
  `on_off_campus` varchar(15) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `ctc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `placement_record`
--

INSERT INTO `placement_record` (`id`, `student_name`, `faculty_no`, `discipline`, `year_of_passing`, `on_off_campus`, `company_name`, `ctc`) VALUES
(1, 'MOHD Akib', '19COB034', 'cse', '2022', 'on campus', 'google', '20lakh');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(20) NOT NULL,
  `project_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Principal_Investigator` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Co_Investigator` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `brief_summary` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amt_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `brief_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `project_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NumberOfPublications` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NumberOfPapers` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `GrantNumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ProjectStatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ProjectWebpage` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(15) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `full_name` varchar(40) NOT NULL,
  `father_name` varchar(40) NOT NULL,
  `mother_name` varchar(40) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `year_of_join` date NOT NULL,
  `TotalExperience` varchar(20) NOT NULL,
  `AreaOfInterest` varchar(100) NOT NULL,
  `NumberOfPublications` varchar(10) NOT NULL,
  `NumberOfPapers` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `OfficeAddress` varchar(100) NOT NULL,
  `OfficeCity` varchar(50) NOT NULL,
  `OfficePin` varchar(50) NOT NULL,
  `OfficeTelephone` varchar(50) NOT NULL,
  `OfficeMobile` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Pin` varchar(20) NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `Mobile` varchar(30) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `full_name`, `father_name`, `mother_name`, `designation`, `sex`, `branch`, `religion`, `date_of_birth`, `year_of_join`, `TotalExperience`, `AreaOfInterest`, `NumberOfPublications`, `NumberOfPapers`, `Email`, `OfficeAddress`, `OfficeCity`, `OfficePin`, `OfficeTelephone`, `OfficeMobile`, `Address`, `City`, `State`, `Pin`, `Telephone`, `Mobile`, `Country`, `status`, `UserName`, `Password`) VALUES
(4, '12345', 'MOHD Akib', '', '', 'associate professor', '', '', '', '2021-11-19', '2021-11-18', '', '', '', '', 'abcd@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', 0, '12345', '$2y$10$I9C8gCzqqV3Srstljzj4ief3zBaXLgRwq1RJjIEGjOzJepOwUwkeK');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(15) NOT NULL,
  `sl_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faculty_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enrolment_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `father_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mother_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `religion` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_of_birth` date DEFAULT NULL,
  `special_category` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nationality` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exam_passed` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hall_assigned` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_address1` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_city` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_pin` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cor_address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_pin` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sl_no`, `faculty_no`, `enrolment_no`, `full_name`, `father_name`, `mother_name`, `sex`, `branch`, `religion`, `date_of_birth`, `special_category`, `course_name`, `state`, `nationality`, `exam_passed`, `hall_assigned`, `room_no`, `per_address1`, `per_city`, `per_pin`, `per_telephone`, `per_mobile`, `status`, `cor_address1`, `cor_city`, `cor_pin`, `cor_telephone`, `cor_mobile`, `city`) VALUES
(0, '52', 'asdf4530', 'gj3540', 'MOHD Akib', 'hassan', 'noora', '', '', '', '0000-00-00', 'General', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_old`
--

CREATE TABLE `students_old` (
  `id` int(15) NOT NULL,
  `sl_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faculty_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enrolment_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `father_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mother_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `religion` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_of_birth` date NOT NULL DEFAULT '0000-00-00',
  `special_category` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `course_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nationality` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `exam_passed` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hall_assigned` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_address1` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_address2` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_city` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_pin` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `per_mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cor_address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_pin` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cor_mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_any-other-information`
--

CREATE TABLE `tblproject_any-other-information` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_awards-and-honors`
--

CREATE TABLE `tblproject_awards-and-honors` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Awarding_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_books-chapters-technical-papers`
--

CREATE TABLE `tblproject_books-chapters-technical-papers` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_conference-papers`
--

CREATE TABLE `tblproject_conference-papers` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Authors` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ConferenceName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Month_Year` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Place` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_journal-publications`
--

CREATE TABLE `tblproject_journal-publications` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(50) NOT NULL DEFAULT 0,
  `Authors` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `JournalName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Volume_pages` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_patents`
--

CREATE TABLE `tblproject_patents` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Patent_Number` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Patent_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_project-staff`
--

CREATE TABLE `tblproject_project-staff` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Designation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_workshop-seminar-attended`
--

CREATE TABLE `tblproject_workshop-seminar-attended` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `National_International` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Place` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_workshop-seminar-conference-organized`
--

CREATE TABLE `tblproject_workshop-seminar-conference-organized` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Name_Of_Workshop_Seminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Organizing_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentqualification`
--

CREATE TABLE `tblstudentqualification` (
  `QID` bigint(20) NOT NULL,
  `StudentID` bigint(20) NOT NULL DEFAULT 0,
  `Degree` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `University` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RollNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Marks` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_administrative-posts-positions-held`
--

CREATE TABLE `tblteacher_administrative-posts-positions-held` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year_Duration` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_any-other-information`
--

CREATE TABLE `tblteacher_any-other-information` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_awards-and-honors`
--

CREATE TABLE `tblteacher_awards-and-honors` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Awarding_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_books-chapters-technical-papers`
--

CREATE TABLE `tblteacher_books-chapters-technical-papers` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_conference-papers`
--

CREATE TABLE `tblteacher_conference-papers` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Authors` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ConferenceName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Month_Year` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Place` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_educational-qualifications`
--

CREATE TABLE `tblteacher_educational-qualifications` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Degree` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `University` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RollNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Marks` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_examinership-supervision-of-dissertation-projects-phd`
--

CREATE TABLE `tblteacher_examinership-supervision-of-dissertation-projects-phd` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Degree` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Name_of_Student` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `University` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_funded-projects`
--

CREATE TABLE `tblteacher_funded-projects` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Principal_Investigator` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Amount_Approved` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Co_Investigator` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Funding_body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Start_Year` date NOT NULL DEFAULT '0000-00-00',
  `Remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_journal-publications`
--

CREATE TABLE `tblteacher_journal-publications` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(50) NOT NULL DEFAULT 0,
  `Authors` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `JournalName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Volume_pages` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_membership-of-learned-professional-technical-bodies`
--

CREATE TABLE `tblteacher_membership-of-learned-professional-technical-bodies` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_other-teaching-research-administrative-activities`
--

CREATE TABLE `tblteacher_other-teaching-research-administrative-activities` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_patents`
--

CREATE TABLE `tblteacher_patents` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Patent_Number` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Patent_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_project-submitted-for-funding`
--

CREATE TABLE `tblteacher_project-submitted-for-funding` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `ProjectID` bigint(20) NOT NULL DEFAULT 0,
  `Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Funding_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_work-experience`
--

CREATE TABLE `tblteacher_work-experience` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `WorkExperience` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Institution` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `years` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_workshop-seminar-attended`
--

CREATE TABLE `tblteacher_workshop-seminar-attended` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `National_International` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Place` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_workshop-seminar-conference-organized`
--

CREATE TABLE `tblteacher_workshop-seminar-conference-organized` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT 0,
  `NameOfWorkshopSeminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Organizing_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ug_curriculum_cobt`
--

CREATE TABLE `ug_curriculum_cobt` (
  `id` int(15) NOT NULL,
  `course_catg` varchar(15) NOT NULL,
  `course_no` varchar(10) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `contact_prd_L` int(15) NOT NULL,
  `contact_prd_T` int(15) NOT NULL,
  `contact_prd_P` int(15) NOT NULL,
  `credits` varchar(15) NOT NULL,
  `marks_course_work` varchar(15) NOT NULL DEFAULT '15',
  `marks_midsem` varchar(15) NOT NULL DEFAULT '25',
  `marks_endsem` varchar(15) NOT NULL DEFAULT '60',
  `total` varchar(15) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ug_curriculum_cobt`
--

INSERT INTO `ug_curriculum_cobt` (`id`, `course_catg`, `course_no`, `course_title`, `contact_prd_L`, `contact_prd_T`, `contact_prd_P`, `credits`, `marks_course_work`, `marks_midsem`, `marks_endsem`, `total`) VALUES
(1, 'BS', 'AMS110', 'APPLIED MATHEMATICS I', 3, 1, 0, '4', '15', '25', '60', '100'),
(2, 'BS', 'ACS1110', 'APPLIED CHEMISTRY', 3, 1, 0, '4', '15', '25', '60', '100'),
(3, 'ESA', 'EEA1110', 'PRINCIPLE OF ELECTRICAL ENGINEERING', 2, 1, 0, '3', '15', '25', '60', '100'),
(4, 'ESA', 'CEA1110', 'ENVIRONMENTAL STUDIES', 2, 1, 0, '3', '15', '25', '60', '100'),
(5, 'ESA', 'MEA1110', 'ENGINEERING THERMODYNAMICS', 3, 1, 0, '4', '15', '25', '60', '100'),
(6, 'BS', 'ACS1910', 'Applied Chemistry Lab', 0, 0, 3, '1.5', '60', '', '40', '100'),
(7, 'ESA', 'COA1910', 'Computer programming Lab', 0, 0, 3, '1.5', '60', '', '40', '100'),
(8, 'ESA', 'MEA1910', 'Engineering Graphics Lab', 0, 0, 3, '1.5', '60', '', '40', '100'),
(9, 'BS', 'AMS1120', 'Applied Mathematics II', 3, 1, 0, '4', '15', '25', '60', '100'),
(10, 'BS', 'APS1110', 'Applied Physics', 3, 1, 0, '4', '15', '25', '60', '100'),
(11, 'ESA', 'ELA1110', 'Principle of Electronics Engineering ', 2, 1, 0, '3', '15', '25', '60', '100'),
(12, 'ESA', 'CEA1120', 'Strength Of Materials', 2, 1, 0, '3', '15', '25', '60', '100'),
(13, 'ESA', 'MEA1120', 'Engineering Mechanics ', 2, 1, 0, '3', '15', '25', '60', '100'),
(14, 'HM', 'EZH1110', 'English', 2, 1, 0, '3', '15', '25', '60', '100'),
(15, 'BS', 'APS1910', 'Applied Physics Lab', 0, 0, 3, '1.5', '60', '', '40', '100'),
(16, 'ESA', 'MEA1910', 'Manufacturing Lab', 0, 0, 3, '1.5', '60', '', '40', '100');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `passwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `uname` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_record`
--
ALTER TABLE `placement_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrolment_no` (`enrolment_no`),
  ADD UNIQUE KEY `r_no` (`faculty_no`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ug_curriculum_cobt`
--
ALTER TABLE `ug_curriculum_cobt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `placement_record`
--
ALTER TABLE `placement_record`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ug_curriculum_cobt`
--
ALTER TABLE `ug_curriculum_cobt`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
