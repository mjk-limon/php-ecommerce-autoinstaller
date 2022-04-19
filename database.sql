-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2022 at 11:16 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_nu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `Token` varchar(2000) COLLATE latin1_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `date_added`, `Token`, `type`) VALUES
(1, 'admin', '$2y$12$dqHzOsf6OC2MRfK5yP1WH.B0qz7x1YcxGj4FwQn2Nah7BBinsw8Xu', '2017-11-21 00:00:00', 'HBNvk4FZ7XLlaZdb', 1),
(2, 'root', '$2y$12$dqHzOsf6OC2MRfK5yP1WH.B0qz7x1YcxGj4FwQn2Nah7BBinsw8Xu', '2020-09-14 22:48:12', 'PDO3IljH0PGvlIJv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adv_dis`
--

DROP TABLE IF EXISTS `adv_dis`;
CREATE TABLE IF NOT EXISTS `adv_dis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prid` int(11) NOT NULL,
  `msr_unit` varchar(20) NOT NULL,
  `dis` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prid` (`prid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adv_dis`
--

INSERT INTO `adv_dis` (`id`, `prid`, `msr_unit`, `dis`) VALUES
(3, 102026, 'Pcs', '[]'),
(33, 102043, 'Pcs', '[]'),
(34, 102040, 'Pcs', '[]'),
(35, 102012, 'Pcs', '[]'),
(36, 102020, 'Pcs', '[]'),
(37, 102019, 'Pcs', '[]'),
(38, 102018, 'Pcs', '[]'),
(39, 102017, 'Pcs', '[]'),
(40, 102016, 'Pcs', '[]'),
(41, 102015, 'Pcs', '[]'),
(42, 102014, 'Pcs', '[]'),
(43, 102013, 'Pcs', '[]'),
(44, 102011, 'Pcs', '[]'),
(45, 102010, 'Pcs', '[]'),
(46, 102008, 'Pcs', '[]'),
(47, 102009, 'Pcs', '[]'),
(48, 102007, 'Pcs', '[]'),
(49, 102006, 'Pcs', '[]'),
(50, 102005, 'Pcs', '[]'),
(51, 102004, 'Pcs', '[]'),
(52, 102003, 'Pcs', '[]'),
(53, 102002, 'Pcs', '[]'),
(54, 102001, 'Pcs', '[]'),
(55, 102000, 'Pcs', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `adv_questions`
--

DROP TABLE IF EXISTS `adv_questions`;
CREATE TABLE IF NOT EXISTS `adv_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prid` int(11) NOT NULL,
  `qid` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `email` varchar(99) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adv_questions`
--

INSERT INTO `adv_questions` (`id`, `prid`, `qid`, `date`, `name`, `email`, `message`, `status`) VALUES
(1, 102040, 1, '2020-09-02 14:02:38', 'Mosfiqur Rahman', 'mosfiqur121091@gmail.com', 'Hi', 1),
(2, 102040, 1, '2020-09-06 09:02:38', 'Mosfiqur Rahman', 'mosfiqur121091@gmail.com', 'Hello', 1),
(3, 102040, 1, '2020-09-06 12:44:35', 'Aladin Kids', 'admin-panel', 'Admin reply testing 3', 0),
(4, 102001, 4, '2020-09-16 14:02:38', 'Ponir Hossain', 'sobujkhanlalmiya@gmail.com', 'Black color Available ?', 1),
(5, 102001, 4, '2020-09-16 21:37:58', 'Aladin Kids', 'admin-panel', 'Yes. Available', 0),
(6, 102001, 4, '2020-09-16 15:40:45', 'Ponir Hossain', 'sobujkhanlalmiya@gmail.com', 'Same price?', 1),
(7, 102003, 7, '2020-09-16 21:40:56', 'Aladin Kids', 'admin-panel', 'No. Black color price is Tk.2000', 0),
(8, 102001, 4, '2020-09-16 21:41:18', 'Aladin Kids', 'admin-panel', 'Sir\r\n', 0),
(15, 102004, 15, '2020-12-10 21:11:52', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Beautifull Watch', 1),
(16, 102000, 16, '2020-12-10 21:16:53', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Available ?', 1),
(18, 102000, 16, '2020-12-10 21:23:26', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Yes. Maybe', 1),
(19, 102040, 19, '2021-01-01 23:45:22', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'I\'m not salman', 1),
(20, 102000, 16, '2021-01-05 11:20:45', 'Aladin Kids', 'admin-panel', 'Obviously', 1),
(21, 102008, 21, '2021-01-18 12:44:47', 'Ashraful Hasan Kanak', 'mjk.limon@outlook.com', 'Is this size is available ?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adv_stock`
--

DROP TABLE IF EXISTS `adv_stock`;
CREATE TABLE IF NOT EXISTS `adv_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prid` int(11) NOT NULL,
  `stock` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prid` (`prid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adv_stock`
--

INSERT INTO `adv_stock` (`id`, `prid`, `stock`) VALUES
(30, 102035, '[{\"i_s\":\"30\",\"i_c\":\"navy blue\",\"s_p\":\"20\",\"s_a\":\"20\"},{\"i_s\":\"36\",\"i_c\":\"navy blue\",\"s_p\":\"20\",\"s_a\":\"20\"},{\"i_s\":\"38\",\"i_c\":\"navy blue\",\"s_p\":\"20\",\"s_a\":\"20\"}]'),
(31, 102040, '[{\"i_s\":\"6GB\\/128GB\",\"i_c\":\"black\",\"s_p\":\"28990\",\"s_a\":\"20\"},{\"i_s\":\"8GB\\/128GB\",\"i_c\":\"black\",\"s_p\":\"29990\",\"s_a\":\"30\"},{\"i_s\":\"6GB\\/128GB\",\"i_c\":\"darkgreen\",\"s_p\":\"28990\",\"s_a\":\"40\"},{\"i_s\":\"8GB\\/128GB\",\"i_c\":\"darkgreen\",\"s_p\":\"29990\",\"s_a\":\"50\"},{\"i_s\":\"6GB\\/128GB\",\"i_c\":\"lightpink\",\"s_p\":\"29990\",\"s_a\":\"60\"},{\"i_s\":\"8GB\\/128GB\",\"i_c\":\"lightpink\",\"s_p\":\"30990\",\"s_a\":\"0\"}]'),
(32, 102039, '[{\"i_s\":\"2-4 Years\",\"i_c\":\"maroon\",\"s_p\":\"50\",\"s_a\":\"100\"},{\"i_s\":\"4-8 Years\",\"i_c\":\"maroon\",\"s_p\":\"50\",\"s_a\":\"0\"}]'),
(33, 102038, '[{\"i_s\":\"32\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"},{\"i_s\":\"34\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"},{\"i_s\":\"36\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(34, 102037, '[{\"i_s\":\"2-3 Years\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"100\"},{\"i_s\":\"4-8 Years\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"100\"}]'),
(35, 102036, '[{\"i_s\":\"\",\"i_c\":\"purple\",\"s_p\":\"70\",\"s_a\":\"300\"}]'),
(36, 102034, '[{\"i_s\":\"28\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"},{\"i_s\":\"30\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"},{\"i_s\":\"32\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"}]'),
(38, 102033, '[{\"i_s\":\"30\",\"i_c\":\"bottle green\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"34\",\"i_c\":\"bottle green\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(39, 102032, '[{\"i_s\":\"SMALL\",\"i_c\":\"olive\",\"s_p\":\"70\",\"s_a\":\"100\"},{\"i_s\":\"LONG\",\"i_c\":\"olive\",\"s_p\":\"70\",\"s_a\":\"100\"}]'),
(40, 102031, '[{\"i_s\":\"Small\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"100\"},{\"i_s\":\" Long\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"100\"}]'),
(41, 102030, '[{\"i_s\":\"Small\",\"i_c\":\"green\",\"s_p\":\"3550\",\"s_a\":\"300\"},{\"i_s\":\"Long\",\"i_c\":\"green\",\"s_p\":\"4000\",\"s_a\":\"300\"}]'),
(42, 102029, '[{\"i_s\":\"S\",\"i_c\":\"black\",\"s_p\":\"30\",\"s_a\":\"100\"},{\"i_s\":\"M\",\"i_c\":\"black\",\"s_p\":\"30\",\"s_a\":\"100\"},{\"i_s\":\"L\",\"i_c\":\"black\",\"s_p\":\"30\",\"s_a\":\"100\"}]'),
(43, 102028, '[{\"i_s\":\"S\",\"i_c\":\"yellow\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"M\",\"i_c\":\"yellow\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"L\",\"i_c\":\"yellow\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(44, 102027, '[{\"i_s\":\"S\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"},{\"i_s\":\"L\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"}]'),
(45, 102026, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(46, 102025, '[{\"i_s\":\"X\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"10\"},{\"i_s\":\"L\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"10\"},{\"i_s\":\"M\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"20\"}]'),
(48, 102024, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"}]'),
(49, 102023, '[{\"i_s\":\"S\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"},{\"i_s\":\"XL\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"M\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(50, 102022, '[{\"i_s\":\"\",\"i_c\":\"gray\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(51, 102021, '[{\"i_s\":\"S\",\"i_c\":\"purple\",\"s_p\":\"50\",\"s_a\":\"100\"},{\"i_s\":\"L\",\"i_c\":\"purple\",\"s_p\":\"30\",\"s_a\":299},{\"i_s\":\"XL\",\"i_c\":\"purple\",\"s_p\":\"30\",\"s_a\":\"10\"}]'),
(53, 102012, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(54, 102020, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"20\"}]'),
(55, 102019, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"10\"}]'),
(56, 102018, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(57, 102017, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(58, 102016, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"}]'),
(59, 102015, '[{\"i_s\":\"\",\"i_c\":\"yellow\",\"s_p\":\"50\",\"s_a\":\"10\"},{\"i_s\":\"\",\"i_c\":\"red\",\"s_p\":\"60\",\"s_a\":\"20\"}]'),
(60, 102014, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"10\"}]'),
(61, 102013, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"100\"}]'),
(62, 102011, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"300\"}]'),
(63, 102010, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"70\",\"s_a\":\"10\"}]'),
(64, 102008, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"}]'),
(65, 102009, '[{\"i_s\":\"\",\"i_c\":\"blue\",\"s_p\":\"30\",\"s_a\":\"300\"}]'),
(66, 102007, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"30\",\"s_a\":\"100\"}]'),
(67, 102006, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(68, 102005, '[{\"i_s\":\"\",\"i_c\":\"green\",\"s_p\":\"30\",\"s_a\":\"300\"}]'),
(69, 102004, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"}]'),
(70, 102003, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"100\"}]'),
(71, 102002, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"}]'),
(72, 102001, '[{\"i_s\":\"30\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"32\",\"i_c\":\"\",\"s_p\":\"50\",\"s_a\":\"300\"},{\"i_s\":\"34\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":\"300\"}]'),
(73, 102000, '[{\"i_s\":\"\",\"i_c\":\"\",\"s_p\":\"20\",\"s_a\":299}]'),
(87, 102042, '[{\"i_s\":\"\",\"i_c\":\"red\",\"s_p\":\"500\",\"s_a\":\"50\"},{\"i_s\":\"\",\"i_c\":\"blue\",\"s_p\":\"100\",\"s_a\":\"10\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `email` varchar(90) COLLATE latin1_general_ci NOT NULL,
  `mobile_number` varchar(90) COLLATE latin1_general_ci NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `date`, `name`, `email`, `mobile_number`, `message`, `status`) VALUES
(1, '2018-04-25 00:00:00', 'Limon', 'jhmasterlimon@gmail.com', '01956758055', 'hi this is testing mail from developers ', 1),
(14, '2018-04-26 00:00:00', 'Md Jahid Khan Limon', 'jhmasterlimon11@gmail.com', '01956758055', 'adfasdfasd', 0),
(16, '2018-10-08 00:00:00', 'Ashraful Hasan Kanak', 'khankkanak68@gmail.com', '01956758055', 'Product Id: 100104 <a href=\"http://localhost/Running%20Projects/Protivas/details/main/100104\">View</a> \n\r\n\rText: I need this product.\r\nQuantity: 2 \n\r\n\rDate: 22-05-2018 \n\rIp: ::1 \n\rUrl: http://localhost/Running%20Projects/Protivas/details/main/100104 \n\r', 1),
(22, '2018-11-28 10:41:25', 'Rubel Saiful', 'it.rubelsaiful@gmail.com', '01956758055', 'Product Id: 100131 <a href=\"http://localhost/Running%20Projects/famous%20fashion/details/main/100131\">View</a> \n\r\n\rText: System developers \n\r\n\rDate: November 28, 2018 (10:41 AM) \n\rIp: ::1 \n\rUrl: http://localhost/Running%20Projects/famous%20fashion/details/main/100131 \n\r', 0),
(23, '2020-09-16 21:53:27', 'Arif Khan', 'arif@gmail.com', '01675292305', 'I need help. ', 0),
(24, '2020-09-16 21:54:28', 'Noor Nahar', 'noornahar@gmail.com', '01812433555', 'Can I get your contact Number ?', 1),
(25, '2020-09-16 21:57:21', 'Ponir Hossain', 'ponir@gmail.com', '01754390022', 'We at Dhaka Solution would like to request a price quote for the following items:\r\n\r\nShirt\r\nT-Shirt\r\nPant\r\nShoes\r\n\r\nWe would be interested in any bulk purchasing deals you may have as we are looking to purchase large quantities of these goods [mention quantities needed]. We are in a position to purchase these goods immediately if the price is within our allocated budget.\r\n\r\nPlease feel free to call me if you need any further information in order to provide us with a firm price.\r\n\r\nWe look forward to hearing from you.\r\n\r\nSincerely,\r\n\r\nPonir Hossain\r\nGraphic Designer\r\nDhaka Soluton', 1),
(27, '2020-12-15 10:24:57', 'Md Jahid Khan Limon', 'jhmasterlimon11@gmail.com', '+8801956758055', 'Token No: 79796 \nSubject:  How do I pay on Dhaka Solution ? \nAdditonal message: sfsfs', 1),
(29, '2020-12-16 18:38:48', 'Md Jahid Khan Limon', 'mosfiqur1210@gmail.com', '+8801956758055', 'Token No: 96665 \nSubject:  Want to return product ? \nAdditonal message: Additional message', 1),
(30, '2021-08-25 18:13:33', 'Kaniz Rimu', 'rimu@gmail.com', '01976565766', 'Token No: 188515 \nSubject:  Want to cancel order ? \nAdditonal message: Hello,\r\nPlease help me', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

DROP TABLE IF EXISTS `contact_information`;
CREATE TABLE IF NOT EXISTS `contact_information` (
  `address` text CHARACTER SET utf8 NOT NULL,
  `address2` text CHARACTER SET utf8 NOT NULL,
  `mobile1` varchar(90) NOT NULL,
  `mobile2` varchar(90) NOT NULL,
  `mobile3` varchar(90) NOT NULL,
  `phone` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `facebook` varchar(900) DEFAULT NULL,
  `twitter` varchar(900) DEFAULT NULL,
  `instagram` varchar(900) DEFAULT NULL,
  `linkedin` varchar(900) NOT NULL,
  `googleplus` varchar(900) DEFAULT NULL,
  `gmail` varchar(900) DEFAULT NULL,
  `youtube` varchar(900) DEFAULT NULL,
  `yahoo` varchar(900) DEFAULT NULL,
  `skype` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`address`, `address2`, `mobile1`, `mobile2`, `mobile3`, `phone`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `googleplus`, `gmail`, `youtube`, `yahoo`, `skype`) VALUES
('87, BNS Center, Level 5, Room 618 ,Sector 7, Uttara,  Dhaka - 1230. Bangladesh.', '', '+88 01709 309 110', '+88 01956 758 055', '', '+88 02 4895 4862', 'info@dhakasolution.com', 'https://www.facebook.com/dhakasolution', 'http://twitter.com/', 'http://instagram.com', '', '', 'info@dhakasolution.com', 'https://youtube.com/', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL,
  `users` varchar(900) NOT NULL,
  `coupon` varchar(900) NOT NULL,
  `discount` text NOT NULL,
  `cfrom` datetime DEFAULT NULL,
  `cto` datetime DEFAULT NULL,
  `cp_limit` int(11) DEFAULT NULL,
  `max_discount` int(11) DEFAULT NULL,
  `min_order` int(11) DEFAULT NULL,
  `ctype` tinyint(4) NOT NULL,
  `used_order_no` varchar(999) DEFAULT NULL,
  `used_amount` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon` (`coupon`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `token`, `users`, `coupon`, `discount`, `cfrom`, `cto`, `cp_limit`, `max_discount`, `min_order`, `ctype`, `used_order_no`, `used_amount`) VALUES
(10, 'ycTg7JWfI', '', 'Limon360', '20', '2019-10-02 00:00:00', '2021-10-05 00:00:00', 10, 0, 0, 2, ',01210411081439112', NULL),
(11, '', '', 'DhakaSolution', '30', '2019-10-02 00:00:00', '2019-10-05 00:00:00', 0, 0, 0, 2, NULL, NULL),
(17, '', '2', 'EatPizzas', '20', '2020-02-24 00:00:00', '2020-02-29 00:00:00', 0, 0, 100, 1, NULL, NULL),
(22, 'ycTg7JWf3', '', 'DS300', '30', '2020-02-24 00:00:00', '2020-02-24 00:00:00', 3, 200, 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
CREATE TABLE IF NOT EXISTS `flash_deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_from` datetime NOT NULL,
  `end_in` datetime NOT NULL,
  `discounts` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `start_from`, `end_in`, `discounts`) VALUES
(1, '2021-05-02 06:00:00', '2021-09-30 13:39:00', '177');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joined` datetime NOT NULL,
  `name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `company_name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `email` varchar(90) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `joined`, `name`, `company_name`, `email`, `mobile_number`, `address`, `password`, `status`) VALUES
(1, '2019-11-21 08:39:22', '', '', '', '', '', '', 1),
(4, '2019-11-21 08:39:22', 'Solaiman', 'Jordan Fashion', 'jordan@gmail.com', '01739208720', 'Uttara Dhaka', 'UmzTzd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m_order`
--

DROP TABLE IF EXISTS `m_order`;
CREATE TABLE IF NOT EXISTS `m_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `p_odr_no` varchar(20) NOT NULL,
  `prids` varchar(99) NOT NULL,
  `processed_on` datetime DEFAULT NULL,
  `shipped_on` datetime DEFAULT NULL,
  `delivered_on` datetime DEFAULT NULL,
  `returned_on` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `pmnt_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_order`
--

INSERT INTO `m_order` (`id`, `merchant_id`, `p_odr_no`, `prids`, `processed_on`, `shipped_on`, `delivered_on`, `returned_on`, `status`, `pmnt_status`) VALUES
(3, 4, '01210202498676', '102023,102024', '2021-01-03 06:27:00', NULL, NULL, NULL, 2, 1),
(4, 1, '01210202498676', '102026,102031', '2021-01-03 20:21:00', NULL, '2021-01-04 07:00:00', NULL, 2, 1),
(5, 1, '01210312049686', '102040,102009', '2021-01-05 00:29:35', NULL, '2021-01-05 00:26:30', '2021-01-05 00:24:44', 2, 1),
(7, 1, '01210411081439', '102000', NULL, NULL, NULL, NULL, 1, 1),
(8, 1, '01211904068093', '102040', NULL, NULL, NULL, NULL, 1, 1),
(13, 1, '02210712243376', '102025', NULL, NULL, NULL, NULL, 1, 1),
(14, 1, '02210712328500', '102032', NULL, NULL, NULL, NULL, 1, 1),
(15, 1, '02210712323425', '102032', NULL, NULL, NULL, NULL, 1, 1),
(16, 1, '02210712357393', '102032', NULL, NULL, NULL, NULL, 1, 1),
(17, 1, '02210712361014', '102032', NULL, NULL, NULL, NULL, 1, 1),
(18, 1, '02210712459907', '102032', NULL, NULL, NULL, NULL, 1, 1),
(19, 4, '02210701376201', '102024', NULL, NULL, NULL, NULL, 1, 1),
(20, 1, '02210702079869', '102036', NULL, NULL, NULL, NULL, 1, 1),
(21, 1, '02210702159231', '102001', NULL, NULL, NULL, NULL, 1, 1),
(22, 1, '02210703229555', '102032', NULL, NULL, NULL, NULL, 1, 1),
(23, 1, '02210703248595', '102032', NULL, NULL, NULL, NULL, 1, 1),
(24, 1, '02210703338894', '102032', NULL, NULL, NULL, NULL, 1, 1),
(25, 1, '02210704047496', '102032', NULL, NULL, NULL, NULL, 1, 1),
(26, 1, '02210704055931', '102032', NULL, NULL, NULL, NULL, 1, 1),
(27, 1, '02210704061939', '102007', NULL, NULL, NULL, NULL, 1, 1),
(28, 1, '02210704071077', '102025', NULL, NULL, NULL, NULL, 1, 1),
(29, 1, '02210704091359', '102026', NULL, NULL, NULL, NULL, 1, 1),
(30, 1, '02210704099677', '102008', NULL, NULL, NULL, NULL, 1, 1),
(31, 1, '02210704101098', '102008', NULL, NULL, NULL, NULL, 1, 1),
(32, 1, '02210704114042', '102026', NULL, NULL, NULL, NULL, 1, 1),
(33, 1, '02210704194079', '102032', NULL, NULL, NULL, NULL, 1, 1),
(34, 1, '02210705079101', '102032', NULL, NULL, NULL, NULL, 1, 1),
(35, 1, '02210705175224', '102032', NULL, NULL, NULL, NULL, 1, 1),
(36, 1, '02210705184882', '102032', NULL, NULL, NULL, NULL, 1, 1),
(37, 1, '02210707117614', '102008', NULL, NULL, NULL, NULL, 1, 1),
(38, 1, '02210708435827', '102000', NULL, NULL, NULL, NULL, 1, 1),
(39, 1, '02210803163838', '102030', NULL, NULL, NULL, NULL, 1, 1),
(40, 1, '02210805274327', '102040', NULL, NULL, NULL, NULL, 1, 1),
(41, 1, '02211403256818', '102040', NULL, NULL, NULL, NULL, 1, 1),
(42, 1, '02211403262485', '102009', NULL, NULL, NULL, NULL, 1, 1),
(43, 1, '02211403281150', '102016', NULL, NULL, NULL, NULL, 1, 1),
(44, 1, '02211403304971', '102040', NULL, NULL, NULL, NULL, 1, 1),
(45, 1, '02211403326371', '102040', NULL, NULL, NULL, NULL, 1, 1),
(46, 1, '02211604146105', '102017', NULL, NULL, NULL, NULL, 1, 1),
(47, 1, '02211604359251', '102017', NULL, NULL, NULL, NULL, 1, 1),
(48, 1, '02211712073825', '102014', NULL, NULL, NULL, NULL, 1, 1),
(49, 1, '03211801133913', '102040', NULL, NULL, NULL, NULL, 1, 1),
(50, 1, '03212102339284', '102037', '2021-03-21 16:15:42', '2021-03-21 16:15:45', '2021-03-21 16:15:49', '2021-03-21 16:15:55', 5, 1),
(51, 1, '03212204061086', '102033', '2021-03-24 19:44:40', '2021-03-24 19:44:45', '2021-03-24 19:44:49', '2021-03-24 19:44:16', 4, 1),
(52, 1, '04210202374110', '102019', '2021-04-28 16:13:45', '2021-04-28 16:08:33', '2021-04-28 16:21:35', '2021-04-28 16:21:32', 4, 1),
(53, 1, '04210202448628', '102019', '2021-07-10 19:53:50', NULL, NULL, NULL, 2, 1),
(54, 1, '07211408094813', '102000', NULL, NULL, NULL, NULL, 1, 1),
(55, 1, '08212004235230', '102038', NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registered_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `registered_on`, `email`) VALUES
(1, '2020-03-18 14:42:22', 'mjk.limon@outlook.com'),
(2, '2020-03-18 14:42:22', 'jhmasterlimon@gmail.com'),
(3, '2020-03-18 14:42:22', 'jhmasterlimon11@gmail.com'),
(6, '2020-03-18 14:42:22', 'jhmasterlimon123@gmail.com'),
(7, '2020-09-16 22:01:30', 'it.rubelsaiful@gmail.com'),
(8, '2020-09-03 00:00:00', 'ponir440@gmail.com'),
(9, '2020-09-12 00:00:00', 'pappu440@gmail.com'),
(11, '2020-09-15 00:00:00', 'akash440@gmail.com'),
(12, '2020-09-16 22:02:36', 'skynetchowmuhani@gmail.com'),
(13, '2020-12-04 15:03:38', 'jhmasterlimon11@gmail.com'),
(14, '2020-12-04 15:10:50', 'mosfiqur1210@gmail.com'),
(17, '2021-02-10 17:47:36', 'mosfiqur121091@gmail.com'),
(18, '2021-03-21 14:22:08', 'sobujkhanlalmiya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

DROP TABLE IF EXISTS `page_contents`;
CREATE TABLE IF NOT EXISTS `page_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(99) NOT NULL,
  `header` varchar(900) CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `page`, `header`, `content`) VALUES
(1, 'about-us', 'About Us', '<p>Welcome to Shop, your number one source for all things \r\n[product, ie: shoes, bags, dog treats]. We\'re dedicated to giving you \r\nthe very best of [product], with a focus on [three characteristics, ie: \r\ndependability, customer service, and uniqueness.]</p>\r\n<p>Founded in [year] by [founder\'s name], [store name] has come a \r\na long way from its beginnings in a [starting location, ie: home office, \r\ntoolshed, Houston, TX.]. When [store founder] first started out, his/her\r\n passion for [passion of the founder, ie: helping other parents be more \r\neco-friendly, providing the best equipment for his fellow musicians] \r\ndrove him to [action, ie: do intense research, quit her day job], and \r\ngave him the impetus to turn hard work and inspiration into a booming\r\n online store. We now serve customers all over [place, ie: the US, the \r\nworld, the Austin area], and are thrilled to be a part of the \r\n[adjective, ie: quirky, eco-friendly, fair trade] wing of the [industry \r\ntype, ie: fashion, baked goods, watch] industry.</p>\r\n<p>We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don\'t hesitate to contact us.</p>\r\n<p>Sincerely,<br>Jahid Limon<br></p>'),
(4, 'payment-methods', 'payment-methods', '<p>Available Payment Methods</p><ol><li>bKash</li><li>Rocket</li><li>Visa/Master Card</li><li>Direct Bank Transfer</li><li>Cash on delivery system<br></li></ol><br>'),
(5, 'term-of-use', 'Term of Use', '<p>Welcome to <span class=\"highlight preview_website_name\">Our Shop</span>!</p>\r\n<p>These terms and conditions outline the rules and regulations for the use of <span class=\"highlight preview_company_name\">Company Name</span>\'s Website, located at <span class=\"highlight preview_website_url\">Website.com</span>.</p>\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use <span class=\"highlight preview_website_name\">Website Name</span> if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n<p>The following terminology applies to these Terms and Conditions, \r\nPrivacy Statement and Disclaimer Notice and all Agreements: “Client”, \r\n“You” and “Your” refers to you, the person log on this website and \r\ncompliant to the Company\'s terms and conditions. “The Company”, \r\n“Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, \r\n“Parties”, or “Us”, refers to both the Client and ourselves. All terms \r\nrefer to the offer, acceptance, and consideration of payment necessary to\r\n undertake the process of our assistance to the Client in the most \r\nthe appropriate manner for the express purpose of meeting the Client\'s needs\r\n in respect of the provision of the Company\'s stated services, in accordance\r\n with and subject to, prevailing law of Netherlands. Any use of the \r\nabove terminology or other words in the singular, plural, capitalization\r\n and/or he/she or they, are taken as interchangeable and therefore as \r\nreferring to the same.</p>\r\n<h3><strong>Cookies</strong></h3>\r\n<p>We employ the use of cookies. By accessing <span class=\"highlight preview_website_name\">Website Name</span>, you agreed to use cookies in agreement with the <span class=\"highlight preview_company_name\">Company Name</span>\'s Privacy Policy.</p>\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n<h3><strong>License</strong></h3>\r\n<p>Unless otherwise stated, <span class=\"highlight preview_company_name\">Company Name</span> and/or its licensors own the intellectual property rights for all material on <span class=\"highlight preview_website_name\">Website Name</span>. All intellectual property rights are reserved. You may access this from <span class=\"highlight preview_website_name\">Website Name</span> for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n<p>You must not:</p>\r\n<ul><li>Republish material from <span class=\"highlight preview_website_name\">Website Name</span></li><li>Sell, rent, or sub-license material from <span class=\"highlight preview_website_name\">Website Name</span></li><li>Reproduce, duplicate or copy material from <span class=\"highlight preview_website_name\">Website Name</span></li><li>Redistribute content from <span class=\"highlight preview_website_name\">Website Name</span></li></ul>\r\n<p>This Agreement shall begin on the date hereof.</p>\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. <span class=\"highlight preview_company_name\">Company Name</span> does not filter, edit, publish, or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of <span class=\"highlight preview_company_name\">Company Name</span>,its agents, and/or affiliates. Comments reflect the views and opinions of the person who posts their views and opinions. To the extent permitted by applicable laws, <span class=\"highlight preview_company_name\">Company Name</span> shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n<p><span class=\"highlight preview_company_name\">Company Name</span> \r\nreserves the right to monitor all Comments and to remove any Comments \r\nwhich can be considered inappropriate, offensive or causes breach of \r\nthese Terms and Conditions.</p>\r\n<p>You warrant and represent that:</p>\r\n<ul><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, \r\nincluding without limitation copyright, patent, or trademark of any third\r\n party;</li><li>The Comments do not contain any defamatory, libelous, offensive, \r\nindecent or otherwise unlawful material which is an invasion of privacy</li><li>Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul>\r\n<p>You hereby grant <span class=\"highlight preview_company_name\">Company Name</span>\r\n a non-exclusive license to use, reproduce, edit and authorize others to\r\n use, reproduce, and edit any of your Comments in any and all forms, \r\nformats or media.</p>\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n<ul><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same \r\nmanner as they hyperlink to the Websites of other listed businesses; and</li><li>Systemwide Accredited Businesses except soliciting non-profit \r\norganizations, charity shopping malls, and charity fundraising groups \r\nwhich may not hyperlink to our Web site.</li></ul>\r\n<p>These organizations may link to our home page, to publications or to \r\nother Website information so long as the link: (a) is not in any way \r\ndeceptive; (b) does not falsely imply sponsorship, endorsement or \r\napproval of the linking party and its products and/or services; and (c) \r\nfits within the context of the linking party\'s site.</p>\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n<ul><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul>\r\n<p>We will approve link requests from these organizations if we decide \r\nthat: (a) the link would not make us look unfavorably to ourselves or to\r\n our accredited businesses; (b) the organization does not have any \r\nnegative records with us; (c) the benefit to us from the visibility of \r\nthe hyperlink compensates the absence of <span class=\"highlight preview_company_name\">Company Name</span>; and (d) the link is in the context of general resource information.</p>\r\n<p>These organizations may link to our home page so long as the link: \r\n(a) is not in any way deceptive; (b) does not falsely imply sponsorship,\r\n endorsement or approval of the linking party and its products or \r\nservices; and (c) fits within the context of the linking party\'s site.</p>\r\n<p>If you are one of the organizations listed in paragraph 2 above and \r\nare interested in linking to our website, you must inform us by sending \r\nan e-mail to <span class=\"highlight preview_company_name\">Company Name</span>.\r\n Please include your name, your organization name, contact information \r\nas well as the URL of your site, a list of any URLs from which you \r\nintend to link to our Website, and a list of the URLs on our site to \r\nwhich you would like to link. Wait 2-3 weeks for a response.</p>\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n<ul><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that \r\nmakes sense within the context and format of content on the linking \r\nparty\'s site.</li></ul>\r\n<p>No use of <span class=\"highlight preview_company_name\">Company Name</span>\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n<h3><strong>iFrames</strong></h3>\r\n<p>Without prior approval and written permission, you may not create \r\nframes around our Webpages that alter in any way the visual presentation\r\n or appearance of our Website.</p>\r\n<h3><strong>Content Liability</strong></h3>\r\n<p>We shall not be hold responsible for any content that appears on your\r\n Website. You agree to protect and defend us against all claims that is \r\nrising on your Website. No link(s) should appear on any Website that may\r\n be interpreted as libelous, obscene or criminal, or which infringes, \r\notherwise violates, or advocates the infringement or other violation of,\r\n any third party rights.</p>\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n<p>We reserve the right to request that you remove all links or any \r\nparticular link to our Website. You approve to immediately remove all \r\nlinks to our Website upon request. We also reserve the right to amen \r\nthese terms and conditions and it\'s linking policy at any time. By \r\ncontinuously linking to our Website, you agree to be bound to and follow\r\n these linking terms and conditions.</p>\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n<p>If you find any link on our Website that is offensive for any reason,\r\n you are free to contact and inform us any moment. We will consider \r\nrequests to remove links but we are not obligated to or so or to respond\r\n to you directly.</p>\r\n<p>We do not ensure that the information on this website is correct, we \r\ndo not warrant its completeness or accuracy; nor do we promise to ensure\r\n that the website remains available or that the material on the website \r\nis kept up to date.</p>\r\n<h3><strong>Disclaimer</strong></h3>\r\n<p>To the maximum extent permitted by applicable law, we exclude all \r\nrepresentations, warranties and conditions relating to our website and \r\nthe use of this website. Nothing in this disclaimer will:</p>\r\n<ul><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul>\r\n<p>The limitations and prohibitions of liability set in this Section and\r\n elsewhere in this disclaimer: (a) are subject to the preceding \r\nparagraph; and (b) govern all liabilities arising under the disclaimer, \r\nincluding liabilities arising in contract, in tort and for breach of \r\nstatutory duty.</p>\r\n<p>As long as the website and the information and services on the \r\nwebsite are provided free of charge, we will not be liable for any loss \r\nor damage of any nature.</p>'),
(6, 'store-location', 'store-location', '<p>Dhaka Commerce is an award-winning creative design agency.</p><p>You’ll find the About Page at the top of the menu under the&nbsp;<em>Who&nbsp;</em>section.</p><p>This\r\n the page has a unique feel, thanks to the deconstructed action figures \r\nrepresenting the founders,&nbsp;Leigh Whipday and Jonny Lander.</p><p>The great attention&nbsp;to detail and interactivity also reflect the company’s 16 years of experience.</p><br><p>Our shop Locations: <br>Shop-46, Block #B, Bashundahra City Shopping Mall, Panthapath<br></p>'),
(7, 'photo-confirmations', 'photo-confirmations', '<p>When it comes to photos, <strong>when in doubt, assume it’s subject to copyright and don’t use it without the appropriate permission</strong>.\r\n What it comes down to is that if you need to use another person’s \r\nimage, make sure it fits clearly into one of the protected purposes or \r\nseek legal counsel if there is a significant investment of money or time\r\n in your project.</p>\r\n<p>Fair use may be an exception allowing you to use copyrighted images, but chances are you’ll be in for a discussion or possibly <strong>find your site taken down by your host if the copyright holder disagrees</strong>.\r\n Unfortunately, there are no significant cases that establish \r\nhard-and-fast rules when it comes to fair use and images used on the \r\nInternet.</p>\r\n<p>However, photographers and graphic artists often make a living from \r\nselling or licensing their work and if we all just poached what we \r\nwanted, we’d be circumventing not only the law but also interfering with\r\n their right to control how they distribute their images.</p>\r\n<p>Copyright fair use has been fought over when it comes to using words \r\nand images in print publications. The Internet, though, is still very \r\nmuch in its infancy when it comes to fair use guidance.</p>\r\n<p>Without bright line rules, we’re each <strong>left to interpret laws that were written long before digital communication was ever imagined</strong>\r\n and did not contemplate the ease of sharing that exists today. While it\r\n may be a remote possibility that the average blogger will be sued for \r\ncopyright infringement relating to an image, bear in mind that you may \r\nbe the proverbial “straw that broke the camel’s back.”</p>\r\n<p>If you’re considering taking images from large agencies, they have \r\nlegal teams that do nothing but look for infringing uses. There are \r\ninexpensive ways to search for images online, even if you change the \r\nfile name. And if you’re thinking you’ll just crop the image so you \r\ncan’t see the copyright notice or other identifying information, <strong>think twice about that because the penalty for doing so is very stiff</strong>— up to $25,000, plus attorney fees and damages.</p>\r\n<p>There are many <span class=\"external\">resources for free images</span>,\r\n whether public domain, licensed creative commons or inexpensive stock \r\nimages, so you really shouldn’t need to use copyright-protected works \r\nfor beautifying your site, creating that cool presentation or making a video. But if you really have to have <em>that</em> image, <strong>ask first. You’d be surprised at how many people would gladly grant permission</strong> for use of their images.</p>\r\n<p><em>Fair use doesn’t mean fair game</em>, but it’s there to allow for uses that will benefit society and the public good. Don’t be afraid to use images. <strong>Use this information to make good decisions and you’re likely to be just fine</strong>. Always, though, if in doubt leave it out (or get permission or ask a lawyer).</p>\r\n<p><strong>What do you think? </strong>Leave your questions and comments in the box below.</p>\r\n<p><em>Disclosure</em>: While Sara Hawkins is an attorney, this article is for informational purposes only and is not to be considered legal advice.<br>\r\n*Not intended to be legal advice.</p>'),
(8, 'shipping-returns', 'shipping-returns', '<p><strong>1. Returns</strong></p>\r\n<p><em><span>Option 1 – No Refunds/Exchanges:</span></em></p>\r\n<p><span>We do not accept returns or exchanges unless the item you purchased is defective. If you receive a defective item, please contact us</span><span><strong> </strong></span><span>with details of the product and the defect. You can send the item you consider defective to the company address:</span></p>\r\n<p><em>Visit the contact us page.</em></p><br>\r\n<p><span>Upon receipt of the returned product, we will fully examine it \r\nand notify you via e-mail, within a reasonable period of time, whether \r\nyou are entitled to a refund or a replacement as a result of the defect.\r\n If you are entitled to a replacement or refund, we will replace the \r\nproduct or refund the purchase price, using the original method of \r\npayment.</span></p>\r\n<span><br>\r\n</span>\r\n<p><em><span>Option 2 – Refunds Permitted:</span></em></p>\r\n<p><span>We accept returns. You can return unopened items in the original packaging within 30 days of your purchase with receipt or proof of purchase. If 30 days or more have passed since your purchase, we cannot offer you a refund or an exchange.</span></p>\r\n<p><span>Upon receipt of the returned item, we will fully examine it and\r\n notify you via email, within a reasonable period of time, whether you \r\nare entitled to a return. If you are entitled to a return, we will \r\nrefund your purchase price and a credit will automatically be applied to\r\n your original method of payment.</span></p>\r\n<p><span>Only regular priced items may be refunded. Sale items are non-refundable.</span></p>\r\n<p><span>To follow-up on the status of your return, please contact us</span><span>.</span></p>\r\n<span>&nbsp;</span>\r\n<p><span><strong>2. Exchanges <br></strong></span></p>\r\n<p><span>We only exchange goods if they are defective or damaged. In circumstances where you consider that a product is defective, you should promptly contact us. </span><span><strong></strong></span><span>with details of the product and the defect. You can send the item you consider defective to:</span></p>\r\n<span>&nbsp;</span>\r\n<p><em>Visit the contact us page.</em></p>\r\n<span>&nbsp;</span>\r\n<p><span>Upon receipt of the returned product, we will fully examine it and notify you via e-mail, within a reasonable period of time, whether you are entitled to a replacement as a result of the defect. If you are eligible, we will send you a replacement product.</span></p>\r\n<span><strong>&nbsp;</strong></span>\r\n<p><span><strong>3. Exceptions<br></strong></span></p>\r\n<p><span>Some items are non-refundable and non-exchangeable. These include: </span><span><strong>[list items]</strong></span></p>\r\n<span><strong>&nbsp;</strong></span>\r\n<p><span><strong>4. Shipping</strong></span></p>\r\n<p><span>To return the item you purchased, please mail it to:</span></p>\r\n<span><strong>&nbsp;</strong></span>\r\n<p><em>Visit the contact us page.</em></p>\r\n<span>&nbsp;</span>\r\n<p><span>Refunds do not include any shipping and handling charges shown on the packaging slip or invoice. Shipping charges for all returns must be prepaid and insured by you. You are responsible for any loss or damage to hardware during shipment. We do not guarantee that we will receive your returned item. Shipping and handling charges are not refundable. Any amounts refunded will not include the cost of shipping.</span></p>'),
(9, 'testimonials', 'testimonials', '<p><em>\"Fantastic, I\'m totally blown away by This site\"</em><br><em>Jack F.</em></p>\r\n        <p><em>\"This is unbelievable. After using&nbsp; e-Commerce my daily life skyrocketed!\"</em><br><em>Rick E.</em></p><br><p><em>\"Fastest delivery system.\"</em></p><p><em>John</em><em> E.</em></p><p><em></em></p>'),
(10, 'privacy-policy', 'privacy-policy', '<p class=\"main\">\r\n<p class=\"article\" id=\"content\">\r\n<p id=\"placeholders\">\r\n<h2>Privacy Policy <br></h2>\r\n<p>At <span class=\"highlight preview_website_name\">Website Name</span>, accessible at <span class=\"highlight preview_website_url\">Website.com</span>,\r\n one of our main priorities is the privacy of our visitors. This Privacy policy document contains types of information that are collected and recorded by <span class=\"highlight preview_website_name\">Website Name</span> and how we use it.</p>\r\n<p>If you have additional questions or require more information about \r\nour Privacy Policy, do not hesitate to contact us through email at <span class=\"highlight preview_email_address\">Email@Website.com</span></p>\r\n<p>This privacy policy applies only to our online activities and is \r\nvalid for visitors to our website with regards to the information that \r\nthey shared and/or collect in <span class=\"highlight preview_website_name\">Website Name</span>. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n<p><strong>Consent</strong></p>\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n<p><strong>Information we collect</strong></p>\r\n<p>The personal information that you are asked to provide, and the \r\nreasons why you are asked to provide it, will be made clear to you at \r\nthe point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information \r\nabout you such as your name, email address, phone number, the contents \r\nof the message and/or attachments you may send us, and any other \r\ninformation you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact \r\ninformation, including items such as name, company name, address, email \r\naddress, and telephone number.</p>\r\n<p><strong>How we use your information</strong></p>\r\n<p>We use the information we collect in various ways, including to:</p>\r\n<ul><li>Provide, operate, and maintain our webste</li><li>Improve, personalize, and expand our webste</li><li>Understand and analyze how you use our webste</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our \r\npartners, including for customer service, to provide you with updates \r\nand other information relating to the webste, and for marketing and \r\npromotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul>\r\n<p><strong>Log Files</strong></p>\r\n<p><span class=\"highlight preview_website_name\">Website Name</span> \r\nfollows a standard procedure of using log files. These files log \r\nvisitors when they visit websites. All hosting companies do this and a \r\npart of hosting services\' analytics. The information collected by log \r\nfiles include internet protocol (IP) addresses, browser type, Internet \r\nService Provider (ISP), date and time stamp, referring/exit pages, and \r\npossibly the number of clicks. These are not linked to any information \r\nthat is personally identifiable. The purpose of the information is for \r\nanalyzing trends, administering the site, tracking users\' movement on \r\nthe website, and gathering demographic information.</p>\r\n<h3>Cookies and Web Beacons</h3>\r\n<p>Like any other website, <span class=\"highlight preview_website_name\">Website Name</span>\r\n uses ‘cookies\'. These cookies are used to store information including \r\nvisitors\' preferences, and the pages on the website that the visitor \r\naccessed or visited. The information is used to optimize the users\' \r\nexperience by customizing our web page content based on visitors\' \r\nbrowser type and/or other information.</p>\r\n<h3>DoubleClick DART Cookie</h3>\r\n<p>Google is one of a third-party vendor on our site. It also uses \r\ncookies, known as DART cookies, to serve ads to our site visitors based \r\nupon their visit to www.website.com and other sites on the internet. \r\nHowever, visitors may choose to decline the use of DART cookies by \r\nvisiting the Google ad and content network Privacy Policy at the \r\nfollowing URL – <a href=\"https://policies.google.com/technologies/ads\" target=\"_blank\" rel=\"noopener noreferrer\">https://policies.google.com/technologies/ads</a>.</p>\r\n<p>Some of advertisers on our site may use cookies and web beacons. Our \r\nadvertising partners are listed below. Each of our advertising partners \r\nhas their own Privacy Policy for their policies on user data. For easier\r\n access, we hyperlinked to their Privacy Policies below.</p>\r\n<ul><li>\r\n<p>Google</p>\r\n<p><a href=\"https://policies.google.com/technologies/ads\" rel=\"noopener noreferrer\">https://policies.google.com/technologies/ads</a></p>\r\n</li></ul>\r\n<p><strong>Advertising Partners Privacy Policies</strong></p>\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of <span class=\"highlight preview_website_name\">Website Name</span>.</p>\r\n<p>Third-party ad servers or ad networks uses technologies like cookies,\r\n JavaScript, or Web Beacons that are used in their respective \r\nadvertisements and links that appear on <span class=\"highlight preview_website_name\">Website Name</span>,\r\n which are sent directly to users\' browser. They automatically receive \r\nyour IP address when this occurs. These technologies are used to measure\r\n the effectiveness of their advertising campaigns and/or to personalize \r\nthe advertising content that you see on websites that you visit.</p>\r\n<p>Note that <span class=\"highlight preview_website_name\">Website Name</span> has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n<p><strong>Third-Party Privacy Policies</strong></p>\r\n<p><span class=\"highlight preview_website_name\">Website Name</span>\'s \r\nPrivacy Policy does not apply to other advertisers or websites. Thus, we\r\n are advising you to consult the respective Privacy Policies of these \r\nthird-party ad servers for more detailed information. It may include \r\ntheir practices and instructions about how to opt-out of certain \r\noptions. You may find a complete list of these Privacy Policies and \r\ntheir links here: Privacy Policy Links.</p>\r\n<p>You can choose to disable cookies through your individual browser \r\noptions. To know more detailed information about cookie management with \r\nspecific web browsers, it can be found at the browsers\' respective \r\nwebsites. What Are Cookies?</p>\r\n<p><strong>CCPA Privacy Policy (Do Not Sell My Personal Information)</strong></p>\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data \r\ndisclose the categories and specific pieces of personal data that a \r\nbusiness has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you \r\nwould like to exercise any of these rights, please contact us.</p>\r\n<p><strong>GDPR Privacy Policy (Data Protection Rights)</strong></p>\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access – You have the right to request copies of your \r\npersonal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification – You have the right to request that we \r\ncorrect any information you believe is inaccurate. You also have the \r\nright to request that we complete the information you believe is \r\nincomplete.</p>\r\n<p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing – You have the right to request that\r\n we restrict the processing of your personal data, under certain \r\nconditions.</p>\r\n<p>The right to object to processing – You have the right to object to \r\nour processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability – You have the right to request that we\r\n transfer the data that we have collected to another organization, or \r\ndirectly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you \r\nwould like to exercise any of these rights, please contact us.</p>\r\n<p><strong>Children\'s Information</strong></p>\r\n<p>Another part of our priority is adding protection for children while \r\nusing the internet. We encourage parents and guardians to observe, \r\nparticipate in, and/or monitor and guide their online activity.</p>\r\n<p><span class=\"highlight preview_website_name\">Website Name</span> does\r\n not knowingly collect any Personal Identifiable Information from \r\nchildren under the age of 13. If you think that your child provided this\r\n kind of information on our website, we strongly encourage you to \r\ncontact us immediately and we will do our best efforts to promptly \r\nremove such information from our records.</p>\r\n</p>\r\n</p>\r\n</p>'),
(11, 'locations-we-ship-to', 'locations-we-ship-to', '<p><img src=\"https://i.imgur.com/zdTogPn.jpg\" alt=\"\" width=\"50%\"></p><br><p>Our Delivery locations:</p><p><strong>Local Shipping</strong></p><ul><li>Dhaka metropolitan area<br></li><li>Chittagong metropolitan area</li><li>Other local cities.</li></ul><p>International Shipping via <strong>DHL, FedEx, China Shipping</strong><br></p><br>');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(99) CHARACTER SET utf8 NOT NULL,
  `trxn_id` varchar(99) NOT NULL,
  `amount` int(11) NOT NULL,
  `full_info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `date`, `method`, `trxn_id`, `amount`, `full_info`, `status`) VALUES
(1, '2020-03-18 20:04:58', 'Cash on delivery', '', 500, '', 2),
(12, '2020-12-13 14:10:07', 'bKash', 'ilm5fd5cc5f8c3ea2.66809012', 0, '01956758055\nasdfg12345', 1),
(13, '2020-12-14 12:07:55', 'Cash On Delivery', 'ilm5fd7013b5eb685.00851989', 140, '', 1),
(14, '2020-12-14 12:08:35', 'Cash On Delivery', 'ilm5fd70163807d97.78649783', 140, '', 1),
(15, '2020-12-14 12:13:39', 'bKash', 'ilm5fd70292f0cd82.30078124', 175, '01956758055\nasdfg12345', 1),
(16, '2020-12-14 12:14:03', 'bKash', 'ilm5fd702ab3eb426.97012089', 175, '01956758055\nasdfg12345', 1),
(19, '2021-01-02 14:39:02', 'Cash On Delivery', 'ilm5ff03126be5c45.30201663', 3864, '', 1),
(20, '2021-01-02 14:49:43', 'Cash On Delivery', 'ilm5ff033a73fa282.88823779', 3864, '', 1),
(21, '2021-01-03 12:04:17', 'Cash On Delivery', 'ilm5ff15e61bbf275.95100781', 2446, '', 1),
(22, '2021-01-04 10:56:18', 'Cash On Delivery', 'ilm5ff29ff2c6ef52.58460131', 132, '', 1),
(23, '2021-01-04 11:08:46', 'Cash On Delivery', 'ilm5ff2a2decef0b2.11207674', 132, '', 1),
(24, '2021-01-19 16:06:00', 'bKash', 'ilm6006af08e16788.24198067', 30040, '0123456789\nasdfg12345', 1),
(29, '2021-02-07 12:24:23', 'Cash On Delivery', 'ilm601f879701c968.77910783', 60, '', 1),
(30, '2021-02-07 12:32:04', 'Cash On Delivery', 'ilm601f89642916b3.16002617', 130, '', 1),
(31, '2021-02-07 12:32:25', 'Cash On Delivery', 'ilm601f8979a5e661.56637822', 130, '', 1),
(32, '2021-02-07 12:35:13', 'Cash On Delivery', 'ilm601f8a21b60c90.20337902', 130, '', 1),
(33, '2021-02-07 12:36:40', 'Cash On Delivery', 'ilm601f8a78d0dd05.09310451', 170, '', 1),
(34, '2021-02-07 12:45:41', 'Cash On Delivery', 'ilm601f8c95effef9.76246006', 170, '', 1),
(35, '2021-02-07 12:48:39', 'Cash On Delivery', 'ilm601f8d47eb67d8.03724029', 170, '', 1),
(36, '2021-02-07 12:49:13', 'Cash On Delivery', 'ilm601f8d690f6690.50091377', 170, '', 1),
(37, '2021-02-07 12:49:46', 'Cash On Delivery', 'ilm601f8d8a556901.92250876', 170, '', 1),
(38, '2021-02-07 12:50:53', 'Cash On Delivery', 'ilm601f8dcd8f8ba4.20448866', 170, '', 1),
(39, '2021-02-07 12:52:49', 'Cash On Delivery', 'ilm601f8e41ad7393.58750623', 170, '', 1),
(40, '2021-02-07 12:54:04', 'Cash On Delivery', 'ilm601f8e8c2907e5.21807699', 170, '', 1),
(41, '2021-02-07 12:54:27', 'Cash On Delivery', 'ilm601f8ea3ce8048.72441412', 170, '', 1),
(42, '2021-02-07 12:54:39', 'Cash On Delivery', 'ilm601f8eaf17c906.60783319', 170, '', 1),
(43, '2021-02-07 12:54:48', 'Cash On Delivery', 'ilm601f8eb83f1385.63265371', 170, '', 1),
(44, '2021-02-07 12:55:40', 'Cash On Delivery', 'ilm601f8eeca9a0e8.62649422', 170, '', 1),
(45, '2021-02-07 12:57:01', 'Cash On Delivery', 'ilm601f8f3d6aada2.15888728', 170, '', 1),
(46, '2021-02-07 12:59:19', 'Cash On Delivery', 'ilm601f8fc71b4fa3.52755840', 170, '', 1),
(47, '2021-02-07 12:59:45', 'Cash On Delivery', 'ilm601f8fe1ce9c19.29839685', 170, '', 1),
(48, '2021-02-07 13:37:38', 'Cash On Delivery', 'ilm601f98c20516d7.46611908', 170, '', 1),
(49, '2021-02-07 14:07:39', 'bKash', 'ilm601f9fcb466fa4.74075765', 170, '01956758055\nasdfg123456', 1),
(50, '2021-02-07 14:15:37', 'Cash On Delivery', 'ilm601fa1a90d0721.44811408', 170, '', 1),
(51, '2021-02-07 15:22:00', 'bKash', 'ilm601fb138a69b65.96460570', 170, '01956758055\nsolaimansukhon', 1),
(52, '2021-02-07 15:24:13', 'bKash', 'ilm601fb1bdd394d3.37207001', 170, '01956758055\nsolaimansukhon', 1),
(53, '2021-02-07 15:33:28', 'Cash On Delivery', 'ilm601fb3e8c14ed9.55736720', 170, '', 1),
(54, '2021-02-07 16:04:36', 'Cash On Delivery', 'ilm601fbb3435d542.17663060', 170, '', 1),
(55, '2021-02-07 16:05:38', 'Cash On Delivery', 'ilm601fbb72ea2505.53017920', 170, '', 1),
(56, '2021-02-07 16:06:15', 'Cash On Delivery', 'ilm601fbb9728d4b9.61345628', 170, '', 1),
(57, '2021-02-07 16:07:37', 'Cash On Delivery', 'ilm601fbbe9622f87.81986811', 170, '', 1),
(58, '2021-02-07 16:09:04', 'Cash On Delivery', 'ilm601fbc401d25d9.71983836', 170, '', 1),
(59, '2021-02-07 16:09:33', 'Cash On Delivery', 'ilm601fbc5d88cfd3.73921812', 170, '', 1),
(60, '2021-02-07 16:10:40', 'Cash On Delivery', 'ilm601fbca0322ae4.06727058', 170, '', 1),
(61, '2021-02-07 16:11:50', 'Cash On Delivery', 'ilm601fbce66c4243.08775576', 170, '', 1),
(62, '2021-02-07 16:19:46', 'Cash On Delivery', 'ilm601fbec2264e93.02097887', 170, '', 1),
(63, '2021-02-07 17:07:26', 'Cash On Delivery', 'ilm601fc9ee248191.76763887', 170, '', 1),
(64, '2021-02-07 17:17:33', 'Cash On Delivery', 'ilm601fcc4d3f3284.26060719', 170, '', 1),
(65, '2021-02-07 17:18:14', 'Cash On Delivery', 'ilm601fcc761850e1.34348527', 170, '', 1),
(66, '2021-02-07 19:11:14', 'Cash On Delivery', 'ilm601fe6f29c0355.14536408', 140, '', 1),
(67, '2021-02-07 20:43:53', 'Cash On Delivery', 'ilm601ffca90715c8.87925678', 140, '', 1),
(68, '2021-02-08 15:16:15', 'bKash', 'ilm6021015fd2fb13.61505640', 100, '0123456789\nasdfg12345', 1),
(69, '2021-02-08 17:27:57', 'Cash On Delivery', 'ilm6021203d251bc1.44242171', 30090, '', 1),
(70, '2021-02-14 15:25:42', 'Cash On Delivery', 'ilm6028ec9684e752.88585000', 235, '', 1),
(71, '2021-02-14 15:26:09', 'Cash On Delivery', 'ilm6028ecb12dd004.91451817', 235, '', 1),
(72, '2021-02-14 15:28:15', 'Cash On Delivery', 'ilm6028ed2f04dc58.15133160', 235, '', 1),
(73, '2021-02-14 15:30:24', 'Cash On Delivery', 'ilm6028edb0504a43.94669765', 235, '', 1),
(74, '2021-02-14 15:32:52', 'Cash On Delivery', 'ilm6028ee440a9ed6.52953799', 235, '', 1),
(75, '2021-02-16 16:14:54', 'Cash On Delivery', 'ilm602b9b1e4d7ab9.78581368', 150, '', 1),
(76, '2021-02-16 16:35:08', 'Cash On Delivery', 'ilm602b9fdc7405d4.28636267', 150, '', 1),
(77, '2021-02-16 16:36:41', 'Cash On Delivery', 'ilm602ba0397ecb51.85521354', 150, '', 1),
(78, '2021-02-16 16:37:18', 'Cash On Delivery', 'ilm602ba05e0fb3b7.15156178', 150, '', 1),
(79, '2021-02-16 16:37:48', 'Cash On Delivery', 'ilm602ba07c192493.74075666', 150, '', 1),
(80, '2021-02-16 19:57:02', 'Cash On Delivery', 'ilm602bcf2e102dd8.54042086', 150, '', 1),
(81, '2021-02-16 19:57:20', 'Cash On Delivery', 'ilm602bcf4007f086.78150347', 150, '', 1),
(82, '2021-02-16 19:57:53', 'Cash On Delivery', 'ilm602bcf617ea9d4.73180403', 150, '', 1),
(83, '2021-02-16 20:06:05', 'Cash On Delivery', 'ilm602bd14d386553.35311825', 150, '', 1),
(84, '2021-02-16 20:19:32', 'Cash On Delivery', 'ilm602bd4740cbc88.04834714', 150, '', 1),
(85, '2021-02-17 12:07:21', 'bKash', 'ilm602cb299998771.98521362', 100, '01956758055\nasdfg12345', 1),
(86, '2021-02-17 17:35:58', 'Cash On Delivery', 'ilm602cff9e7adf45.11584272', 120, '', 1),
(87, '2021-02-17 17:43:06', 'Cash On Delivery', 'ilm602d014a75a5b1.09375485', 120, '', 1),
(88, '2021-02-17 17:43:22', 'Cash On Delivery', 'ilm602d015a60e200.95437753', 120, '', 1),
(89, '2021-02-17 17:45:34', 'Cash On Delivery', 'ilm602d01de208df4.96823393', 120, '', 1),
(90, '2021-02-17 17:45:59', 'Cash On Delivery', 'ilm602d01f79412f0.55796004', 120, '', 1),
(91, '2021-02-18 18:59:49', 'Cash On Delivery', 'ilm602e64c5b200d0.18386046', 150, '', 1),
(92, '2021-03-17 19:25:10', 'Cash On Delivery', 'ilm60520336757667.75248146', 24092, '', 1),
(93, '2021-03-18 13:12:50', 'Cash On Delivery', 'ilm6052fd7288a1c2.50934754', 24092, '', 1),
(94, '2021-03-18 13:13:33', 'Cash On Delivery', 'ilm6052fd9d0f2184.17968575', 24092, '', 1),
(95, '2021-03-21 14:33:08', 'Cash On Delivery', 'ilm605704c4e29299.24719167', 40, '', 1),
(96, '2021-03-22 16:06:04', 'Cash On Delivery', 'ilm60586c0ca54792.53677464', 90, '', 1),
(97, '2021-04-02 00:37:22', 'Cash On Delivery', 'ilm606612e20a9f26.30767475', 100, '', 1),
(98, '2021-04-02 01:46:55', 'Cash On Delivery', 'ilm6066232fe574d3.88896473', 100, '', 1),
(99, '2021-04-02 01:52:20', 'Cash On Delivery', 'ilm606624743ac2d3.44115624', 100, '', 1),
(100, '2021-04-02 01:55:45', 'Cash On Delivery', 'ilm6066254172eb15.11883795', 100, '', 1),
(101, '2021-04-02 01:56:42', 'Cash On Delivery', 'ilm6066257a1a3eb4.29839206', 100, '', 1),
(102, '2021-04-02 01:59:42', 'Cash On Delivery', 'ilm6066262e7a0449.20511180', 100, '', 1),
(103, '2021-04-02 02:04:56', 'Cash On Delivery', 'ilm606627684235c4.20444629', 100, '', 1),
(104, '2021-04-02 02:05:33', 'Cash On Delivery', 'ilm6066278d5db870.84043297', 100, '', 1),
(105, '2021-04-02 02:07:59', 'Cash On Delivery', 'ilm6066281f4d6957.56237572', 100, '', 1),
(106, '2021-04-02 02:12:32', 'Cash On Delivery', 'ilm60662930f273e7.29905108', 100, '', 1),
(107, '2021-04-02 09:37:50', 'bKash', 'ilm60662f1e2c5845.18880817', 100, '', 2),
(108, '2021-04-02 02:44:34', 'bKash', 'ilm606630b2676e78.35067852', 100, '01956758055\nsolaimansukhon', 1),
(109, '2021-07-14 20:09:31', 'Cash On Delivery', 'ilm60eef01b6b2736.17015832', 100, '', 1),
(110, '2021-08-20 16:23:17', 'Cash On Delivery', 'ilm611f829568dfb3.88252008', 150, '', 1),
(111, '2021-09-09 13:47:18', 'Cash On Delivery', 'ilm6139bc06c82e34.14949521', 30, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pmnt_gateways`
--

DROP TABLE IF EXISTS `pmnt_gateways`;
CREATE TABLE IF NOT EXISTS `pmnt_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) CHARACTER SET utf8 NOT NULL,
  `ins_1` varchar(900) NOT NULL,
  `ins_2` varchar(900) NOT NULL,
  `ins_3` varchar(900) NOT NULL,
  `additional` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmnt_gateways`
--

INSERT INTO `pmnt_gateways` (`id`, `name`, `ins_1`, `ins_2`, `ins_3`, `additional`, `status`) VALUES
(2, 'Cash On Delivery', '', '', '', '', 1),
(3, 'bKash', '', '', '', 'Simple<br>', 1),
(4, 'Rocket', '', '', '', '', 1),
(5, 'SSLCommerz', 'SSL Store ID_-_dhakasolutionecom', 'SSL Store Password_-_12345', '', 'Visa, Mastercard, Bkash Rocket and others..<br>', 0),
(6, 'PortWallet', 'App Key_-_', 'Secret Key_-_', '', '', 0),
(7, 'aamarPay', 'aamarPay Store ID_-_', 'Siganture Key_-_', '', '', 0),
(8, 'Paypal', 'Live Client ID_-_', 'Live Secret ID_-_', '', '', 0),
(9, 'Stripe', 'Secret Key_-_', 'Publishable Key_-_', '', '', 0),
(10, 'Bank Payment', '', '', '', '', 0),
(11, 'Nagad', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `procat`
--

DROP TABLE IF EXISTS `procat`;
CREATE TABLE IF NOT EXISTS `procat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` varchar(90) CHARACTER SET utf8 NOT NULL,
  `main_bn` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `sub` varchar(90) CHARACTER SET utf8 NOT NULL,
  `header` varchar(900) CHARACTER SET utf8 NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procat`
--

INSERT INTO `procat` (`id`, `main`, `main_bn`, `sub`, `header`, `position`) VALUES
(55, 'Men', 'long sleeve', 'T-shirts', 'Clothing', 1),
(56, 'Men', 'short sleeve', 'Shirt', 'Clothing', 2),
(57, 'Men', 'long sleeve', 'Shirt', 'Clothing ', 1),
(58, 'Men', '', 'Long pants', 'Clothing', 3),
(59, 'Men', '', 'Short pants', 'Clothing ', 4),
(64, 'Women', 'long sleeve', 'Tops & t-shirts', 'Clothing ', 25),
(65, 'Women ', 'short sleeve', 'Tops & t-shirts', 'Clothing', 2),
(66, 'Women', '', 'Shirts', 'Clothing', 26),
(67, 'Women', '', 'Pants & leggings', 'Clothing', 27),
(68, 'Women', '', 'Jackets', 'Clothing ', 28),
(69, 'Women', '', 'Sweaters', 'Clothing', 29),
(70, 'Kids', 'long sleeve', 'T-shirt', 'Boy\'s clothing', 44),
(71, 'Kids', 'short sleeve', 'T-shirt', 'Boy\'s clothing', 3),
(73, 'Kids', 'long sleeve', 'Shirts', 'Boy\'s clothing', 45),
(74, 'Kids', 'short sleeve', 'Shirts', 'Boy\'s clothing', 3),
(75, 'Kids', '', 'Pants & trousers', 'Boy\'s clothing', 46),
(76, 'Kids', '', 'Caps', 'Boy\'s clothing', 47),
(77, 'Kids', '', 'Sweaters', 'Boy\'s clothing', 48),
(78, 'Kids', 'long sleeve', 'Tops & t-shirts', 'Girl\'s clothing', 49),
(79, 'Kids', 'short sleeve', 'Tops & t-shirts', 'Girl\'s clothing', 3),
(81, 'Kids', '', 'Frocks', 'Girl\'s clothing', 50),
(82, 'Kids', '', 'Pants & leggings', 'Girl\'s clothing', 51),
(83, 'Kids ', '', 'T-shirt', 'Baby boys', 52),
(84, 'Kids', '', 'Shirt', 'Baby boys', 53),
(85, 'Kids', '', 'Pant', 'Baby boys', 54),
(86, 'Kids', '', 'Tops & t-shirts', 'Baby girls', 55),
(87, 'Kids', '', 'Frock', 'Baby girls ', 56),
(88, 'Kids', '', 'Pant ', 'Baby girls', 57),
(89, 'Winter', '', 'Jackets', 'Clothing', 59),
(90, 'Winter', '', 'Sweaters', 'Clothing', 60),
(91, 'Winter', '', 'Caps', 'Clothing', 61),
(92, 'Men', '', 'Sandals & foot-feet', 'Footwear', 5),
(97, 'Men', '', 'Formal shoes', 'Footwear', 6),
(98, 'Men', '', 'Casual shoes', 'Footwear', 7),
(99, 'Men', '', 'Sport shoes', 'Footwear', 8),
(100, 'Men', '', 'Converse & sneakers', 'Footwear', 9),
(101, 'Men', '', 'Belt', 'Men\'s accessories', 10),
(102, 'Men', '', 'Wallet', 'Men\'s accessories', 11),
(103, 'Men', '', 'Bags', 'Men\'s accessories', 12),
(104, 'Men', '', 'Jewelry', 'Men\'s accessories', 13),
(105, 'Men', '', 'Sunglass', 'Men\'s eyewear', 14),
(106, 'Men', '', 'Frames', 'Men\'s eyewear', 15),
(107, 'Men', '', 'Swimming goggles', 'Men\'s eyewear', 16),
(108, 'Men', '', 'Spectacles', 'Men\'s eyewear', 17),
(109, 'Men', '', 'Skin care', 'Grooming & wellness', 18),
(110, 'Men', '', 'Hair care', 'Grooming & wellness', 19),
(111, 'Men', '', 'Body care', 'Grooming & wellness', 20),
(112, 'Men', '', 'Denim', 'Pant', 23),
(113, 'Men', '', 'Perfume', 'Grooming & wellness', 21),
(114, 'Men', '', 'Deodorant', 'Grooming & wellness', 22),
(115, 'Men', '', 'Original watches', 'Gent\'s watches', 24),
(116, 'Women', '', 'Earring', 'Jewelry', 30),
(117, 'Women', '', 'Bangles', 'Jewelry', 31),
(118, 'Women', '', 'Bracelet', 'Jewelry', 32),
(119, 'Women', '', 'Finger ring', 'Jewelry', 33),
(121, 'Women', '', 'Perfume', 'Beauty & care', 34),
(122, 'Women', '', 'Deodorant', 'Beauty & care', 35),
(123, 'Women', '', 'Kurti', 'Imported dress', 40),
(124, 'Women', '', 'Skin care', 'Beauty & care', 36),
(125, 'Women', '', 'Hair care', 'Beauty & care', 37),
(126, 'Women', '', 'Makeup', 'Beauty & care', 38),
(127, 'Women', '', 'Hand care', 'Beauty & care', 39),
(129, 'Women', '', 'Eyewear', 'Other', 41),
(130, 'Women', '', 'Sunglass', 'Other', 42),
(132, 'Women', '', 'Eye wear frame', 'Other', 43),
(133, 'Winter', '', 'Shirts', 'Clothing', 62),
(134, 'Winter', '', 'Long sleeve shirts', 'Men', 63),
(138, 'Electronics', '', 'Huawei', 'Mobile ', 58),
(177, 'Flash deal', '', '', '', 0),
(178, 'Electronics', '', 'Smart TV', 'Home Appliance', 100),
(179, 'Electronics', '', 'Washing Machine', 'Home Appliance', 100);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `category` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `brand` varchar(90) CHARACTER SET utf8 NOT NULL,
  `size` varchar(90) NOT NULL,
  `colors` varchar(9000) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `discount` float NOT NULL,
  `images` varchar(90) NOT NULL,
  `date_added` datetime DEFAULT CURRENT_TIMESTAMP,
  `item_left` int(11) NOT NULL,
  `others` text CHARACTER SET utf8,
  `status` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `merchant_id`, `brand`, `size`, `colors`, `description`, `price`, `views`, `discount`, `images`, `date_added`, `item_left`, `others`, `status`) VALUES
(102000, 'Erotas Fashion বাংলা', 106, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">???????Photography ? Device ?? ????? ?????? ?? ??????? ????? ??? ??? ?????</span><br></p>', 0, 138, 10, '3', '2019-11-24 00:00:00', 0, '0', 2),
(102001, 'Erotas Polo T-Shirt:EPL-601', 112, 1, 'Erotas Fashion', '30,32,34', '', 'Brand: Erotas Fashion.', 0, 117, 0, '3', '2019-11-24 00:00:00', 0, '0', 2),
(102002, 'Erotas Polo T-Shirt:EPL-602', 92, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 122, 0, '3', '2019-11-24 00:00:00', 0, '0', 2),
(102003, 'Erotas Polo T-Shirt:EPL-603', 114, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 115, 0, '3', '2019-11-24 00:00:00', 0, '0', 2),
(102004, 'Erotas Polo T-Shirt:EPL-604', 101, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 124, 0, '5', '2019-11-24 00:00:00', 0, '0', 2),
(102005, 'Erotas Polo T-Shirt:EPL-605', 115, 1, 'Erotas Fashion', '', 'green', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Outlet 01:&nbsp;</span><a href=\"http://bondonshop.com/?fbclid=IwAR1yimVv0cbNhOf77oUzFMqY_3J91QRUmjECBBbhGI-RBab_wLy55Q1Hxgc\" rel=\"nofollow noopener\" target=\"_blank\" data-lynx-mode=\"asynclazy\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1yimVv0cbNhOf77oUzFMqY_3J91QRUmjECBBbhGI-RBab_wLy55Q1Hxgc&amp;h=AT3FNY-4s0sStDzXY0Mi0G34QkZeBFKgqK7wzmNpdMUf3XKP7xkWGnG4rRVK0QEO0qsZyC0Bb7ZY4UIJtbjEs-oQxe_LTxG7s15-I1AFAx_8mZisMShIV7MpYYcBo-z9QT6d5ulv\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Bondonshop.com</a><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 114, 0, '2', '2019-11-24 00:00:00', 0, '0', 2),
(102006, 'Erotas Polo T-Shirt:EPC-701', 57, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 139, 0, '3', '2019-11-24 00:00:00', 0, '0', 2),
(102007, 'Eerotas T-Shirt:ELT-805', 110, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas T-Shirt t Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">T-Shirt</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 210, 0, '4', '2019-11-24 00:00:00', 0, '0', 2),
(102008, 'Erotas Denim Shirt:ECS-1116D', 59, 1, 'Erotas Fashion', '', '', '<ul style=\"margin: 0px; padding: 0px; list-style: none; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabrics: Denim<br>Occasion: party wear, casual wear.<br>Made in Bangladesh</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 39\'\' ------------- 27\"<br>(L) ------------- 41\" ------------ 28\"<br>(XL) ----------- 43\" ------------ 29\"<br></p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 174, 0, '4', '2019-11-25 00:00:00', 0, '0', 2),
(102009, 'Erotas Denim Shirt:ECS-1118L', 112, 1, 'Erotas Fashion', '', 'blue', 'Brand: Erotas Fashion.', 0, 220, 0, '6', '2019-11-25 00:00:00', 0, '0', 2),
(102010, 'Erotas Denim Shirt:ECS-1117M', 100, 1, 'Erotas Fashion', '', '', '<ul style=\"margin: 0px; padding: 0px; list-style: none; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabrics: Denim<br>Occasion: party wear, casual wear.<br>Made in Bangladesh</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 39\'\' ------------- 27\"<br>(L) ------------- 41\" ------------ 28\"<br>(XL) ----------- 43\" ------------ 29\"<br></p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 174, 0, '2', '2019-11-25 00:00:00', 0, '0', 2),
(102011, 'Erotas Shirt:EFS-1221', 106, 1, 'Erotas Fashion', '', '', '<ul style=\"margin: 0px; list-style: none; padding: 0px; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Design: Formal Shirt.<br>Fabrics: Fancy Cotton<br>Occasion: party wear, casual wear.<br>Start Your Day with Our Exclusive Formal Collection<br>Made in Bangladesh.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 39\'\' ------------- 27\"<br>(L) ------------- 41\" ------------ 28\"<br>(XL) ----------- 43\" ------------ 29\"<br>(XXL) --------- 45\" ------------ 30\"</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 145, 0, '3', '2019-11-25 00:00:00', 0, '0', 2),
(102012, 'Erotas Shirt:EFS-1222', 92, 1, 'Erotas Fashion', '', '', '<ul style=\"margin: 0px; list-style: none; padding: 0px; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Design: Formal Shirt.<br>Fabrics: Fancy Cotton<br>Occasion: party wear, casual wear.<br>Start Your Day with Our Exclusive Formal Collection<br>Made in Bangladesh.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 39\'\' ------------- 27\"<br>(L) ------------- 41\" ------------ 28\"<br>(XL) ----------- 43\" ------------ 29\"<br>(XXL) --------- 45\" ------------ 30\"</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 168, 0, '2', '2019-11-25 00:00:00', 0, '0', 2),
(102013, 'Erotas Shirt:EHS-1307', 109, 1, 'Erotas Fashion', '', '', '<ul style=\"margin: 0px; list-style: none; padding: 0px; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Design:Half Shirt.<br>Fabrics: Fancy Cotton<br>Occasion: party wear, casual wear.<br>Start Your Day with Our Exclusive Formal Collection<br>Made in Bangladesh.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 38\'\' ------------- 27\"<br>(L) ------------- 40\" ------------ 28\"<br>(XL) ----------- 42\" ------------ 29\"<br></p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 152, 0, '3', '2019-11-25 00:00:00', 0, '0', 2),
(102014, 'Erotas Shirt:EFS-1308', 108, 1, 'Erotas Fashion', '', 'black', '<ul style=\"margin: 0px; list-style: none; padding: 0px; color: rgb(17, 17, 17); font-family: \" roboto=\"\" condensed\",=\"\" helvetica,=\"\" arial,=\"\" verdana,=\"\" sans-serif;=\"\" font-size:=\"\" 12px;=\"\" font-weight:=\"\" 700;\"=\"\"><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Brand: Erotas Fashion.<br>Album: Erotas Shirt Vol-02</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Design:Half Shirt.<br>Fabrics: Fancy Cotton<br>Occasion: party wear, casual wear.<br>Start Your Day with Our Exclusive Formal Collection<br>Made in Bangladesh.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Size ----- Chest (Inc)----Height (Inc)<br>(M) ------------ 38\'\' ------------- 27\"<br>(L) ------------- 40\" ------------ 28\"<br>(XL) ----------- 42\" ------------ 29\"<br></p><p style=\"margin-top: 6px; margin-bottom: 6px; font-size: 14px; font-weight: 400; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\"><br></p><p style=\"margin-bottom: 10px; font-size: 16px; font-weight: 400; color: rgb(68, 68, 68); line-height: 1.5em;\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span></p></ul>', 0, 163, 0, '4', '2019-11-25 00:00:00', 0, '0', 2),
(102015, 'Erotas Hoodie:EH-806', 97, 1, 'Erotas Fashion', '', 'yellow,red', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas Hoodie Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><font face=\"Helvetica, Arial, sans-serif\" color=\"#1c1e21\"><span style=\"font-size: 14px;\">Pelips Fabrics</span></font><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">\r\nবিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।<br style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 177, 0, '2,1', '2019-11-25 00:00:00', 0, '0', 2),
(102016, 'Erotas Hoodie:EH-807', 105, 1, 'Erotas Fashion', '', '', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas Hoodie Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><font face=\"Helvetica, Arial, sans-serif\" color=\"#1c1e21\"><span style=\"font-size: 14px;\">Pelips Fabrics</span></font><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।<br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 177, 0, '3', '2019-11-25 00:00:00', 0, '0', 2),
(102017, 'Erotas Hoodie EH-808 | Winter collection', 99, 1, 'Erotas Fashion', '', 'blue', '<p><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Brand: Erotas</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Album: Erotas Hoodie Vol-01</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Fabric Details:</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><font face=\"Helvetica, Arial, sans-serif\" color=\"#1c1e21\"><span style=\"font-size: 14px;\">Pelips Fabrics</span></font><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Occasion: party wear, casual wear</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Start Your Day with Our Exclusive Formal Collection</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Made in Bangladesh.</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">Size ----- Chest (Inc)----Height (Inc)</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(M) ------------ 38\'\' ----------- 27\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(L) ------------- 40\" ----------- 28\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">(XL) ----------- 42\" ----------- 29\"</span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"></span><br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।<br style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(28, 30, 33); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</span><br></p>', 0, 125, 0, '2', '2019-11-25 00:00:00', 0, '0', 2),
(102018, 'Erotas Pant:ECB-2201', 112, 1, 'Erotas Fashion', '', '', 'Brand: Erotas Fashion.', 0, 140, 0, '4', '2019-11-25 00:00:00', 0, '0', 2),
(102019, 'Erotas Pant:EDP-2101', 112, 1, 'Erotas Fashion', 'S', 'blue', 'Brand: Erotas Fashion.', 0, 139, 0, '3', '2019-11-25 00:00:00', 0, '0', 2),
(102020, '100% original pakistani nur collection:bpn-405', 64, 1, 'Nur Collection', '', 'black,brown', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 41, 0, '3,3', '2019-12-22 18:00:22', 0, '0', 2),
(102021, '100% original pakistani nur collection:bpn-406', 65, 1, 'Nur Collection', 'S,L,XL', 'purple', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\"><br></p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 41, 0, '1', '2019-12-22 18:04:17', 0, '0', 2);
INSERT INTO `products` (`id`, `name`, `category`, `merchant_id`, `brand`, `size`, `colors`, `description`, `price`, `views`, `discount`, `images`, `date_added`, `item_left`, `others`, `status`) VALUES
(102022, '100% original pakistani nur collection:bpn-407', 132, 1, 'Nur Collection', '', 'gray', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR3B-JbVLNm2__YkPsubWSMv6gqfyNVv9rFtOxrAqbX_JLQmO-BAU0Q5bk8&amp;h=AT2JSU6gkk0GpEjhFCF7RxzAkwfdYsynHK4ym4Yi2_HBngyeHD8rXCukrAl5E_qIcV0LJqZ2_uVPDyAx-8YRdd7qbgtNgfRrnWpb_SYDjW5nqFRshqqOdksOQeo2lN9GTIg_cvXdT7DObl9hS8i9i7zahEwquO_rokEUYp75N6ZklX2ZE9mW7QecFmpkjV1rm6cZmJMwb3gUqiI4SnY59l3I7mG4PYtwEBGN7bst9WTtqntW4M9zg-bhuM4yLNKPBe4Pj6yVIcl3jZTz1YFhhwmj7OuYwuZ-PBp0OTCAUyBGfa1nrTOTdMZ66N06aujdSDe-fp4MtwbTCkb38iQr3WJfVRJNMyQ02hvZb7EL8QSOKj7BWy0rhDQkh80CTOluNB9995IaBRVSn_fv5wgxKQehr-4g9IAdASgQb8QMRI1YTobkk25SF0-TSb3iZusn5tym5xTMl4kiwkxXEy9Qjhl6PlLUmcZz4jqHSDgC7dkwEDw8Vfypg9Gf_es6fhx4EF71aQRwaB86tUPYEvFkYbhmk3bhVFmwJ9TNQINMkJXXf_bQo4KjnK1QHL-3RlK4o_mAUv9q27yT\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Sales Center 02:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2mXT4va-6lqPsHKRmgfQWyaCLUzEuApNZpV_aij74U6Q-0BFdmD9ADu8k&amp;h=AT1Sm6u76Vr0X1PWxanfIfhkkNb2Vd7ZOsUreTOuVBqljBMu1CX8YTzGv5_ztle95VSAIcaW-3Jdng_a76ouMMmuFP-VD4Jp8mR1IMoAr1QVGN4NGJduy5M0K1BREToU8i2pHt4Rku75L3LfyxFlQtkcLzu9GoXXVX0v9kLdykNQkEDjnd0wgcyY2SxT6wZM37EV8vCgZFmhkcvdgpprgDlU3mhy1dB7eCeMDfhX0JhLKkKeEcAUZWrJRvzvDccTYbMukmOzxA3xQD5na-fNi4vwua_Xt1Ft6uajGIyXxKJ6V3xmuuUGfAWPbFaoRaPzK71oXTClsy-9enNkuerVHxWKRPnsV9jAseRL2FNGmtZnNHKZgWuCnaj7wnxwF9Gh_RUtu7EFicyWkF5T9qCD7m9iseMGMlxoIuJzSoITHmonI296Dt8plsiBYHx_t-5x_ZVU5RYd036fGYC5P-j7V8dX8UsZy0ydwEAbxG9nrHeP6v0sbQFAfP38qQzOPtETtdVaMnUMdEY-kRhKtbmeVoNjlHHaZf9HAUAseljxQyEHjjDqrNDuG7CuVMNqr4Pdw6mBDOw5-NOd\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 42, 0, '1', '2019-12-22 18:07:28', 0, '0', 2),
(102023, 'Huawei Nova 7i', 177, 4, 'Nur Collection', '6GB/128GB,8GB/128GB', 'black,green,pink', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR3B-JbVLNm2__YkPsubWSMv6gqfyNVv9rFtOxrAqbX_JLQmO-BAU0Q5bk8&amp;h=AT2JSU6gkk0GpEjhFCF7RxzAkwfdYsynHK4ym4Yi2_HBngyeHD8rXCukrAl5E_qIcV0LJqZ2_uVPDyAx-8YRdd7qbgtNgfRrnWpb_SYDjW5nqFRshqqOdksOQeo2lN9GTIg_cvXdT7DObl9hS8i9i7zahEwquO_rokEUYp75N6ZklX2ZE9mW7QecFmpkjV1rm6cZmJMwb3gUqiI4SnY59l3I7mG4PYtwEBGN7bst9WTtqntW4M9zg-bhuM4yLNKPBe4Pj6yVIcl3jZTz1YFhhwmj7OuYwuZ-PBp0OTCAUyBGfa1nrTOTdMZ66N06aujdSDe-fp4MtwbTCkb38iQr3WJfVRJNMyQ02hvZb7EL8QSOKj7BWy0rhDQkh80CTOluNB9995IaBRVSn_fv5wgxKQehr-4g9IAdASgQb8QMRI1YTobkk25SF0-TSb3iZusn5tym5xTMl4kiwkxXEy9Qjhl6PlLUmcZz4jqHSDgC7dkwEDw8Vfypg9Gf_es6fhx4EF71aQRwaB86tUPYEvFkYbhmk3bhVFmwJ9TNQINMkJXXf_bQo4KjnK1QHL-3RlK4o_mAUv9q27yT\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Sales Center 02:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2mXT4va-6lqPsHKRmgfQWyaCLUzEuApNZpV_aij74U6Q-0BFdmD9ADu8k&amp;h=AT1Sm6u76Vr0X1PWxanfIfhkkNb2Vd7ZOsUreTOuVBqljBMu1CX8YTzGv5_ztle95VSAIcaW-3Jdng_a76ouMMmuFP-VD4Jp8mR1IMoAr1QVGN4NGJduy5M0K1BREToU8i2pHt4Rku75L3LfyxFlQtkcLzu9GoXXVX0v9kLdykNQkEDjnd0wgcyY2SxT6wZM37EV8vCgZFmhkcvdgpprgDlU3mhy1dB7eCeMDfhX0JhLKkKeEcAUZWrJRvzvDccTYbMukmOzxA3xQD5na-fNi4vwua_Xt1Ft6uajGIyXxKJ6V3xmuuUGfAWPbFaoRaPzK71oXTClsy-9enNkuerVHxWKRPnsV9jAseRL2FNGmtZnNHKZgWuCnaj7wnxwF9Gh_RUtu7EFicyWkF5T9qCD7m9iseMGMlxoIuJzSoITHmonI296Dt8plsiBYHx_t-5x_ZVU5RYd036fGYC5P-j7V8dX8UsZy0ydwEAbxG9nrHeP6v0sbQFAfP38qQzOPtETtdVaMnUMdEY-kRhKtbmeVoNjlHHaZf9HAUAseljxQyEHjjDqrNDuG7CuVMNqr4Pdw6mBDOw5-NOd\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 45, 0, '2,1,1', '2019-12-22 18:09:29', 0, '0', 2),
(102024, '100% original pakistani nur collection:bpn-409', 127, 4, 'Nur Collection', 'S,L,M', '', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">???????Photography ? Device ?? ????? ?????? ?? ??????? ????? ??? ??? ?????</p>', 0, 64, 0, '1', '2019-12-22 18:10:22', 0, '0', 2),
(102025, '100% original pakistani nur collection:bpn-410', 68, 1, 'Nur Collection', 'X,L,M', '', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top:Viscose With Embroidered.<br>Bottom: Viscose.<br>Dupatta: Printed Chiffon Dupatta<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><br><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 46, 0, '1', '2019-12-22 18:19:23', 0, '0', 2),
(102026, 'exclusive pakistani tawakkal collection:BTM-4734', 122, 1, 'Tawakkal Collection', '', '', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top: Visecos with Embroidered.<br>Bottom: Visecose.<br>Dupatta: Printed Chiffon With Embrodere.<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><br><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 46, 0, '1', '2019-12-22 18:22:16', 0, '0', 2),
(102027, 'Exclusive pakistani tawakkal collection:Btm-4735', 124, 1, 'Tawakkal Collection', 'S,L', '', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top: Visecos with Embroidered.<br>Bottom: Visecose.<br>Dupatta: Printed Chiffon With Embrodere.<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><br><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 53, 0, '1', '2019-12-22 18:31:07', 0, '0', 2),
(102028, 'Special vinay two piece collection tumbaa polo-3:bvp-37059', 123, 1, 'Vinay Fashion', 'S,M,L', 'yellow', '<p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 73, 0, '1', '2019-12-23 18:15:27', 0, '0', 2),
(102029, 'Special vinay two piece collection tumbaa polo-3:bvp-37060', 123, 1, 'Vinay Fashion', 'S,M,L', 'black', '<p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 75, 0, '2', '2019-12-23 18:19:04', 0, '0', 2),
(102030, 'Special vinay two piece collection tumbaa polo-3:bvp-37058', 123, 1, 'Vinay Fashion', 'Small,Long', 'green', '<p id=\"main\" class=\"style-scope ytd-comment-renderer\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); min-width: 0px; flex: 1 1 1e-09px; display: flex; flex-direction: column; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; font-size: 10px;\"><ytd-expander id=\"expander\" class=\"expander-exp style-scope ytd-comment-renderer\" collapsed=\"\" style=\"display: block; --ytd-expander-button-margin:4px 0 0 0; --ytd-expander-collapsed-height:80px;\"></ytd-expander></p><p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p><p class=\"style-scope ytd-comment-renderer\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); min-width: 0px; flex: 1 1 1e-09px; display: flex; flex-direction: column; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; font-size: 10px;\"><ytd-expander class=\"expander-exp style-scope ytd-comment-renderer\" collapsed=\"\" style=\"display: block; --ytd-expander-button-margin:4px 0 0 0; --ytd-expander-collapsed-height:80px;\"></ytd-expander><ytd-comment-action-buttons-renderer id=\"action-buttons\" class=\"style-scope ytd-comment-renderer\" action-buttons-style=\"desktop-toolbar\" style=\"display: block; color: var(--yt-spec-text-secondary); min-height: 16px; margin-top: 4px;\"></ytd-comment-action-buttons-renderer></p><div id=\"reply-dialog\" class=\"style-scope ytd-comment-action-buttons-renderer\" style=\"margin: 0px; padding: 0px; border: 0px; background: transparent;\"></div><div id=\"action-menu\" class=\"style-scope ytd-comment-renderer\" style=\"margin: 0px; padding: 0px; border: 0px; background: rgb(249, 249, 249); color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; font-size: 10px;\"><ytd-menu-renderer class=\"style-scope ytd-comment-renderer\" style=\"display: flex; flex-direction: row;\"></ytd-menu-renderer></div>', 0, 70, 0, '1', '2019-12-23 18:10:44', 0, '0', 2),
(102031, 'Exclusive pakistani tawakkal collection:btm-4738', 129, 1, 'Tawakkal Collection', 'Small, Long', '', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top: Visecos with Embroidered.<br>Bottom: Visecose.<br>Dupatta: Printed Chiffon With Embrodere.<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 63, 0, '2', '2019-12-22 18:33:31', 0, '0', 2),
(102032, 'exclusive pakistani tawakkal collection:btm-4742', 82, 1, 'Tawakkal Collection', 'SMALL,LONG', 'olive', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Top: Visecos with Embroidered.<br>Bottom: Visecose.<br>Dupatta: Printed Chiffon With Embrodere.<br>Type: Complete 3 Piece Suit<br>Type: Un-Stitched<br>Wash Care: Dry Wash only<br>Occasion: party wear, casual wear<br>Made in Pakistan.</p><br><p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে।</p>', 0, 60, 0, '2', '2019-12-22 18:36:11', 0, '0', 2),
(102033, 'Special vinay two piece collection tumbaa polo-3:BVP-37051', 123, 1, 'Vinay Fashion', '30,34', 'bottle green', '<p style=\"margin: 6px 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1j_ykRT5hX9QRNc-RkUgHLlc6ZWTvSD8--JU89QGVQxTiDFoNKvCOOH18&amp;h=AT2wdtIAIStcS77zWSyAOtQOzMr1biCYgfJHfp30ocxLtg89olCO60P42cDiazD80bYWV8EU4moA6Q43A3kA9LyucIVTTRDpxMVSjpiJlw2olej6HJu6KqEu3_7V63ruCSFVpk8NjLsmx6dLO24l6H7_PIrc0TUW9LPbKOyb7JkWmiO1DAQK3UMvdQBnYleNL1Ym-Gpejn-wP0BkTDTsPS2VSpkRNfNkuW47BPWtqHB8X7wsAxi_nF2cIFMGN2cMjLIhKQhnc4yzYOlj2l657EKtO5Yy5Eo_wTQnmeVeBubP9d3d9NE5hIg6OvrXs3Cd-zLGFfAbeFvRq05ya3cH9T8f-qVS-GLRbZZNxxACbwz633zhIdnHKMshjh9D0AyPASKdlE9uG4MHY9hd6DZ8anRlRfcNQG5vv2saS7LFEIFZY0EdQ-iibqpbrVuq5paE42F5fd30FzPKmRf071aJJWBj0xOlWCn-bNQGkKbZ2F81I8CDSsnAFiQfuQJk8VQTD9D9q1f0ecSc3uF8yFnA1weqkiQirv11l-9bwXbjOHSa9hvI-5pLhG-Wb5MzowfYkBLYuNRoAMtg9cpOAVZd1Boj_cN849c3ZPJJjLlHaCHxGuV5c8i917gNyUS8UgrA4uitMG02FoD2wDmBlOdiTBD93JbSW1p7b1DpS3thtenKpQqICK6aFi2b2GZVpYP8Y5zWNSuW49BWh266bsGzYFHI0g\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px 0px; display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;\">Sales Center 02:&nbsp;<a href=\"http://bondonshop.com/?fbclid=IwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg&amp;h=AT1w-B6PttNE2Dk_9-Il6ohcuI_Vj3pFnJmdweUQLbdSyAOFblB6vuAnFzakI5JbanAu4hhC1REmamu8G9LIYbU9tM3NV-CHnehCXd2N9R-l8Uos48zSR6vIWVTg84Waj613LMMlUHi5DVNpC01RLG4hVXR2BMbqxSvk-ZfjlRPxUR61zBdjYgjNnrTS0WwpjvtJZMp26EpZTXcMHaCVn0zfMO-oDR7hvCw2sxbW4JP2TPuBL8-9_sntAfVsDKTefTPRIrySRxwrcyshTDOdeYHA7dfBFlZJLVbzL4OO3fKlNpcwUjZdz2dL3l1EPNKOMJsWMwfQ9RZPjXHnSC2uyFkAlx6TRlNf53WeVIjPna3NI9KPCyLf9d23vMCZT-0fVZYdT9DFmgNrZsNAnOs4CTPBWuaHPkJthm7Mm_HgBWWCvvoY8eJ23MmG0yLH2wwMkg_xrbgRlDbciH93yvqHuY2fMGg0oH7-5DjlCnDqi9-if1_2Xix4mQRmXaNJmnCBBJtfEnaiAMwgv036ysdQvWeqfTAQthCaRMIVH9cV3lBjioAEIwfR_S8w0Uc9qu81R86n_yz-bFM2EfSuetBBW3MxIuf6__ZVnbvEJX7C06MOhaKyE7fopQmZMKePfieC7tsG6hl1_ioZ2qaznUnrZnE9ht80Vnbkeh9JunaNpfaKM7QVjEwg9pGXuao2gX-O4eDQ-hcB4XJyWKq3C7n3NvhcEQ\" style=\"color: rgb(56, 88, 152); cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 60, 0, '1', '2019-12-23 14:22:23', 0, '0', 2),
(102034, 'Special vinay two piece collection tumbaa polo-3:bvp-37052', 123, 1, 'Vinay Fashion', '28,30,32', '', '<p style=\"margin: 6px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1j_ykRT5hX9QRNc-RkUgHLlc6ZWTvSD8--JU89QGVQxTiDFoNKvCOOH18&amp;h=AT2wdtIAIStcS77zWSyAOtQOzMr1biCYgfJHfp30ocxLtg89olCO60P42cDiazD80bYWV8EU4moA6Q43A3kA9LyucIVTTRDpxMVSjpiJlw2olej6HJu6KqEu3_7V63ruCSFVpk8NjLsmx6dLO24l6H7_PIrc0TUW9LPbKOyb7JkWmiO1DAQK3UMvdQBnYleNL1Ym-Gpejn-wP0BkTDTsPS2VSpkRNfNkuW47BPWtqHB8X7wsAxi_nF2cIFMGN2cMjLIhKQhnc4yzYOlj2l657EKtO5Yy5Eo_wTQnmeVeBubP9d3d9NE5hIg6OvrXs3Cd-zLGFfAbeFvRq05ya3cH9T8f-qVS-GLRbZZNxxACbwz633zhIdnHKMshjh9D0AyPASKdlE9uG4MHY9hd6DZ8anRlRfcNQG5vv2saS7LFEIFZY0EdQ-iibqpbrVuq5paE42F5fd30FzPKmRf071aJJWBj0xOlWCn-bNQGkKbZ2F81I8CDSsnAFiQfuQJk8VQTD9D9q1f0ecSc3uF8yFnA1weqkiQirv11l-9bwXbjOHSa9hvI-5pLhG-Wb5MzowfYkBLYuNRoAMtg9cpOAVZd1Boj_cN849c3ZPJJjLlHaCHxGuV5c8i917gNyUS8UgrA4uitMG02FoD2wDmBlOdiTBD93JbSW1p7b1DpS3thtenKpQqICK6aFi2b2GZVpYP8Y5zWNSuW49BWh266bsGzYFHI0g\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Sales Center 02:&nbsp;<a href=\"http://bondonshop.com/?fbclid=IwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg&amp;h=AT1w-B6PttNE2Dk_9-Il6ohcuI_Vj3pFnJmdweUQLbdSyAOFblB6vuAnFzakI5JbanAu4hhC1REmamu8G9LIYbU9tM3NV-CHnehCXd2N9R-l8Uos48zSR6vIWVTg84Waj613LMMlUHi5DVNpC01RLG4hVXR2BMbqxSvk-ZfjlRPxUR61zBdjYgjNnrTS0WwpjvtJZMp26EpZTXcMHaCVn0zfMO-oDR7hvCw2sxbW4JP2TPuBL8-9_sntAfVsDKTefTPRIrySRxwrcyshTDOdeYHA7dfBFlZJLVbzL4OO3fKlNpcwUjZdz2dL3l1EPNKOMJsWMwfQ9RZPjXHnSC2uyFkAlx6TRlNf53WeVIjPna3NI9KPCyLf9d23vMCZT-0fVZYdT9DFmgNrZsNAnOs4CTPBWuaHPkJthm7Mm_HgBWWCvvoY8eJ23MmG0yLH2wwMkg_xrbgRlDbciH93yvqHuY2fMGg0oH7-5DjlCnDqi9-if1_2Xix4mQRmXaNJmnCBBJtfEnaiAMwgv036ysdQvWeqfTAQthCaRMIVH9cV3lBjioAEIwfR_S8w0Uc9qu81R86n_yz-bFM2EfSuetBBW3MxIuf6__ZVnbvEJX7C06MOhaKyE7fopQmZMKePfieC7tsG6hl1_ioZ2qaznUnrZnE9ht80Vnbkeh9JunaNpfaKM7QVjEwg9pGXuao2gX-O4eDQ-hcB4XJyWKq3C7n3NvhcEQ\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 50, 0, '1', '2019-12-23 14:27:20', 0, '0', 2),
(102035, 'Special vinay two piece collection tumbaa polo-3:bvp-37053', 123, 1, 'Vinay Fashion', '30,36,38', 'navy blue', '<p style=\"margin: 6px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.</p>', 0, 69, 0, '1', '2019-12-23 14:30:30', 0, '0', 2),
(102036, 'special vinay two piece collection tumbaa polo-3:bvp-37054', 123, 1, 'Vinay fashion', '', 'purple', '<p style=\"margin: 6px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1j_ykRT5hX9QRNc-RkUgHLlc6ZWTvSD8--JU89QGVQxTiDFoNKvCOOH18&amp;h=AT2wdtIAIStcS77zWSyAOtQOzMr1biCYgfJHfp30ocxLtg89olCO60P42cDiazD80bYWV8EU4moA6Q43A3kA9LyucIVTTRDpxMVSjpiJlw2olej6HJu6KqEu3_7V63ruCSFVpk8NjLsmx6dLO24l6H7_PIrc0TUW9LPbKOyb7JkWmiO1DAQK3UMvdQBnYleNL1Ym-Gpejn-wP0BkTDTsPS2VSpkRNfNkuW47BPWtqHB8X7wsAxi_nF2cIFMGN2cMjLIhKQhnc4yzYOlj2l657EKtO5Yy5Eo_wTQnmeVeBubP9d3d9NE5hIg6OvrXs3Cd-zLGFfAbeFvRq05ya3cH9T8f-qVS-GLRbZZNxxACbwz633zhIdnHKMshjh9D0AyPASKdlE9uG4MHY9hd6DZ8anRlRfcNQG5vv2saS7LFEIFZY0EdQ-iibqpbrVuq5paE42F5fd30FzPKmRf071aJJWBj0xOlWCn-bNQGkKbZ2F81I8CDSsnAFiQfuQJk8VQTD9D9q1f0ecSc3uF8yFnA1weqkiQirv11l-9bwXbjOHSa9hvI-5pLhG-Wb5MzowfYkBLYuNRoAMtg9cpOAVZd1Boj_cN849c3ZPJJjLlHaCHxGuV5c8i917gNyUS8UgrA4uitMG02FoD2wDmBlOdiTBD93JbSW1p7b1DpS3thtenKpQqICK6aFi2b2GZVpYP8Y5zWNSuW49BWh266bsGzYFHI0g\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Sales Center 02:&nbsp;<a href=\"http://bondonshop.com/?fbclid=IwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg&amp;h=AT1w-B6PttNE2Dk_9-Il6ohcuI_Vj3pFnJmdweUQLbdSyAOFblB6vuAnFzakI5JbanAu4hhC1REmamu8G9LIYbU9tM3NV-CHnehCXd2N9R-l8Uos48zSR6vIWVTg84Waj613LMMlUHi5DVNpC01RLG4hVXR2BMbqxSvk-ZfjlRPxUR61zBdjYgjNnrTS0WwpjvtJZMp26EpZTXcMHaCVn0zfMO-oDR7hvCw2sxbW4JP2TPuBL8-9_sntAfVsDKTefTPRIrySRxwrcyshTDOdeYHA7dfBFlZJLVbzL4OO3fKlNpcwUjZdz2dL3l1EPNKOMJsWMwfQ9RZPjXHnSC2uyFkAlx6TRlNf53WeVIjPna3NI9KPCyLf9d23vMCZT-0fVZYdT9DFmgNrZsNAnOs4CTPBWuaHPkJthm7Mm_HgBWWCvvoY8eJ23MmG0yLH2wwMkg_xrbgRlDbciH93yvqHuY2fMGg0oH7-5DjlCnDqi9-if1_2Xix4mQRmXaNJmnCBBJtfEnaiAMwgv036ysdQvWeqfTAQthCaRMIVH9cV3lBjioAEIwfR_S8w0Uc9qu81R86n_yz-bFM2EfSuetBBW3MxIuf6__ZVnbvEJX7C06MOhaKyE7fopQmZMKePfieC7tsG6hl1_ioZ2qaznUnrZnE9ht80Vnbkeh9JunaNpfaKM7QVjEwg9pGXuao2gX-O4eDQ-hcB4XJyWKq3C7n3NvhcEQ\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 69, 0, '1', '2019-12-23 15:36:24', 0, '0', 2),
(102037, 'special vinay two piece collection tumbaa plo-3:bvp-37055', 123, 1, 'Vinay Fashion', '2-3 Years,4-8 Years', '', '<p style=\"margin: 6px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1j_ykRT5hX9QRNc-RkUgHLlc6ZWTvSD8--JU89QGVQxTiDFoNKvCOOH18&amp;h=AT2wdtIAIStcS77zWSyAOtQOzMr1biCYgfJHfp30ocxLtg89olCO60P42cDiazD80bYWV8EU4moA6Q43A3kA9LyucIVTTRDpxMVSjpiJlw2olej6HJu6KqEu3_7V63ruCSFVpk8NjLsmx6dLO24l6H7_PIrc0TUW9LPbKOyb7JkWmiO1DAQK3UMvdQBnYleNL1Ym-Gpejn-wP0BkTDTsPS2VSpkRNfNkuW47BPWtqHB8X7wsAxi_nF2cIFMGN2cMjLIhKQhnc4yzYOlj2l657EKtO5Yy5Eo_wTQnmeVeBubP9d3d9NE5hIg6OvrXs3Cd-zLGFfAbeFvRq05ya3cH9T8f-qVS-GLRbZZNxxACbwz633zhIdnHKMshjh9D0AyPASKdlE9uG4MHY9hd6DZ8anRlRfcNQG5vv2saS7LFEIFZY0EdQ-iibqpbrVuq5paE42F5fd30FzPKmRf071aJJWBj0xOlWCn-bNQGkKbZ2F81I8CDSsnAFiQfuQJk8VQTD9D9q1f0ecSc3uF8yFnA1weqkiQirv11l-9bwXbjOHSa9hvI-5pLhG-Wb5MzowfYkBLYuNRoAMtg9cpOAVZd1Boj_cN849c3ZPJJjLlHaCHxGuV5c8i917gNyUS8UgrA4uitMG02FoD2wDmBlOdiTBD93JbSW1p7b1DpS3thtenKpQqICK6aFi2b2GZVpYP8Y5zWNSuW49BWh266bsGzYFHI0g\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Sales Center 02:&nbsp;<a href=\"http://bondonshop.com/?fbclid=IwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg&amp;h=AT1w-B6PttNE2Dk_9-Il6ohcuI_Vj3pFnJmdweUQLbdSyAOFblB6vuAnFzakI5JbanAu4hhC1REmamu8G9LIYbU9tM3NV-CHnehCXd2N9R-l8Uos48zSR6vIWVTg84Waj613LMMlUHi5DVNpC01RLG4hVXR2BMbqxSvk-ZfjlRPxUR61zBdjYgjNnrTS0WwpjvtJZMp26EpZTXcMHaCVn0zfMO-oDR7hvCw2sxbW4JP2TPuBL8-9_sntAfVsDKTefTPRIrySRxwrcyshTDOdeYHA7dfBFlZJLVbzL4OO3fKlNpcwUjZdz2dL3l1EPNKOMJsWMwfQ9RZPjXHnSC2uyFkAlx6TRlNf53WeVIjPna3NI9KPCyLf9d23vMCZT-0fVZYdT9DFmgNrZsNAnOs4CTPBWuaHPkJthm7Mm_HgBWWCvvoY8eJ23MmG0yLH2wwMkg_xrbgRlDbciH93yvqHuY2fMGg0oH7-5DjlCnDqi9-if1_2Xix4mQRmXaNJmnCBBJtfEnaiAMwgv036ysdQvWeqfTAQthCaRMIVH9cV3lBjioAEIwfR_S8w0Uc9qu81R86n_yz-bFM2EfSuetBBW3MxIuf6__ZVnbvEJX7C06MOhaKyE7fopQmZMKePfieC7tsG6hl1_ioZ2qaznUnrZnE9ht80Vnbkeh9JunaNpfaKM7QVjEwg9pGXuao2gX-O4eDQ-hcB4XJyWKq3C7n3NvhcEQ\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 79, 0, '1', '2019-12-23 15:53:10', 0, '0', 2),
(102038, 'special vinay two piece collection tumbaa polo-3:bvp-37056', 123, 1, 'Vinay Fashion', '32,34,36', '', '<p style=\"margin: 6px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; font-family: Helvetica, Arial, sans-serif;\">Fabric Details:<br>Shirt: Rayon.<br>Trouser: Rayon.<br>Type: Two piece.<br>Type: stitched.<br>Occasion: casual and party wear.<br>Made in India.<br>Sales Center 01:&nbsp;<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR1j_ykRT5hX9QRNc-RkUgHLlc6ZWTvSD8--JU89QGVQxTiDFoNKvCOOH18&amp;h=AT2wdtIAIStcS77zWSyAOtQOzMr1biCYgfJHfp30ocxLtg89olCO60P42cDiazD80bYWV8EU4moA6Q43A3kA9LyucIVTTRDpxMVSjpiJlw2olej6HJu6KqEu3_7V63ruCSFVpk8NjLsmx6dLO24l6H7_PIrc0TUW9LPbKOyb7JkWmiO1DAQK3UMvdQBnYleNL1Ym-Gpejn-wP0BkTDTsPS2VSpkRNfNkuW47BPWtqHB8X7wsAxi_nF2cIFMGN2cMjLIhKQhnc4yzYOlj2l657EKtO5Yy5Eo_wTQnmeVeBubP9d3d9NE5hIg6OvrXs3Cd-zLGFfAbeFvRq05ya3cH9T8f-qVS-GLRbZZNxxACbwz633zhIdnHKMshjh9D0AyPASKdlE9uG4MHY9hd6DZ8anRlRfcNQG5vv2saS7LFEIFZY0EdQ-iibqpbrVuq5paE42F5fd30FzPKmRf071aJJWBj0xOlWCn-bNQGkKbZ2F81I8CDSsnAFiQfuQJk8VQTD9D9q1f0ecSc3uF8yFnA1weqkiQirv11l-9bwXbjOHSa9hvI-5pLhG-Wb5MzowfYkBLYuNRoAMtg9cpOAVZd1Boj_cN849c3ZPJJjLlHaCHxGuV5c8i917gNyUS8UgrA4uitMG02FoD2wDmBlOdiTBD93JbSW1p7b1DpS3thtenKpQqICK6aFi2b2GZVpYP8Y5zWNSuW49BWh266bsGzYFHI0g\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Eastern Mollika Shopping Complex, Floor: 3, Shop No: 54-55, Elephant Road, Dhaka- 1205.</p><p style=\"margin: 6px 0px 0px; font-size: 14px; color: rgb(29, 33, 41); line-height: 1.5em; display: inline; font-family: Helvetica, Arial, sans-serif;\">Sales Center 02:&nbsp;<a href=\"http://bondonshop.com/?fbclid=IwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg\" target=\"_blank\" data-ft=\"{\" tn\":\"-u\"}\"=\"\" rel=\"noopener nofollow\" data-lynx-mode=\"async\" data-lynx-uri=\"https://l.facebook.com/l.php?u=http%3A%2F%2FBondonshop.com%2F%3Ffbclid%3DIwAR2JSnRYVPICh3JdghCpGu4Us1M31NJTOJevjtPxPYE-kY45kANGjyfM0qg&amp;h=AT1w-B6PttNE2Dk_9-Il6ohcuI_Vj3pFnJmdweUQLbdSyAOFblB6vuAnFzakI5JbanAu4hhC1REmamu8G9LIYbU9tM3NV-CHnehCXd2N9R-l8Uos48zSR6vIWVTg84Waj613LMMlUHi5DVNpC01RLG4hVXR2BMbqxSvk-ZfjlRPxUR61zBdjYgjNnrTS0WwpjvtJZMp26EpZTXcMHaCVn0zfMO-oDR7hvCw2sxbW4JP2TPuBL8-9_sntAfVsDKTefTPRIrySRxwrcyshTDOdeYHA7dfBFlZJLVbzL4OO3fKlNpcwUjZdz2dL3l1EPNKOMJsWMwfQ9RZPjXHnSC2uyFkAlx6TRlNf53WeVIjPna3NI9KPCyLf9d23vMCZT-0fVZYdT9DFmgNrZsNAnOs4CTPBWuaHPkJthm7Mm_HgBWWCvvoY8eJ23MmG0yLH2wwMkg_xrbgRlDbciH93yvqHuY2fMGg0oH7-5DjlCnDqi9-if1_2Xix4mQRmXaNJmnCBBJtfEnaiAMwgv036ysdQvWeqfTAQthCaRMIVH9cV3lBjioAEIwfR_S8w0Uc9qu81R86n_yz-bFM2EfSuetBBW3MxIuf6__ZVnbvEJX7C06MOhaKyE7fopQmZMKePfieC7tsG6hl1_ioZ2qaznUnrZnE9ht80Vnbkeh9JunaNpfaKM7QVjEwg9pGXuao2gX-O4eDQ-hcB4XJyWKq3C7n3NvhcEQ\" style=\"color: rgb(56, 88, 152); transition: color 0.2s ease-in-out 0s; outline: 0px; cursor: pointer; font-family: inherit;\">Bondonshop.com</a>, Zam Zam Tower, Floor: 2, Shop No: 309-310, Sector: 13, Uttara, Dhaka- 1230.<br>বিঃদ্রঃPhotography ও Device এর কারনে পণ্যের রঙ সামান্য ভিন্ন মনে হতে পারে</p>', 0, 67, 0, '1', '2019-12-23 17:32:08', 0, '0', 2),
(102040, 'Huawei Nova 7i', 56, 1, 'Huawei', '6GB/128GB,8GB/128GB', 'black,darkgreen,lightpink', '<p>Operating System: Android 10, EMUI 10, No Google Play Services</p><p>Display Size: 6.4 inches</p><p>Chipset: Kirin 810</p><p>CPU: Octa-core</p><p>GPU: Mali-G52 MP6</p><p>RAM: 8GB</p><p>ROM: 128GB</p><p>Rear Camera: 48MP+8MP+2MP+2MP</p><p>Front Camera: 16MP</p><p>Sensors: Fingerprint (side-mounted), accelerometer, proximity, compass</p><p>Battery: Non-removable Li-Po 4200 mAh battery</p><p>Connectivity: WLAN: 802.11b/g/n/a/ac 2.4G / 5G Hz. Bluetooth: 5.0</p>', 0, 55, 20, '2,1,1', '2020-09-17 13:50:09', 0, '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_comments`
--

DROP TABLE IF EXISTS `product_comments`;
CREATE TABLE IF NOT EXISTS `product_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `email` varchar(90) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `rating` double NOT NULL,
  `prid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_comments`
--

INSERT INTO `product_comments` (`id`, `date`, `name`, `email`, `message`, `rating`, `prid`, `status`) VALUES
(8, '2000-01-01 00:00:00', 'Limon', 'jhmasterlimon11@gmail.com', 'This is testing', 5, 102040, 1),
(12, '2000-01-01 00:00:00', 'Aladin Kids', 'admin-panel', '[2:] this is also testing', 0, 102011, 0),
(16, '2020-02-09 13:14:01', 'Limon', 'jhmasterlimon11@gmail.com', 'Nice Product', 4.5, 102040, 1),
(17, '2020-09-03 00:00:00', 'Salman Muzahid', 'jhmasterlimon11@gmail.com', 'This is testing 3', 4.1, 102040, 1),
(20, '2020-09-04 21:08:20', 'Aladin Kids', 'admin-panel', '[1:] This is testing 4', 0, 102031, 0),
(21, '2020-09-06 00:00:00', 'Rubel', 'jhmasterlimon11@gmail.com', '[1:] This is testing 5', 2.8, 102011, 1),
(23, '2020-09-04 22:44:01', 'Aladin Kids', 'admin-panel', '[2:] Thank you for test', 0, 102040, 0),
(24, '2020-09-16 21:42:15', 'Aladin Kids', 'admin-panel', '[1:] Thank you', 0, 102038, 1),
(25, '2020-09-16 21:48:22', 'Robin Khan', 'mosfiqur121091@gmail.com', 'Red color available ?', 3.1, 102040, 1),
(26, '2020-09-16 21:49:11', 'Aladin Kids', 'admin-panel', '[5:] Yes, available. ', 0, 102040, 0),
(27, '2020-09-16 21:49:20', 'Aladin Kids', 'admin-panel', '[5:] Would you like to buy ?', 0, 102040, 0),
(31, '2020-12-10 21:12:10', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Beautifull Review', 4, 102004, 1),
(32, '2020-12-10 21:24:45', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Onek valo product.', 5, 102008, 1),
(33, '2020-12-10 21:25:29', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Mind-blowing product ', 5, 102017, 1),
(34, '2020-12-10 21:26:23', 'Robiul Hoque Razib', 'mjk.limon@outlook.com', 'Beautifull Color', 5, 102031, 1),
(35, '2021-01-05 01:04:42', 'Aladin Kids', 'admin-panel', '[1:] Thanks ', 0, 102031, 1),
(36, '2021-01-05 01:05:44', 'Aladin Kids', 'admin-panel', '[4:] Thanks', 0, 102031, 1),
(37, '2021-01-05 11:24:22', 'Aladin Kids', 'admin-panel', '[1:] Thanks', 0, 102008, 1),
(38, '2021-05-22 23:25:29', 'Md Jahid Khan Limon', 'jhmasterlimon11@gmail.com', 'Nice', 3.4, 100200, 1),
(39, '2021-07-10 15:31:07', 'DS Commerce', 'admin-panel', '[2:] Testing', 0, 100200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `p_order`
--

DROP TABLE IF EXISTS `p_order`;
CREATE TABLE IF NOT EXISTS `p_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(90) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `shipping_id` tinyint(4) NOT NULL,
  `shipping_name` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `shipping_phone` varchar(90) DEFAULT NULL,
  `shipping_address` text CHARACTER SET utf8,
  `location` varchar(90) CHARACTER SET utf8 NOT NULL,
  `shipment` varchar(99) DEFAULT NULL,
  `pmnt_id` int(11) NOT NULL,
  `products` varchar(9000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pmnt_id` (`pmnt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_order`
--

INSERT INTO `p_order` (`id`, `order_no`, `date`, `name`, `phone`, `email`, `address`, `shipping_id`, `shipping_name`, `shipping_phone`, `shipping_address`, `location`, `shipment`, `pmnt_id`, `products`, `status`) VALUES
(24, '01211904068093', '2021-01-19 16:06:00', 'Salman Khan', '0123456789', '', 'Uttara Dhaka', 5, NULL, NULL, NULL, 'Dhaka', 'Normal', 24, '[{\"p\":\"102\",\"s\":\"8GB\\/128GB\",\"c\":\"black\",\"q\":\"1\"}]', 1),
(29, '02210712243376', '2021-02-07 12:24:23', 'Md Jahid Khan Limon', '+8801956758055', '', 'Uttara Dhaka', 1, NULL, NULL, NULL, 'Dhaka', 'Normal', 29, '[{\"p\":\"102025\",\"s\":\"\",\"c\":\"\",\"q\":\"1\"}]', 1),
(65, '03211801133913', '2021-03-18 13:13:33', 'Md Jahid Khan Limon', '+8801956758055', '', 'sfafa', 1, NULL, NULL, NULL, 'Bagerhat', 'Normal', 94, '[{\"p\":\"102040\",\"s\":\"8GB\\/128GB\",\"c\":\"black\",\"q\":\"1\"}]', 1),
(66, '03212102339284', '2021-03-21 14:33:08', 'Sobuj Khan  Lal', '01956758055', 'sobujkhanlalmiya@gmail.com', 'Uttara Dhaka, Dhaka, Dhaka (Inside City), Bangladesh', 1, NULL, NULL, NULL, 'Dhaka (Inside City)', 'Normal', 95, '[{\"p\":\"102037\",\"s\":\"\",\"c\":\"\",\"q\":\"1\"}]', 1),
(67, '03212204061086', '2021-03-22 16:06:04', 'Sobuj Khan  Lal', '01956758055', 'sobujkhanlalmiya@gmail.com', 'Uttara Dhaka, Dhaka, Dhaka (Inside City), Bangladesh', 1, NULL, NULL, NULL, 'Dhaka (Inside City)', 'Normal', 96, '[{\"p\":\"102033\",\"s\":\"34\",\"c\":\"bottle green\",\"q\":\"1\"}]', 4),
(68, '04210202374110', '2021-04-02 02:37:50', 'Ashraful Hasan Kanak', '+8801956758056', 'mjk.limon@outlook.com', 'Secor 9, Uttara, Dhaka, Bangladesh, Noakhali, Noakhali, Bangladsh', 6, 'Ashraful Hasan Kanak', '+8801956758056', 'Secor 9, Uttara, Dhaka, Bangladesh, Noakhali, Noakhali, Bangladsh', 'Noakhali', 'Urgent', 107, '[{\"p\":\"102019\",\"s\":\"S\",\"c\":\"blue\",\"q\":\"3\"}]', 4),
(69, '04210202448628', '2021-04-02 02:44:34', 'LImon', '0123456789', '', 'Uttara Dhaka', 1, 'LImon', '0123456789', 'Uttara Dhaka', 'Bagerhat', 'Normal', 108, '[{\"p\":\"102019\",\"s\":\"S\",\"c\":\"blue\",\"q\":\"1\"},{\"p\":\"102004\",\"s\":\"\",\"c\":\"\",\"q\":\"1\"}]', 1),
(70, '07211408094813', '2021-07-14 20:09:31', 'Md Jahid Khan Limon', '+8801956758055', '', 'sfsf', 1, NULL, NULL, NULL, 'Bagerhat', 'Normal', 109, '[{\"p\":\"102000\",\"s\":\"\",\"c\":\"\",\"q\":\"1\"}]', 1),
(71, '08212004235230', '2021-08-20 16:23:17', 'Md Jahid Khan Limon', '+8801614500115', '', 'sfsfsf', 1, NULL, NULL, NULL, 'Bagerhat', 'Normal', 110, '[{\"p\":102038,\"s\":\"\",\"c\":\"\",\"q\":1}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo_options`
--

DROP TABLE IF EXISTS `seo_options`;
CREATE TABLE IF NOT EXISTS `seo_options` (
  `fbPageId` varchar(90) NOT NULL,
  `pageMeta` varchar(900) CHARACTER SET utf8 NOT NULL,
  `googleAnalytics` varchar(900) NOT NULL,
  `facebookPixel` varchar(900) NOT NULL,
  `tawkTo` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo_options`
--

INSERT INTO `seo_options` (`fbPageId`, `pageMeta`, `googleAnalytics`, `facebookPixel`, `tawkTo`) VALUES
('1011187579070658', '{{company}} top online shopping in bangladesh. Where you order latest and trending items with easy payment systems.', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_locations`
--

DROP TABLE IF EXISTS `shipping_locations`;
CREATE TABLE IF NOT EXISTS `shipping_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(999) CHARACTER SET utf8 NOT NULL,
  `city` varchar(900) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_locations`
--

INSERT INTO `shipping_locations` (`id`, `location`, `city`, `status`) VALUES
(1, 'Bagerhat', 'Khulna', 1),
(2, 'Bandarban', 'Chattagram', 1),
(3, 'Barguna', 'Barisal', 1),
(4, 'Barisal', 'Barisal', 1),
(5, 'Bhola', 'Barisal', 1),
(6, 'Bogura', 'Rajshahi', 1),
(7, 'Brahmanbaria', 'Chattagram', 1),
(8, 'Chandpur', 'Chattagram', 1),
(9, 'Chapainawabganj', 'Rajshahi', 1),
(10, 'Chattogram', 'Chattagram', 1),
(11, 'Chuadanga', 'Khulna', 1),
(12, 'Comilla', 'Chattagram', 1),
(13, 'Coxsbazar', 'Chattagram', 1),
(14, 'Dhaka (Inside City)', 'Dhaka', 1),
(15, 'Dhaka (Outside City)', 'Dhaka', 1),
(16, 'Dinajpur', 'Rangpur', 1),
(17, 'Faridpur', 'Dhaka', 1),
(18, 'Feni', 'Chattagram', 1),
(19, 'Gaibandha', 'Rangpur', 1),
(20, 'Gazipur', 'Dhaka', 1),
(21, 'Gopalganj', 'Dhaka', 1),
(22, 'Habiganj', 'Sylhet', 1),
(23, 'Jamalpur', 'Mymensingh', 1),
(24, 'Jashore', 'Khulna', 1),
(25, 'Jhalakathi', 'Barisal', 1),
(26, 'Jhenaidah', 'Khulna', 1),
(27, 'Joypurhat', 'Rajshahi', 1),
(28, 'Khagrachhari', 'Chattagram', 1),
(29, 'Khulna', 'Khulna', 1),
(30, 'Kishoreganj', 'Dhaka', 1),
(31, 'Kurigram', 'Rangpur', 1),
(32, 'Kushtia', 'Khulna', 1),
(33, 'Lakshmipur', 'Chattagram', 1),
(34, 'Lalmonirhat', 'Rangpur', 1),
(35, 'Madaripur', 'Dhaka', 1),
(36, 'Magura', 'Khulna', 1),
(37, 'Manikganj', 'Dhaka', 1),
(38, 'Meherpur', 'Khulna', 1),
(39, 'Moulvibazar', 'Sylhet', 1),
(40, 'Munshiganj', 'Dhaka', 1),
(41, 'Mymensingh', 'Mymensingh', 1),
(42, 'Naogaon', 'Rajshahi', 1),
(43, 'Narail', 'Khulna', 1),
(44, 'Narayanganj', 'Dhaka', 1),
(45, 'Narsingdi', 'Dhaka', 1),
(46, 'Natore', 'Rajshahi', 1),
(47, 'Netrokona', 'Mymensingh', 1),
(48, 'Nilphamari', 'Rangpur', 1),
(49, 'Noakhali', 'Chattagram', 1),
(50, 'Pabna', 'Rajshahi', 1),
(51, 'Panchagarh', 'Rangpur', 1),
(52, 'Patuakhali', 'Barisal', 1),
(53, 'Pirojpur', 'Barisal', 1),
(54, 'Rajbari', 'Dhaka', 1),
(55, 'Rajshahi', 'Rajshahi', 1),
(56, 'Rangamati', 'Chattagram', 1),
(57, 'Rangpur', 'Rangpur', 1),
(58, 'Satkhira', 'Khulna', 1),
(59, 'Shariatpur', 'Dhaka', 1),
(60, 'Sherpur', 'Mymensingh', 1),
(61, 'Sirajganj', 'Rajshahi', 1),
(62, 'Sunamganj', 'Sylhet', 1),
(63, 'Sylhet', 'Sylhet', 1),
(64, 'Tangail', 'Dhaka', 1),
(65, 'Thakurgaon', 'Rangpur', 1),
(66, 'Outside Bangladesh', 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_logo` varchar(999) DEFAULT NULL,
  `method_name` varchar(99) CHARACTER SET utf8 NOT NULL,
  `location` text NOT NULL,
  `cost` varchar(999) NOT NULL,
  `estimate_time` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `method_logo`, `method_name`, `location`, `cost`, `estimate_time`, `status`) VALUES
(1, 'images/RedX-1612945489.png', 'RedX', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65', '100,100,100,100,100,100,100,100,100,100,100,100,100,40,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100', '4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,1 Day,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days,4-5 Days', 1),
(2, 'images/Pathao-1612948484.png', 'Pathao', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65', '120,120,120,120,120,120,120,120,120,120,120,120,120,60,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120', '3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,1 Day,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days', 1),
(3, 'images/eCourier-1612948537.png', 'eCourier', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65', '120,120,120,120,120,120,120,120,120,120,120,120,120,50,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120', '3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,1 Day,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days,3-4 Days', 1),
(4, 'images/Sundarban-Courier-1612948594.png', 'Sundarban Courier', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65', '200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200', '1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days', 2),
(5, 'images/S.A-Paribahan-1612948629', 'S.A Paribahan', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65', '200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200', '1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days,1-2 Days', 1),
(6, 'images/DHL-1612949010.png', 'DHL', '66', '10000', '15-50 Days', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `title` varchar(900) CHARACTER SET utf8 NOT NULL,
  `shop_rating` varchar(999) NOT NULL,
  `qch` tinyint(4) NOT NULL,
  `emailao` tinyint(4) NOT NULL,
  `smsao` varchar(900) NOT NULL,
  `prat` tinyint(4) NOT NULL,
  `qtpr` tinyint(4) NOT NULL,
  `crate` varchar(900) NOT NULL,
  `colset` text NOT NULL,
  `pplimit` int(11) NOT NULL,
  `gridlimit` tinyint(4) NOT NULL,
  `navhover` tinyint(4) NOT NULL,
  `others` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`title`, `shop_rating`, `qch`, `emailao`, `smsao`, `prat`, `qtpr`, `crate`, `colset`, `pplimit`, `gridlimit`, `navhover`, `others`) VALUES
('Home || Dhaka Solution E-Commerce Project', '4.23-500', 1, 1, '0', 1, 1, '84.87,0.76,0.81,4.17,73.88', '{\"accent\":\"#d500ff\",\"accentsec\":\"rgba(176, 25, 40, 0.5)\",\"secondary\":\"#88f011\",\"mainbody\":\"#f5f5f5\",\"innerpage\":\"transparent url(\'\\/Running\\/ecommerce2%20-%20next%20click%20order\\/images\\/innerpage_texture.png\') repeat\",\"header\":\"rgba(255, 255, 255, 1)\",\"menubar\":\"rgba(255, 255, 255, 0.9)\"}', 20, 6, 0, '{\"logo\":\"png\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(900) DEFAULT NULL,
  `image_heading` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `image_text1` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `image_text2` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `image_text3` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `image_link` varchar(900) DEFAULT NULL,
  `heading_link` varchar(900) DEFAULT NULL,
  `text1_link` varchar(900) DEFAULT NULL,
  `text2_link` varchar(900) DEFAULT NULL,
  `text3_link` varchar(900) DEFAULT NULL,
  `page` varchar(900) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `image_heading`, `image_text1`, `image_text2`, `image_text3`, `image_link`, `heading_link`, `text1_link`, `text2_link`, `text3_link`, `page`, `position`) VALUES
(5, 'images/slider/index-2-2021-03-09_16-22-37.jpg', '', '', '', '', 'index', '', '', '', '', 'index', 2),
(6, 'images/slider/index-3-2021-03-09_16-18-14.jpg', '', '', '', '', 'index', '', '', '', '', 'index', 3),
(7, 'images/slider/index-4-2020-09-18_10-48-00.jpg', '', '', '', '', 'index', '', '', '', '', 'index', 4),
(8, 'images/slider/index-5-2020-09-18_10-48-15.png', '', 'Text Line 1', '', '', '', '', '', '', '', 'index', 5),
(10, 'images/slider/sub6.jpg', '', 'Text Line 1', 'Text Line 2', 'Text Line 3', 'index', 'index', 'index', 'index', 'index', 'index', 7),
(11, 'images/slider/blog_img_01.jpg', '', 'Text Line 1', 'Text Line 2', 'Text Line 3', 'index', 'index', 'index', 'index', 'index', 'index', 8),
(36, 'images/slider/blog_img_02.jpg', '', 'Text Line 1', 'Text Line 2', 'Text Line 3', 'index', 'index', 'index', 'index', 'index', 'index', 8),
(50, 'images/slider/index-1-2021-01-16_11-51-55.jpg', '', '', '', '', '', '', '', '', '', 'index', 1),
(51, 'images/slider/index-1-2021-01-16_11-51-59.jpg', '', '', '', '', '', '', '', '', '', 'index', 1),
(52, 'images/slider/index-6-2021-04-27_15-48-27.png', 'Huawei', '', '', '', '', '', '', '', '', 'index', 6),
(53, 'images/slider/index-6-2021-04-27_15-41-05.png', 'Apple', '', '', '', '', '', '', '', '', 'index', 6),
(54, 'images/slider/index-6-2021-04-27_15-48-39.png', 'Samsung', '', '', '', '', '', '', '', '', 'index', 6),
(55, 'images/slider/index-6-2021-04-27_15-48-49.jpg', 'Jack & Jones', '', '', '', '', '', '', '', '', 'index', 6),
(56, 'images/slider/index-6-2021-04-27_15-48-59.png', 'American Eagle', '', '', '', '', '', '', '', '', 'index', 6),
(58, 'images/slider/index-6-2021-04-27_15-49-14.jpg', 'Sony', '', '', '', '', '', '', '', '', 'index', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(900) NOT NULL,
  `password` varchar(90) NOT NULL,
  `token` varchar(90) NOT NULL,
  `first_name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(900) CHARACTER SET utf8 NOT NULL,
  `email` varchar(90) NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `city` varchar(90) CHARACTER SET utf8 NOT NULL,
  `state` varchar(90) CHARACTER SET utf8 NOT NULL,
  `country` varchar(99) CHARACTER SET utf8 NOT NULL,
  `postalcode` varchar(20) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `joined`, `username`, `password`, `token`, `first_name`, `last_name`, `email`, `address`, `city`, `state`, `country`, `postalcode`, `mobile_number`) VALUES
(1, '2019-10-19 14:36:00', 'mjk.limon@outlook.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'ShJmS1G1nxNzz68y', 'Ashraful Hasan', 'Kanak', 'mjk.limon@outlook.com', 'Secor 9, Uttara, Dhaka, Bangladesh', 'Noakhali', 'Noakhali', 'Bangladsh', '1230', '+8801956758056'),
(2, '2019-10-18 14:36:00', 'jhmasterlimon11@gmail.com', 'c6bf1d9672fcc30e55eeedb834438a53', 'ycTg7JWfIwVhL1xw', 'Md Jahid Khan', 'Limon', 'jhmasterlimon11@gmail.com', 'House # 3, Road # 7/C, Sector # 9, Uttara', 'Dhaka', 'Dhaka', 'Bangladsh', '1230', '01675234677'),
(5, '2021-02-10 17:47:36', 'mosfiqur121091@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'VCQWQobEgstpCLAs', 'Mosfiqur Rahim', 'Joy', 'mosfiqur121091@gmail.com', 'Uttara Dhaka', 'Dhaka (Inside City)', 'Dhaka', 'Bangladesh', '1230', '01739208720'),
(6, '2021-03-21 14:22:08', 'sobujkhanlalmiya@gmail.com', 'c6bf1d9672fcc30e55eeedb834438a53', '23q4spZ8TPWGvEd2', 'Sobuj Khan ', 'Lal', 'sobujkhanlalmiya@gmail.com', 'Uttara Dhaka', 'Dhaka (Inside City)', 'Dhaka', 'Bangladesh', '1230', '01956758055');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modified` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `prids` varchar(900) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `modified`, `userid`, `prids`) VALUES
(1, '2020-10-07 00:00:00', 1, ',102012'),
(2, '2021-03-21 12:28:51', 2, '102004'),
(3, '2021-03-21 14:22:08', 6, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
