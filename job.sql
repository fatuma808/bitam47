-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 02:24 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc`
--
CREATE DATABASE IF NOT EXISTS `abc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abc`;

-- --------------------------------------------------------

--
-- Table structure for table `alph`
--

CREATE TABLE `alph` (
  `cba` int(11) NOT NULL,
  `bac` int(11) NOT NULL,
  `cab` int(11) NOT NULL,
  `abc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alph`
--
ALTER TABLE `alph`
  ADD PRIMARY KEY (`cba`),
  ADD UNIQUE KEY `bac` (`bac`),
  ADD KEY `cab` (`cab`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alph`
--
ALTER TABLE `alph`
  MODIFY `cba` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `campus1`
--
CREATE DATABASE IF NOT EXISTS `campus1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `campus1`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Role` varchar(20) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `username`, `password`, `Role`) VALUES
(1, 'amina', '76af7efae0d034d1e3335ed1b90f24b6cadf2bf1', 'Admin'),
(2, 'aminat', '8cb2237d0679ca88db6464eac60da96345513964', 'Admin'),
(3, 'aminat', '12345', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compID` varchar(30) NOT NULL,
  `compName` varchar(50) NOT NULL,
  `compAddress` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `contactNo` int(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Company',
  `Status` varchar(11) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compID`, `compName`, `compAddress`, `Email`, `contactNo`, `username`, `password`, `Role`, `Status`) VALUES
