-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 12:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `josphat_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(255) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_category`, `product_image`) VALUES
(7, 'Oppo F11', '6 gb ram, 128gb storage, black color', 20000, 'electronics', 'OppoF11.jpeg'),
(15, 'HP Omen', '16 gb ram, 256gb storage, grey color', 25900, 'electronics', 'shopping.avif'),
(18, 'Iphone 17', '32gb ram, 256gb storage, grey color', 73000, 'electronics', 'download.jpeg'),
(19, 'Television Hisense', '42 \"\"inches', 32000, 'electronics', 'download (1).jpeg'),
(20, 'Sub woofer', '21CH', 8967, 'electronics', 'download.avif'),
(21, 'Hisense Fridge', 'REF120DR  Double door', 28000, 'electronics', 'shopping (1).avif'),
(22, 'Oven ', 'Haier 3 gas 1 electric', 35000, 'electronics', 'download (2).jpeg'),
(24, 'Plate', 'Ceramic Dinner plate', 389, 'utensils', 'download.jpeg'),
(25, 'Tables', 'Wooden based', 13000, 'furnitures', 'images.jpeg'),
(26, 'Chairs', 'sofaset', 15000, 'furnitures', 'download (3).jpeg'),
(28, 'Snacks', 'Healhty snacks', 520, 'Fooodstuffs', 'download (4).jpeg'),
(30, 'Christmas  lights', 'Colourful', 1200, 'Decoration', 'download (5).jpeg'),
(32, 'Wool Blend suit', 'Grey in color', 3456, 'clothes', 'shopping.avif'),
(34, 'Oppo F11', 'Grey in color', 11230, 'Electronis', 'oppo11.webp'),
(35, 'Pressure Cooker', 'Grey in color', 3230, 'Electronics', 'shopping.avif'),
(36, 'Water Dispenser', 'Black in color', 2230, 'Electronics', 'shopping (2).avif'),
(37, 'Generic Curtain', 'Woollen and blue in color', 1250, 'Decorations', 'shopping (3).avif'),
(38, 'Superfoarm Bed', 'Pocketspring', 5430, 'Beddings', 'shopping (4).avif'),
(39, 'Pens', 'Blue ,black, red and green', 15, 'Stationeries', 'images (1).jpeg'),
(40, 'Office Stationaries', 'files,highlighter etc', 1300, 'Stationeries', 'download (6).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Gichimu', 'gichimu@gmail.com', '0118051241', 'qwerty123'),
(2, 'Aswani', 'aswani@gmail.com', '0712345678', 'qwerty159');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
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
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
