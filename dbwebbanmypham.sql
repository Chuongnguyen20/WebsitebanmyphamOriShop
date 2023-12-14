-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 12:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwebbanmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `total_amount` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `shipping_fee` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `userId`, `total_amount`, `order_date`, `shipping_fee`, `status`) VALUES
(1, 1, 44960000, '2023-12-08', 200000, 1),
(2, 4, 48960000, '2023-12-09', 200000, 1),
(3, 1, 54960000, '2023-12-09', 200000, 1),
(4, 1, 42970000, '2023-12-09', 200000, 1),
(5, 1, 60960000, '2023-12-09', 200000, 1),
(6, 1, 40970000, '2023-12-14', 200000, 1),
(7, 5, 45960000, '2023-12-14', 200000, 1),
(8, 5, 59950000, '2023-12-14', 200000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `billId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `productId`, `quantity`, `price`, `billId`) VALUES
(1, 3, 3, 10990000, 1),
(2, 4, 1, 11990000, 1),
(3, 2, 1, 14990000, 2),
(4, 3, 2, 10990000, 2),
(5, 4, 1, 11990000, 2),
(6, 14, 3, 13490000, 3),
(7, 15, 1, 14490000, 3),
(8, 1, 1, 13990000, 4),
(9, 15, 2, 14490000, 4),
(10, 16, 3, 15490000, 5),
(11, 15, 1, 14490000, 5),
(12, 2, 2, 14990000, 6),
(13, 3, 1, 10990000, 6),
(14, 3, 2, 10990000, 7),
(15, 4, 2, 11990000, 7),
(16, 3, 3, 10990000, 8),
(17, 14, 2, 13490000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `is_new` int(11) DEFAULT NULL,
  `is_special` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `image_name`, `description`, `original_price`, `sale_price`, `is_new`, `is_special`) VALUES
(1, 'Samsung Galaxy S21', '1.png', 'Flagship smartphone with powerful features.', 15000000, 13990000, 1, 0),
(2, 'iPhone 12 Pro', '2.png', 'Top-of-the-line iPhone with advanced camera system.', 16000000, 14990000, 1, 1),
(3, 'Google Pixel 5', '3.png', 'High-quality Android experience with great camera.', 12000000, 10990000, 0, 0),
(4, 'OnePlus 9', '4.png', 'Flagship killer with top-notch performance.', 13000000, 11990000, 1, 0),
(5, 'Xiaomi Mi 11', '5.png', 'Feature-rich smartphone at an affordable price.', 14000000, 12990000, 0, 1),
(6, 'Sony Xperia 1 III', '6.png', 'Premium Sony smartphone with advanced display.', 17000000, 15990000, 1, 1),
(7, 'Product 7', '7.png', 'Description for Product 7.', 11000000, 9990000, 0, 0),
(8, 'Product 8', '8.png', 'Description for Product 8.', 12500000, 11990000, 1, 0),
(9, 'Product 9', '9.png', 'Description for Product 9.', 13500000, 12990000, 0, 1),
(10, 'Product 10', '10.png', 'Description for Product 10.', 14500000, 13990000, 1, 1),
(11, 'Product 11', '11.png', 'Description for Product 11.', 15500000, 14990000, 0, 0),
(12, 'Product 12', '12.png', 'Description for Product 12.', 12000000, 11500000, 1, 0),
(13, 'Product 13', '13.png', 'Description for Product 13.', 13000000, 12490000, 0, 1),
(14, 'Product 14', '1.png', 'Description for Product 14.', 14000000, 13490000, 1, 0),
(15, 'Product 15', '2.png', 'Description for Product 15.', 15000000, 14490000, 0, 1),
(16, 'Product 16', '3.png', 'Description for Product 16.', 16000000, 15490000, 1, 1),
(17, 'Product 17', '4.png', 'Description for Product 17.', 17000000, 16490000, 0, 0),
(18, 'Product 18', '5.png', 'Description for Product 18.', 18000000, 17490000, 1, 0),
(19, 'Product 19', '6.png', 'Description for Product 19.', 19000000, 18490000, 0, 1),
(20, 'Product 20', '7.png', 'Description for Product 20.', 20000000, 19490000, 1, 1),
(21, 'sản phẩm mới', '8.png', 'sửa sản phẩm mới', 2000000, 222222, 1, 1),
(25, 'Sản phẩm mới', '8bc27212-f5e2-4449-ada0-aad45baccc02_thanh-co.png', 'Sửa sản phẩm mới', 2000000, 1500000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `full_name`, `gender`, `address`, `birth_date`, `roleId`) VALUES
(1, 'tuan@gmail.com', '123', 'Ngô Tuấn', 'nam', 'Hoàng Mai Hà Nội', '2023-12-13', 2),
(2, 'admin@gmail.com', '123', 'Admin', 'Male', 'Hai bà trưng', '2023-12-27', 1),
(3, 'test@gmail.com', '123', 'Khách hàng 1', 'Female', 'Hà đông', '2023-12-28', 2),
(4, 'phong@gmail.com', '123', 'Tuấn Phong', 'Male', 'Đà Nẵng', '2023-12-30', 2),
(5, 'tan@gmail.com', '123', 'Nguyễn Tấn', 'male', NULL, '2023-12-05', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `billId` (`billId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`billId`) REFERENCES `bill` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
