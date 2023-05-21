-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2023 lúc 10:48 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phone_cnpm_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account_type`
--

INSERT INTO `account_type` (`id`, `name`) VALUES
(1, 'default'),
(2, 'facebook'),
(3, 'google');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) UNSIGNED NOT NULL,
  `street` varchar(255) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `district` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `image`, `name`, `email`, `password`, `permission_id`) VALUES
(1, NULL, 'huy', 'chung41901@gmail.com', '123456', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `battery`
--

CREATE TABLE `battery` (
  `id` int(11) UNSIGNED NOT NULL,
  `capacity` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `battery`
--

INSERT INTO `battery` (`id`, `capacity`, `type`) VALUES
(1, 3000, 'Li-Po'),
(2, 4000, 'Li-Ion'),
(3, 4500, 'Li-Po'),
(4, 5000, 'Li-Ion');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Black'),
(2, 'White'),
(3, 'Gold'),
(4, 'Rose Gold');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `website`, `email`, `phone_number`, `image`) VALUES
(1, 'Apple', NULL, NULL, NULL, 'apple_logo.png'),
(2, 'Samsung', NULL, NULL, NULL, 'samsung_logo.png'),
(3, 'Xiaomi', NULL, NULL, NULL, 'xiaomi_logo.png'),
(4, 'Google', NULL, NULL, NULL, 'google_logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model`
--

CREATE TABLE `model` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `model_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'Read-only'),
(2, 'Write-only'),
(3, 'Full access');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `id` int(11) UNSIGNED NOT NULL,
  `model` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color_id` int(11) UNSIGNED NOT NULL,
  `ram_id` int(11) UNSIGNED NOT NULL,
  `rom_id` int(11) UNSIGNED NOT NULL,
  `battery_id` int(11) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`id`, `model`, `image`, `manufacturer_id`, `price`, `color_id`, `ram_id`, `rom_id`, `battery_id`, `description`, `quantity`) VALUES
(3, 'iPhone 12', 'iphone12.jpg', 1, 799.99, 1, 3, 3, 2, 'The latest iPhone model from Apple', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ram`
--

CREATE TABLE `ram` (
  `id` int(11) UNSIGNED NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ram`
--

INSERT INTO `ram` (`id`, `size`) VALUES
(1, '2GB'),
(2, '3GB'),
(3, '4GB'),
(4, '6GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rom`
--

CREATE TABLE `rom` (
  `id` int(11) UNSIGNED NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rom`
--

INSERT INTO `rom` (`id`, `size`) VALUES
(1, '16GB'),
(2, '32GB'),
(3, '64GB'),
(4, '128GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Chỉ mục cho bảng `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `ram_id` (`ram_id`),
  ADD KEY `rom_id` (`rom_id`),
  ADD KEY `battery_id` (`battery_id`);

--
-- Chỉ mục cho bảng `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `rom`
--
ALTER TABLE `rom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_type_id` (`account_type_id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `rom`
--
ALTER TABLE `rom`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_address_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`);

--
-- Các ràng buộc cho bảng `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  ADD CONSTRAINT `phone_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `phone_ibfk_3` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`id`),
  ADD CONSTRAINT `phone_ibfk_4` FOREIGN KEY (`rom_id`) REFERENCES `rom` (`id`),
  ADD CONSTRAINT `phone_ibfk_5` FOREIGN KEY (`battery_id`) REFERENCES `battery` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
