-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2020 at 12:45 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banglabazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Parent_id` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Parent_id`, `Name`, `Description`, `url`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mens Wear', 'Mens Wear Category', 'mens-wear', 1, NULL, '2020-01-22 04:25:45', '2020-01-22 10:01:57'),
(2, 1, 'Casual Shirts', 'Casual Shirts', 'causal-shirts', 1, NULL, '2020-01-22 04:26:13', '2020-01-22 09:36:51'),
(3, 0, 'Mens Shoes', 'Shoes', 'mens-shoes', 1, NULL, '2020-01-22 04:26:34', '2020-01-22 09:46:12'),
(4, 3, 'casual Shoes', 'casual Shoes', 'casual-shoes', 1, NULL, '2020-01-22 04:26:51', '2020-01-22 04:26:51'),
(5, 1, 'Formal Shirts', 'Formal Shirts', 'formal-shirts', 1, NULL, '2020-01-22 08:58:58', '2020-01-22 09:37:07'),
(9, 3, 'Formal Shoes', 'Formal Shoes', 'formal-shoes', 1, NULL, '2020-01-22 09:47:04', '2020-01-22 09:47:04'),
(10, 3, 'Fleat Shoes', 'Fleat Shoes', 'fleat-shoes', 1, NULL, '2020-01-22 09:47:56', '2020-01-22 09:47:56'),
(11, 0, 'Womens Wear', 'Womens Wear', 'Women-Wear', 1, NULL, '2020-01-22 09:52:59', '0000-00-00 00:00:00'),
(12, 11, 'Casual Dress', 'Casual Dress', 'casual-dress', 1, NULL, '2020-01-22 09:53:41', '2020-01-22 13:48:51'),
(14, 11, 'Formal Dress', 'Formal Shirts', 'formal-dress', 1, NULL, '2020-01-22 09:56:31', '2020-01-22 13:49:14'),
(15, 15, 'Formal Shoe', 'Formal Shoe', 'Formal-Shoe', 1, NULL, '2020-01-22 09:59:05', '2020-01-22 14:21:41'),
(16, 0, 'Kids Wear', 'Kids Wear', 'Kids-Wear', 1, NULL, '2020-01-22 10:03:38', '2020-01-22 10:03:38'),
(17, 18, 'Casual Wear', 'Casual Wear', 'Casual-Wear', 1, NULL, '2020-01-22 10:04:11', '2020-01-22 14:31:31'),
(21, 18, 'Formal Wear', 'Formal Wear', 'Formal-Wear', 1, NULL, '2020-01-22 10:05:30', '2020-01-22 14:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(2, '12345', 140, 'Percentage', '2020-01-23', 1, '2020-01-22 06:45:22', '2020-01-22 06:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'rakib@gmail.com', 'Rakib Hasan', 'walton road', 'Chapai', 'Nawabganj', 'Bangladesh', '54000', '01521345678', '2020-01-22 11:05:29', '2020-01-22 06:05:29'),
(2, 10, 'mini@gmail.com', 'naznin', 'balubagan', 'Chapai', 'Nawabganj', 'Bangladesh', '6363', '01734567890', '2020-01-22 11:15:08', '2020-01-22 06:15:08'),
(7, 13, 'mou@gmail.com', 'mou', 'dhanmondi', 'Dhaka', 'Dhaka', 'Bangladesh', '123456', '01521482737', '2020-01-22 06:34:36', '2020-01-22 06:34:36');

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
(3, '2018_08_18_082027_create_category_table', 2),
(4, '2018_08_21_173456_create_products_table', 3),
(5, '2018_08_24_061945_create_products_attributes_table', 4),
(6, '2018_10_10_072850_create_cart_table', 5),
(7, '2018_10_20_120758_create_coupons_table', 6),
(8, '2018_12_01_114714_create_orders_table', 7),
(9, '2018_12_01_120120_create_orders_products_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(13, 13, 'mou@gmail.com', 'mou', 'dhanmondi', 'Dhaka', 'Dhaka', '123456', 'Bangladesh', '01521482737', 0, '', 0, 'Pending', 'COD', 2000, '2020-01-22 06:34:41', '2020-01-22 06:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_image`, `product_qty`, `created_at`, `updated_at`) VALUES
(13, 13, 13, 24, 'WFS006', 'Black Kurti', 'Medium', 'Black', 1000, '', 2, '2020-01-22 06:34:41', '2020-01-22 06:34:41');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'White Polo Casual T-Shirt', 'WPCTS001', 'White', 'White Polo Casual T-Shirts', 'Soft Wool', 700.00, '64943.jpg', '2020-01-22 08:14:34', '2020-01-22 05:31:09'),
(2, 2, 'Red Casual T-Shirts', 'RCTS002', 'Red', 'Red Casual T-Shirts', 'Soft Wool', 750.00, '15233.PNG', '2020-01-21 08:14:54', '2020-01-22 08:25:54'),
(3, 5, 'Elegant Green Formal Shirt', 'EGFS003', 'Green', 'Elegant Green Formal Shirt', 'Cotton Stuff', 1250.00, '81563.jpeg', '2020-01-22 08:41:57', '2020-01-22 08:41:57'),
(4, 5, 'White Formal T-Shirts', 'WFTS004', 'White', 'Nologo white polo t-shirt with navy collar', 'Nologo white polo t-shirt with navy collar', 800.00, '61487.jpg', '2020-01-22 08:48:24', '2020-01-22 08:48:24'),
(5, 5, 'Graphite Grey formal Shirt', 'GGFS005', 'Grey', 'Graphite grey formal Shirt', 'Plain Cotton', 1050.00, '56324.png', '2020-01-22 08:56:36', '2020-01-22 08:56:36'),
(6, 5, 'Bamboo Fiber Black Shirt', 'BFBS006', 'Black', 'Men\'s dress shirts Bamboo fiber Black shirts', 'Fiber', 1300.00, '41879.jpg', '2020-01-22 09:04:43', '2020-01-22 09:04:43'),
(7, 4, 'Mens Casual Leather Shoes', 'MCLS001', 'Black', 'New Arrival Awesome Mens Casual Leather Shoes For Men Dress Shoes Flats Shoes Pure Color Hot Sale Good Price', 'Leather Shoes', 1500.00, '16919.jpg', '2020-01-22 09:25:38', '2020-01-22 09:25:38'),
(8, 4, 'Hot Men\'s Creative Bright Face', 'BCMS002', 'Black', 'Hot Men\'s Creative Bright Face Genuine Leather Shoes Mens', 'Leather Shoes', 1250.00, '14631.jpg', '2020-01-22 09:31:51', '2020-01-22 09:31:51'),
(9, 4, 'Casual Shoes light brown J-16', 'CSLB003', 'Brown', 'Casual Shoes light brown J-16 Shoes for men', 'Soft Laather Shoes', 1150.00, '11761.jpg', '2020-01-22 09:41:31', '2020-01-22 09:41:31'),
(10, 9, 'New HandMade Leather Shoes', 'FBLS004', 'Brown', 'New HandMade Leather Shoes\r\nGood for both dress wear and casual wear. - Color: Brown. - Color: Black.', 'Leather Shoes', 1450.00, '45127.jpg', '2020-01-22 09:48:56', '2020-01-22 09:48:56'),
(11, 9, 'Leather Dress Shoes', 'MFS002', 'Brown', 'New 2018 Leather Dress Shoes For Men Formal Shoe', 'Full Pure Laather', 1550.00, '16180.jpg', '2020-01-22 06:04:42', '2020-01-22 13:20:14'),
(12, 9, 'Men\'s Business Dress Shoes', 'MFS007', 'Black', 'Luxury Pointy Men\'s Business Dress Shoes', 'Pure Leather', 1350.00, '76972.jpg', '2020-01-22 12:53:48', '2020-01-22 13:19:41'),
(13, 10, 'Casual Men\'s Flat Shoes', 'CMFS001', 'Brown / Blue', 'Casual Men\'s Flat Shoes', 'Soft Wool', 950.00, '4218.jpg', '2018-12-13 13:04:32', '2018-12-13 13:04:32'),
(14, 10, '2018 New Summer Brand Mens', 'CMFS007', 'Grey / Blue', '2018 New Summer Brand Mens Flat Shoes', 'RubberFeature\r\nLight,Breathable\r\nHard-WearingShoes', 1250.00, '54064.jpg', '2020-01-22 13:16:12', '2020-01-22 13:18:58'),
(15, 24, 'Mens Casual Jacket', 'MCJ001', 'Off-White', 'Matching up with the ever increasing requirements of the customers, our company is engaged in providing Mens Casual Jacket', 'Soft Wool', 1000.00, '21722.jpg', '2020-01-22 12:55:14', '2020-01-22 12:55:14'),
(16, 24, 'Autumn Mens Casual Jacket', 'MCJ005', 'Brown', 'Autumn Mens Business Casual jacket-mens Casual jacket coat this is standard EU size basic on bust', 'Soft Wool', 1250.00, '26428.jpg', '2020-01-22 13:00:12', '2020-01-22 13:00:12'),
(17, 24, 'Black PU Laather', 'MCJ009', 'Black', 'Black PU Leather Slim Fit Jacket for Men', 'Leather Stuff', 1500.00, '81932.jpg', '2020-01-22 13:04:47', '2020-01-22 13:04:47'),
(18, 25, 'US Formal Mens Slim', 'FMJ001', 'Grey', 'US-Formal-Mens-Slim-Fit-One-Button-Suit', 'Soft Wool', 1350.00, '66540.jpg', '2020-01-22 13:14:27', '2020-01-22 13:14:27'),
(19, 25, 'Men Stylish Grey Coat', 'MFJ005', 'Grey', 'Men Stylish Grey Coat', 'Cotton & polyster', 1000.00, '2141.jpg', '2020-01-21 08:00:00', '2020-01-22 13:20:02'),
(20, 12, 'Chiffon Casual Shirt', 'WCS001', 'White', 'White Women Fashion Chiffon Casual Shirt', 'Silk', 750.00, '76822.jpg', '2020-01-22 13:24:28', '2020-01-22 13:24:28'),
(21, 12, 'Casual Loose-Sleeveless', 'WCS005', 'Pink', 'Fashion-Women-039-s-Casual-Loose-Sleeveless-Chiffon', 'Chiffon', 950.00, '12198.jpg', '2020-01-22 13:29:48', '2020-01-22 13:29:48'),
(22, 12, 'Roadster Casual Shirt', 'WCS009', 'Blue', 'Buy Roadster Women\'s Blue Checkered Casual Shirt online  at best price.Blue and redchecked shirt, has a mandarin collar, a full button placket, long sleeves with roll-up tabs', 'Soft', 850.00, '39440.jpg', '2020-01-22 13:33:45', '2020-01-22 13:33:45'),
(23, 14, 'Net Kamdani Shirt', 'WFS001', 'Light Pink', 'Cotton net kamdani shirt', 'Cotton', 1350.00, '77947.jpg', '2020-01-22 13:38:23', '2020-01-22 13:50:09'),
(24, 14, 'Black Kurti', 'WFS005', 'Black', 'Women Designer Kurti Tunic Top Dress 03', 'Cotton', 1000.00, '72603.jpg', '2020-01-22 13:41:25', '2020-01-22 13:49:56'),
(25, 16, '2018 Sneaker Shoes', 'WFS001', 'Pink', '2018 Sneaker Shoes', 'Rubber Sole', 1250.00, '73174.jpg', '2020-01-22 14:12:15', '2020-01-22 14:12:15'),
(26, 16, 'Red Casual Shoes', 'WCS010', 'Red', 'Womens Casual Shoes Genuine Leather', 'Leather', 1350.00, '91023.jpg', '2020-01-22 14:20:24', '2020-01-22 00:00:00'),
(27, 17, 'Nubuck Leather High', 'WFS015', 'Black', 'Nubuck Leather High Heeled Shoe', 'Leather', 1000.00, '22049.jpg', '2020-01-22 14:25:10', '2020-01-22 14:25:10'),
(28, 19, 'Pink Party Shirt', 'KCW001', 'Pink', 'Party Wear Kids', 'Soft Wool', 750.00, '77277.jpg', '2018-12-14 14:34:37', '2020-01-22 14:34:37'),
(29, 21, 'Navy Tuxedo Wear', 'KFW001', 'Navy', 'Navy Tuxedo Formal Wear For Boys', 'Cotton', 1500.00, '33224.jpg', '2020-01-22 14:37:44', '2020-01-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'WPCTS001', 'Small', 700.00, 6, '2020-01-22 08:17:57', '2020-01-22 05:32:45'),
(2, 1, 'WPCTS002', 'Medium', 750.00, 5, '2020-01-22 08:20:08', '2020-01-22 05:32:45'),
(3, 1, 'WPCTS003', 'Large', 800.00, 5, '2020-01-22 08:20:08', '2020-01-22 05:32:45'),
(4, 1, 'WPCTS004', 'Extra Large', 900.00, 5, '0000-00-00 00:00:00', '2020-01-22 05:32:45'),
(5, 2, 'RCTS002', 'Small', 750.00, 5, '2020-01-22 08:27:15', '2020-01-22 08:27:15'),
(6, 2, 'RCTS003', 'Medium', 800.00, 5, '2020-01-22 08:27:15', '2020-01-22 08:27:15'),
(7, 2, 'RCTS004', 'Large', 850.00, 5, '2020-01-22 08:27:15', '2020-01-22 08:27:15'),
(8, 2, 'RCTS005', 'Extra Large', 1000.00, 5, '2020-01-22 08:27:15', '2020-01-22 08:27:15'),
(9, 3, 'EGFS003', 'Small', 1250.00, 5, '2020-01-22 08:43:02', '0000-00-00 00:00:00'),
(10, 3, 'EGFS004', 'Medium', 1300.00, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 3, 'EGFS005', 'Large', 1350.00, 5, '2020-01-22 08:43:03', '2020-01-22 08:43:03'),
(12, 3, 'EGFS006', 'Extra Large', 1500.00, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 4, 'WFTS004', 'Small', 800.00, 5, '0000-00-00 00:00:00', '2020-01-22 08:50:15'),
(14, 4, 'WFTS005', 'Medium', 850.00, 5, '0000-00-00 00:00:00', '2020-01-22 08:50:15'),
(15, 4, 'WFTS006', 'Large', 900.00, 5, '2020-01-22 08:50:15', '2020-01-22 08:50:15'),
(16, 4, 'WFTS007', 'Extra Large', 1000.00, 5, '2020-01-22 08:50:15', '2020-01-22 08:50:15'),
(17, 5, 'GGFS005', 'Small', 1050.00, 5, '2020-01-22 08:58:48', '2020-01-22 08:58:48'),
(18, 5, 'GGFS006', 'Medium', 1100.00, 5, '2020-01-22 08:58:48', '2020-01-22 08:58:48'),
(19, 5, 'GGFS007', 'Large', 1150.00, 5, '2020-01-22 08:58:48', '2020-01-22 08:58:48'),
(20, 5, 'GGFS008', 'Extra Large', 1200.00, 5, '2020-01-22 08:58:48', '2020-01-22 08:58:48'),
(21, 6, 'BFBS006', 'Small', 1300.00, 5, '2020-01-22 09:06:07', '2020-01-22 09:06:07'),
(22, 6, 'BFBS007', 'Medium', 1350.00, 5, '2020-01-22 09:06:07', '2020-01-22 09:06:07'),
(23, 6, 'BFBS008', 'Large', 1500.00, 5, '2020-01-22 09:06:07', '2020-01-22 09:06:07'),
(24, 6, 'BFBS009', 'Extra Large', 1600.00, 5, '2020-01-22 09:06:07', '2020-01-22 09:06:07'),
(25, 7, 'MCLS001', '8', 1500.00, 5, '2020-01-22 09:26:27', '2020-01-22 09:26:27'),
(26, 7, 'MCLS002', '9', 1500.00, 5, '2020-01-22 09:27:25', '2020-01-22 09:27:25'),
(27, 7, 'MCLS003', '10', 1500.00, 5, '2020-01-22 09:27:25', '2020-01-22 09:27:25'),
(28, 7, 'MCLS004', '11', 1600.00, 5, '2020-01-22 09:27:25', '2020-01-22 09:27:25'),
(29, 7, 'MCLS005', '12', 1700.00, 5, '2020-01-22 09:27:25', '2020-01-22 09:27:25'),
(30, 8, 'BCMS002', '8', 1250.00, 5, '2020-01-22 09:33:09', '0000-00-00 00:00:00'),
(31, 8, 'BCMS003', '9', 1300.00, 5, '2020-01-22 09:33:09', '2020-01-22 09:33:09'),
(32, 8, 'BCMS004', '10', 1400.00, 5, '0000-00-00 00:00:00', '2020-01-22 09:33:09'),
(33, 8, 'BCMS005', '11', 1500.00, 5, '0000-00-00 00:00:00', '2020-01-22 09:33:09'),
(34, 8, 'BCMS006', '12', 1600.00, 5, '2020-01-22 09:33:09', '2020-01-22 09:33:09'),
(35, 9, 'CSLB003', '8', 1150.00, 5, '2020-01-22 09:43:07', '2020-01-22 09:43:07'),
(36, 9, 'CSLB004', '9', 1200.00, 5, '2020-01-22 09:43:07', '2020-01-22 09:43:07'),
(37, 9, 'CSLB005', '10', 1250.00, 5, '2020-01-22 09:43:07', '2020-01-22 09:43:07'),
(38, 9, 'CSLB006', '11', 1300.00, 5, '2020-01-22 09:43:07', '2020-01-22 09:43:07'),
(39, 9, 'CSLB007', '12', 1400.00, 5, '0000-00-00 00:00:00', '2020-01-22 09:43:07'),
(40, 10, 'FBLS004', '8', 1450.00, 5, '2020-01-22 09:49:59', '2020-01-22 09:49:59'),
(41, 10, 'FBLS005', '9', 1450.00, 5, '2020-01-22 09:49:59', '2020-01-22 09:49:59'),
(42, 10, 'FBLS006', '10', 1500.00, 5, '2020-01-22 09:50:00', '2020-01-22 09:50:00'),
(43, 10, 'FBLS007', '11', 1600.00, 5, '2020-01-22 09:50:00', '2020-01-22 09:50:00'),
(44, 10, 'FBLS008', '12', 1700.00, 5, '2020-01-22 09:50:00', '2020-01-22 09:50:00'),
(45, 11, 'MFS003', '7', 1350.00, 5, '2020-01-22 12:56:13', '0000-00-00 00:00:00'),
(46, 11, 'MFS004', '8', 1350.00, 5, '2020-01-22 12:56:13', '0000-00-00 00:00:00'),
(47, 11, 'MFS005', '9', 1350.00, 5, '2020-01-22 12:56:13', '2020-01-22 12:56:13'),
(48, 11, 'MFS006', '10', 1350.00, 5, '2020-01-22 12:56:13', '2020-01-22 12:56:13'),
(49, 12, 'MFS008', '8', 1500.00, 5, '2020-01-22 12:57:54', '0000-00-00 00:00:00'),
(50, 12, 'MFS009', '9', 1500.00, 5, '2020-01-22 12:57:54', '2020-01-22 12:57:54'),
(51, 12, 'MFS010', '10', 1500.00, 5, '2020-01-22 12:57:54', '2020-01-22 12:57:54'),
(52, 12, 'MFS011', '11', 1500.00, 5, '2020-01-22 12:57:54', '2020-01-22 12:57:54'),
(53, 13, 'CMFS002', '8', 950.00, 5, '2020-01-22 13:05:29', '2020-01-22 13:05:29'),
(54, 13, 'CMFS003', '9', 1000.00, 5, '2020-01-22 13:05:29', '2020-01-22 13:05:29'),
(55, 13, 'CMFS004', '10', 1000.00, 5, '2020-01-22 13:06:12', '2020-01-22 13:06:12'),
(56, 13, 'CMFS005', '11', 1000.00, 5, '2020-01-22 13:06:12', '0000-00-00 00:00:00'),
(57, 14, 'CMFS007', '8', 1250.00, 5, '2020-01-22 13:17:18', '2020-01-22 13:17:18'),
(58, 14, 'CMFS008', '9', 1250.00, 5, '2020-01-22 13:17:18', '0000-00-00 00:00:00'),
(59, 14, 'CMFS009', '10', 1250.00, 5, '0000-00-00 00:00:00', '2020-01-22 13:17:18'),
(60, 14, 'CMFS010', '11', 1250.00, 5, '2020-01-22 13:17:18', '2020-01-22 13:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1425.jpg', '2018-12-11 13:14:59', '2020-01-22 08:14:59'),
(2, 1, '9280.jpg', '2018-12-11 13:15:14', '2020-01-22 08:15:14'),
(3, 2, '8910.PNG', '2018-12-11 13:28:06', '2020-01-22 08:28:06'),
(4, 2, '1355.PNG', '2018-12-11 13:28:19', '2020-01-22 08:28:19'),
(5, 3, '7671.jpeg', '2018-12-11 13:43:28', '2020-01-22 08:43:28'),
(6, 3, '7263.jpeg', '2018-12-11 13:43:36', '2020-01-22 08:43:36'),
(7, 4, '5924.jpg', '2018-12-11 13:48:46', '2020-01-22 08:48:46'),
(8, 17, '6273.PNG', '2018-12-14 18:05:04', '2020-01-22 13:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rijvi Ahmed', 'Shibtola', 'Chapai Nawabganj ', 'Rajshahi', 'Bangladesh', '6300', '01521482738', 'rijvi625@gmail.com', '$2y$10$YSQqQsx7pvOQ/2m3emdstO/OAE2WuMprbMSU5Aw2wST4IN22/POaS', 1, '44h5VvdeQGkk4tr1ocYIojWs9CGFDBtl07EEsrtDo6hu3454NerTRklrspwT', '2020-01-22 06:38:38', '2020-01-22 06:05:29'),
(13, 'mou', 'dhanmondi', 'Dhaka', 'Dhaka', 'Bangladesh', '123456', '01521482737', 'mou@gmail.com', '$2y$10$iwGyhAcMusNwXlX6rd5F4uVvTfX0LKJeVOTtwaRZfRg2PJSZCip7a', NULL, NULL, '2020-01-22 06:32:29', '2020-01-22 06:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
