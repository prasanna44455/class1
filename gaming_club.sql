-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 03:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaming_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcade machine information`
--

CREATE TABLE `arcade machine information` (
  `Machine_Number` int(11) NOT NULL,
  `Game` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `Floor_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arcade machine information`
--

INSERT INTO `arcade machine information` (`Machine_Number`, `Game`, `Year`, `Floor_No`) VALUES
(13, 'Poker', 2002, 2),
(23, 'Space Invader', 2001, 1),
(45, 'Mario', 2004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(11) NOT NULL,
  `Session_Number` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Member` varchar(255) NOT NULL,
  `Fee` int(11) NOT NULL,
  `Pre-paid_Y/N` varchar(255) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_ID`, `Session_Number`, `Date`, `Member`, `Fee`, `Pre-paid_Y/N`, `Customer_ID`) VALUES
(1, 1, '2021-05-14', 'Y', 0, 'N/A', 1),
(2, 1, '2021-05-14', 'N', 100, 'N', 2),
(3, 1, '2021-05-14', 'Y', 90, 'Y', 3),
(4, 1, '2021-05-21', 'N', 100, 'N', 4),
(5, 2, '2021-05-14', 'Y', 45, 'N', 5),
(6, 4, '2021-05-06', 'Y', 45, 'Y', 6);

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `Console_No` int(11) NOT NULL,
  `Console` varchar(255) NOT NULL,
  `Console_QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`Console_No`, `Console`, `Console_QTY`) VALUES
