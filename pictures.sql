-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 08:20 PM
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
-- Database: `pictures`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Cloud', '2024-02-18 15:56:18'),
(2, 'Bluesky', '2024-02-18 15:56:18'),
(3, 'Nature', '2024-02-18 15:56:18'),
(4, 'Background', '2024-02-18 15:56:18'),
(5, 'Timelapse', '2024-02-18 15:56:18'),
(6, 'Night', '2024-02-18 15:56:18'),
(8, 'Water', '2024-03-01 10:01:38'),
(9, 'Real Estate', '2024-03-01 10:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `meeting_date` date NOT NULL,
  `time` time NOT NULL,
  `active` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `title`, `meeting_date`, `time`, `active`, `create_at`) VALUES
(1, 'Meeting1', '2024-03-13', '13:00:00', 1, '2024-03-01 09:40:54'),
(3, 'Meeting2', '2024-03-06', '13:30:00', 1, '2024-03-01 09:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `photo_date` date NOT NULL,
  `license` text NOT NULL,
  `dimension` varchar(20) NOT NULL,
  `format` varchar(5) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(70) NOT NULL,
  `category_id` int(11) NOT NULL,
  `viewers` int(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `photo_date`, `license`, `dimension`, `format`, `active`, `image`, `category_id`, `viewers`, `created_at`) VALUES
(1, 'Clocks ', '2024-02-19', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420x236', 'JPG', 1, 'img-03.jpg', 5, 7, '2024-02-19 20:32:34'),
(2, 'PLANTS', '2024-02-22', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '87eb3a0c0d4da529afe84fa67cb63e4c.jpeg', 3, 5, '2024-02-22 20:28:22'),
(3, 'MORNING', '2024-02-22', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution', '420 x236', 'jpg', 1, 'c427652433a7a3a6a84562fccc331e3c.jpeg', 3, 16, '2024-02-23 14:09:16'),
(4, 'PINKY', '2024-02-21', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, 'ced9353e7efdff4922d92cf3671c794e.jpeg', 5, 3, '2024-02-23 15:03:28'),
(6, 'HANGERS', '2024-02-14', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '25796a4b5b5098dbf5f9d96b6edd2e7b.jpeg', 4, 4, '2024-02-23 15:17:26'),
(8, 'PERFUMS', '2024-02-04', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, 'ef3fbc5709747ca2a8ac01d2719cc488.jpeg', 4, 10, '2024-02-29 18:15:41'),
(9, 'FLOWERS', '2024-02-12', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, 'e48fe09b72124d84f6dad0f9c3d4f154.jpeg', 3, 2, '2024-02-29 19:00:03'),
(10, 'PEACE', '2024-02-04', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '2ce5a8649b1e3c0b772edec5f17f1434.jpeg', 3, 0, '2024-03-01 10:00:06'),
(11, 'TURTLE', '2024-02-01', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '94b6169b288ef54d1b0f05b39a788baf.jpeg', 8, 0, '2024-03-01 10:00:51'),
(12, 'PURPLE', '2024-01-09', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, 'a5ffc5f5244a7627c787b1985de3d6c1.jpeg', 8, 0, '2024-03-01 10:07:02'),
(13, 'SEA', '2024-02-06', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '8e6fb26f76969c5a989bf581f662c3ab.jpeg', 8, 0, '2024-03-01 10:07:38'),
(14, 'ROSY', '2024-02-05', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '70050cef32801443ff3f6cbebc26a3a9.jpeg', 3, 0, '2024-03-01 10:08:28'),
(15, 'ROCKI', '2024-03-01', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '174c244decca3af590ee23fa26e2700e.jpeg', 4, 0, '2024-03-01 10:09:04'),
(16, 'ABSTRACT', '2024-01-01', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, 'be06cbcef8bfb211959f1e265b5b7398.jpeg', 4, 0, '2024-03-01 10:10:02'),
(17, 'NEW YORK', '2024-02-13', 'Free for both personal and commercial use. No need to pay anything. No need to make any attribution.', '420 x236', 'jpg', 1, '429943b65a06386f872f32ef785db0e1.jpeg', 9, 0, '2024-03-01 10:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `active`, `image`, `created_at`) VALUES
(2, 'boda karem', 'boda2021', 'bodakarem@gmail.com', '$2y$10$RQyUMDrxBIaL1RU9noJxBOSwzAWuHw1/ZG2m4tq8W2DTPHo51/dAe', 1, '84f90030584bb33a6705d24c30adc0db.jpeg', '2024-02-17 19:49:05'),
(14, 'Youssef Karem', 'youssef2024', 'you@gmail.com', '$2y$10$NqIbFuXLbN7n2NSSWqGwDe8L7/hT1aSsXlKjSgsaHsw.HJPKKvlaS', 1, '006b94ae1bdb7c79f6270a4517f41fea.jpeg', '2024-02-28 07:54:36'),
(15, 'May Mohamed Rashad', 'may1998', 'may@gmail.com', '$2y$10$IpdfDzFFLTQ7apVQ6uBoY.peV9K1Vznr3nNpVQvBh65gOhGb9N6Ce', 1, '32f55da6506132c636ff59411811402b.jpeg', '2024-02-28 17:40:28'),
(16, 'May Mohamed', 'may2810', 'mayrashad@gmail.com', '$2y$10$waokYUEKsgKHt.ZMUD558u2w9hvzc5G9ZQ2fklu04YE1HETMyIAaa', 1, '7f8e9c69c9403637abec0ee57e93fb8b.jpeg', '2024-02-28 18:08:10'),
(17, 'Mahmoud Mohamed Rashad', 'mahmoud1990', 'mahmoud@gmail.com', '$2y$10$xrwCoyIBYPMjbSW5CJprk.lb5G4hGrlbZbeEjP3P3iB1FuocIfKAu', 1, 'e47135216f1e3d3bc8aa9cf389683d22.jpeg', '2024-02-28 21:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id` (`id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
