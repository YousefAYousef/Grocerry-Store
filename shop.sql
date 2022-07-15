-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 02:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `constactId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusId` int(11) NOT NULL,
  `cusName` varchar(50) NOT NULL,
  `cusEmail` varchar(50) NOT NULL,
  `cusPassword` varchar(50) NOT NULL,
  `cusUsername` varchar(50) NOT NULL,
  `cusPhone` int(11) NOT NULL,
  `cusAddress` varchar(50) NOT NULL,
  `cusGender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `empName` varchar(50) NOT NULL,
  `empEmail` varchar(50) NOT NULL,
  `EmpPassword` varchar(50) NOT NULL,
  `empPhone` int(11) NOT NULL,
  `empGender` varchar(10) NOT NULL,
  `empAddress` varchar(50) NOT NULL,
  `empUsername` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `orderAmount` int(11) NOT NULL,
  `orderDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productCategory` varchar(50) NOT NULL,
  `productAmount` int(11) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `empId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`constactId`),
  ADD KEY `fk_cust` (`customerId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`customerId`,`productId`),
  ADD KEY `fk_order_product` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_cust` FOREIGN KEY (`customerId`) REFERENCES `customer` (`cusId`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_cust` FOREIGN KEY (`customerId`) REFERENCES `customer` (`cusId`),
  ADD CONSTRAINT `fk_order_product` FOREIGN KEY (`productId`) REFERENCES `product` (`productID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_emp` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
