-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 04:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient`
--

CREATE TABLE `dischargepatient` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Disease` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cnic` varchar(100) NOT NULL,
  `drname` varchar(100) NOT NULL,
  `aday` int(100) NOT NULL,
  `amonth` varchar(100) NOT NULL,
  `ayear` int(100) NOT NULL,
  `dday` int(100) NOT NULL,
  `dmonth` varchar(100) NOT NULL,
  `dyear` int(100) NOT NULL,
  `totalday` int(100) NOT NULL,
  `roombill` double NOT NULL,
  `medbill` double NOT NULL,
  `totalbill` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dischargepatient`
--

INSERT INTO `dischargepatient` (`id`, `name`, `Disease`, `gender`, `cnic`, `drname`, `aday`, `amonth`, `ayear`, `dday`, `dmonth`, `dyear`, `totalday`, `roombill`, `medbill`, `totalbill`) VALUES
(2, 'owais', 'bukhar', 'MALE', '123', 'ali', 1, 'feb', 2022, 1, 'MARCH', 2022, 30, 15000, 5000, 20000),
(3, 'faheem', 'q', 'MALE', 'q', 'q', 1, 'JANUARY', 2022, 1, 'JANUARY', 2022, 2, 1000, 500, 1500),
(3, 'faheem', 'q', 'MALE', 'q', 'q', 1, 'JANUARY', 2022, 4, 'JANUARY', 2022, 3, 1500, 1000, 2500),
(2, 'owais', 'bukhar', 'MALE', '123', 'owias', 1, 'feb', 2022, 1, 'JANUARY', 2022, 30, 15000, 20000, 35000),
(23, 'SUMAIYA', 'CANCER', 'FEMALE', '34534534', 'SUFIYAN', 29, 'DECEMBER', 2022, 1, 'JANUARY', 2022, 3, 1500, 500, 2000),
(14, 'SAHIL', 'GUTTNO MAI DARD', 'MALE', 'NOT YET', 'SUFIYAN', 2, 'JANUARY', 2023, 5, 'APRIL', 2023, 50, 25000, 2000, 27000),
(15, 'HASSAN', 'COUGH', 'MALE', '324823489', 'HAMZA', 1, 'JANUARY', 2022, 5, 'APRIL', 2022, 10, 5000, 300, 5300),
(18, 'ZEESHAN', 'FEVER', 'MALE', '3454345345', 'ADIL', 6, 'JULY', 2022, 10, 'JULY', 2022, 4, 2000, 700, 2700),
(16, 'ALI', 'COUGH AND FEVER', 'MALE', '546565', 'OWAIS BIN PARESHAN', 17, 'MAY', 2022, 14, 'JUNE', 2022, 55, 27500, 5000, 32500),
(19, 'SHAHEER BOSS', 'CANCER', 'MALE', '2433234', 'SANIYA', 15, 'MAY', 2022, 7, 'AUGUST', 2022, 60, 30000, 500, 30500),
(22, 'ASMA', 'COUGH', 'FEMALE', '344235435', 'SUFIYAN', 31, 'OCTOBER', 2022, 25, 'NOVEMBER', 2022, 50, 25000, 4500, 29500),
(23, 'SUMAIYA', 'CANCER', 'FEMALE', '34534534', 'SUFIYAN', 29, 'DECEMBER', 2022, 16, 'DECEMBER', 2022, 40, 20000, 790, 20790),
(19, 'SHAHEER BOSS', 'CANCER', 'MALE', '2433234', 'SANIYA', 15, 'MAY', 2022, 24, 'DECEMBER', 2022, 500, 250000, 9000, 259000),
(17, 'AHSRAF', 'LUNGS CANCER', 'MALE', '54656456', 'AHMED', 23, 'APRIL', 2022, 7, 'JULY', 2022, 30, 15000, 500, 15500),
(20, 'SALEEM', 'HEADACHE', 'MALE', '345535', 'HAFEEZ', 1, 'JANUARY', 2022, 5, 'MAY', 2022, 40, 20000, 100, 20100);

-- --------------------------------------------------------

--
-- Table structure for table `doctorrecords`
--

