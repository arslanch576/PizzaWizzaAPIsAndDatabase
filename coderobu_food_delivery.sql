-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2024 at 08:16 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderobu_food_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `subCategory` varchar(50) NOT NULL,
  `price` smallint(6) NOT NULL,
  `discountedPrice` smallint(6) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rating` float NOT NULL,
  `shortDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `category`, `subCategory`, `price`, `discountedPrice`, `picture`, `createdAt`, `updatedAt`, `rating`, `shortDescription`) VALUES
(1, 'Pepperoni Pizza', 'A classic pizza topped with savory tomato sauce, gooey mozzarella cheese, and slices of spicy pepperoni.', 'Pizzas', 'Pepperoni', 1200, 1200, 'pizza1.png', '2024-03-27 08:14:20', '2024-03-27 08:36:23', 5, 'Classic pepperoni'),
(2, 'BBQ Chicken Pizza', 'A delicious pizza featuring tangy BBQ sauce, tender chicken pieces, melted cheese, and a sprinkle of red onions.', 'Pizzas', 'Chicken', 1300, 1300, 'pizza2.png', '2024-03-27 08:18:35', '2024-03-27 08:36:28', 4.8, 'Tangy BBQ chicken'),
(3, 'Veggie Burger', 'A vegetarian delight! Our veggie burger features a homemade veggie patty, lettuce, tomatoes, onions, and pickles.', 'Burgers', 'Vegetarian', 800, 800, 'burger1.png', '2024-03-27 08:18:35', '2024-03-27 08:35:54', 4.5, 'Fresh veggie patty'),
(4, 'Cheeseburger', 'Sink your teeth into our juicy beef patty topped with melted cheese, lettuce, tomatoes, onions, and pickles.', 'Burgers', 'Beef', 900, 900, 'burger2.png', '2024-03-27 08:18:35', '2024-03-27 08:36:00', 4.7, 'Juicy beef patty'),
(5, 'Crispy Fries', 'Crispy on the outside, fluffy on the inside! Our golden fries are the perfect side to any meal.', 'Sides', 'Fries', 500, 500, 'fries.png', '2024-03-27 08:18:35', '2024-03-27 08:36:59', 4.3, 'Crunchy golden fries'),
(6, 'Margherita Pizza', 'A traditional pizza topped with tomato sauce, fresh mozzarella cheese, and basil leaves.', 'Pizzas', 'Margherita', 1100, 1100, 'pizza3.png', '2024-03-27 08:18:35', '2024-03-27 08:36:36', 4.6, 'Simple and delicious'),
(7, 'Bacon Cheeseburger', 'Indulge in our bacon cheeseburger featuring a juicy beef patty, crispy bacon, melted cheese, and all the fixings.', 'Burgers', 'Beef', 1000, 1000, 'burger3.png', '2024-03-27 08:18:35', '2024-03-27 08:36:06', 4.9, 'Savory bacon and cheese'),
(8, 'Garlic Parmesan Fries', 'Our garlic parmesan fries are tossed in garlic butter and topped with grated parmesan cheese for a flavorful twist.', 'Sides', 'Fries', 600, 600, 'fries.png', '2024-03-27 08:18:35', '2024-03-27 08:37:11', 4.5, 'Garlic and parmesan goodness'),
(9, 'Buffalo Chicken Pizza', 'Spice up your day with our buffalo chicken pizza! Featuring spicy buffalo sauce, tender chicken, melted cheese, and ranch drizzle.', 'Pizzas', 'Chicken', 1250, 1250, 'pizza4.png', '2024-03-27 08:18:35', '2024-03-27 08:36:41', 4.8, 'Spicy buffalo chicken'),
(10, 'Iced Coffee', 'Chilled coffee with milk and a hint of sweetness, perfect for coffee lovers.', 'Drinks', 'Coffee', 350, 350, 'ice_coffe.png', '2024-03-27 08:21:25', '2024-03-27 08:37:49', 4.5, 'Chilled coffee delight'),
(11, 'Mango Smoothie', 'A creamy blend of fresh mangoes and yogurt, a tropical delight.', 'Drinks', 'Smoothies', 400, 400, 'mango_smoothe.png', '2024-03-27 08:21:25', '2024-03-27 08:37:40', 4.6, 'Creamy mango goodness'),
(12, 'Lemonade', 'Homemade lemonade, sweet and tangy, the perfect thirst-quencher.', 'Drinks', 'Lemonade', 350, 350, 'lamonade.png', '2024-03-27 08:21:25', '2024-03-27 08:37:29', 4.3, 'Sweet and tangy lemonade');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `account_id`, `login_time`) VALUES
('7864c9f978d02f5825dacb2c79cf3b', 7, '2024-05-06 06:15:13'),
('7a5c4d98efdb0ffc6890e77b567a80', 6, '2024-05-06 05:52:14'),
('e7ef0cb583e97a8215fa6474f7f5c7', 7, '2024-05-06 06:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'User',
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `email`, `type`, `password`, `picture`, `createdAt`, `updatedAt`) VALUES
(6, 'Arslan', '03066920271', '', 'User', '$2y$10$ygUcJRwlczNXUt3FGxCHqenrj1fI2B1rVLHKjD/JJ.8prIr9utZ4G', '', '2024-05-06 05:52:14', '2024-05-06 05:52:14'),
(7, 'Arslan Sarwar', '03066920211', '', 'User', '$2y$10$yTKJ.y56lYmnYQEustcIh.7cdKtof6SSWW5pcjie170GVSsOYoa3e', '', '2024-05-06 06:10:22', '2024-05-06 06:10:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
