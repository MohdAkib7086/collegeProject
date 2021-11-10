-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 09:31 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-06-11 12:26:07');
-- CREATE TABLE `countries` (
--   `countries_id` int(11) NOT NULL,
--   `countries_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postannouncements`
--

-- CREATE TABLE `postannouncements` (
--   `PostAnnouncementID` bigint(20) NOT NULL,
--   `Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
--   `Description` text COLLATE utf8_unicode_ci NOT NULL,
--   `SendAll` tinyint(1) NOT NULL DEFAULT '0',
--   `Faculty` tinyint(1) NOT NULL DEFAULT '0',
--   `Dean` tinyint(1) NOT NULL,
--   `Publisher` tinyint(1) NOT NULL DEFAULT '0',
--   `Website` tinyint(1) NOT NULL DEFAULT '0',
--   `AnnounceDate` date NOT NULL DEFAULT '0000-00-00',
--   `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------


--- plcement record -----------------------
CREATE TABLE `PlacementRecord` (
  `id` int(11) NOT NULL,
  `sl_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `faculty_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enrolment_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
 `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `branch` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `year` int(11) DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `on/offcampus` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

----
-- table for `club and societies`
CREATE TABLE `clubAndSocities`(
 `id` int(15) NOT NULL,
  `clubName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `FacultyAdvisor` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purpose` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
)  ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `staff_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL DEFAULT '0000-00-00',
  `year_of_join` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TotalExperience` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AreaOfInterest` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NumberOfPublications` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NumberOfPapers` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeState` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficePin` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeTelephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeMobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceState` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidencePin` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceTelephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceMobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentState` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentPin` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentTelephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentMobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OfficeCountry` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ResidenceCountry` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PermanentCountry` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
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
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_awards-and-honors`
--

CREATE TABLE `tblproject_awards-and-honors` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_conference-papers`
--

CREATE TABLE `tblproject_conference-papers` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `ProjectID` bigint(50) NOT NULL DEFAULT '0',
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
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Designation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_workshop-seminar-attended`
--

CREATE TABLE `tblproject_workshop-seminar-attended` (
  `ID` bigint(20) NOT NULL,
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `StudentID` bigint(20) NOT NULL DEFAULT '0',
  `Degree` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `University` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RollNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Marks` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_administrative-posts-positions-held`
--

CREATE TABLE `tblteacher_administrative-posts-positions-held` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_awards-and-honors`
--

CREATE TABLE `tblteacher_awards-and-honors` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_conference-papers`
--

CREATE TABLE `tblteacher_conference-papers` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(50) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_other-teaching-research-administrative-activities`
--

CREATE TABLE `tblteacher_other-teaching-research-administrative-activities` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `Details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher_patents`
--

CREATE TABLE `tblteacher_patents` (
  `ID` bigint(20) NOT NULL,
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `ProjectID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
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
  `EmployeeID` bigint(20) NOT NULL DEFAULT '0',
  `NameOfWorkshopSeminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Organizing_Body` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `passwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `uname` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Indexes for dumped tables
--

-- --
-- -- Indexes for table `countries`
-- --
-- ALTER TABLE `countries`
--   ADD PRIMARY KEY (`countries_id`),
--   ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
--Index for table `placementRecord`
--
ALTER TABLE `PlacementRecord`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrolment_no` (`enrolment_no`),
  ADD UNIQUE KEY `r_no` (`faculty_no`);

  --
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);


--
ALTER TABLE `clubAndSocities`
  ADD PRIMARY KEY (`id`);


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
-- Indexes for table `students_old`
--
ALTER TABLE `students_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrolment_no` (`enrolment_no`),
  ADD UNIQUE KEY `r_no` (`faculty_no`),
  ADD UNIQUE KEY `sl_no` (`sl_no`);

--
-- Indexes for table `tblproject_any-other-information`
--
ALTER TABLE `tblproject_any-other-information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_awards-and-honors`
--
ALTER TABLE `tblproject_awards-and-honors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_books-chapters-technical-papers`
--
ALTER TABLE `tblproject_books-chapters-technical-papers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_conference-papers`
--
ALTER TABLE `tblproject_conference-papers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_journal-publications`
--
ALTER TABLE `tblproject_journal-publications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_patents`
--
ALTER TABLE `tblproject_patents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_project-staff`
--
ALTER TABLE `tblproject_project-staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_workshop-seminar-attended`
--
ALTER TABLE `tblproject_workshop-seminar-attended`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproject_workshop-seminar-conference-organized`
--
ALTER TABLE `tblproject_workshop-seminar-conference-organized`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudentqualification`
--
ALTER TABLE `tblstudentqualification`
  ADD PRIMARY KEY (`QID`);

--
-- Indexes for table `tblteacher_administrative-posts-positions-held`
--
ALTER TABLE `tblteacher_administrative-posts-positions-held`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_any-other-information`
--
ALTER TABLE `tblteacher_any-other-information`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_awards-and-honors`
--
ALTER TABLE `tblteacher_awards-and-honors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_books-chapters-technical-papers`
--
ALTER TABLE `tblteacher_books-chapters-technical-papers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_conference-papers`
--
ALTER TABLE `tblteacher_conference-papers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_educational-qualifications`
--
ALTER TABLE `tblteacher_educational-qualifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_examinership-supervision-of-dissertation-projects-phd`
--
ALTER TABLE `tblteacher_examinership-supervision-of-dissertation-projects-phd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_funded-projects`
--
ALTER TABLE `tblteacher_funded-projects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_journal-publications`
--
ALTER TABLE `tblteacher_journal-publications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_membership-of-learned-professional-technical-bodies`
--
ALTER TABLE `tblteacher_membership-of-learned-professional-technical-bodies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_other-teaching-research-administrative-activities`
--
ALTER TABLE `tblteacher_other-teaching-research-administrative-activities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_patents`
--
ALTER TABLE `tblteacher_patents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_project-submitted-for-funding`
--
ALTER TABLE `tblteacher_project-submitted-for-funding`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_work-experience`
--
ALTER TABLE `tblteacher_work-experience`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_workshop-seminar-attended`
--
ALTER TABLE `tblteacher_workshop-seminar-attended`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher_workshop-seminar-conference-organized`
--
ALTER TABLE `tblteacher_workshop-seminar-conference-organized`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `postannouncements`
--
ALTER TABLE `postannouncements`
  MODIFY `PostAnnouncementID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20731;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1220;
--
-- AUTO_INCREMENT for table `students_old`
--
ALTER TABLE `students_old`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblproject_any-other-information`
--
ALTER TABLE `tblproject_any-other-information`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_awards-and-honors`
--
ALTER TABLE `tblproject_awards-and-honors`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_books-chapters-technical-papers`
--
ALTER TABLE `tblproject_books-chapters-technical-papers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_conference-papers`
--
ALTER TABLE `tblproject_conference-papers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_journal-publications`
--
ALTER TABLE `tblproject_journal-publications`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblproject_patents`
--
ALTER TABLE `tblproject_patents`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_project-staff`
--
ALTER TABLE `tblproject_project-staff`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblproject_workshop-seminar-attended`
--
ALTER TABLE `tblproject_workshop-seminar-attended`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblproject_workshop-seminar-conference-organized`
--
ALTER TABLE `tblproject_workshop-seminar-conference-organized`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblstudentqualification`
--
ALTER TABLE `tblstudentqualification`
  MODIFY `QID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblteacher_administrative-posts-positions-held`
--
ALTER TABLE `tblteacher_administrative-posts-positions-held`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblteacher_any-other-information`
--
ALTER TABLE `tblteacher_any-other-information`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblteacher_awards-and-honors`
--
ALTER TABLE `tblteacher_awards-and-honors`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblteacher_books-chapters-technical-papers`
--
ALTER TABLE `tblteacher_books-chapters-technical-papers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblteacher_conference-papers`
--
ALTER TABLE `tblteacher_conference-papers`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblteacher_educational-qualifications`
--
ALTER TABLE `tblteacher_educational-qualifications`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tblteacher_examinership-supervision-of-dissertation-projects-phd`
--
ALTER TABLE `tblteacher_examinership-supervision-of-dissertation-projects-phd`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblteacher_funded-projects`
--
ALTER TABLE `tblteacher_funded-projects`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblteacher_journal-publications`
--
ALTER TABLE `tblteacher_journal-publications`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblteacher_membership-of-learned-professional-technical-bodies`
--
ALTER TABLE `tblteacher_membership-of-learned-professional-technical-bodies`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblteacher_other-teaching-research-administrative-activities`
--
ALTER TABLE `tblteacher_other-teaching-research-administrative-activities`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblteacher_patents`
--
ALTER TABLE `tblteacher_patents`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblteacher_project-submitted-for-funding`
--
ALTER TABLE `tblteacher_project-submitted-for-funding`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblteacher_work-experience`
--
ALTER TABLE `tblteacher_work-experience`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblteacher_workshop-seminar-attended`
--
ALTER TABLE `tblteacher_workshop-seminar-attended`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblteacher_workshop-seminar-conference-organized`
--
ALTER TABLE `tblteacher_workshop-seminar-conference-organized`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