CREATE TABLE `doctorrecords` (
  `id` int(225) NOT NULL,
  `dname` varchar(1024) NOT NULL,
  `dcnic` varchar(1024) NOT NULL,
  `dgender` varchar(50) NOT NULL,
  `dphonenumber` bigint(20) NOT NULL,
  `daddress` varchar(1024) NOT NULL,
  `dday` varchar(1024) NOT NULL,
  `dmonth` varchar(1024) NOT NULL,
  `dyear` int(50) NOT NULL,
  `dqualification` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorrecords`
--

INSERT INTO `doctorrecords` (`id`, `dname`, `dcnic`, `dgender`, `dphonenumber`, `daddress`, `dday`, `dmonth`, `dyear`, `dqualification`) VALUES
(1, 'ali', '23322', 'MALE', 2092092, 'xyz', '2', 'JANUARY', 2022, 'masters '),
(2, 'owias AMIR', '123233444', 'MALE', 99989, 'xyz', '1', 'JANUARY', 2022, 'bscs '),
(3, 'owias', '2342222', 'MALE', 9222222, 'axua', '5', 'JANUARY', 2022, 'bachelor '),
(4, 'HASEEB', '1233', 'MALE', 80909090, 'KARACHI PAKISTAN', '2', 'MARCH', 2022, 'MASTER '),
(5, 'OSAMA', '123344', 'MALE', 98666, 'KARACHI', '1', 'JANUARY', 2013, 'BACHELOR '),
(6, 'SUFI', '26626', 'MALE', 879797, 'XYZX', '1', 'JANUARY', 2013, 'BSCS '),
(7, 'SAD', '278899', 'MALE', 78989090, 'SMIU', '1', 'JANUARY', 2013, 'MS '),
(13, 'SUFIYAN', '54656565465', 'MALE', 5665545, 'KARACHI', '3', 'NOVEMBER', 2001, 'BACHELOR '),
(14, 'HAMZA', '234432435', 'MALE', 3123243542, 'LALOKHAIT, 10 NO', 'JANUARY', 'JANUARY', 1999, 'BACHELOR '),
(15, 'OWAIS BIN PARESHAN', '43254543', 'MALE', 2342342, 'KARCHI', '1', 'JANUARY', 1999, 'MATRIC PASS '),
(16, 'AHMED', '3223432', 'MALE', 23423423, 'LAHORE', '5', 'APRIL', 2003, 'MASTER '),
(17, 'ADIL', '23453243', 'MALE', 234234, 'PUNJAB', '7', 'JUNE', 2002, 'MASTER '),
(18, 'SHAROZ', '23423', 'MALE', 32234, 'ISLAMABAD', '6', 'JUNE', 2002, 'PH-D '),
(19, 'HAFEEZ', '2325890098', 'MALE', 43576765, 'DADU', '1', 'JANUARY', 1999, 'MASTER '),
(20, 'SANIYA', '097894328', 'FEMALE', 546546, 'ANDA MOR', '6', 'AUGUST', 2003, 'BACHELOR '),
(21, 'ASHWIN PATEL', '658766', 'MALE', 435656557, 'MUMBAI', '8', 'SEPTEMBER', 2000, 'PH-D '),
(22, 'JETHALAL', '6765656', 'MALE', 546766324423, 'GOKULDAM SOCIETY MUMBAI', '13', 'MARCH', 2003, 'MASTER ');

-- --------------------------------------------------------

--
-- Table structure for table `patientrecords`
--

CREATE TABLE `patientrecords` (
  `ID` int(255) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Disease` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `CNIC` varchar(15) NOT NULL,
  `DoctorName` varchar(100) NOT NULL,
  `Day` int(2) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientrecords`
--

INSERT INTO `patientrecords` (`ID`, `Name`, `Disease`, `Gender`, `CNIC`, `DoctorName`, `Day`, `Month`, `Year`) VALUES
(2, 'owais', 'bukhar', 'MALE', '123', 'owias', 1, 'feb', 2022),
(3, 'faheem', 'q', 'MALE', 'q', 'q', 1, 'JANUARY', 2022),
(5, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(6, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(7, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(8, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(9, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(10, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(11, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(12, 'ali', 'cancer', 'MALE', '1233', 'owias', 1, 'JANUARY', 2022),
(14, 'SAHIL', 'GUTTNO MAI DARD', 'MALE', 'NOT YET', 'SUFIYAN', 2, 'JANUARY', 2023),
(15, 'HASSAN', 'COUGH', 'MALE', '324823489', 'HAMZA', 1, 'JANUARY', 2022),
(16, 'ALI', 'COUGH AND FEVER', 'MALE', '546565', 'OWAIS BIN PARESHAN', 17, 'MAY', 2022),
(17, 'AHSRAF', 'LUNGS CANCER', 'MALE', '54656456', 'AHMED', 23, 'APRIL', 2022),
(18, 'ZEESHAN', 'FEVER', 'MALE', '3454345345', 'ADIL', 6, 'JULY', 2022),
(19, 'SHAHEER BOSS', 'CANCER', 'MALE', '2433234', 'SANIYA', 15, 'MAY', 2022),
(20, 'SALEEM', 'HEADACHE', 'MALE', '345535', 'HAFEEZ', 1, 'JANUARY', 2022),
(21, 'MARIYAM', 'FEVER', 'FEMALE', '23423432', 'SUFIYAN', 20, 'SEPTEMBER', 2022),
(22, 'ASMA', 'COUGH', 'FEMALE', '344235435', 'SUFIYAN', 31, 'OCTOBER', 2022),
(23, 'SUMAIYA', 'CANCER', 'FEMALE', '34534534', 'SUFIYAN', 29, 'DECEMBER', 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorrecords`
--
ALTER TABLE `doctorrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientrecords`
--
ALTER TABLE `patientrecords`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorrecords`
--
ALTER TABLE `doctorrecords`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `patientrecords`
--
ALTER TABLE `patientrecords`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
