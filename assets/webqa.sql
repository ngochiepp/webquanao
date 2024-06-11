-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2024 at 02:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webqa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name_cate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_cate`, `parent_id`, `description`) VALUES
(1, 'Điện thoại di động', 0, ''),
(2, 'Laptop', 0, ''),
(3, 'Áo thun', 0, 'Quần áo nam'),
(4, 'Áo sơ mi', 0, 'Quần áo nam'),
(5, 'Quần jean', 0, 'Quần áo nam'),
(6, 'Giày thể thao', 0, 'Giày dép'),
(7, 'Dép', 0, 'Giày dép'),
(8, 'Váy', 0, 'Quần áo nữ'),
(9, 'Chân váy', 0, 'Quần áo nữ'),
(10, 'Đầm', 0, 'Quần áo nữ'),
(11, 'Túi xách', 0, 'Phụ kiện'),
(12, 'Ví', 0, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `image_thumnail`
--

CREATE TABLE `image_thumnail` (
  `image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `is_main_image` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_cate` int NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `id_cate`, `product_type`, `brand`, `price`, `cost`, `stock_quantity`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun nam basic', 1, 'Áo ', 'Thun Basic', '199000.00', '120000.00', 100, 'available', 'Áo thun nam basic được làm từ 100% cotton mềm mại, thấm hút mồ hôi tốt, co giãn 4 chiều, thoải mái khi vận động.', '2024-06-08 20:55:32', '2024-06-08 20:55:32'),
(2, 'Quần jean nam rách gối', 2, 'Quần', 'Jeans Rách', '499000.00', '350000.00', 50, 'available', 'Quần jean nam rách gối thời trang, phong cách cá tính, phù hợp cho nhiều hoạt động.', '2024-06-08 20:58:06', '2024-06-08 20:58:06'),
(3, 'Áo thun nữ croptop', 1, 'Áo', 'Croptop', '249000.00', '150000.00', 70, 'available', 'Áo thun nữ croptop trẻ trung, năng động, phù hợp cho những ngày hè nóng bức.', '2024-06-08 20:58:06', '2024-06-08 20:58:06'),
(4, 'Váy maxi nữ hoa nhí dây rút', 4, 'Váy', 'Maxi', '449000.00', '320000.00', 60, 'available', 'Váy maxi nữ hoa nhí dây rút nhẹ nhàng, nữ tính, thích hợp cho đi dạo, đi biển, chụp ảnh.', '2024-06-08 21:03:27', '2024-06-08 21:03:27'),
(5, 'Chân váy bút chì nữ công sở cao cấp', 4, 'Váy', 'Công Sở', '399000.00', '290000.00', 80, 'available', 'Chân váy bút chì nữ công sở cao cấp, tôn dáng, chuyên nghiệp, phù hợp cho môi trường văn phòng.', '2024-06-08 21:03:27', '2024-06-08 21:03:27'),
(6, 'Đầm xòe nữ dự tiệc đuôi cá', 4, 'Váy', 'Dự Tiệc', '699000.00', '520000.00', 30, 'available', 'Đầm xòe nữ dự tiệc đuôi cá sang trọng, quyến rũ, giúp bạn nổi bật trong mọi sự kiện.', '2024-06-08 21:03:27', '2024-06-08 21:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `review_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` decimal(1,1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('admin','member') NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `type`, `created_at`, `updated_at`, `is_active`) VALUES
(106, 'Admin', NULL, 'ductv44@fpt.edu.vn', '$2y$10$hReLL2ozoAtf7SVLj9PBh.Z0XdhO/Bflcn63cCTttyMrXxHDgB8S2', 'admin', '2024-06-04 07:03:31', '2024-06-04 07:03:31', 1),
(107, 'ductv55', NULL, 'ductv55@fpt.edu.vn', '$2y$10$/g.BJf1jhyeytlFR8.AryevaAaL1fp.wLSqhHwtDn1cxntYo9v1SG', 'member', '2024-06-04 07:04:08', '2024-06-04 07:04:08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name_cate`);

--
-- Indexes for table `image_thumnail`
--
ALTER TABLE `image_thumnail`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image_thumnail`
--
ALTER TABLE `image_thumnail`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_thumnail`
--
ALTER TABLE `image_thumnail`
  ADD CONSTRAINT `image_thumnail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
