-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 01:44 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javafinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `status`) VALUES
(1, 'Dave Lyndrex', 'Millan', 'dave', 'dave', 'Admin'),
(12, 'Elsa', 'Patot', 'elsa', 'elsa', 'Admin'),
(22, 'Jeric', 'Baterna', 'jeric', 'jeric', 'Admin'),
(33, 'Juric ', 'Baybayanon', 'juric', 'juric', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `approveorders`
--

CREATE TABLE `approveorders` (
  `order_id` int(10) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL DEFAULT 'brand',
  `description` varchar(50) NOT NULL DEFAULT 'desc',
  `totalprice` int(50) NOT NULL,
  `quantity` int(50) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approveorders`
--

INSERT INTO `approveorders` (`order_id`, `photo`, `name`, `brand`, `description`, `totalprice`, `quantity`, `status`) VALUES
(10, 'blackmamba.jpeg', 'blackmamba', 'nike', 'new style', 4999, 1, 'approved'),
(11, 'nike.jpg', 'nike zoom', 'nike', 'new design', 5998, 2, 'approved'),
(13, 'blackmamba.jpeg', 'blackmamba', 'nike', 'new style', 9998, 2, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `archivedproducts`
--

CREATE TABLE `archivedproducts` (
  `product_id` int(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `stocks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archivedproducts`
--

INSERT INTO `archivedproducts` (`product_id`, `photo`, `name`, `brand`, `description`, `price`, `stocks`) VALUES
(2, 'adidas.png', 'adidas ', 'adidas', 'high cut', 599, 20);

-- --------------------------------------------------------

--
-- Table structure for table `disabledadmins`
--

CREATE TABLE `disabledadmins` (
  `admin_id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Disabled Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disabledadmins`
--

INSERT INTO `disabledadmins` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `status`) VALUES
(2, 'Justine', 'Ambrad', 'justine ', 'justine', 'Disabled Admin'),
(10, 'Jurick ', 'Baybayanon', 'jurick', 'jurick', 'Disabled Admin'),
(11, 'David Bryan', 'Pael', 'david', 'david', 'Disabled Admin'),
(14, 'Rubylyn', 'Hernani', 'rubylyn', 'rubylyn', 'Disabled Admin'),
(15, 'Winabel', 'Anore', 'winabel', 'winabel', 'Disabled Admin');

-- --------------------------------------------------------

--
-- Table structure for table `disabledusers`
--

CREATE TABLE `disabledusers` (
  `user_id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Disabled User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disabledusers`
--

INSERT INTO `disabledusers` (`user_id`, `firstname`, `lastname`, `username`, `password`, `status`) VALUES
(1, 'Christine ', 'Rubio', 'christine', 'christine', 'Disabled User');

-- --------------------------------------------------------

--
-- Table structure for table `orderedproducts`
--

CREATE TABLE `orderedproducts` (
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `quantity` int(111) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `fullname` varchar(200) NOT NULL DEFAULT 'name',
  `address` varchar(255) NOT NULL DEFAULT 'address',
  `email` varchar(255) NOT NULL DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderedproducts`
--

INSERT INTO `orderedproducts` (`order_id`, `product_id`, `photo`, `name`, `brand`, `description`, `totalPrice`, `quantity`, `status`, `fullname`, `address`, `email`) VALUES
(1, 0, 'nike.jpg', 'nike zoom', 'nike', 'new design', 2999, 1, 'pending', 'migx', 'dalaguete', 'migz@gmail.com'),
(4, 2, 'underarmour.png', 'under armour', 'under armour', 'low cut', 1599, 1, 'pending', 'juan', 'pinamungajan', 'juan@gmail.com'),
(7, 12, 'blackmamba.jpeg', 'blackmamba', 'nike', 'new style', 9998, 2, 'pending', 'dave millan ', 'dalaguete', 'dave@gmail.com'),
(8, 12, 'blackmamba.jpeg', 'blackmamba', 'nike', 'new style', 9998, 2, 'pending', 'dave millan ', 'dalaguete', 'dave@gmail.com'),
(9, 1, 'nike.jpg', 'nike zoom', 'nike', 'new design', 5998, 2, 'pending', 'Dave Lyndrex Millan ', 'Address', 'dave@gmail.com'),
(10, 8, 'asics.jpeg', 'asics', 'asics', 'fit for adult', 14995, 5, 'pending', 'Dave Lyndrex Millan', 'Dalaguete', 'dave@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `stocks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `photo`, `name`, `brand`, `description`, `price`, `stocks`) VALUES
(1, 'nike.jpg', 'nike zoom', 'nike', 'new design', 2999, 50),
(2, 'underarmour.png', 'under armour', 'under armour', 'low cut', 1599, 20),
(8, 'asics.jpeg', 'asics', 'asics', 'fit for adult', 1999, 6),
(9, 'asics.jpeg', 'asics2', 'asics', 'fit for adult', 2999, 10),
(14, 'adidas.png', 'adidas', 'adidas', 'low cut', 599, 20);

-- --------------------------------------------------------

--
-- Table structure for table `requestproducts`
--

CREATE TABLE `requestproducts` (
  `product_id` int(10) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `stocks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestproducts`
--

INSERT INTO `requestproducts` (`product_id`, `photo`, `name`, `brand`, `description`, `price`, `stocks`) VALUES
(11, 'asics.jpeg', 'asics', 'asics', 'fit for adult', 1999, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `status`) VALUES
(9, 'Eleasar', 'Patot', 'elsa', 'elsa', 'User'),
(25, 'John miguel', 'Estopa', 'miguel', 'miguel', 'User'),
(30, 'Christine', 'Rubio', 'christine', 'christine', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `approveorders`
--
ALTER TABLE `approveorders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `archivedproducts`
--
ALTER TABLE `archivedproducts`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `disabledadmins`
--
ALTER TABLE `disabledadmins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `disabledusers`
--
ALTER TABLE `disabledusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orderedproducts`
--
ALTER TABLE `orderedproducts`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `requestproducts`
--
ALTER TABLE `requestproducts`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `approveorders`
--
ALTER TABLE `approveorders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `archivedproducts`
--
ALTER TABLE `archivedproducts`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `disabledadmins`
--
ALTER TABLE `disabledadmins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `disabledusers`
--
ALTER TABLE `disabledusers`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderedproducts`
--
ALTER TABLE `orderedproducts`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `requestproducts`
--
ALTER TABLE `requestproducts`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
