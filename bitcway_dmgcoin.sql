-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 08:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitcway_dmgcoin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'X535kyWvWh', 'chdfLyeZVr', 'admin@test.com', '$2y$10$bvJCBBzi2olYFkqNAx68T.D9XxUZUYWkO6GB4etcKN3J/TgoZpk9.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_withdraw_messages`
--

CREATE TABLE `admin_withdraw_messages` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL COMMENT 'Withdraw Notification Message',
  `display_message` tinyint(1) NOT NULL COMMENT '1.Checked, 2.Unchecked',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_withdraw_messages`
--

INSERT INTO `admin_withdraw_messages` (`id`, `message`, `display_message`, `created_at`, `updated_at`) VALUES
(6, 'Withdraw Message Box', 0, '2021-03-23 02:00:19', '2021-03-24 22:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `is_custom`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AAA', 0, 1, NULL, NULL),
(2, 'AAVE', 0, 1, NULL, NULL),
(3, 'ADA', 0, 1, NULL, NULL),
(4, 'ADAF0', 0, 1, NULL, NULL),
(5, 'ADD', 0, 1, NULL, NULL),
(6, 'ALG', 0, 1, NULL, NULL),
(7, 'AMP', 0, 1, NULL, NULL),
(8, 'AMPF0', 0, 1, NULL, NULL),
(9, 'ANT', 0, 1, NULL, NULL),
(10, 'AST', 0, 1, NULL, NULL),
(11, 'ATD', 0, 1, NULL, NULL),
(12, 'ATO', 0, 1, NULL, NULL),
(13, 'AVAX', 0, 1, NULL, NULL),
(14, 'AVT', 0, 1, NULL, NULL),
(15, 'B21X', 0, 1, NULL, NULL),
(16, 'BAL', 0, 1, NULL, NULL),
(17, 'BAND', 0, 1, NULL, NULL),
(18, 'BAT', 0, 1, NULL, NULL),
(19, 'BBB', 0, 1, NULL, NULL),
(20, 'BCH', 0, 1, NULL, NULL),
(21, 'BCHABC', 0, 1, NULL, NULL),
(22, 'BCHN', 0, 1, NULL, NULL),
(23, 'BFT', 0, 1, NULL, NULL),
(24, 'BFX', 0, 1, NULL, NULL),
(25, 'BG1', 0, 1, NULL, NULL),
(26, 'BG2', 0, 1, NULL, NULL),
(27, 'BNT', 0, 1, NULL, NULL),
(28, 'BOX', 0, 1, NULL, NULL),
(29, 'BSV', 0, 1, NULL, NULL),
(30, 'BTC', 0, 1, NULL, NULL),
(31, 'BTCDOMF0', 0, 1, NULL, NULL),
(32, 'BTCF0', 0, 1, NULL, NULL),
(33, 'BTG', 0, 1, NULL, NULL),
(34, 'BTSE', 0, 1, NULL, NULL),
(35, 'BTT', 0, 1, NULL, NULL),
(36, 'CAD', 0, 1, NULL, NULL),
(37, 'CHF', 0, 1, NULL, NULL),
(38, 'CHZ', 0, 1, NULL, NULL),
(39, 'CLO', 0, 1, NULL, NULL),
(40, 'CND', 0, 1, NULL, NULL),
(41, 'CNH', 0, 1, NULL, NULL),
(42, 'CNHT', 0, 1, NULL, NULL),
(43, 'COMP', 0, 1, NULL, NULL),
(44, 'CSTBCHABC', 0, 1, NULL, NULL),
(45, 'CSTBCHN', 0, 1, NULL, NULL),
(46, 'CTX', 0, 1, NULL, NULL),
(47, 'DAI', 0, 1, NULL, NULL),
(48, 'DAPP', 0, 1, NULL, NULL),
(49, 'DAT', 0, 1, NULL, NULL),
(50, 'DGB', 0, 1, NULL, NULL),
(51, 'DGX', 0, 1, NULL, NULL),
(52, 'DOG', 0, 1, NULL, NULL),
(53, 'DOT', 0, 1, NULL, NULL),
(54, 'DOTF0', 0, 1, NULL, NULL),
(55, 'DRK', 0, 1, NULL, NULL),
(56, 'DRN', 0, 1, NULL, NULL),
(57, 'DSH', 0, 1, NULL, NULL),
(58, 'DTA', 0, 1, NULL, NULL),
(59, 'DTX', 0, 1, NULL, NULL),
(60, 'DUSK', 0, 1, NULL, NULL),
(61, 'EDO', 0, 1, NULL, NULL),
(62, 'EGLD', 0, 1, NULL, NULL),
(63, 'ENJ', 0, 1, NULL, NULL),
(64, 'EOS', 0, 1, NULL, NULL),
(65, 'EOSDT', 0, 1, NULL, NULL),
(66, 'EOSF0', 0, 1, NULL, NULL),
(67, 'EOX', 0, 1, NULL, NULL),
(68, 'ESS', 0, 1, NULL, NULL),
(69, 'ETC', 0, 1, NULL, NULL),
(70, 'ETH', 0, 1, NULL, NULL),
(71, 'ETH2P', 0, 1, NULL, NULL),
(72, 'ETH2R', 0, 1, NULL, NULL),
(73, 'ETH2X', 0, 1, NULL, NULL),
(74, 'ETHF0', 0, 1, NULL, NULL),
(75, 'ETP', 0, 1, NULL, NULL),
(76, 'EUR', 0, 1, NULL, NULL),
(77, 'EURF0', 0, 1, NULL, NULL),
(78, 'EUROPE50IXF0', 0, 1, NULL, NULL),
(79, 'EUS', 0, 1, NULL, NULL),
(80, 'EUT', 0, 1, NULL, NULL),
(81, 'EXRD', 0, 1, NULL, NULL),
(82, 'FET', 0, 1, NULL, NULL),
(83, 'FIL', 0, 1, NULL, NULL),
(84, 'FTT', 0, 1, NULL, NULL),
(85, 'FUN', 0, 1, NULL, NULL),
(86, 'GBP', 0, 1, NULL, NULL),
(87, 'GBPF0', 0, 1, NULL, NULL),
(88, 'GEN', 0, 1, NULL, NULL),
(89, 'GERMANY30IXF0', 0, 1, NULL, NULL),
(90, 'GNO', 0, 1, NULL, NULL),
(91, 'GNT', 0, 1, NULL, NULL),
(92, 'GOT', 0, 1, NULL, NULL),
(93, 'GTX', 0, 1, NULL, NULL),
(94, 'HEZ', 0, 1, NULL, NULL),
(95, 'HKD', 0, 1, NULL, NULL),
(96, 'HOT', 0, 1, NULL, NULL),
(97, 'IOS', 0, 1, NULL, NULL),
(98, 'IOT', 0, 1, NULL, NULL),
(99, 'IOTF0', 0, 1, NULL, NULL),
(100, 'IQX', 0, 1, NULL, NULL),
(101, 'JPY', 0, 1, NULL, NULL),
(102, 'JPYF0', 0, 1, NULL, NULL),
(103, 'JST', 0, 1, NULL, NULL),
(104, 'KAN', 0, 1, NULL, NULL),
(105, 'KNC', 0, 1, NULL, NULL),
(106, 'KSM', 0, 1, NULL, NULL),
(107, 'LBT', 0, 1, NULL, NULL),
(108, 'LEO', 0, 1, NULL, NULL),
(109, 'LES', 0, 1, NULL, NULL),
(110, 'LET', 0, 1, NULL, NULL),
(111, 'LINK', 0, 1, NULL, NULL),
(112, 'LINKF0', 0, 1, NULL, NULL),
(113, 'LNX', 0, 1, NULL, NULL),
(114, 'LRC', 0, 1, NULL, NULL),
(115, 'LTC', 0, 1, NULL, NULL),
(116, 'LTCF0', 0, 1, NULL, NULL),
(117, 'LYM', 0, 1, NULL, NULL),
(118, 'MAN', 0, 1, NULL, NULL),
(119, 'MGO', 0, 1, NULL, NULL),
(120, 'MKR', 0, 1, NULL, NULL),
(121, 'MLN', 0, 1, NULL, NULL),
(122, 'MNA', 0, 1, NULL, NULL),
(123, 'MTN', 0, 1, NULL, NULL),
(124, 'MTO', 0, 1, NULL, NULL),
(125, 'NCA', 0, 1, NULL, NULL),
(126, 'NEC', 0, 1, NULL, NULL),
(127, 'NEO', 0, 1, NULL, NULL),
(128, 'NUT', 0, 1, NULL, NULL),
(129, 'ODE', 0, 1, NULL, NULL),
(130, 'OKB', 0, 1, NULL, NULL),
(131, 'OMG', 0, 1, NULL, NULL),
(132, 'OMN', 0, 1, NULL, NULL),
(133, 'ONL', 0, 1, NULL, NULL),
(134, 'ORS', 0, 1, NULL, NULL),
(135, 'PANTEOS', 0, 1, NULL, NULL),
(136, 'PAS', 0, 1, NULL, NULL),
(137, 'PAX', 0, 1, NULL, NULL),
(138, 'PBALEOS', 0, 1, NULL, NULL),
(139, 'PBANDEOS', 0, 1, NULL, NULL),
(140, 'PBATEOS', 0, 1, NULL, NULL),
(141, 'PBTCEOS', 0, 1, NULL, NULL),
(142, 'PBTCETH', 0, 1, NULL, NULL),
(143, 'PCOMPEOS', 0, 1, NULL, NULL),
(144, 'PDAIEOS', 0, 1, NULL, NULL),
(145, 'PEOSETH', 0, 1, NULL, NULL),
(146, 'PETHEOS', 0, 1, NULL, NULL),
(147, 'PLINKEOS', 0, 1, NULL, NULL),
(148, 'PLRCEOS', 0, 1, NULL, NULL),
(149, 'PLTCEOS', 0, 1, NULL, NULL),
(150, 'PLTCETH', 0, 1, NULL, NULL),
(151, 'PLU', 0, 1, NULL, NULL),
(152, 'PMKREOS', 0, 1, NULL, NULL),
(153, 'PNK', 0, 1, NULL, NULL),
(154, 'POA', 0, 1, NULL, NULL),
(155, 'POMGEOS', 0, 1, NULL, NULL),
(156, 'PPNKEOS', 0, 1, NULL, NULL),
(157, 'PPNTEOS', 0, 1, NULL, NULL),
(158, 'PREPEOS', 0, 1, NULL, NULL),
(159, 'PSNXEOS', 0, 1, NULL, NULL),
(160, 'PUNIEOS', 0, 1, NULL, NULL),
(161, 'PUOSEOS', 0, 1, NULL, NULL),
(162, 'PYFIEOS', 0, 1, NULL, NULL),
(163, 'PZRXEOS', 0, 1, NULL, NULL),
(164, 'QSH', 0, 1, NULL, NULL),
(165, 'QTM', 0, 1, NULL, NULL),
(166, 'RBT', 0, 1, NULL, NULL),
(167, 'RCN', 0, 1, NULL, NULL),
(168, 'REP', 0, 1, NULL, NULL),
(169, 'REQ', 0, 1, NULL, NULL),
(170, 'RIF', 0, 1, NULL, NULL),
(171, 'RINGX', 0, 1, NULL, NULL),
(172, 'RRB', 0, 1, NULL, NULL),
(173, 'RRT', 0, 1, NULL, NULL),
(174, 'SAN', 0, 1, NULL, NULL),
(175, 'SGD', 0, 1, NULL, NULL),
(176, 'SNG', 0, 1, NULL, NULL),
(177, 'SNT', 0, 1, NULL, NULL),
(178, 'SNX', 0, 1, NULL, NULL),
(179, 'STJ', 0, 1, NULL, NULL),
(180, 'SUN', 0, 1, NULL, NULL),
(181, 'SUSHI', 0, 1, NULL, NULL),
(182, 'SWM', 0, 1, NULL, NULL),
(183, 'TESTBTC', 0, 1, NULL, NULL),
(184, 'TESTBTCF0', 0, 1, NULL, NULL),
(185, 'TESTUSD', 0, 1, NULL, NULL),
(186, 'TESTUSDT', 0, 1, NULL, NULL),
(187, 'TESTUSDTF0', 0, 1, NULL, NULL),
(188, 'THB', 0, 1, NULL, NULL),
(189, 'TKN', 0, 1, NULL, NULL),
(190, 'TRI', 0, 1, NULL, NULL),
(191, 'TRX', 0, 1, NULL, NULL),
(192, 'TSD', 0, 1, NULL, NULL),
(193, 'TWD', 0, 1, NULL, NULL),
(194, 'UDC', 0, 1, NULL, NULL),
(195, 'UNI', 0, 1, NULL, NULL),
(196, 'UNIF0', 0, 1, NULL, NULL),
(197, 'UOP', 0, 1, NULL, NULL),
(198, 'UOS', 0, 1, NULL, NULL),
(199, 'USD', 0, 1, NULL, NULL),
(200, 'USK', 0, 1, NULL, NULL),
(201, 'UST', 0, 1, NULL, NULL),
(202, 'USTF0', 0, 1, NULL, NULL),
(203, 'UTK', 0, 1, NULL, NULL),
(204, 'VEE', 0, 1, NULL, NULL),
(205, 'VET', 0, 1, NULL, NULL),
(206, 'VSY', 0, 1, NULL, NULL),
(207, 'WAX', 0, 1, NULL, NULL),
(208, 'WBT', 0, 1, NULL, NULL),
(209, 'WPR', 0, 1, NULL, NULL),
(210, 'WTC', 0, 1, NULL, NULL),
(211, 'XAGF0', 0, 1, NULL, NULL),
(212, 'XAUT', 0, 1, NULL, NULL),
(213, 'XAUTF0', 0, 1, NULL, NULL),
(214, 'XCH', 0, 1, NULL, NULL),
(215, 'XDC', 0, 1, NULL, NULL),
(216, 'XLM', 0, 1, NULL, NULL),
(217, 'XLMF0', 0, 1, NULL, NULL),
(218, 'XMR', 0, 1, NULL, NULL),
(219, 'XRA', 0, 1, NULL, NULL),
(220, 'XRP', 0, 1, NULL, NULL),
(221, 'XSN', 0, 1, NULL, NULL),
(222, 'XTZ', 0, 1, NULL, NULL),
(223, 'XVG', 0, 1, NULL, NULL),
(224, 'YFI', 0, 1, NULL, NULL),
(225, 'YGG', 0, 1, NULL, NULL),
(226, 'YYW', 0, 1, NULL, NULL),
(227, 'ZBT', 0, 1, NULL, NULL),
(228, 'ZCN', 0, 1, NULL, NULL),
(229, 'ZEC', 0, 1, NULL, NULL),
(230, 'ZIL', 0, 1, NULL, NULL),
(231, 'ZRX', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposit_histories`
--