(1, 'PS1', 3),
(2, 'PS2', 2),
(3, 'PS4', 3),
(4, 'Nintendo Switch', 2),
(5, 'X Box 360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Member_Type_ID` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `JoinDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `First_Name`, `Last_Name`, `Address`, `Member_Type_ID`, `DOB`, `JoinDate`) VALUES
(1, 'Manoj', 'Tamang', 'Dillibazar, Kathamandu', 1, '1999-03-01', '2021-02-01'),
(2, 'Sony', 'Gurung', 'Putalisadak, Kathamandu', 2, '2002-02-14', '2021-03-25'),
(3, 'Hemant', 'Puri', 'Maitedevi, Kathamndu', 2, '1999-04-25', '2021-01-30'),
(4, 'Hitesh', 'Magar', 'Gyaneshwor, Kathamndu', 1, '1970-02-14', '2021-02-05'),
(5, 'Shyam', 'Bhatta', 'NULL', 0, '0000-00-00', '0000-00-00'),
(6, 'Ganesh', 'Dhakal', 'NULL', 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `Floor_No` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`Floor_No`, `Price`) VALUES
(1, 100),
(2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `Game_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PEGI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`Game_ID`, `Name`, `PEGI`) VALUES
(1, 'Spiro', 'PG'),
(2, 'Crash Bandicoot', 'PG'),
(3, 'Legend of Zelda', 'PG'),
(4, 'Halo 3', '15');

-- --------------------------------------------------------

--
-- Table structure for table `membershiptype`
--

CREATE TABLE `membershiptype` (
  `Member_Type_ID` int(11) NOT NULL,
  `Member Type` varchar(255) NOT NULL,
  `Membership Fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membershiptype`
--

INSERT INTO `membershiptype` (`Member_Type_ID`, `Member Type`, `Membership Fee`) VALUES
(1, 'Standard', 100),
(2, 'Premium', 1650);

-- --------------------------------------------------------

--
-- Table structure for table `pivot`
--

CREATE TABLE `pivot` (
  `Game_ID` int(11) NOT NULL,
  `Console_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pivot`
--

INSERT INTO `pivot` (`Game_ID`, `Console_No`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `Session_Number` int(11) NOT NULL,
  `Session_day` varchar(255) NOT NULL,
  `Session_start` time NOT NULL,
  `Session_End` time NOT NULL,
  `Session_Type` varchar(255) NOT NULL,
  `Floor_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Session_Number`, `Session_day`, `Session_start`, `Session_End`, `Session_Type`, `Floor_No`) VALUES
(1, 'Sunday', '11:00:00', '18:00:00', 'Freeplay', 1),
(2, 'Sunday', '11:00:00', '18:00:00', 'Freeplay', 2),
(3, 'Saturday', '11:00:00', '18:00:00', 'Freeplay', 1),
(4, 'Monday', '18:00:00', '21:00:00', 'Special', 2);

-- --------------------------------------------------------

--
-- Table structure for table `session console`
--

CREATE TABLE `session console` (
  `Session_Number` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Console_No` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session console`
--

INSERT INTO `session console` (`Session_Number`, `Date`, `Console_No`, `QTY`) VALUES
(1, '2021-05-14', 1, 2),
(2, '2021-05-14', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff duty`
--

CREATE TABLE `staff duty` (
  `Staff_Number` int(11) NOT NULL,
  `Staff_Name` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Session_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff duty`
--

INSERT INTO `staff duty` (`Staff_Number`, `Staff_Name`, `Role`, `Session_Number`) VALUES
(1, 'Kiran Rana', 'Cafe', 1),
(2, 'Sudeep Koirala', 'Maintenance', 1),
(3, 'Ramesh Maharajan', 'Counter', 1),
(4, 'Pooja Mishra', 'Counter', 2),
(5, 'Jabbed Merza', 'Maintenance', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcade machine information`
--
ALTER TABLE `arcade machine information`
  ADD PRIMARY KEY (`Machine_Number`),
  ADD KEY `Floor_No` (`Floor_No`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `Session_Number` (`Session_Number`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`Console_No`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD KEY `Member_Type_ID` (`Member_Type_ID`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`Floor_No`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Game_ID`);

--
-- Indexes for table `membershiptype`
--
ALTER TABLE `membershiptype`
  ADD PRIMARY KEY (`Member_Type_ID`);

--
-- Indexes for table `pivot`
--
ALTER TABLE `pivot`
  ADD PRIMARY KEY (`Game_ID`,`Console_No`),
  ADD KEY `Console_No` (`Console_No`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Session_Number`),
  ADD KEY `Floor_No` (`Floor_No`);

--
-- Indexes for table `session console`
--
ALTER TABLE `session console`
  ADD KEY `Session_Number` (`Session_Number`),
  ADD KEY `Console_No` (`Console_No`);

--
-- Indexes for table `staff duty`
--
ALTER TABLE `staff duty`
  ADD PRIMARY KEY (`Staff_Number`),
  ADD KEY `Session_Number` (`Session_Number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arcade machine information`
--
ALTER TABLE `arcade machine information`
  ADD CONSTRAINT `arcade machine information_ibfk_1` FOREIGN KEY (`Floor_No`) REFERENCES `floor` (`Floor_No`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Session_Number`) REFERENCES `session` (`Session_Number`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Member_Type_ID`) REFERENCES `membershiptype` (`Member_Type_ID`);

--
-- Constraints for table `pivot`
--
ALTER TABLE `pivot`
  ADD CONSTRAINT `pivot_ibfk_1` FOREIGN KEY (`Game_ID`) REFERENCES `games` (`Game_ID`),
  ADD CONSTRAINT `pivot_ibfk_2` FOREIGN KEY (`Console_No`) REFERENCES `console` (`Console_No`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`Floor_No`) REFERENCES `floor` (`Floor_No`);

--
-- Constraints for table `session console`
--
ALTER TABLE `session console`
  ADD CONSTRAINT `session console_ibfk_1` FOREIGN KEY (`Session_Number`) REFERENCES `session` (`Session_Number`),
  ADD CONSTRAINT `session console_ibfk_2` FOREIGN KEY (`Console_No`) REFERENCES `console` (`Console_No`);

--
-- Constraints for table `staff duty`
--
ALTER TABLE `staff duty`
  ADD CONSTRAINT `staff duty_ibfk_1` FOREIGN KEY (`Session_Number`) REFERENCES `session` (`Session_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
