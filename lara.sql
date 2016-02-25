-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2016 at 08:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `name`, `cat_id`, `author`, `image`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdsdsd', '1', 'test', 'sdsdsd'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdsdsd', '2', 'sdsdsdA', 'sdsdsd'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdsdsd', '3', 'sdsdsd', 'sdsdsd'),
(5, '2016-02-19 04:45:44', '2016-02-19 04:47:56', 'ajeet', '', 'jaiswal', ''),
(6, '2016-02-19 05:15:11', '2016-02-19 05:15:11', 'ajeet kumar123', '', '', ''),
(8, '2016-02-19 05:35:26', '2016-02-19 05:35:26', 'ajeet', '', 'author', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_11_073016_add_votes_to_users_table', 2),
('2016_02_18_115422_create_books_table', 3),
('2016_02_18_115425_create_books_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vote` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `vote`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'R', NULL, 'test', 'a@gmail.com', 'pass@123', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'R', NULL, 'ajeet', 'jeet.super@gmail.com', '$2y$10$RDfQ02x1O4bQsbjAgHbNAOm85/j9mnuaBkgKukM5BpNP8FqMoOXoC', '2dxnHnTCd3jFC4Mw8UJ9BfLTSpSqjK0mnl7iAw2CRWe9f1lpPIKqh9Zw5h7s', '2016-02-11 04:21:17', '2016-02-11 04:22:04'),
(3, 'A', NULL, 'ajeet jaiswal', 'jeet.super1@gmail.com', '$2y$10$21.Fr6wogIUYKPkPVcSn7uNSTJVB1IPIUFDE851b9XFebgksJoHWS', 'pBcRVs6CsmmxZ9geyfQvGIQZB7Z56wXCNBetN9QQXFmWlErDzFfoIzMyhcfY', '2016-02-15 02:17:32', '2016-02-22 05:30:57'),
(4, '', NULL, 'ajeet85', 'jeet.super11@gmail.com', '$2y$10$MVXutSGPI2AmLcWG8dqfR.pQFn7imcVzDonKtmAwe53mecib4MkNK', 'iQo3DsSYR8p8UWEDuhWE0D2RTwGs7mCrVbRLLsrRrWxioHDnlqhY2FNqcY0V', '2016-02-22 04:32:10', '2016-02-22 05:40:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
