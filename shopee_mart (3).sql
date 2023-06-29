-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 08:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pqty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `uid`, `pid`, `pqty`, `datetime`, `created_at`, `updated_at`) VALUES
(26, '2', '7', '1', '2023-3-18', '2023-03-17 23:55:49', '2023-03-17 23:55:49'),
(27, '2', '6', '2', '2023-3-18', '2023-03-18 00:52:06', '2023-03-18 00:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `margin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cname`, `img`, `under_id`, `status`, `margin`, `description`, `created_at`, `updated_at`) VALUES
(17, 'Groceries', 'testing', '1', 'active', '10X10', 'Groceries', '2023-01-02 01:58:06', '2023-01-02 01:58:06'),
(18, 'Fruits & Vegetables', 'testing', '1', 'active', '10X10', 'Fruits & Vegetables', '2023-01-02 01:58:38', '2023-01-02 01:58:38'),
(19, 'Chicken & See Food', 'testing', '1', 'active', '10X10', 'Chicken & See Food', '2023-01-02 01:59:03', '2023-01-02 01:59:03'),
(20, 'Beverages & Bars', 'testing', '1', 'active', '10X10', 'Beverages & Bars', '2023-01-02 02:00:47', '2023-01-02 02:00:47'),
(21, 'Bakery Products', 'testing', '1', 'active', '10X10', 'Bakery Products', '2023-01-02 02:01:16', '2023-01-02 02:01:16'),
(22, 'Cooked & Sauces', 'testing', '1', 'active', '10X10', 'Cooked & Sauces', '2023-01-02 02:01:47', '2023-01-02 02:01:47'),
(23, 'Furnitures', 'testing', '1', 'active', '10X10', 'Furnitures', '2023-01-02 02:02:11', '2023-01-02 02:02:11'),
(24, 'Laundry', 'testing', '1', 'active', '10X10', 'Laundry', '2023-01-02 02:02:34', '2023-01-02 02:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`id`, `name`, `mobile`, `email`, `address`, `city`, `pin`, `created_at`, `updated_at`) VALUES
(1, 'Vachaspati', '7020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-10 03:37:59', '2023-02-10 03:37:59'),
(2, 'dfsdf', '5645', 'sdsd', 'sdsd', 'sdsdfdf', '556311', '2023-02-11 02:24:18', '2023-02-11 02:24:18'),
(3, 'Krishna', '8020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 02:24:54', '2023-02-11 02:24:54'),
(4, 'Vachaspati Anna', '88020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:43:12', '2023-02-11 04:43:12'),
(5, 'Vachaspati Anna', '88020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:43:13', '2023-02-11 04:43:13'),
(6, 'Vachaspati aa', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:43:41', '2023-02-11 04:43:41'),
(7, 'dfsdf', '5645', 'sdsd', 'sdsd', 'sdsdfdf', '556311', '2023-02-11 04:45:51', '2023-02-11 04:45:51'),
(8, 'Vachaspati aa', '7020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:46:15', '2023-02-11 04:46:15'),
(9, 'Vachaspati sd', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:46:39', '2023-02-11 04:46:39'),
(10, 'Vachaspati sd', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:48:45', '2023-02-11 04:48:45'),
(11, 'Vachaspati sd', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 04:54:46', '2023-02-11 04:54:46'),
(12, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:01:05', '2023-02-11 05:01:05'),
(13, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:02:48', '2023-02-11 05:02:48'),
(14, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:10:00', '2023-02-11 05:10:00'),
(15, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:17:58', '2023-02-11 05:17:58'),
(16, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:19:23', '2023-02-11 05:19:23'),
(17, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:22:39', '2023-02-11 05:22:39'),
(18, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:23:21', '2023-02-11 05:23:21'),
(19, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:24:50', '2023-02-11 05:24:50'),
(20, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:27:18', '2023-02-11 05:27:18'),
(21, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(22, 'Vachaspati anna', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(23, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(24, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(25, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(26, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(27, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(28, 'abhi', '5664564', 'abc@gmail.com', 'dvnkdjv', 'dvsdf', '412005', '2023-02-11 06:31:55', '2023-02-11 06:31:55'),
(29, 'abhi', '5664564', 'abc@gmail.com', 'dvnkdjv', 'dvsdf', '412005', '2023-02-11 06:32:05', '2023-02-11 06:32:05'),
(30, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:33:31', '2023-02-11 06:33:31'),
(31, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:33:37', '2023-02-11 06:33:37'),
(32, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:34:43', '2023-02-11 06:34:43'),
(33, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:35:19', '2023-02-11 06:35:19'),
(34, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:35:29', '2023-02-11 06:35:29'),
(35, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:35:49', '2023-02-11 06:35:49'),
(36, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:38:12', '2023-02-11 06:38:12'),
(37, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:40:47', '2023-02-11 06:40:47'),
(38, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:42:01', '2023-02-11 06:42:01'),
(39, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:42:02', '2023-02-11 06:42:02'),
(40, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:43:20', '2023-02-11 06:43:20'),
(41, 'Vachaspati Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:46:30', '2023-02-11 06:46:30'),
(42, 'kri', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-02-11 06:49:23', '2023-02-11 06:49:23'),
(43, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-03-13 01:43:19', '2023-03-13 01:43:19'),
(44, 'Vachaspati Devidas Annaldas', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'SOLAPUR', '413002', '2023-03-13 01:44:12', '2023-03-13 01:44:12'),
(45, 'Vachaspati', '07020270105', 'annaldasvachaspati@gmail.com', '102 B 16 Bhavani Peth, Solapur', 'Solapur', '413002', '2023-03-13 02:24:29', '2023-03-13 02:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_07_054951_create_categories_table', 1),
(6, '2022_11_07_060206_create_shopee_bills_table', 1),
(7, '2022_11_07_065127_create_orders_table', 1),
(8, '2022_11_07_071452_create_shopee_customers_table', 1),
(9, '2022_11_08_073811_create_products_table', 1),
(10, '2022_11_08_105854_create_shopee_registrations_table', 1),
(11, '2022_11_10_071454_create_subcategories_table', 2),
(12, '2023_01_09_071226_create_register_news_table', 2),
(13, '2023_01_10_061736_create_carts_table', 3),
(14, '2023_02_10_071058_create_customerdetails_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bid`, `pid`, `price`, `disc`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, '5', '5', '500', '5', '8', '40000', '2023-02-11 04:45:51', '2023-02-11 04:45:51'),
(2, '19', '8', '20', '5', '7', '133', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(3, '19', '9', '30', '5', '5', '142.5', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(4, '19', '12', '800', '5', '1', '760', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(5, '19', '6', '50', '5', '1', '47.5', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(6, '20', '8', '20', '5', '7', '133', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(7, '20', '9', '30', '5', '5', '142.5', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(8, '20', '12', '800', '5', '1', '760', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(9, '20', '6', '50', '5', '1', '47.5', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(10, '20', '10', '250', '5', '2', '475', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(11, '21', '8', '20', '5', '7', '133', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(12, '21', '9', '30', '5', '5', '142.5', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(13, '21', '12', '800', '5', '1', '760', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(14, '21', '6', '50', '5', '1', '47.5', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(15, '21', '10', '250', '5', '2', '475', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(16, '22', '8', '20', '5', '7', '133', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(17, '22', '9', '30', '5', '5', '142.5', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(18, '22', '12', '800', '5', '1', '760', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(19, '22', '6', '50', '5', '1', '47.5', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(20, '22', '10', '250', '5', '2', '475', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(21, '23', '8', '20', '5', '7', '133', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(22, '23', '9', '30', '5', '5', '142.5', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(23, '23', '12', '800', '5', '1', '760', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(24, '23', '6', '50', '5', '1', '47.5', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(25, '23', '10', '250', '5', '2', '475', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(26, '24', '8', '20', '5', '7', '133', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(27, '24', '9', '30', '5', '5', '142.5', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(28, '24', '12', '800', '5', '1', '760', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(29, '24', '6', '50', '5', '1', '47.5', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(30, '24', '10', '250', '5', '2', '475', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(31, '25', '8', '20', '5', '7', '133', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(32, '25', '9', '30', '5', '5', '142.5', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(33, '25', '12', '800', '5', '1', '760', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(34, '25', '6', '50', '5', '1', '47.5', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(35, '25', '10', '250', '5', '2', '475', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(36, '26', '12', '800', '5', '3', '2280', '2023-02-11 06:31:55', '2023-02-11 06:31:55'),
(37, '27', '12', '800', '5', '3', '2280', '2023-02-11 06:32:05', '2023-02-11 06:32:05'),
(38, '28', '11', '50', '5', '2', '95', '2023-02-11 06:33:31', '2023-02-11 06:33:31'),
(39, '29', '11', '50', '5', '2', '95', '2023-02-11 06:33:37', '2023-02-11 06:33:37'),
(40, '30', '11', '50', '5', '2', '95', '2023-02-11 06:34:43', '2023-02-11 06:34:43'),
(41, '31', '11', '50', '5', '2', '95', '2023-02-11 06:35:19', '2023-02-11 06:35:19'),
(42, '32', '11', '50', '5', '2', '95', '2023-02-11 06:35:29', '2023-02-11 06:35:29'),
(43, '33', '11', '50', '5', '2', '95', '2023-02-11 06:35:49', '2023-02-11 06:35:49'),
(44, '34', '11', '50', '5', '2', '95', '2023-02-11 06:38:12', '2023-02-11 06:38:12'),
(45, '35', '11', '50', '5', '2', '95', '2023-02-11 06:40:47', '2023-02-11 06:40:47'),
(46, '36', '11', '50', '5', '2', '95', '2023-02-11 06:42:01', '2023-02-11 06:42:01'),
(47, '37', '11', '50', '5', '2', '95', '2023-02-11 06:42:02', '2023-02-11 06:42:02'),
(48, '38', '12', '800', '5', '2', '1520', '2023-02-11 06:43:20', '2023-02-11 06:43:20'),
(49, '38', '7', '30', '5', '4', '114', '2023-02-11 06:43:20', '2023-02-11 06:43:20'),
(50, '39', '9', '30', '5', '4', '114', '2023-02-11 06:46:30', '2023-02-11 06:46:30'),
(51, '40', '7', '30', '5', '7', '199.5', '2023-02-11 06:49:23', '2023-02-11 06:49:23'),
(52, '41', '10', '250', '5', '3', '712.5', '2023-03-13 01:43:19', '2023-03-13 01:43:19'),
(53, '41', '7', '30', '5', '3', '85.5', '2023-03-13 01:43:19', '2023-03-13 01:43:19'),
(54, '41', '7', '30', '5', '6', '171', '2023-03-13 01:43:19', '2023-03-13 01:43:19'),
(55, '42', '10', '250', '5', '5', '1187.5', '2023-03-13 01:44:12', '2023-03-13 01:44:12'),
(56, '43', '6', '50', '5', '4', '190', '2023-03-13 02:24:29', '2023-03-13 02:24:29'),
(57, '43', '7', '30', '5', '8', '228', '2023-03-13 02:24:29', '2023-03-13 02:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_purchase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `margin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `safety_information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_disclaimer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `packing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `des`, `img`, `hsn`, `gst`, `features`, `price_sale`, `price_purchase`, `margin`, `safety_information`, `ingredients`, `directions`, `legal_disclaimer`, `pstatus`, `category`, `brands`, `pcode`, `discount`, `packing`, `created_at`, `updated_at`) VALUES
(6, 'Parle G', 'Parle G', 'Testing', '1', '1', '1', '50', '20', '10X10', 'dfsdgegd', 'advadva', 'advadvad', 'advadvdav', 'active', '17', 'davadvad', 'advadv', '5', 'advasdvav', '2023-01-02 02:16:44', '2023-01-02 02:16:44'),
(7, 'Apple', 'Apple', 'Testing', '1', '1', '1', '30', '20', '10X10', 'advadv', 'advadva', 'advadvad', 'advadvdav', 'active', '18', 'aefeafae', 'advadv', '5', 'advasdvav', '2023-01-02 02:20:57', '2023-01-02 02:20:57'),
(8, 'Egg', 'Egg', 'Testing', 'svsdv', 'vsdvsdv', 'dsvsdv', '20', '15', '10X10', 'advadv', 'advadva', 'asefgeafea', 'advadvdav', 'active', '19', 'aefeafae', 'advadv', '5', 'advasdvav', '2023-01-02 02:22:30', '2023-01-02 02:22:30'),
(9, 'String', 'String', 'Testing', '1', '1', '1', '30', '20', '10X10', 'dfsdgegd', 'advadva', 'advadvad', 'advadvdav', 'active', '20', 'aefeafae', 'advadv', '5', 'advasdvav', '2023-01-02 02:23:29', '2023-01-02 02:23:29'),
(10, 'Cake', 'Cake', 'Testing', 'svsdv', 'vsdvsdv', '1', '250', '230', '10X10', 'advadv', 'advadva', 'asefgeafea', 'aefgaegfae', 'active', '21', 'aefeafae', 'advadv', '5', 'advasdvav', '2023-01-02 02:24:35', '2023-01-02 02:24:35'),
(11, 'Tomato Sauce', 'Tomato Sauce', 'Testing', '1', 'vsdvsdv', 'dsvsdv', '50', '45', '500', 'advadv', 'advadva', 'asefgeafea', 'advadvdav', 'active', '22', 'davadvad', 'advadv', '5', 'davaefaefafaae', '2023-01-02 02:26:04', '2023-01-02 02:26:04'),
(12, 'Chair', 'Chair', 'Testing', 'svsdv', 'vsdvsdv', 'dsvsdv', '800', '700', '10X10', 'advadv', 'advadva', 'asefgeafea', 'advadvdav', 'active', '23', 'aefeafae', 'aefaefefewfwegf', '5', 'davaefaefafaae', '2023-01-02 02:27:11', '2023-01-02 02:27:11'),
(13, 'T-Shirt', 'T-Shirt', 'Testing', 'svsdv', 'vsdvsdv', 'dsvsdv', '500', '400', '10X10', 'advadv', 'advadva', 'advadvad', 'advadvdav', 'active', '24', 'aefeafae', 'advadv', '5', 'davaefaefafaae', '2023-01-02 02:28:11', '2023-01-02 02:28:11'),
(14, 'Tiger', 'mnb,mjn', 'Testing', 'svsdv', 'vsdvsdv', 'dsvsdv', '30', '50', '10X10', 'advadv', 'advadva', 'asefgeafea', 'advadvdav', 'active', '17', 'davadvad', 'advadv', '5', 'davaefaefafaae', '2023-01-05 02:39:22', '2023-01-05 02:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `register_news`
--

CREATE TABLE `register_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_news`
--

INSERT INTO `register_news` (`id`, `fname`, `email`, `mobile`, `password`, `created_at`, `updated_at`) VALUES
(1, 'va', 'abc@gmail.com', '12122', '$2y$10$nRV3KCkQtJUuN40gRnXEKePjytBP3bB66gPSvLxJkbqbj6SAx.AbK', '2023-01-09 02:16:46', '2023-01-09 02:16:46'),
(2, 'Vachaspati', 'annaldasvachaspati@gmail.com', '7020270105', '$2y$10$Vyvy057i9VLmbgyK8oPSr.27RZ37VZB2lkUKLTc4DLcvCI1/VZiOm', '2023-01-09 02:17:17', '2023-01-09 02:17:17'),
(3, 'Vachaspati', 'annaldasvachaspati11@gmail.com', '7020270105', '$2y$10$ae28LsgL2rTPR.iipaI/XefAPxC.FmMH.dLRifuj/5sHuZRxd3FKu', '2023-01-09 02:18:30', '2023-01-09 02:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_bills`
--

CREATE TABLE `shopee_bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_made` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exh_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopee_bills`
--

INSERT INTO `shopee_bills` (`id`, `cid`, `bill_amount`, `bill_discount`, `bill_date`, `pay_made`, `delivery_status`, `bill_status`, `exh_status`, `created_at`, `updated_at`) VALUES
(1, '3', '1093', '0', '2023-2-11/13:24:53', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 02:24:54', '2023-02-11 02:24:54'),
(2, '4', '1093', '0', '2023-2-11/15:43:11', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:43:12', '2023-02-11 04:43:12'),
(3, '5', '1093', '0', '2023-2-11/15:43:13', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:43:13', '2023-02-11 04:43:13'),
(4, '6', '1093', '0', '2023-2-11/15:43:40', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:43:41', '2023-02-11 04:43:41'),
(5, '7', '5200', '0', '05-11-2023', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:45:51', '2023-02-11 04:45:51'),
(6, '8', '1093', '0', '2023-2-11/15:46:14', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:46:15', '2023-02-11 04:46:15'),
(7, '9', '1093', '0', '2023-2-11/15:46:39', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:46:39', '2023-02-11 04:46:39'),
(8, '10', '1093', '0', '2023-2-11/15:48:44', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:48:45', '2023-02-11 04:48:45'),
(9, '11', '1093', '0', '2023-2-11/15:54:45', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 04:54:46', '2023-02-11 04:54:46'),
(10, '12', '1093', '0', '2023-2-11/16:1:4', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:01:05', '2023-02-11 05:01:05'),
(11, '13', '1093', '0', '2023-2-11/16:2:47', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:02:48', '2023-02-11 05:02:48'),
(12, '14', '1093', '0', '2023-2-11/16:10:0', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:10:00', '2023-02-11 05:10:00'),
(13, '15', '1093', '0', '2023-2-11/16:17:58', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:17:58', '2023-02-11 05:17:58'),
(14, '16', '1093', '0', '2023-2-11/16:19:23', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:19:23', '2023-02-11 05:19:23'),
(15, '17', '1093', '0', '2023-2-11/16:22:39', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:22:39', '2023-02-11 05:22:39'),
(16, '18', '1093', '0', '2023-2-11/16:23:20', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:23:21', '2023-02-11 05:23:21'),
(17, '19', '1093', '0', '2023-2-11/16:24:49', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:24:50', '2023-02-11 05:24:50'),
(18, '20', '1093', '0', '2023-2-11/16:27:18', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:27:18', '2023-02-11 05:27:18'),
(19, '21', '1093', '0', '2023-2-11/16:31:13', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:31:13', '2023-02-11 05:31:13'),
(20, '22', '1568', '0', '2023-2-11/16:49:34', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 05:49:35', '2023-02-11 05:49:35'),
(21, '23', '1568', '0', '2023-2-11/17:20:33', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:20:34', '2023-02-11 06:20:34'),
(22, '24', '1568', '0', '2023-2-11/17:20:54', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:20:55', '2023-02-11 06:20:55'),
(23, '25', '1568', '0', '2023-2-11/17:23:1', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:23:02', '2023-02-11 06:23:02'),
(24, '26', '1568', '0', '2023-2-11/17:29:45', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:29:46', '2023-02-11 06:29:46'),
(25, '27', '1568', '0', '2023-2-11/17:29:47', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:29:48', '2023-02-11 06:29:48'),
(26, '28', '2290', '0', '2023-2-11/17:31:55', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:31:55', '2023-02-11 06:31:55'),
(27, '29', '2290', '0', '2023-2-11/17:32:4', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:32:05', '2023-02-11 06:32:05'),
(28, '30', '105', '0', '2023-2-11/17:33:30', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:33:31', '2023-02-11 06:33:31'),
(29, '31', '105', '0', '2023-2-11/17:33:36', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:33:37', '2023-02-11 06:33:37'),
(30, '32', '105', '0', '2023-2-11/17:34:42', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:34:43', '2023-02-11 06:34:43'),
(31, '33', '105', '0', '2023-2-11/17:35:19', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:35:19', '2023-02-11 06:35:19'),
(32, '34', '105', '0', '2023-2-11/17:35:28', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:35:29', '2023-02-11 06:35:29'),
(33, '35', '105', '0', '2023-2-11/17:35:48', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:35:49', '2023-02-11 06:35:49'),
(34, '36', '105', '0', '2023-2-11/17:38:11', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:38:12', '2023-02-11 06:38:12'),
(35, '37', '105', '0', '2023-2-11/17:40:47', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:40:47', '2023-02-11 06:40:47'),
(36, '38', '105', '0', '2023-2-11/17:42:0', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:42:01', '2023-02-11 06:42:01'),
(37, '39', '105', '0', '2023-2-11/17:42:2', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:42:02', '2023-02-11 06:42:02'),
(38, '40', '1644', '0', '2023-2-11/17:43:20', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:43:20', '2023-02-11 06:43:20'),
(39, '41', '124', '0', '2023-2-11/17:46:30', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:46:30', '2023-02-11 06:46:30'),
(40, '42', '209.5', '0', '2023-2-11/17:49:23', 'Cash', 'Pending', 'Pending', 'Pending', '2023-02-11 06:49:23', '2023-02-11 06:49:23'),
(41, '43', '979', '0', '2023-3-13/12:43:18', 'Cash', 'Pending', 'Pending', 'Pending', '2023-03-13 01:43:19', '2023-03-13 01:43:19'),
(42, '44', '1197.5', '0', '2023-3-13/12:44:11', 'Cash', 'Pending', 'Pending', 'Pending', '2023-03-13 01:44:12', '2023-03-13 01:44:12'),
(43, '45', '428', '0', '2023-3-13/13:24:29', 'Cash', 'Pending', 'Pending', 'Pending', '2023-03-13 02:24:29', '2023-03-13 02:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_registrations`
--

CREATE TABLE `shopee_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tehsil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopee_registrations`
--

INSERT INTO `shopee_registrations` (`id`, `full_name`, `email`, `address`, `landmark`, `city`, `state`, `tehsil`, `pin`, `mobile`, `pan`, `upi`, `ref`, `password`, `status`, `under_ref`, `pstatus`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'abdc@gmail.com', 'asa', 'sdsd', 'dfdf', 'dff', 'sdsd', '152325', '1213545658', '31321', '0323', 'asds', '1234', 'active', 'sda', 'active', NULL, NULL),
(2, 'abc', 'abc@gmail.com', 'sdfsdf', 'sdsfsdf', 'sfsdf', 'dfdf', 'fgsfg', '89845', '65135', '15312', 'svvfds', 'sgs', '$2y$10$tRrwzrc.1lfNMs/AGqGbbu/XvG.VtlI8Q9./ZVEr2ZA6LM.EVnEqe', 'active', 'sdfadf', 'active', '2023-01-09 03:39:09', '2023-01-09 03:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `margin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cname`, `sub_name`, `img`, `description`, `margin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bakery Products', 'Cake', 'Testing', 'cake', '10', 'active', '2023-02-14 01:15:20', '2023-02-14 01:15:20'),
(2, 'Furnitures', 'Table', 'Testing', 'Table', '10X10', 'active', '2023-02-14 01:17:38', '2023-02-14 01:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdetails`
--
ALTER TABLE `customerdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_news`
--
ALTER TABLE `register_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_bills`
--
ALTER TABLE `shopee_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_registrations`
--
ALTER TABLE `shopee_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customerdetails`
--
ALTER TABLE `customerdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register_news`
--
ALTER TABLE `register_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shopee_bills`
--
ALTER TABLE `shopee_bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `shopee_registrations`
--
ALTER TABLE `shopee_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