('c001', 'BPRA', 'Mazizini', 'bpraznz2018@gmail.com', 776543909, 'bpraznz', 'b43f65114a85f96e01934ad6e9854bf7b4f02a6b', 'Company', 'Active'),
('c002', 'NHIF', 'Dar-es-salam', 'nhif06@gmail.com', 625087809, 'nhif', '78367f1f8dfb5bd5fd113fd1fe990f28d390663b', 'Company', 'Pending'),
('COMP005', 'REZA', 'michenzani', 'reza@gmail.com', 2147483647, 'reza', '8cb2237d0679ca88db6464eac60da96345513964', 'Company', 'Pending'),
('suza11', 'suza', 'tunguu', 'sz@gmail.com', 2147483647, 'suzaa', '8cb2237d0679ca88db6464eac60da96345513964', 'Company', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobID` varchar(50) NOT NULL,
  `compID` varchar(50) NOT NULL,
  `jobName` varchar(50) NOT NULL,
  `jobSalary` int(30) NOT NULL,
  `R_skills` varchar(50) NOT NULL,
  `job_category` varchar(50) NOT NULL,
  `job_qualification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobID`, `compID`, `jobName`, `jobSalary`, `R_skills`, `job_category`, `job_qualification`) VALUES
('j001', 'c001', 'IN MANAGER', 1500000, '', 'Information Technology', ''),
('j002', 'c002', 'Secretary', 800000, '', 'HUMAN RESOURCE', '');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `QID` int(11) NOT NULL,
  `stID` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `P_Field` varchar(50) NOT NULL,
  `Result` varchar(50) NOT NULL,
  `CV` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`QID`, `stID`, `level`, `skills`, `P_Field`, `Result`, `CV`) VALUES
(1, 1, 'Diploma', 'PC Maintenance', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stdjob`
--

CREATE TABLE `stdjob` (
  `stID` int(11) NOT NULL,
  `jobID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stID` int(11) NOT NULL,
  `RegNo` varchar(35) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `sAddress` varchar(50) NOT NULL,
  `sColgName` varchar(50) NOT NULL,
  `sContNo` int(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stID`, `RegNo`, `sName`, `sAddress`, `sColgName`, `sContNo`, `Email`, `username`, `password`, `Role`) VALUES
(1, '', 'Asha Kassim Hamad', 'Mwera', 'SUZA', 774393877, '', 'asha', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Student'),
(2, '', 'Hajji Ali Haji', 'Mwera', 'Zanzibar University', 6238765, '', 'haji', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Student'),
(3, 'Bitam/4/16/178/Tz', 'Is-hak Ameir Keis', 'Kwerekwe', 'ZIFA', 719074443, 'keis19@hotmail.com', 'stoneface', 'sha1(A12345)', 'Student'),
(4, 'BITAM/6/18/005/TZ', 'amina', 'melinne', 'suza', 9876543, 'aminat@gmail.com', 'aminaa', '12345', 'Student'),
(5, 'bitam', 'tamali', 'melinne', 'suza', 67982384, 'tamali@gmali.com', 'tamlit', '348162101fc6f7e624681b7400b085eeac6df7bd', 'Student'),
(6, 'bitam', 'Fatma', 'melinne', 'suza', 83479832, 'tuma@gmali.com', 'tuma', '8cb2237d0679ca88db6464eac60da96345513964', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compID`),
  ADD UNIQUE KEY `compName` (`compName`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobID`),
  ADD UNIQUE KEY `compID` (`compID`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`QID`),
  ADD UNIQUE KEY `stID` (`stID`);

--
-- Indexes for table `stdjob`
--
ALTER TABLE `stdjob`
  ADD PRIMARY KEY (`stID`,`jobID`),
  ADD KEY `jobID` (`jobID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `RegNo` (`RegNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `QID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`compID`) REFERENCES `company` (`compID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`stID`) REFERENCES `student` (`stID`);

--
-- Constraints for table `stdjob`
--
ALTER TABLE `stdjob`
  ADD CONSTRAINT `stdjob_ibfk_1` FOREIGN KEY (`stID`) REFERENCES `student` (`stID`),
  ADD CONSTRAINT `stdjob_ibfk_2` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`);
--
-- Database: `form`
--
CREATE DATABASE IF NOT EXISTS `form` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `form`;

-- --------------------------------------------------------

--
-- Table structure for table `validation`
--

CREATE TABLE `validation` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(30) NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `Bdate` date NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validation`
--

INSERT INTO `validation` (`ID`, `Name`, `Password`, `Email`, `Phone`, `Sex`, `Bdate`, `Language`, `Address`) VALUES
(1, 'Amina Suleiman Tamali', '12345', 'ammy@gmali.com', 8887654, '', '1995-08-02', '', 'Fuoni'),
(2, 'Tamali', '12345', 'tamali@gmali.com', 8765432, '', '2020-08-04', '', 'Melinne'),
(3, 'Amina ', '12345', 'ammy@gmali.com', 8887654, '', '1995-08-02', '', 'Fuoni'),
(4, 'Masoud', '543210', 'hamad@gmali.com', 987654, '', '1996-09-01', '', 'Tunguu'),
(5, 'Fatma', '12345678', 'tuma@gmali.com', 9812345, '', '1995-09-07', '', 'Jumbi'),
(6, 'REZA', '123409876', 'reza@gmali.com', 7765432, '', '1995-08-26', '', 'kwerekwe'),
(7, 'tamali', '8347777', 'tamali@gmali.com', 98776, '', '2020-08-04', '', 'lkjjj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `validation`
--
ALTER TABLE `validation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `validation`
--
ALTER TABLE `validation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `form1`
--
CREATE DATABASE IF NOT EXISTS `form1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `form1`;

-- --------------------------------------------------------

--
-- Table structure for table `validation`
--

CREATE TABLE `validation` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` int(30) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validation`
--

INSERT INTO `validation` (`ID`, `Name`, `Password`, `Email`, `Phone`, `Sex`, `Bdate`, `Language`, `Address`, `Role`) VALUES
(1, 'jhdjf', 'hrfuiyre', 'asyat@gmail.com', 457892222, 'Female', '2020-08-03', 'hgewygfew', 'yhgeuygew', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `validation`
--
ALTER TABLE `validation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `validation`
--
ALTER TABLE `validation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `job`
--
CREATE DATABASE IF NOT EXISTS `job` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `job`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Username`, `Password`, `Role`) VALUES
(1, 'aminat', '12345678', 'Admin'),
(2, 'tuma', '8cb2237d0679ca88db6464eac60da96345513964', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compID` int(11) NOT NULL,
  `compNumb` varchar(50) NOT NULL,
  `compName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContNo` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `File` varchar(1000) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Company',
  `Status` varchar(50) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compID`, `compNumb`, `compName`, `Address`, `Email`, `ContNo`, `Username`, `Password`, `File`, `Role`, `Status`) VALUES
(3, 'COMP005', 'ZRB', 'mazizini', 'zrb@gmail.com', 887766554, 'zrb11', '12345', 'C:\\Users\\DREAM_LADY\\Documents\\pt_Print_PDF.pdf', 'Company', 'Active'),
(4, 'COMP005', 'SUZA', 'TUNGUU', 'suza@mail.com', 9876543, 'suza', '12345', 'BITAM_005.pdf', 'Company', 'Active'),
(5, 'c006', 'Zssf', 'michenzani', 'zffs@gmail.com', 998877665, 'zssf1', '12345', 'MC.PNG', 'Company', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobID` int(11) NOT NULL,
  `jobNumb` varchar(50) NOT NULL,
  `compID` int(11) NOT NULL,
  `JobName` varchar(50) NOT NULL,
  `JobSalary` varchar(50) NOT NULL,
  `Skill` varchar(500) NOT NULL,
  `Qualification` varchar(500) NOT NULL,
  `jobCategory` varchar(500) NOT NULL,
  `Result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobID`, `jobNumb`, `compID`, `JobName`, `JobSalary`, `Skill`, `Qualification`, `jobCategory`, `Result`) VALUES
(1, 'J001', 3, 'IT', '$1000', 'kdjfvndfjngkjfndekjg\r\ndkfmgkvdsfhbkjr\r\ndfgnrfnkgnr', 'jdjhgvkreghju\r\nsgvrejitguerjg\r\njndfgjnd,jkgh', 'IT', ''),
(3, 'J003', 3, 'account', '784363', 'jdksgjdjhsgh', 'Managing and Using Information Systems, A Strategic Approach 6th Edition.pdf', 'ACCOUNTING', ''),
(4, 'J004', 3, 'IT', '784363', 'jdksgjdjhsgh\r\nkmfbdfhjd,rf', 'Managing and Using Information Systems, A Strategic Approach 6th Edition.pdf', 'INFORMATION TECHNOLOGY', ''),
(5, 'J006', 3, 'IT', '784363', 'jdksgjdjhsgh\r\nkmfbdfhjd,rf', 'Managing and Using Information Systems, A Strategic Approach 6th Edition.pdf', 'ENGINEER', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `SeekerID` int(11) NOT NULL,
  `jobID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `PhoneNo` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'Participant'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`SeekerID`, `jobID`, `Name`, `Gender`, `DOB`, `Address`, `PhoneNo`, `Email`, `Username`, `Password`, `Role`) VALUES
(5, 0, 'Yunus', 'M', '1995-03-15', 'Kewerekwe', 77655432, 'mshimba@gmali.com', 'Mshimba', '8cb2237d0679ca88db6464eac60da96345513964', 'Participant'),
(6, 0, 'Fatma', 'F', '1995-09-02', 'Fuoni', 874589783, 'tuma@gmali.com', 'fety', '12345', 'Participant'),
(7, 0, 'Amina Suleiman Tamali', 'F', '1996-08-13', 'Fuoni', 234570000, 'ammy@gmali.com', 'amina', '12345', 'Participant'),
(8, 0, 'Zainab', 'F', '1990-09-03', 'Fuoni', 77644321, 'zai@gmail.com', 'zai', '12345', 'Participant'),
(9, 0, 'Tamali', 'M', '2020-08-18', 'Kewerekwe', 2345700, 'tamali@gmali.com', 'tamali', '12345678', 'Participant'),
(10, 0, 'Juma', 'M', '1998-07-12', 'michenzani', 2345678, 'juma@gmali.com', 'juma', '12345', 'Participant'),
(11, 0, 'Zamzam', 'F', '2020-08-20', 'Fuoni', 783623753, 'zam@gmail.com', 'zam', '12345', 'Participant'),
(12, 0, 'Utosi', 'M', '2020-09-03', 'Nungwi', 776543345, 'uto@gmail.com', 'utosi', '12345', 'Participant'),
(13, 0, 'Habiba', 'F', '1887-09-02', 'JUMBI', 23457098, 'habiba@gmali.com', 'habiba', '12345', 'Participant');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `QualifID` int(11) NOT NULL,
  `SeekerID` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `Skill` varchar(500) NOT NULL,
  `CV` varchar(500) NOT NULL,
  `Category` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`QualifID`, `SeekerID`, `level`, `Skill`, `CV`, `Category`) VALUES
(2, 7, 'DEGREE', 'sadfasdfa', 'Assigment1.docx', 'INFORMATION TECHNOLOGY'),
(3, 7, 'DEGREE', 'hjkjhhuhj\r\nnbmjhjhjhbmjn', 'Assigment1.docx', 'HUMAN RESOURCE'),
(4, 8, 'Diploma', 'Computer Application\r\nAdobe Courses', 'Assigment1.docx', 'INFORMATION TECHNOLOGY'),
(5, 13, 'DEGREE', 'Ledges', 'BITAM_005.pdf', 'ACCOUNTING');

-- --------------------------------------------------------

--
-- Table structure for table `seek_jod`
--

CREATE TABLE `seek_jod` (
  `SeekerID` int(11) NOT NULL,
  `jobID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seek_jod`
--

INSERT INTO `seek_jod` (`SeekerID`, `jobID`) VALUES
(7, 1),
(7, 3),
(8, 4),
(13, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compID`),
  ADD UNIQUE KEY `Email` (`Email`,`Username`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobID`),
  ADD KEY `compID` (`compID`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`SeekerID`),
  ADD UNIQUE KEY `Email` (`Email`,`Username`),
  ADD KEY `jobID` (`jobID`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`QualifID`),
  ADD KEY `SeekerID` (`SeekerID`);

--
-- Indexes for table `seek_jod`
--
ALTER TABLE `seek_jod`
  ADD KEY `SeekerID` (`SeekerID`),
  ADD KEY `jobID` (`jobID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `compID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `SeekerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `QualifID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`compID`) REFERENCES `company` (`compID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`SeekerID`) REFERENCES `job_seeker` (`SeekerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seek_jod`
--
ALTER TABLE `seek_jod`
  ADD CONSTRAINT `seek_jod_ibfk_1` FOREIGN KEY (`SeekerID`) REFERENCES `job_seeker` (`SeekerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seek_jod_ibfk_2` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data for table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('abc', 'cba', 'int', '11', '', 0, 'auto_increment,', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'job', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"table_structure[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"table_data[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'job1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"table_structure[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"table_data[]\":[\"admin\",\"company\",\"job\",\"job_seeker\",\"qualification\",\"seek_jod\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'jb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"abc\",\"campus1\",\"form\",\"form1\",\"job\",\"phpmyadmin\",\"test\",\"test1\",\"vac\",\"zbs\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('campus1', 2, 'campus1'),
('job', 3, 'Job'),
('job', 4, 'Job1');

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"job\",\"table\":\"job_seeker\"},{\"db\":\"job\",\"table\":\"company\"},{\"db\":\"job\",\"table\":\"admin\"},{\"db\":\"job\",\"table\":\"qualification\"},{\"db\":\"form1\",\"table\":\"validation\"},{\"db\":\"job\",\"table\":\"job\"},{\"db\":\"job\",\"table\":\"seek_jod\"},{\"db\":\"form\",\"table\":\"validation\"},{\"db\":\"test1\",\"table\":\"staff\"},{\"db\":\"test1\",\"table\":\"login\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('campus1', 'admin', 2, 337, 302),
('campus1', 'company', 2, 594, 277),
('campus1', 'job', 2, 526, 25),
('campus1', 'qualification', 2, 89, 297),
('campus1', 'stdjob', 2, 332, 50),
('campus1', 'student', 2, 95, 15),
('job', 'admin', 3, 368, 216),
('job', 'admin', 4, 400, 210),
('job', 'company', 3, 645, 327),
('job', 'company', 4, 683, 273),
('job', 'job', 3, 647, 85),
('job', 'job', 4, 752, 68),
('job', 'job_seeker', 3, 115, 71),
('job', 'job_seeker', 4, 99, 52),
('job', 'qualification', 3, 141, 365),
('job', 'qualification', 4, 123, 356),
('job', 'seek_jod', 4, 423, 78);

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'job', 'job_seeker', '{\"sorted_col\":\"`SeekerID` ASC\"}', '2020-08-14 03:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-07-11 21:29:00', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test1`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Username`, `Password`) VALUES
(1, 'amina', '12345'),
(2, 'tamali', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `stID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`stID`, `Name`, `Address`, `Email`, `Username`, `Password`) VALUES
(1, 'Fatma', 'Fuoni', 'tuma@gmail.com', 'tuma', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`stID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `stID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `vac`
--
CREATE DATABASE IF NOT EXISTS `vac` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vac`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptID` varchar(30) NOT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptID`, `Email`) VALUES
('COMP001', 'comp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PID` varchar(30) NOT NULL,
  `Title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `stID` varchar(30) NOT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `Mname` varchar(30) DEFAULT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `Phone` int(10) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `DeptID` varchar(30) DEFAULT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`stID`, `Fname`, `Mname`, `Lname`, `DoB`, `Email`, `gender`, `Phone`, `Status`, `DeptID`, `password`) VALUES
('ST0001', 'MOHAMMED', 'MSHIMBA', 'SEIF', '1999-10-16', 'mshimba@gmail.com', 'm', 77654342, 'inspector', NULL, '8cb2237d0679ca88db6464eac60da96345513964'),
('ST0002', 'AMINA', 'SULEIMAN', 'TAMALI', '1990-10-16', 'tamali@gmail.com', 'f', 77654399, 'Admin', NULL, '8cb2237d0679ca88db6464eac60da96345513964'),
('ST003', 'ASYA', 'SULEIMAN', 'TAMALI', '2020-07-27', 'asyat@gmail.com', 'f', 77334556, 'Admin', 'COMP001', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `staff_position`
--

CREATE TABLE `staff_position` (
  `PID` varchar(30) DEFAULT NULL,
  `stID` varchar(30) DEFAULT NULL,
  `S_date` date DEFAULT NULL,
  `E_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_vacation`
--

CREATE TABLE `staff_vacation` (
  `vacID` varchar(30) DEFAULT NULL,
  `stID` varchar(30) DEFAULT NULL,
  `S_date` date DEFAULT NULL,
  `E_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `vacID` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `staff_position`
--
ALTER TABLE `staff_position`
  ADD KEY `stID` (`stID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `staff_vacation`
--
ALTER TABLE `staff_vacation`
  ADD KEY `vacID` (`vacID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`vacID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`) ON DELETE CASCADE;

--
-- Constraints for table `staff_position`
--
ALTER TABLE `staff_position`
  ADD CONSTRAINT `staff_position_ibfk_1` FOREIGN KEY (`stID`) REFERENCES `staff` (`stID`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_position_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `position` (`PID`) ON DELETE CASCADE;

--
-- Constraints for table `staff_vacation`
--
ALTER TABLE `staff_vacation`
  ADD CONSTRAINT `staff_vacation_ibfk_1` FOREIGN KEY (`vacID`) REFERENCES `vacation` (`vacID`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_vacation_ibfk_2` FOREIGN KEY (`stID`) REFERENCES `staff` (`stID`) ON DELETE CASCADE;
--
-- Database: `zbs`
--
CREATE DATABASE IF NOT EXISTS `zbs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zbs`;

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `AnalysisID` int(11) NOT NULL,
  `SCode` varchar(30) DEFAULT NULL,
  `Finding` varchar(100) NOT NULL,
  `DateReported` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis`
--

INSERT INTO `analysis` (`AnalysisID`, `SCode`, `Finding`, `DateReported`) VALUES
(3, 'BT0001', 'Analysis/bt0001.docx', '2019-09-13'),
(4, 'ZBS-Samp2234', 'Analysis/zbs-samp2234.docx', '2019-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CCode` char(9) NOT NULL,
  `CName` varchar(100) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` char(16) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CCode`, `CName`, `Address`, `Phone`, `Email`) VALUES
('ZBS-C0001', 'Muz', 'Fuoni', '+255 767 365 232', 'muz@email.com'),
('ZBS-C0002', 'Haasdfasda', 'Adfasdfa', '+255 234 234 234', 'omiad@asfa.asdaa'),
('ZBS-C0003', 'Kiboko Company Limited', 'Kilimani', '+255 767 457 377', 'kiboko@gmail.com'),
('ZBS-C0004', 'Omi sale', 'Bububu', '+255 324 234 342', 'mimi.mimi@asdfasdf.com');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `LabID` varchar(30) NOT NULL,
  `LabName` varchar(50) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Sup_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`LabID`, `LabName`, `Location`, `Sup_ID`) VALUES
('ZLab01', 'Food lab', 'Amani', 'ZBS0002'),
('ZLab02', 'Electronics lab', 'Amani', 'ZBS0001'),
('ZLab03', 'Petroleum lab', 'Amani', 'ZBS0007');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `SCode` varchar(30) NOT NULL,
  `SName` varchar(30) DEFAULT NULL,
  `Brand` varchar(30) DEFAULT NULL,
  `Batch` varchar(30) DEFAULT NULL,
  `ProdDate` date DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  `SType` varchar(20) NOT NULL,
  `Appearance` varchar(100) DEFAULT NULL,
  `Manufacture` varchar(100) DEFAULT NULL,
  `CCode` char(9) DEFAULT NULL,
  `RecStaffID` varchar(30) DEFAULT NULL,
  `RQuantity` int(10) DEFAULT NULL,
  `RecDate` date DEFAULT NULL,
  `CustType` varchar(20) DEFAULT NULL,
  `SampStaffID` varchar(30) DEFAULT NULL,
  `SampQuantity` int(10) DEFAULT NULL,
  `SampDate` date DEFAULT NULL,
  `SubmTo` varchar(30) DEFAULT NULL,
  `SubmQuantity` int(10) DEFAULT NULL,
  `SubmDate` date DEFAULT NULL,
  `AnalyzerID` varchar(30) DEFAULT NULL,
  `ResultDate` date DEFAULT NULL,
  `Remark` varchar(10) DEFAULT NULL,
  `Approval` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`SCode`, `SName`, `Brand`, `Batch`, `ProdDate`, `ExpDate`, `SType`, `Appearance`, `Manufacture`, `CCode`, `RecStaffID`, `RQuantity`, `RecDate`, `CustType`, `SampStaffID`, `SampQuantity`, `SampDate`, `SubmTo`, `SubmQuantity`, `SubmDate`, `AnalyzerID`, `ResultDate`, `Remark`, `Approval`) VALUES
('BT0001', 'Bl battery', 'Excellent AfriTust', 'BL-10AT', '2018-08-06', '2022-08-06', 'Electronic', NULL, NULL, 'ZBS-C0001', 'ZBS0003', 3, '2019-09-05', 'Inspection', 'ZBS0004', 3, '2019-09-11', 'ZLab02', NULL, '2019-09-12', 'ZBS0005', '2019-09-13', 'Pass', 'Approved'),
('kc00001', 'Kiboko cement', 'kb gw30', 'cm123', '2017-08-10', '2020-10-12', 'Construction', 'Good Condition', 'Kiboko Constr', 'ZBS-C0003', 'ZBS0004', 4, '2019-09-11', 'Certification', 'ZBS0004', 4, '2019-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ZBS-Samp2234', 'Ag light bulb', 'AG 0424', 'G32423 2352', '2018-08-14', '2021-08-14', 'Electronic', 'Good Condition', 'AG Comp', 'ZBS-C0004', 'ZBS0003', 5, '2019-09-15', 'Inspection', 'ZBS0004', 5, '2019-09-15', 'ZLab02', NULL, '2019-09-15', 'ZBS0005', '2019-09-15', 'Pass', NULL),
('zc00021', 'Sadfasdf', 'basdf', 'adsdfa', '2017-09-05', '2023-11-08', 'Food', NULL, NULL, 'ZBS-C0002', 'ZBS0003', 3, '2019-09-06', 'Inspection', 'ZBS0004', 3, '2019-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SID` varchar(30) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Title` varchar(5) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` char(1) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Phone` char(16) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(300) NOT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `LabID` varchar(30) DEFAULT NULL,
  `Signature` varchar(30) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `Photo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SID`, `FName`, `MName`, `LName`, `Title`, `DOB`, `Gender`, `Address`, `Phone`, `Email`, `Password`, `Status`, `LabID`, `Signature`, `LastLogin`, `Photo`) VALUES
('ZBS0001', 'Omar', 'Saleh', 'Suleiman', 'Dr', '1970-01-01', 'M', 'Kijangwani', '+255 776 538 771', 'omisal95@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Supervisor', NULL, NULL, '2019-09-15 23:17:16', 'Profiles/ZBS0001.JPG'),
('ZBS0002', 'One', 'Two', 'Three', 'Ms', '2018-08-03', 'F', 'Four', '+255 111 222 333', 'onetwo@three.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Supervisor', NULL, NULL, NULL, NULL),
('ZBS0003', 'mimi', 'ni', 'mimi', 'Mr', '2018-09-03', 'M', 'Hahahaha', '+255 111 111 111', 'haha@email.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Inspector', NULL, NULL, '2019-09-15 18:28:27', NULL),
('ZBS0004', 'La', 'Lala', 'Lalala', 'Ms', '2017-10-03', 'F', 'Lalalala', '+255 222 222 222', 'lalala@email.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Sample Reciever', NULL, NULL, '2019-09-15 21:59:09', NULL),
('ZBS0005', 'Mtu', 'Baba', 'Babu', 'Dr', '2019-09-03', 'M', 'Kwao', '+255 666 666 666', 'mtu@gmai.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Lab Analyser', 'ZLab02', NULL, '2019-09-15 23:16:23', NULL),
('ZBS0006', 'mimi', 'ni', 'Head', 'Mr', '2019-09-03', 'M', 'kwenye Kiti', '+255 666 666 666', 'mimi.head@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Head of Labs', NULL, NULL, '2019-09-15 23:19:55', NULL),
('ZBS0007', 'Omi', 'Sal', 'Sul', 'Mr', '2018-08-16', 'M', 'Kjngwn', '+255 012 312 312', 'omisal@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Supervisor', NULL, NULL, NULL, NULL),
('ZBS008', 'AMY', 'OMMY', 'ALLY', 'Dr', '2020-07-27', 'F', 'magomen', '9887654', 'amy@gmail.com', '12345', 'Admin', 'ZLab01', 'a.o.a', '2021-07-23 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysis`
--
ALTER TABLE `analysis`
  ADD PRIMARY KEY (`AnalysisID`),
  ADD KEY `SCode` (`SCode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CCode`),
  ADD UNIQUE KEY `email` (`Email`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`LabID`),
  ADD KEY `sup_ID` (`Sup_ID`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`SCode`),
  ADD UNIQUE KEY `brand` (`Brand`),
  ADD UNIQUE KEY `banch_numb` (`Batch`),
  ADD KEY `recstaffID` (`RecStaffID`),
  ADD KEY `sampstaffID` (`SampStaffID`),
  ADD KEY `AnalyzerID` (`AnalyzerID`),
  ADD KEY `c_code` (`CCode`),
  ADD KEY `SubmTo` (`SubmTo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `LabID` (`LabID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analysis`
--
ALTER TABLE `analysis`
  MODIFY `AnalysisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `analysis`
--
ALTER TABLE `analysis`
  ADD CONSTRAINT `analysis_ibfk_1` FOREIGN KEY (`SCode`) REFERENCES `sample` (`SCode`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `lab_ibfk_1` FOREIGN KEY (`Sup_ID`) REFERENCES `staff` (`SID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sample`
--
ALTER TABLE `sample`
  ADD CONSTRAINT `sample_ibfk_1` FOREIGN KEY (`RecStaffID`) REFERENCES `staff` (`SID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_ibfk_2` FOREIGN KEY (`SampStaffID`) REFERENCES `staff` (`SID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_ibfk_3` FOREIGN KEY (`AnalyzerID`) REFERENCES `staff` (`SID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_ibfk_4` FOREIGN KEY (`CCode`) REFERENCES `customer` (`CCode`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `sample_ibfk_5` FOREIGN KEY (`SubmTo`) REFERENCES `lab` (`LabID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`LabID`) REFERENCES `lab` (`LabID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
