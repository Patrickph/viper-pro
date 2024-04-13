-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14/04/2024 às 00:56
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `betwazen`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `inviter` int UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT '0.00',
  `commission_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposited` tinyint DEFAULT '0',
  `deposited_amount` decimal(10,2) DEFAULT '0.00',
  `losses` bigint DEFAULT '0',
  `losses_amount` decimal(10,2) DEFAULT '0.00',
  `commission_paid` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(17, '#', '01HVAC8Q2DSYNS94BM9DFZP5A0.png', 'home', '...', '2024-04-07 13:29:27', '2024-04-12 21:03:42'),
(18, NULL, '01HVACB5SAJ2M89ZC6EGVBM581.png', 'home', '....', '2024-04-07 13:30:46', '2024-04-12 21:05:02'),
(15, '#', '01HVAC6ZF0341E0X75M3XN2P3H.png', 'carousel', '...', '2024-04-05 22:58:25', '2024-04-12 21:02:45'),
(8, '#', '01HVAC5Z2JX7ZJMJ6PBFEP9FS0.png', 'carousel', '...', '2024-01-13 15:41:09', '2024-04-12 21:02:12'),
(16, '#', '01HVAC79ENAGJG21MC3AXZR6QB.png', 'home', '...', '2024-04-05 23:03:23', '2024-04-12 21:02:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `category_game`
--

INSERT INTO `category_game` (`category_id`, `game_id`) VALUES
(1, 631),
(17, 631),
(1, 634),
(17, 632),
(1, 632),
(17, 633),
(17, 634),
(1, 633),
(17, 635),
(1, 635),
(17, 636),
(1, 636),
(17, 637),
(1, 637),
(17, 638),
(1, 638),
(17, 639),
(17, 640),
(1, 640),
(17, 641),
(1, 641),
(1, 639),
(17, 642),
(1, 642),
(19, 1520),
(19, 1457),
(19, 1444),
(19, 1449),
(19, 1514),
(17, 1380),
(20, 6709),
(1, 6709),
(19, 6925),
(19, 7300),
(17, 8680),
(17, 12035),
(17, 8728),
(17, 8738),
(19, 8931),
(17, 12043),
(17, 12042),
(17, 12040),
(19, 9173),
(19, 9172),
(19, 9161),
(17, 9169),
(19, 9159);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 15:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 15:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 15:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 15:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 15:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 15:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 15:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 15:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 15:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 15:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 15:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 15:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 15:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 15:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 15:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 15:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 15:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 15:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 15:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 15:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 15:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 15:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 15:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 15:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 15:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 15:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 15:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 15:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 15:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 15:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 15:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 15:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 15:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 15:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 15:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 15:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 15:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 15:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 15:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 15:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 15:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 15:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 15:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 15:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 15:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 15:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 15:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 15:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 15:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 15:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 15:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 15:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 15:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 15:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 15:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 15:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 15:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 15:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 15:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 15:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 15:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 15:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 15:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 15:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 15:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 15:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 15:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 15:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 15:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 15:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 15:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 15:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 15:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 15:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 15:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 15:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 15:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 15:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 15:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 15:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 15:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 15:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 15:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 15:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 15:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 15:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 15:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 15:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 15:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 15:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 15:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 15:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 15:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 15:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 15:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 15:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 15:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 15:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 15:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 15:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 15:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 15:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 15:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 15:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 15:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 15:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 15:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 15:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 15:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 15:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 15:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 15:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 15:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secundary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#24262B',
  `carousel_banners` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `sidebar_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_radius` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.25rem',
  `custom_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whastapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#1da639', '#03ad4022', '#0db849', '#3b3b3b', '#c9c9c9', '#676767', '#191A1E', '#ffffff', '#98A7B5', '#656E78', '#4D565E', '#24262B', '#e8e8e8', '#24262B', '#bdbdbd', '#1E2024', '#ffffff', '#191A1E', '#d8d8de', '#24262B', '#828282', '#24262B', '#dedede', '#1E2024', '#919191', '#1E2024', '#ababab', '#1E2024', '.25rem', NULL, NULL, NULL, NULL, '2024-01-01 11:36:03', '2024-03-30 19:29:45', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('\"PlaceBet: 914806915\"'),
('\"PlaceBet: 914806915\"'),
('\"AwardWinnings: 914806915\"'),
('\"PlaceBet: 914806916\"'),
('\"AwardWinnings: 914806916\"'),
('\"PlaceBet: 914806916\"'),
('\"PlaceBet: 914806917\"'),
('\"PlaceBet: 914806918\"'),
('\"AwardWinnings: 914806918\"'),
('\"PlaceBet: 914806918\"'),
('\"PlaceBet: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"PlaceBet: 914806920\"'),
('\"PlaceBet: 914806921\"'),
('\"AwardWinnings: 914806921\"'),
('\"PlaceBet: 535367\"'),
('\"PlaceBet: 154646\"'),
('\"PlaceBet: 914806922\"'),
('\"PlaceBet: 914806923\"'),
('\"PlaceBet: 914806924\"'),
('\"AwardWinnings: 914806924\"');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `withdrawal_id` int UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int UNSIGNED NOT NULL,
  `game_server_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `technology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_lobby` tinyint NOT NULL DEFAULT '0',
  `is_mobile` tinyint NOT NULL DEFAULT '0',
  `has_freespins` tinyint NOT NULL DEFAULT '0',
  `has_tables` tinyint NOT NULL DEFAULT '0',
  `only_demo` tinyint DEFAULT '0',
  `rtp` bigint NOT NULL COMMENT 'Controle de RTP em porcentagem',
  `distribution` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'O nome do provedor',
  `views` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `show_home` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '12859', 'Wild West Gold Megaways', '12859', NULL, NULL, 'drakon/Wild West Gold Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:48', '2024-04-13 15:30:48'),