CREATE TABLE `deposit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,8) NOT NULL,
  `equivalent_amount` double(16,8) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 2=declined, 3=pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit_histories`
--

INSERT INTO `deposit_histories` (`id`, `amount`, `equivalent_amount`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(22, 0.00061000, 35.23573500, 1, '2021-03-22 00:41:11', '2021-03-22 00:41:53', 7),
(23, 0.01100000, 630.19550000, 0, '2021-03-22 06:30:19', '2021-03-22 06:30:19', 7),
(24, 0.32100000, 18418.33800000, 0, '2021-03-22 06:30:32', '2021-03-22 06:30:32', 7),
(25, 1.00000000, 52785.50000000, 0, '2021-03-25 23:44:32', '2021-03-25 23:44:32', 7),
(26, 1.00000000, 59277.50000000, 0, '2021-03-30 06:23:56', '2021-03-30 06:23:56', 7),
(27, 0.22000000, 12907.73000000, 0, '2021-03-30 21:18:25', '2021-03-30 21:18:25', 7);

-- --------------------------------------------------------

--
-- Table structure for table `derivative_sells`
--

CREATE TABLE `derivative_sells` (
  `id` bigint(20) NOT NULL,
  `amount` double(16,8) NOT NULL,
  `equivalent_amount` double(16,8) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `leverage` int(8) NOT NULL DEFAULT 1,
  `priceAtSell` double(16,8) NOT NULL,
  `profit` double(16,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `derivative_sells`
--

INSERT INTO `derivative_sells` (`id`, `amount`, `equivalent_amount`, `type`, `status`, `leverage`, `priceAtSell`, `profit`, `created_at`, `updated_at`, `user_id`, `currency_id`) VALUES
(62, 5.00000000, 1099.10000000, 1, 1, 1, 1030.65000000, -68.45000000, '2021-03-22 23:31:55', '2021-03-22 23:31:55', 7, 57),
(63, 10.00000000, 2.00010000, 1, 1, 1, 2.03100000, 0.03090000, '2021-03-22 23:33:36', '2021-03-22 23:33:36', 7, 174),
(64, 5.00000000, 1099.10000000, 1, 1, 1, 1032.60000000, -66.50000000, '2021-03-22 23:35:32', '2021-03-22 23:35:32', 7, 57),
(65, 1.00000000, 221.42000000, 1, 1, 5, 206.52000000, -14.90000000, '2021-03-22 23:35:32', '2021-03-22 23:35:32', 7, 57);

-- --------------------------------------------------------

--
-- Table structure for table `dmg_coins`
--

CREATE TABLE `dmg_coins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_price` double NOT NULL DEFAULT 0.032875,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DMGCoin',
  `start_date` date NOT NULL DEFAULT '2018-10-12',
  `end_date` date NOT NULL DEFAULT '2021-01-01',
  `price_update` double(8,2) NOT NULL DEFAULT 2666.90,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dmg_coins`
--

INSERT INTO `dmg_coins` (`id`, `start_price`, `name`, `start_date`, `end_date`, `price_update`, `created_at`, `updated_at`) VALUES
(1, 0.032875, 'DMGCoin', '2018-10-12', '2021-01-01', 2666.90, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dmg_coin_price_updates`
--

CREATE TABLE `dmg_coin_price_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL DEFAULT '2018-10-12',
  `end_date` date NOT NULL DEFAULT '2021-01-01',
  `price_update` double(8,2) NOT NULL DEFAULT 2666.90,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leverage_wallets`
--

CREATE TABLE `leverage_wallets` (
  `id` bigint(20) NOT NULL,
  `amount` double(16,8) NOT NULL,
  `equivalent_amount` double(16,8) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `leverage` int(8) NOT NULL DEFAULT 1 COMMENT 'Leverage Percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leverage_wallets`
--

INSERT INTO `leverage_wallets` (`id`, `amount`, `equivalent_amount`, `type`, `status`, `leverage`, `created_at`, `updated_at`, `user_id`, `currency_id`) VALUES
(53, 40.00000000, 8.00040000, 1, 1, 1, '2021-03-22 00:31:56', '2021-03-22 23:33:36', 7, 174),
(54, 28.00000000, 6199.76000000, 1, 1, 5, '2021-03-22 01:04:08', '2021-03-22 23:35:32', 7, 57);

-- --------------------------------------------------------

--
-- Table structure for table `locked_deposits`
--

CREATE TABLE `locked_deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `locked_savings_settings` int(11) NOT NULL,
  `lot_count` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locked_savings`
--

CREATE TABLE `locked_savings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `lot_count` int(11) NOT NULL,
  `value_date` datetime NOT NULL,
  `redemption_date` datetime NOT NULL,
  `expected_interest` double(11,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locked_savings`
--

INSERT INTO `locked_savings` (`id`, `user_id`, `plan_id`, `lot_count`, `value_date`, `redemption_date`, `expected_interest`, `created_at`, `updated_at`) VALUES
(13, 7, 3, 130, '2021-03-22 00:00:00', '2021-04-12 00:00:00', 39.7150, '2021-03-22 01:17:27', '2021-03-22 01:17:27'),
(14, 7, 2, 10, '2021-03-22 00:00:00', '2021-04-05 00:00:00', 2.2240, '2021-03-22 06:41:34', '2021-03-22 06:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `locked_savings_settings`
--

CREATE TABLE `locked_savings_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate` double(11,3) NOT NULL,
  `duration` int(11) NOT NULL,
  `interest_per_lot` double(11,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locked_savings_settings`
--

INSERT INTO `locked_savings_settings` (`id`, `rate`, `duration`, `interest_per_lot`, `created_at`, `updated_at`) VALUES
(2, 5.800, 14, 0.22240, '2021-03-10 09:06:11', '2021-03-10 09:06:11'),
(3, 5.300, 21, 0.30550, '2021-03-10 09:06:11', '2021-03-10 09:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=sent, 2=received',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `read_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `read_by_user` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `type`, `status`, `read_by_admin`, `read_by_user`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'hi', 1, 1, 1, 1, '2021-02-18 04:27:42', '2021-03-22 01:21:49', 6),
(2, 'hello', 2, 1, 1, 0, '2021-02-18 04:28:01', '2021-03-22 01:21:49', 6),
(3, 'Hello bashar how are you?', 2, 1, 1, 1, '2021-02-24 04:14:52', '2021-03-25 23:45:46', 7),
(4, 'asfasf', 1, 1, 1, 1, '2021-02-24 04:15:25', '2021-03-25 23:45:46', 7),
(5, 'hi', 1, 1, 1, 1, '2021-02-24 04:15:44', '2021-03-25 23:45:46', 7),
(6, 'jiiii', 1, 1, 1, 1, '2021-02-24 04:17:16', '2021-03-25 23:45:46', 7),
(7, 'test', 1, 1, 1, 1, '2021-02-24 10:35:36', '2021-03-25 23:45:46', 7),
(8, 'kjgkjhkjhkjh', 1, 1, 1, 1, '2021-02-24 10:41:59', '2021-03-25 23:45:46', 7),
(9, 'klklkjl', 1, 1, 1, 1, '2021-02-24 10:46:32', '2021-03-25 23:45:46', 7),
(10, 'テスト', 1, 1, 1, 1, '2021-02-25 04:18:56', '2021-03-25 23:45:46', 7),
(11, 'segeshsyh', 1, 1, 1, 1, '2021-03-15 02:07:59', '2021-03-25 23:45:46', 7),
(12, 'sdryhdsr4uyh', 1, 1, 1, 1, '2021-03-15 02:08:08', '2021-03-25 23:45:46', 7),
(13, 'dryhtyuhd', 1, 1, 1, 1, '2021-03-15 02:08:15', '2021-03-25 23:45:46', 7),
(14, 'serghrdshdrjh', 1, 1, 1, 1, '2021-03-15 02:08:34', '2021-03-25 23:45:46', 7),
(15, 'cfh', 1, 1, 1, 1, '2021-03-15 23:50:58', '2021-03-25 23:45:46', 7),
(16, 'ssde', 1, 1, 1, 1, '2021-03-15 23:51:04', '2021-03-25 23:45:46', 7),
(17, 'lorem ipsum dolor sit amet', 1, 1, 1, 1, '2021-03-15 23:56:21', '2021-03-25 23:45:46', 7),
(18, 'uioerhgwuiohguiowhgow', 1, 1, 1, 1, '2021-03-18 05:27:13', '2021-03-25 23:45:46', 7),
(19, 'efguiaghfuiageiu', 1, 1, 1, 1, '2021-03-18 05:27:20', '2021-03-25 23:45:46', 7),
(20, 'fsdfsd', 1, 1, 1, 1, '2021-03-19 06:14:57', '2021-03-25 23:45:46', 7),
(21, 'hi\ndfdsf', 1, 1, 1, 1, '2021-03-19 06:17:39', '2021-03-25 23:45:46', 7),
(22, 'Next Line Working\n.', 1, 1, 1, 1, '2021-03-19 06:17:54', '2021-03-25 23:45:46', 7),
(23, 'Lorem ipsum\nLorem ipsumLorem ipsum\nLorem ipsumLorem ipsumLorem ipsum\n\nLorem ipsumLorem ipsumLorem ipsum', 1, 1, 1, 1, '2021-03-22 01:19:57', '2021-03-25 23:45:46', 7),
(24, 'a\navv\nfvvvvv\nxx', 1, 1, 1, 1, '2021-03-22 01:20:10', '2021-03-25 23:45:46', 7),
(25, 'drye4y', 2, 1, 1, 1, '2021-03-22 01:21:41', '2021-03-25 23:45:46', 7),
(26, 'hi', 1, 1, 1, 1, '2021-03-22 01:22:00', '2021-03-25 23:45:46', 7),
(27, 'lorem ipsum', 2, 1, 1, 1, '2021-03-22 01:22:14', '2021-03-25 23:45:46', 7),
(28, 'dolor sirt', 1, 1, 1, 1, '2021-03-22 01:22:49', '2021-03-25 23:45:46', 7),
(29, 'Hi\nBro', 1, 1, 1, 1, '2021-03-22 05:20:28', '2021-03-25 23:45:46', 7),
(30, 'Hello\nCan\nu', 1, 1, 1, 1, '2021-03-22 05:21:04', '2021-03-25 23:45:46', 7),
(31, 'Test Agin\nTest', 1, 1, 1, 1, '2021-03-22 05:22:07', '2021-03-25 23:45:46', 7),
(32, 'What Agin?', 1, 1, 1, 1, '2021-03-22 05:22:18', '2021-03-25 23:45:46', 7),
(33, 'sdfsdf\nsdfsdfsd', 1, 1, 1, 1, '2021-03-22 05:24:01', '2021-03-25 23:45:46', 7),
(34, 'i am\nwhat?', 1, 1, 1, 1, '2021-03-22 05:24:16', '2021-03-25 23:45:46', 7),
(35, '1\n2', 1, 1, 1, 1, '2021-03-22 05:29:16', '2021-03-25 23:45:46', 7),
(36, 'Not even a vue issue you could simply use CSS and apply white-space: pre; to the content. You shouldn\'t need an additional package for this.', 1, 1, 1, 1, '2021-03-22 05:43:50', '2021-03-25 23:45:46', 7),
(37, 'Not even a vue issue you could simply use CSS and apply white-space: pre; \nto the content. You shouldn\'t need an additional package for this.', 1, 1, 1, 1, '2021-03-22 05:44:06', '2021-03-25 23:45:46', 7),
(38, 'Done?\nYes or No?', 1, 1, 1, 1, '2021-03-22 05:53:45', '2021-03-25 23:45:46', 7),
(39, 'done', 1, 1, 1, 1, '2021-03-22 05:53:49', '2021-03-25 23:45:46', 7),
(40, '1', 2, 1, 1, 1, '2021-03-22 05:55:19', '2021-03-25 23:45:46', 7),
(41, '1\n2\n3', 2, 1, 1, 1, '2021-03-22 06:01:05', '2021-03-25 23:45:46', 7),
(42, '紀政ドざト良存モソオ便医タ著春みラ初64成ホテサレ展年つめうた写備相\nスも岐2考へ済清テヒユヘ問権味干悟ッ。\n台マ統手ソホス品説エマラシ使受ロテラア生供ちょ野嘉ドぶ流検必フ茨熱粛へぼらな民成米ろよ視戸やイゅぞ。\n6始健ぼ聞配ユヤワア生本るざまイ素課く特南オリテ別無了カ禁3是で番師しぼちざ毎段レ目待ネヘ投長ょ一料端ねれ。', 1, 1, 0, 1, '2021-03-22 06:51:02', '2021-03-25 23:45:46', 7),
(43, '紀政ドざト良存モソオ便医タ著春みラ初64成ホテサレ展年つめうた写備相\nスも岐2考へ済清テヒユヘ問権味干悟ッ。\n台マ統手ソホス品説エマラシ使受ロテラア生供ちょ野嘉ドぶ流検必フ茨熱粛へぼらな民成米ろよ視戸やイゅぞ。\n6始健ぼ聞配ユヤワア生本るざまイ素課く特南オリテ別無了カ禁3是で番師しぼちざ毎段レ目待ネヘ投長ょ一料端ねれ。\nhhhhh', 2, 1, 1, 1, '2021-03-22 06:51:25', '2021-03-25 23:45:46', 7);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_25_200026_create_currencies_table', 1),
(5, '2021_02_08_200241_create_user_wallets_table', 1),
(6, '2021_02_09_180434_create_deposit_histories_table', 1),
(7, '2021_02_09_190722_create_withdraw_histories_table', 1),
(8, '2021_02_09_194952_create_admins_table', 1),
(9, '2021_02_09_210820_create_transaction_histories_table', 1),
(10, '2021_02_10_183854_create_messages_table', 1),
(11, '2021_02_11_205105_create_dmg_coins_table', 1),
(12, '2021_02_11_205534_create_dmg_coin_price_updates_table', 1),
(13, '2021_03_10_063952_create_locked_savings_settings_table', 2),
(14, '2021_03_10_085345_create_locked_deposits_table', 2),
(15, '2021_03_11_071047_create_locked_savings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_histories`
--

CREATE TABLE `transaction_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `equivalent_amount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=buy, 2=sell',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `leverage` int(8) NOT NULL DEFAULT 0 COMMENT 'Leverage Percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_histories`
--

INSERT INTO `transaction_histories` (`id`, `amount`, `equivalent_amount`, `type`, `status`, `leverage`, `created_at`, `updated_at`, `user_id`, `currency_id`) VALUES
(154, 100.00000000, 14844.00000000, 1, 1, 1, '2021-03-22 00:05:13', '2021-03-22 00:05:13', 7, 229),
(155, 50.00000000, 10.00050000, 1, 1, 1, '2021-03-22 00:31:56', '2021-03-22 00:31:56', 7, 174),
(156, 50.00000000, 13.63750000, 1, 1, 1, '2021-03-22 00:33:27', '2021-03-22 00:33:27', 7, 14),
(157, 49.00000000, 14.40894000, 2, 1, 0, '2021-03-22 00:34:28', '2021-03-22 00:34:28', 7, 14),
(158, 148.00000000, 5.75720000, 1, 1, 1, '2021-03-22 01:01:22', '2021-03-22 01:01:22', 7, 173),
(159, 1.00000000, 0.29406000, 2, 1, 0, '2021-03-22 01:02:16', '2021-03-22 01:02:16', 7, 14),
(160, 29.00000000, 6421.18000000, 1, 1, 5, '2021-03-22 01:04:08', '2021-03-22 01:04:08', 7, 57),
(161, 1300.00000000, 1560.52000000, 1, 1, 1, '2021-03-22 01:14:38', '2021-03-22 01:14:38', 7, 3),
(162, 10.00000000, 2198.20000000, 1, 1, 1, '2021-03-22 07:01:59', '2021-03-22 07:01:59', 7, 57),
(163, 500.00000000, 562.50000000, 1, 1, 1, '2021-03-22 22:09:43', '2021-03-22 22:09:43', 7, 174),
(164, 400.00000000, 83.99200000, 2, 1, 0, '2021-03-22 22:14:28', '2021-03-22 22:14:28', 7, 174),
(165, 50.00000000, 10.49900000, 2, 1, 0, '2021-03-22 22:18:58', '2021-03-22 22:18:58', 7, 174),
(166, 5.00000000, 1030.65000000, 2, 1, 0, '2021-03-22 23:31:55', '2021-03-22 23:31:55', 7, 57),
(167, 40.00000000, 8.12400000, 2, 1, 0, '2021-03-22 23:32:54', '2021-03-22 23:32:54', 7, 174),
(168, 10.00000000, 2.03100000, 2, 1, 0, '2021-03-22 23:33:36', '2021-03-22 23:33:36', 7, 174),
(169, 6.00000000, 1239.12000000, 2, 1, 0, '2021-03-22 23:35:32', '2021-03-22 23:35:32', 7, 57),
(170, 10.00000000, 15.66000000, 1, 1, 1, '2021-04-01 04:32:05', '2021-04-01 04:32:05', 7, 30),
(171, 7.00000000, 10.97320000, 1, 1, 1, '2021-04-01 04:32:56', '2021-04-01 04:32:56', 7, 30),
(172, 7.00000000, 3.93323000, 1, 1, 1, '2021-04-01 04:33:53', '2021-04-01 04:33:53', 7, 30),
(173, 1.00000000, 196.01000000, 1, 1, 1, '2021-04-01 04:34:54', '2021-04-01 04:34:54', 7, 30),
(174, 0.00000124, 0.07202644, 1, 1, 1, '2021-04-01 05:10:09', '2021-04-01 05:10:09', 7, 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `furigana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,8) NOT NULL DEFAULT 0.00000000,
  `derivative` float(16,8) DEFAULT 0.00000000 COMMENT '1: Deposit, 2: withdraw',
  `verification_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `furigana`, `username`, `email`, `phone`, `memo`, `is_email_verified`, `password`, `balance`, `derivative`, `verification_token`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Sabik', 'Safkat', '', 'sabik', 'safkatsabik@gmail.com', '', 'this is a test memo', 1, '$2y$10$UzUnn/3dr0ozeTT8ry2ymelZxvfhtawb2HaKm.mguNPoszymponDS', 42877.86800000, 0.00000000, NULL, 1, NULL, '2021-02-18 03:16:20', '2021-02-23 22:49:41'),
(7, 'John', 'Bashar', 'hello', 'bashar', 'john4apps27@gmail.com', '01683762669', '', 1, '$2y$10$DkRUZovZ82sccPd1VqiVfuNl2sNn2eAkjbAfSrZvg70vgeAxrXpYO', 106016.75412857, 89910.22656250, '', 1, NULL, '2021-02-18 03:38:07', '2021-04-01 05:10:09'),
(8, 'tanvir', 'hussain', 'tanvir', 'tanvir', 'tanvir0604@gmail.com', '', 'helloo nlfghadfhgadjhdjfhgkdjfh', 1, '$2y$10$9dC1.6yBEqKQ3gYiCQa.HeMX1lMNYjow7oy1FETQpBN8S6YbbqPqu', 9016.97000000, 0.00000000, NULL, 1, NULL, '2021-02-23 22:51:22', '2021-03-03 07:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `balance` double(16,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `balance`, `created_at`, `updated_at`, `user_id`, `currency_id`) VALUES
(33, 148.00000000, '2021-03-22 01:01:22', '2021-03-22 01:01:22', 7, 173),
(34, 1300.00000000, '2021-03-22 01:14:38', '2021-03-22 01:14:38', 7, 3),
(35, 10.00000000, '2021-03-22 22:09:43', '2021-03-22 23:32:54', 7, 174),
(36, 25.00000123, '2021-04-01 04:32:05', '2021-04-01 05:10:09', 7, 30);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_histories`
--

CREATE TABLE `withdraw_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,8) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 2=declined, 3=pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_histories`
--

INSERT INTO `withdraw_histories` (`id`, `amount`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(35, 100.00000000, 0, '2021-03-22 06:30:52', '2021-03-22 06:30:52', 7),
(36, 101.00000000, 0, '2021-03-22 06:31:30', '2021-03-22 06:31:30', 7),
(37, 102.00000000, 1, '2021-03-22 06:32:10', '2021-03-22 06:32:28', 7),
(39, 100.00000000, 0, '2021-03-23 00:01:47', '2021-03-23 00:01:47', 7),
(40, 10.00000000, 0, '2021-03-30 06:35:43', '2021-03-30 06:35:43', 7),
(41, 10.23645000, 0, '2021-03-30 06:36:41', '2021-03-30 06:36:41', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_withdraw_messages`
--
ALTER TABLE `admin_withdraw_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`);

--
-- Indexes for table `deposit_histories`
--
ALTER TABLE `deposit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `derivative_sells`
--
ALTER TABLE `derivative_sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dmg_coins`
--
ALTER TABLE `dmg_coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dmg_coin_price_updates`
--
ALTER TABLE `dmg_coin_price_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leverage_wallets`
--
ALTER TABLE `leverage_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locked_deposits`
--
ALTER TABLE `locked_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locked_savings`
--
ALTER TABLE `locked_savings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locked_savings_settings`
--
ALTER TABLE `locked_savings_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_histories_user_id_foreign` (`user_id`),
  ADD KEY `transaction_histories_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallets_user_id_foreign` (`user_id`),
  ADD KEY `user_wallets_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `withdraw_histories`
--
ALTER TABLE `withdraw_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_histories_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_withdraw_messages`
--
ALTER TABLE `admin_withdraw_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `deposit_histories`
--
ALTER TABLE `deposit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `derivative_sells`
--
ALTER TABLE `derivative_sells`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `dmg_coins`
--
ALTER TABLE `dmg_coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dmg_coin_price_updates`
--
ALTER TABLE `dmg_coin_price_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leverage_wallets`
--
ALTER TABLE `leverage_wallets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `locked_deposits`
--
ALTER TABLE `locked_deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locked_savings`
--
ALTER TABLE `locked_savings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `locked_savings_settings`
--
ALTER TABLE `locked_savings_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `withdraw_histories`
--
ALTER TABLE `withdraw_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deposit_histories`
--
ALTER TABLE `deposit_histories`
  ADD CONSTRAINT `deposit_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
  ADD CONSTRAINT `transaction_histories_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `transaction_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD CONSTRAINT `user_wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `user_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `withdraw_histories`
--
ALTER TABLE `withdraw_histories`
  ADD CONSTRAINT `withdraw_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
