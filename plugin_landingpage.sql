-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 10:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gd_feb`
--

-- --------------------------------------------------------

--
-- Table structure for table `plugin_landingpage`
--

CREATE TABLE `plugin_landingpage` (
  `landingpage_id` bigint(20) UNSIGNED NOT NULL,
  `landingpage_uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landingpage_store` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landingpage_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landingpage_campaign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landingpage_start` date NOT NULL,
  `landingpage_end` date NOT NULL,
  `landingpage_position` int(11) NOT NULL DEFAULT 1,
  `landingpage_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plugin_landingpage`
--

INSERT INTO `plugin_landingpage` (`landingpage_id`, `landingpage_uuid`, `landingpage_store`, `landingpage_url`, `landingpage_campaign`, `landingpage_start`, `landingpage_end`, `landingpage_position`, `landingpage_status`, `created_at`, `updated_at`) VALUES
(11, '45702268-ac35-4e36-9558-fc3c9c1ce82a', '53d6d7fb-89f8-474f-870f-1fb5441727c3', NULL, 'test', '2024-03-13', '2024-03-28', 1, 0, '2024-03-13 09:11:12', '2024-03-13 09:11:12'),
(12, '8ef76153-d1bb-4e30-955f-d3ad640ddd53', '53d6d7fb-89f8-474f-870f-1fb5441727c3', NULL, 'test1', '2024-03-13', '2024-03-29', 1, 0, '2024-03-13 09:11:43', '2024-03-13 09:11:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plugin_landingpage`
--
ALTER TABLE `plugin_landingpage`
  ADD PRIMARY KEY (`landingpage_id`),
  ADD UNIQUE KEY `landingpage_uuid` (`landingpage_uuid`),
  ADD KEY `landingpage_store` (`landingpage_store`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plugin_landingpage`
--
ALTER TABLE `plugin_landingpage`
  MODIFY `landingpage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
