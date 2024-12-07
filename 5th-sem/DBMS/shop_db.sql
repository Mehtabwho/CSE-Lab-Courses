-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 05:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(140, 17, 13, 'Glizbi (1 kg)', 1350, 1, 'IMG-20241129-WA0020.jpg'),
(141, 17, 17, 'Macaron (6 pcs)', 500, 1, 'IMG-20241129-WA0024.jpg'),
(142, 20, 15, 'Chocolate Sponge Cake (1 kg)', 3500, 1, 'IMG-20241129-WA0011.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 17, 'shama', 'soptorshi975@gmail.com', '01983637', 'what would be the cost of 2 pound chocolate drip cake');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 17, 'OISHE', '01400588405', 'soptorshi975@gmail.com', 'cash on delivery', 'flat no. vatara, dhaka, dhaka, bangladesh - ', ', Yogurt Cake (1) ', 13, '29-Nov-2024', 'completed'),
(20, 17, 'mehjabin', '01966293270', 'user02@gmail.com', 'bkash', 'flat no. 956, , dhaka, bangladesh - ', ', Yogurt Cake (2) , Glizbi (1) , Yogurt Cake (1 kg) (2) ', 6126, '02-Dec-2024', 'pending'),
(21, 21, 'mehtab', '0197383631', 'user@gmail.com', 'cash on delivery', 'flat no. vatara, dhaka, bangladesh', ', Glizbi (1 kg) (1) ', 1350, '03-Dec-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'Glizbi (1 kg)', 'Glizbi is a popular Bangladeshi dessert made with milk powder, sugar, and ghee.  It\'s a simple yet delicious treat that\'s perfect for any occasion.', 1350, 'IMG-20241129-WA0020.jpg'),
(15, 'Chocolate Sponge Cake (1 kg)', 'A light and airy chocolate cake with a moist crumb, perfect for any occasion. It\'s a versatile base for layered cakes, trifles.', 3500, 'IMG-20241129-WA0011.jpg'),
(16, 'Yogurt Cake (1 kg)', 'Yogurt cake is a classic French dessert known for its simplicity and deliciousness. It\'s a moist and tender cake with a subtle tang from the yogurt.', 3000, 'IMG_20210909_202821.jpg'),
(17, 'Macaron (6 pcs)', 'Macarons are delicate French sandwich cookies made with almond flour and meringue. The outside is crisp, while the inside is chewy.\r\n', 500, 'IMG-20241129-WA0024.jpg'),
(18, 'Vanilla sponge Cake (1 kg)', 'A classic vanilla cake is a light and fluffy cake with a subtle vanilla flavor.   It\'s the perfect base for any celebration.', 2500, 'IMG-20241129-WA0029.jpg'),
(19, 'Vanilla Pound Cake (1 pound)', 'A classic, buttery loaf cake with a delicate vanilla flavor. Perfect for any occasion, from tea time to a special dessert.\r\n', 2500, 'IMG-20241129-WA0025.jpg'),
(20, 'Aflatoon (1kg)', 'Aflatoon is a rich and flavorful cake-like sweet made with mawa, ghee, sugar, semolina, and nutmeg. It\'s a popular dessert in Bangladesh.\r\n', 1400, 'IMG-20241129-WA0031.jpg'),
(21, 'Japanese Cotton Cheesecake (1kg)', 'Japanese cheesecake is a light and airy soufflé-style cheesecake with a subtle sweetness. ', 3000, '1732864574375.jpg'),
(22, 'Chocolate Pound Cake (1 pound)', 'A classic, buttery loaf cake with a rich chocolate flavor. Perfect for any occasion, from tea time to a special dessert.', 800, '1000013870.jpg'),
(23, 'Orange Sponge Cake (1 kg)', 'A classic pound cake infused with the bright, zesty flavor of oranges. Moist, buttery, and bursting with citrusy goodness.', 2500, '1000013869.jpg'),
(24, 'Black Forest Cake (1 kg)', 'Black Forest cake is a classic German dessert featuring layers of chocolate sponge cake, whipped cream and cherries.', 4000, 'IMG-20241129-WA0004.jpg'),
(25, 'Red Velvet Cake (1 kg)', 'Red velvet cake is a classic dessert known for its vibrant red color and velvety texture.  It\'s a often paired with a tangy cream cheese frosting.', 4200, 'FB_IMG_1732878711361.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'mehtab', 'moumitamehtab@gmail.com', '4eea63f8c6ba20688974f29fb13002f0', 'admin'),
(17, 'user1', 'user1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(18, 'shama', 'soptorshi975@gmail.com', '1448d2da1a6ace06d6699ce8f872a302', 'admin'),
(19, 'aishe', 'oishe123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(20, 'user5', 'user5@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(21, 'mehtab', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(63, 17, 15, 'Chocolate Sponge Cake', 15, 'IMG-20241129-WA0011.jpg'),
(65, 20, 16, 'Yogurt Cake (1 kg)', 3000, 'IMG_20210909_202821.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
