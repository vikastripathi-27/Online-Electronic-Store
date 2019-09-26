-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 05:41 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` int(20) NOT NULL,
  `manufacturer` varchar(250) DEFAULT NULL,
  `CATEGORY` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `manufacturer`, `CATEGORY`) VALUES
(1, 'Nokia 6.1 Plus', 10990, 'Nokia', 'Mobile phones'),
(2, 'Samsung Galaxy M30', 13990, 'Samsung', 'Mobile phones'),
(3, 'Redmi 7A', 6499, 'Redmi', 'Mobile phones'),
(4, 'Redmi K20 Pro', 23999, 'Redmi', 'Mobile phones'),
(5, 'VU 49 PL', 24766, 'VU', 'tv'),
(6, 'TCL 32S327', 12490, 'TCL', 'tv'),
(7, 'Samsung 23 inch curved', 8893, 'Samsung', 'tv'),
(8, 'VU 90 PL', 17990, 'VU', 'tv'),
(9, 'Dell 15 5570', 56987, 'Dell', 'Laptop'),
(10, 'Microsoft Surface Pro', 73299, 'Microsoft', 'Laptop'),
(11, 'HP Envy 13', 75990, 'HP', 'Laptop'),
(12, 'Asus Vivobook 13', 48990, 'Asus', 'Laptop'),
(13, 'WelRock Q 18', 3569, 'WelRock', 'Smart Watch'),
(14, 'Wayona W-KDT', 3200, 'Wayona', 'Smart Watch'),
(15, 'Vivo Active 3', 12440, 'Vivo', 'Smart Watch'),
(16, 'AT&T Rugged Rumper', 1249, 'AT&T', 'Smart Watch');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `address` varchar(800) DEFAULT NULL,
  `gender` varchar(800) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `registration_time`, `password`, `address`, `gender`, `contact`) VALUES
(67, 'evan@gmail.com', 'Evan', 'Velagaleti', '2019-08-19 07:37:46', 'e10adc3949ba59abbe56e057f20f883e', 'Vashi', 'Male', '987654321'),
(68, 'nikhil@gmail.com', 'Nikhil', 'Tatpati', '2019-09-26 03:16:23', '874a615557757055fb62712d3b0d0609', 'Koparkhairane', 'Male', '12348658'),
(69, 'melvin@gmail.com', 'Melvin', 'Thankachan', '2019-09-26 03:16:23', '874a615557757055fb62712d3b0d0609', 'Nerul', 'Male', '99854688582'),
(70, 'vikas@gmail.com', 'Vikas', 'Tripathi', '2019-09-26 03:16:23', '874a615557757055fb62712d3b0d0609', 'Koparkhairane', 'Male', '518452147'),
(71, 'veera@gmail.com', 'Veera', 'Sai', '2019-09-26 03:06:58', 'e4f87fff1ccec0d886245d19f75bb65f', 'Koparkhairane', 'Male', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed'),
(26, 68, 7, 'Confirmed'),
(27, 68, 2, 'Confirmed'),
(28, 69, 6, 'Confirmed'),
(30, 69, 15, 'Confirmed'),
(31, 69, 4, 'Confirmed'),
(32, 69, 6, 'Confirmed'),
(33, 70, 4, 'Confirmed'),
(35, 70, 11, 'Confirmed'),
(36, 69, 3, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_products`
--
ALTER TABLE `users_products`
  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