(2, 1, NULL, '12858', 'Wild Beach Party', '12858', NULL, NULL, 'drakon/Wild Beach Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:48', '2024-04-13 15:30:48'),
(3, 1, NULL, '12857', 'Voodoo Magic', '12857', NULL, NULL, 'drakon/Voodoo Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:48', '2024-04-13 15:30:48'),
(4, 1, NULL, '12856', 'Tropical Tiki', '12856', NULL, NULL, 'drakon/Tropical Tiki.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(5, 1, NULL, '12855', 'Super Joker', '12855', NULL, NULL, 'drakon/Super Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(6, 1, NULL, '12854', 'Star Bounty', '12854', NULL, NULL, 'drakon/Star Bounty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(7, 1, NULL, '12853', 'Spirit of Adventure', '12853', NULL, NULL, 'drakon/Spirit of Adventure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(8, 1, NULL, '12852', 'Roulette', '12852', NULL, NULL, 'drakon/Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(9, 1, NULL, '12851', 'Rainbow Gold', '12851', NULL, NULL, 'drakon/Rainbow Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(10, 1, NULL, '12850', 'Queen of Gods', '12850', NULL, NULL, 'drakon/Queen of Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(11, 1, NULL, '12849', 'Pirate Golden Age', '12849', NULL, NULL, 'drakon/Pirate Golden Age.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(12, 1, NULL, '12848', 'North Guardians', '12848', NULL, NULL, 'drakon/North Guardians.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(13, 1, NULL, '12847', 'Lucky Lightning', '12847', NULL, NULL, 'drakon/Lucky Lightning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:49', '2024-04-13 15:30:49'),
(14, 1, NULL, '12846', 'Release the Kraken', '12846', NULL, NULL, 'drakon/Release the Kraken.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(15, 1, NULL, '12845', 'Hercules and Pegasus', '12845', NULL, NULL, 'drakon/Hercules and Pegasus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(16, 1, NULL, '12844', 'Greedy Wolf', '12844', NULL, NULL, 'drakon/Greedy Wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(17, 1, NULL, '12843', 'Emerald King', '12843', NULL, NULL, 'drakon/Emerald King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(18, 1, NULL, '12842', 'Elemental Gems Megaways', '12842', NULL, NULL, 'drakon/Elemental Gems Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(19, 1, NULL, '12841', 'Colossal Cash Zone', '12841', NULL, NULL, 'drakon/Colossal Cash Zone.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(20, 1, NULL, '12840', 'Cash Patrol', '12840', NULL, NULL, 'drakon/Cash Patrol.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(21, 1, NULL, '12839', 'Bomb Bonanza', '12839', NULL, NULL, 'drakon/Bomb Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(22, 1, NULL, '12838', 'Big Bass Splash', '12838', NULL, NULL, 'drakon/Big Bass Splash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(23, 1, NULL, '12837', 'Wild Wild Riches', '12837', NULL, NULL, 'drakon/Wild Wild Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:50', '2024-04-13 15:30:50'),
(24, 1, NULL, '12836', 'Vegas Nights', '12836', NULL, NULL, 'drakon/Vegas Nights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(25, 1, NULL, '12835', 'Wild Booster', '12835', NULL, NULL, 'drakon/Wild Booster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(26, 1, NULL, '12834', 'Tic Tac Take', '12834', NULL, NULL, 'drakon/Tic Tac Take.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(27, 1, NULL, '12833', 'The Great Stick-Up', '12833', NULL, NULL, 'drakon/The Great Stick-Up.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(28, 1, NULL, '12832', 'Super X', '12832', NULL, NULL, 'drakon/Super X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(29, 1, NULL, '12831', 'Striking Hot 5', '12831', NULL, NULL, 'drakon/Striking Hot 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(30, 1, NULL, '12830', 'Shining Hot 40', '12830', NULL, NULL, 'drakon/Shining Hot 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(31, 1, NULL, '12829', 'Shining Hot 5', '12829', NULL, NULL, 'drakon/Shining Hot 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:51', '2024-04-13 15:30:51'),
(32, 1, NULL, '12828', 'Street Racer', '12828', NULL, NULL, 'drakon/Street Racer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(33, 1, NULL, '12827', 'Shining Hot 100', '12827', NULL, NULL, 'drakon/Shining Hot 100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(34, 1, NULL, '12826', 'Shining Hot 20', '12826', NULL, NULL, 'drakon/Shining Hot 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(35, 1, NULL, '12824', 'Octobeer Fortunes', '12824', NULL, NULL, 'drakon/Octobeer Fortunes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(36, 1, NULL, '12823', 'Pirate Gold', '12823', NULL, NULL, 'drakon/Pirate Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 2, 0, 1, '2024-04-13 15:30:52', '2024-04-13 15:38:20'),
(37, 1, NULL, '12822', 'Little Gem', '12822', NULL, NULL, 'drakon/Little Gem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(38, 1, NULL, '12821', 'Hot to Burn Extreme', '12821', NULL, NULL, 'drakon/Hot to Burn Extreme.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(39, 1, NULL, '12820', 'Gorilla Mayhem', '12820', NULL, NULL, 'drakon/Gorilla Mayhem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(40, 1, NULL, '12819', 'Goblin Heist Powernudge', '12819', NULL, NULL, 'drakon/Goblin Heist Powernudge.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:52', '2024-04-13 15:30:52'),
(41, 1, NULL, '12818', 'Fortune of Giza', '12818', NULL, NULL, 'drakon/Fortune of Giza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(42, 1, NULL, '12817', 'Gold Train', '12817', NULL, NULL, 'drakon/Gold Train.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(43, 1, NULL, '12816', 'Fire Hot 100', '12816', NULL, NULL, 'drakon/Fire Hot 100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(44, 1, NULL, '12815', 'Fire Hot 40', '12815', NULL, NULL, 'drakon/Fire Hot 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(45, 1, NULL, '12814', 'Fire Hot 20', '12814', NULL, NULL, 'drakon/Fire Hot 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(46, 1, NULL, '12813', 'Fire Hot 5', '12813', NULL, NULL, 'drakon/Fire Hot 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(47, 1, NULL, '12812', 'Fire Strike 2', '12812', NULL, NULL, 'drakon/Fire Strike 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(48, 1, NULL, '12811', 'Eye of Cleopatra', '12811', NULL, NULL, 'drakon/Eye of Cleopatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(49, 1, NULL, '12810', 'Drill that Gold', '12810', NULL, NULL, 'drakon/Drill that Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:53', '2024-04-13 15:30:53'),
(50, 1, NULL, '12809', 'Dragon Tiger', '12809', NULL, NULL, 'drakon/Dragon Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(51, 1, NULL, '12808', 'Clover Gold', '12808', NULL, NULL, 'drakon/Clover Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(52, 1, NULL, '12807', 'Crown of Fire', '12807', NULL, NULL, 'drakon/Crown of Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(53, 1, NULL, '12806', 'Cleocatra', '12806', NULL, NULL, 'drakon/Cleocatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(54, 1, NULL, '12805', 'Day of Dead', '12805', NULL, NULL, 'drakon/Day of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(55, 1, NULL, '12804', 'Chicken Chase', '12804', NULL, NULL, 'drakon/Chicken Chase.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(56, 1, NULL, '12803', 'Black Bull', '12803', NULL, NULL, 'drakon/Black Bull.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(57, 1, NULL, '12802', 'Bigger Bass Bonanza', '12802', NULL, NULL, 'drakon/Bigger Bass Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(58, 1, NULL, '12801', '888 Dragons', '12801', NULL, NULL, 'drakon/888 Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:54', '2024-04-13 15:30:54'),
(59, 1, NULL, '12800', '5 Lions Dance', '12800', NULL, NULL, 'drakon/5 Lions Dance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(60, 1, NULL, '12799', '7 Piggies', '12799', NULL, NULL, 'drakon/7 Piggies.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(61, 2, NULL, '12558', 'Buffalo 777', '12558', NULL, NULL, 'drakon/Buffalo 777.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(62, 2, NULL, '12557', 'God of Fortune', '12557', NULL, NULL, 'drakon/God of Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(63, 2, NULL, '12556', 'Vegas 7s', '12556', NULL, NULL, 'drakon/Vegas 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(64, 3, NULL, '10502', 'Tiki Madness 100', '10502', NULL, NULL, 'drakon/Tiki Madness 100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(65, 3, NULL, '10501', 'Grand Wild Dragon', '10501', NULL, NULL, 'drakon/Grand Wild Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(66, 3, NULL, '10499', 'Billyonaire Bonus Buy', '10499', NULL, NULL, 'drakon/Billyonaire Bonus Buy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(67, 3, NULL, '10497', 'Wild Shark Bonus Buy', '10497', NULL, NULL, 'drakon/Wild Shark Bonus Buy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(68, 3, NULL, '10496', 'Double Joker 20', '10496', NULL, NULL, 'drakon/Double Joker 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(69, 4, NULL, '10479', 'Quick Hit Ultra Pays Wolf Mountain', '10479', NULL, NULL, 'drakon/Quick Hit Ultra Pays Wolf Mountain.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(70, 4, NULL, '10478', 'Quick Hit Sun Dragon', '10478', NULL, NULL, 'drakon/Quick Hit Sun Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(71, 4, NULL, '10477', 'Quick Hit Ultra Pays Eagles Peak', '10477', NULL, NULL, 'drakon/Quick Hit Ultra Pays Eagles Peak.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(72, 4, NULL, '10476', 'Quick Hit Ultra Pays Monkeys Fortune', '10476', NULL, NULL, 'drakon/Quick Hit Ultra Pays Monkeys Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(73, 4, NULL, '10475', 'Ultimate Fire Link Rue Royale', '10475', NULL, NULL, 'drakon/Ultimate Fire Link Rue Royale.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(74, 4, NULL, '10474', 'Ultimate Fire Link China Street', '10474', NULL, NULL, 'drakon/Ultimate Fire Link China Street.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(75, 4, NULL, '10473', 'Ultimate Fire Link Country Lights', '10473', NULL, NULL, 'drakon/Ultimate Fire Link Country Lights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(76, 4, NULL, '10472', 'Quick Hit Blitz Blue', '10472', NULL, NULL, 'drakon/Quick Hit Blitz Blue.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(77, 4, NULL, '10471', 'Quick Hit Blitz Red', '10471', NULL, NULL, 'drakon/Quick Hit Blitz Red.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(78, 2, NULL, '9704', '4th of July', '9704', NULL, NULL, 'drakon/4th of July.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(79, 2, NULL, '9703', 'St Patricks Day', '9703', NULL, NULL, 'drakon/St Patricks Day.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(80, 2, NULL, '9702', 'Hot7s', '9702', NULL, NULL, 'drakon/Hot7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(81, 2, NULL, '9701', 'Lucky 777', '9701', NULL, NULL, 'drakon/Lucky 777.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(82, 2, NULL, '9700', 'Happy Duck', '9700', NULL, NULL, 'drakon/Happy Duck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(83, 4, NULL, '9699', 'Ultimate Fire Link River Walk', '9699', NULL, NULL, 'drakon/Ultimate Fire Link River Walk.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(84, 4, NULL, '9698', 'Ultimate Fire Link Olvera Street', '9698', NULL, NULL, 'drakon/Ultimate Fire Link Olvera Street.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(85, 4, NULL, '9697', 'Montezuma Megaways', '9697', NULL, NULL, 'drakon/Montezuma Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:57', '2024-04-13 15:30:57'),
(86, 4, NULL, '9696', 'Gold Fish', '9696', NULL, NULL, 'drakon/Gold Fish.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(87, 4, NULL, '9695', 'Zeus God Of Thunder', '9695', NULL, NULL, 'drakon/Zeus God Of Thunder.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(88, 4, NULL, '9694', 'Kronos Unleashed', '9694', NULL, NULL, 'drakon/Kronos Unleashed.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(89, 4, NULL, '9693', 'Texas Holdem Plus Pocker', '9693', NULL, NULL, 'drakon/Texas Holdem Plus Pocker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(90, 4, NULL, '9692', 'Golden Asia', '9692', NULL, NULL, 'drakon/Golden Asia.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(91, 3, NULL, '8888', 'Lucky Double', '8888', NULL, NULL, 'drakon/Lucky Double.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(92, 3, NULL, '8887', 'Santas Fruits', '8887', NULL, NULL, 'drakon/Santas Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:58', '2024-04-13 15:30:58'),
(93, 3, NULL, '8886', 'Lovely Lady Deluxe', '8886', NULL, NULL, 'drakon/Lovely Lady Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(94, 3, NULL, '8885', 'Pharaohs Gold 20', '8885', NULL, NULL, 'drakon/Pharaohs Gold 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(95, 3, NULL, '8884', 'Lady Fruits 100 Easter', '8884', NULL, NULL, 'drakon/Lady Fruits 100 Easter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(96, 3, NULL, '8883', 'Lady Fruits 20', '8883', NULL, NULL, 'drakon/Lady Fruits 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(97, 3, NULL, '8880', 'Lady Fruits 40 Easter', '8880', NULL, NULL, 'drakon/Lady Fruits 40 Easter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(98, 3, NULL, '8879', 'Hot Soccer', '8879', NULL, NULL, 'drakon/Hot Soccer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(99, 3, NULL, '8878', 'Harle Queen', '8878', NULL, NULL, 'drakon/Harle Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(100, 3, NULL, '8877', 'Burning Bells 40', '8877', NULL, NULL, 'drakon/Burning Bells 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(101, 5, NULL, '8393', 'Grand Express Action Class', '8393', NULL, NULL, 'drakon/Grand Express Action Class.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(102, 5, NULL, '8392', 'Sherlok', '8392', NULL, NULL, 'drakon/Sherlok.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(103, 5, NULL, '8391', 'Blazing Tiger', '8391', NULL, NULL, 'drakon/Blazing Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(104, 5, NULL, '8390', 'Dragoness', '8390', NULL, NULL, 'drakon/Dragoness.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(105, 5, NULL, '8389', 'Rush Fever 7s', '8389', NULL, NULL, 'drakon/Rush Fever 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(106, 5, NULL, '8388', 'Adventure of Little Red', '8388', NULL, NULL, 'drakon/Adventure of Little Red.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(107, 5, NULL, '8387', 'Royal Griffin', '8387', NULL, NULL, 'drakon/Royal Griffin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(108, 5, NULL, '8386', 'Loco Habanero', '8386', NULL, NULL, 'drakon/Loco Habanero.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(109, 5, NULL, '8385', 'Dragon Ladies', '8385', NULL, NULL, 'drakon/Dragon Ladies.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(110, 5, NULL, '8384', 'Savage Lion', '8384', NULL, NULL, 'drakon/Savage Lion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:00', '2024-04-13 15:31:00'),
(111, 5, NULL, '8383', 'Bull Fever', '8383', NULL, NULL, 'drakon/Bull Fever.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(112, 5, NULL, '8382', 'Christmas fortune', '8382', NULL, NULL, 'drakon/Christmas fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(113, 5, NULL, '8381', 'Shake Leprechaun', '8381', NULL, NULL, 'drakon/Shake Leprechaun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(114, 5, NULL, '8380', 'Shake Shake Christmas', '8380', NULL, NULL, 'drakon/Shake Shake Christmas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(115, 5, NULL, '8379', 'Grand Express Diamond Class', '8379', NULL, NULL, 'drakon/Grand Express Diamond Class.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(116, 5, NULL, '8378', 'New Year Happiness', '8378', NULL, NULL, 'drakon/New Year Happiness.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(117, 5, NULL, '8377', 'Shake Shake Money Tree', '8377', NULL, NULL, 'drakon/Shake Shake Money Tree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(118, 5, NULL, '8376', 'Book of 8 Riches', '8376', NULL, NULL, 'drakon/Book of 8 Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:01', '2024-04-13 15:31:01'),
(119, 5, NULL, '8375', 'Feliz Dia De Los Muertos', '8375', NULL, NULL, 'drakon/Feliz Dia De Los Muertos.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(120, 5, NULL, '8374', 'Rio Pleasures', '8374', NULL, NULL, 'drakon/Rio Pleasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(121, 5, NULL, '8373', 'Mayan Cache', '8373', NULL, NULL, 'drakon/Mayan Cache.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(122, 6, NULL, '8372', 'Dragon Master', '8372', NULL, NULL, 'drakon/Dragon Master.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(123, 6, NULL, '8371', 'St Patriks Treasure 3d', '8371', NULL, NULL, 'drakon/St Patriks Treasure 3d.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(124, 6, NULL, '8370', 'Raging Kingdom 3d', '8370', NULL, NULL, 'drakon/Raging Kingdom 3d.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(125, 6, NULL, '8369', 'Crab King 3', '8369', NULL, NULL, 'drakon/Crab King 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(126, 6, NULL, '8368', 'Warrior Mermaid 3', '8368', NULL, NULL, 'drakon/Warrior Mermaid 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(127, 6, NULL, '8367', 'Air Strike 3', '8367', NULL, NULL, 'drakon/Air Strike 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(128, 6, NULL, '8366', 'Ocean Monster 3', '8366', NULL, NULL, 'drakon/Ocean Monster 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(129, 6, NULL, '8365', 'Panda vs Alien', '8365', NULL, NULL, 'drakon/Panda vs Alien.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(130, 6, NULL, '8364', 'Dancing Skeleton 3d', '8364', NULL, NULL, 'drakon/Dancing Skeleton 3d.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(131, 6, NULL, '8363', 'Fire Kirin 3', '8363', NULL, NULL, 'drakon/Fire Kirin 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(132, 7, NULL, '8241', 'Diamond Link Mighty Sevens', '8241', NULL, NULL, 'drakon/Diamond Link Mighty Sevens.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(133, 7, NULL, '8237', 'Lord of the Ocean Magic', '8237', NULL, NULL, 'drakon/Lord of the Ocean Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(134, 8, NULL, '8236', 'Golden Century', '8236', NULL, NULL, 'drakon/Golden Century.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(135, 7, NULL, '8235', 'Diamond Link Oasis Riches', '8235', NULL, NULL, 'drakon/Diamond Link Oasis Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(136, 7, NULL, '8231', 'Diamond Link Mighty Elephant', '8231', NULL, NULL, 'drakon/Diamond Link Mighty Elephant.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(137, 7, NULL, '8224', 'Cash Connection Voodoo Magic', '8224', NULL, NULL, 'drakon/Cash Connection Voodoo Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(138, 7, NULL, '8223', 'Cash Connection Dolphins Pearl', '8223', NULL, NULL, 'drakon/Cash Connection Dolphins Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(139, 7, NULL, '8222', 'Cash Connection Golden Book Of Ra', '8222', NULL, NULL, 'drakon/Cash Connection Golden Book Of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(140, 7, NULL, '8221', 'Cash Connection Charming Lady', '8221', NULL, NULL, 'drakon/Cash Connection Charming Lady.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(141, 5, NULL, '8219', 'Dawn of The Incas', '8219', NULL, NULL, 'drakon/Dawn of The Incas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(142, 5, NULL, '8217', 'Dragon Prophecy', '8217', NULL, NULL, 'drakon/Dragon Prophecy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(143, 5, NULL, '8216', 'Mayan Blaze', '8216', NULL, NULL, 'drakon/Mayan Blaze.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(144, 5, NULL, '8215', 'Dr. Frankenstein', '8215', NULL, NULL, 'drakon/Dr. Frankenstein.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(145, 5, NULL, '8214', 'Wizards Spell', '8214', NULL, NULL, 'drakon/Wizards Spell.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:04', '2024-04-13 15:31:04'),
(146, 5, NULL, '8213', 'African Cats', '8213', NULL, NULL, 'drakon/African Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(147, 5, NULL, '8212', 'Zeus Rush Fever', '8212', NULL, NULL, 'drakon/Zeus Rush Fever.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(148, 5, NULL, '8211', 'Silver and gold mine', '8211', NULL, NULL, 'drakon/Silver and gold mine.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(149, 5, NULL, '8210', 'Medusa Money', '8210', NULL, NULL, 'drakon/Medusa Money.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(150, 9, NULL, '8144', 'Pinky Cat', '8144', NULL, NULL, 'drakon/Pinky Cat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(151, 3, NULL, '8143', 'Hot Scatter Dice', '8143', NULL, NULL, 'drakon/Hot Scatter Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(152, 10, NULL, '8142', 'Athena Ascending', '8142', NULL, NULL, 'drakon/Athena Ascending.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(153, 9, NULL, '8140', 'El Dorado Treasure', '8140', NULL, NULL, 'drakon/El Dorado Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(154, 9, NULL, '8139', 'Falcon God', '8139', NULL, NULL, 'drakon/Falcon God.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(155, 9, NULL, '8138', 'Burning Dice', '8138', NULL, NULL, 'drakon/Burning Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(156, 9, NULL, '8136', 'Hell Game', '8136', NULL, NULL, 'drakon/Hell Game.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(157, 9, NULL, '8135', 'Frutomatic', '8135', NULL, NULL, 'drakon/Frutomatic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(158, 9, NULL, '8134', 'RUR', '8134', NULL, NULL, 'drakon/RUR.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(159, 9, NULL, '8132', 'Titans', '8132', NULL, NULL, 'drakon/Titans.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(160, 3, NULL, '8131', 'Hottest Fruits 20', '8131', NULL, NULL, 'drakon/Hottest Fruits 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(161, 10, NULL, '8127', 'Leprechauns Vault', '8127', NULL, NULL, 'drakon/Leprechauns Vault.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(162, 6, NULL, '8126', 'Crab King 2', '8126', NULL, NULL, 'drakon/Crab King 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(163, 6, NULL, '8125', 'Arc of Templar', '8125', NULL, NULL, 'drakon/Arc of Templar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:06', '2024-04-13 15:31:06'),
(164, 6, NULL, '8124', 'Spirit Stallion', '8124', NULL, NULL, 'drakon/Spirit Stallion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(165, 6, NULL, '8123', 'Meteor Shower', '8123', NULL, NULL, 'drakon/Meteor Shower.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(166, 6, NULL, '8122', 'Dragon vs Phoenix', '8122', NULL, NULL, 'drakon/Dragon vs Phoenix.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(167, 6, NULL, '8121', 'Eagle Eyes', '8121', NULL, NULL, 'drakon/Eagle Eyes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(168, 6, NULL, '8120', 'Magical Ship', '8120', NULL, NULL, 'drakon/Magical Ship.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(169, 6, NULL, '8119', 'Circus Circus', '8119', NULL, NULL, 'drakon/Circus Circus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(170, 6, NULL, '8118', 'Crocodile Adventure', '8118', NULL, NULL, 'drakon/Crocodile Adventure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(171, 6, NULL, '8117', 'Baby Octopus', '8117', NULL, NULL, 'drakon/Baby Octopus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(172, 6, NULL, '8115', 'Money Tree', '8115', NULL, NULL, 'drakon/Money Tree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(173, 6, NULL, '8114', 'Fish Chopper', '8114', NULL, NULL, 'drakon/Fish Chopper.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:07', '2024-04-13 15:31:07'),
(174, 6, NULL, '8113', 'Crab King', '8113', NULL, NULL, 'drakon/Crab King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(175, 6, NULL, '8112', 'Fire Kirin', '8112', NULL, NULL, 'drakon/Fire Kirin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(176, 6, NULL, '8111', 'Deepsea Volcamon', '8111', NULL, NULL, 'drakon/Deepsea Volcamon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(177, 6, NULL, '8110', 'Golden Toad', '8110', NULL, NULL, 'drakon/Golden Toad.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(178, 10, NULL, '8107', 'Blazin Bullfrog', '8107', NULL, NULL, 'drakon/Blazin Bullfrog.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(179, 10, NULL, '8106', 'Big win 777', '8106', NULL, NULL, 'drakon/Big win 777.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(180, 4, NULL, '7990', 'Rainbow Riches Megaways', '7990', NULL, NULL, 'drakon/Rainbow Riches Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(181, 11, NULL, '7989', 'Joker 27', '7989', NULL, NULL, 'drakon/Joker 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(182, 11, NULL, '7988', 'Turbo 27', '7988', NULL, NULL, 'drakon/Turbo 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(183, 11, NULL, '7987', 'Simply the Best 27', '7987', NULL, NULL, 'drakon/Simply the Best 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(184, 11, NULL, '7986', 'Vegas 27', '7986', NULL, NULL, 'drakon/Vegas 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(185, 11, NULL, '7985', 'Ring of Fire', '7985', NULL, NULL, 'drakon/Ring of Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(186, 11, NULL, '7984', 'Lucky Dragon', '7984', NULL, NULL, 'drakon/Lucky Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(187, 11, NULL, '7983', 'Kajot Lines', '7983', NULL, NULL, 'drakon/Kajot Lines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(188, 11, NULL, '7982', 'Joker Strong', '7982', NULL, NULL, 'drakon/Joker Strong.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(189, 11, NULL, '7981', 'Joker Dream', '7981', NULL, NULL, 'drakon/Joker Dream.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:09', '2024-04-13 15:31:09'),
(190, 11, NULL, '7980', 'Joker 81', '7980', NULL, NULL, 'drakon/Joker 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(191, 4, NULL, '7979', 'Rainbow Riches', '7979', NULL, NULL, 'drakon/Rainbow Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(192, 1, NULL, '7923', 'Yum Yum Powerways', '7923', NULL, NULL, 'drakon/Yum Yum Powerways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(193, 1, NULL, '7917', 'The Ultimate 5', '7917', NULL, NULL, 'drakon/The Ultimate 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(194, 1, NULL, '7915', 'Cash Elevator', '7915', NULL, NULL, 'drakon/Cash Elevator.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(195, 1, NULL, '7914', 'Juicy Fruits', '7914', NULL, NULL, 'drakon/Juicy Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(196, 1, NULL, '7913', 'Might of Ra', '7913', NULL, NULL, 'drakon/Might of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(197, 1, NULL, '7912', 'Wild Walker', '7912', NULL, NULL, 'drakon/Wild Walker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(198, 1, NULL, '7909', 'Treasure Wild', '7909', NULL, NULL, 'drakon/Treasure Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:10', '2024-04-13 15:31:10'),
(199, 1, NULL, '7908', 'Bounty Gold', '7908', NULL, NULL, 'drakon/Bounty Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(200, 1, NULL, '7906', 'Magicians Secrets', '7906', NULL, NULL, 'drakon/Magicians Secrets.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(201, 1, NULL, '7901', 'Rise of Giza Power Nudge', '7901', NULL, NULL, 'drakon/Rise of Giza Power Nudge.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(202, 1, NULL, '7900', 'Heart of Rio', '7900', NULL, NULL, 'drakon/Heart of Rio.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(203, 1, NULL, '7898', 'Phoenix Forge', '7898', NULL, NULL, 'drakon/Phoenix Forge.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(204, 1, NULL, '7897', 'Aztec Gems Deluxe', '7897', NULL, NULL, 'drakon/Aztec Gems Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(205, 1, NULL, '7896', 'Wild Depths', '7896', NULL, NULL, 'drakon/Wild Depths.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(206, 1, NULL, '7894', 'Book of the Fallen', '7894', NULL, NULL, 'drakon/Book of the Fallen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(207, 1, NULL, '7893', 'Book of Vikings', '7893', NULL, NULL, 'drakon/Book of Vikings.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:11', '2024-04-13 15:31:11'),
(208, 1, NULL, '7892', 'Smugglers Cove', '7892', NULL, NULL, 'drakon/Smugglers Cove.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(209, 1, NULL, '7891', 'Gold Party', '7891', NULL, NULL, 'drakon/Gold Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(210, 1, NULL, '7890', 'Piggy Bank Bills', '7890', NULL, NULL, 'drakon/Piggy Bank Bills.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(211, 1, NULL, '7889', 'Starlight Princess', '7889', NULL, NULL, 'drakon/Starlight Princess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(212, 1, NULL, '7888', 'Star Pirates Code', '7888', NULL, NULL, 'drakon/Star Pirates Code.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(213, 1, NULL, '7887', 'Christmas Big Bass Bonanza', '7887', NULL, NULL, 'drakon/Christmas Big Bass Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(214, 1, NULL, '7886', 'Big Juan', '7886', NULL, NULL, 'drakon/Big Juan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(215, 1, NULL, '7884', 'Mystic Chief', '7884', NULL, NULL, 'drakon/Mystic Chief.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(216, 1, NULL, '7883', 'Pirate Gold Deluxe', '7883', NULL, NULL, 'drakon/Pirate Gold Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(217, 1, NULL, '7882', 'Hot to Burn Hold and Spin', '7882', NULL, NULL, 'drakon/Hot to Burn Hold and Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:12', '2024-04-13 15:31:12'),
(218, 1, NULL, '7881', 'Congo Cash', '7881', NULL, NULL, 'drakon/Congo Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(219, 1, NULL, '7880', 'Book of Kingdoms', '7880', NULL, NULL, 'drakon/Book of Kingdoms.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(220, 1, NULL, '7879', 'Fishin Reels', '7879', NULL, NULL, 'drakon/Fishin Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(221, 1, NULL, '7878', 'Fruit Party 2', '7878', NULL, NULL, 'drakon/Fruit Party 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(222, 1, NULL, '7877', 'Buffalo King Megaways', '7877', NULL, NULL, 'drakon/Buffalo King Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(223, 1, NULL, '7876', 'Mysterious Egypt', '7876', NULL, NULL, 'drakon/Mysterious Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(224, 1, NULL, '7875', 'Floating Dragon Hold and Spin', '7875', NULL, NULL, 'drakon/Floating Dragon Hold and Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(225, 1, NULL, '7874', 'Curse of the Werewolf Megaways', '7874', NULL, NULL, 'drakon/Curse of the Werewolf Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:13', '2024-04-13 15:31:13'),
(226, 1, NULL, '7873', 'Power of Thor Megaways', '7873', NULL, NULL, 'drakon/Power of Thor Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(227, 1, NULL, '7870', 'Chilli Heat Megaways', '7870', NULL, NULL, 'drakon/Chilli Heat Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(228, 1, NULL, '7869', 'Return of the Dead', '7869', NULL, NULL, 'drakon/Return of the Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(229, 1, NULL, '7868', 'Crystal Caverns Megaways', '7868', NULL, NULL, 'drakon/Crystal Caverns Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(230, 1, NULL, '7867', 'Bonanza Gold', '7867', NULL, NULL, 'drakon/Bonanza Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(231, 1, NULL, '7865', 'Extra Juicy Megaways', '7865', NULL, NULL, 'drakon/Extra Juicy Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(232, 1, NULL, '7863', 'Gates of Valhalla', '7863', NULL, NULL, 'drakon/Gates of Valhalla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(233, 1, NULL, '7857', 'Rise of Samurai Megaways', '7857', NULL, NULL, 'drakon/Rise of Samurai Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(234, 1, NULL, '7856', 'Aztec King Megaways', '7856', NULL, NULL, 'drakon/Aztec King Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(235, 1, NULL, '7855', 'Christmas Carol Megaways', '7855', NULL, NULL, 'drakon/Christmas Carol Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:14', '2024-04-13 15:31:14'),
(236, 1, NULL, '7851', '5 Lions Megaways', '7851', NULL, NULL, 'drakon/5 Lions Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(237, 1, NULL, '7837', 'The Tweety House', '7837', NULL, NULL, 'drakon/The Tweety House.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(238, 1, NULL, '7836', '3 Genie Wishes', '7836', NULL, NULL, 'drakon/3 Genie Wishes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(239, 10, NULL, '7820', 'Xmas Joker', '7820', NULL, NULL, 'drakon/Xmas Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(240, 10, NULL, '7819', 'Wild Blood', '7819', NULL, NULL, 'drakon/Wild Blood.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(241, 10, NULL, '7818', 'Sticky Joker', '7818', NULL, NULL, 'drakon/Sticky Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(242, 10, NULL, '7817', 'Star Joker', '7817', NULL, NULL, 'drakon/Star Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(243, 10, NULL, '7816', 'Space Race', '7816', NULL, NULL, 'drakon/Space Race.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(244, 10, NULL, '7815', 'Sizzling Spins', '7815', NULL, NULL, 'drakon/Sizzling Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:15', '2024-04-13 15:31:15'),
(245, 10, NULL, '7814', 'Scroll of Dead', '7814', NULL, NULL, 'drakon/Scroll of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(246, 10, NULL, '7813', 'Saxon', '7813', NULL, NULL, 'drakon/Saxon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(247, 10, NULL, '7812', 'Sails of Gold', '7812', NULL, NULL, 'drakon/Sails of Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(248, 10, NULL, '7811', 'Royal Masquerade', '7811', NULL, NULL, 'drakon/Royal Masquerade.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(249, 10, NULL, '7810', 'Rise of Merlin', '7810', NULL, NULL, 'drakon/Rise of Merlin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(250, 10, NULL, '7809', 'Rise of Athena', '7809', NULL, NULL, 'drakon/Rise of Athena.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(251, 10, NULL, '7808', 'Riches of RA', '7808', NULL, NULL, 'drakon/Riches of RA.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(252, 10, NULL, '7807', 'Rich Wilde and the Amulet of Dead', '7807', NULL, NULL, 'drakon/Rich Wilde and the Amulet of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(253, 10, NULL, '7806', 'Prosperity Palace', '7806', NULL, NULL, 'drakon/Prosperity Palace.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(254, 10, NULL, '7805', 'Prism of Gems', '7805', NULL, NULL, 'drakon/Prism of Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:16', '2024-04-13 15:31:16'),
(255, 10, NULL, '7804', 'Photo Safari', '7804', NULL, NULL, 'drakon/Photo Safari.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(256, 10, NULL, '7803', 'Pearl Lagoon', '7803', NULL, NULL, 'drakon/Pearl Lagoon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(257, 10, NULL, '7802', 'New Year Riches', '7802', NULL, NULL, 'drakon/New Year Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(258, 10, NULL, '7801', 'Mystery Joker', '7801', NULL, NULL, 'drakon/Mystery Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(259, 10, NULL, '7800', 'MultiFruit 81', '7800', NULL, NULL, 'drakon/MultiFruit 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(260, 10, NULL, '7799', 'Miner Donkey Trouble', '7799', NULL, NULL, 'drakon/Miner Donkey Trouble.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(261, 10, NULL, '7798', 'Lord Merlin and the Lady of the Lake', '7798', NULL, NULL, 'drakon/Lord Merlin and the Lady of the Lake.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(262, 10, NULL, '7797', 'Legacy of Dead', '7797', NULL, NULL, 'drakon/Legacy of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(263, 10, NULL, '7796', 'Irish Gold', '7796', NULL, NULL, 'drakon/Irish Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(264, 10, NULL, '7795', 'House of Doom', '7795', NULL, NULL, 'drakon/House of Doom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:17', '2024-04-13 15:31:17'),
(265, 10, NULL, '7794', 'Happy Halloween', '7794', NULL, NULL, 'drakon/Happy Halloween.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(266, 10, NULL, '7793', 'Golden Legend', '7793', NULL, NULL, 'drakon/Golden Legend.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(267, 10, NULL, '7792', 'Gold Trophy', '7792', NULL, NULL, 'drakon/Gold Trophy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(268, 10, NULL, '7791', 'Ghost of Dead', '7791', NULL, NULL, 'drakon/Ghost of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(269, 10, NULL, '7790', 'Fu Er Dai', '7790', NULL, NULL, 'drakon/Fu Er Dai.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(270, 10, NULL, '7789', 'Dragonship', '7789', NULL, NULL, 'drakon/Dragonship.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(271, 10, NULL, '7788', 'Doom of Egypt', '7788', NULL, NULL, 'drakon/Doom of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(272, 10, NULL, '7787', 'Disco Diamonds', '7787', NULL, NULL, 'drakon/Disco Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(273, 10, NULL, '7786', 'Dawn of Egypt', '7786', NULL, NULL, 'drakon/Dawn of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(274, 10, NULL, '7785', 'Danish Flip', '7785', NULL, NULL, 'drakon/Danish Flip.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:18', '2024-04-13 15:31:18'),
(275, 10, NULL, '7784', 'Crystal Sun', '7784', NULL, NULL, 'drakon/Crystal Sun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(276, 10, NULL, '7783', 'CopsnRobbers', '7783', NULL, NULL, 'drakon/CopsnRobbers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(277, 10, NULL, '7782', 'Coils of Cash', '7782', NULL, NULL, 'drakon/Coils of Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(278, 10, NULL, '7781', 'Charlie Chance', '7781', NULL, NULL, 'drakon/Charlie Chance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(279, 10, NULL, '7780', 'Cat Wilde and the Doom of Dead', '7780', NULL, NULL, 'drakon/Cat Wilde and the Doom of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(280, 10, NULL, '7779', 'Book of Dead', '7779', NULL, NULL, 'drakon/Book of Dead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(281, 10, NULL, '7778', 'Blinged', '7778', NULL, NULL, 'drakon/Blinged.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(282, 10, NULL, '7777', 'Aztec Idols', '7777', NULL, NULL, 'drakon/Aztec Idols.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(283, 10, NULL, '7776', '5xMagic', '7776', NULL, NULL, 'drakon/5xMagic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:19', '2024-04-13 15:31:19'),
(284, 10, NULL, '7775', '3 Clown Monty', '7775', NULL, NULL, 'drakon/3 Clown Monty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(285, 7, NULL, '7772', 'Xtra Hot', '7772', NULL, NULL, 'drakon/Xtra Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(286, 1, NULL, '7771', 'Pandas Fortune 2', '7771', NULL, NULL, 'drakon/Pandas Fortune 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(287, 1, NULL, '7770', 'Golden Ox', '7770', NULL, NULL, 'drakon/Golden Ox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(288, 1, NULL, '7762', 'Big Bass Bonanza', '7762', NULL, NULL, 'drakon/Big Bass Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(289, 1, NULL, '7760', 'Gates of Olympus', '7760', NULL, NULL, 'drakon/Gates of Olympus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 5, 0, 1, '2024-04-13 15:31:20', '2024-04-13 17:15:29'),
(290, 1, NULL, '7759', 'Hot Fiesta', '7759', NULL, NULL, 'drakon/Hot Fiesta.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(291, 1, NULL, '7758', 'The Hand of Midas', '7758', NULL, NULL, 'drakon/The Hand of Midas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(292, 1, NULL, '7757', 'Cowboys Gold', '7757', NULL, NULL, 'drakon/Cowboys Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(293, 1, NULL, '7755', 'Madame Destiny Megaways', '7755', NULL, NULL, 'drakon/Madame Destiny Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(294, 7, NULL, '7753', 'Book of Ra deluxe 10', '7753', NULL, NULL, 'drakon/Book of Ra deluxe 10.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:20', '2024-04-13 15:31:20'),
(295, 7, NULL, '7752', 'Cash Connection Book of Ra', '7752', NULL, NULL, 'drakon/Cash Connection Book of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(296, 7, NULL, '7751', 'Cash Connection Sizzling Hot', '7751', NULL, NULL, 'drakon/Cash Connection Sizzling Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(297, 7, NULL, '7750', 'Lucky Lady s Charm deluxe 6', '7750', NULL, NULL, 'drakon/Lucky Lady s Charm deluxe 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(298, 7, NULL, '7710', 'Fruits and Royals', '7710', NULL, NULL, 'drakon/Fruits and Royals.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(299, 12, NULL, '7708', 'Assassin Moon', '7708', NULL, NULL, 'drakon/Assassin Moon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(300, 13, NULL, '7707', 'Light Em Up', '7707', NULL, NULL, 'drakon/Light Em Up.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(301, 13, NULL, '7706', 'Flash Cash', '7706', NULL, NULL, 'drakon/Flash Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(302, 13, NULL, '7705', 'Thunder Cash', '7705', NULL, NULL, 'drakon/Thunder Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(303, 13, NULL, '7704', 'The Enforcer', '7704', NULL, NULL, 'drakon/The Enforcer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(304, 13, NULL, '7703', 'Reel Hot 7s Fruit', '7703', NULL, NULL, 'drakon/Reel Hot 7s Fruit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(305, 13, NULL, '7702', 'Pac Man Wild Edition', '7702', NULL, NULL, 'drakon/Pac Man Wild Edition.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(306, 13, NULL, '7701', 'Super Crystal 7s', '7701', NULL, NULL, 'drakon/Super Crystal 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(307, 13, NULL, '7700', 'Island Princess Quad Shot', '7700', NULL, NULL, 'drakon/Island Princess Quad Shot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(308, 3, NULL, '7699', 'Hottest Fruits 40', '7699', NULL, NULL, 'drakon/Hottest Fruits 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(309, 3, NULL, '7698', 'Lucky Joker 40', '7698', NULL, NULL, 'drakon/Lucky Joker 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(310, 3, NULL, '7697', 'All Ways Hot Fruits', '7697', NULL, NULL, 'drakon/All Ways Hot Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(311, 3, NULL, '7696', 'Fire Queen', '7696', NULL, NULL, 'drakon/Fire Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(312, 3, NULL, '7695', 'Hot Fruits 27', '7695', NULL, NULL, 'drakon/Hot Fruits 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(313, 14, NULL, '7694', 'Sevens', '7694', NULL, NULL, 'drakon/Sevens.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(314, 1, NULL, '7692', 'John Hunter And The Mayan Gods', '7692', NULL, NULL, 'drakon/John Hunter And The Mayan Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(315, 1, NULL, '7689', 'Street Racer', '7689', NULL, NULL, 'drakon/Street Racer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(316, 1, NULL, '7688', 'Starz Megaways', '7688', NULL, NULL, 'drakon/Starz Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(317, 1, NULL, '7687', 'Fruit Party', '7687', NULL, NULL, 'drakon/Fruit Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(318, 1, NULL, '7686', 'Great Rhino Megaways', '7686', NULL, NULL, 'drakon/Great Rhino Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(319, 1, NULL, '7685', 'Bronco Spirit', '7685', NULL, NULL, 'drakon/Bronco Spirit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(320, 1, NULL, '7683', 'Dance Party', '7683', NULL, NULL, 'drakon/Dance Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(321, 1, NULL, '7682', 'Master Joker', '7682', NULL, NULL, 'drakon/Master Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(322, 1, NULL, '7680', 'Greek Gods', '7680', NULL, NULL, 'drakon/Greek Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(323, 1, NULL, '7679', 'Aladdin and the Sorcerer', '7679', NULL, NULL, 'drakon/Aladdin and the Sorcerer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(324, 1, NULL, '7678', 'Honey Honey Honey', '7678', NULL, NULL, 'drakon/Honey Honey Honey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(325, 1, NULL, '7677', 'Tree of Riches', '7677', NULL, NULL, 'drakon/Tree of Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(326, 1, NULL, '7676', 'John Hunter and the Aztec Treasure', '7676', NULL, NULL, 'drakon/John Hunter and the Aztec Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:23', '2024-04-13 15:31:23'),
(327, 1, NULL, '7675', '5 Lions Gold', '7675', NULL, NULL, 'drakon/5 Lions Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(328, 1, NULL, '7674', 'The Dog House', '7674', NULL, NULL, 'drakon/The Dog House.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(329, 1, NULL, '7673', 'Wild Pixies', '7673', NULL, NULL, 'drakon/Wild Pixies.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(330, 1, NULL, '7671', 'Mustang Gold', '7671', NULL, NULL, 'drakon/Mustang Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(331, 1, NULL, '7670', 'Vegas Magic', '7670', NULL, NULL, 'drakon/Vegas Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(332, 1, NULL, '7669', 'Asgard', '7669', NULL, NULL, 'drakon/Asgard.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(333, 1, NULL, '7668', 'The Champions', '7668', NULL, NULL, 'drakon/The Champions.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(334, 1, NULL, '7667', '5 Lions', '7667', NULL, NULL, 'drakon/5 Lions.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(335, 1, NULL, '7665', 'Fire 88', '7665', NULL, NULL, 'drakon/Fire 88.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(336, 1, NULL, '7664', 'Diamond Strike', '7664', NULL, NULL, 'drakon/Diamond Strike.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:24', '2024-04-13 15:31:24'),
(337, 1, NULL, '7663', 'Wild Spells', '7663', NULL, NULL, 'drakon/Wild Spells.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(338, 1, NULL, '7662', 'Caishens Gold', '7662', NULL, NULL, 'drakon/Caishens Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(339, 1, NULL, '7661', 'Pixie Wings', '7661', NULL, NULL, 'drakon/Pixie Wings.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(340, 1, NULL, '7660', 'Jurassic Giants', '7660', NULL, NULL, 'drakon/Jurassic Giants.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(341, 1, NULL, '7659', '8 Dragons', '7659', NULL, NULL, 'drakon/8 Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(342, 1, NULL, '7658', 'Gold Train', '7658', NULL, NULL, 'drakon/Gold Train.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(343, 1, NULL, '7657', '3 Kingdoms Battle of Red Cliffs', '7657', NULL, NULL, 'drakon/3 Kingdoms Battle of Red Cliffs.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(344, 1, NULL, '7656', 'Hercules Son of Zeus', '7656', NULL, NULL, 'drakon/Hercules Son of Zeus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(345, 1, NULL, '7655', 'Beowulf', '7655', NULL, NULL, 'drakon/Beowulf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(346, 1, NULL, '7654', 'Lucky Dragons', '7654', NULL, NULL, 'drakon/Lucky Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(347, 1, NULL, '7653', 'The Catfather Part II', '7653', NULL, NULL, 'drakon/The Catfather Part II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(348, 1, NULL, '7652', 'Mighty Kong', '7652', NULL, NULL, 'drakon/Mighty Kong.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:25', '2024-04-13 15:31:25'),
(349, 1, NULL, '7651', 'Lady Godiva', '7651', NULL, NULL, 'drakon/Lady Godiva.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(350, 1, NULL, '7650', 'Magic Crystals', '7650', NULL, NULL, 'drakon/Magic Crystals.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(351, 1, NULL, '7649', 'Aladdin Treasure', '7649', NULL, NULL, 'drakon/Aladdin Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(352, 1, NULL, '7648', 'Sugar Rush', '7648', NULL, NULL, 'drakon/Sugar Rush.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(353, 9, NULL, '7645', 'Wooden Fruits', '7645', NULL, NULL, 'drakon/Wooden Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(354, 9, NULL, '7644', 'Horror Joker', '7644', NULL, NULL, 'drakon/Horror Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(355, 15, NULL, '7595', 'Dark Vortex', '7595', NULL, NULL, 'drakon/Dark Vortex.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(356, 15, NULL, '7594', 'Doubles', '7594', NULL, NULL, 'drakon/Doubles.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(357, 15, NULL, '7593', 'Fruitoids', '7593', NULL, NULL, 'drakon/Fruitoids.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(358, 15, NULL, '7592', 'Easter Island', '7592', NULL, NULL, 'drakon/Easter Island.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(359, 15, NULL, '7591', 'Gem Rocks', '7591', NULL, NULL, 'drakon/Gem Rocks.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(360, 15, NULL, '7590', 'Orient Express', '7590', NULL, NULL, 'drakon/Orient Express.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(361, 15, NULL, '7589', 'Penguin City', '7589', NULL, NULL, 'drakon/Penguin City.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(362, 15, NULL, '7588', 'Pumpkin Smash', '7588', NULL, NULL, 'drakon/Pumpkin Smash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(363, 15, NULL, '7587', 'Reptoids', '7587', NULL, NULL, 'drakon/Reptoids.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(364, 15, NULL, '7586', 'Chibeasties 2', '7586', NULL, NULL, 'drakon/Chibeasties 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(365, 15, NULL, '7585', 'Power Plant', '7585', NULL, NULL, 'drakon/Power Plant.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(366, 15, NULL, '7584', 'Sunny Shores', '7584', NULL, NULL, 'drakon/Sunny Shores.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(367, 15, NULL, '7583', 'Rainbow Ryan', '7583', NULL, NULL, 'drakon/Rainbow Ryan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(368, 15, NULL, '7582', 'Valley of the Gods', '7582', NULL, NULL, 'drakon/Valley of the Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(369, 15, NULL, '7580', 'Super Heroes', '7580', NULL, NULL, 'drakon/Super Heroes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:27', '2024-04-13 15:31:27'),
(370, 15, NULL, '7579', 'Nirvana', '7579', NULL, NULL, 'drakon/Nirvana.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(371, 15, NULL, '7576', 'Incinerator', '7576', NULL, NULL, 'drakon/Incinerator.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(372, 15, NULL, '7575', 'Legend of the White Snake Lady', '7575', NULL, NULL, 'drakon/Legend of the White Snake Lady.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(373, 15, NULL, '7573', 'Seasons', '7573', NULL, NULL, 'drakon/Seasons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(374, 15, NULL, '7572', 'Jokerizer', '7572', NULL, NULL, 'drakon/Jokerizer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(375, 15, NULL, '7571', 'Golden Fish Tank', '7571', NULL, NULL, 'drakon/Golden Fish Tank.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(376, 15, NULL, '7570', 'Vikings go Wild', '7570', NULL, NULL, 'drakon/Vikings go Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(377, 15, NULL, '7569', 'Chibeasties', '7569', NULL, NULL, 'drakon/Chibeasties.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(378, 15, NULL, '7568', 'Cyrus Virus', '7568', NULL, NULL, 'drakon/Cyrus Virus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(379, 15, NULL, '7567', 'Dark Joker Rizes', '7567', NULL, NULL, 'drakon/Dark Joker Rizes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(380, 15, NULL, '7566', 'Reef Run', '7566', NULL, NULL, 'drakon/Reef Run.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:28', '2024-04-13 15:31:28'),
(381, 15, NULL, '7564', 'Sahara Nights', '7564', NULL, NULL, 'drakon/Sahara Nights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(382, 15, NULL, '7563', 'The One Armed Bandit', '7563', NULL, NULL, 'drakon/The One Armed Bandit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(383, 15, NULL, '7562', 'Yokozuna Clash', '7562', NULL, NULL, 'drakon/Yokozuna Clash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(384, 15, NULL, '7561', 'Wild Robo Factory', '7561', NULL, NULL, 'drakon/Wild Robo Factory.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(385, 1, NULL, '7558', 'Pyramid King', '7558', NULL, NULL, 'drakon/Pyramid King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(386, 1, NULL, '7557', 'Three Star Fortune', '7557', NULL, NULL, 'drakon/Three Star Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(387, 1, NULL, '7556', 'Ultra Burn', '7556', NULL, NULL, 'drakon/Ultra Burn.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(388, 1, NULL, '7551', 'Money Mouse', '7551', NULL, NULL, 'drakon/Money Mouse.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(389, 1, NULL, '7550', 'Sweet Bonanza Xmas', '7550', NULL, NULL, 'drakon/Sweet Bonanza Xmas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(390, 1, NULL, '7549', 'Fire Strike', '7549', NULL, NULL, 'drakon/Fire Strike.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:29', '2024-04-13 15:31:29'),
(391, 1, NULL, '7548', 'John Hunter and the Tomb of the Scarab Queen', '7548', NULL, NULL, 'drakon/John Hunter and the Tomb of the Scarab Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(392, 1, NULL, '7547', 'Vampires vs Wolves', '7547', NULL, NULL, 'drakon/Vampires vs Wolves.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(393, 1, NULL, '7546', 'Sweet Bonanza', '7546', NULL, NULL, 'drakon/Sweet Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(394, 1, NULL, '7545', 'Triple Jokers', '7545', NULL, NULL, 'drakon/Triple Jokers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(395, 1, NULL, '7544', 'Egyptian Fortunes', '7544', NULL, NULL, 'drakon/Egyptian Fortunes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(396, 1, NULL, '7543', 'Extra Juicy', '7543', NULL, NULL, 'drakon/Extra Juicy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(397, 1, NULL, '7541', 'Treasure Horse', '7541', NULL, NULL, 'drakon/Treasure Horse.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(398, 1, NULL, '7540', 'Triple Dragons', '7540', NULL, NULL, 'drakon/Triple Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(399, 1, NULL, '7539', 'Ancient Egypt Classic', '7539', NULL, NULL, 'drakon/Ancient Egypt Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(400, 1, NULL, '7538', 'Peking Luck', '7538', NULL, NULL, 'drakon/Peking Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(401, 1, NULL, '7537', 'Madame Destiny', '7537', NULL, NULL, 'drakon/Madame Destiny.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:30', '2024-04-13 15:31:30'),
(402, 1, NULL, '7535', 'Aztec Gems', '7535', NULL, NULL, 'drakon/Aztec Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(403, 1, NULL, '7534', 'Ancient Egypt', '7534', NULL, NULL, 'drakon/Ancient Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(404, 1, NULL, '7533', 'Lucky New Year', '7533', NULL, NULL, 'drakon/Lucky New Year.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(405, 1, NULL, '7531', 'Gold Rush', '7531', NULL, NULL, 'drakon/Gold Rush.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(406, 1, NULL, '7530', 'Monkey Madness', '7530', NULL, NULL, 'drakon/Monkey Madness.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(407, 1, NULL, '7529', 'Triple Tigers', '7529', NULL, NULL, 'drakon/Triple Tigers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(408, 1, NULL, '7528', 'Santa', '7528', NULL, NULL, 'drakon/Santa.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(409, 1, NULL, '7527', 'Pandas Fortune', '7527', NULL, NULL, 'drakon/Pandas Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(410, 1, NULL, '7525', 'Wolf Gold', '7525', NULL, NULL, 'drakon/Wolf Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(411, 1, NULL, '7523', 'Panther Queen', '7523', NULL, NULL, 'drakon/Panther Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(412, 1, NULL, '7522', 'Dragon Kingdom', '7522', NULL, NULL, 'drakon/Dragon Kingdom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:31', '2024-04-13 15:31:31'),
(413, 1, NULL, '7521', 'Journey to the West', '7521', NULL, NULL, 'drakon/Journey to the West.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(414, 1, NULL, '7520', 'Dwarven Gold Deluxe', '7520', NULL, NULL, 'drakon/Dwarven Gold Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(415, 1, NULL, '7519', 'Romeo and Juliet', '7519', NULL, NULL, 'drakon/Romeo and Juliet.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(416, 1, NULL, '7517', 'Hockey League Wild Match', '7517', NULL, NULL, 'drakon/Hockey League Wild Match.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(417, 1, NULL, '7516', 'The Catfather', '7516', NULL, NULL, 'drakon/The Catfather.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(418, 1, NULL, '7515', 'Hockey League', '7515', NULL, NULL, 'drakon/Hockey League.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(419, 1, NULL, '7514', 'Dwarven Gold', '7514', NULL, NULL, 'drakon/Dwarven Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(420, 1, NULL, '7513', 'Glorious Rome', '7513', NULL, NULL, 'drakon/Glorious Rome.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(421, 1, NULL, '7512', 'Tales of Egypt', '7512', NULL, NULL, 'drakon/Tales of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(422, 1, NULL, '7511', 'Jungle Gorilla', '7511', NULL, NULL, 'drakon/Jungle Gorilla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:32', '2024-04-13 15:31:32'),
(423, 1, NULL, '7510', 'Spartan King', '7510', NULL, NULL, 'drakon/Spartan King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(424, 16, NULL, '7198', 'Dracula', '7198', NULL, NULL, 'drakon/Dracula.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(425, 16, NULL, '7197', 'Scruffy Duck', '7197', NULL, NULL, 'drakon/Scruffy Duck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(426, 16, NULL, '7194', 'Twin Spin Deluxe', '7194', NULL, NULL, 'drakon/Twin Spin Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(427, 16, NULL, '7192', 'Finn and the Swirly Spin', '7192', NULL, NULL, 'drakon/Finn and the Swirly Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(428, 16, NULL, '7189', 'Flowers Christmas Edition', '7189', NULL, NULL, 'drakon/Flowers Christmas Edition.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(429, 16, NULL, '7188', 'Lucky Angler', '7188', NULL, NULL, 'drakon/Lucky Angler.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(430, 16, NULL, '7187', 'Secret Of The Stones', '7187', NULL, NULL, 'drakon/Secret Of The Stones.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(431, 16, NULL, '7186', 'Planet of the Apes', '7186', NULL, NULL, 'drakon/Planet of the Apes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(432, 16, NULL, '7184', 'Coins of Egypt', '7184', NULL, NULL, 'drakon/Coins of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(433, 16, NULL, '7183', 'Asgardian Stones', '7183', NULL, NULL, 'drakon/Asgardian Stones.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(434, 16, NULL, '7181', 'Cosmic Eclipse', '7181', NULL, NULL, 'drakon/Cosmic Eclipse.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(435, 16, NULL, '7180', 'Hotline', '7180', NULL, NULL, 'drakon/Hotline.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(436, 16, NULL, '7179', 'Archangels', '7179', NULL, NULL, 'drakon/Archangels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(437, 16, NULL, '7178', 'Lost Relics', '7178', NULL, NULL, 'drakon/Lost Relics.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(438, 16, NULL, '7174', 'Mr Green: Grand Tour', '7174', NULL, NULL, 'drakon/Mr Green: Grand Tour.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(439, 16, NULL, '7173', 'Mr Green: Moonlight', '7173', NULL, NULL, 'drakon/Mr Green: Moonlight.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(440, 16, NULL, '7172', 'Swipe & Roll', '7172', NULL, NULL, 'drakon/Swipe & Roll.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(441, 16, NULL, '7170', 'Jumanji', '7170', NULL, NULL, 'drakon/Jumanji.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:34', '2024-04-13 15:31:34'),
(442, 16, NULL, '7168', 'Berry Burst Max', '7168', NULL, NULL, 'drakon/Berry Burst Max.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(443, 16, NULL, '7167', 'Berry Burst', '7167', NULL, NULL, 'drakon/Berry Burst.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(444, 16, NULL, '7166', 'Fruit Shop Christmas Edition', '7166', NULL, NULL, 'drakon/Fruit Shop Christmas Edition.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(445, 16, NULL, '7165', 'Wild Bazaar', '7165', NULL, NULL, 'drakon/Wild Bazaar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(446, 16, NULL, '7164', 'Fire Siege Fortress', '7164', NULL, NULL, 'drakon/Fire Siege Fortress.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(447, 16, NULL, '7161', 'Halloween Jack', '7161', NULL, NULL, 'drakon/Halloween Jack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(448, 16, NULL, '7160', 'Vikings', '7160', NULL, NULL, 'drakon/Vikings.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(449, 16, NULL, '7159', 'Jingle Spin', '7159', NULL, NULL, 'drakon/Jingle Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(450, 16, NULL, '7158', 'Turn Your Fortune', '7158', NULL, NULL, 'drakon/Turn Your Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(451, 16, NULL, '7157', 'Strolling Staxx', '7157', NULL, NULL, 'drakon/Strolling Staxx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:35', '2024-04-13 15:31:35'),
(452, 16, NULL, '7156', 'Golden Grimoire', '7156', NULL, NULL, 'drakon/Golden Grimoire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(453, 16, NULL, '7154', 'Wild Turkey', '7154', NULL, NULL, 'drakon/Wild Turkey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(454, 16, NULL, '7153', 'Creature from the Black Lagoon', '7153', NULL, NULL, 'drakon/Creature from the Black Lagoon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(455, 16, NULL, '7152', 'Robin Hood', '7152', NULL, NULL, 'drakon/Robin Hood.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(456, 16, NULL, '7151', 'Fruit Case', '7151', NULL, NULL, 'drakon/Fruit Case.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(457, 16, NULL, '7150', 'Wild Worlds', '7150', NULL, NULL, 'drakon/Wild Worlds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(458, 16, NULL, '7149', 'Dead or Alive 2', '7149', NULL, NULL, 'drakon/Dead or Alive 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(459, 16, NULL, '7148', 'Jacks or Better', '7148', NULL, NULL, 'drakon/Jacks or Better.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(460, 16, NULL, '7147', 'Blackjack', '7147', NULL, NULL, 'drakon/Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(461, 16, NULL, '7146', 'Baccarat', '7146', NULL, NULL, 'drakon/Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(462, 16, NULL, '7143', 'Arcane Reel Chaos', '7143', NULL, NULL, 'drakon/Arcane Reel Chaos.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:36', '2024-04-13 15:31:36'),
(463, 16, NULL, '7142', 'Go bananas', '7142', NULL, NULL, 'drakon/Go bananas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(464, 16, NULL, '7141', 'Narcos', '7141', NULL, NULL, 'drakon/Narcos.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(465, 16, NULL, '7139', 'Cash-O-Matic', '7139', NULL, NULL, 'drakon/Cash-O-Matic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(466, 16, NULL, '7137', 'Imperial Riches', '7137', NULL, NULL, 'drakon/Imperial Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(467, 16, NULL, '7136', 'Conan', '7136', NULL, NULL, 'drakon/Conan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(468, 16, NULL, '7134', 'Happy Panda', '7134', NULL, NULL, 'drakon/Happy Panda.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(469, 16, NULL, '7133', 'King of 3 Kingdoms', '7133', NULL, NULL, 'drakon/King of 3 Kingdoms.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(470, 16, NULL, '7130', 'The Wish Master', '7130', NULL, NULL, 'drakon/The Wish Master.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(471, 16, NULL, '7128', 'Magic Maid Cafe', '7128', NULL, NULL, 'drakon/Magic Maid Cafe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(472, 16, NULL, '7127', 'Reel Rush 2', '7127', NULL, NULL, 'drakon/Reel Rush 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:37', '2024-04-13 15:31:37'),
(473, 16, NULL, '7126', 'Long Pao', '7126', NULL, NULL, 'drakon/Long Pao.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(474, 16, NULL, '7125', 'Ozzy Osbourne', '7125', NULL, NULL, 'drakon/Ozzy Osbourne.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(475, 16, NULL, '7124', 'Santa vs Rudolf', '7124', NULL, NULL, 'drakon/Santa vs Rudolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(476, 16, NULL, '7123', 'Wings of Riches', '7123', NULL, NULL, 'drakon/Wings of Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(477, 16, NULL, '7122', 'Rise of Maya', '7122', NULL, NULL, 'drakon/Rise of Maya.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(478, 16, NULL, '7121', 'Gorilla Kingdom', '7121', NULL, NULL, 'drakon/Gorilla Kingdom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(479, 16, NULL, '7120', 'Cash Noire', '7120', NULL, NULL, 'drakon/Cash Noire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(480, 16, NULL, '7119', 'Dark King: Forbidden Riches', '7119', NULL, NULL, 'drakon/Dark King: Forbidden Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(481, 16, NULL, '7118', 'Disco Danny', '7118', NULL, NULL, 'drakon/Disco Danny.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(482, 16, NULL, '7117', 'East Sea Dragon King', '7117', NULL, NULL, 'drakon/East Sea Dragon King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(483, 16, NULL, '7116', 'Gods of Gold INFINIREELS', '7116', NULL, NULL, 'drakon/Gods of Gold INFINIREELS.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:38', '2024-04-13 15:31:38'),
(484, 16, NULL, '7115', 'Happy Riches', '7115', NULL, NULL, 'drakon/Happy Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(485, 16, NULL, '7114', 'Irish Pot Luck', '7114', NULL, NULL, 'drakon/Irish Pot Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(486, 16, NULL, '7112', 'Street Fighter II: The World Warrior', '7112', NULL, NULL, 'drakon/Street Fighter II: The World Warrior.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(487, 16, NULL, '7111', 'Super Striker', '7111', NULL, NULL, 'drakon/Super Striker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(488, 16, NULL, '7110', 'Trollpot 5000', '7110', NULL, NULL, 'drakon/Trollpot 5000.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(489, 16, NULL, '7109', 'Twin Spin MegaWays', '7109', NULL, NULL, 'drakon/Twin Spin MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(490, 16, NULL, '7108', 'Vegas Night Life', '7108', NULL, NULL, 'drakon/Vegas Night Life.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(491, 16, NULL, '7107', 'Wilderland', '7107', NULL, NULL, 'drakon/Wilderland.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(492, 16, NULL, '7106', 'Riches of Midgard', '7106', NULL, NULL, 'drakon/Riches of Midgard.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(493, 16, NULL, '7105', 'Aloha Christmas Megaways', '7105', NULL, NULL, 'drakon/Aloha Christmas Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:39', '2024-04-13 15:31:39'),
(494, 16, NULL, '7104', 'Divine Megaways', '7104', NULL, NULL, 'drakon/Divine Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(495, 16, NULL, '7103', 'Hotline 2', '7103', NULL, NULL, 'drakon/Hotline 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(496, 16, NULL, '7102', 'Wonderland Protector', '7102', NULL, NULL, 'drakon/Wonderland Protector.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(497, 16, NULL, '7100', 'Dead or Alive 2 - Feature Buy', '7100', NULL, NULL, 'drakon/Dead or Alive 2 - Feature Buy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(498, 17, NULL, '7059', 'Taberna De Los Muertos', '7059', NULL, NULL, 'drakon/Taberna De Los Muertos.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(499, 14, NULL, '7058', 'King Colossus', '7058', NULL, NULL, 'drakon/King Colossus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(500, 12, NULL, '7057', '9 Pots of Gold', '7057', NULL, NULL, 'drakon/9 Pots of Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(501, 16, NULL, '7055', 'Twin Happiness', '7055', NULL, NULL, 'drakon/Twin Happiness.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(502, 16, NULL, '7054', 'Pirate from the East', '7054', NULL, NULL, 'drakon/Pirate from the East.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(503, 16, NULL, '7053', 'Sweety Honey Fruity', '7053', NULL, NULL, 'drakon/Sweety Honey Fruity.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(504, 16, NULL, '7052', 'Fortune Rangers', '7052', NULL, NULL, 'drakon/Fortune Rangers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(505, 12, NULL, '7049', '9 Masks of Fire', '7049', NULL, NULL, 'drakon/9 Masks of Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(506, 13, NULL, '7048', 'Stormin 7s', '7048', NULL, NULL, 'drakon/Stormin 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(507, 13, NULL, '7047', 'Mighty Wilds', '7047', NULL, NULL, 'drakon/Mighty Wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(508, 13, NULL, '7046', 'Jade Tiger', '7046', NULL, NULL, 'drakon/Jade Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(509, 13, NULL, '7045', 'Winning Wolf', '7045', NULL, NULL, 'drakon/Winning Wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(510, 4, NULL, '7044', '5 Treasures', '7044', NULL, NULL, 'drakon/5 Treasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(511, 4, NULL, '7043', 'Dancing Drums', '7043', NULL, NULL, 'drakon/Dancing Drums.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(512, 4, NULL, '7042', 'King of Africa', '7042', NULL, NULL, 'drakon/King of Africa.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(513, 4, NULL, '7041', 'Zeus', '7041', NULL, NULL, 'drakon/Zeus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(514, 4, NULL, '7040', 'Desert Cats', '7040', NULL, NULL, 'drakon/Desert Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:41', '2024-04-13 15:31:41'),
(515, 4, NULL, '7039', 'Bier Haus', '7039', NULL, NULL, 'drakon/Bier Haus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(516, 4, NULL, '7038', 'Amazon Queen', '7038', NULL, NULL, 'drakon/Amazon Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(517, 4, NULL, '7037', 'Jinse Dao Dragon', '7037', NULL, NULL, 'drakon/Jinse Dao Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(518, 1, NULL, '7030', 'Queen of Gold', '7030', NULL, NULL, 'drakon/Queen of Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(519, 1, NULL, '7028', 'Great Rhino Deluxe', '7028', NULL, NULL, 'drakon/Great Rhino Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(520, 1, NULL, '7027', 'Wild Gladiators', '7027', NULL, NULL, 'drakon/Wild Gladiators.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(521, 1, NULL, '7026', 'Ultra Hold and Spin', '7026', NULL, NULL, 'drakon/Ultra Hold and Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(522, 1, NULL, '7025', 'Joker King', '7025', NULL, NULL, 'drakon/Joker King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(523, 1, NULL, '7021', 'Buffalo King', '7021', NULL, NULL, 'drakon/Buffalo King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(524, 1, NULL, '7020', 'Jokers Jewels', '7020', NULL, NULL, 'drakon/Jokers Jewels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(525, 1, NULL, '7019', '7 Monkeys', '7019', NULL, NULL, 'drakon/7 Monkeys.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:42', '2024-04-13 15:31:42'),
(526, 1, NULL, '7018', 'Fruit Rainbow', '7018', NULL, NULL, 'drakon/Fruit Rainbow.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(527, 1, NULL, '7017', 'Hot Safari', '7017', NULL, NULL, 'drakon/Hot Safari.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(528, 9, NULL, '7016', 'Jewel Fruits', '7016', NULL, NULL, 'drakon/Jewel Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(529, 9, NULL, '7015', 'Midnight Fruits', '7015', NULL, NULL, 'drakon/Midnight Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(530, 9, NULL, '7014', 'Occultum 81', '7014', NULL, NULL, 'drakon/Occultum 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(531, 7, NULL, '7013', 'Book of Ra Magic', '7013', NULL, NULL, 'drakon/Book of Ra Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(532, 1, NULL, '7012', 'Wild West Gold', '7012', NULL, NULL, 'drakon/Wild West Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(533, 1, NULL, '7011', 'The Dog House Megaways', '7011', NULL, NULL, 'drakon/The Dog House Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(534, 18, NULL, '7010', 'Treasures Of Troy', '7010', NULL, NULL, 'drakon/Treasures Of Troy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(535, 1, NULL, '7009', 'Great Rhino', '7009', NULL, NULL, 'drakon/Great Rhino.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(536, 1, NULL, '7006', 'Super 7s', '7006', NULL, NULL, 'drakon/Super 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(537, 8, NULL, '7005', 'Happy Prosperous', '7005', NULL, NULL, 'drakon/Happy Prosperous.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(538, 1, NULL, '7004', 'Monkey Warrior', '7004', NULL, NULL, 'drakon/Monkey Warrior.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(539, 1, NULL, '7003', 'The Wild Machine', '7003', NULL, NULL, 'drakon/The Wild Machine.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(540, 14, NULL, '7002', 'Second Strike', '7002', NULL, NULL, 'drakon/Second Strike.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(541, 12, NULL, '7000', 'Avalon', '7000', NULL, NULL, 'drakon/Avalon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(542, 12, NULL, '6999', 'Titans of the Sun Theia', '6999', NULL, NULL, 'drakon/Titans of the Sun Theia.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(543, 1, NULL, '6998', 'Chilli Heat', '6998', NULL, NULL, 'drakon/Chilli Heat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(544, 1, NULL, '6997', 'Caishens Cash', '6997', NULL, NULL, 'drakon/Caishens Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(545, 1, NULL, '6995', 'Hot to Burn', '6995', NULL, NULL, 'drakon/Hot to Burn.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(546, 1, NULL, '6994', 'Gorilla', '6994', NULL, NULL, 'drakon/Gorilla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(547, 1, NULL, '6993', 'Juicy', '6993', NULL, NULL, 'drakon/Juicy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:44', '2024-04-13 15:31:44'),
(548, 1, NULL, '6992', 'Safari King', '6992', NULL, NULL, 'drakon/Safari King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(549, 7, NULL, '6991', 'Asian Diamonds', '6991', NULL, NULL, 'drakon/Asian Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(550, 7, NULL, '6990', 'Ultra Hot Deluxe', '6990', NULL, NULL, 'drakon/Ultra Hot Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(551, 8, NULL, '6988', 'Panda Magic', '6988', NULL, NULL, 'drakon/Panda Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(552, 18, NULL, '6986', 'Elephant King', '6986', NULL, NULL, 'drakon/Elephant King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(553, 18, NULL, '6984', 'Enchanted Lamp', '6984', NULL, NULL, 'drakon/Enchanted Lamp.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(554, 13, NULL, '6966', 'Jungle Monkeys', '6966', NULL, NULL, 'drakon/Jungle Monkeys.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(555, 13, NULL, '6965', 'Prosperity Dragon', '6965', NULL, NULL, 'drakon/Prosperity Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(556, 13, NULL, '6964', 'Mustang Money', '6964', NULL, NULL, 'drakon/Mustang Money.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(557, 13, NULL, '6963', 'Roaming Reels', '6963', NULL, NULL, 'drakon/Roaming Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:45', '2024-04-13 15:31:45'),
(558, 13, NULL, '6962', 'Sugar N Spice Hummin', '6962', NULL, NULL, 'drakon/Sugar N Spice Hummin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(559, 13, NULL, '6961', 'Cash Cave', '6961', NULL, NULL, 'drakon/Cash Cave.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(560, 13, NULL, '6960', 'Dragon lines', '6960', NULL, NULL, 'drakon/Dragon lines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(561, 4, NULL, '6958', 'Blazing X', '6958', NULL, NULL, 'drakon/Blazing X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(562, 4, NULL, '6957', 'Endless Treasure', '6957', NULL, NULL, 'drakon/Endless Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(563, 4, NULL, '6956', 'Pharaohs Dream', '6956', NULL, NULL, 'drakon/Pharaohs Dream.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(564, 4, NULL, '6954', 'Lady Robin Hood', '6954', NULL, NULL, 'drakon/Lady Robin Hood.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(565, 4, NULL, '6953', 'Quick Hit Super Wheel Wild Red', '6953', NULL, NULL, 'drakon/Quick Hit Super Wheel Wild Red.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(566, 4, NULL, '6951', 'Hot Shot Progressive', '6951', NULL, NULL, 'drakon/Hot Shot Progressive.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(567, 4, NULL, '6950', 'Jungle Wild', '6950', NULL, NULL, 'drakon/Jungle Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(568, 4, NULL, '6949', 'Celestial King', '6949', NULL, NULL, 'drakon/Celestial King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:46', '2024-04-13 15:31:46'),
(569, 4, NULL, '6948', 'Triple Cash Wheel', '6948', NULL, NULL, 'drakon/Triple Cash Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(570, 4, NULL, '6947', 'Acorn Pixie', '6947', NULL, NULL, 'drakon/Acorn Pixie.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(571, 4, NULL, '6945', 'Wishing You Fortune', '6945', NULL, NULL, 'drakon/Wishing You Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(572, 4, NULL, '6944', 'Fu Dao Le', '6944', NULL, NULL, 'drakon/Fu Dao Le.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(573, 4, NULL, '6943', 'Lucky Tree', '6943', NULL, NULL, 'drakon/Lucky Tree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(574, 4, NULL, '6942', 'Michael Jackson', '6942', NULL, NULL, 'drakon/Michael Jackson.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(575, 7, NULL, '6938', 'Indian Spirit Deluxe', '6938', NULL, NULL, 'drakon/Indian Spirit Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(576, 12, NULL, '6937', 'Age Of Conquest', '6937', NULL, NULL, 'drakon/Age Of Conquest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(577, 17, NULL, '6933', 'Happy Ape', '6933', NULL, NULL, 'drakon/Happy Ape.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(578, 17, NULL, '6932', 'Panda Panda', '6932', NULL, NULL, 'drakon/Panda Panda.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:47', '2024-04-13 15:31:47'),
(579, 17, NULL, '6931', 'Lucky Fortune Cat', '6931', NULL, NULL, 'drakon/Lucky Fortune Cat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(580, 19, NULL, '6930', 'Pumpkin Fairy', '6930', NULL, NULL, 'drakon/Pumpkin Fairy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(581, 3, NULL, '6929', 'Plenty Dragons', '6929', NULL, NULL, 'drakon/Plenty Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(582, 3, NULL, '6928', 'Lucky Joker 100', '6928', NULL, NULL, 'drakon/Lucky Joker 100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(583, 3, NULL, '6927', 'Lucky Respin', '6927', NULL, NULL, 'drakon/Lucky Respin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(584, 3, NULL, '6926', 'Nicer Dice 40', '6926', NULL, NULL, 'drakon/Nicer Dice 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(585, 7, NULL, '6925', 'Eye Of The Dragon', '6925', NULL, NULL, 'drakon/Eye Of The Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(586, 7, NULL, '6924', 'The Real King Gold Records', '6924', NULL, NULL, 'drakon/The Real King Gold Records.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(587, 20, NULL, '6923', 'Legend of the Sphinx', '6923', NULL, NULL, 'drakon/Legend of the Sphinx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(588, 20, NULL, '6922', 'Pirates', '6922', NULL, NULL, 'drakon/Pirates.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(589, 20, NULL, '6921', 'Arriva Arriva', '6921', NULL, NULL, 'drakon/Arriva Arriva.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(590, 20, NULL, '6920', 'Ocean Tale', '6920', NULL, NULL, 'drakon/Ocean Tale.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(591, 20, NULL, '6919', 'Hypno Hippo', '6919', NULL, NULL, 'drakon/Hypno Hippo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(592, 20, NULL, '6918', 'Leonardos Code', '6918', NULL, NULL, 'drakon/Leonardos Code.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(593, 20, NULL, '6916', 'Bars and Sevens', '6916', NULL, NULL, 'drakon/Bars and Sevens.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(594, 8, NULL, '6912', 'Zorro', '6912', NULL, NULL, 'drakon/Zorro.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(595, 3, NULL, '6911', 'Book of Fruits', '6911', NULL, NULL, 'drakon/Book of Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(596, 3, NULL, '6910', 'Dragons Gift', '6910', NULL, NULL, 'drakon/Dragons Gift.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(597, 3, NULL, '6909', 'Mega Shark', '6909', NULL, NULL, 'drakon/Mega Shark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(598, 8, NULL, '6908', 'Where is the Gold', '6908', NULL, NULL, 'drakon/Where is the Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(599, 8, NULL, '6906', 'Heart Throb', '6906', NULL, NULL, 'drakon/Heart Throb.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(600, 12, NULL, '6905', 'Ancient Fortunes Zeus', '6905', NULL, NULL, 'drakon/Ancient Fortunes Zeus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:49', '2024-04-13 15:31:49'),
(601, 12, NULL, '6904', 'Tarzan Jewels of Opar', '6904', NULL, NULL, 'drakon/Tarzan Jewels of Opar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(602, 12, NULL, '6903', 'Emperor of the Sea', '6903', NULL, NULL, 'drakon/Emperor of the Sea.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(603, 8, NULL, '6902', 'Sahara Gold', '6902', NULL, NULL, 'drakon/Sahara Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(604, 3, NULL, '6901', 'Golden Quest', '6901', NULL, NULL, 'drakon/Golden Quest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(605, 3, NULL, '6900', 'Fortune Girl', '6900', NULL, NULL, 'drakon/Fortune Girl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(606, 3, NULL, '6899', 'Hot Choice Deluxe', '6899', NULL, NULL, 'drakon/Hot Choice Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(607, 3, NULL, '6898', 'Oktoberfest', '6898', NULL, NULL, 'drakon/Oktoberfest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(608, 3, NULL, '6897', 'Hot Scatter Deluxe', '6897', NULL, NULL, 'drakon/Hot Scatter Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(609, 3, NULL, '6896', 'Book of Fruits Halloween', '6896', NULL, NULL, 'drakon/Book of Fruits Halloween.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(610, 3, NULL, '6895', 'Hot Fruits 40', '6895', NULL, NULL, 'drakon/Hot Fruits 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(611, 17, NULL, '6893', 'Hot Hot Halloween', '6893', NULL, NULL, 'drakon/Hot Hot Halloween.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:50', '2024-04-13 15:31:50'),
(612, 14, NULL, '6891', 'Dragon Chase', '6891', NULL, NULL, 'drakon/Dragon Chase.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(613, 14, NULL, '6890', 'Tigers Glory', '6890', NULL, NULL, 'drakon/Tigers Glory.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(614, 14, NULL, '6889', 'Hammer of Vulcan', '6889', NULL, NULL, 'drakon/Hammer of Vulcan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(615, 14, NULL, '6888', 'Arcane Gems', '6888', NULL, NULL, 'drakon/Arcane Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(616, 8, NULL, '6885', 'High Stakes', '6885', NULL, NULL, 'drakon/High Stakes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(617, 8, NULL, '6884', 'Fortune Princess', '6884', NULL, NULL, 'drakon/Fortune Princess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(618, 8, NULL, '6883', 'Tiger Princess', '6883', NULL, NULL, 'drakon/Tiger Princess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(619, 7, NULL, '6878', 'Secret Treasure', '6878', NULL, NULL, 'drakon/Secret Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(620, 7, NULL, '6877', 'Garden of Riches', '6877', NULL, NULL, 'drakon/Garden of Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(621, 7, NULL, '6876', 'Phoenix Fortune', '6876', NULL, NULL, 'drakon/Phoenix Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(622, 7, NULL, '6875', 'Asian Fortunes Eco', '6875', NULL, NULL, 'drakon/Asian Fortunes Eco.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:51', '2024-04-13 15:31:51'),
(623, 7, NULL, '6874', 'Heart of Egypt', '6874', NULL, NULL, 'drakon/Heart of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(624, 7, NULL, '6873', 'Lotus Flower', '6873', NULL, NULL, 'drakon/Lotus Flower.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(625, 7, NULL, '6872', 'Totally Wild', '6872', NULL, NULL, 'drakon/Totally Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(626, 7, NULL, '6871', 'Always Hot deluxe', '6871', NULL, NULL, 'drakon/Always Hot deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(627, 7, NULL, '6870', 'Magic 27', '6870', NULL, NULL, 'drakon/Magic 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(628, 7, NULL, '6869', 'Fabulous Fruits', '6869', NULL, NULL, 'drakon/Fabulous Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(629, 8, NULL, '6867', '5 Koi', '6867', NULL, NULL, 'drakon/5 Koi.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(630, 7, NULL, '6866', 'Island Heat', '6866', NULL, NULL, 'drakon/Island Heat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(631, 15, NULL, '6846', 'Cazino Zeppelin', '6846', NULL, NULL, 'drakon/Cazino Zeppelin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(632, 15, NULL, '6842', 'Bicicleta', '6842', NULL, NULL, 'drakon/Bicicleta.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(633, 15, NULL, '6832', 'Big Blox', '6832', NULL, NULL, 'drakon/Big Blox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:52', '2024-04-13 15:31:52'),
(634, 15, NULL, '6827', '9k Yeti', '6827', NULL, NULL, 'drakon/9k Yeti.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(635, 14, NULL, '6821', 'Hidden Valley', '6821', NULL, NULL, 'drakon/Hidden Valley.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(636, 21, NULL, '6819', 'Xtra 10 Liner', '6819', NULL, NULL, 'drakon/Xtra 10 Liner.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(637, 21, NULL, '6818', 'Blasing Star', '6818', NULL, NULL, 'drakon/Blasing Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(638, 18, NULL, '6817', 'Wolf Ridge', '6817', NULL, NULL, 'drakon/Wolf Ridge.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(639, 14, NULL, '6816', 'Panthers Reign', '6816', NULL, NULL, 'drakon/Panthers Reign.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(640, 14, NULL, '6815', 'Tales of Dr Dolittle', '6815', NULL, NULL, 'drakon/Tales of Dr Dolittle.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(641, 14, NULL, '6814', 'Polar Paws', '6814', NULL, NULL, 'drakon/Polar Paws.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(642, 18, NULL, '6813', 'Ocean Magic', '6813', NULL, NULL, 'drakon/Ocean Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(643, 21, NULL, '6812', 'Cash Fruits Plus', '6812', NULL, NULL, 'drakon/Cash Fruits Plus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(644, 17, NULL, '6811', 'Nuwa', '6811', NULL, NULL, 'drakon/Nuwa.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(645, 14, NULL, '6810', 'Goldilocks II', '6810', NULL, NULL, 'drakon/Goldilocks II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(646, 14, NULL, '6809', 'The Wild Chase', '6809', NULL, NULL, 'drakon/The Wild Chase.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(647, 21, NULL, '6808', 'Gold of Persia', '6808', NULL, NULL, 'drakon/Gold of Persia.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(648, 7, NULL, '6806', 'African Stampede', '6806', NULL, NULL, 'drakon/African Stampede.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(649, 7, NULL, '6805', 'Buffalo Magic', '6805', NULL, NULL, 'drakon/Buffalo Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(650, 18, NULL, '6804', 'Sphinx Wild', '6804', NULL, NULL, 'drakon/Sphinx Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(651, 18, NULL, '6803', 'Action Jack', '6803', NULL, NULL, 'drakon/Action Jack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(652, 21, NULL, '6802', 'Magic Mirror', '6802', NULL, NULL, 'drakon/Magic Mirror.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(653, 14, NULL, '6801', 'Hot Sync', '6801', NULL, NULL, 'drakon/Hot Sync.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(654, 14, NULL, '6800', 'Sakura Fortune', '6800', NULL, NULL, 'drakon/Sakura Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(655, 17, NULL, '6789', 'Hot Hot Fruit', '6789', NULL, NULL, 'drakon/Hot Hot Fruit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(656, 21, NULL, '6788', 'Super 7 Reels', '6788', NULL, NULL, 'drakon/Super 7 Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:54', '2024-04-13 15:31:54'),
(657, 21, NULL, '6787', 'Extra Wild', '6787', NULL, NULL, 'drakon/Extra Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(658, 18, NULL, '6785', 'The Big Easy', '6785', NULL, NULL, 'drakon/The Big Easy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(659, 9, NULL, '6784', 'Sizzle Fire', '6784', NULL, NULL, 'drakon/Sizzle Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(660, 9, NULL, '6783', 'Crystal Miners', '6783', NULL, NULL, 'drakon/Crystal Miners.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(661, 22, NULL, '6751', 'Vegas Reels II', '6751', NULL, NULL, 'drakon/Vegas Reels II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(662, 22, NULL, '6750', 'Gold Roulette', '6750', NULL, NULL, 'drakon/Gold Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(663, 22, NULL, '6749', 'Wild Guns', '6749', NULL, NULL, 'drakon/Wild Guns.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(664, 9, NULL, '6748', 'Atlantis', '6748', NULL, NULL, 'drakon/Atlantis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(665, 22, NULL, '6745', 'Miami Beach', '6745', NULL, NULL, 'drakon/Miami Beach.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(666, 22, NULL, '6744', 'Lucky Queen', '6744', NULL, NULL, 'drakon/Lucky Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(667, 22, NULL, '6743', 'Back to the 70`s', '6743', NULL, NULL, 'drakon/Back to the 70`s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(668, 22, NULL, '6742', 'Lost Treasure', '6742', NULL, NULL, 'drakon/Lost Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(669, 9, NULL, '6741', 'Horus Eye', '6741', NULL, NULL, 'drakon/Horus Eye.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(670, 9, NULL, '6740', 'Mystery Apollo II', '6740', NULL, NULL, 'drakon/Mystery Apollo II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(671, 9, NULL, '6739', 'Gangster World', '6739', NULL, NULL, 'drakon/Gangster World.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(672, 9, NULL, '6738', 'Pandora', '6738', NULL, NULL, 'drakon/Pandora.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(673, 9, NULL, '6737', 'Bonus Joker II', '6737', NULL, NULL, 'drakon/Bonus Joker II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(674, 9, NULL, '6736', 'Smiling Joker II', '6736', NULL, NULL, 'drakon/Smiling Joker II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(675, 9, NULL, '6735', 'Rich Fish', '6735', NULL, NULL, 'drakon/Rich Fish.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(676, 9, NULL, '6734', 'Wild Fruits 27', '6734', NULL, NULL, 'drakon/Wild Fruits 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(677, 9, NULL, '6733', 'Dice 81', '6733', NULL, NULL, 'drakon/Dice 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(678, 9, NULL, '6732', 'Lucky 81', '6732', NULL, NULL, 'drakon/Lucky 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:56', '2024-04-13 15:31:56'),
(679, 9, NULL, '6731', 'Blood', '6731', NULL, NULL, 'drakon/Blood.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(680, 9, NULL, '6730', 'Mad Mechanic Deluxe', '6730', NULL, NULL, 'drakon/Mad Mechanic Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(681, 9, NULL, '6729', 'Turbo Slots', '6729', NULL, NULL, 'drakon/Turbo Slots.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(682, 22, NULL, '6722', 'Mystery Jack Deluxe', '6722', NULL, NULL, 'drakon/Mystery Jack Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(683, 22, NULL, '6718', 'Magic Hot 4 Deluxe', '6718', NULL, NULL, 'drakon/Magic Hot 4 Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(684, 12, NULL, '6712', 'Break Away', '6712', NULL, NULL, 'drakon/Break Away.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(685, 22, NULL, '6711', 'Turbo Play', '6711', NULL, NULL, 'drakon/Turbo Play.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(686, 22, NULL, '6701', 'Juicy Reels', '6701', NULL, NULL, 'drakon/Juicy Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(687, 22, NULL, '6699', 'Lucky Reels', '6699', NULL, NULL, 'drakon/Lucky Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(688, 22, NULL, '6697', 'Lucky Fish', '6697', NULL, NULL, 'drakon/Lucky Fish.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:57', '2024-04-13 15:31:57'),
(689, 22, NULL, '6687', 'Double Tigers', '6687', NULL, NULL, 'drakon/Double Tigers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(690, 7, NULL, '6657', 'Royal Dynasty', '6657', NULL, NULL, 'drakon/Royal Dynasty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(691, 8, NULL, '4638', 'Wild Splash', '4638', NULL, NULL, 'drakon/Wild Splash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(692, 8, NULL, '4637', 'Silk Road', '4637', NULL, NULL, 'drakon/Silk Road.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(693, 7, NULL, '4629', 'Queen Cleopatra', '4629', NULL, NULL, 'drakon/Queen Cleopatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(694, 7, NULL, '4628', 'Wild Country', '4628', NULL, NULL, 'drakon/Wild Country.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(695, 3, NULL, '4612', 'Black Jack', '4612', NULL, NULL, 'drakon/Black Jack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(696, 7, NULL, '4605', 'Apollo God of the Sun', '4605', NULL, NULL, 'drakon/Apollo God of the Sun.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(697, 3, NULL, '4582', 'Hot Fruits 100', '4582', NULL, NULL, 'drakon/Hot Fruits 100.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(698, 3, NULL, '4581', 'Party Night', '4581', NULL, NULL, 'drakon/Party Night.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(699, 3, NULL, '4580', 'Book of Lords', '4580', NULL, NULL, 'drakon/Book of Lords.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:58', '2024-04-13 15:31:58'),
(700, 3, NULL, '4579', 'Book of Queen', '4579', NULL, NULL, 'drakon/Book of Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(701, 3, NULL, '4578', 'Beauty Fairy', '4578', NULL, NULL, 'drakon/Beauty Fairy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(702, 3, NULL, '4577', 'Hot Fruits 20', '4577', NULL, NULL, 'drakon/Hot Fruits 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(703, 3, NULL, '4576', 'Fruit Express', '4576', NULL, NULL, 'drakon/Fruit Express.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(704, 18, NULL, '4575', 'The Wild Life', '4575', NULL, NULL, 'drakon/The Wild Life.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(705, 7, NULL, '4574', 'Lucky Ladys Charm Deluxe 10', '4574', NULL, NULL, 'drakon/Lucky Ladys Charm Deluxe 10.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(706, 7, NULL, '4572', 'American gangster', '4572', NULL, NULL, 'drakon/American gangster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(707, 7, NULL, '4571', 'River Queen', '4571', NULL, NULL, 'drakon/River Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(708, 20, NULL, '4567', 'Red Hot 20', '4567', NULL, NULL, 'drakon/Red Hot 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(709, 20, NULL, '4566', 'Red Hot 40', '4566', NULL, NULL, 'drakon/Red Hot 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(710, 20, NULL, '4565', 'Red Hot Burning', '4565', NULL, NULL, 'drakon/Red Hot Burning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:31:59', '2024-04-13 15:31:59'),
(711, 20, NULL, '4564', 'Red Hot Fruits', '4564', NULL, NULL, 'drakon/Red Hot Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(712, 20, NULL, '4562', 'Red Hot Fruits', '4562', NULL, NULL, 'drakon/Red Hot Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(713, 20, NULL, '4561', 'Red Hot Burning', '4561', NULL, NULL, 'drakon/Red Hot Burning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(714, 20, NULL, '4560', 'Red Hot 40', '4560', NULL, NULL, 'drakon/Red Hot 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(715, 20, NULL, '4559', 'Red Hot 20', '4559', NULL, NULL, 'drakon/Red Hot 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(716, 16, NULL, '4426', 'Double Stacks', '4426', NULL, NULL, 'drakon/Double Stacks.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(717, 16, NULL, '4407', 'Fruit Spin', '4407', NULL, NULL, 'drakon/Fruit Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(718, 16, NULL, '4382', 'Butterfly Staxx', '4382', NULL, NULL, 'drakon/Butterfly Staxx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(719, 7, NULL, '4378', 'Gangster Paradise', '4378', NULL, NULL, 'drakon/Gangster Paradise.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(720, 23, NULL, '4377', '10 Burning Heart', '4377', NULL, NULL, 'drakon/10 Burning Heart.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(721, 23, NULL, '4376', '5 Burning Heart', '4376', NULL, NULL, 'drakon/5 Burning Heart.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(722, 23, NULL, '4375', '20 Burning Hot', '4375', NULL, NULL, 'drakon/20 Burning Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(723, 23, NULL, '4374', 'Dice and Roll', '4374', NULL, NULL, 'drakon/Dice and Roll.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(724, 8, NULL, '4373', 'Pompeii', '4373', NULL, NULL, 'drakon/Pompeii.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(725, 22, NULL, '4372', 'Crazy Cars', '4372', NULL, NULL, 'drakon/Crazy Cars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(726, 22, NULL, '4368', 'Casino Roulette', '4368', NULL, NULL, 'drakon/Casino Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(727, 22, NULL, '4366', 'Extra Bingo', '4366', NULL, NULL, 'drakon/Extra Bingo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(728, 22, NULL, '4365', 'Magic Stars 3', '4365', NULL, NULL, 'drakon/Magic Stars 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(729, 22, NULL, '4364', 'Arcade', '4364', NULL, NULL, 'drakon/Arcade.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(730, 22, NULL, '4362', 'Jumping Fruits', '4362', NULL, NULL, 'drakon/Jumping Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(731, 22, NULL, '4361', 'Jacks Ride', '4361', NULL, NULL, 'drakon/Jacks Ride.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(732, 22, NULL, '4360', 'Triple Star', '4360', NULL, NULL, 'drakon/Triple Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(733, 22, NULL, '4359', 'Dracula Castle', '4359', NULL, NULL, 'drakon/Dracula Castle.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:01', '2024-04-13 15:32:01'),
(734, 22, NULL, '4358', 'Jackpot Builders', '4358', NULL, NULL, 'drakon/Jackpot Builders.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(735, 22, NULL, '4357', 'Tetri Mania', '4357', NULL, NULL, 'drakon/Tetri Mania.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(736, 22, NULL, '4356', 'Wins and Replay', '4356', NULL, NULL, 'drakon/Wins and Replay.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(737, 22, NULL, '4355', 'Hungry Shark', '4355', NULL, NULL, 'drakon/Hungry Shark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(738, 22, NULL, '4354', 'Jack On Hold', '4354', NULL, NULL, 'drakon/Jack On Hold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(739, 22, NULL, '4351', 'Bars&7s', '4351', NULL, NULL, 'drakon/Bars&7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(740, 22, NULL, '4350', 'Magic Target Deluxe', '4350', NULL, NULL, 'drakon/Magic Target Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(741, 22, NULL, '4349', 'Fruit Fiesta', '4349', NULL, NULL, 'drakon/Fruit Fiesta.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(742, 22, NULL, '4348', 'Colin the Cat', '4348', NULL, NULL, 'drakon/Colin the Cat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(743, 22, NULL, '4347', 'Wild Jack 81', '4347', NULL, NULL, 'drakon/Wild Jack 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(744, 22, NULL, '4346', 'Fenix Play 27 Deluxe', '4346', NULL, NULL, 'drakon/Fenix Play 27 Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:02', '2024-04-13 15:32:02'),
(745, 22, NULL, '4345', 'Magic Fruits Deluxe', '4345', NULL, NULL, 'drakon/Magic Fruits Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(746, 22, NULL, '4344', 'Magic Fruits 4 Deluxe', '4344', NULL, NULL, 'drakon/Magic Fruits 4 Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(747, 22, NULL, '4342', 'Wild Jack', '4342', NULL, NULL, 'drakon/Wild Jack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(748, 22, NULL, '4340', 'Mystery Jack', '4340', NULL, NULL, 'drakon/Mystery Jack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(749, 22, NULL, '4339', 'Fenix Play Deluxe', '4339', NULL, NULL, 'drakon/Fenix Play Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(750, 22, NULL, '4338', 'Joker Explosion', '4338', NULL, NULL, 'drakon/Joker Explosion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(751, 22, NULL, '4337', 'Criss Cross 81', '4337', NULL, NULL, 'drakon/Criss Cross 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(752, 22, NULL, '4336', 'Haunted Hospital', '4336', NULL, NULL, 'drakon/Haunted Hospital.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(753, 22, NULL, '4335', 'Wild Girls', '4335', NULL, NULL, 'drakon/Wild Girls.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(754, 22, NULL, '4334', 'In The Forest', '4334', NULL, NULL, 'drakon/In The Forest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:03', '2024-04-13 15:32:03'),
(755, 22, NULL, '4333', 'Sizzling 777', '4333', NULL, NULL, 'drakon/Sizzling 777.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(756, 22, NULL, '4332', 'Highway To Hell', '4332', NULL, NULL, 'drakon/Highway To Hell.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(757, 22, NULL, '4331', 'Burning Reels', '4331', NULL, NULL, 'drakon/Burning Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(758, 22, NULL, '4329', 'Magic Target', '4329', NULL, NULL, 'drakon/Magic Target.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(759, 22, NULL, '4328', 'Valhalla', '4328', NULL, NULL, 'drakon/Valhalla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(760, 22, NULL, '4327', 'Good Luck 40', '4327', NULL, NULL, 'drakon/Good Luck 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(761, 22, NULL, '4326', 'Corrida Romance', '4326', NULL, NULL, 'drakon/Corrida Romance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(762, 22, NULL, '4325', 'Captain Shark', '4325', NULL, NULL, 'drakon/Captain Shark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(763, 22, NULL, '4324', 'Lucky Fortune', '4324', NULL, NULL, 'drakon/Lucky Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(764, 22, NULL, '4322', 'Magic Fruits 81', '4322', NULL, NULL, 'drakon/Magic Fruits 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(765, 22, NULL, '4321', 'Golden Sphinx', '4321', NULL, NULL, 'drakon/Golden Sphinx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:04', '2024-04-13 15:32:04'),
(766, 22, NULL, '4318', 'Dino Reels 81', '4318', NULL, NULL, 'drakon/Dino Reels 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(767, 22, NULL, '4317', 'Night 81 Club', '4317', NULL, NULL, 'drakon/Night 81 Club.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(768, 22, NULL, '4315', 'Football Mania', '4315', NULL, NULL, 'drakon/Football Mania.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(769, 22, NULL, '4313', 'Magic Hot 4', '4313', NULL, NULL, 'drakon/Magic Hot 4.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(770, 22, NULL, '4312', 'Magic Fruits 4', '4312', NULL, NULL, 'drakon/Magic Fruits 4.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(771, 22, NULL, '4311', 'Black Hawk', '4311', NULL, NULL, 'drakon/Black Hawk.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(772, 22, NULL, '4310', 'Hot Party', '4310', NULL, NULL, 'drakon/Hot Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(773, 22, NULL, '4308', 'Burning Stars', '4308', NULL, NULL, 'drakon/Burning Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(774, 22, NULL, '4307', 'Beach Party Hot', '4307', NULL, NULL, 'drakon/Beach Party Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(775, 22, NULL, '4306', 'Fruit Mania Deluxe', '4306', NULL, NULL, 'drakon/Fruit Mania Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:05', '2024-04-13 15:32:05'),
(776, 22, NULL, '4304', 'Hell 81', '4304', NULL, NULL, 'drakon/Hell 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(777, 22, NULL, '4303', 'Demon Jack 27', '4303', NULL, NULL, 'drakon/Demon Jack 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(778, 22, NULL, '4302', 'Super hot', '4302', NULL, NULL, 'drakon/Super hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(779, 22, NULL, '4301', 'Fire Bird', '4301', NULL, NULL, 'drakon/Fire Bird.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(780, 22, NULL, '4299', 'Magic Hot', '4299', NULL, NULL, 'drakon/Magic Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(781, 22, NULL, '4298', 'Fenix Play', '4298', NULL, NULL, 'drakon/Fenix Play.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(782, 22, NULL, '4297', 'Fenix Play 27', '4297', NULL, NULL, 'drakon/Fenix Play 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(783, 22, NULL, '4296', 'Vegas Hot 81', '4296', NULL, NULL, 'drakon/Vegas Hot 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(784, 22, NULL, '4295', 'Magic Stars', '4295', NULL, NULL, 'drakon/Magic Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(785, 22, NULL, '4294', 'Magic Fruits 27', '4294', NULL, NULL, 'drakon/Magic Fruits 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(786, 22, NULL, '4293', 'Magic Fruits', '4293', NULL, NULL, 'drakon/Magic Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(787, 22, NULL, '4292', 'Highschool Manga', '4292', NULL, NULL, 'drakon/Highschool Manga.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:06', '2024-04-13 15:32:06'),
(788, 22, NULL, '4291', '105 Magic', '4291', NULL, NULL, 'drakon/105 Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(789, 22, NULL, '4290', 'Hot 777', '4290', NULL, NULL, 'drakon/Hot 777.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(790, 22, NULL, '4289', 'Magic of the Ring', '4289', NULL, NULL, 'drakon/Magic of the Ring.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(791, 22, NULL, '4288', 'Vegas Hot', '4288', NULL, NULL, 'drakon/Vegas Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(792, 22, NULL, '4287', 'Black Horse', '4287', NULL, NULL, 'drakon/Black Horse.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(793, 23, NULL, '4284', 'Fortune Spells', '4284', NULL, NULL, 'drakon/Fortune Spells.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(794, 23, NULL, '4283', 'Witches Charm', '4283', NULL, NULL, 'drakon/Witches Charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(795, 23, NULL, '4282', 'Dragon Reels', '4282', NULL, NULL, 'drakon/Dragon Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(796, 23, NULL, '4281', 'Forest Band', '4281', NULL, NULL, 'drakon/Forest Band.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(797, 23, NULL, '4280', 'Halloween', '4280', NULL, NULL, 'drakon/Halloween.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(798, 23, NULL, '4279', 'Age of Troy', '4279', NULL, NULL, 'drakon/Age of Troy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(799, 23, NULL, '4278', 'Majestic Forest', '4278', NULL, NULL, 'drakon/Majestic Forest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:07', '2024-04-13 15:32:07'),
(800, 23, NULL, '4277', 'Olympus Glory', '4277', NULL, NULL, 'drakon/Olympus Glory.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(801, 23, NULL, '4276', 'Aztec Glory', '4276', NULL, NULL, 'drakon/Aztec Glory.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(802, 12, NULL, '4275', 'High Lander', '4275', NULL, NULL, 'drakon/High Lander.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(803, 12, NULL, '4273', 'Cool Wolf', '4273', NULL, NULL, 'drakon/Cool Wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(804, 7, NULL, '4272', 'Legend of the Seas', '4272', NULL, NULL, 'drakon/Legend of the Seas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(805, 7, NULL, '4271', 'Jaguar Moon', '4271', NULL, NULL, 'drakon/Jaguar Moon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(806, 18, NULL, '4270', 'Lucky Keno', '4270', NULL, NULL, 'drakon/Lucky Keno.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(807, 23, NULL, '4269', 'Royal Gardens', '4269', NULL, NULL, 'drakon/Royal Gardens.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(808, 3, NULL, '4268', 'Magic Scatter', '4268', NULL, NULL, 'drakon/Magic Scatter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(809, 3, NULL, '4267', 'Sakura Fruits', '4267', NULL, NULL, 'drakon/Sakura Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(810, 3, NULL, '4266', 'Hot 40', '4266', NULL, NULL, 'drakon/Hot 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(811, 3, NULL, '4265', 'Golden Joker', '4265', NULL, NULL, 'drakon/Golden Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:08', '2024-04-13 15:32:08'),
(812, 12, NULL, '4264', 'King Tusk', '4264', NULL, NULL, 'drakon/King Tusk.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(813, 12, NULL, '4263', 'Secret Romance', '4263', NULL, NULL, 'drakon/Secret Romance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(814, 4, NULL, '4262', '88 Fortunes', '4262', NULL, NULL, 'drakon/88 Fortunes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(815, 8, NULL, '4261', 'Choy Sun Doa', '4261', NULL, NULL, 'drakon/Choy Sun Doa.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(816, 12, NULL, '4260', 'Mermaids Millions', '4260', NULL, NULL, 'drakon/Mermaids Millions.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(817, 23, NULL, '4255', 'Versailles Gold', '4255', NULL, NULL, 'drakon/Versailles Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(818, 23, NULL, '4253', 'Amazing Amazonia', '4253', NULL, NULL, 'drakon/Amazing Amazonia.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(819, 23, NULL, '4251', 'Circus Brilliant', '4251', NULL, NULL, 'drakon/Circus Brilliant.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(820, 23, NULL, '4250', 'The Big Journey', '4250', NULL, NULL, 'drakon/The Big Journey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(821, 23, NULL, '4249', 'Fast Money', '4249', NULL, NULL, 'drakon/Fast Money.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(822, 23, NULL, '4248', '30 Spicy Fruits', '4248', NULL, NULL, 'drakon/30 Spicy Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:09', '2024-04-13 15:32:09'),
(823, 23, NULL, '4247', 'Burning Dice', '4247', NULL, NULL, 'drakon/Burning Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(824, 23, NULL, '4246', 'Dice of Ra', '4246', NULL, NULL, 'drakon/Dice of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(825, 23, NULL, '4245', 'Extra Joker', '4245', NULL, NULL, 'drakon/Extra Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(826, 23, NULL, '4244', 'Supreme Dice', '4244', NULL, NULL, 'drakon/Supreme Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(827, 23, NULL, '4243', 'Neon Dice', '4243', NULL, NULL, 'drakon/Neon Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(828, 23, NULL, '4242', '20 Super Dice', '4242', NULL, NULL, 'drakon/20 Super Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(829, 12, NULL, '4240', 'Six Acrobats', '4240', NULL, NULL, 'drakon/Six Acrobats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(830, 12, NULL, '4239', 'Beautiful Bones', '4239', NULL, NULL, 'drakon/Beautiful Bones.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(831, 12, NULL, '4218', 'Monster Wheels', '4218', NULL, NULL, 'drakon/Monster Wheels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(832, 3, NULL, '4217', 'Hot Choice', '4217', NULL, NULL, 'drakon/Hot Choice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(833, 3, NULL, '4216', 'Kings Crown', '4216', NULL, NULL, 'drakon/Kings Crown.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:10', '2024-04-13 15:32:10'),
(834, 3, NULL, '4215', 'Flying Dutchman', '4215', NULL, NULL, 'drakon/Flying Dutchman.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(835, 3, NULL, '4214', 'All Ways Joker', '4214', NULL, NULL, 'drakon/All Ways Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(836, 3, NULL, '4212', 'Enchanted Cleopatra', '4212', NULL, NULL, 'drakon/Enchanted Cleopatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(837, 3, NULL, '4211', 'Ultra Seven', '4211', NULL, NULL, 'drakon/Ultra Seven.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(838, 12, NULL, '4210', 'Burning Desire', '4210', NULL, NULL, 'drakon/Burning Desire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(839, 12, NULL, '4209', 'Alaskan Fishing', '4209', NULL, NULL, 'drakon/Alaskan Fishing.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(840, 12, NULL, '4208', 'Agent Jane Blonde', '4208', NULL, NULL, 'drakon/Agent Jane Blonde.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(841, 7, NULL, '4198', 'Plenty of Fruit 40', '4198', NULL, NULL, 'drakon/Plenty of Fruit 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(842, 7, NULL, '4197', 'Plenty on Twenty II Hot', '4197', NULL, NULL, 'drakon/Plenty on Twenty II Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(843, 7, NULL, '4196', 'Plenty of Fruit 20', '4196', NULL, NULL, 'drakon/Plenty of Fruit 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:11', '2024-04-13 15:32:11'),
(844, 7, NULL, '4195', 'Plenty of Fruit 40', '4195', NULL, NULL, 'drakon/Plenty of Fruit 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(845, 7, NULL, '4194', 'Plenty on Twenty II Hot', '4194', NULL, NULL, 'drakon/Plenty on Twenty II Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(846, 7, NULL, '4193', 'Plenty of Fruit 20', '4193', NULL, NULL, 'drakon/Plenty of Fruit 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(847, 12, NULL, '4191', 'Tomb Raider', '4191', NULL, NULL, 'drakon/Tomb Raider.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(848, 12, NULL, '4190', 'Deck the Halls', '4190', NULL, NULL, 'drakon/Deck the Halls.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(849, 14, NULL, '4187', 'Dragon Shrine', '4187', NULL, NULL, 'drakon/Dragon Shrine.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(850, 14, NULL, '4186', 'Spinions Beach Party', '4186', NULL, NULL, 'drakon/Spinions Beach Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(851, 14, NULL, '4185', 'Gold Lab', '4185', NULL, NULL, 'drakon/Gold Lab.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(852, 8, NULL, '4183', 'Werewolf Wild', '4183', NULL, NULL, 'drakon/Werewolf Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(853, 8, NULL, '4182', 'Fire Light', '4182', NULL, NULL, 'drakon/Fire Light.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(854, 8, NULL, '4181', 'Moon Festival', '4181', NULL, NULL, 'drakon/Moon Festival.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(855, 8, NULL, '4180', 'Lucky 88', '4180', NULL, NULL, 'drakon/Lucky 88.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(856, 8, NULL, '4179', 'Dolphins Treasure', '4179', NULL, NULL, 'drakon/Dolphins Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:12', '2024-04-13 15:32:12'),
(857, 8, NULL, '4178', 'Pelican Pete', '4178', NULL, NULL, 'drakon/Pelican Pete.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(858, 8, NULL, '4177', 'Jaguar Mist', '4177', NULL, NULL, 'drakon/Jaguar Mist.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(859, 16, NULL, '4164', 'Motorhead', '4164', NULL, NULL, 'drakon/Motorhead.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(860, 16, NULL, '4163', 'Secrets of Atlantis', '4163', NULL, NULL, 'drakon/Secrets of Atlantis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(861, 16, NULL, '4160', 'Bloodsuckers II', '4160', NULL, NULL, 'drakon/Bloodsuckers II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(862, 16, NULL, '4157', 'Copy Cats', '4157', NULL, NULL, 'drakon/Copy Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(863, 7, NULL, '3219', 'Queen of Hearts Deluxe', '3219', NULL, NULL, 'drakon/Queen of Hearts Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(864, 7, NULL, '3218', 'Queen of Hearts Deluxe', '3218', NULL, NULL, 'drakon/Queen of Hearts Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(865, 7, NULL, '3217', 'Jumping Jokers', '3217', NULL, NULL, 'drakon/Jumping Jokers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(866, 7, NULL, '3216', 'Jumping Jokers', '3216', NULL, NULL, 'drakon/Jumping Jokers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(867, 7, NULL, '3215', 'Roaring Wilds', '3215', NULL, NULL, 'drakon/Roaring Wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(868, 7, NULL, '3214', 'Roaring Forties', '3214', NULL, NULL, 'drakon/Roaring Forties.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:13', '2024-04-13 15:32:13'),
(869, 7, NULL, '3213', 'Sizzling Gems', '3213', NULL, NULL, 'drakon/Sizzling Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(870, 7, NULL, '3212', 'King Of Cards', '3212', NULL, NULL, 'drakon/King Of Cards.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(871, 7, NULL, '3211', 'Roaring Wilds', '3211', NULL, NULL, 'drakon/Roaring Wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(872, 7, NULL, '3210', 'Roaring Forties', '3210', NULL, NULL, 'drakon/Roaring Forties.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(873, 7, NULL, '3209', 'Sizzling Gems', '3209', NULL, NULL, 'drakon/Sizzling Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(874, 7, NULL, '3208', 'King Of Cards', '3208', NULL, NULL, 'drakon/King Of Cards.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(875, 8, NULL, '3207', 'Flame of Olympus', '3207', NULL, NULL, 'drakon/Flame of Olympus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(876, 12, NULL, '3204', 'Silver Fang', '3204', NULL, NULL, 'drakon/Silver Fang.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(877, 12, NULL, '3203', 'Thunder Struck', '3203', NULL, NULL, 'drakon/Thunder Struck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(878, 12, NULL, '3202', 'Immortal Romance', '3202', NULL, NULL, 'drakon/Immortal Romance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(879, 12, NULL, '3201', 'Game Of Thrones', '3201', NULL, NULL, 'drakon/Game Of Thrones.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(880, 23, NULL, '3195', '40 Super Dice', '3195', NULL, NULL, 'drakon/40 Super Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:14', '2024-04-13 15:32:14'),
(881, 23, NULL, '3194', '100 Dice', '3194', NULL, NULL, 'drakon/100 Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(882, 23, NULL, '3193', 'Flaming Dice', '3193', NULL, NULL, 'drakon/Flaming Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(883, 23, NULL, '3192', 'Lucky Hot', '3192', NULL, NULL, 'drakon/Lucky Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(884, 23, NULL, '3191', 'More Dice and Roll', '3191', NULL, NULL, 'drakon/More Dice and Roll.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(885, 23, NULL, '3190', 'Fruits Kingdom', '3190', NULL, NULL, 'drakon/Fruits Kingdom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(886, 23, NULL, '3189', 'Royal Secrets', '3189', NULL, NULL, 'drakon/Royal Secrets.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(887, 23, NULL, '3188', 'Book of Magic', '3188', NULL, NULL, 'drakon/Book of Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(888, 23, NULL, '3187', 'Game of Luck', '3187', NULL, NULL, 'drakon/Game of Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(889, 23, NULL, '3186', 'Hot & Cash', '3186', NULL, NULL, 'drakon/Hot & Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(890, 23, NULL, '3185', 'Oil Company II', '3185', NULL, NULL, 'drakon/Oil Company II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(891, 23, NULL, '3184', 'Casino Mania', '3184', NULL, NULL, 'drakon/Casino Mania.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:15', '2024-04-13 15:32:15'),
(892, 23, NULL, '3183', 'Imperial Wars', '3183', NULL, NULL, 'drakon/Imperial Wars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(893, 23, NULL, '3182', 'Dark Queen', '3182', NULL, NULL, 'drakon/Dark Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(894, 23, NULL, '3181', 'Penguin Style', '3181', NULL, NULL, 'drakon/Penguin Style.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(895, 23, NULL, '3180', 'The White Wolf', '3180', NULL, NULL, 'drakon/The White Wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(896, 23, NULL, '3179', 'Great Empire', '3179', NULL, NULL, 'drakon/Great Empire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(897, 23, NULL, '3178', 'Inca Gold II', '3178', NULL, NULL, 'drakon/Inca Gold II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(898, 23, NULL, '3177', 'Lucky & Wild', '3177', NULL, NULL, 'drakon/Lucky & Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(899, 23, NULL, '3176', 'Lucky Buzz', '3176', NULL, NULL, 'drakon/Lucky Buzz.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(900, 23, NULL, '3175', '2 Dragons', '3175', NULL, NULL, 'drakon/2 Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(901, 23, NULL, '3174', 'Aloha Party', '3174', NULL, NULL, 'drakon/Aloha Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(902, 23, NULL, '3173', '50 Horses', '3173', NULL, NULL, 'drakon/50 Horses.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:16', '2024-04-13 15:32:16'),
(903, 23, NULL, '3172', 'Retro Style', '3172', NULL, NULL, 'drakon/Retro Style.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(904, 23, NULL, '3171', 'The Great Egypt', '3171', NULL, NULL, 'drakon/The Great Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(905, 23, NULL, '3170', 'Super 20', '3170', NULL, NULL, 'drakon/Super 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(906, 23, NULL, '3169', 'Spanish Passion', '3169', NULL, NULL, 'drakon/Spanish Passion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(907, 23, NULL, '3168', 'The Story of Alexander', '3168', NULL, NULL, 'drakon/The Story of Alexander.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(908, 23, NULL, '3167', 'Rich World', '3167', NULL, NULL, 'drakon/Rich World.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(909, 23, NULL, '3166', 'Amazons Story', '3166', NULL, NULL, 'drakon/Amazons Story.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(910, 3, NULL, '3165', 'Roulette Royal', '3165', NULL, NULL, 'drakon/Roulette Royal.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(911, 3, NULL, '3160', 'Joker Card Poker', '3160', NULL, NULL, 'drakon/Joker Card Poker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(912, 7, NULL, '3159', 'Supra Hot', '3159', NULL, NULL, 'drakon/Supra Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(913, 7, NULL, '3158', 'Supra Hot', '3158', NULL, NULL, 'drakon/Supra Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:17', '2024-04-13 15:32:17'),
(914, 3, NULL, '3157', 'Jacks Or Better', '3157', NULL, NULL, 'drakon/Jacks Or Better.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(915, 3, NULL, '3155', 'Golf Keno', '3155', NULL, NULL, 'drakon/Golf Keno.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(916, 7, NULL, '3154', 'Sizzling Hot 6', '3154', NULL, NULL, 'drakon/Sizzling Hot 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(917, 7, NULL, '3153', 'Dynasty of Ra', '3153', NULL, NULL, 'drakon/Dynasty of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(918, 7, NULL, '3152', 'Dynasty of Ra', '3152', NULL, NULL, 'drakon/Dynasty of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(919, 7, NULL, '3151', 'Sizzling Hot 6', '3151', NULL, NULL, 'drakon/Sizzling Hot 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(920, 7, NULL, '3150', 'Sizzling 6', '3150', NULL, NULL, 'drakon/Sizzling 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(921, 7, NULL, '3149', 'Sizzling 6', '3149', NULL, NULL, 'drakon/Sizzling 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(922, 7, NULL, '3147', 'Sizzling Hot Quattro', '3147', NULL, NULL, 'drakon/Sizzling Hot Quattro.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(923, 3, NULL, '3146', 'La Gran Aventura', '3146', NULL, NULL, 'drakon/La Gran Aventura.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(924, 7, NULL, '3145', 'Book of Ra 6', '3145', NULL, NULL, 'drakon/Book of Ra 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:18', '2024-04-13 15:32:18'),
(925, 3, NULL, '3144', 'Lightning Hot', '3144', NULL, NULL, 'drakon/Lightning Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(926, 3, NULL, '3143', 'Vampires', '3143', NULL, NULL, 'drakon/Vampires.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(927, 3, NULL, '3142', 'All Ways Win', '3142', NULL, NULL, 'drakon/All Ways Win.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(928, 18, NULL, '3136', 'Crown Of Egypt', '3136', NULL, NULL, 'drakon/Crown Of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(929, 18, NULL, '3130', 'Triple Diamond', '3130', NULL, NULL, 'drakon/Triple Diamond.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(930, 18, NULL, '3128', 'White Orchid', '3128', NULL, NULL, 'drakon/White Orchid.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(931, 18, NULL, '3127', 'Double Diamond', '3127', NULL, NULL, 'drakon/Double Diamond.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(932, 19, NULL, '3126', 'Fruit Cocktail 2', '3126', NULL, NULL, 'drakon/Fruit Cocktail 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(933, 19, NULL, '3125', 'Garage', '3125', NULL, NULL, 'drakon/Garage.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(934, 23, NULL, '3124', 'Queen of Rio', '3124', NULL, NULL, 'drakon/Queen of Rio.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(935, 23, NULL, '3123', 'Caramel Dice', '3123', NULL, NULL, 'drakon/Caramel Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:19', '2024-04-13 15:32:19'),
(936, 23, NULL, '3122', 'Wonder Tree', '3122', NULL, NULL, 'drakon/Wonder Tree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(937, 23, NULL, '3121', 'Route of Mexico', '3121', NULL, NULL, 'drakon/Route of Mexico.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(938, 3, NULL, '3119', 'Fantastico', '3119', NULL, NULL, 'drakon/Fantastico.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(939, 3, NULL, '3112', 'Lovely Lady', '3112', NULL, NULL, 'drakon/Lovely Lady.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(940, 3, NULL, '3098', 'Magic Forest', '3098', NULL, NULL, 'drakon/Magic Forest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(941, 3, NULL, '3097', 'Red Chilli', '3097', NULL, NULL, 'drakon/Red Chilli.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(942, 3, NULL, '3095', 'Hot 81', '3095', NULL, NULL, 'drakon/Hot 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(943, 3, NULL, '3091', 'Bells on Fire Hot', '3091', NULL, NULL, 'drakon/Bells on Fire Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(944, 3, NULL, '3089', 'Casinova', '3089', NULL, NULL, 'drakon/Casinova.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(945, 3, NULL, '3088', 'Billys Game', '3088', NULL, NULL, 'drakon/Billys Game.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(946, 3, NULL, '3087', 'Fire and Ice', '3087', NULL, NULL, 'drakon/Fire and Ice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:20', '2024-04-13 15:32:20'),
(947, 7, NULL, '3085', 'American Poker II', '3085', NULL, NULL, 'drakon/American Poker II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(948, 23, NULL, '3083', 'Magellan', '3083', NULL, NULL, 'drakon/Magellan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(949, 23, NULL, '3082', 'Egypt Sky', '3082', NULL, NULL, 'drakon/Egypt Sky.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(950, 23, NULL, '3081', 'More Lucky & Wild', '3081', NULL, NULL, 'drakon/More Lucky & Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(951, 23, NULL, '3080', 'Rise of RA', '3080', NULL, NULL, 'drakon/Rise of RA.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(952, 23, NULL, '3079', 'Caramel Hot', '3079', NULL, NULL, 'drakon/Caramel Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(953, 23, NULL, '3078', 'Blue Heart', '3078', NULL, NULL, 'drakon/Blue Heart.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(954, 23, NULL, '3077', '100 Cats', '3077', NULL, NULL, 'drakon/100 Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(955, 23, NULL, '3076', 'Extremely Hot', '3076', NULL, NULL, 'drakon/Extremely Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(956, 23, NULL, '3075', 'Extra Stars', '3075', NULL, NULL, 'drakon/Extra Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(957, 23, NULL, '3074', '20 Diamonds', '3074', NULL, NULL, 'drakon/20 Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(958, 23, NULL, '3073', 'Zodiac Wheel', '3073', NULL, NULL, 'drakon/Zodiac Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:21', '2024-04-13 15:32:21'),
(959, 23, NULL, '3072', '5 Dazzling Hot', '3072', NULL, NULL, 'drakon/5 Dazzling Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(960, 23, NULL, '3071', 'Supreme Hot', '3071', NULL, NULL, 'drakon/Supreme Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(961, 23, NULL, '3070', 'Amazons Battle', '3070', NULL, NULL, 'drakon/Amazons Battle.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(962, 3, NULL, '3068', 'Tweety Birds', '3068', NULL, NULL, 'drakon/Tweety Birds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(963, 3, NULL, '3067', 'Diamonds on Fire', '3067', NULL, NULL, 'drakon/Diamonds on Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(964, 3, NULL, '3066', 'Big Panda', '3066', NULL, NULL, 'drakon/Big Panda.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(965, 3, NULL, '3065', 'Aztec Secret', '3065', NULL, NULL, 'drakon/Aztec Secret.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(966, 3, NULL, '3064', 'Wild Dragon', '3064', NULL, NULL, 'drakon/Wild Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(967, 3, NULL, '3063', 'Golden Book', '3063', NULL, NULL, 'drakon/Golden Book.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(968, 3, NULL, '3062', 'Grand Tiger', '3062', NULL, NULL, 'drakon/Grand Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(969, 3, NULL, '3059', 'Gem Star', '3059', NULL, NULL, 'drakon/Gem Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(970, 3, NULL, '3053', 'Diamond Monkey', '3053', NULL, NULL, 'drakon/Diamond Monkey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:22', '2024-04-13 15:32:22'),
(971, 18, NULL, '3047', 'Pharaohs Fortune', '3047', NULL, NULL, 'drakon/Pharaohs Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(972, 18, NULL, '3043', 'Cats', '3043', NULL, NULL, 'drakon/Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(973, 3, NULL, '3029', 'Bells on fire Rombo', '3029', NULL, NULL, 'drakon/Bells on fire Rombo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(974, 3, NULL, '3026', 'Dragons Kingdom', '3026', NULL, NULL, 'drakon/Dragons Kingdom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(975, 8, NULL, '3018', '5 Dragons', '3018', NULL, NULL, 'drakon/5 Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(976, 8, NULL, '3017', 'Red Baron', '3017', NULL, NULL, 'drakon/Red Baron.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(977, 8, NULL, '3016', 'Tiki Torch', '3016', NULL, NULL, 'drakon/Tiki Torch.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(978, 8, NULL, '3015', 'Queen of the Nile II', '3015', NULL, NULL, 'drakon/Queen of the Nile II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(979, 8, NULL, '3014', 'Miss Kitty', '3014', NULL, NULL, 'drakon/Miss Kitty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(980, 8, NULL, '3013', 'Buffalo', '3013', NULL, NULL, 'drakon/Buffalo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(981, 8, NULL, '3012', 'Big Ben', '3012', NULL, NULL, 'drakon/Big Ben.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(982, 8, NULL, '3011', 'Big Red', '3011', NULL, NULL, 'drakon/Big Red.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:23', '2024-04-13 15:32:23'),
(983, 8, NULL, '3010', 'Double Happiness', '3010', NULL, NULL, 'drakon/Double Happiness.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(984, 8, NULL, '3009', 'Queen of the Nile', '3009', NULL, NULL, 'drakon/Queen of the Nile.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(985, 8, NULL, '3008', '50 Lions', '3008', NULL, NULL, 'drakon/50 Lions.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(986, 8, NULL, '3007', '50 Dragons', '3007', NULL, NULL, 'drakon/50 Dragons.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(987, 8, NULL, '1701', 'Sun and Moon', '1701', NULL, NULL, 'drakon/Sun and Moon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(988, 8, NULL, '1700', 'Lucky Count', '1700', NULL, NULL, 'drakon/Lucky Count.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(989, 8, NULL, '1699', 'Geisha', '1699', NULL, NULL, 'drakon/Geisha.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(990, 18, NULL, '1697', 'Wolf Rising', '1697', NULL, NULL, 'drakon/Wolf Rising.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(991, 3, NULL, '1654', 'Bingo', '1654', NULL, NULL, 'drakon/Bingo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(992, 23, NULL, '1653', 'Ultimate hot', '1653', NULL, NULL, 'drakon/Ultimate hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(993, 23, NULL, '1652', 'Flaming Hot', '1652', NULL, NULL, 'drakon/Flaming Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(994, 23, NULL, '1651', 'Burning Hot', '1651', NULL, NULL, 'drakon/Burning Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(995, 23, NULL, '1650', '40 Super Hot', '1650', NULL, NULL, 'drakon/40 Super Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:24', '2024-04-13 15:32:24'),
(996, 23, NULL, '1649', 'Keno', '1649', NULL, NULL, 'drakon/Keno.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(997, 23, NULL, '1648', 'Shining Crown', '1648', NULL, NULL, 'drakon/Shining Crown.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(998, 23, NULL, '1647', '20 Super Hot', '1647', NULL, NULL, 'drakon/20 Super Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(999, 7, NULL, '1564', 'Power Stars', '1564', NULL, NULL, 'drakon/Power Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1000, 18, NULL, '1563', 'Rich Girl', '1563', NULL, NULL, 'drakon/Rich Girl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1001, 7, NULL, '1560', 'Mystic Secrets', '1560', NULL, NULL, 'drakon/Mystic Secrets.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1002, 7, NULL, '1559', 'Fairy Queen', '1559', NULL, NULL, 'drakon/Fairy Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1003, 7, NULL, '1558', 'Dazzling Diamonds', '1558', NULL, NULL, 'drakon/Dazzling Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1004, 7, NULL, '1557', 'Dazzling Diamonds', '1557', NULL, NULL, 'drakon/Dazzling Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1005, 7, NULL, '1556', 'African Simba', '1556', NULL, NULL, 'drakon/African Simba.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1006, 7, NULL, '1555', 'African Simba', '1555', NULL, NULL, 'drakon/African Simba.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:25', '2024-04-13 15:32:25'),
(1007, 7, NULL, '1551', 'Faust', '1551', NULL, NULL, 'drakon/Faust.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1008, 7, NULL, '1549', 'Faust', '1549', NULL, NULL, 'drakon/Faust.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1009, 18, NULL, '1535', 'Treasures Of The Pyramids', '1535', NULL, NULL, 'drakon/Treasures Of The Pyramids.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1010, 18, NULL, '1529', 'Golden Goddess', '1529', NULL, NULL, 'drakon/Golden Goddess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1011, 18, NULL, '712', 'Prowling Panther', '712', NULL, NULL, 'drakon/Prowling Panther.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1012, 18, NULL, '710', 'Cleopatra', '710', NULL, NULL, 'drakon/Cleopatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1013, 18, NULL, '571', 'Siberian Storm', '571', NULL, NULL, 'drakon/Siberian Storm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1014, 18, NULL, '569', 'Wolf Run', '569', NULL, NULL, 'drakon/Wolf Run.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1015, 7, NULL, '549', 'Unicorn Magic', '549', NULL, NULL, 'drakon/Unicorn Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1016, 7, NULL, '548', 'Cold Spell', '548', NULL, NULL, 'drakon/Cold Spell.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1017, 7, NULL, '547', 'The Money Game', '547', NULL, NULL, 'drakon/The Money Game.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1018, 7, NULL, '546', 'Coyote Cash', '546', NULL, NULL, 'drakon/Coyote Cash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:26', '2024-04-13 15:32:26'),
(1019, 16, NULL, '544', 'Reel Steal', '544', NULL, NULL, 'drakon/Reel Steal.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1020, 16, NULL, '538', 'Piggy Riches', '538', NULL, NULL, 'drakon/Piggy Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1021, 16, NULL, '533', 'Magic Portals', '533', NULL, NULL, 'drakon/Magic Portals.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1022, 16, NULL, '529', 'Victorious', '529', NULL, NULL, 'drakon/Victorious.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1023, 16, NULL, '523', 'Wild Water', '523', NULL, NULL, 'drakon/Wild Water.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1024, 16, NULL, '518', 'Dead or Alive', '518', NULL, NULL, 'drakon/Dead or Alive.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1025, 7, NULL, '493', 'Gorilla', '493', NULL, NULL, 'drakon/Gorilla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1026, 7, NULL, '492', 'Griphons Gold', '492', NULL, NULL, 'drakon/Griphons Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1027, 7, NULL, '491', 'Emperors of China', '491', NULL, NULL, 'drakon/Emperors of China.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1028, 7, NULL, '490', 'Wonderful Flute', '490', NULL, NULL, 'drakon/Wonderful Flute.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1029, 16, NULL, '489', 'Jimi Hendrix', '489', NULL, NULL, 'drakon/Jimi Hendrix.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1030, 7, NULL, '488', 'Dolphins Pearl', '488', NULL, NULL, 'drakon/Dolphins Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:27', '2024-04-13 15:32:27'),
(1031, 7, NULL, '487', 'The Ming Dinasty', '487', NULL, NULL, 'drakon/The Ming Dinasty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1032, 7, NULL, '486', 'Egyptian Experience', '486', NULL, NULL, 'drakon/Egyptian Experience.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1033, 7, NULL, '485', 'Gold Craze', '485', NULL, NULL, 'drakon/Gold Craze.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1034, 7, NULL, '484', 'Silver Fox', '484', NULL, NULL, 'drakon/Silver Fox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1035, 7, NULL, '483', 'Hannibal of Carthago', '483', NULL, NULL, 'drakon/Hannibal of Carthago.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1036, 7, NULL, '482', 'Return Of Rudolph', '482', NULL, NULL, 'drakon/Return Of Rudolph.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1037, 7, NULL, '481', 'Rudolph Revenge', '481', NULL, NULL, 'drakon/Rudolph Revenge.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1038, 7, NULL, '480', 'Secret Forest', '480', NULL, NULL, 'drakon/Secret Forest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1039, 7, NULL, '479', 'Santa Strikes Back', '479', NULL, NULL, 'drakon/Santa Strikes Back.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1040, 7, NULL, '478', 'Banana Splash', '478', NULL, NULL, 'drakon/Banana Splash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:28', '2024-04-13 15:32:28'),
(1041, 7, NULL, '477', 'Pharaohs Gold III', '477', NULL, NULL, 'drakon/Pharaohs Gold III.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1042, 7, NULL, '476', 'Pharaohs Gold II Deluxe', '476', NULL, NULL, 'drakon/Pharaohs Gold II Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1043, 7, NULL, '475', 'Royal Treasure', '475', NULL, NULL, 'drakon/Royal Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1044, 7, NULL, '474', 'Dinasty of Ming', '474', NULL, NULL, 'drakon/Dinasty of Ming.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1045, 7, NULL, '473', 'Bananas Go Bahamas', '473', NULL, NULL, 'drakon/Bananas Go Bahamas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1046, 7, NULL, '472', 'Polar Fox', '472', NULL, NULL, 'drakon/Polar Fox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1047, 16, NULL, '441', 'King of Slots', '441', NULL, NULL, 'drakon/King of Slots.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1048, 16, NULL, '435', 'Drive Multiplier Mayhem', '435', NULL, NULL, 'drakon/Drive Multiplier Mayhem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1049, 7, NULL, '418', 'Pharaohs Tomb', '418', NULL, NULL, 'drakon/Pharaohs Tomb.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1050, 7, NULL, '414', 'Flamenco Roses', '414', NULL, NULL, 'drakon/Flamenco Roses.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1051, 7, NULL, '413', 'Fruitilicious', '413', NULL, NULL, 'drakon/Fruitilicious.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:29', '2024-04-13 15:32:29'),
(1052, 7, NULL, '412', 'Mega Joker', '412', NULL, NULL, 'drakon/Mega Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1053, 7, NULL, '411', 'Big Catch', '411', NULL, NULL, 'drakon/Big Catch.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1054, 7, NULL, '410', 'Golden Ark', '410', NULL, NULL, 'drakon/Golden Ark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1055, 7, NULL, '409', 'Orca', '409', NULL, NULL, 'drakon/Orca.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1056, 7, NULL, '408', 'Beetle Mania Classic', '408', NULL, NULL, 'drakon/Beetle Mania Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1057, 7, NULL, '407', 'Dolphins Pearl Classic', '407', NULL, NULL, 'drakon/Dolphins Pearl Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1058, 7, NULL, '406', 'Book of Ra Classic', '406', NULL, NULL, 'drakon/Book of Ra Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1059, 7, NULL, '405', 'Reel King', '405', NULL, NULL, 'drakon/Reel King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1060, 7, NULL, '404', 'Pharaohs Ring', '404', NULL, NULL, 'drakon/Pharaohs Ring.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1061, 7, NULL, '403', 'Flame Dancer', '403', NULL, NULL, 'drakon/Flame Dancer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1062, 7, NULL, '402', 'Mermaids Pearl', '402', NULL, NULL, 'drakon/Mermaids Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1063, 7, NULL, '401', 'Columbus Deluxe', '401', NULL, NULL, 'drakon/Columbus Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:30', '2024-04-13 15:32:30'),
(1064, 7, NULL, '399', 'Secret Elixir', '399', NULL, NULL, 'drakon/Secret Elixir.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1065, 7, NULL, '398', 'Just Jewels', '398', NULL, NULL, 'drakon/Just Jewels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1066, 7, NULL, '397', 'Lucky Ladys Charm', '397', NULL, NULL, 'drakon/Lucky Ladys Charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1067, 7, NULL, '396', 'Sizzling Hot Deluxe', '396', NULL, NULL, 'drakon/Sizzling Hot Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1068, 7, NULL, '395', 'Plenty on Twenty', '395', NULL, NULL, 'drakon/Plenty on Twenty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1069, 7, NULL, '394', 'Lord of the Ocean', '394', NULL, NULL, 'drakon/Lord of the Ocean.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1070, 7, NULL, '393', 'Book of Ra Deluxe', '393', NULL, NULL, 'drakon/Book of Ra Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1071, 7, NULL, '378', 'Book of Ra 6', '378', NULL, NULL, 'drakon/Book of Ra 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1072, 7, NULL, '377', 'Flamenco Roses', '377', NULL, NULL, 'drakon/Flamenco Roses.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1073, 7, NULL, '376', 'Hoffmeister', '376', NULL, NULL, 'drakon/Hoffmeister.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1074, 7, NULL, '375', 'Fruitilicious', '375', NULL, NULL, 'drakon/Fruitilicious.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1075, 7, NULL, '374', 'Red Lady', '374', NULL, NULL, 'drakon/Red Lady.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:31', '2024-04-13 15:32:31'),
(1076, 7, NULL, '373', 'Mega Joker', '373', NULL, NULL, 'drakon/Mega Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1077, 3, NULL, '371', 'Book of Fortune', '371', NULL, NULL, 'drakon/Book of Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1078, 3, NULL, '370', 'Book Of Aztec', '370', NULL, NULL, 'drakon/Book Of Aztec.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1079, 3, NULL, '369', 'Lady Joker', '369', NULL, NULL, 'drakon/Lady Joker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1080, 3, NULL, '368', 'Wild Stars', '368', NULL, NULL, 'drakon/Wild Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1081, 3, NULL, '367', 'Arising Phoenix', '367', NULL, NULL, 'drakon/Arising Phoenix.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1082, 3, NULL, '366', 'Wild Respin', '366', NULL, NULL, 'drakon/Wild Respin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1083, 3, NULL, '365', 'Roman Legion', '365', NULL, NULL, 'drakon/Roman Legion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1084, 3, NULL, '364', 'Diamond Cats', '364', NULL, NULL, 'drakon/Diamond Cats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1085, 3, NULL, '363', 'Admiral', '363', NULL, NULL, 'drakon/Admiral.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1086, 3, NULL, '362', 'Hot Diamonds', '362', NULL, NULL, 'drakon/Hot Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:32', '2024-04-13 15:32:32'),
(1087, 3, NULL, '361', 'Cool Diamonds II', '361', NULL, NULL, 'drakon/Cool Diamonds II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1088, 3, NULL, '360', 'Party Time', '360', NULL, NULL, 'drakon/Party Time.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1089, 3, NULL, '359', 'All Ways Fruits', '359', NULL, NULL, 'drakon/All Ways Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1090, 3, NULL, '358', 'Wild Shark', '358', NULL, NULL, 'drakon/Wild Shark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1091, 3, NULL, '357', 'Dragons Pearl', '357', NULL, NULL, 'drakon/Dragons Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1092, 3, NULL, '356', 'Mermaids Gold', '356', NULL, NULL, 'drakon/Mermaids Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1093, 3, NULL, '355', 'Blue Dolphin', '355', NULL, NULL, 'drakon/Blue Dolphin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1094, 3, NULL, '354', 'Magic Idol', '354', NULL, NULL, 'drakon/Magic Idol.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1095, 3, NULL, '353', 'Hot Neon', '353', NULL, NULL, 'drakon/Hot Neon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1096, 3, NULL, '352', 'Lucky Zodiac', '352', NULL, NULL, 'drakon/Lucky Zodiac.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1097, 3, NULL, '351', 'Royal Unicorn', '351', NULL, NULL, 'drakon/Royal Unicorn.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:33', '2024-04-13 15:32:33'),
(1098, 3, NULL, '350', 'Hot Scatter', '350', NULL, NULL, 'drakon/Hot Scatter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1099, 3, NULL, '349', 'Lady Luck', '349', NULL, NULL, 'drakon/Lady Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1100, 3, NULL, '348', 'Lucky Coin', '348', NULL, NULL, 'drakon/Lucky Coin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1101, 3, NULL, '347', 'Casanova', '347', NULL, NULL, 'drakon/Casanova.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1102, 3, NULL, '346', 'Magic Owl', '346', NULL, NULL, 'drakon/Magic Owl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1103, 3, NULL, '345', 'Lucky Bells', '345', NULL, NULL, 'drakon/Lucky Bells.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1104, 3, NULL, '344', 'Hot Star', '344', NULL, NULL, 'drakon/Hot Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1105, 3, NULL, '343', 'Fortunas Fruits', '343', NULL, NULL, 'drakon/Fortunas Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:34', '2024-04-13 15:32:34'),
(1106, 3, NULL, '342', 'Hot 27', '342', NULL, NULL, 'drakon/Hot 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1107, 3, NULL, '341', 'Hot Twenty', '341', NULL, NULL, 'drakon/Hot Twenty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1108, 3, NULL, '340', 'Hot Seven', '340', NULL, NULL, 'drakon/Hot Seven.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1109, 3, NULL, '339', 'Wild 7', '339', NULL, NULL, 'drakon/Wild 7.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1110, 3, NULL, '338', 'Merry Fruits', '338', NULL, NULL, 'drakon/Merry Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1111, 3, NULL, '337', 'Wolf Moon', '337', NULL, NULL, 'drakon/Wolf Moon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1112, 3, NULL, '335', 'Eye of Ra', '335', NULL, NULL, 'drakon/Eye of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1113, 3, NULL, '334', 'Bells on Fire', '334', NULL, NULL, 'drakon/Bells on Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1114, 16, NULL, '306', 'Jack Hammer', '306', NULL, NULL, 'drakon/Jack Hammer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1115, 16, NULL, '300', 'Dazzle Me', '300', NULL, NULL, 'drakon/Dazzle Me.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1116, 3, NULL, '299', 'Grandx', '299', NULL, NULL, 'drakon/Grandx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1117, 3, NULL, '298', 'Wild Diamonds', '298', NULL, NULL, 'drakon/Wild Diamonds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:35', '2024-04-13 15:32:35'),
(1118, 3, NULL, '297', 'Billyonaire', '297', NULL, NULL, 'drakon/Billyonaire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1119, 7, NULL, '223', 'Chicago', '223', NULL, NULL, 'drakon/Chicago.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1120, 19, NULL, '221', 'Fruit Cocktail', '221', NULL, NULL, 'drakon/Fruit Cocktail.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1121, 19, NULL, '219', 'Keks', '219', NULL, NULL, 'drakon/Keks.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1122, 19, NULL, '217', 'Pirate', '217', NULL, NULL, 'drakon/Pirate.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1123, 19, NULL, '216', 'Pirate 2', '216', NULL, NULL, 'drakon/Pirate 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1124, 19, NULL, '213', 'Island 2', '213', NULL, NULL, 'drakon/Island 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1125, 19, NULL, '211', 'Island', '211', NULL, NULL, 'drakon/Island.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1126, 19, NULL, '209', 'Rock Climber', '209', NULL, NULL, 'drakon/Rock Climber.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1127, 19, NULL, '207', 'Gnome', '207', NULL, NULL, 'drakon/Gnome.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1128, 19, NULL, '205', 'Resident', '205', NULL, NULL, 'drakon/Resident.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:36', '2024-04-13 15:32:36'),
(1129, 19, NULL, '202', 'Sweet Life 2', '202', NULL, NULL, 'drakon/Sweet Life 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1130, 19, NULL, '201', 'Sweet Life', '201', NULL, NULL, 'drakon/Sweet Life.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1131, 19, NULL, '199', 'Lucky Haunter', '199', NULL, NULL, 'drakon/Lucky Haunter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1132, 19, NULL, '194', 'Crazy Monkey 2', '194', NULL, NULL, 'drakon/Crazy Monkey 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1133, 19, NULL, '193', 'Crazy Monkey', '193', NULL, NULL, 'drakon/Crazy Monkey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1134, 7, NULL, '187', 'Big Catch', '187', NULL, NULL, 'drakon/Big Catch.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1135, 7, NULL, '186', 'Golden Ark', '186', NULL, NULL, 'drakon/Golden Ark.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1136, 7, NULL, '185', 'Orca', '185', NULL, NULL, 'drakon/Orca.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1137, 16, NULL, '179', 'StarBurst', '179', NULL, NULL, 'drakon/StarBurst.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1138, 7, NULL, '127', 'Dolphins Pearl Classic', '127', NULL, NULL, 'drakon/Dolphins Pearl Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1139, 7, NULL, '126', 'Book of Ra Classic', '126', NULL, NULL, 'drakon/Book of Ra Classic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1140, 7, NULL, '114', 'Reel King', '114', NULL, NULL, 'drakon/Reel King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1141, 7, NULL, '113', 'Pharaohs Ring', '113', NULL, NULL, 'drakon/Pharaohs Ring.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1142, 7, NULL, '112', 'Pharaohs Tomb', '112', NULL, NULL, 'drakon/Pharaohs Tomb.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1143, 7, NULL, '111', 'Flame Dancer', '111', NULL, NULL, 'drakon/Flame Dancer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:37', '2024-04-13 15:32:37'),
(1144, 7, NULL, '110', 'Gorilla', '110', NULL, NULL, 'drakon/Gorilla.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1145, 7, NULL, '109', 'Beetle Mania', '109', NULL, NULL, 'drakon/Beetle Mania.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1146, 7, NULL, '108', 'Indian Spirit', '108', NULL, NULL, 'drakon/Indian Spirit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1147, 7, NULL, '107', 'Rex', '107', NULL, NULL, 'drakon/Rex.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1148, 7, NULL, '105', 'Mermaids Pearl', '105', NULL, NULL, 'drakon/Mermaids Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1149, 7, NULL, '104', 'Alchemist', '104', NULL, NULL, 'drakon/Alchemist.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1150, 7, NULL, '103', 'Quest for Gold', '103', NULL, NULL, 'drakon/Quest for Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1151, 7, NULL, '102', 'Ramses II', '102', NULL, NULL, 'drakon/Ramses II.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1152, 7, NULL, '101', 'Magic Princess', '101', NULL, NULL, 'drakon/Magic Princess.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1153, 7, NULL, '100', 'Columbus Deluxe', '100', NULL, NULL, 'drakon/Columbus Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1154, 7, NULL, '98', 'Fairy Queen', '98', NULL, NULL, 'drakon/Fairy Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1155, 7, NULL, '97', 'Fruit Sensation', '97', NULL, NULL, 'drakon/Fruit Sensation.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:38', '2024-04-13 15:32:38'),
(1156, 7, NULL, '96', 'Mystic Secrets', '96', NULL, NULL, 'drakon/Mystic Secrets.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1157, 7, NULL, '95', 'Secret Elixir', '95', NULL, NULL, 'drakon/Secret Elixir.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1158, 7, NULL, '94', 'Just Jewels Deluxe', '94', NULL, NULL, 'drakon/Just Jewels Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1159, 7, NULL, '93', 'Dolphins Pearl', '93', NULL, NULL, 'drakon/Dolphins Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1160, 7, NULL, '92', 'Lucky Ladys Charm', '92', NULL, NULL, 'drakon/Lucky Ladys Charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1161, 7, NULL, '91', 'Katana', '91', NULL, NULL, 'drakon/Katana.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1162, 7, NULL, '90', 'Xtra Hot', '90', NULL, NULL, 'drakon/Xtra Hot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1163, 7, NULL, '89', 'Sizzling Hot Deluxe', '89', NULL, NULL, 'drakon/Sizzling Hot Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1164, 7, NULL, '88', 'Plenty on Twenty', '88', NULL, NULL, 'drakon/Plenty on Twenty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1165, 7, NULL, '87', 'Lord of the Ocean', '87', NULL, NULL, 'drakon/Lord of the Ocean.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1166, 7, NULL, '86', 'Book of Ra Deluxe', '86', NULL, NULL, 'drakon/Book of Ra Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1167, 16, NULL, '83', 'Gonzos Quest', '83', NULL, NULL, 'drakon/Gonzos Quest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1168, 16, NULL, '80', 'Flowers', '80', NULL, NULL, 'drakon/Flowers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1169, 16, NULL, '72', 'Twin Spin', '72', NULL, NULL, 'drakon/Twin Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1170, 16, NULL, '70', 'Blood Suckers', '70', NULL, NULL, 'drakon/Blood Suckers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:39', '2024-04-13 15:32:39'),
(1171, 7, NULL, '30', 'Power Stars', '30', NULL, NULL, 'drakon/Power Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:40', '2024-04-13 15:32:40'),
(1172, 16, NULL, '26', 'Reel Rush', '26', NULL, NULL, 'drakon/Reel Rush.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:40', '2024-04-13 15:32:40'),
(1173, 16, NULL, '24', 'Fruit Shop', '24', NULL, NULL, 'drakon/Fruit Shop.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:40', '2024-04-13 15:32:40'),
(1174, 7, NULL, '1', 'Sizzling Hot Quattro', '1', NULL, NULL, 'drakon/Sizzling Hot Quattro.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:32:40', '2024-04-13 15:32:40'),
(1175, 24, NULL, '12591', 'Mines', '12591', NULL, NULL, 'drakon/Mines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 1, 0, 1, '2024-04-13 15:53:52', '2024-04-13 19:49:36'),
(1176, 25, NULL, '12575', 'Fortune Dragon', '12575', NULL, NULL, 'drakon/Fortune Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 3, 0, 0, '2024-04-13 15:53:52', '2024-04-13 19:44:38'),
(1177, 25, NULL, '12574', 'Safari Wilds', '12574', NULL, NULL, 'drakon/Safari Wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1178, 25, NULL, '12573', 'Dragon Hatch 2', '12573', NULL, NULL, 'drakon/Dragon Hatch 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1179, 25, NULL, '12572', 'WereWolfs Hunt', '12572', NULL, NULL, 'drakon/WereWolfs Hunt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1180, 25, NULL, '12571', 'Tsar Treasures', '12571', NULL, NULL, 'drakon/Tsar Treasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1181, 25, NULL, '12570', 'Mafia Mayhem', '12570', NULL, NULL, 'drakon/Mafia Mayhem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1182, 25, NULL, '12569', 'Forge of Wealth', '12569', NULL, NULL, 'drakon/Forge of Wealth.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1183, 25, NULL, '12568', 'Wild Heist Cashout', '12568', NULL, NULL, 'drakon/Wild Heist Cashout.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1184, 25, NULL, '12567', 'Ultimate Striker', '12567', NULL, NULL, 'drakon/Ultimate Striker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(1185, 24, NULL, '12566', 'Goal', '12566', NULL, NULL, 'drakon/Goal.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 2, 0, 1, '2024-04-13 15:53:53', '2024-04-13 19:45:20'),
(1186, 24, NULL, '12565', 'HiLo', '12565', NULL, NULL, 'drakon/HiLo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1187, 24, NULL, '12564', 'Hotline', '12564', NULL, NULL, 'drakon/Hotline.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1188, 24, NULL, '12563', 'Mini Roulette', '12563', NULL, NULL, 'drakon/Mini Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1189, 24, NULL, '12562', 'Dice', '12562', NULL, NULL, 'drakon/Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1190, 24, NULL, '12560', 'Plinko', '12560', NULL, NULL, 'drakon/Plinko.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1191, 24, NULL, '12559', 'Aviator s', '12559', NULL, NULL, 'drakon/Aviator s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 1, '2024-04-13 15:53:53', '2024-04-13 19:49:20'),
(1192, 25, NULL, '9967', 'Ninja Raccoon Frenzy', '9967', NULL, NULL, 'drakon/Ninja Raccoon Frenzy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1193, 25, NULL, '9966', 'Gladiators Glory', '9966', NULL, NULL, 'drakon/Gladiators Glory.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1194, 25, NULL, '9965', 'Lucky Clover Lady', '9965', NULL, NULL, 'drakon/Lucky Clover Lady.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1195, 25, NULL, '9964', 'Super Golf Drive', '9964', NULL, NULL, 'drakon/Super Golf Drive.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:53', '2024-04-13 15:53:53'),
(1196, 25, NULL, '9963', 'Songkran Splash', '9963', NULL, NULL, 'drakon/Songkran Splash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1197, 25, NULL, '9962', 'Bakery Bonanza', '9962', NULL, NULL, 'drakon/Bakery Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1198, 25, NULL, '9961', 'Hawaiian Tiki', '9961', NULL, NULL, 'drakon/Hawaiian Tiki.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1199, 25, NULL, '9960', 'Rave Party Fever', '9960', NULL, NULL, 'drakon/Rave Party Fever.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1200, 25, NULL, '9959', 'Fortune Rabbit', '9959', NULL, NULL, 'drakon/Fortune Rabbit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1201, 25, NULL, '9958', 'Midas Fortune', '9958', NULL, NULL, 'drakon/Midas Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1202, 25, NULL, '9957', 'Asgardian Rising', '9957', NULL, NULL, 'drakon/Asgardian Rising.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1203, 25, NULL, '9956', 'Diner Delights', '9956', NULL, NULL, 'drakon/Diner Delights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1204, 25, NULL, '9955', 'Alchemy Gold', '9955', NULL, NULL, 'drakon/Alchemy Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:54', '2024-04-13 15:53:54'),
(1205, 25, NULL, '9954', 'Totem Wonders', '9954', NULL, NULL, 'drakon/Totem Wonders.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1206, 25, NULL, '9953', 'Wild Coaster', '9953', NULL, NULL, 'drakon/Wild Coaster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1207, 25, NULL, '9952', 'Prosperity Fortune Tree', '9952', NULL, NULL, 'drakon/Prosperity Fortune Tree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1208, 25, NULL, '9951', 'Legend of Perseus', '9951', NULL, NULL, 'drakon/Legend of Perseus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1209, 25, NULL, '9950', 'Wild Bounty Showdown', '9950', NULL, NULL, 'drakon/Wild Bounty Showdown.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1210, 25, NULL, '9949', 'Lucky Piggy', '9949', NULL, NULL, 'drakon/Lucky Piggy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1211, 25, NULL, '9948', 'Win Win Fish Prawn Crab', '9948', NULL, NULL, 'drakon/Win Win Fish Prawn Crab.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1212, 25, NULL, '9947', 'Speed Winner', '9947', NULL, NULL, 'drakon/Speed Winner.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1213, 25, NULL, '9946', 'Fortune Tiger', '9946', NULL, NULL, 'drakon/Fortune Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:55', '2024-04-13 15:53:55'),
(1214, 25, NULL, '9945', 'Butterfly Blossom', '9945', NULL, NULL, 'drakon/Butterfly Blossom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1215, 25, NULL, '9944', 'Battleground Royale', '9944', NULL, NULL, 'drakon/Battleground Royale.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1216, 25, NULL, '9943', 'Rooster Rumble', '9943', NULL, NULL, 'drakon/Rooster Rumble.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1217, 25, NULL, '9942', 'Garuda Gems', '9942', NULL, NULL, 'drakon/Garuda Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1218, 25, NULL, '9941', 'Destiny of Sun & Moon', '9941', NULL, NULL, 'drakon/Destiny of Sun & Moon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1219, 25, NULL, '9940', 'The Queen`s Banquet', '9940', NULL, NULL, 'drakon/The Queen`s Banquet.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1220, 25, NULL, '9939', 'Spirited Wonders', '9939', NULL, NULL, 'drakon/Spirited Wonders.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1221, 25, NULL, '9938', 'Mask Carnival', '9938', NULL, NULL, 'drakon/Mask Carnival.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1222, 25, NULL, '9937', 'Cocktail Nights', '9937', NULL, NULL, 'drakon/Cocktail Nights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1223, 25, NULL, '9936', 'Supermarket Spree', '9936', NULL, NULL, 'drakon/Supermarket Spree.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:56', '2024-04-13 15:53:56'),
(1224, 25, NULL, '9935', 'Emoji Riches', '9935', NULL, NULL, 'drakon/Emoji Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1225, 25, NULL, '9934', 'Raider Jane`s Crypt of Fortune', '9934', NULL, NULL, 'drakon/Raider Jane`s Crypt of Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1226, 25, NULL, '9933', 'Oriental Prosperity', '9933', NULL, NULL, 'drakon/Oriental Prosperity.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1227, 25, NULL, '9932', 'Jurassic Kingdom', '9932', NULL, NULL, 'drakon/Jurassic Kingdom.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1228, 25, NULL, '9931', 'Buffalo Win', '9931', NULL, NULL, 'drakon/Buffalo Win.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1229, 25, NULL, '9930', 'Legendary Monkey King', '9930', NULL, NULL, 'drakon/Legendary Monkey King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1230, 25, NULL, '9929', 'Ways of the Qilin', '9929', NULL, NULL, 'drakon/Ways of the Qilin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1231, 25, NULL, '9928', 'Heist Stakes', '9928', NULL, NULL, 'drakon/Heist Stakes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1232, 25, NULL, '9927', 'Wild Bandito', '9927', NULL, NULL, 'drakon/Wild Bandito.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:57', '2024-04-13 15:53:57'),
(1233, 25, NULL, '9926', 'Crypto Gold', '9926', NULL, NULL, 'drakon/Crypto Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1234, 25, NULL, '9925', 'Mermaid Riches', '9925', NULL, NULL, 'drakon/Mermaid Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1235, 25, NULL, '9924', 'Rise of Apollo', '9924', NULL, NULL, 'drakon/Rise of Apollo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1236, 25, NULL, '9923', 'Candy Bonanza', '9923', NULL, NULL, 'drakon/Candy Bonanza.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1237, 25, NULL, '9922', 'Fortune Ox', '9922', NULL, NULL, 'drakon/Fortune Ox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1238, 25, NULL, '9921', 'Jack Frost`s Winter', '9921', NULL, NULL, 'drakon/Jack Frost`s Winter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1239, 25, NULL, '9920', 'Majestic Treasures', '9920', NULL, NULL, 'drakon/Majestic Treasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1240, 25, NULL, '9919', 'Bali Vacation', '9919', NULL, NULL, 'drakon/Bali Vacation.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1241, 25, NULL, '9918', 'Opera Dynasty', '9918', NULL, NULL, 'drakon/Opera Dynasty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1242, 25, NULL, '9917', 'Thai River Wonders', '9917', NULL, NULL, 'drakon/Thai River Wonders.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:58', '2024-04-13 15:53:58'),
(1243, 25, NULL, '9916', 'Guardians of Ice & Fire', '9916', NULL, NULL, 'drakon/Guardians of Ice & Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1244, 25, NULL, '9915', 'Secrets of Cleopatra', '9915', NULL, NULL, 'drakon/Secrets of Cleopatra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1245, 25, NULL, '9914', 'Lucky Neko', '9914', NULL, NULL, 'drakon/Lucky Neko.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1246, 25, NULL, '9913', 'Jewels of Prosperity', '9913', NULL, NULL, 'drakon/Jewels of Prosperity.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1247, 25, NULL, '9912', 'Treasures of Aztec', '9912', NULL, NULL, 'drakon/Treasures of Aztec.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1248, 25, NULL, '9911', 'Galactic Gems', '9911', NULL, NULL, 'drakon/Galactic Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1249, 25, NULL, '9910', 'Genie`s 3 Wishes', '9910', NULL, NULL, 'drakon/Genie`s 3 Wishes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1250, 25, NULL, '9909', 'Queen of Bounty', '9909', NULL, NULL, 'drakon/Queen of Bounty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1251, 25, NULL, '9908', 'Wild Fireworks', '9908', NULL, NULL, 'drakon/Wild Fireworks.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:53:59', '2024-04-13 15:53:59'),
(1252, 25, NULL, '9907', 'Phoenix Rises', '9907', NULL, NULL, 'drakon/Phoenix Rises.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1253, 25, NULL, '9906', 'Circus Delight', '9906', NULL, NULL, 'drakon/Circus Delight.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1254, 25, NULL, '9905', 'Dreams of Macau', '9905', NULL, NULL, 'drakon/Dreams of Macau.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1255, 25, NULL, '9904', 'Ganesha Fortune', '9904', NULL, NULL, 'drakon/Ganesha Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1256, 25, NULL, '9903', 'Mahjong Ways 2', '9903', NULL, NULL, 'drakon/Mahjong Ways 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1257, 25, NULL, '9902', 'Egypts Book of Mystery', '9902', NULL, NULL, 'drakon/Egypts Book of Mystery.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1258, 25, NULL, '9901', 'Cai Shen Wins', '9901', NULL, NULL, 'drakon/Cai Shen Wins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1259, 25, NULL, '9900', 'Candy Burst', '9900', NULL, NULL, 'drakon/Candy Burst.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1260, 25, NULL, '9899', 'Bikini Paradise', '9899', NULL, NULL, 'drakon/Bikini Paradise.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1261, 25, NULL, '9898', 'Fortune Mouse', '9898', NULL, NULL, 'drakon/Fortune Mouse.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:00', '2024-04-13 15:54:00'),
(1262, 25, NULL, '9897', 'Shaolin Soccer', '9897', NULL, NULL, 'drakon/Shaolin Soccer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1263, 25, NULL, '9896', 'Mahjong Ways', '9896', NULL, NULL, 'drakon/Mahjong Ways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1264, 25, NULL, '9895', 'Muay Thai Champion', '9895', NULL, NULL, 'drakon/Muay Thai Champion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1265, 25, NULL, '9894', 'Dragon Tiger Luck', '9894', NULL, NULL, 'drakon/Dragon Tiger Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1266, 25, NULL, '9893', 'Gem Saviour Conquest', '9893', NULL, NULL, 'drakon/Gem Saviour Conquest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1267, 25, NULL, '9892', 'Flirting Scholar', '9892', NULL, NULL, 'drakon/Flirting Scholar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1268, 25, NULL, '9891', 'Leprechaun Riches', '9891', NULL, NULL, 'drakon/Leprechaun Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1269, 25, NULL, '9890', 'Ninja vs Samurai', '9890', NULL, NULL, 'drakon/Ninja vs Samurai.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1270, 25, NULL, '9889', 'Vampires Charm', '9889', NULL, NULL, 'drakon/Vampires Charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1271, 25, NULL, '9888', 'Dragon Hatch', '9888', NULL, NULL, 'drakon/Dragon Hatch.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:01', '2024-04-13 15:54:01'),
(1272, 25, NULL, '9887', 'Captains Bounty', '9887', NULL, NULL, 'drakon/Captains Bounty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1273, 25, NULL, '9886', 'The Great Icescape', '9886', NULL, NULL, 'drakon/The Great Icescape.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1274, 25, NULL, '9885', 'Journey to the Wealth', '9885', NULL, NULL, 'drakon/Journey to the Wealth.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1275, 25, NULL, '9884', 'Double Fortune', '9884', NULL, NULL, 'drakon/Double Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1276, 25, NULL, '9883', 'Emperors Favour', '9883', NULL, NULL, 'drakon/Emperors Favour.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1277, 25, NULL, '9882', 'Ganesha Gold', '9882', NULL, NULL, 'drakon/Ganesha Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1278, 25, NULL, '9881', 'Symbols Of Egypt', '9881', NULL, NULL, 'drakon/Symbols Of Egypt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1279, 25, NULL, '9880', 'Jungle Delight', '9880', NULL, NULL, 'drakon/Jungle Delight.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1280, 25, NULL, '9879', 'Piggy Gold', '9879', NULL, NULL, 'drakon/Piggy Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1281, 25, NULL, '9878', 'Gem Saviour Sword', '9878', NULL, NULL, 'drakon/Gem Saviour Sword.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:02', '2024-04-13 15:54:02'),
(1282, 25, NULL, '9877', 'Santas Gift Rush', '9877', NULL, NULL, 'drakon/Santas Gift Rush.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1283, 25, NULL, '9876', 'Prosperity Lion', '9876', NULL, NULL, 'drakon/Prosperity Lion.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1284, 25, NULL, '9875', 'Mr. Hallow-Win!', '9875', NULL, NULL, 'drakon/Mr. Hallow-Win!.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1285, 25, NULL, '9874', 'Legend of Hou Yi', '9874', NULL, NULL, 'drakon/Legend of Hou Yi.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1286, 25, NULL, '9873', 'Hip Hop Panda', '9873', NULL, NULL, 'drakon/Hip Hop Panda.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1287, 25, NULL, '9872', 'Baccarat Deluxe', '9872', NULL, NULL, 'drakon/Baccarat Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1288, 25, NULL, '9871', 'Dragon Legend', '9871', NULL, NULL, 'drakon/Dragon Legend.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1289, 25, NULL, '9870', 'Hotpot', '9870', NULL, NULL, 'drakon/Hotpot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1290, 25, NULL, '9869', 'Tree of Fortune', '9869', NULL, NULL, 'drakon/Tree of Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1291, 25, NULL, '9868', 'Plushie Frenzy', '9868', NULL, NULL, 'drakon/Plushie Frenzy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:03', '2024-04-13 15:54:03'),
(1292, 25, NULL, '9867', 'Win Win Won', '9867', NULL, NULL, 'drakon/Win Win Won.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1293, 25, NULL, '9866', 'Reel Love', '9866', NULL, NULL, 'drakon/Reel Love.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1294, 25, NULL, '9865', 'Hood vs Wolf', '9865', NULL, NULL, 'drakon/Hood vs Wolf.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1295, 25, NULL, '9864', 'Medusa 1: the Curse of Athena', '9864', NULL, NULL, 'drakon/Medusa 1: the Curse of Athena.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1296, 25, NULL, '9863', 'Medusa 2: the Quest of Perseus', '9863', NULL, NULL, 'drakon/Medusa 2: the Quest of Perseus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1297, 25, NULL, '9862', 'Fortune Gods', '9862', NULL, NULL, 'drakon/Fortune Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1298, 25, NULL, '9861', 'Gem Saviour', '9861', NULL, NULL, 'drakon/Gem Saviour.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1299, 25, NULL, '9860', 'Honey Trap of Diao Chan', '9860', NULL, NULL, 'drakon/Honey Trap of Diao Chan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 15:54:04', '2024-04-13 15:54:04'),
(1300, 26, NULL, '12547', 'Atlantis', '12547', NULL, NULL, 'drakon/Atlantis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1301, 26, NULL, '12546', 'Atlantis', '12546', NULL, NULL, 'drakon/Atlantis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1302, 26, NULL, '12545', 'Bingo Star', '12545', NULL, NULL, 'drakon/Bingo Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1303, 26, NULL, '12544', 'Bingo Star', '12544', NULL, NULL, 'drakon/Bingo Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1304, 26, NULL, '12543', 'Maestro', '12543', NULL, NULL, 'drakon/Maestro.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1305, 26, NULL, '12542', 'Maestro', '12542', NULL, NULL, 'drakon/Maestro.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(1306, 26, NULL, '12541', 'Turbo Mines', '12541', NULL, NULL, 'drakon/Turbo Mines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1307, 26, NULL, '12540', 'Turbo Mines', '12540', NULL, NULL, 'drakon/Turbo Mines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1308, 26, NULL, '12539', 'Totem', '12539', NULL, NULL, 'drakon/Totem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1309, 26, NULL, '12538', 'Magic Dice', '12538', NULL, NULL, 'drakon/Magic Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1310, 26, NULL, '12537', 'Totem', '12537', NULL, NULL, 'drakon/Totem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1311, 26, NULL, '12536', 'Magic Dice', '12536', NULL, NULL, 'drakon/Magic Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1312, 26, NULL, '12535', 'Scratch Map', '12535', NULL, NULL, 'drakon/Scratch Map.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1313, 26, NULL, '12534', 'Coin Flip', '12534', NULL, NULL, 'drakon/Coin Flip.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1314, 26, NULL, '12533', 'Scratch Map', '12533', NULL, NULL, 'drakon/Scratch Map.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1315, 26, NULL, '12532', 'Coin Flip', '12532', NULL, NULL, 'drakon/Coin Flip.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1316, 26, NULL, '12531', 'Roulette X', '12531', NULL, NULL, 'drakon/Roulette X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1317, 26, NULL, '12530', 'Roulette X', '12530', NULL, NULL, 'drakon/Roulette X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:07', '2024-04-13 17:35:07'),
(1318, 26, NULL, '12529', 'Plinkoman', '12529', NULL, NULL, 'drakon/Plinkoman.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1319, 26, NULL, '12528', 'Plinkoman', '12528', NULL, NULL, 'drakon/Plinkoman.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1320, 26, NULL, '12527', 'Ninja Crash', '12527', NULL, NULL, 'drakon/Ninja Crash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1321, 26, NULL, '12526', 'Ninja Crash', '12526', NULL, NULL, 'drakon/Ninja Crash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1322, 26, NULL, '12525', 'Mr.Thimble', '12525', NULL, NULL, 'drakon/Mr.Thimble.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1323, 26, NULL, '12524', 'Mr.Thimble', '12524', NULL, NULL, 'drakon/Mr.Thimble.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1324, 26, NULL, '12523', 'Jungle Wheel', '12523', NULL, NULL, 'drakon/Jungle Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1325, 26, NULL, '12522', 'Jungle Wheel', '12522', NULL, NULL, 'drakon/Jungle Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1326, 26, NULL, '12521', 'GoldenRA', '12521', NULL, NULL, 'drakon/GoldenRA.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1327, 26, NULL, '12520', 'GoldenRA', '12520', NULL, NULL, 'drakon/GoldenRA.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1328, 26, NULL, '12519', 'F Mines', '12519', NULL, NULL, 'drakon/F Mines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1329, 26, NULL, '12518', 'F Mines', '12518', NULL, NULL, 'drakon/F Mines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1330, 26, NULL, '12517', 'Crasher', '12517', NULL, NULL, 'drakon/Crasher.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:08', '2024-04-13 17:35:08'),
(1331, 26, NULL, '12516', 'Crasher', '12516', NULL, NULL, 'drakon/Crasher.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1332, 26, NULL, '12515', 'Cash Show', '12515', NULL, NULL, 'drakon/Cash Show.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1333, 26, NULL, '12514', 'SicBo', '12514', NULL, NULL, 'drakon/SicBo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1334, 26, NULL, '12513', 'Rocketon', '12513', NULL, NULL, 'drakon/Rocketon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1335, 26, NULL, '12512', 'Penalty', '12512', NULL, NULL, 'drakon/Penalty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1336, 26, NULL, '12511', 'Keno Express', '12511', NULL, NULL, 'drakon/Keno Express.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1337, 26, NULL, '12510', 'Keno 8 (2 Minute)', '12510', NULL, NULL, 'drakon/Keno 8 (2 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1338, 26, NULL, '12509', 'Keno 8 (1 Minute)', '12509', NULL, NULL, 'drakon/Keno 8 (1 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1339, 26, NULL, '12508', 'Keno 10 (2 Minute)', '12508', NULL, NULL, 'drakon/Keno 10 (2 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:09', '2024-04-13 17:35:09'),
(1340, 26, NULL, '12507', 'Keno 10 (1 Minute)', '12507', NULL, NULL, 'drakon/Keno 10 (1 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1341, 26, NULL, '12506', 'Hilo', '12506', NULL, NULL, 'drakon/Hilo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1342, 26, NULL, '12505', 'Crash', '12505', NULL, NULL, 'drakon/Crash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1343, 26, NULL, '12504', 'BlackJack', '12504', NULL, NULL, 'drakon/BlackJack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1344, 26, NULL, '12503', 'Cash Show', '12503', NULL, NULL, 'drakon/Cash Show.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1345, 26, NULL, '12502', 'SicBo', '12502', NULL, NULL, 'drakon/SicBo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1346, 26, NULL, '12501', 'Rocketon', '12501', NULL, NULL, 'drakon/Rocketon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1347, 26, NULL, '12500', 'Penalty', '12500', NULL, NULL, 'drakon/Penalty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1348, 26, NULL, '12499', 'Keno Express', '12499', NULL, NULL, 'drakon/Keno Express.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1349, 26, NULL, '12498', 'Keno 8 (2 Minute)', '12498', NULL, NULL, 'drakon/Keno 8 (2 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1350, 26, NULL, '12497', 'Keno 8 (1 Minute)', '12497', NULL, NULL, 'drakon/Keno 8 (1 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1351, 26, NULL, '12496', 'Keno 10 (2 Minute)', '12496', NULL, NULL, 'drakon/Keno 10 (2 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1352, 26, NULL, '12495', 'Keno 10 (1 Minute)', '12495', NULL, NULL, 'drakon/Keno 10 (1 Minute).jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1353, 26, NULL, '12494', 'Hilo', '12494', NULL, NULL, 'drakon/Hilo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1354, 26, NULL, '12493', 'Crash', '12493', NULL, NULL, 'drakon/Crash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1355, 26, NULL, '12492', 'BlackJack', '12492', NULL, NULL, 'drakon/BlackJack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(1356, 27, NULL, '9690', 'Video Poker', '9690', NULL, NULL, 'drakon/Video Poker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1357, 27, NULL, '9687', 'Mega Bola Da Sorte', '9687', NULL, NULL, 'drakon/Mega Bola Da Sorte.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1358, 27, NULL, '9686', 'Emperor Bac Bo', '9686', NULL, NULL, 'drakon/Emperor Bac Bo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1359, 27, NULL, '9685', 'First Person XXXtreme Lightning Roulette', '9685', NULL, NULL, 'drakon/First Person XXXtreme Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1360, 27, NULL, '9684', 'Blackjack Clássico em Português 5', '9684', NULL, NULL, 'drakon/Blackjack Clássico em Português 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1361, 27, NULL, '9683', 'Blackjack Clássico em Português 4', '9683', NULL, NULL, 'drakon/Blackjack Clássico em Português 4.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1362, 27, NULL, '9682', 'Funky Time', '9682', NULL, NULL, 'drakon/Funky Time.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1363, 27, NULL, '9681', 'Hippodrome Grand Casino', '9681', NULL, NULL, 'drakon/Hippodrome Grand Casino.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1364, 27, NULL, '9680', 'Dragonara Roulette', '9680', NULL, NULL, 'drakon/Dragonara Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:11', '2024-04-13 17:35:11'),
(1365, 27, NULL, '9679', 'Casino Malta Roulette', '9679', NULL, NULL, 'drakon/Casino Malta Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1366, 27, NULL, '9678', 'VIP Blackjack en Español', '9678', NULL, NULL, 'drakon/VIP Blackjack en Español.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1367, 27, NULL, '9677', 'Venezia Roulette', '9677', NULL, NULL, 'drakon/Venezia Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1368, 27, NULL, '9676', 'Turkish Lightning Roulette', '9676', NULL, NULL, 'drakon/Turkish Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1369, 27, NULL, '9675', 'Türkçe Rulet', '9675', NULL, NULL, 'drakon/Türkçe Rulet.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1370, 27, NULL, '9674', 'Thai Speed Baccarat A', '9674', NULL, NULL, 'drakon/Thai Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1371, 27, NULL, '9673', 'Svensk Roulette', '9673', NULL, NULL, 'drakon/Svensk Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1372, 27, NULL, '9672', 'Suomalainen Ruletti', '9672', NULL, NULL, 'drakon/Suomalainen Ruletti.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1373, 27, NULL, '9671', 'Ruletka Live', '9671', NULL, NULL, 'drakon/Ruletka Live.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:12', '2024-04-13 17:35:12'),
(1374, 27, NULL, '9670', 'Ruleta Relámpago en Vivo', '9670', NULL, NULL, 'drakon/Ruleta Relámpago en Vivo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1375, 27, NULL, '9669', 'Ruleta en Vivo', '9669', NULL, NULL, 'drakon/Ruleta en Vivo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1376, 27, NULL, '9668', 'Ruleta en Español', '9668', NULL, NULL, 'drakon/Ruleta en Español.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1377, 27, NULL, '9667', 'Ruleta Bola Rapida en Vivo', '9667', NULL, NULL, 'drakon/Ruleta Bola Rapida en Vivo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1378, 27, NULL, '9666', 'Roulette Francophone', '9666', NULL, NULL, 'drakon/Roulette Francophone.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1379, 27, NULL, '9665', 'Punto Banco', '9665', NULL, NULL, 'drakon/Punto Banco.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1380, 27, NULL, '9664', 'Norsk Roulette', '9664', NULL, NULL, 'drakon/Norsk Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1381, 27, NULL, '9663', 'Mega Bola', '9663', NULL, NULL, 'drakon/Mega Bola.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1382, 27, NULL, '9662', 'Lotus Speed Baccarat A', '9662', NULL, NULL, 'drakon/Lotus Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1383, 27, NULL, '9661', 'Lotus Roulette', '9661', NULL, NULL, 'drakon/Lotus Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:13', '2024-04-13 17:35:13'),
(1384, 27, NULL, '9660', 'Japanese Speed Baccarat C', '9660', NULL, NULL, 'drakon/Japanese Speed Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1385, 27, NULL, '9659', 'Japanese Speed Baccarat B', '9659', NULL, NULL, 'drakon/Japanese Speed Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1386, 27, NULL, '9658', 'Japanese Speed Baccarat A', '9658', NULL, NULL, 'drakon/Japanese Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1387, 27, NULL, '9657', 'Japanese Roulette', '9657', NULL, NULL, 'drakon/Japanese Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1388, 27, NULL, '9656', 'Italian Lightning Roulette', '9656', NULL, NULL, 'drakon/Italian Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1389, 27, NULL, '9655', 'Hindi Speed Baccarat', '9655', NULL, NULL, 'drakon/Hindi Speed Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1390, 27, NULL, '9654', 'Hindi Roulette', '9654', NULL, NULL, 'drakon/Hindi Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1391, 27, NULL, '9653', 'Hindi Lightning Roulette', '9653', NULL, NULL, 'drakon/Hindi Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1392, 27, NULL, '9652', 'Greek Roulette', '9652', NULL, NULL, 'drakon/Greek Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1393, 27, NULL, '9651', 'Grand Japanese Blackjack', '9651', NULL, NULL, 'drakon/Grand Japanese Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:14', '2024-04-13 17:35:14'),
(1394, 27, NULL, '9650', 'Fútbol Studio', '9650', NULL, NULL, 'drakon/Fútbol Studio.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1395, 27, NULL, '9649', 'First Person Deal or No Deal', '9649', NULL, NULL, 'drakon/First Person Deal or No Deal.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1396, 27, NULL, '9648', 'Deutsches Roulette', '9648', NULL, NULL, 'drakon/Deutsches Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1397, 27, NULL, '9647', 'Dansk Roulette', '9647', NULL, NULL, 'drakon/Dansk Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1398, 27, NULL, '9646', 'Bucharest Roulette', '9646', NULL, NULL, 'drakon/Bucharest Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1399, 27, NULL, '9645', 'Bucharest Auto-Roulette', '9645', NULL, NULL, 'drakon/Bucharest Auto-Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1400, 27, NULL, '9644', 'Blackjack en Español 3', '9644', NULL, NULL, 'drakon/Blackjack en Español 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1401, 27, NULL, '9643', 'Blackjack en Español 2', '9643', NULL, NULL, 'drakon/Blackjack en Español 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1402, 27, NULL, '9642', 'Blackjack en Español 1', '9642', NULL, NULL, 'drakon/Blackjack en Español 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1403, 27, NULL, '9641', 'Blackjack Clasico en Español 3', '9641', NULL, NULL, 'drakon/Blackjack Clasico en Español 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:15', '2024-04-13 17:35:15'),
(1404, 27, NULL, '9640', 'Blackjack Clasico en Español 2', '9640', NULL, NULL, 'drakon/Blackjack Clasico en Español 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1405, 27, NULL, '9639', 'Blackjack Clasico en Español 1', '9639', NULL, NULL, 'drakon/Blackjack Clasico en Español 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1406, 27, NULL, '9638', 'Bacará Rápido', '9638', NULL, NULL, 'drakon/Bacará Rápido.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1407, 27, NULL, '9637', 'Arabic Roulette', '9637', NULL, NULL, 'drakon/Arabic Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1408, 27, NULL, '9636', 'Extra Chili Epic Spins', '9636', NULL, NULL, 'drakon/Extra Chili Epic Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1409, 27, NULL, '9633', 'Blackjack Classic 88', '9633', NULL, NULL, 'drakon/Blackjack Classic 88.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1410, 27, NULL, '9632', 'Imperial Quest', '9632', NULL, NULL, 'drakon/Imperial Quest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1411, 27, NULL, '9630', 'Blackjack VIP 28', '9630', NULL, NULL, 'drakon/Blackjack VIP 28.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1412, 27, NULL, '9629', 'Blackjack Clássico em Português 3', '9629', NULL, NULL, 'drakon/Blackjack Clássico em Português 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:16', '2024-04-13 17:35:16'),
(1413, 27, NULL, '9628', 'Speed Baccarat 3', '9628', NULL, NULL, 'drakon/Speed Baccarat 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1414, 27, NULL, '9627', 'Speed Baccarat 2', '9627', NULL, NULL, 'drakon/Speed Baccarat 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1415, 27, NULL, '9626', 'Speed Baccarat 1', '9626', NULL, NULL, 'drakon/Speed Baccarat 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1416, 27, NULL, '9625', 'Speed Baccarat Z', '9625', NULL, NULL, 'drakon/Speed Baccarat Z.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1417, 27, NULL, '9624', 'Crazy Time A', '9624', NULL, NULL, 'drakon/Crazy Time A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1418, 27, NULL, '9623', 'Dead or Alive: Saloon', '9623', NULL, NULL, 'drakon/Dead or Alive: Saloon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1419, 27, NULL, '9622', 'Blackjack em Português 2', '9622', NULL, NULL, 'drakon/Blackjack em Português 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1420, 27, NULL, '9621', 'Blackjack em Português 1', '9621', NULL, NULL, 'drakon/Blackjack em Português 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1421, 27, NULL, '9620', 'Salon Privé Blackjack J', '9620', NULL, NULL, 'drakon/Salon Privé Blackjack J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1422, 27, NULL, '9619', 'Salon Privé Blackjack I', '9619', NULL, NULL, 'drakon/Salon Privé Blackjack I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1423, 27, NULL, '9618', 'Salon Privé Blackjack H', '9618', NULL, NULL, 'drakon/Salon Privé Blackjack H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:17', '2024-04-13 17:35:17'),
(1424, 27, NULL, '9617', 'Salon Privé Baccarat J', '9617', NULL, NULL, 'drakon/Salon Privé Baccarat J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1425, 27, NULL, '9616', 'Salon Privé Baccarat I', '9616', NULL, NULL, 'drakon/Salon Privé Baccarat I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1426, 27, NULL, '9615', 'Salon Privé Baccarat H', '9615', NULL, NULL, 'drakon/Salon Privé Baccarat H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1427, 27, NULL, '9614', 'VIP Blackjack em Português', '9614', NULL, NULL, 'drakon/VIP Blackjack em Português.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1428, 27, NULL, '9613', 'Blackjack Clássico em Português 2', '9613', NULL, NULL, 'drakon/Blackjack Clássico em Português 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1429, 27, NULL, '9612', 'Blackjack Clássico em Português 1', '9612', NULL, NULL, 'drakon/Blackjack Clássico em Português 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1430, 27, NULL, '9611', 'Roleta Relâmpago', '9611', NULL, NULL, 'drakon/Roleta Relâmpago.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1431, 27, NULL, '9610', 'Roleta Ao Vivo', '9610', NULL, NULL, 'drakon/Roleta Ao Vivo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1432, 27, NULL, '9609', 'Korean Speed Baccarat C', '9609', NULL, NULL, 'drakon/Korean Speed Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:18', '2024-04-13 17:35:18'),
(1433, 27, NULL, '9608', 'Korean Speed Baccarat B', '9608', NULL, NULL, 'drakon/Korean Speed Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1434, 27, NULL, '9606', 'Speed Baccarat X', '9606', NULL, NULL, 'drakon/Speed Baccarat X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1435, 27, NULL, '9605', 'Speed Baccarat W', '9605', NULL, NULL, 'drakon/Speed Baccarat W.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1436, 27, NULL, '9604', 'Speed Baccarat V', '9604', NULL, NULL, 'drakon/Speed Baccarat V.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1437, 27, NULL, '9603', 'Speed Baccarat U', '9603', NULL, NULL, 'drakon/Speed Baccarat U.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1438, 27, NULL, '9602', 'Speed Baccarat T', '9602', NULL, NULL, 'drakon/Speed Baccarat T.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1439, 27, NULL, '9600', 'First Person Lightning Baccarat', '9600', NULL, NULL, 'drakon/First Person Lightning Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1440, 27, NULL, '9599', 'First Person Golden Wealth Baccarat', '9599', NULL, NULL, 'drakon/First Person Golden Wealth Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1441, 27, NULL, '9598', 'Golden Wealth Baccarat', '9598', NULL, NULL, 'drakon/Golden Wealth Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:19', '2024-04-13 17:35:19'),
(1442, 27, NULL, '9597', 'Fan Tan', '9597', NULL, NULL, 'drakon/Fan Tan.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1443, 27, NULL, '9596', 'Cash Or Crash', '9596', NULL, NULL, 'drakon/Cash Or Crash.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1444, 27, NULL, '9595', 'Blackjack Classic 81', '9595', NULL, NULL, 'drakon/Blackjack Classic 81.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1445, 27, NULL, '9594', 'Blackjack Classic 80', '9594', NULL, NULL, 'drakon/Blackjack Classic 80.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1446, 27, NULL, '9593', 'Blackjack Classic 77', '9593', NULL, NULL, 'drakon/Blackjack Classic 77.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1447, 27, NULL, '9592', 'Blackjack Classic 76', '9592', NULL, NULL, 'drakon/Blackjack Classic 76.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1448, 27, NULL, '9591', 'Blackjack Classic 75', '9591', NULL, NULL, 'drakon/Blackjack Classic 75.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1449, 27, NULL, '9590', 'Blackjack Classic 74', '9590', NULL, NULL, 'drakon/Blackjack Classic 74.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1450, 27, NULL, '9589', 'Blackjack Classic 73', '9589', NULL, NULL, 'drakon/Blackjack Classic 73.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1451, 27, NULL, '9588', 'Blackjack Classic 72', '9588', NULL, NULL, 'drakon/Blackjack Classic 72.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:20', '2024-04-13 17:35:20'),
(1452, 27, NULL, '9587', 'Blackjack Classic 71', '9587', NULL, NULL, 'drakon/Blackjack Classic 71.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1453, 27, NULL, '9586', 'Blackjack Classic 70', '9586', NULL, NULL, 'drakon/Blackjack Classic 70.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1454, 27, NULL, '9585', 'Korean Speed Baccarat A', '9585', NULL, NULL, 'drakon/Korean Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1455, 27, NULL, '9584', 'Emperor Roulette', '9584', NULL, NULL, 'drakon/Emperor Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1456, 27, NULL, '9583', 'Blackjack Classic 87', '9583', NULL, NULL, 'drakon/Blackjack Classic 87.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1457, 27, NULL, '9582', 'Blackjack Classic 86', '9582', NULL, NULL, 'drakon/Blackjack Classic 86.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1458, 27, NULL, '9581', 'Blackjack Classic 85', '9581', NULL, NULL, 'drakon/Blackjack Classic 85.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1459, 27, NULL, '9580', 'Blackjack Classic 84', '9580', NULL, NULL, 'drakon/Blackjack Classic 84.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1460, 27, NULL, '9579', 'Blackjack Classic 83', '9579', NULL, NULL, 'drakon/Blackjack Classic 83.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1461, 27, NULL, '9578', 'Blackjack Classic 82', '9578', NULL, NULL, 'drakon/Blackjack Classic 82.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:21', '2024-04-13 17:35:21'),
(1462, 27, NULL, '9577', 'XXXTreme Lightning Roulette', '9577', NULL, NULL, 'drakon/XXXTreme Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1463, 27, NULL, '9576', 'Classic Speed Blackjack 66', '9576', NULL, NULL, 'drakon/Classic Speed Blackjack 66.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1464, 27, NULL, '9575', 'Classic Speed Blackjack 64', '9575', NULL, NULL, 'drakon/Classic Speed Blackjack 64.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1465, 27, NULL, '9574', 'Salon Privé Blackjack G', '9574', NULL, NULL, 'drakon/Salon Privé Blackjack G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1466, 27, NULL, '9573', 'Salon Privé Baccarat G', '9573', NULL, NULL, 'drakon/Salon Privé Baccarat G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1467, 27, NULL, '9572', 'Salon Privé Baccarat F', '9572', NULL, NULL, 'drakon/Salon Privé Baccarat F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1468, 27, NULL, '9571', 'Super Andar Bahar Live', '9571', NULL, NULL, 'drakon/Super Andar Bahar Live.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1469, 27, NULL, '9570', 'Salon Privé Roulette', '9570', NULL, NULL, 'drakon/Salon Privé Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1470, 27, NULL, '9569', 'Auto-Roulette La Partage', '9569', NULL, NULL, 'drakon/Auto-Roulette La Partage.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:22', '2024-04-13 17:35:22'),
(1471, 27, NULL, '9568', 'Auto-Roulette VIP', '9568', NULL, NULL, 'drakon/Auto-Roulette VIP.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1472, 27, NULL, '9567', 'Speed Auto Roulette', '9567', NULL, NULL, 'drakon/Speed Auto Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1473, 27, NULL, '9566', 'Salon Privé Blackjack F', '9566', NULL, NULL, 'drakon/Salon Privé Blackjack F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1474, 27, NULL, '9565', 'Salon Privé Blackjack E', '9565', NULL, NULL, 'drakon/Salon Privé Blackjack E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1475, 27, NULL, '9564', 'Salon Privé Blackjack D', '9564', NULL, NULL, 'drakon/Salon Privé Blackjack D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1476, 27, NULL, '9563', 'Salon Privé Blackjack C', '9563', NULL, NULL, 'drakon/Salon Privé Blackjack C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1477, 27, NULL, '9562', 'Salon Privé Blackjack B', '9562', NULL, NULL, 'drakon/Salon Privé Blackjack B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1478, 27, NULL, '9561', 'Salon Privé Blackjack A', '9561', NULL, NULL, 'drakon/Salon Privé Blackjack A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:23', '2024-04-13 17:35:23'),
(1479, 27, NULL, '9560', 'Blackjack Diamond VIP', '9560', NULL, NULL, 'drakon/Blackjack Diamond VIP.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1480, 27, NULL, '9559', 'Blackjack Grand VIP', '9559', NULL, NULL, 'drakon/Blackjack Grand VIP.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1481, 27, NULL, '9558', 'Blackjack Fortune VIP', '9558', NULL, NULL, 'drakon/Blackjack Fortune VIP.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1482, 27, NULL, '9557', 'Blackjack Platinum VIP', '9557', NULL, NULL, 'drakon/Blackjack Platinum VIP.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1483, 27, NULL, '9556', 'Speed VIP Blackjack D', '9556', NULL, NULL, 'drakon/Speed VIP Blackjack D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1484, 27, NULL, '9555', 'Speed VIP Blackjack C', '9555', NULL, NULL, 'drakon/Speed VIP Blackjack C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1485, 27, NULL, '9554', 'Speed VIP Blackjack B', '9554', NULL, NULL, 'drakon/Speed VIP Blackjack B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1486, 27, NULL, '9553', 'Speed VIP Blackjack A', '9553', NULL, NULL, 'drakon/Speed VIP Blackjack A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1487, 27, NULL, '9552', 'Salon Privé Baccarat E', '9552', NULL, NULL, 'drakon/Salon Privé Baccarat E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1488, 27, NULL, '9551', 'Salon Privé Baccarat D', '9551', NULL, NULL, 'drakon/Salon Privé Baccarat D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:24', '2024-04-13 17:35:24'),
(1489, 27, NULL, '9550', 'Classic Speed Blackjack 63', '9550', NULL, NULL, 'drakon/Classic Speed Blackjack 63.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1490, 27, NULL, '9549', 'Classic Speed Blackjack 62', '9549', NULL, NULL, 'drakon/Classic Speed Blackjack 62.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1491, 27, NULL, '9548', 'Classic Speed Blackjack 61', '9548', NULL, NULL, 'drakon/Classic Speed Blackjack 61.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1492, 27, NULL, '9547', 'Classic Speed Blackjack 60', '9547', NULL, NULL, 'drakon/Classic Speed Blackjack 60.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1493, 27, NULL, '9546', 'Blackjack VIP 16', '9546', NULL, NULL, 'drakon/Blackjack VIP 16.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1494, 27, NULL, '9545', 'Blackjack VIP 15', '9545', NULL, NULL, 'drakon/Blackjack VIP 15.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1495, 27, NULL, '9544', 'Blackjack VIP 14', '9544', NULL, NULL, 'drakon/Blackjack VIP 14.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1496, 27, NULL, '9543', 'Blackjack VIP 13', '9543', NULL, NULL, 'drakon/Blackjack VIP 13.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1497, 27, NULL, '9542', 'Blackjack VIP 12', '9542', NULL, NULL, 'drakon/Blackjack VIP 12.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1498, 27, NULL, '9541', 'Blackjack VIP 11', '9541', NULL, NULL, 'drakon/Blackjack VIP 11.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:25', '2024-04-13 17:35:25'),
(1499, 27, NULL, '9540', 'Blackjack VIP 10', '9540', NULL, NULL, 'drakon/Blackjack VIP 10.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1500, 27, NULL, '9539', 'Blackjack VIP 9', '9539', NULL, NULL, 'drakon/Blackjack VIP 9.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1501, 27, NULL, '9538', 'Blackjack VIP 22', '9538', NULL, NULL, 'drakon/Blackjack VIP 22.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1502, 27, NULL, '9537', 'Blackjack VIP 21', '9537', NULL, NULL, 'drakon/Blackjack VIP 21.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1503, 27, NULL, '9536', 'Blackjack VIP 20', '9536', NULL, NULL, 'drakon/Blackjack VIP 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1504, 27, NULL, '9535', 'Speed VIP Blackjack J', '9535', NULL, NULL, 'drakon/Speed VIP Blackjack J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1505, 27, NULL, '9534', 'Speed VIP Blackjack I', '9534', NULL, NULL, 'drakon/Speed VIP Blackjack I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1506, 27, NULL, '9533', 'Speed VIP Blackjack H', '9533', NULL, NULL, 'drakon/Speed VIP Blackjack H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1507, 27, NULL, '9532', 'Bac Bo', '9532', NULL, NULL, 'drakon/Bac Bo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1508, 27, NULL, '9531', 'Emperor Sic Bo', '9531', NULL, NULL, 'drakon/Emperor Sic Bo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:26', '2024-04-13 17:35:26'),
(1509, 27, NULL, '9530', 'Emperor Speed Baccarat C', '9530', NULL, NULL, 'drakon/Emperor Speed Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1510, 27, NULL, '9529', 'Emperor Dragon Tiger', '9529', NULL, NULL, 'drakon/Emperor Dragon Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1511, 27, NULL, '9528', 'Emperor Speed Baccarat B', '9528', NULL, NULL, 'drakon/Emperor Speed Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1512, 27, NULL, '9527', 'Emperor Speed Baccarat A', '9527', NULL, NULL, 'drakon/Emperor Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1513, 27, NULL, '9526', 'Blackjack VIP 19', '9526', NULL, NULL, 'drakon/Blackjack VIP 19.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1514, 27, NULL, '9525', 'Blackjack VIP 18', '9525', NULL, NULL, 'drakon/Blackjack VIP 18.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1515, 27, NULL, '9524', 'Blackjack VIP 17', '9524', NULL, NULL, 'drakon/Blackjack VIP 17.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1516, 27, NULL, '9523', 'Speed VIP Blackjack G', '9523', NULL, NULL, 'drakon/Speed VIP Blackjack G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1517, 27, NULL, '9522', 'Speed VIP Blackjack F', '9522', NULL, NULL, 'drakon/Speed VIP Blackjack F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1518, 27, NULL, '9521', 'Speed VIP Blackjack E', '9521', NULL, NULL, 'drakon/Speed VIP Blackjack E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:27', '2024-04-13 17:35:27'),
(1519, 27, NULL, '9520', 'First Person Lightning Blackjack', '9520', NULL, NULL, 'drakon/First Person Lightning Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1520, 27, NULL, '9519', 'Lightning Blackjack', '9519', NULL, NULL, 'drakon/Lightning Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1521, 27, NULL, '9518', 'Blackjack VIP 8', '9518', NULL, NULL, 'drakon/Blackjack VIP 8.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1522, 27, NULL, '9517', 'Blackjack VIP 7', '9517', NULL, NULL, 'drakon/Blackjack VIP 7.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1523, 27, NULL, '9516', 'Blackjack VIP 6', '9516', NULL, NULL, 'drakon/Blackjack VIP 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1524, 27, NULL, '9515', 'Blackjack VIP 5', '9515', NULL, NULL, 'drakon/Blackjack VIP 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1525, 27, NULL, '9514', 'Blackjack VIP 4', '9514', NULL, NULL, 'drakon/Blackjack VIP 4.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1526, 27, NULL, '9513', 'Blackjack VIP 3', '9513', NULL, NULL, 'drakon/Blackjack VIP 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1527, 27, NULL, '9512', 'Blackjack VIP 2', '9512', NULL, NULL, 'drakon/Blackjack VIP 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1528, 27, NULL, '9511', 'Blackjack VIP 1', '9511', NULL, NULL, 'drakon/Blackjack VIP 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1529, 27, NULL, '9510', 'Classic Speed Blackjack 59', '9510', NULL, NULL, 'drakon/Classic Speed Blackjack 59.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:28', '2024-04-13 17:35:28'),
(1530, 27, NULL, '9509', 'Classic Speed Blackjack 58', '9509', NULL, NULL, 'drakon/Classic Speed Blackjack 58.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1531, 27, NULL, '9508', 'Classic Speed Blackjack 57', '9508', NULL, NULL, 'drakon/Classic Speed Blackjack 57.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1532, 27, NULL, '9507', 'Classic Speed Blackjack 56', '9507', NULL, NULL, 'drakon/Classic Speed Blackjack 56.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1533, 27, NULL, '9506', 'Classic Speed Blackjack 55', '9506', NULL, NULL, 'drakon/Classic Speed Blackjack 55.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1534, 27, NULL, '9505', 'Classic Speed Blackjack 54', '9505', NULL, NULL, 'drakon/Classic Speed Blackjack 54.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1535, 27, NULL, '9504', 'Classic Speed Blackjack 53', '9504', NULL, NULL, 'drakon/Classic Speed Blackjack 53.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1536, 27, NULL, '9503', 'Classic Speed Blackjack 52', '9503', NULL, NULL, 'drakon/Classic Speed Blackjack 52.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1537, 27, NULL, '9502', 'Classic Speed Blackjack 51', '9502', NULL, NULL, 'drakon/Classic Speed Blackjack 51.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1538, 27, NULL, '9501', 'Classic Speed Blackjack 50', '9501', NULL, NULL, 'drakon/Classic Speed Blackjack 50.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1539, 27, NULL, '9500', 'Classic Speed Blackjack 49', '9500', NULL, NULL, 'drakon/Classic Speed Blackjack 49.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:29', '2024-04-13 17:35:29'),
(1540, 27, NULL, '9499', 'Classic Speed Blackjack 48', '9499', NULL, NULL, 'drakon/Classic Speed Blackjack 48.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1541, 27, NULL, '9498', 'Classic Speed Blackjack 47', '9498', NULL, NULL, 'drakon/Classic Speed Blackjack 47.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1542, 27, NULL, '9497', 'Classic Speed Blackjack 46', '9497', NULL, NULL, 'drakon/Classic Speed Blackjack 46.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1543, 27, NULL, '9496', 'Classic Speed Blackjack 45', '9496', NULL, NULL, 'drakon/Classic Speed Blackjack 45.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1544, 27, NULL, '9495', 'Classic Speed Blackjack 44', '9495', NULL, NULL, 'drakon/Classic Speed Blackjack 44.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1545, 27, NULL, '9494', 'Classic Speed Blackjack 43', '9494', NULL, NULL, 'drakon/Classic Speed Blackjack 43.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1546, 27, NULL, '9493', 'Classic Speed Blackjack 42', '9493', NULL, NULL, 'drakon/Classic Speed Blackjack 42.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1547, 27, NULL, '9492', 'Classic Speed Blackjack 41', '9492', NULL, NULL, 'drakon/Classic Speed Blackjack 41.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1548, 27, NULL, '9491', 'Classic Speed Blackjack 40', '9491', NULL, NULL, 'drakon/Classic Speed Blackjack 40.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1549, 27, NULL, '9490', 'Classic Speed Blackjack 39', '9490', NULL, NULL, 'drakon/Classic Speed Blackjack 39.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:30', '2024-04-13 17:35:30'),
(1550, 27, NULL, '9489', 'Classic Speed Blackjack 38', '9489', NULL, NULL, 'drakon/Classic Speed Blackjack 38.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1551, 27, NULL, '9488', 'Classic Speed Blackjack 37', '9488', NULL, NULL, 'drakon/Classic Speed Blackjack 37.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1552, 27, NULL, '9487', 'Classic Speed Blackjack 36', '9487', NULL, NULL, 'drakon/Classic Speed Blackjack 36.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1553, 27, NULL, '9486', 'Classic Speed Blackjack 35', '9486', NULL, NULL, 'drakon/Classic Speed Blackjack 35.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1554, 27, NULL, '9485', 'Salon Privé Baccarat C', '9485', NULL, NULL, 'drakon/Salon Privé Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1555, 27, NULL, '9484', 'Salon Privé Baccarat B', '9484', NULL, NULL, 'drakon/Salon Privé Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1556, 27, NULL, '9483', 'Salon Privé Baccarat A', '9483', NULL, NULL, 'drakon/Salon Privé Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1557, 27, NULL, '9482', 'Peek Baccarat', '9482', NULL, NULL, 'drakon/Peek Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1558, 27, NULL, '9481', 'No Commission Baccarat', '9481', NULL, NULL, 'drakon/No Commission Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1559, 27, NULL, '9480', 'No Commission Speed Baccarat C', '9480', NULL, NULL, 'drakon/No Commission Speed Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1560, 27, NULL, '9479', 'No Commission Speed Baccarat B', '9479', NULL, NULL, 'drakon/No Commission Speed Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:31', '2024-04-13 17:35:31'),
(1561, 27, NULL, '9478', 'No Commission Speed Baccarat A', '9478', NULL, NULL, 'drakon/No Commission Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1562, 27, NULL, '9477', 'Speed Baccarat S', '9477', NULL, NULL, 'drakon/Speed Baccarat S.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1563, 27, NULL, '9476', 'Speed Baccarat R', '9476', NULL, NULL, 'drakon/Speed Baccarat R.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1564, 27, NULL, '9475', 'Speed Baccarat Q', '9475', NULL, NULL, 'drakon/Speed Baccarat Q.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1565, 27, NULL, '9474', 'Speed Baccarat P', '9474', NULL, NULL, 'drakon/Speed Baccarat P.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1566, 27, NULL, '9473', 'Speed Baccarat O', '9473', NULL, NULL, 'drakon/Speed Baccarat O.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1567, 27, NULL, '9472', 'Speed Baccarat N', '9472', NULL, NULL, 'drakon/Speed Baccarat N.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1568, 27, NULL, '9471', 'Speed Baccarat M', '9471', NULL, NULL, 'drakon/Speed Baccarat M.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1569, 27, NULL, '9470', 'Speed Baccarat L', '9470', NULL, NULL, 'drakon/Speed Baccarat L.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1570, 27, NULL, '9469', 'Speed Baccarat K', '9469', NULL, NULL, 'drakon/Speed Baccarat K.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:32', '2024-04-13 17:35:32'),
(1571, 27, NULL, '9468', 'Speed Baccarat J', '9468', NULL, NULL, 'drakon/Speed Baccarat J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1572, 27, NULL, '9467', 'Speed Baccarat I', '9467', NULL, NULL, 'drakon/Speed Baccarat I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1573, 27, NULL, '9466', 'Speed Baccarat H', '9466', NULL, NULL, 'drakon/Speed Baccarat H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1574, 27, NULL, '9465', 'Speed Baccarat G', '9465', NULL, NULL, 'drakon/Speed Baccarat G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1575, 27, NULL, '9464', 'Speed Baccarat F', '9464', NULL, NULL, 'drakon/Speed Baccarat F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1576, 27, NULL, '9463', 'Speed Baccarat E', '9463', NULL, NULL, 'drakon/Speed Baccarat E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1577, 27, NULL, '9462', 'Speed Baccarat D', '9462', NULL, NULL, 'drakon/Speed Baccarat D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1578, 27, NULL, '9461', 'Speed Baccarat C', '9461', NULL, NULL, 'drakon/Speed Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1579, 27, NULL, '9460', 'Speed Baccarat B', '9460', NULL, NULL, 'drakon/Speed Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1580, 27, NULL, '9459', 'Speed Baccarat A', '9459', NULL, NULL, 'drakon/Speed Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:33', '2024-04-13 17:35:33'),
(1581, 27, NULL, '9457', 'Speed Roulette', '9457', NULL, NULL, 'drakon/Speed Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1582, 27, NULL, '9456', 'Speed Blackjack M', '9456', NULL, NULL, 'drakon/Speed Blackjack M.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1583, 27, NULL, '9455', 'Speed Blackjack L', '9455', NULL, NULL, 'drakon/Speed Blackjack L.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1584, 27, NULL, '9454', 'Speed Blackjack K', '9454', NULL, NULL, 'drakon/Speed Blackjack K.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1585, 27, NULL, '9453', 'Speed Blackjack J', '9453', NULL, NULL, 'drakon/Speed Blackjack J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1586, 27, NULL, '9452', 'Speed Blackjack I', '9452', NULL, NULL, 'drakon/Speed Blackjack I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1587, 27, NULL, '9451', 'Speed Blackjack H', '9451', NULL, NULL, 'drakon/Speed Blackjack H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1588, 27, NULL, '9450', 'Speed Blackjack G', '9450', NULL, NULL, 'drakon/Speed Blackjack G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1589, 27, NULL, '9449', 'Speed Blackjack E', '9449', NULL, NULL, 'drakon/Speed Blackjack E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1590, 27, NULL, '9448', 'Speed Blackjack D', '9448', NULL, NULL, 'drakon/Speed Blackjack D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:34', '2024-04-13 17:35:34'),
(1591, 27, NULL, '9446', 'Grand Casino Roulette', '9446', NULL, NULL, 'drakon/Grand Casino Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1592, 27, NULL, '9445', 'First Person Lightning Roulette', '9445', NULL, NULL, 'drakon/First Person Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1593, 27, NULL, '9444', 'Classic Speed Blackjack 9', '9444', NULL, NULL, 'drakon/Classic Speed Blackjack 9.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1594, 27, NULL, '9443', 'Classic Speed Blackjack 8', '9443', NULL, NULL, 'drakon/Classic Speed Blackjack 8.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1595, 27, NULL, '9442', 'Classic Speed Blackjack 7', '9442', NULL, NULL, 'drakon/Classic Speed Blackjack 7.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1596, 27, NULL, '9441', 'Classic Speed Blackjack 6', '9441', NULL, NULL, 'drakon/Classic Speed Blackjack 6.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1597, 27, NULL, '9440', 'Classic Speed Blackjack 5', '9440', NULL, NULL, 'drakon/Classic Speed Blackjack 5.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1598, 27, NULL, '9439', 'Classic Speed Blackjack 4', '9439', NULL, NULL, 'drakon/Classic Speed Blackjack 4.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1599, 27, NULL, '9438', 'Classic Speed Blackjack 34', '9438', NULL, NULL, 'drakon/Classic Speed Blackjack 34.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1600, 27, NULL, '9437', 'Classic Speed Blackjack 33', '9437', NULL, NULL, 'drakon/Classic Speed Blackjack 33.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:35', '2024-04-13 17:35:35'),
(1601, 27, NULL, '9436', 'Classic Speed Blackjack 32', '9436', NULL, NULL, 'drakon/Classic Speed Blackjack 32.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1602, 27, NULL, '9435', 'Classic Speed Blackjack 31', '9435', NULL, NULL, 'drakon/Classic Speed Blackjack 31.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1603, 27, NULL, '9434', 'Classic Speed Blackjack 30', '9434', NULL, NULL, 'drakon/Classic Speed Blackjack 30.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1604, 27, NULL, '9433', 'Classic Speed Blackjack 3', '9433', NULL, NULL, 'drakon/Classic Speed Blackjack 3.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1605, 27, NULL, '9432', 'Classic Speed Blackjack 29', '9432', NULL, NULL, 'drakon/Classic Speed Blackjack 29.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1606, 27, NULL, '9431', 'Classic Speed Blackjack 28', '9431', NULL, NULL, 'drakon/Classic Speed Blackjack 28.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1607, 27, NULL, '9430', 'Classic Speed Blackjack 27', '9430', NULL, NULL, 'drakon/Classic Speed Blackjack 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1608, 27, NULL, '9429', 'Classic Speed Blackjack 26', '9429', NULL, NULL, 'drakon/Classic Speed Blackjack 26.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1609, 27, NULL, '9428', 'Classic Speed Blackjack 25', '9428', NULL, NULL, 'drakon/Classic Speed Blackjack 25.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1610, 27, NULL, '9427', 'Classic Speed Blackjack 24', '9427', NULL, NULL, 'drakon/Classic Speed Blackjack 24.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:36', '2024-04-13 17:35:36'),
(1611, 27, NULL, '9426', 'Classic Speed Blackjack 23', '9426', NULL, NULL, 'drakon/Classic Speed Blackjack 23.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1612, 27, NULL, '9425', 'Classic Speed Blackjack 22', '9425', NULL, NULL, 'drakon/Classic Speed Blackjack 22.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1613, 27, NULL, '9424', 'Classic Speed Blackjack 21', '9424', NULL, NULL, 'drakon/Classic Speed Blackjack 21.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1614, 27, NULL, '9423', 'Classic Speed Blackjack 20', '9423', NULL, NULL, 'drakon/Classic Speed Blackjack 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1615, 27, NULL, '9422', 'Classic Speed Blackjack 2', '9422', NULL, NULL, 'drakon/Classic Speed Blackjack 2.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1616, 27, NULL, '9421', 'Classic Speed Blackjack 19', '9421', NULL, NULL, 'drakon/Classic Speed Blackjack 19.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1617, 27, NULL, '9419', 'Classic Speed Blackjack 17', '9419', NULL, NULL, 'drakon/Classic Speed Blackjack 17.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1618, 27, NULL, '9418', 'Classic Speed Blackjack 16', '9418', NULL, NULL, 'drakon/Classic Speed Blackjack 16.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1619, 27, NULL, '9417', 'Classic Speed Blackjack 15', '9417', NULL, NULL, 'drakon/Classic Speed Blackjack 15.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1620, 27, NULL, '9416', 'Classic Speed Blackjack 14', '9416', NULL, NULL, 'drakon/Classic Speed Blackjack 14.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1621, 27, NULL, '9415', 'Classic Speed Blackjack 13', '9415', NULL, NULL, 'drakon/Classic Speed Blackjack 13.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1622, 27, NULL, '9414', 'Classic Speed Blackjack 12', '9414', NULL, NULL, 'drakon/Classic Speed Blackjack 12.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:37', '2024-04-13 17:35:37'),
(1623, 27, NULL, '9413', 'Classic Speed Blackjack 11', '9413', NULL, NULL, 'drakon/Classic Speed Blackjack 11.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1624, 27, NULL, '9412', 'Classic Speed Blackjack 10', '9412', NULL, NULL, 'drakon/Classic Speed Blackjack 10.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1625, 27, NULL, '9411', 'Classic Speed Blackjack 1', '9411', NULL, NULL, 'drakon/Classic Speed Blackjack 1.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1626, 27, NULL, '9410', 'Blackjack VIP Z', '9410', NULL, NULL, 'drakon/Blackjack VIP Z.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1627, 27, NULL, '9409', 'Blackjack VIP X', '9409', NULL, NULL, 'drakon/Blackjack VIP X.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1628, 27, NULL, '9408', 'Blackjack VIP V', '9408', NULL, NULL, 'drakon/Blackjack VIP V.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1629, 27, NULL, '9407', 'Blackjack VIP U', '9407', NULL, NULL, 'drakon/Blackjack VIP U.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1630, 27, NULL, '9406', 'Blackjack VIP T', '9406', NULL, NULL, 'drakon/Blackjack VIP T.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1631, 27, NULL, '9405', 'Blackjack VIP S', '9405', NULL, NULL, 'drakon/Blackjack VIP S.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1632, 27, NULL, '9404', 'Blackjack VIP R', '9404', NULL, NULL, 'drakon/Blackjack VIP R.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:38', '2024-04-13 17:35:38'),
(1633, 27, NULL, '9403', 'Blackjack VIP Q', '9403', NULL, NULL, 'drakon/Blackjack VIP Q.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1634, 27, NULL, '9402', 'Blackjack VIP P', '9402', NULL, NULL, 'drakon/Blackjack VIP P.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1635, 27, NULL, '9401', 'Blackjack VIP O', '9401', NULL, NULL, 'drakon/Blackjack VIP O.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1636, 27, NULL, '9400', 'Blackjack VIP N', '9400', NULL, NULL, 'drakon/Blackjack VIP N.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1637, 27, NULL, '9399', 'Blackjack VIP M', '9399', NULL, NULL, 'drakon/Blackjack VIP M.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1638, 27, NULL, '9398', 'Blackjack VIP L', '9398', NULL, NULL, 'drakon/Blackjack VIP L.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1639, 27, NULL, '9397', 'Blackjack VIP K', '9397', NULL, NULL, 'drakon/Blackjack VIP K.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1640, 27, NULL, '9396', 'Blackjack VIP J', '9396', NULL, NULL, 'drakon/Blackjack VIP J.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1641, 27, NULL, '9395', 'Blackjack VIP I', '9395', NULL, NULL, 'drakon/Blackjack VIP I.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1642, 27, NULL, '9394', 'Blackjack VIP H', '9394', NULL, NULL, 'drakon/Blackjack VIP H.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:39', '2024-04-13 17:35:39'),
(1643, 27, NULL, '9393', 'Blackjack VIP Gamma', '9393', NULL, NULL, 'drakon/Blackjack VIP Gamma.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1644, 27, NULL, '9392', 'Blackjack VIP G', '9392', NULL, NULL, 'drakon/Blackjack VIP G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1645, 27, NULL, '9391', 'Blackjack VIP F', '9391', NULL, NULL, 'drakon/Blackjack VIP F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1646, 27, NULL, '9390', 'Blackjack VIP E', '9390', NULL, NULL, 'drakon/Blackjack VIP E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1647, 27, NULL, '9389', 'Blackjack VIP D', '9389', NULL, NULL, 'drakon/Blackjack VIP D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1648, 27, NULL, '9388', 'Blackjack VIP C', '9388', NULL, NULL, 'drakon/Blackjack VIP C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1649, 27, NULL, '9387', 'Blackjack VIP Beta', '9387', NULL, NULL, 'drakon/Blackjack VIP Beta.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1650, 27, NULL, '9386', 'Blackjack VIP Alpha', '9386', NULL, NULL, 'drakon/Blackjack VIP Alpha.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1651, 27, NULL, '9385', 'Blackjack Silver G', '9385', NULL, NULL, 'drakon/Blackjack Silver G.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1652, 27, NULL, '9384', 'Blackjack Silver F', '9384', NULL, NULL, 'drakon/Blackjack Silver F.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:40', '2024-04-13 17:35:40'),
(1653, 27, NULL, '9383', 'Blackjack Silver E', '9383', NULL, NULL, 'drakon/Blackjack Silver E.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1654, 27, NULL, '9382', 'Blackjack Silver D', '9382', NULL, NULL, 'drakon/Blackjack Silver D.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1655, 27, NULL, '9381', 'Blackjack Silver C', '9381', NULL, NULL, 'drakon/Blackjack Silver C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1656, 27, NULL, '9380', 'Blackjack Silver B', '9380', NULL, NULL, 'drakon/Blackjack Silver B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1657, 27, NULL, '9379', 'Blackjack Silver A', '9379', NULL, NULL, 'drakon/Blackjack Silver A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1658, 27, NULL, '9378', 'Blackjack Party', '9378', NULL, NULL, 'drakon/Blackjack Party.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1659, 27, NULL, '9377', 'Blackjack Classic 8', '9377', NULL, NULL, 'drakon/Blackjack Classic 8.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1660, 27, NULL, '9376', 'Blackjack Classic 7', '9376', NULL, NULL, 'drakon/Blackjack Classic 7.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1661, 27, NULL, '9375', 'Blackjack Classic 69', '9375', NULL, NULL, 'drakon/Blackjack Classic 69.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1662, 27, NULL, '9374', 'Blackjack Classic 68', '9374', NULL, NULL, 'drakon/Blackjack Classic 68.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1663, 27, NULL, '9373', 'Blackjack Classic 67', '9373', NULL, NULL, 'drakon/Blackjack Classic 67.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:41', '2024-04-13 17:35:41'),
(1664, 27, NULL, '9372', 'Blackjack Classic 66', '9372', NULL, NULL, 'drakon/Blackjack Classic 66.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1665, 27, NULL, '9371', 'Blackjack Classic 65', '9371', NULL, NULL, 'drakon/Blackjack Classic 65.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1666, 27, NULL, '9370', 'Blackjack Classic 64', '9370', NULL, NULL, 'drakon/Blackjack Classic 64.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1667, 27, NULL, '9369', 'Blackjack Classic 63', '9369', NULL, NULL, 'drakon/Blackjack Classic 63.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1668, 27, NULL, '9368', 'Blackjack Classic 62', '9368', NULL, NULL, 'drakon/Blackjack Classic 62.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1669, 27, NULL, '9367', 'Blackjack Classic 61', '9367', NULL, NULL, 'drakon/Blackjack Classic 61.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1670, 27, NULL, '9366', 'Blackjack Classic 60', '9366', NULL, NULL, 'drakon/Blackjack Classic 60.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1671, 27, NULL, '9365', 'Blackjack Classic 59', '9365', NULL, NULL, 'drakon/Blackjack Classic 59.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1672, 27, NULL, '9364', 'Blackjack Classic 58', '9364', NULL, NULL, 'drakon/Blackjack Classic 58.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1673, 27, NULL, '9363', 'Blackjack Classic 57', '9363', NULL, NULL, 'drakon/Blackjack Classic 57.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1674, 27, NULL, '9362', 'Blackjack Classic 56', '9362', NULL, NULL, 'drakon/Blackjack Classic 56.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:42', '2024-04-13 17:35:42'),
(1675, 27, NULL, '9361', 'Blackjack Classic 55', '9361', NULL, NULL, 'drakon/Blackjack Classic 55.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1676, 27, NULL, '9360', 'Blackjack Classic 54', '9360', NULL, NULL, 'drakon/Blackjack Classic 54.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1677, 27, NULL, '9359', 'Blackjack Classic 53', '9359', NULL, NULL, 'drakon/Blackjack Classic 53.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1678, 27, NULL, '9358', 'Blackjack Classic 52', '9358', NULL, NULL, 'drakon/Blackjack Classic 52.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1679, 27, NULL, '9357', 'Blackjack Classic 51', '9357', NULL, NULL, 'drakon/Blackjack Classic 51.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1680, 27, NULL, '9356', 'Blackjack Classic 50', '9356', NULL, NULL, 'drakon/Blackjack Classic 50.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1681, 27, NULL, '9355', 'Blackjack Classic 49', '9355', NULL, NULL, 'drakon/Blackjack Classic 49.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1682, 27, NULL, '9354', 'Blackjack Classic 48', '9354', NULL, NULL, 'drakon/Blackjack Classic 48.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1683, 27, NULL, '9353', 'Blackjack Classic 47', '9353', NULL, NULL, 'drakon/Blackjack Classic 47.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1684, 27, NULL, '9352', 'Blackjack Classic 46', '9352', NULL, NULL, 'drakon/Blackjack Classic 46.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:43', '2024-04-13 17:35:43'),
(1685, 27, NULL, '9351', 'Blackjack Classic 45', '9351', NULL, NULL, 'drakon/Blackjack Classic 45.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1686, 27, NULL, '9350', 'Blackjack Classic 44', '9350', NULL, NULL, 'drakon/Blackjack Classic 44.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1687, 27, NULL, '9349', 'Blackjack Classic 43', '9349', NULL, NULL, 'drakon/Blackjack Classic 43.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1688, 27, NULL, '9348', 'Blackjack Classic 35', '9348', NULL, NULL, 'drakon/Blackjack Classic 35.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1689, 27, NULL, '9347', 'Blackjack Classic 30', '9347', NULL, NULL, 'drakon/Blackjack Classic 30.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1690, 27, NULL, '9346', 'Blackjack Classic 29', '9346', NULL, NULL, 'drakon/Blackjack Classic 29.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1691, 27, NULL, '9345', 'Blackjack Classic 26', '9345', NULL, NULL, 'drakon/Blackjack Classic 26.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1692, 27, NULL, '9344', 'Blackjack Classic 25', '9344', NULL, NULL, 'drakon/Blackjack Classic 25.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1693, 27, NULL, '9343', 'Blackjack Classic 24', '9343', NULL, NULL, 'drakon/Blackjack Classic 24.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1694, 27, NULL, '9342', 'Blackjack Classic 20', '9342', NULL, NULL, 'drakon/Blackjack Classic 20.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1695, 27, NULL, '9341', 'Blackjack Classic 18', '9341', NULL, NULL, 'drakon/Blackjack Classic 18.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:44', '2024-04-13 17:35:44'),
(1696, 27, NULL, '9340', 'Blackjack Classic 17', '9340', NULL, NULL, 'drakon/Blackjack Classic 17.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1697, 27, NULL, '9339', 'Baccarat C', '9339', NULL, NULL, 'drakon/Baccarat C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1698, 27, NULL, '9338', 'Baccarat B', '9338', NULL, NULL, 'drakon/Baccarat B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1699, 27, NULL, '9337', 'VIP Roulette', '9337', NULL, NULL, 'drakon/VIP Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1700, 27, NULL, '9336', 'Blackjack VIP A', '9336', NULL, NULL, 'drakon/Blackjack VIP A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1701, 27, NULL, '9335', 'First Person Craps', '9335', NULL, NULL, 'drakon/First Person Craps.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1702, 27, NULL, '9334', 'First Person Dream Catcher', '9334', NULL, NULL, 'drakon/First Person Dream Catcher.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1703, 27, NULL, '9333', 'American Roulette', '9333', NULL, NULL, 'drakon/American Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1704, 27, NULL, '9332', 'Power Blackjack', '9332', NULL, NULL, 'drakon/Power Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1705, 27, NULL, '9331', 'Super Sic Bo', '9331', NULL, NULL, 'drakon/Super Sic Bo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:45', '2024-04-13 17:35:45'),
(1706, 27, NULL, '9330', 'Football Studio', '9330', NULL, NULL, 'drakon/Football Studio.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1707, 27, NULL, '9329', 'Ultimate Texas Hold`em', '9329', NULL, NULL, 'drakon/Ultimate Texas Hold`em.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1708, 27, NULL, '9328', 'Infinite Blackjack', '9328', NULL, NULL, 'drakon/Infinite Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1709, 27, NULL, '9327', 'Extreme Texas Hold\"em', '9327', NULL, NULL, 'drakon/Extreme Texas Hold\"em.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1710, 27, NULL, '9326', 'Baccarat A', '9326', NULL, NULL, 'drakon/Baccarat A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1711, 27, NULL, '9325', 'Blackjack C', '9325', NULL, NULL, 'drakon/Blackjack C.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1712, 27, NULL, '9324', 'First Person Mega Ball', '9324', NULL, NULL, 'drakon/First Person Mega Ball.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1713, 27, NULL, '9323', 'Texas Hold`em Bonus Poker', '9323', NULL, NULL, 'drakon/Texas Hold`em Bonus Poker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1714, 27, NULL, '9322', 'Blackjack B', '9322', NULL, NULL, 'drakon/Blackjack B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1715, 27, NULL, '9321', 'Lightning Dice', '9321', NULL, NULL, 'drakon/Lightning Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:46', '2024-04-13 17:35:46'),
(1716, 27, NULL, '9320', 'Mega Ball', '9320', NULL, NULL, 'drakon/Mega Ball.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1717, 27, NULL, '9319', 'First Person Blackjack', '9319', NULL, NULL, 'drakon/First Person Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1718, 27, NULL, '9318', 'Instant Roulette', '9318', NULL, NULL, 'drakon/Instant Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1719, 27, NULL, '9317', 'Casino Hold`em', '9317', NULL, NULL, 'drakon/Casino Hold`em.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1720, 27, NULL, '9316', 'Auto-Roulette', '9316', NULL, NULL, 'drakon/Auto-Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1721, 27, NULL, '9315', 'Double Ball Roulette', '9315', NULL, NULL, 'drakon/Double Ball Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1722, 27, NULL, '9314', 'Triple Card Poker', '9314', NULL, NULL, 'drakon/Triple Card Poker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1723, 27, NULL, '9313', 'Lightning Baccarat', '9313', NULL, NULL, 'drakon/Lightning Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1724, 27, NULL, '9312', 'Blackjack Classic 9', '9312', NULL, NULL, 'drakon/Blackjack Classic 9.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1725, 27, NULL, '9311', 'First Person Roulette', '9311', NULL, NULL, 'drakon/First Person Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:47', '2024-04-13 17:35:47'),
(1726, 27, NULL, '9310', 'Baccarat Control Squeeze', '9310', NULL, NULL, 'drakon/Baccarat Control Squeeze.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1727, 27, NULL, '9309', 'Lightning Roulette', '9309', NULL, NULL, 'drakon/Lightning Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1728, 27, NULL, '9308', 'Blackjack VIP B', '9308', NULL, NULL, 'drakon/Blackjack VIP B.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1729, 27, NULL, '9307', 'MONOPOLY Live', '9307', NULL, NULL, 'drakon/MONOPOLY Live.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1730, 27, NULL, '9306', 'Immersive Roulette', '9306', NULL, NULL, 'drakon/Immersive Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1731, 27, NULL, '9305', 'First Person American Roulette', '9305', NULL, NULL, 'drakon/First Person American Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1732, 27, NULL, '9304', '2 Hand Casino Hold`em', '9304', NULL, NULL, 'drakon/2 Hand Casino Hold`em.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1733, 27, NULL, '9303', 'French Roulette Gold', '9303', NULL, NULL, 'drakon/French Roulette Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1734, 27, NULL, '9302', 'First Person Dragon Tiger', '9302', NULL, NULL, 'drakon/First Person Dragon Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1735, 27, NULL, '9301', 'Dragon Tiger', '9301', NULL, NULL, 'drakon/Dragon Tiger.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1736, 27, NULL, '9300', 'Infinite Free Bet Blackjack', '9300', NULL, NULL, 'drakon/Infinite Free Bet Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:48', '2024-04-13 17:35:48'),
(1737, 27, NULL, '9299', 'Baccarat Squeeze', '9299', NULL, NULL, 'drakon/Baccarat Squeeze.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1738, 27, NULL, '9298', 'Caribbean Stud Poker', '9298', NULL, NULL, 'drakon/Caribbean Stud Poker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1739, 27, NULL, '9297', 'Side Bet City', '9297', NULL, NULL, 'drakon/Side Bet City.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1740, 27, NULL, '9296', 'Craps', '9296', NULL, NULL, 'drakon/Craps.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1741, 27, NULL, '9295', 'Crazy Time', '9295', NULL, NULL, 'drakon/Crazy Time.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1742, 27, NULL, '9294', 'Dream Catcher', '9294', NULL, NULL, 'drakon/Dream Catcher.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1743, 27, NULL, '9293', 'Blackjack A', '9293', NULL, NULL, 'drakon/Blackjack A.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1744, 27, NULL, '9292', 'First Person Baccarat', '9292', NULL, NULL, 'drakon/First Person Baccarat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1745, 27, NULL, '9291', 'Roulette', '9291', NULL, NULL, 'drakon/Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1746, 27, NULL, '9290', 'First Person Top Card', '9290', NULL, NULL, 'drakon/First Person Top Card.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1747, 27, NULL, '9289', 'Football Studio Roulette', '9289', NULL, NULL, 'drakon/Football Studio Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1748, 27, NULL, '9288', 'Football Studio Dice', '9288', NULL, NULL, 'drakon/Football Studio Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:49', '2024-04-13 17:35:49'),
(1749, 27, NULL, '9287', 'Monopoly Big Baller', '9287', NULL, NULL, 'drakon/Monopoly Big Baller.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1750, 27, NULL, '9286', 'Blackjack VIP 27', '9286', NULL, NULL, 'drakon/Blackjack VIP 27.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1751, 27, NULL, '9285', 'Blackjack VIP 26', '9285', NULL, NULL, 'drakon/Blackjack VIP 26.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1752, 27, NULL, '9284', 'Blackjack VIP 25', '9284', NULL, NULL, 'drakon/Blackjack VIP 25.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1753, 27, NULL, '9283', 'Speed VIP Blackjack M', '9283', NULL, NULL, 'drakon/Speed VIP Blackjack M.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1754, 27, NULL, '9282', 'Speed VIP Blackjack L', '9282', NULL, NULL, 'drakon/Speed VIP Blackjack L.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1755, 27, NULL, '9281', 'Speed VIP Blackjack K', '9281', NULL, NULL, 'drakon/Speed VIP Blackjack K.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:35:50'),
(1756, 27, NULL, '9280', 'Teen Patti', '9280', NULL, NULL, 'drakon/Teen Patti.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 1, 0, 0, '2024-04-13 17:35:50', '2024-04-13 17:42:59'),
(1757, 28, NULL, '10470', 'Great Gold', '10470', NULL, NULL, 'drakon/Great Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:19', '2024-04-13 19:39:19'),
(1758, 28, NULL, '10469', 'Majestic Mysteries Power Reels', '10469', NULL, NULL, 'drakon/Majestic Mysteries Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:19', '2024-04-13 19:39:19'),
(1759, 28, NULL, '10468', 'Zaidas Fortune', '10468', NULL, NULL, 'drakon/Zaidas Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:19', '2024-04-13 19:39:19'),
(1760, 28, NULL, '10467', 'Monsters Unchained', '10467', NULL, NULL, 'drakon/Monsters Unchained.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:19', '2024-04-13 19:39:19'),
(1761, 28, NULL, '10466', 'London Tube', '10466', NULL, NULL, 'drakon/London Tube.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:19', '2024-04-13 19:39:19'),
(1762, 28, NULL, '10465', 'Magic Tricks', '10465', NULL, NULL, 'drakon/Magic Tricks.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1763, 28, NULL, '10464', 'Gems Inferno Megaways', '10464', NULL, NULL, 'drakon/Gems Inferno Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1764, 28, NULL, '10463', 'Desert Legends Spins', '10463', NULL, NULL, 'drakon/Desert Legends Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1765, 28, NULL, '10462', 'Cyber Attack', '10462', NULL, NULL, 'drakon/Cyber Attack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1766, 28, NULL, '10461', 'Astronaut', '10461', NULL, NULL, 'drakon/Astronaut.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1767, 28, NULL, '10460', 'Jelly Multihops', '10460', NULL, NULL, 'drakon/Jelly Multihops.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1768, 28, NULL, '10459', 'Gods Of Troy', '10459', NULL, NULL, 'drakon/Gods Of Troy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1769, 28, NULL, '10458', 'Wanted Wildz', '10458', NULL, NULL, 'drakon/Wanted Wildz.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1770, 28, NULL, '10457', 'Red Hot Slot', '10457', NULL, NULL, 'drakon/Red Hot Slot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:20', '2024-04-13 19:39:20'),
(1771, 28, NULL, '10456', 'Macau Racing', '10456', NULL, NULL, 'drakon/Macau Racing.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1772, 28, NULL, '10455', 'Lucky Carnival', '10455', NULL, NULL, 'drakon/Lucky Carnival.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1773, 28, NULL, '10454', 'Leprechauns Magic Power Reels', '10454', NULL, NULL, 'drakon/Leprechauns Magic Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1774, 28, NULL, '10453', 'Leprechauns Magic Megaways', '10453', NULL, NULL, 'drakon/Leprechauns Magic Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1775, 28, NULL, '10452', 'Golden Toad', '10452', NULL, NULL, 'drakon/Golden Toad.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1776, 28, NULL, '10451', 'Golden Lamps', '10451', NULL, NULL, 'drakon/Golden Lamps.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1777, 28, NULL, '10450', 'Epic Treasure', '10450', NULL, NULL, 'drakon/Epic Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1778, 28, NULL, '10449', 'Elephant Treasure', '10449', NULL, NULL, 'drakon/Elephant Treasure.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1779, 28, NULL, '10448', 'Dream Destiny', '10448', NULL, NULL, 'drakon/Dream Destiny.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1780, 28, NULL, '10447', 'Dragon Pearl', '10447', NULL, NULL, 'drakon/Dragon Pearl.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:21', '2024-04-13 19:39:21'),
(1781, 28, NULL, '10446', 'Cobra Queen', '10446', NULL, NULL, 'drakon/Cobra Queen.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1782, 28, NULL, '10445', 'Chinese Wilds', '10445', NULL, NULL, 'drakon/Chinese Wilds.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1783, 28, NULL, '10444', 'Casino Spin', '10444', NULL, NULL, 'drakon/Casino Spin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1784, 28, NULL, '10443', 'Asian Fortune', '10443', NULL, NULL, 'drakon/Asian Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1785, 28, NULL, '10442', 'Amazon Island MegaWays', '10442', NULL, NULL, 'drakon/Amazon Island MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1786, 28, NULL, '10441', 'Ali Babas Luck Power Reels', '10441', NULL, NULL, 'drakon/Ali Babas Luck Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1787, 28, NULL, '10440', 'Ali Babas Luck MegaWays', '10440', NULL, NULL, 'drakon/Ali Babas Luck MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1788, 28, NULL, '10439', 'Ali Babas Luck', '10439', NULL, NULL, 'drakon/Ali Babas Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1789, 28, NULL, '10438', '80s Spins', '10438', NULL, NULL, 'drakon/80s Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1790, 28, NULL, '10437', 'Magic Powers Megaways', '10437', NULL, NULL, 'drakon/Magic Powers Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:22', '2024-04-13 19:39:22'),
(1791, 28, NULL, '10436', 'Knights Of Avalon', '10436', NULL, NULL, 'drakon/Knights Of Avalon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1792, 28, NULL, '10435', 'Red Hot BBQ', '10435', NULL, NULL, 'drakon/Red Hot BBQ.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1793, 28, NULL, '10434', 'Reel Keeper Power ReelT', '10434', NULL, NULL, 'drakon/Reel Keeper Power ReelT.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1794, 28, NULL, '10433', 'Sheep Gone Wild', '10433', NULL, NULL, 'drakon/Sheep Gone Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1795, 28, NULL, '10432', 'Wrigleys World', '10432', NULL, NULL, 'drakon/Wrigleys World.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1796, 28, NULL, '10431', 'Cotton Gang Affair', '10431', NULL, NULL, 'drakon/Cotton Gang Affair.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1797, 28, NULL, '10430', 'Bugsys Bar', '10430', NULL, NULL, 'drakon/Bugsys Bar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1798, 28, NULL, '10429', 'Buffalo Mania Megaways', '10429', NULL, NULL, 'drakon/Buffalo Mania Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1799, 28, NULL, '10428', 'Blobsters Clusterbuster', '10428', NULL, NULL, 'drakon/Blobsters Clusterbuster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:23', '2024-04-13 19:39:23'),
(1800, 28, NULL, '10427', 'Peggy Sweets', '10427', NULL, NULL, 'drakon/Peggy Sweets.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1801, 28, NULL, '10426', 'Ancient Disco', '10426', NULL, NULL, 'drakon/Ancient Disco.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1802, 28, NULL, '10425', 'Blood Suckers Megaways', '10425', NULL, NULL, 'drakon/Blood Suckers Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1803, 28, NULL, '10424', 'Bass Boss', '10424', NULL, NULL, 'drakon/Bass Boss.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1804, 28, NULL, '10423', 'Flaming Fox', '10423', NULL, NULL, 'drakon/Flaming Fox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1805, 28, NULL, '10422', 'Esqueleto Mariachi', '10422', NULL, NULL, 'drakon/Esqueleto Mariachi.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1806, 28, NULL, '10421', 'Emerald Diamond', '10421', NULL, NULL, 'drakon/Emerald Diamond.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1807, 28, NULL, '10420', 'Elven Magic', '10420', NULL, NULL, 'drakon/Elven Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1808, 28, NULL, '10419', 'Eagle Riches', '10419', NULL, NULL, 'drakon/Eagle Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1809, 28, NULL, '10418', 'Dragons Fire Infinireels', '10418', NULL, NULL, 'drakon/Dragons Fire Infinireels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:24', '2024-04-13 19:39:24'),
(1810, 28, NULL, '10417', 'Divine Ways', '10417', NULL, NULL, 'drakon/Divine Ways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1811, 28, NULL, '10416', 'Bombuster', '10416', NULL, NULL, 'drakon/Bombuster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1812, 28, NULL, '10415', 'Blue Diamond', '10415', NULL, NULL, 'drakon/Blue Diamond.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1813, 28, NULL, '10414', 'Ancient Script', '10414', NULL, NULL, 'drakon/Ancient Script.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1814, 28, NULL, '10413', '24 Hour Grand Prix', '10413', NULL, NULL, 'drakon/24 Hour Grand Prix.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1815, 28, NULL, '10412', 'Winter Wonders', '10412', NULL, NULL, 'drakon/Winter Wonders.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1816, 28, NULL, '10411', 'Wild Spartans', '10411', NULL, NULL, 'drakon/Wild Spartans.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1817, 28, NULL, '10410', 'Wild Nords', '10410', NULL, NULL, 'drakon/Wild Nords.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1818, 28, NULL, '10409', 'Wild Fight', '10409', NULL, NULL, 'drakon/Wild Fight.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:25', '2024-04-13 19:39:25'),
(1819, 28, NULL, '10408', 'Wild Elements', '10408', NULL, NULL, 'drakon/Wild Elements.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1820, 28, NULL, '10407', 'Wild Circus', '10407', NULL, NULL, 'drakon/Wild Circus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1821, 28, NULL, '10406', 'Vicky Ventura', '10406', NULL, NULL, 'drakon/Vicky Ventura.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1822, 28, NULL, '10405', 'Totem Lightning Power Reels', '10405', NULL, NULL, 'drakon/Totem Lightning Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1823, 28, NULL, '10404', 'Three Musketeers', '10404', NULL, NULL, 'drakon/Three Musketeers.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1824, 28, NULL, '10403', 'Three Kingdoms', '10403', NULL, NULL, 'drakon/Three Kingdoms.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1825, 28, NULL, '10402', 'The Equalizer', '10402', NULL, NULL, 'drakon/The Equalizer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1826, 28, NULL, '10401', 'Ten Elements', '10401', NULL, NULL, 'drakon/Ten Elements.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1827, 28, NULL, '10400', 'Sumo Spins', '10400', NULL, NULL, 'drakon/Sumo Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1828, 28, NULL, '10399', 'Stage 888', '10399', NULL, NULL, 'drakon/Stage 888.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:26', '2024-04-13 19:39:26'),
(1829, 28, NULL, '10398', 'Spin Town', '10398', NULL, NULL, 'drakon/Spin Town.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1830, 28, NULL, '10397', 'Royal Gems', '10397', NULL, NULL, 'drakon/Royal Gems.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1831, 28, NULL, '10396', 'Rocket Men', '10396', NULL, NULL, 'drakon/Rocket Men.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1832, 28, NULL, '10395', 'Rio Stars', '10395', NULL, NULL, 'drakon/Rio Stars.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1833, 28, NULL, '10394', 'Phoenix', '10394', NULL, NULL, 'drakon/Phoenix.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1834, 28, NULL, '10393', 'Red Diamond', '10393', NULL, NULL, 'drakon/Red Diamond.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1835, 28, NULL, '10392', 'Reactor', '10392', NULL, NULL, 'drakon/Reactor.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1836, 28, NULL, '10391', 'Puss N Boots', '10391', NULL, NULL, 'drakon/Puss N Boots.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1837, 28, NULL, '10390', 'Piggy Pirates', '10390', NULL, NULL, 'drakon/Piggy Pirates.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1838, 28, NULL, '10389', 'Ocean Fortune', '10389', NULL, NULL, 'drakon/Ocean Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:27', '2024-04-13 19:39:27'),
(1839, 28, NULL, '10388', 'Mystic Wheel', '10388', NULL, NULL, 'drakon/Mystic Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1840, 28, NULL, '10387', 'Mystery Reels Power Reels', '10387', NULL, NULL, 'drakon/Mystery Reels Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1841, 28, NULL, '10386', 'Midas Gold', '10386', NULL, NULL, 'drakon/Midas Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1842, 28, NULL, '10385', 'Lucky Oktoberfest', '10385', NULL, NULL, 'drakon/Lucky Oktoberfest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1843, 28, NULL, '10384', 'Lucky Fridays', '10384', NULL, NULL, 'drakon/Lucky Fridays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1844, 28, NULL, '10383', 'Lucky Easter', '10383', NULL, NULL, 'drakon/Lucky Easter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1845, 28, NULL, '10382', 'Lion Dance', '10382', NULL, NULL, 'drakon/Lion Dance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1846, 28, NULL, '10381', 'Legendary Excalibur', '10381', NULL, NULL, 'drakon/Legendary Excalibur.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1847, 28, NULL, '10380', 'Laser Fruit', '10380', NULL, NULL, 'drakon/Laser Fruit.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:28', '2024-04-13 19:39:28'),
(1848, 28, NULL, '10379', 'Jester Spins', '10379', NULL, NULL, 'drakon/Jester Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1849, 28, NULL, '10378', 'Jade Charms', '10378', NULL, NULL, 'drakon/Jade Charms.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1850, 28, NULL, '10377', 'Jackpot Quest', '10377', NULL, NULL, 'drakon/Jackpot Quest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1851, 28, NULL, '10376', 'Imperial Palace', '10376', NULL, NULL, 'drakon/Imperial Palace.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1852, 28, NULL, '10375', 'Gold Star', '10375', NULL, NULL, 'drakon/Gold Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1853, 28, NULL, '10374', 'Golden Lotus', '10374', NULL, NULL, 'drakon/Golden Lotus.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1854, 28, NULL, '10373', 'Gemtastic', '10373', NULL, NULL, 'drakon/Gemtastic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1855, 28, NULL, '10372', 'Fruit Snap', '10372', NULL, NULL, 'drakon/Fruit Snap.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1856, 28, NULL, '10371', 'Fruit Blox', '10371', NULL, NULL, 'drakon/Fruit Blox.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1857, 28, NULL, '10370', 'Fortune Fest', '10370', NULL, NULL, 'drakon/Fortune Fest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:29', '2024-04-13 19:39:29'),
(1858, 28, NULL, '10369', 'Fortune Charm', '10369', NULL, NULL, 'drakon/Fortune Charm.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1859, 28, NULL, '10368', 'Yucatans Mystery', '10368', NULL, NULL, 'drakon/Yucatans Mystery.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1860, 28, NULL, '10367', 'Win Escalator', '10367', NULL, NULL, 'drakon/Win Escalator.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1861, 28, NULL, '10366', 'Wild Wild Chest', '10366', NULL, NULL, 'drakon/Wild Wild Chest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1862, 28, NULL, '10365', 'Wild OClock', '10365', NULL, NULL, 'drakon/Wild OClock.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1863, 28, NULL, '10364', 'Wild Cats Multiline', '10364', NULL, NULL, 'drakon/Wild Cats Multiline.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1864, 28, NULL, '10363', 'Well Of Wishes', '10363', NULL, NULL, 'drakon/Well Of Wishes.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1865, 28, NULL, '10362', 'Vault of Anubis', '10362', NULL, NULL, 'drakon/Vault of Anubis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1866, 28, NULL, '10361', 'Vault Cracker', '10361', NULL, NULL, 'drakon/Vault Cracker.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:30', '2024-04-13 19:39:30'),
(1867, 28, NULL, '10360', 'Totem Lightning', '10360', NULL, NULL, 'drakon/Totem Lightning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1868, 28, NULL, '10359', 'Tiki Fruits', '10359', NULL, NULL, 'drakon/Tiki Fruits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1869, 28, NULL, '10358', 'Thors Lightning', '10358', NULL, NULL, 'drakon/Thors Lightning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1870, 28, NULL, '10357', 'The Wild Hatter', '10357', NULL, NULL, 'drakon/The Wild Hatter.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1871, 28, NULL, '10356', 'The Greatest Train Robbery', '10356', NULL, NULL, 'drakon/The Greatest Train Robbery.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1872, 28, NULL, '10355', 'Sylvan Spirits', '10355', NULL, NULL, 'drakon/Sylvan Spirits.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1873, 28, NULL, '10354', 'Snow Wild And The 7 Features', '10354', NULL, NULL, 'drakon/Snow Wild And The 7 Features.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1874, 28, NULL, '10353', 'Robin Hoods Wild Forest', '10353', NULL, NULL, 'drakon/Robin Hoods Wild Forest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1875, 28, NULL, '10352', 'Reel Heist', '10352', NULL, NULL, 'drakon/Reel Heist.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:31', '2024-04-13 19:39:31'),
(1876, 28, NULL, '10351', 'Persian Fortune', '10351', NULL, NULL, 'drakon/Persian Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1877, 28, NULL, '10350', 'Path of Destiny', '10350', NULL, NULL, 'drakon/Path of Destiny.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1878, 28, NULL, '10349', 'Ninja Ways', '10349', NULL, NULL, 'drakon/Ninja Ways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1879, 28, NULL, '10348', 'Mystery Reels Megaways', '10348', NULL, NULL, 'drakon/Mystery Reels Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1880, 28, NULL, '10347', 'Multiplier Riches', '10347', NULL, NULL, 'drakon/Multiplier Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1881, 28, NULL, '10346', 'Mega Rise', '10346', NULL, NULL, 'drakon/Mega Rise.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1882, 28, NULL, '10345', 'Mega Jade', '10345', NULL, NULL, 'drakon/Mega Jade.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1883, 28, NULL, '10344', 'Mega Dragon', '10344', NULL, NULL, 'drakon/Mega Dragon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1884, 28, NULL, '10343', 'Mayan Gods', '10343', NULL, NULL, 'drakon/Mayan Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:32', '2024-04-13 19:39:32'),
(1885, 28, NULL, '10342', 'Masquerade', '10342', NULL, NULL, 'drakon/Masquerade.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1886, 28, NULL, '10341', 'Lucky Wizard', '10341', NULL, NULL, 'drakon/Lucky Wizard.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1887, 28, NULL, '10340', 'Lucky Valentine', '10340', NULL, NULL, 'drakon/Lucky Valentine.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1888, 28, NULL, '10339', 'Lucky Little Devil', '10339', NULL, NULL, 'drakon/Lucky Little Devil.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1889, 28, NULL, '10338', 'Lucky Halloween', '10338', NULL, NULL, 'drakon/Lucky Halloween.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1890, 28, NULL, '10337', 'Legend of Athena', '10337', NULL, NULL, 'drakon/Legend of Athena.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1891, 28, NULL, '10336', 'Jingle Bells Power Reels', '10336', NULL, NULL, 'drakon/Jingle Bells Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1892, 28, NULL, '10335', 'Jewel Scarabs', '10335', NULL, NULL, 'drakon/Jewel Scarabs.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1893, 28, NULL, '10334', 'Hoard of Poseidon', '10334', NULL, NULL, 'drakon/Hoard of Poseidon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1894, 28, NULL, '10333', 'Grand Wheel', '10333', NULL, NULL, 'drakon/Grand Wheel.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:33', '2024-04-13 19:39:33'),
(1895, 28, NULL, '10332', 'Golden Tsar', '10332', NULL, NULL, 'drakon/Golden Tsar.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1896, 28, NULL, '10331', 'Golden Leprechaun Megaways', '10331', NULL, NULL, 'drakon/Golden Leprechaun Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1897, 28, NULL, '10330', 'Golden Cryptex', '10330', NULL, NULL, 'drakon/Golden Cryptex.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1898, 28, NULL, '10329', 'Gems Gone Wild Power Reels', '10329', NULL, NULL, 'drakon/Gems Gone Wild Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1899, 28, NULL, '10328', 'Gems Gone Wild', '10328', NULL, NULL, 'drakon/Gems Gone Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1900, 28, NULL, '10327', 'Five Star Power Reels', '10327', NULL, NULL, 'drakon/Five Star Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1901, 28, NULL, '10326', 'Dragons Luck Megaways', '10326', NULL, NULL, 'drakon/Dragons Luck Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1902, 28, NULL, '10325', 'Dice Dice Dice', '10325', NULL, NULL, 'drakon/Dice Dice Dice.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1903, 28, NULL, '10324', 'Devils Number', '10324', NULL, NULL, 'drakon/Devils Number.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1904, 28, NULL, '10323', 'Da Vincis Mystery', '10323', NULL, NULL, 'drakon/Da Vincis Mystery.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:34', '2024-04-13 19:39:34'),
(1905, 28, NULL, '10322', 'Crystal Mirror', '10322', NULL, NULL, 'drakon/Crystal Mirror.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1906, 28, NULL, '10321', 'Crazy Genie', '10321', NULL, NULL, 'drakon/Crazy Genie.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1907, 28, NULL, '10320', 'Clash of the Beasts', '10320', NULL, NULL, 'drakon/Clash of the Beasts.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1908, 28, NULL, '10319', 'Cirque de la Fortune', '10319', NULL, NULL, 'drakon/Cirque de la Fortune.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1909, 28, NULL, '10318', 'Cinderellas Ball', '10318', NULL, NULL, 'drakon/Cinderellas Ball.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1910, 28, NULL, '10317', 'Aztec Spins', '10317', NULL, NULL, 'drakon/Aztec Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1911, 28, NULL, '10316', 'Atlantis', '10316', NULL, NULL, 'drakon/Atlantis.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1912, 28, NULL, '10315', 'Arcade Bomb', '10315', NULL, NULL, 'drakon/Arcade Bomb.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1913, 28, NULL, '10314', 'Agent Royale', '10314', NULL, NULL, 'drakon/Agent Royale.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1914, 28, NULL, '10313', '5 Families', '10313', NULL, NULL, 'drakon/5 Families.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:35', '2024-04-13 19:39:35'),
(1915, 28, NULL, '10312', '4Squad', '10312', NULL, NULL, 'drakon/4Squad.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1916, 28, NULL, '10311', 'Zeus Lightning Power Reels', '10311', NULL, NULL, 'drakon/Zeus Lightning Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1917, 28, NULL, '10310', 'Wings of Ra', '10310', NULL, NULL, 'drakon/Wings of Ra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1918, 28, NULL, '10309', 'War Of Gods', '10309', NULL, NULL, 'drakon/War Of Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1919, 28, NULL, '10308', 'Trillionaire', '10308', NULL, NULL, 'drakon/Trillionaire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1920, 28, NULL, '10307', 'Treasure Mine', '10307', NULL, NULL, 'drakon/Treasure Mine.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1921, 28, NULL, '10306', 'Thors Vengeance', '10306', NULL, NULL, 'drakon/Thors Vengeance.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1922, 28, NULL, '10305', 'Regal Streak', '10305', NULL, NULL, 'drakon/Regal Streak.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1923, 28, NULL, '10304', 'Regal Beasts', '10304', NULL, NULL, 'drakon/Regal Beasts.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:36', '2024-04-13 19:39:36'),
(1924, 28, NULL, '10303', 'Reel King Mega', '10303', NULL, NULL, 'drakon/Reel King Mega.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1925, 28, NULL, '10302', 'Reel Keeper', '10302', NULL, NULL, 'drakon/Reel Keeper.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1926, 28, NULL, '10301', 'Rainbow Jackpots Power Lines', '10301', NULL, NULL, 'drakon/Rainbow Jackpots Power Lines.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1927, 28, NULL, '10299', 'Mystery Reels', '10299', NULL, NULL, 'drakon/Mystery Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1928, 28, NULL, '10298', 'Jingle Bells', '10298', NULL, NULL, 'drakon/Jingle Bells.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1929, 28, NULL, '10297', 'Jack in a Pot', '10297', NULL, NULL, 'drakon/Jack in a Pot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1930, 28, NULL, '10296', 'Five Star', '10296', NULL, NULL, 'drakon/Five Star.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1931, 28, NULL, '10295', 'Dynamite Riches', '10295', NULL, NULL, 'drakon/Dynamite Riches.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1932, 28, NULL, '10294', 'Dragons Fire Megaways', '10294', NULL, NULL, 'drakon/Dragons Fire Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1933, 28, NULL, '10293', 'Diamond Blitz', '10293', NULL, NULL, 'drakon/Diamond Blitz.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:37', '2024-04-13 19:39:37'),
(1934, 28, NULL, '10292', 'Cash Volt', '10292', NULL, NULL, 'drakon/Cash Volt.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1935, 28, NULL, '10291', 'Cash Ultimate', '10291', NULL, NULL, 'drakon/Cash Ultimate.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1936, 28, NULL, '10290', 'Bounty Raid', '10290', NULL, NULL, 'drakon/Bounty Raid.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1937, 28, NULL, '10289', 'Betty, Boris and Boo', '10289', NULL, NULL, 'drakon/Betty, Boris and Boo.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1938, 28, NULL, '10288', 'Aurum Codex', '10288', NULL, NULL, 'drakon/Aurum Codex.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1939, 28, NULL, '10287', 'Ancients Blessing', '10287', NULL, NULL, 'drakon/Ancients Blessing.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1940, 28, NULL, '10286', '777 Strike', '10286', NULL, NULL, 'drakon/777 Strike.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1941, 28, NULL, '10285', 'Diamond Royale', '10285', NULL, NULL, 'drakon/Diamond Royale.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1942, 28, NULL, '10283', 'Mayhem', '10283', NULL, NULL, 'drakon/Mayhem.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1943, 28, NULL, '10282', 'Bulls Run Wild', '10282', NULL, NULL, 'drakon/Bulls Run Wild.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:38', '2024-04-13 19:39:38'),
(1944, 28, NULL, '10281', 'Dragons Clusterbuster', '10281', NULL, NULL, 'drakon/Dragons Clusterbuster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1945, 28, NULL, '10280', 'Zillard King', '10280', NULL, NULL, 'drakon/Zillard King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1946, 28, NULL, '10279', 'Genie Nights', '10279', NULL, NULL, 'drakon/Genie Nights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1947, 28, NULL, '10278', 'Doggy Riches Megaways', '10278', NULL, NULL, 'drakon/Doggy Riches Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1948, 28, NULL, '10277', 'Wild Tundra', '10277', NULL, NULL, 'drakon/Wild Tundra.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1949, 28, NULL, '10276', 'Last Chance Saloon', '10276', NULL, NULL, 'drakon/Last Chance Saloon.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1950, 28, NULL, '10275', 'Fa Fa Babies', '10275', NULL, NULL, 'drakon/Fa Fa Babies.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1951, 28, NULL, '10274', 'Get the Gold INFINIREELS', '10274', NULL, NULL, 'drakon/Get the Gold INFINIREELS.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1952, 28, NULL, '10273', 'Hustling', '10273', NULL, NULL, 'drakon/Hustling.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:39', '2024-04-13 19:39:39'),
(1953, 28, NULL, '10272', 'Blazing Clusters', '10272', NULL, NULL, 'drakon/Blazing Clusters.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1954, 28, NULL, '10271', 'Jingle Ways Megaways', '10271', NULL, NULL, 'drakon/Jingle Ways Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1955, 28, NULL, '10270', '1942 Sky Warrior', '10270', NULL, NULL, 'drakon/1942 Sky Warrior.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1956, 28, NULL, '10269', 'Dracula Awakening', '10269', NULL, NULL, 'drakon/Dracula Awakening.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1957, 28, NULL, '10268', 'Hot Hot Chilli Pot', '10268', NULL, NULL, 'drakon/Hot Hot Chilli Pot.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1958, 28, NULL, '10267', 'Wild Expedition', '10267', NULL, NULL, 'drakon/Wild Expedition.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1959, 28, NULL, '10266', 'Hammer Gods', '10266', NULL, NULL, 'drakon/Hammer Gods.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1960, 28, NULL, '10265', 'Beriched', '10265', NULL, NULL, 'drakon/Beriched.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1961, 28, NULL, '10264', 'Fortune House Power Reels', '10264', NULL, NULL, 'drakon/Fortune House Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1962, 28, NULL, '10263', 'Well of Wilds Megaways', '10263', NULL, NULL, 'drakon/Well of Wilds Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:40', '2024-04-13 19:39:40'),
(1963, 28, NULL, '10262', 'Dragon King: Legend of the Seas', '10262', NULL, NULL, 'drakon/Dragon King: Legend of the Seas.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1964, 28, NULL, '10261', 'Age Of Akkadia', '10261', NULL, NULL, 'drakon/Age Of Akkadia.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1965, 28, NULL, '10260', 'Forever 7s', '10260', NULL, NULL, 'drakon/Forever 7s.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1966, 28, NULL, '10259', 'Dynamite Riches MW', '10259', NULL, NULL, 'drakon/Dynamite Riches MW.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1967, 28, NULL, '10258', 'Shah Mat', '10258', NULL, NULL, 'drakon/Shah Mat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1968, 28, NULL, '10257', 'Riddle of the sphinx', '10257', NULL, NULL, 'drakon/Riddle of the sphinx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1969, 28, NULL, '10256', 'NFT Megaways', '10256', NULL, NULL, 'drakon/NFT Megaways.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1970, 28, NULL, '10255', 'Treasure Mine Power Reels', '10255', NULL, NULL, 'drakon/Treasure Mine Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1971, 28, NULL, '10254', 'God of Wealth', '10254', NULL, NULL, 'drakon/God of Wealth.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1972, 28, NULL, '10253', 'Mega Pyramid', '10253', NULL, NULL, 'drakon/Mega Pyramid.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:41', '2024-04-13 19:39:41'),
(1973, 28, NULL, '10252', 'Rainbow Jackpots', '10252', NULL, NULL, 'drakon/Rainbow Jackpots.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1974, 28, NULL, '10251', 'RAs Legend', '10251', NULL, NULL, 'drakon/RAs Legend.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1975, 28, NULL, '10250', 'Golden Offer', '10250', NULL, NULL, 'drakon/Golden Offer.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1976, 28, NULL, '10249', 'Pirates Plenty', '10249', NULL, NULL, 'drakon/Pirates Plenty.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1977, 28, NULL, '10248', 'Chinese Treasures', '10248', NULL, NULL, 'drakon/Chinese Treasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1978, 28, NULL, '10247', 'Phoenix Fire Power Reels', '10247', NULL, NULL, 'drakon/Phoenix Fire Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1979, 28, NULL, '10246', 'Golden Temple', '10246', NULL, NULL, 'drakon/Golden Temple.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1980, 28, NULL, '10245', 'Epic Journey', '10245', NULL, NULL, 'drakon/Epic Journey.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1981, 28, NULL, '10244', '10001 Nights', '10244', NULL, NULL, 'drakon/10001 Nights.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:42', '2024-04-13 19:39:42'),
(1982, 28, NULL, '10243', 'Dragons Luck Deluxe', '10243', NULL, NULL, 'drakon/Dragons Luck Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1983, 28, NULL, '10242', 'Pirates Plenty Battle for Gold', '10242', NULL, NULL, 'drakon/Pirates Plenty Battle for Gold.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1984, 28, NULL, '10241', 'Lucky Fortune Cat', '10241', NULL, NULL, 'drakon/Lucky Fortune Cat.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1985, 28, NULL, '10240', 'Magic Gate', '10240', NULL, NULL, 'drakon/Magic Gate.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1986, 28, NULL, '10239', 'Dragons Fire', '10239', NULL, NULL, 'drakon/Dragons Fire.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1987, 28, NULL, '10238', 'Fortune House', '10238', NULL, NULL, 'drakon/Fortune House.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1988, 28, NULL, '10237', 'Dragons Luck Power Reels', '10237', NULL, NULL, 'drakon/Dragons Luck Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1989, 28, NULL, '10235', 'Dragons Luck', '10235', NULL, NULL, 'drakon/Dragons Luck.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1990, 28, NULL, '10234', 'Lions Hoard', '10234', NULL, NULL, 'drakon/Lions Hoard.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1991, 28, NULL, '10233', 'The Wisecracker Lightning', '10233', NULL, NULL, 'drakon/The Wisecracker Lightning.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:43', '2024-04-13 19:39:43'),
(1992, 28, NULL, '10232', 'Wild Hot Chilli Reels', '10232', NULL, NULL, 'drakon/Wild Hot Chilli Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1993, 28, NULL, '10231', 'Neon Links', '10231', NULL, NULL, 'drakon/Neon Links.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1994, 28, NULL, '10230', 'What The Fox MegaWays', '10230', NULL, NULL, 'drakon/What The Fox MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1995, 28, NULL, '10229', 'Tiki Fruits Totem Frenzy', '10229', NULL, NULL, 'drakon/Tiki Fruits Totem Frenzy.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1996, 28, NULL, '10228', 'Reptizillions Power Reels', '10228', NULL, NULL, 'drakon/Reptizillions Power Reels.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1997, 28, NULL, '10227', 'Punto Banco', '10227', NULL, NULL, 'drakon/Punto Banco.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1998, 28, NULL, '10226', 'Primate King', '10226', NULL, NULL, 'drakon/Primate King.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(1999, 28, NULL, '10225', 'Pirates Plenty MegaWays', '10225', NULL, NULL, 'drakon/Pirates Plenty MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(2000, 28, NULL, '10224', 'Night Roller', '10224', NULL, NULL, 'drakon/Night Roller.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(2001, 28, NULL, '10223', 'Mystic Staxx', '10223', NULL, NULL, 'drakon/Mystic Staxx.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:44', '2024-04-13 19:39:44'),
(2002, 28, NULL, '10221', 'Harle Coin', '10221', NULL, NULL, 'drakon/Harle Coin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2003, 28, NULL, '10220', 'European Roulette', '10220', NULL, NULL, 'drakon/European Roulette.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2004, 28, NULL, '10219', 'Classic Blackjack', '10219', NULL, NULL, 'drakon/Classic Blackjack.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2005, 28, NULL, '10218', 'Cash Or Nothing', '10218', NULL, NULL, 'drakon/Cash Or Nothing.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2006, 28, NULL, '10217', 'Viral Spiral', '10217', NULL, NULL, 'drakon/Viral Spiral.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2007, 28, NULL, '10216', 'Transylvania: Night of Blood', '10216', NULL, NULL, 'drakon/Transylvania: Night of Blood.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2008, 28, NULL, '10215', 'Happy Apples', '10215', NULL, NULL, 'drakon/Happy Apples.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2009, 28, NULL, '10214', 'Egypt MegaWays', '10214', NULL, NULL, 'drakon/Egypt MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2010, 28, NULL, '10213', 'Leprechauns Magic', '10213', NULL, NULL, 'drakon/Leprechauns Magic.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2011, 28, NULL, '10212', 'Alexander The Great World Conqueror', '10212', NULL, NULL, 'drakon/Alexander The Great World Conqueror.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2012, 28, NULL, '10211', 'Wolfkin', '10211', NULL, NULL, 'drakon/Wolfkin.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:45', '2024-04-13 19:39:45'),
(2013, 28, NULL, '10210', 'Cai Shen 168', '10210', NULL, NULL, 'drakon/Cai Shen 168.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2014, 28, NULL, '10209', 'Pinatas & Ponies', '10209', NULL, NULL, 'drakon/Pinatas & Ponies.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2015, 28, NULL, '10208', 'Good luck Cluster Buster', '10208', NULL, NULL, 'drakon/Good luck Cluster Buster.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2016, 28, NULL, '10207', 'Santa Spins', '10207', NULL, NULL, 'drakon/Santa Spins.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2017, 28, NULL, '10206', 'Cake and Ice Cream', '10206', NULL, NULL, 'drakon/Cake and Ice Cream.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2018, 28, NULL, '10205', 'In the Rabbit Hole', '10205', NULL, NULL, 'drakon/In the Rabbit Hole.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2019, 28, NULL, '10204', 'Athens MegaWays', '10204', NULL, NULL, 'drakon/Athens MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2020, 28, NULL, '10203', 'Shadow Society', '10203', NULL, NULL, 'drakon/Shadow Society.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2021, 28, NULL, '10202', 'Stolen Treasures', '10202', NULL, NULL, 'drakon/Stolen Treasures.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:46', '2024-04-13 19:39:46'),
(2022, 28, NULL, '10201', 'Mystery Reels Deluxe', '10201', NULL, NULL, 'drakon/Mystery Reels Deluxe.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2023, 28, NULL, '10200', 'Tricks and Treats', '10200', NULL, NULL, 'drakon/Tricks and Treats.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2024, 28, NULL, '10199', 'RockNLock', '10199', NULL, NULL, 'drakon/RockNLock.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2025, 28, NULL, '10198', 'Gonzitas Quest', '10198', NULL, NULL, 'drakon/Gonzitas Quest.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2026, 28, NULL, '10197', '10001 Nights MegaWays', '10197', NULL, NULL, 'drakon/10001 Nights MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2027, 28, NULL, '10196', 'Apache Way', '10196', NULL, NULL, 'drakon/Apache Way.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47'),
(2028, 28, NULL, '10195', 'Risque MegaWays', '10195', NULL, NULL, 'drakon/Risque MegaWays.jpg', '1', 'html5', 0, 0, 0, 0, 0, 95, 'drakon', 0, 0, 0, '2024-04-13 19:39:47', '2024-04-13 19:39:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `drakon_agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drakon_agent_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drakon_agent_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `drakon_agent_code`, `drakon_agent_token`, `drakon_agent_secret`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '2023-11-30 15:03:08', '2024-04-13 19:55:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_production` tinyint DEFAULT '0',
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_webhook_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 18:05:51', '2024-03-31 12:55:10', NULL, NULL, NULL, NULL, NULL, NULL, 'https://si5n56mrnjzvt5gr2f536ildr40sqzke.lambda-url.sa-east-1.on.aws/', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint UNSIGNED NOT NULL,
  `prizes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '2024-01-11 17:52:59', '2024-01-14 14:07:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `possibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_runs`
--

INSERT INTO `ggds_spin_runs` (`id`, `key`, `nonce`, `possibilities`, `prize`, `created_at`, `updated_at`) VALUES
(1, 'bccec5b62ab37e996470f8bb36ff83ea127a73f17f31cba275453f5ed7b24c34', '592f4304-4837-4a81-8f27-6c3ac412c7dc', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2000}', '2024-01-12 12:49:28', '2024-01-12 12:49:28'),
(2, '93f0c422ecb15337d358cca690529c9db7d9b7a52acc0727092b938ade4e1c9b', 'eff5d8c3-475b-4994-a49d-778cf06aebf4', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":25}', '2024-01-12 12:51:01', '2024-01-12 12:51:01'),
(3, 'c7f0b2cc871954aa3a03f680969f029034d111e5550ee0769389fefe3fd6f9fd', '203098ef-3347-4938-813e-91be82891cbc', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":105}', '2024-01-12 12:51:34', '2024-01-12 12:51:34'),
(4, '5b4059c88237be6a78ff1fb35e427fd1e4e1a30184ced8d3e4ed9044a0939663', '65cf85de-3dee-48f4-a1d3-d26a8f89ba16', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2000}', '2024-01-12 13:56:56', '2024-01-12 13:56:56'),
(5, '0901814bf6598c5c7e1072abcc8fa16290dff49b3c2aa44a9346cee34444f98f', '79519214-2125-4ed5-a672-45973c8af5eb', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2500}', '2024-01-12 13:57:47', '2024-01-12 13:57:47'),
(6, '7b5642d63b3081907a3b7489794ba74f3052fe490095e7354d98570f6c4e5a6c', 'e5b728db-07e3-4531-910b-7c85f1555973', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":9.79}', '2024-01-12 15:51:25', '2024-01-12 15:51:25'),
(7, '001f8f60f30e431a9f28d39a4db43e0b3e03d0379816fe04ff5007aca5d0a14e', '4ab2acba-57f3-46f4-9dc6-c32e993fb995', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":1500}', '2024-01-12 16:13:25', '2024-01-12 16:13:25'),
(8, '8a801a13e786df312b4d3a2a023b5472cfca776b2b9524af3c12fac4e00bb935', 'e050a5ad-ab8a-4922-95cc-6fae7f62be99', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":2500}', '2024-01-12 16:40:12', '2024-01-12 16:40:12'),
(9, '3432d11c1efd935afcf84fba6c3466c3c98aee06c63163368a18b7d07749ea66', 'de330a3f-b3d0-41ef-94ae-2cee7686f341', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":15}', '2024-01-12 17:01:33', '2024-01-12 17:01:33'),
(10, 'cf741c182225f003f16fb815517a3d94d9cde7e16d767766864c7536ae51e101', 'ec3a409c-159f-4723-848c-7a45fe838c65', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":105}', '2024-01-12 17:26:04', '2024-01-12 17:26:04'),
(11, 'f7a528bd425441c09093c146b4456acc0391b2aaf6af26ed7282dd8b153411df', 'b9e39a17-328e-4730-979f-bd37714552f1', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":5.02}', '2024-01-12 22:02:21', '2024-01-12 22:02:21'),
(12, '7ec6e7dea1750162832a02bbcb986e3a77e4ea3ece5110b0c8c746e9ab586d27', '876d2835-b5c5-4c2f-997d-007fa566d356', '[{\"currency\":\"brl\",\"value\":5.02},{\"currency\":\"brl\",\"value\":9.79},{\"currency\":\"brl\",\"value\":25},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":40},{\"currency\":\"brl\",\"value\":50},{\"currency\":\"brl\",\"value\":90},{\"currency\":\"brl\",\"value\":105},{\"currency\":\"brl\",\"value\":140},{\"currency\":\"brl\",\"value\":15},{\"currency\":\"brl\",\"value\":30},{\"currency\":\"brl\",\"value\":500},{\"currency\":\"brl\",\"value\":980},{\"currency\":\"brl\",\"value\":1500},{\"currency\":\"brl\",\"value\":2000},{\"currency\":\"brl\",\"value\":2500}]', '{\"currency\":\"brl\",\"value\":980}', '2024-01-13 10:40:26', '2024-01-13 10:40:26'),
(13, '7980558afa73f95c09d898c3f40a488de06097822831729b21659e6e330d6f92', '19962ee0-52f1-45dd-b858-4003deb2eb43', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":30}', '2024-01-15 16:28:00', '2024-01-15 16:28:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aggregator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `liked_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67),
(100, '2024_03_08_201557_add_imperium_games_to_games_keys_table', 68),
(101, '2024_04_12_201402_add_hash_to_transactions_table', 69);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `challenge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `challenge_total` bigint NOT NULL DEFAULT '1',
  `challenge_currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_gameid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mission_id` int UNSIGNED NOT NULL,
  `rounds` bigint DEFAULT '0',
  `rewards` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 39);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `providers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refunded` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `round_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 13:23:45', '2023-10-12 15:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 13:23:56', '2023-10-12 15:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 13:25:06', '2023-10-12 15:11:10'),
(4, 'admin-view', 'web', '2023-10-12 14:56:35', '2023-10-12 14:56:35'),
(5, 'admin-create', 'web', '2023-10-12 15:56:02', '2023-10-12 15:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 15:56:27', '2023-10-12 15:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 15:56:55', '2023-10-12 15:56:55'),
(8, 'category-view', 'web', '2023-10-12 16:01:31', '2023-10-12 16:01:31'),
(9, 'category-create', 'web', '2023-10-12 16:01:46', '2023-10-12 16:01:46'),
(10, 'category-edit', 'web', '2023-10-12 16:01:59', '2023-10-12 16:01:59'),
(11, 'category-delete', 'web', '2023-10-12 16:02:09', '2023-10-12 16:02:09'),
(12, 'game-view', 'web', '2023-10-12 16:02:27', '2023-10-12 16:02:27'),
(13, 'game-create', 'web', '2023-10-12 16:02:36', '2023-10-12 16:02:36'),
(14, 'game-edit', 'web', '2023-10-12 16:02:44', '2023-10-12 16:02:44'),
(15, 'game-delete', 'web', '2023-10-12 16:02:54', '2023-10-12 16:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 16:05:49', '2023-10-12 16:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 16:06:01', '2023-10-12 16:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 16:06:11', '2023-10-12 16:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 16:06:18', '2023-10-12 16:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 16:06:44', '2023-10-12 16:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 16:06:56', '2023-10-12 16:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 16:07:05', '2023-10-12 16:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 16:08:00', '2023-10-12 16:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 16:08:11', '2023-10-12 16:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 16:09:31', '2023-10-12 16:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 16:09:40', '2023-10-12 16:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 16:09:51', '2023-10-12 16:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 16:10:00', '2023-10-12 16:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 16:10:09', '2023-10-12 16:10:09'),
(30, 'order-view', 'web', '2023-10-12 16:12:36', '2023-10-12 16:12:36'),
(31, 'order-create', 'web', '2023-10-12 16:12:47', '2023-10-12 16:12:47'),
(32, 'order-edit', 'web', '2023-10-12 16:12:56', '2023-10-12 16:12:56'),
(33, 'order-update', 'web', '2023-10-12 16:13:06', '2023-10-12 16:13:06'),
(34, 'order-delete', 'web', '2023-10-12 16:13:19', '2023-10-12 16:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 17:26:06', '2023-10-12 17:26:06'),
(36, 'setting-view', 'web', '2023-10-12 18:25:46', '2023-10-12 18:25:46'),
(37, 'setting-create', 'web', '2023-10-12 18:25:57', '2023-10-12 18:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 18:26:06', '2023-10-12 18:26:06'),
(39, 'setting-update', 'web', '2023-10-12 18:26:19', '2023-10-12 18:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 18:26:33', '2023-10-12 18:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `rtp` bigint DEFAULT '90',
  `views` bigint DEFAULT '1',
  `distribution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(1, '', 'Pragmatic', 'Pragmatic', 1, 98, 1, 'drakon', '2024-04-13 15:30:48', '2024-04-13 15:30:48'),
(2, '', 'Firekirin', 'Firekirin', 1, 98, 1, 'drakon', '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(3, '', 'Amatic', 'Amatic', 1, 98, 1, 'drakon', '2024-04-13 15:30:55', '2024-04-13 15:30:55'),
(4, '', 'Scientific Games', 'Scientific Games', 1, 98, 1, 'drakon', '2024-04-13 15:30:56', '2024-04-13 15:30:56'),
(5, '', 'Rubyplay', 'Rubyplay', 1, 98, 1, 'drakon', '2024-04-13 15:30:59', '2024-04-13 15:30:59'),
(6, '', 'Fish', 'Fish', 1, 98, 1, 'drakon', '2024-04-13 15:31:02', '2024-04-13 15:31:02'),
(7, '', 'novomatic', 'novomatic', 1, 98, 1, 'drakon', '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(8, '', 'aristocrat', 'aristocrat', 1, 98, 1, 'drakon', '2024-04-13 15:31:03', '2024-04-13 15:31:03'),
(9, '', 'apollo', 'apollo', 1, 98, 1, 'drakon', '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(10, '', 'playngo', 'playngo', 1, 98, 1, 'drakon', '2024-04-13 15:31:05', '2024-04-13 15:31:05'),
(11, '', 'kajot', 'kajot', 1, 98, 1, 'drakon', '2024-04-13 15:31:08', '2024-04-13 15:31:08'),
(12, '', 'microgaming', 'microgaming', 1, 98, 1, 'drakon', '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(13, '', 'ainsworth', 'ainsworth', 1, 98, 1, 'drakon', '2024-04-13 15:31:21', '2024-04-13 15:31:21'),
(14, '', 'quickspin', 'quickspin', 1, 98, 1, 'drakon', '2024-04-13 15:31:22', '2024-04-13 15:31:22'),
(15, '', 'yggdrasil', 'yggdrasil', 1, 98, 1, 'drakon', '2024-04-13 15:31:26', '2024-04-13 15:31:26'),
(16, '', 'NetEnt', 'NetEnt', 1, 98, 1, 'drakon', '2024-04-13 15:31:33', '2024-04-13 15:31:33'),
(17, '', 'habanero', 'habanero', 1, 98, 1, 'drakon', '2024-04-13 15:31:40', '2024-04-13 15:31:40'),
(18, '', 'igt', 'igt', 1, 98, 1, 'drakon', '2024-04-13 15:31:43', '2024-04-13 15:31:43'),
(19, '', 'igrosoft', 'igrosoft', 1, 98, 1, 'drakon', '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(20, '', 'apex', 'apex', 1, 98, 1, 'drakon', '2024-04-13 15:31:48', '2024-04-13 15:31:48'),
(21, '', 'merkur', 'merkur', 1, 98, 1, 'drakon', '2024-04-13 15:31:53', '2024-04-13 15:31:53'),
(22, '', 'wazdan', 'wazdan', 1, 98, 1, 'drakon', '2024-04-13 15:31:55', '2024-04-13 15:31:55'),
(23, '', 'egt', 'egt', 1, 98, 1, 'drakon', '2024-04-13 15:32:00', '2024-04-13 15:32:00'),
(24, '', 'spribe', 'spribe', 1, 98, 1, 'drakon', '2024-04-13 15:53:51', '2024-04-13 15:53:51'),
(25, '', 'pgsoft', 'pgsoft', 1, 98, 1, 'drakon', '2024-04-13 15:53:52', '2024-04-13 15:53:52'),
(26, '', 'galaxsys', 'galaxsys', 1, 98, 1, 'drakon', '2024-04-13 17:35:06', '2024-04-13 17:35:06'),
(27, '', 'evolution', 'evolution', 1, 98, 1, 'drakon', '2024-04-13 17:35:10', '2024-04-13 17:35:10'),
(28, '', 'red_tiger', 'red_tiger', 1, 98, 1, 'drakon', '2024-04-13 19:39:19', '2024-04-13 19:39:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 13:20:41', '2023-10-12 13:20:41'),
(2, 'afiliado', 'web', '2023-10-12 13:21:08', '2023-10-12 13:21:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `software_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_white` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_black` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint DEFAULT '20',
  `ngr_percent` bigint DEFAULT '20',
  `soccer_percentage` bigint DEFAULT '30',
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint DEFAULT '0',
  `min_deposit` decimal(10,2) DEFAULT '20.00',
  `max_deposit` decimal(10,2) DEFAULT '0.00',
  `min_withdrawal` decimal(10,2) DEFAULT '20.00',
  `max_withdrawal` decimal(10,2) DEFAULT '0.00',
  `rollover` bigint DEFAULT '10',
  `rollover_deposit` bigint DEFAULT '1',
  `suitpay_is_enable` tinyint DEFAULT '1',
  `stripe_is_enable` tinyint DEFAULT '1',
  `bspay_is_enable` tinyint DEFAULT '0',
  `sharkpay_is_enable` tinyint DEFAULT '1',
  `turn_on_football` tinyint DEFAULT '1',
  `revshare_reverse` tinyint(1) DEFAULT '1',
  `bonus_vip` bigint DEFAULT '100',
  `activate_vip_bonus` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint DEFAULT '0',
  `withdrawal_limit` bigint DEFAULT NULL,
  `withdrawal_period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT '0',
  `perc_sub_lv1` bigint NOT NULL DEFAULT '4',
  `perc_sub_lv2` bigint NOT NULL DEFAULT '2',
  `perc_sub_lv3` bigint NOT NULL DEFAULT '3',
  `disable_rollover` tinyint DEFAULT '0',
  `rollover_protection` bigint NOT NULL DEFAULT '1',
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `mercadopago_is_enable` tinyint DEFAULT '0',
  `digitopay_is_enable` tinyint NOT NULL DEFAULT '0',
  `default_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'digitopay'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`) VALUES
(1, 'Viper Pro ', 'A mais abrangente plataforma de cassino atualmente, oferecendo uma variedade de recursos profissionais para garantir a melhor experiência para você.', 'uploads/ntDQH8vdaInnOmxXJHs2QjdkFOm21OUOblyFrvDI.png', 'uploads/3MGfODaXxvOJ6Pe7Wm1pep7f7N6eNqehD9wN2x53.png', 'uploads/WgYRN9pcOTO8ImINGVW6TvEGdx21UGydq04opdUT.png', '[]', 'BRL', 'dot', 'left', 20, 0, 30, 'R$', 'local', 100, 20.00, 50000.00, 20.00, 50000.00, 10, 2, 1, 1, 1, 1, 0, 1, 100, 1, '2024-04-12 21:00:38', 0, 500, 'weekly', 1, 4, 2, 3, 0, 5, 50.00, 50.00, 0, 1, 'digitopay');

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint UNSIGNED NOT NULL,
  `affiliate_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `label` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT '0.000000000000',
  `balance_min` decimal(27,12) NOT NULL DEFAULT '10000.100000000000',
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT '45.00',
  `mode` enum('balance_min','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 13:11:15', '2023-10-16 15:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `status` tinyint DEFAULT '0',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_in` tinyint NOT NULL DEFAULT '0',
  `banned` tinyint NOT NULL DEFAULT '0',
  `inviter` int DEFAULT NULL,
  `inviter_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_revenue_share` bigint NOT NULL DEFAULT '2',
  `affiliate_revenue_share_fake` bigint DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT '10.00',
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT '40.00',
  `is_demo_agent` tinyint NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pt_BR',
  `role_id` int DEFAULT '3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', NULL, '$2y$10$sq4gZjSHoI4Jk4yEthM5Cua/yVoFac6nTpRsTy7v9ayXAvKLHHrsq', 'Tb5Z4Br9ksYmvy4r0do0m0szYI2m5I2bXZo0uddrZquyzvzNRimd0yveUxaH', NULL, NULL, 'uploads/8lx3OeL0c6GX18GMIhbgf2Kj4JVew0NRmnTUYYSb.png', NULL, NULL, NULL, 0, 0, NULL, 'IL9O93HOCY', 20, NULL, 10.00, 40.00, 0, 'active', 'pt_BR', 1, '2023-11-07 19:15:13', '2024-03-31 12:51:21'),
(39, 'Afiliado', 'afiliado@demo.com', NULL, '$2y$10$zRmRWdhiFu0lJvdVlU5mZO5Zbg3YCHmYCpl0NyiJ.o3hQMxk8lqQS', NULL, NULL, NULL, NULL, NULL, '976.980.020-12', '33333333333', 0, 0, NULL, '8E5O2DUZGY', 20, NULL, 50.00, 50.00, 0, 'active', 'pt_BR', 3, '2024-04-11 13:41:36', '2024-04-11 13:41:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bet_level` bigint NOT NULL DEFAULT '1',
  `bet_required` bigint DEFAULT NULL,
  `bet_period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bet_bonus` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `vip_id` int UNSIGNED NOT NULL,
  `level` bigint NOT NULL,
  `points` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_bonus_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_deposit_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_withdrawal` decimal(10,2) DEFAULT '0.00',
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `balance_demo` decimal(20,8) DEFAULT '1000.00000000',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide_balance` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_won` bigint NOT NULL DEFAULT '0',
  `total_lose` bigint NOT NULL DEFAULT '0',
  `last_won` bigint NOT NULL DEFAULT '0',
  `last_lose` bigint NOT NULL DEFAULT '0',
  `vip_level` bigint DEFAULT '0',
  `vip_points` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(1, 1, 'BRL', 'R$', 100.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 5900.00, 0, 1, '2023-11-07 19:15:13', '2024-04-13 19:54:48', 0.00, 0, 0, 0, 0, 1, 10000),
(40, 39, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-04-11 13:41:36', '2024-04-11 13:41:36', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_roi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_entry` decimal(20,2) NOT NULL DEFAULT '0.00',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_index` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `games_provider_id_index` (`provider_id`) USING BTREE,
  ADD KEY `games_game_code_index` (`game_code`) USING BTREE;

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2029;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
