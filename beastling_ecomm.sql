-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 07:33 PM
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
-- Database: `beastling_ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_address_info`
--

CREATE TABLE `account_address_info` (
  `address_id` int(11) NOT NULL,
  `house_no` varchar(100) NOT NULL,
  `street` varchar(50) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_address_info`
--

INSERT INTO `account_address_info` (`address_id`, `house_no`, `street`, `barangay`, `city`, `province`, `region`) VALUES
(1, '83', '32', 'Bangyas', 'Calauan', 'Laguna', 'Region IV-A (CALABARZON)'),
(3, '34', '32', 'Malinao', 'Nagcarlan', 'Laguna', 'Region IV-A (CALABARZON)'),
(4, '123', '32', 'Poblacion VI', 'Cotabato City', 'Cotabato City', 'Region XII (SOCCSKSARGEN)'),
(5, '123', '32', 'Duhat', 'Santa Cruz (Capital)', 'Laguna', 'Region IV-A (CALABARZON)'),
(7, '123', '32', 'Adams (Pob.)', 'Adams', 'Ilocos Norte', 'Region I (Ilocos Region)'),
(8, '123', '32', 'Adams (Pob.)', 'Adams', 'Ilocos Norte', 'Region I (Ilocos Region)');

-- --------------------------------------------------------

--
-- Table structure for table `account_business_info`
--

CREATE TABLE `account_business_info` (
  `business_id` int(11) NOT NULL,
  `business_name` varchar(100) NOT NULL,
  `permit_no` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `business_location` varchar(100) NOT NULL,
  `permit_pic` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_business_info`
--

INSERT INTO `account_business_info` (`business_id`, `business_name`, `permit_no`, `issue_date`, `expiry_date`, `business_location`, `permit_pic`) VALUES
(1, 'Beastling ', '3535353535', '2020-12-03', '2026-02-23', '', 'LDcbNt0GcJBc6VwmJxxG7A_24_DriversLicense_Shadow.png');

-- --------------------------------------------------------

--
-- Table structure for table `account_contact_info`
--

CREATE TABLE `account_contact_info` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_contact_info`
--

INSERT INTO `account_contact_info` (`contact_id`, `email`, `phone`) VALUES
(1, 'admin@gmail.com', '09897865987'),
(3, 'aaronangeles444@gmail.com', '09662984838'),
(4, 'kixaho8485@endelite.com', '09705760582'),
(5, 'jhonpaulstodomingo92@gmail.com', '09633624846'),
(7, 'aaronangeles333@gmail.com', '09222222222'),
(8, 'aaronangeles325@gmail.com', '09387124826');

-- --------------------------------------------------------

--
-- Table structure for table `account_login_info`
--

CREATE TABLE `account_login_info` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(299) NOT NULL,
  `user_role` enum('Buyer','Seller','Admin','Courier') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_login_info`
--

INSERT INTO `account_login_info` (`login_id`, `username`, `password`, `user_role`) VALUES
(1, 'admin@gmail.com', 'scrypt:32768:8:1$BLgOkosKDUuVnjSw$10f48c1226ed25e08cfde0f2d86e714ec1f9ea57ca77458ae898722b87c622a3ee5c0e69e66f72000fc79d32cc8a0d3151c174a418488ba63c7a44bb0752af2f', 'Admin'),
(2, 'aaronangeles444@gmail.com', 'scrypt:32768:8:1$1r7rMA3rS9zxvfW5$7c114118d18118309ff237e8d36f7c4dd7fe373f2635b8ffc7fe9f80cd3cacef7ee3a19b3788f47fb6091078ccca8256da03180b5e1005422e8902e13a8918ec', 'Seller'),
(3, 'kixaho8485@endelite.com', 'scrypt:32768:8:1$x4W3kMJzfahTLIIu$b383ebe55984651c838fc855fd4c9dcc315ee6f964a75447f74bcb541c9131769509ca893318a040966744138f860b1649f118c905c6d3ec6a87339cfa427d43', 'Buyer'),
(4, 'jhonpaulstodomingo92@gmail.com', 'scrypt:32768:8:1$3NG7FddSiU8gGMyE$66703b3e47dabefde5f86bd4142ceb2b7e5b76869eafe96c216ce69a9cf7fc6172e6bb559d4dfe5db25aaee4878c453c6f741db4c0cc6564f0a9c52b34177476', 'Courier'),
(5, 'aaronangeles333@gmail.com', 'scrypt:32768:8:1$uaVWoOzNbVY0IJQc$8d6e535cb0ea604ad5a2abb52c0d6912c78d461abfae0d7c357e158bc1ab80a067cec81b6f108fab76ba5e61f9c3d6423ea288826c86963c6baa3f48177bea64', 'Buyer'),
(6, 'aaronangeles325@gmail.com', 'scrypt:32768:8:1$7Zfn9o2yevfYCadB$f29ba9c376fcb0d4e35d12faeaec07c08074f985e16f522a1b5da6b4439ec8d7ab4e2921b9e2458fd19555f182f71df3c79261f06c2774dae270ce01e930b4f7', 'Courier');

-- --------------------------------------------------------

--
-- Table structure for table `account_personal_info`
--

CREATE TABLE `account_personal_info` (
  `personal_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `age` int(11) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_personal_info`
--

INSERT INTO `account_personal_info` (`personal_id`, `firstname`, `lastname`, `sex`, `age`, `birthdate`) VALUES
(1, 'Jhon Paul ', 'Sto Domingo', 'Male', 21, '2004-02-04'),
(3, 'Aaron ', 'Angeles ', 'Male', 50, '1975-03-23'),
(4, 'Luffy ', 'Monkey', 'Male', 21, '2004-05-01'),
(5, 'John Wilfred', 'Jornadal', 'Male', 21, '2004-03-31'),
(7, 'Alla Hukbar', 'BOOM', 'Male', 23, '2001-09-11'),
(8, 'TungTung', 'Sahur', 'Male', 23, '2001-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `account_valid_info`
--

CREATE TABLE `account_valid_info` (
  `valid_id` int(11) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `id_pic` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_valid_info`
--

INSERT INTO `account_valid_info` (`valid_id`, `id_type`, `id_no`, `id_pic`) VALUES
(1, 'Driver\'s License', '433536363636', '7LDx_s9KhD5JyfkOigzQlw_philippine-drivers-license-5fc9f1eb3b9f9.jpg'),
(2, 'Driver\'s License', '68685858585858', 'g8xKB-RhDhpFd0BnOkpByg_24_DriversLicense_Shadow.png'),
(3, 'Driver\'s License', 'gdgdgdgd', 'qLb744ORuWXj5BoJEj6r5Q_24_DriversLicense_Shadow.png'),
(4, 'Driver\'s License', '757585858585', 'WkTO8OuiMwsMS3vsYnEmqQ_WIN_20250210_15_20_31_Pro.jpg'),
(5, 'Driver\'s License', '314124124124124124', 'xWmTLIQvMXM-zUY0JNl_4Q_WIN_20250210_15_19_32_Pro.jpg'),
(6, 'Driver\'s License', '1481274827482414', '1y3QxqFIiPEDfLlMnALmTw_WIN_20250210_15_19_32_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_order_commission`
--

CREATE TABLE `admin_order_commission` (
  `commission_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `commission_rate` decimal(10,2) NOT NULL DEFAULT 8.00,
  `commission_amount` decimal(10,2) NOT NULL CHECK (`commission_amount` >= 0),
  `status` enum('Pending','Paid') NOT NULL DEFAULT 'Pending',
  `date_generated` datetime NOT NULL DEFAULT current_timestamp(),
  `date_paid` datetime DEFAULT NULL,
  `rate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_order_commission`
--

INSERT INTO `admin_order_commission` (`commission_id`, `order_id`, `seller_id`, `commission_rate`, `commission_amount`, `status`, `date_generated`, `date_paid`, `rate_id`) VALUES
(1, 3, 2, 8.00, 8000.00, 'Pending', '2025-06-03 11:19:42', NULL, NULL),
(2, 3, 6, 8.00, 40.00, 'Pending', '2025-06-03 11:19:42', NULL, NULL),
(3, 4, 2, 8.00, 160000.00, 'Pending', '2025-06-03 14:07:48', NULL, NULL),
(4, 4, 6, 8.00, 40.00, 'Pending', '2025-06-03 14:07:48', NULL, NULL),
(5, 7, 2, 8.00, 16.88, 'Pending', '2025-06-03 22:05:42', NULL, NULL),
(6, 7, 6, 8.00, 1.84, 'Pending', '2025-06-03 22:05:42', NULL, NULL),
(7, 9, 2, 8.00, 55.44, 'Pending', '2025-06-04 01:27:07', NULL, NULL),
(8, 9, 6, 8.00, 2.48, 'Pending', '2025-06-04 01:27:07', NULL, NULL),
(9, 10, 2, 8.00, 26.64, 'Pending', '2025-06-04 01:27:13', NULL, NULL),
(10, 10, 6, 8.00, 16.96, 'Pending', '2025-06-04 01:27:13', NULL, NULL),
(11, 11, 2, 8.00, 103111.04, 'Pending', '2025-06-04 01:27:20', NULL, NULL),
(12, 11, 6, 8.00, 2.72, 'Pending', '2025-06-04 01:27:20', NULL, NULL),
(13, 6, 2, 8.00, 17.04, 'Pending', '2025-06-04 01:27:27', NULL, NULL),
(14, 6, 6, 8.00, 18.64, 'Pending', '2025-06-04 01:27:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_sales`
--

CREATE TABLE `admin_sales` (
  `sales_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Seller','Courier') DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `total_sales` decimal(10,2) NOT NULL CHECK (`total_sales` >= 0),
  `date_generated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_sales`
--

INSERT INTO `admin_sales` (`sales_id`, `admin_id`, `user_id`, `user_type`, `order_id`, `total_sales`, `date_generated`) VALUES
(1, 1, 2, 'Seller', 3, 8000.00, '2025-06-03 11:19:42'),
(2, 1, 6, 'Courier', 3, 40.00, '2025-06-03 11:19:42'),
(3, 1, 2, 'Seller', 4, 160000.00, '2025-06-03 14:07:48'),
(4, 1, 6, 'Courier', 4, 40.00, '2025-06-03 14:07:48'),
(5, 1, 2, 'Seller', 7, 16.88, '2025-06-03 22:05:42'),
(6, 1, 6, 'Courier', 7, 1.84, '2025-06-03 22:05:42'),
(7, 1, 2, 'Seller', 9, 55.44, '2025-06-04 01:27:07'),
(8, 1, 6, 'Courier', 9, 2.48, '2025-06-04 01:27:07'),
(9, 1, 2, 'Seller', 10, 26.64, '2025-06-04 01:27:13'),
(10, 1, 6, 'Courier', 10, 16.96, '2025-06-04 01:27:13'),
(11, 1, 2, 'Seller', 11, 103111.04, '2025-06-04 01:27:20'),
(12, 1, 6, 'Courier', 11, 2.72, '2025-06-04 01:27:20'),
(13, 1, 2, 'Seller', 6, 17.04, '2025-06-04 01:27:27'),
(14, 1, 6, 'Courier', 6, 18.64, '2025-06-04 01:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_cart`
--

CREATE TABLE `buyer_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `total_amount` decimal(10,2) NOT NULL CHECK (`total_amount` >= 0),
  `status` enum('On cart','Checked Out') NOT NULL DEFAULT 'On cart',
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_cart`
--

INSERT INTO `buyer_cart` (`cart_id`, `product_id`, `buyer_id`, `quantity`, `total_amount`, `status`, `date_added`) VALUES
(1, 16, 3, 1, 322.00, 'Checked Out', '2025-06-02 03:09:09'),
(2, 22, 3, 1, 234.00, 'Checked Out', '2025-06-02 05:04:07'),
(3, 10, 5, 1, 100000.00, 'Checked Out', '2025-06-03 11:17:23'),
(4, 10, 5, 20, 2000000.00, 'Checked Out', '2025-06-03 13:58:43'),
(5, 21, 5, 1, 234.00, 'Checked Out', '2025-06-03 21:49:38'),
(6, 18, 5, 1, 213.00, 'Checked Out', '2025-06-03 21:52:50'),
(7, 17, 5, 1, 211.00, 'Checked Out', '2025-06-03 22:00:18'),
(8, 22, 5, 1, 234.00, 'Checked Out', '2025-06-04 00:25:26'),
(9, 4, 5, 3, 693.00, 'Checked Out', '2025-06-04 00:25:32'),
(10, 2, 5, 1, 333.00, 'Checked Out', '2025-06-04 00:25:39'),
(11, 19, 5, 4, 1288888.00, 'Checked Out', '2025-06-04 00:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_like`
--

CREATE TABLE `buyer_like` (
  `like_id` int(11) NOT NULL,
  `product_info_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `status` enum('Liked','Unliked') NOT NULL DEFAULT 'Liked',
  `date_liked` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_order`
--

CREATE TABLE `buyer_order` (
  `order_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `total_amount` decimal(10,2) NOT NULL CHECK (`total_amount` >= 0),
  `payment_method` enum('Cash on Delivery') NOT NULL,
  `payment_status` enum('Unpaid','Paid') NOT NULL DEFAULT 'Unpaid',
  `status` enum('Pending','To Pack','Packed','Shipping','Shipped','For Delivery','Out for Delivery','Delivered','Received','Rejected') NOT NULL DEFAULT 'Pending',
  `date_ordered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_order`
--

INSERT INTO `buyer_order` (`order_id`, `shop_id`, `seller_id`, `product_id`, `buyer_id`, `quantity`, `total_amount`, `payment_method`, `payment_status`, `status`, `date_ordered`) VALUES
(1, 1, 2, 16, 3, 1, 352.00, 'Cash on Delivery', 'Unpaid', 'To Pack', '2025-06-02 03:09:20'),
(2, 1, 2, 22, 3, 1, 274.00, 'Cash on Delivery', 'Unpaid', 'Shipped', '2025-06-02 05:04:16'),
(3, 1, 2, 10, 5, 1, 100500.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-03 11:17:40'),
(4, 1, 2, 10, 5, 20, 2000500.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-03 13:59:13'),
(5, 1, 2, 21, 5, 1, 274.00, 'Cash on Delivery', 'Paid', 'Delivered', '2025-06-03 21:49:54'),
(6, 1, 2, 18, 5, 1, 446.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-03 21:52:56'),
(7, 1, 2, 17, 5, 1, 234.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-03 22:00:33'),
(8, 1, 2, 22, 5, 1, 274.00, 'Cash on Delivery', 'Unpaid', 'To Pack', '2025-06-04 01:05:33'),
(9, 1, 2, 4, 5, 3, 724.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-04 01:05:33'),
(10, 1, 2, 2, 5, 1, 545.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-04 01:05:33'),
(11, 1, 2, 19, 5, 4, 1288922.00, 'Cash on Delivery', 'Paid', 'Received', '2025-06-04 01:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `courier_sales`
--

CREATE TABLE `courier_sales` (
  `sales_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sale` decimal(10,2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courier_sales`
--

INSERT INTO `courier_sales` (`sales_id`, `courier_id`, `order_id`, `sale`, `date_created`) VALUES
(1, 6, 3, 460.00, '2025-06-03 11:19:42'),
(2, 6, 4, 460.00, '2025-06-03 14:07:48'),
(3, 6, 7, 21.16, '2025-06-03 22:05:42'),
(4, 6, 9, 28.52, '2025-06-04 01:27:07'),
(5, 6, 10, 195.04, '2025-06-04 01:27:13'),
(6, 6, 11, 31.28, '2025-06-04 01:27:20'),
(7, 6, 6, 214.36, '2025-06-04 01:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `user_id`, `email`, `ip_address`, `user_type`, `status`, `timestamp`) VALUES
(1, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-01 22:19:08'),
(2, 1, 'jhonpaulstodomingo92@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-01 22:25:31'),
(3, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-01 22:39:04'),
(4, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-01 22:40:56'),
(5, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-01 22:41:19'),
(6, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-01 22:41:37'),
(7, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 02:25:48'),
(8, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 02:30:49'),
(9, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 02:49:01'),
(10, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 02:49:16'),
(11, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 02:51:28'),
(12, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 02:51:36'),
(13, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 03:01:27'),
(14, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 03:09:40'),
(15, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 03:09:48'),
(16, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 04:38:46'),
(17, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 04:39:08'),
(18, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 04:39:21'),
(19, NULL, 'admin@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 04:47:28'),
(20, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-02 04:47:49'),
(21, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 04:49:54'),
(22, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 04:50:08'),
(23, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 04:51:27'),
(24, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-02 05:01:38'),
(25, 3, 'kixaho8485@endelite.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 05:03:37'),
(26, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 05:05:43'),
(27, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 05:06:04'),
(28, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-02 05:18:59'),
(29, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-02 05:20:03'),
(30, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 05:20:13'),
(31, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-02 05:20:55'),
(32, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-02 05:21:08'),
(33, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 07:02:55'),
(34, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 08:35:05'),
(35, NULL, 'aaronangeles235@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 08:53:18'),
(36, NULL, 'aaronangeles235@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 08:53:31'),
(37, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 08:53:40'),
(38, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 08:53:46'),
(39, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 08:54:19'),
(40, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 10:30:52'),
(41, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 10:44:38'),
(42, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 10:45:58'),
(43, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 10:46:17'),
(44, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 10:46:48'),
(45, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 10:53:28'),
(46, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 11:17:44'),
(47, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 11:17:55'),
(48, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 11:19:14'),
(49, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 11:26:06'),
(50, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 13:43:55'),
(51, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 13:48:27'),
(52, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 20:14:41'),
(53, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 20:24:23'),
(54, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 20:24:30'),
(55, NULL, 'aaronangeles325@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 20:27:08'),
(56, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 20:27:18'),
(57, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-03 20:27:56'),
(58, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 20:30:18'),
(59, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-03 20:38:26'),
(60, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 21:48:51'),
(61, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-03 21:50:16'),
(62, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 21:50:23'),
(63, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 21:51:37'),
(64, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 21:52:38'),
(65, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 21:53:07'),
(66, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 21:53:46'),
(67, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 21:59:19'),
(68, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 21:59:45'),
(69, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-03 22:00:46'),
(70, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-03 22:04:31'),
(71, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-03 22:05:25'),
(72, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-04 01:02:00'),
(73, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-04 01:02:14'),
(74, 1, 'admin@gmail.com', '127.0.0.1', 'Admin', 'success', '2025-06-04 01:09:42'),
(75, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-04 01:15:28'),
(76, NULL, 'aaronangeles444@gmail.com', '127.0.0.1', NULL, 'failed', '2025-06-04 01:15:43'),
(77, 2, 'aaronangeles444@gmail.com', '127.0.0.1', 'Seller', 'success', '2025-06-04 01:15:51'),
(78, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-04 01:17:09'),
(79, 5, 'aaronangeles333@gmail.com', '127.0.0.1', 'Buyer', 'success', '2025-06-04 01:24:22'),
(80, 6, 'aaronangeles325@gmail.com', '127.0.0.1', 'Courier', 'success', '2025-06-04 01:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` enum('Sent','Delivered','Read') DEFAULT 'Sent',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `notification_type` varchar(100) NOT NULL,
  `notification_title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` enum('Unread','Read') DEFAULT 'Unread',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `recipient_id`, `sender_id`, `notification_type`, `notification_title`, `content`, `status`, `created_at`) VALUES
(1, 1, 1, 'Account Registration', 'New Buyer Registration - Jhon Paul  Sto Domingo', 'A new buyer has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-01 22:25:20'),
(2, 1, 1, 'Account Registration', 'Registration Success', 'Congratulations! 🎉 Your buyer account registration has been created successfully. You can now explore a wide range of the latest products in technology, gadgets, and more.', 'Read', '2025-06-01 22:25:20'),
(3, 1, 2, 'Account Registration', 'New Seller Registration - Aaron  Angeles ', 'A new seller has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-01 22:31:32'),
(4, 1, 3, 'Account Registration', 'New Buyer Registration - Luffy  Monkey', 'A new buyer has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-01 22:38:29'),
(5, 3, 1, 'Account Registration', 'Registration Success', 'Congratulations! 🎉 Your buyer account registration has been created successfully. You can now explore a wide range of the latest products in technology, gadgets, and more.', 'Read', '2025-06-01 22:38:29'),
(6, 2, 1, 'Account Registration', 'Account Approved', 'Congratulations! 🎉 Your seller account has been approved. You can now start managing your shop and selling your products.', 'Read', '2025-06-01 22:40:08'),
(7, 2, 1, 'New Product', 'New Product Added!', 'Your product **bola** has been successfully added to your inventory.', 'Read', '2025-06-01 23:06:31'),
(9, 2, 1, 'New Product', 'New Product Added!', 'Your product **ring** has been successfully added to your inventory.', 'Read', '2025-06-01 23:09:19'),
(10, 2, 1, 'New Product', 'New Product Added!', 'Your product **basketball bag** has been successfully added to your inventory.', 'Read', '2025-06-01 23:11:07'),
(11, 2, 1, 'New Product', 'New Product Added!', 'Your product **tent** has been successfully added to your inventory.', 'Read', '2025-06-01 23:13:36'),
(12, 2, 1, 'New Product', 'New Product Added!', 'Your product **Camping chair** has been successfully added to your inventory.', 'Read', '2025-06-01 23:15:08'),
(13, 2, 1, 'New Product', 'New Product Added!', 'Your product **Light** has been successfully added to your inventory.', 'Read', '2025-06-01 23:16:14'),
(14, 2, 1, 'New Product', 'New Product Added!', 'Your product **Stove** has been successfully added to your inventory.', 'Read', '2025-06-01 23:17:19'),
(15, 2, 1, 'New Product', 'New Product Added!', 'Your product **camping bag** has been successfully added to your inventory.', 'Read', '2025-06-01 23:18:49'),
(16, 2, 1, 'New Product', 'New Product Added!', 'Your product **weights** has been successfully added to your inventory.', 'Read', '2025-06-01 23:20:44'),
(17, 2, 1, 'New Product', 'New Product Added!', 'Your product **Jumping Rope** has been successfully added to your inventory.', 'Read', '2025-06-01 23:23:31'),
(18, 2, 1, 'New Product', 'New Product Added!', 'Your product **running shorts** has been successfully added to your inventory.', 'Read', '2025-06-01 23:24:47'),
(19, 2, 1, 'New Product', 'New Product Added!', 'Your product **Running shoes** has been successfully added to your inventory.', 'Read', '2025-06-01 23:26:00'),
(20, 2, 1, 'New Product', 'New Product Added!', 'Your product **Running watch** has been successfully added to your inventory.', 'Read', '2025-06-01 23:27:08'),
(21, 2, 1, 'New Product', 'New Product Added!', 'Your product **SNorkles** has been successfully added to your inventory.', 'Read', '2025-06-01 23:35:13'),
(22, 2, 1, 'New Product', 'New Product Added!', 'Your product **Drifit shirt** has been successfully added to your inventory.', 'Read', '2025-06-01 23:36:44'),
(23, 2, 1, 'New Product', 'New Product Added!', 'Your product **first aid kit** has been successfully added to your inventory.', 'Read', '2025-06-01 23:38:01'),
(24, 2, 1, 'New Product', 'New Product Added!', 'Your product **punching bag** has been successfully added to your inventory.', 'Read', '2025-06-01 23:39:26'),
(25, 2, 1, 'New Product', 'New Product Added!', 'Your product **volleyball ball** has been successfully added to your inventory.', 'Read', '2025-06-01 23:40:42'),
(26, 3, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-02 03:09:20'),
(27, 2, 1, 'New Order', 'New Order Received - Luffy  Monkey', 'Luffy  Monkey has placed an order for: SNorkles. Please check your orders section to process the order.', 'Read', '2025-06-02 03:09:20'),
(28, 3, 1, 'Order Update', 'Order Approved', 'Your order for SNorkles has been approved and is now being prepared for packing.', 'Read', '2025-06-02 03:10:00'),
(29, 2, 1, 'New Product', 'New Product Added!', 'Your product **Cleveland Tshirt** has been successfully added to your inventory.', 'Unread', '2025-06-02 04:55:22'),
(30, 1, 4, 'Account Registration', 'New Courier Registration - John Wilfred Jornadal', 'A new courier has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-02 05:00:52'),
(31, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:49'),
(32, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:52'),
(33, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:52'),
(34, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:52'),
(35, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(36, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(37, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(38, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(39, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(40, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(41, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(42, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(43, 4, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Unread', '2025-06-02 05:01:55'),
(44, 3, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Unread', '2025-06-02 05:04:16'),
(45, 2, 1, 'New Order', 'New Order Received - Luffy  Monkey', 'Luffy  Monkey has placed an order for: Cleveland Tshirt. Please check your orders section to process the order.', 'Unread', '2025-06-02 05:04:16'),
(46, 3, 1, 'Order Update', 'Order Approved', 'Your order for Cleveland Tshirt has been approved and is now being prepared for packing.', 'Unread', '2025-06-02 05:06:12'),
(47, 3, 1, 'Order Update', 'Order Packed', 'Your order for Cleveland Tshirt has been packed and is ready for shipment.', 'Unread', '2025-06-02 05:06:20'),
(48, 3, 1, 'Order Update', 'Order in Shipping', 'Your order for Cleveland Tshirt has been handed off to Standard Shipping and is now in shipping process.', 'Unread', '2025-06-02 05:06:28'),
(49, 3, 1, 'Order Update', 'Order Shipped', 'Your order for Cleveland Tshirt has been shipped and is on its way to you.', 'Unread', '2025-06-02 05:06:34'),
(50, 1, 5, 'Account Registration', 'New Buyer Registration - Alla Hukbar BOOM', 'A new buyer has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-02 05:14:21'),
(51, 5, 1, 'Account Registration', 'Registration Success', 'Congratulations! 🎉 Your buyer account registration has been created successfully. You can now explore a wide range of the latest products in technology, gadgets, and more.', 'Read', '2025-06-02 05:14:21'),
(52, 1, 6, 'Account Registration', 'New Courier Registration - TungTung Sahur', 'A new courier has successfully registered and is waiting for your approval. Check Now!', 'Read', '2025-06-02 05:18:38'),
(53, 6, 1, 'Account Registration', 'Account Approved', 'Your courier account has been approved! You can now start accepting delivery requests.', 'Read', '2025-06-02 05:19:38'),
(54, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-03 11:17:40'),
(55, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: weights. Please check your orders section to process the order.', 'Unread', '2025-06-03 11:17:40'),
(56, 5, 1, 'Order Update', 'Order Approved', 'Your order for weights has been approved and is now being prepared for packing.', 'Read', '2025-06-03 11:18:03'),
(57, 5, 1, 'Order Update', 'Order Packed', 'Your order for weights has been packed and is ready for shipment.', 'Read', '2025-06-03 11:18:15'),
(58, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for weights has been handed off to Standard Shipping and is now in shipping process.', 'Read', '2025-06-03 11:18:36'),
(59, 5, 1, 'Order Update', 'Order Shipped', 'Your order for weights has been shipped and is on its way to you.', 'Read', '2025-06-03 11:18:44'),
(60, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #3 for weights has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Read', '2025-06-03 11:18:55'),
(61, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #3', 'You have been assigned to deliver Order #3 for weights to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-03 11:18:55'),
(62, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #3 for weights is now out for delivery with courier  .', 'Read', '2025-06-03 11:19:22'),
(63, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #3 for weights has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-03 11:19:22'),
(64, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #3 for weights has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Read', '2025-06-03 11:19:34'),
(65, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #3 for weights has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 11:19:34'),
(66, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #3 (weights). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 11:19:42'),
(67, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-03 13:59:13'),
(68, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: weights. Please check your orders section to process the order.', 'Unread', '2025-06-03 13:59:13'),
(69, 2, 1, 'Stock Alert', 'Out of Stock Alert!', 'Your product **weights - 100kg (black)** is completely out of stock. Restock as soon as possible.', 'Unread', '2025-06-03 13:59:15'),
(70, 5, 1, 'Order Update', 'Order Approved', 'Your order for weights has been approved and is now being prepared for packing.', 'Read', '2025-06-03 13:59:31'),
(71, 5, 1, 'Order Update', 'Order Packed', 'Your order for weights has been packed and is ready for shipment.', 'Read', '2025-06-03 13:59:55'),
(72, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for weights has been handed off to Standard Shipping and is now in shipping process.', 'Read', '2025-06-03 14:00:31'),
(73, 5, 1, 'Order Update', 'Order Shipped', 'Your order for weights has been shipped and is on its way to you.', 'Read', '2025-06-03 14:01:09'),
(74, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #4 for weights has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Read', '2025-06-03 14:04:17'),
(75, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #4', 'You have been assigned to deliver Order #4 for weights to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-03 14:04:17'),
(76, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #4 for weights is now out for delivery with courier  .', 'Read', '2025-06-03 14:04:27'),
(77, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #4 for weights has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-03 14:04:27'),
(78, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #4 for weights has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Read', '2025-06-03 14:04:44'),
(79, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #4 for weights has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 14:04:44'),
(80, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #4 (weights). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 14:07:48'),
(81, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-03 21:49:54'),
(82, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: Cleveland Tshirt. Please check your orders section to process the order.', 'Unread', '2025-06-03 21:49:54'),
(83, 5, 1, 'Order Update', 'Order Approved', 'Your order for Cleveland Tshirt has been approved and is now being prepared for packing.', 'Read', '2025-06-03 21:50:36'),
(84, 5, 1, 'Order Update', 'Order Packed', 'Your order for Cleveland Tshirt has been packed and is ready for shipment.', 'Read', '2025-06-03 21:50:44'),
(85, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-03 21:52:56'),
(86, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: first aid kit. Please check your orders section to process the order.', 'Unread', '2025-06-03 21:52:56'),
(87, 5, 1, 'Order Update', 'Order Approved', 'Your order for first aid kit has been approved and is now being prepared for packing.', 'Read', '2025-06-03 21:53:12'),
(88, 5, 1, 'Order Update', 'Order Packed', 'Your order for first aid kit has been packed and is ready for shipment.', 'Read', '2025-06-03 21:53:16'),
(89, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for first aid kit has been handed off to Standard Shipping and is now in shipping process.', 'Read', '2025-06-03 21:53:20'),
(90, 5, 1, 'Order Update', 'Order Shipped', 'Your order for first aid kit has been shipped and is on its way to you.', 'Read', '2025-06-03 21:53:26'),
(91, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #6 for first aid kit has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Read', '2025-06-03 21:53:32'),
(92, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #6', 'You have been assigned to deliver Order #6 for first aid kit to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-03 21:53:32'),
(93, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #6 for first aid kit is now out for delivery with courier  .', 'Read', '2025-06-03 21:53:52'),
(94, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #6 for first aid kit has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-03 21:53:52'),
(95, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #6 for first aid kit has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Read', '2025-06-03 21:54:05'),
(96, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #6 for first aid kit has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 21:54:05'),
(97, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Read', '2025-06-03 22:00:33'),
(98, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: Drifit shirt. Please check your orders section to process the order.', 'Unread', '2025-06-03 22:00:33'),
(99, 5, 1, 'Order Update', 'Order Approved', 'Your order for Drifit shirt has been approved and is now being prepared for packing.', 'Read', '2025-06-03 22:00:58'),
(100, 5, 1, 'Order Update', 'Order Packed', 'Your order for Drifit shirt has been packed and is ready for shipment.', 'Read', '2025-06-03 22:01:08'),
(101, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for Drifit shirt has been handed off to Standard Shipping and is now in shipping process.', 'Read', '2025-06-03 22:01:23'),
(102, 5, 1, 'Order Update', 'Order Shipped', 'Your order for Drifit shirt has been shipped and is on its way to you.', 'Read', '2025-06-03 22:01:32'),
(103, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #7 for Drifit shirt has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Read', '2025-06-03 22:01:46'),
(104, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #7', 'You have been assigned to deliver Order #7 for Drifit shirt to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-03 22:01:46'),
(105, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #7 for Drifit shirt is now out for delivery with courier  .', 'Read', '2025-06-03 22:05:04'),
(106, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #7 for Drifit shirt has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-03 22:05:04'),
(107, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #7 for Drifit shirt has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Read', '2025-06-03 22:05:12'),
(108, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #7 for Drifit shirt has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 22:05:12'),
(109, 1, 2, 'Commission Received', 'New Commission from Seller', 'You have received ₱16.88 commission from Order #7 (Drifit shirt) by Alla Hukbar BOOM', 'Unread', '2025-06-03 22:05:42'),
(110, 1, 6, 'Commission Received', 'New Commission from Courier', 'You have received ₱1.84 commission from Order #7 (Drifit shirt) delivery by Alla Hukbar BOOM', 'Unread', '2025-06-03 22:05:42'),
(111, 2, 1, 'Sales Added', 'Payment Received & Sales Updated', '₱194.12 has been added to your sales from Order #7 (Drifit shirt) by Alla Hukbar BOOM. Commission: ₱16.88', 'Unread', '2025-06-03 22:05:42'),
(112, 6, 1, 'Sales Added', 'Delivery Payment Received & Sales Updated', '₱21.16 has been added to your sales from Order #7 (Drifit shirt) delivery by Alla Hukbar BOOM. Commission: ₱1.84', 'Read', '2025-06-03 22:05:42'),
(113, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #7 (Drifit shirt). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-03 22:05:42'),
(114, 5, 1, 'Order Confirmation', 'Order Placed Successfully', 'Your order has been placed successfully. Orders will be processed soon.', 'Unread', '2025-06-04 01:05:33'),
(115, 2, 1, 'New Order', 'New Order Received - Alla Hukbar BOOM', 'Alla Hukbar BOOM has placed an order for: Cleveland Tshirt, basketball bag, bola and 1 more items. Please check your orders section to process the order.', 'Unread', '2025-06-04 01:05:33'),
(116, 5, 1, 'Order Update', 'Order Approved', 'Your order for punching bag has been approved and is now being prepared for packing.', 'Unread', '2025-06-04 01:15:59'),
(117, 5, 1, 'Order Update', 'Order Approved', 'Your order for bola has been approved and is now being prepared for packing.', 'Unread', '2025-06-04 01:16:01'),
(118, 5, 1, 'Order Update', 'Order Approved', 'Your order for basketball bag has been approved and is now being prepared for packing.', 'Unread', '2025-06-04 01:16:02'),
(119, 5, 1, 'Order Update', 'Order Approved', 'Your order for Cleveland Tshirt has been approved and is now being prepared for packing.', 'Unread', '2025-06-04 01:16:04'),
(120, 5, 1, 'Order Update', 'Order Packed', 'Your order for punching bag has been packed and is ready for shipment.', 'Unread', '2025-06-04 01:16:08'),
(121, 5, 1, 'Order Update', 'Order Packed', 'Your order for bola has been packed and is ready for shipment.', 'Unread', '2025-06-04 01:16:10'),
(122, 5, 1, 'Order Update', 'Order Packed', 'Your order for basketball bag has been packed and is ready for shipment.', 'Unread', '2025-06-04 01:16:12'),
(123, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for punching bag has been handed off to Standard Shipping and is now in shipping process.', 'Unread', '2025-06-04 01:16:16'),
(124, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for bola has been handed off to Standard Shipping and is now in shipping process.', 'Unread', '2025-06-04 01:16:18'),
(125, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for basketball bag has been handed off to Standard Shipping and is now in shipping process.', 'Unread', '2025-06-04 01:16:19'),
(126, 5, 1, 'Order Update', 'Order in Shipping', 'Your order for Cleveland Tshirt has been handed off to Standard Shipping and is now in shipping process.', 'Unread', '2025-06-04 01:16:21'),
(127, 5, 1, 'Order Update', 'Order Shipped', 'Your order for basketball bag has been shipped and is on its way to you.', 'Unread', '2025-06-04 01:16:25'),
(128, 5, 1, 'Order Update', 'Order Shipped', 'Your order for bola has been shipped and is on its way to you.', 'Unread', '2025-06-04 01:16:26'),
(129, 5, 1, 'Order Update', 'Order Shipped', 'Your order for punching bag has been shipped and is on its way to you.', 'Unread', '2025-06-04 01:16:28'),
(130, 5, 1, 'Order Update', 'Order Shipped', 'Your order for Cleveland Tshirt has been shipped and is on its way to you.', 'Unread', '2025-06-04 01:16:30'),
(131, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #11 for punching bag has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Unread', '2025-06-04 01:16:39'),
(132, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #11', 'You have been assigned to deliver Order #11 for punching bag to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-04 01:16:39'),
(133, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #10 for bola has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Unread', '2025-06-04 01:16:44'),
(134, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #10', 'You have been assigned to deliver Order #10 for bola to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-04 01:16:44'),
(135, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #9 for basketball bag has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Unread', '2025-06-04 01:16:47'),
(136, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #9', 'You have been assigned to deliver Order #9 for basketball bag to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-04 01:16:47'),
(137, 5, 1, 'Order Update', 'Courier Assigned', 'Your order #5 for Cleveland Tshirt has been assigned to courier TungTung Sahur and is awaiting acceptance for delivery.', 'Unread', '2025-06-04 01:16:50'),
(138, 6, 1, 'Delivery Assignment', 'New Delivery Assignment - Order #5', 'You have been assigned to deliver Order #5 for Cleveland Tshirt to Alla Hukbar BOOM. Please accept or decline this delivery assignment within 8 hours.', 'Read', '2025-06-04 01:16:50'),
(139, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #5 for Cleveland Tshirt is now out for delivery with courier  .', 'Unread', '2025-06-04 01:17:49'),
(140, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #5 for Cleveland Tshirt has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-04 01:17:49'),
(141, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #9 for basketball bag is now out for delivery with courier  .', 'Unread', '2025-06-04 01:17:51'),
(142, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #9 for basketball bag has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-04 01:17:51'),
(143, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #10 for bola is now out for delivery with courier  .', 'Unread', '2025-06-04 01:17:52'),
(144, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #10 for bola has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-04 01:17:52'),
(145, 5, 1, 'Delivery Update', 'Order Out for Delivery', 'Great news! Your order #11 for punching bag is now out for delivery with courier  .', 'Unread', '2025-06-04 01:17:54'),
(146, 2, 1, 'Delivery Update', 'Order Out for Delivery', 'Order #11 for punching bag has been accepted by courier   and is now out for delivery to Alla Hukbar BOOM.', 'Unread', '2025-06-04 01:17:54'),
(147, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #5 for Cleveland Tshirt has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Unread', '2025-06-04 01:24:07'),
(148, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #5 for Cleveland Tshirt has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:24:07'),
(149, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #9 for basketball bag has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Unread', '2025-06-04 01:24:09'),
(150, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #9 for basketball bag has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:24:09'),
(151, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #10 for bola has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Unread', '2025-06-04 01:24:11'),
(152, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #10 for bola has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:24:11'),
(153, 5, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Your order #11 for punching bag has been successfully delivered and payment has been confirmed. Thank you for your purchase!', 'Unread', '2025-06-04 01:24:13'),
(154, 2, 1, 'Order Complete', 'Order Delivered & Payment Confirmed', 'Order #11 for punching bag has been successfully delivered to Alla Hukbar BOOM by courier  . Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:24:13'),
(155, 1, 2, 'Commission Received', 'New Commission from Seller', 'You have received ₱55.44 commission from Order #9 (basketball bag) by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:07'),
(156, 1, 6, 'Commission Received', 'New Commission from Courier', 'You have received ₱2.48 commission from Order #9 (basketball bag) delivery by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:07'),
(157, 2, 1, 'Sales Added', 'Payment Received & Sales Updated', '₱637.56 has been added to your sales from Order #9 (basketball bag) by Alla Hukbar BOOM. Commission: ₱55.44', 'Unread', '2025-06-04 01:27:07'),
(158, 6, 1, 'Sales Added', 'Delivery Payment Received & Sales Updated', '₱28.52 has been added to your sales from Order #9 (basketball bag) delivery by Alla Hukbar BOOM. Commission: ₱2.48', 'Unread', '2025-06-04 01:27:07'),
(159, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #9 (basketball bag). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:27:07'),
(160, 1, 2, 'Commission Received', 'New Commission from Seller', 'You have received ₱26.64 commission from Order #10 (bola) by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:13'),
(161, 1, 6, 'Commission Received', 'New Commission from Courier', 'You have received ₱16.96 commission from Order #10 (bola) delivery by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:13'),
(162, 2, 1, 'Sales Added', 'Payment Received & Sales Updated', '₱306.36 has been added to your sales from Order #10 (bola) by Alla Hukbar BOOM. Commission: ₱26.64', 'Unread', '2025-06-04 01:27:13'),
(163, 6, 1, 'Sales Added', 'Delivery Payment Received & Sales Updated', '₱195.04 has been added to your sales from Order #10 (bola) delivery by Alla Hukbar BOOM. Commission: ₱16.96', 'Unread', '2025-06-04 01:27:13'),
(164, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #10 (bola). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:27:13'),
(165, 2, 1, 'New Review', 'Customer Review Received', '  left a 5-star review (★★★★★) for Order #10 (bola)', 'Unread', '2025-06-04 01:27:17'),
(166, 1, 2, 'Commission Received', 'New Commission from Seller', 'You have received ₱103111.04 commission from Order #11 (punching bag) by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:21'),
(167, 1, 6, 'Commission Received', 'New Commission from Courier', 'You have received ₱2.72 commission from Order #11 (punching bag) delivery by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:21'),
(168, 2, 1, 'Sales Added', 'Payment Received & Sales Updated', '₱1185776.96 has been added to your sales from Order #11 (punching bag) by Alla Hukbar BOOM. Commission: ₱103111.04', 'Unread', '2025-06-04 01:27:21'),
(169, 6, 1, 'Sales Added', 'Delivery Payment Received & Sales Updated', '₱31.28 has been added to your sales from Order #11 (punching bag) delivery by Alla Hukbar BOOM. Commission: ₱2.72', 'Unread', '2025-06-04 01:27:21'),
(170, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #11 (punching bag). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:27:21'),
(171, 1, 2, 'Commission Received', 'New Commission from Seller', 'You have received ₱17.04 commission from Order #6 (first aid kit) by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:27'),
(172, 1, 6, 'Commission Received', 'New Commission from Courier', 'You have received ₱18.64 commission from Order #6 (first aid kit) delivery by Alla Hukbar BOOM', 'Unread', '2025-06-04 01:27:27'),
(173, 2, 1, 'Sales Added', 'Payment Received & Sales Updated', '₱195.96 has been added to your sales from Order #6 (first aid kit) by Alla Hukbar BOOM. Commission: ₱17.04', 'Unread', '2025-06-04 01:27:27'),
(174, 6, 1, 'Sales Added', 'Delivery Payment Received & Sales Updated', '₱214.36 has been added to your sales from Order #6 (first aid kit) delivery by Alla Hukbar BOOM. Commission: ₱18.64', 'Unread', '2025-06-04 01:27:27'),
(175, 2, 1, 'Order Received', 'Order Received & Payment Confirmed', 'Alla Hukbar BOOM has received Order #6 (first aid kit). Payment has been confirmed and the order is now complete.', 'Unread', '2025-06-04 01:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_completed`
--

CREATE TABLE `order_completed` (
  `completed_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_completed` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Completed') NOT NULL DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_completed`
--

INSERT INTO `order_completed` (`completed_id`, `order_id`, `date_completed`, `status`) VALUES
(1, 3, '2025-06-03 11:19:34', 'Completed'),
(2, 4, '2025-06-03 14:04:44', 'Completed'),
(3, 6, '2025-06-03 21:54:05', 'Completed'),
(4, 7, '2025-06-03 22:05:12', 'Completed'),
(5, 5, '2025-06-04 01:24:07', 'Completed'),
(6, 9, '2025-06-04 01:24:09', 'Completed'),
(7, 10, '2025-06-04 01:24:11', 'Completed'),
(8, 11, '2025-06-04 01:24:13', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery`
--

CREATE TABLE `order_delivery` (
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `date_delivered` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('For Delivery','Out for Delivery','Delivered') NOT NULL DEFAULT 'For Delivery'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_delivery`
--

INSERT INTO `order_delivery` (`delivery_id`, `order_id`, `courier_id`, `date_delivered`, `status`) VALUES
(1, 3, 6, '2025-06-03 11:18:55', 'Delivered'),
(2, 4, 6, '2025-06-03 14:04:17', 'Delivered'),
(3, 6, 6, '2025-06-03 21:53:32', 'Delivered'),
(4, 7, 6, '2025-06-03 22:01:46', 'Delivered'),
(5, 11, 6, '2025-06-04 01:16:39', 'Delivered'),
(6, 10, 6, '2025-06-04 01:16:44', 'Delivered'),
(7, 9, 6, '2025-06-04 01:16:47', 'Delivered'),
(8, 5, 6, '2025-06-04 01:16:50', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `order_packing`
--

CREATE TABLE `order_packing` (
  `packing_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` enum('Packing','Packed') NOT NULL DEFAULT 'Packing',
  `date_packed` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_packing`
--

INSERT INTO `order_packing` (`packing_id`, `order_id`, `status`, `date_packed`) VALUES
(1, 2, 'Packed', '2025-06-02 05:06:20'),
(2, 3, 'Packed', '2025-06-03 11:18:15'),
(3, 4, 'Packed', '2025-06-03 13:59:55'),
(4, 5, 'Packed', '2025-06-03 21:50:44'),
(5, 6, 'Packed', '2025-06-03 21:53:16'),
(6, 7, 'Packed', '2025-06-03 22:01:08'),
(7, 11, 'Packed', '2025-06-04 01:16:08'),
(8, 10, 'Packed', '2025-06-04 01:16:10'),
(9, 9, 'Packed', '2025-06-04 01:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_received`
--

CREATE TABLE `order_received` (
  `received_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `date_received` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('To Receive','Received') NOT NULL DEFAULT 'To Receive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_received`
--

INSERT INTO `order_received` (`received_id`, `order_id`, `buyer_id`, `date_received`, `status`) VALUES
(1, 3, 5, '2025-06-03 11:19:34', 'Received'),
(2, 3, 5, '2025-06-03 11:19:42', 'Received'),
(3, 4, 5, '2025-06-03 14:04:44', 'Received'),
(4, 4, 5, '2025-06-03 14:07:48', 'Received'),
(5, 6, 5, '2025-06-03 21:54:05', 'Received'),
(6, 7, 5, '2025-06-03 22:05:12', 'Received'),
(7, 7, 5, '2025-06-03 22:05:42', 'Received'),
(8, 5, 5, '2025-06-04 01:24:07', 'Received'),
(9, 9, 5, '2025-06-04 01:24:09', 'Received'),
(10, 10, 5, '2025-06-04 01:24:11', 'Received'),
(11, 11, 5, '2025-06-04 01:24:13', 'Received'),
(12, 9, 5, '2025-06-04 01:27:07', 'Received'),
(13, 10, 5, '2025-06-04 01:27:13', 'Received'),
(14, 11, 5, '2025-06-04 01:27:20', 'Received'),
(15, 6, 5, '2025-06-04 01:27:27', 'Received');

-- --------------------------------------------------------

--
-- Table structure for table `order_shipping`
--

CREATE TABLE `order_shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `logistic_name` varchar(50) NOT NULL,
  `date_shipping` datetime NOT NULL DEFAULT current_timestamp(),
  `date_shipped` datetime DEFAULT NULL,
  `status` enum('Shipping','Shipped') NOT NULL DEFAULT 'Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_shipping`
--

INSERT INTO `order_shipping` (`shipping_id`, `order_id`, `logistic_name`, `date_shipping`, `date_shipped`, `status`) VALUES
(1, 2, 'Standard Shipping', '2025-06-02 05:06:28', '2025-06-02 05:06:34', 'Shipped'),
(2, 3, 'Standard Shipping', '2025-06-03 11:18:36', '2025-06-03 11:18:44', 'Shipped'),
(3, 4, 'Standard Shipping', '2025-06-03 14:00:31', '2025-06-03 14:01:09', 'Shipped'),
(4, 6, 'Standard Shipping', '2025-06-03 21:53:20', '2025-06-03 21:53:26', 'Shipped'),
(5, 7, 'Standard Shipping', '2025-06-03 22:01:23', '2025-06-03 22:01:32', 'Shipped'),
(6, 11, 'Standard Shipping', '2025-06-04 01:16:16', '2025-06-04 01:16:28', 'Shipped'),
(7, 10, 'Standard Shipping', '2025-06-04 01:16:18', '2025-06-04 01:16:26', 'Shipped'),
(8, 9, 'Standard Shipping', '2025-06-04 01:16:19', '2025-06-04 01:16:25', 'Shipped'),
(9, 5, 'Standard Shipping', '2025-06-04 01:16:21', '2025-06-04 01:16:30', 'Shipped');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_info_id` int(11) NOT NULL,
  `variant` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL CHECK (`stock` >= 0),
  `stock_status` enum('Active','Nearly Out of Stock','Out of Stock') DEFAULT NULL,
  `price` decimal(10,2) NOT NULL CHECK (`price` >= 0),
  `shipping_fee` decimal(10,2) NOT NULL,
  `status` enum('Active','Archived','Deleted') NOT NULL DEFAULT 'Active',
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_info_id`, `variant`, `color`, `stock`, `stock_status`, `price`, `shipping_fee`, `status`, `date_added`) VALUES
(1, 1, 'rr', 'orange', 333, 'Active', 233.00, 212.00, 'Active', '2025-06-01 23:06:31'),
(2, 1, 'ff', 'orange', 11110, 'Active', 333.00, 212.00, 'Active', '2025-06-01 23:06:31'),
(3, 3, 'ring', 'orange', 21, 'Active', 211.00, 21.00, 'Active', '2025-06-01 23:09:19'),
(4, 4, 'standard size', 'black', 18, 'Active', 231.00, 31.00, 'Active', '2025-06-01 23:11:07'),
(5, 5, 'standard size', 'green', 31, 'Active', 3000.00, 200.00, 'Active', '2025-06-01 23:13:36'),
(6, 6, 'standard size', 'green', 211, 'Active', 322.00, 32.00, 'Active', '2025-06-01 23:15:08'),
(7, 7, 'standard size', 'black', 32, 'Active', 322.00, 32.00, 'Active', '2025-06-01 23:16:14'),
(8, 8, 'standard size', 'black', 33, 'Active', 322.00, 43.00, 'Active', '2025-06-01 23:17:19'),
(9, 9, 'standard size', 'orange', 22, 'Active', 3222.00, 322.00, 'Active', '2025-06-01 23:18:49'),
(10, 10, '100kg', 'black', 0, 'Out of Stock', 100000.00, 500.00, 'Active', '2025-06-01 23:20:44'),
(11, 11, 'long', 'black', 32, 'Active', 323.00, 23.00, 'Active', '2025-06-01 23:23:31'),
(12, 12, 'small', 'black', 32, 'Active', 323.00, 34.00, 'Active', '2025-06-01 23:24:47'),
(13, 13, 'small', 'black', 333, 'Active', 3222.00, 322.00, 'Active', '2025-06-01 23:26:00'),
(14, 14, 'standard size', 'orange', 33, 'Active', 323.00, 323.00, 'Active', '2025-06-01 23:27:08'),
(15, 15, 'Small', 'Blue', 14, 'Active', 233.00, 30.00, 'Active', '2025-06-01 23:35:13'),
(16, 15, 'Big', 'Purple', 13, 'Active', 322.00, 30.00, 'Active', '2025-06-01 23:35:13'),
(17, 16, 'standard size', 'black', 31, 'Active', 211.00, 23.00, 'Active', '2025-06-01 23:36:44'),
(18, 17, 'standard size', 'red', 321, 'Active', 213.00, 233.00, 'Active', '2025-06-01 23:38:01'),
(19, 18, 'standard size', 'black', 28, 'Active', 322222.00, 34.00, 'Active', '2025-06-01 23:39:26'),
(20, 19, 'standard size', 'orange', 33, 'Active', 322.00, 32.00, 'Active', '2025-06-01 23:40:42'),
(21, 20, 'X', 'RED', 49, 'Active', 234.00, 40.00, 'Active', '2025-06-02 04:55:22'),
(22, 20, 'M', 'WHITE', 21, 'Active', 234.00, 40.00, 'Active', '2025-06-02 04:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_feedback`
--

CREATE TABLE `product_feedback` (
  `feedback_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `date_feedback` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `images_id` int(11) NOT NULL,
  `product_info_id` int(11) NOT NULL,
  `product_image` varchar(299) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`images_id`, `product_info_id`, `product_image`) VALUES
(1, 1, 'XCNy3Xx4DrSsoItzL4Vx3w_Basketball_Sports_Equipment_Sports_League_Woodville-Tompkins_Institute_PNG.jpg'),
(2, 3, 'KtKBd_Ysw2j2fv8U2_dqAQ_ring.jpg'),
(3, 4, 'cTiKAWlrLbRPcVQ6yhd7Jw_bbag.jpg'),
(4, 5, 'gvAc1ZEqO_RLldPm-mRZ4Q_tent.jpg'),
(5, 6, 'IDRWxDlsc9aHJBntFbnDpA_chair.jpg'),
(6, 7, 'q7cfSE0cUL9lkJNvczU_gQ_Amazon_com__4_Pack_Solar_USB_Rechargeable_3_AA_Power_Brightest_COB_LED_Camping_Lantern_with_Magnetic_Base_Charging_for_Android_Waterproof_Collapsible_Emergency_LED_Light__Home_Improvement.jpg'),
(7, 8, 'g4gEogJZqbUtshZR30DfyQ_MSR_Dragonfly_Compact_Liquid_Fuel_Camping_and_Backpacking_Stove.jpg'),
(8, 9, '6ER8rNxg9hBjsDkYViDMkQ_cbag.jpg'),
(9, 10, 'gweZj-QTpgvI19YHwIU-hA_pabigat.jpg'),
(10, 11, 'hY_1VjnOfThsC4038zFwvQ_tali.jpg'),
(11, 12, 'GuetBnXh1sGsdCls6VxtVg_short.jpg'),
(12, 13, 'JwQ_YEsdLZ8lmbwWoK4pgg_shoes.jpg'),
(13, 14, 'VsA7_HeynmugTkFsamel3Q_Garmin_Forerunner_55___Running_Smartwatch___Sports_Watch.jpg'),
(14, 15, 'aGSaMGW6KKTP8P4SW1Ob5Q_snorkle.jpg'),
(15, 16, 'mJ4KbYDsPWIjw0RNOEcKkg_Mens_Running_Compression_T-shirt_Short_Sleeve_Sport_Tees_Gym_Fitness_Sweatshirt_Male_Jogging.jpg'),
(16, 17, '4F69nFToqFmbc8rTESppIw_First_Aid_Kit_-_230_Piece_-_for_Car_Home_Travel_Camping_Office_or_Sports___Red_Bag_Reflective_Cross_Fully_Stocked_with_Essential_Supplies_for_Emergency_and_Survival.jpg'),
(17, 18, '08KtWhK8b1KniZ-ZxZF2tw_download_1.jpg'),
(18, 19, 'He0Fija-JqX47CEqQnEQow_mikasa_volleyball.jpg'),
(19, 20, 'AJJg54TXKPXaev5mhAv9wQ_webleedohio-shirts-tops-cleveland-nothing-but-net-basketball-t-shirt-xxlarge-royal-30882157330486.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_info_id` int(11) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` text NOT NULL,
  `product_main_pic` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_info_id`, `product_category`, `product_name`, `product_description`, `product_main_pic`) VALUES
(1, 'Basketball Equipments', 'bola', 'dddddddddddddddddddddd', 'JrBpip8ECK66SgQq403hQA_Basketball_Sports_Equipment_Sports_League_Woodville-Tompkins_Institute_PNG.jpg'),
(3, 'Basketball Equipments', 'ring', 'shoot mo sabutas', '50P-y8sOSMKK-_6HhK-cGw_ring.jpg'),
(4, 'Basketball Equipments', 'basketball bag', 'pede ilagay buong barangay', 'eQXIg04N_LZXcH9HW2dJ5g_bbag.jpg'),
(5, 'Camping Equipments', 'tent', 'pede tulugan at higaan', 'w9HasgmoK6NScBM74RCj7Q_tent.jpg'),
(6, 'Camping Equipments', 'Camping chair', 'pede upuan basta nakatayo', 'pZ5O0vDWKhL7iRQQh3GK2g_chair.jpg'),
(7, 'Camping Equipments', 'Light', 'maliwanag na walang chance', 'icVidl17I1SHSqeHz_W3aA_Amazon_com__4_Pack_Solar_USB_Rechargeable_3_AA_Power_Brightest_COB_LED_Camping_Lantern_with_Magnetic_Base_Charging_for_Android_Waterproof_Collapsible_Emergency_LED_Light__Home_Improvement.jpg'),
(8, 'Camping Equipments', 'Stove', 'portable stove to', 'ZSLU3ADqSvH05Jhd0IsLtw_MSR_Dragonfly_Compact_Liquid_Fuel_Camping_and_Backpacking_Stove.jpg'),
(9, 'Camping Equipments', 'camping bag', 'many space for storage', '2xPluZOYtX60SQ0CbFAZXA_cbag.jpg'),
(10, 'Gym Equipments', 'weights', 'mabigat at magaan', '3qB-UNaucNuX5EGP2xsZHQ_pabigat.jpg'),
(11, 'Gym Equipments', 'Jumping Rope', 'jump jump jump', '18QyCOYgm8e7uE1dSq94XA_tali.jpg'),
(12, 'Running Essentials', 'running shorts', 'suutin pag tatakbo', 'wUCdjOe4pgDSjHm3bcgLnw_short.jpg'),
(13, 'Running Essentials', 'Running shoes', 'pang takbo para mabilis', 'bph0EDLa-YPIx_4SRfj6VQ_shoes.jpg'),
(14, 'Running Essentials', 'Running watch', 'tingin ka pintig ng dugo', 'OmZ3hnofu3R41ku7JfjS1A_Garmin_Forerunner_55___Running_Smartwatch___Sports_Watch.jpg'),
(15, 'Swimming/Diving Equipments', 'SNorkles', 'makakahinga ka pero malulunod ka', 'm-E7f9eEKmPYSKWD25zHiQ_snorkle.jpg'),
(16, 'Sports Wear', 'Drifit shirt', 'pede suutin parang suman', 'qQFjngayjX-ks1LPNEZc0Q_Mens_Running_Compression_T-shirt_Short_Sleeve_Sport_Tees_Gym_Fitness_Sweatshirt_Male_Jogging.jpg'),
(17, 'Survival Equipments', 'first aid kit', 'pede lagyan ng gamot', '0Cs7tKL0qXVr3nIExYm4cQ_First_Aid_Kit_-_230_Piece_-_for_Car_Home_Travel_Camping_Office_or_Sports___Red_Bag_Reflective_Cross_Fully_Stocked_with_Essential_Supplies_for_Emergency_and_Survival.jpg'),
(18, 'Training Equipments', 'punching bag', 'pede bugbugin pag galit', '-xKr08dkrBmxVf2KvQCwOw_download_1.jpg'),
(19, 'Volleyball Equipments', 'volleyball ball', 'masarap gamitin', 'NqN6-6TNre97kMf1BPXOFw_mikasa_volleyball.jpg'),
(20, 'Basketball Equipments', 'Cleveland Tshirt', 'Cleveland Tshirt', '6OJvo2JZBCXFajLsNCwEqw_webleedohio-shirts-tops-cleveland-nothing-but-net-basketball-t-shirt-xxlarge-royal-30882157330486.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `rating_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL CHECK (`rate` between 1 and 5),
  `date_rated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`rating_id`, `shop_id`, `product_id`, `sender_id`, `rate`, `date_rated`) VALUES
(1, 1, 2, 5, 5, '2025-06-04 01:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_specs`
--

CREATE TABLE `product_specs` (
  `specs_id` int(11) NOT NULL,
  `product_info_id` int(11) NOT NULL,
  `specs_type` varchar(100) NOT NULL,
  `specs_content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_images`
--

CREATE TABLE `product_variant_images` (
  `images_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(299) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_sales`
--

CREATE TABLE `seller_sales` (
  `sales_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sale` decimal(10,2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_sales`
--

INSERT INTO `seller_sales` (`sales_id`, `seller_id`, `order_id`, `sale`, `date_created`) VALUES
(1, 2, 3, 92000.00, '2025-06-03 11:19:42'),
(2, 2, 4, 1840000.00, '2025-06-03 14:07:48'),
(3, 2, 7, 194.12, '2025-06-03 22:05:42'),
(4, 2, 9, 637.56, '2025-06-04 01:27:07'),
(5, 2, 10, 306.36, '2025-06-04 01:27:13'),
(6, 2, 11, 1185776.96, '2025-06-04 01:27:20'),
(7, 2, 6, 195.96, '2025-06-04 01:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `seller_vouchers`
--

CREATE TABLE `seller_vouchers` (
  `voucher_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `voucher_type` varchar(30) NOT NULL,
  `voucher_name` varchar(255) NOT NULL,
  `voucher_description` text DEFAULT NULL,
  `voucher_min_spend` decimal(10,2) NOT NULL,
  `voucher_value` decimal(10,2) DEFAULT 0.00,
  `voucher_start_date` date NOT NULL,
  `voucher_end_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_info_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_info_id`, `seller_id`, `date_created`) VALUES
(1, 1, 2, '2025-06-01 22:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `shop_info`
--

CREATE TABLE `shop_info` (
  `shop_info_id` int(11) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_description` text NOT NULL,
  `shop_pic` varchar(299) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_info`
--

INSERT INTO `shop_info` (`shop_info_id`, `shop_name`, `shop_description`, `shop_pic`) VALUES
(1, 'Ecommerce', 'malupet to bili na kayo', 'HGlS9C2stt3X1SuL0oqviA_philippine-drivers-license-5fc9f1eb3b9f9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_listing`
--

CREATE TABLE `shop_listing` (
  `shop_listing_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_listing`
--

INSERT INTO `shop_listing` (`shop_listing_id`, `shop_id`, `seller_id`, `product_id`) VALUES
(1, 1, 2, 1),
(2, 1, 2, 2),
(3, 1, 2, 3),
(4, 1, 2, 4),
(5, 1, 2, 5),
(6, 1, 2, 6),
(7, 1, 2, 7),
(8, 1, 2, 8),
(9, 1, 2, 9),
(10, 1, 2, 10),
(11, 1, 2, 11),
(12, 1, 2, 12),
(13, 1, 2, 13),
(14, 1, 2, 14),
(15, 1, 2, 15),
(16, 1, 2, 16),
(17, 1, 2, 17),
(18, 1, 2, 18),
(19, 1, 2, 19),
(20, 1, 2, 20),
(21, 1, 2, 21),
(22, 1, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_id` int(11) NOT NULL,
  `personal_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `business_id` int(11) DEFAULT NULL,
  `user_role` enum('Buyer','Seller','Admin','Courier') NOT NULL,
  `profile_pic` varchar(299) DEFAULT NULL,
  `status` enum('Pending','Approved','Declined','Banned','Suspended','Archived') NOT NULL DEFAULT 'Pending',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_id`, `personal_id`, `address_id`, `valid_id`, `contact_id`, `login_id`, `business_id`, `user_role`, `profile_pic`, `status`, `date_created`) VALUES
(1, 1, 1, 1, 1, 1, NULL, 'Admin', NULL, 'Approved', '2025-06-01 22:25:20'),
(2, 3, 3, 2, 3, 2, 1, 'Seller', NULL, 'Approved', '2025-06-01 22:31:32'),
(3, 4, 4, 3, 4, 3, NULL, 'Buyer', NULL, 'Approved', '2025-06-01 22:38:29'),
(4, 5, 5, 4, 5, 4, NULL, 'Courier', NULL, 'Approved', '2025-06-02 05:00:52'),
(5, 7, 7, 5, 7, 5, NULL, 'Buyer', NULL, 'Approved', '2025-06-02 05:14:21'),
(6, 8, 8, 6, 8, 6, NULL, 'Courier', NULL, 'Approved', '2025-06-02 05:18:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_address_info`
--
ALTER TABLE `account_address_info`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `account_business_info`
--
ALTER TABLE `account_business_info`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `account_contact_info`
--
ALTER TABLE `account_contact_info`
  ADD PRIMARY KEY (`contact_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `account_login_info`
--
ALTER TABLE `account_login_info`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `account_personal_info`
--
ALTER TABLE `account_personal_info`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indexes for table `account_valid_info`
--
ALTER TABLE `account_valid_info`
  ADD PRIMARY KEY (`valid_id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `admin_order_commission`
--
ALTER TABLE `admin_order_commission`
  ADD PRIMARY KEY (`commission_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `admin_sales`
--
ALTER TABLE `admin_sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_like`
--
ALTER TABLE `buyer_like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `product_info_id` (`product_info_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_order`
--
ALTER TABLE `buyer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `courier_sales`
--
ALTER TABLE `courier_sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `courier_id` (`courier_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `order_completed`
--
ALTER TABLE `order_completed`
  ADD PRIMARY KEY (`completed_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_delivery`
--
ALTER TABLE `order_delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `courier_id` (`courier_id`);

--
-- Indexes for table `order_packing`
--
ALTER TABLE `order_packing`
  ADD PRIMARY KEY (`packing_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_received`
--
ALTER TABLE `order_received`
  ADD PRIMARY KEY (`received_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `order_shipping`
--
ALTER TABLE `order_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_info_id` (`product_info_id`);

--
-- Indexes for table `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`images_id`),
  ADD KEY `product_info_id` (`product_info_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_info_id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`specs_id`),
  ADD KEY `product_info_id` (`product_info_id`);

--
-- Indexes for table `product_variant_images`
--
ALTER TABLE `product_variant_images`
  ADD PRIMARY KEY (`images_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `seller_sales`
--
ALTER TABLE `seller_sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_vouchers`
--
ALTER TABLE `seller_vouchers`
  ADD PRIMARY KEY (`voucher_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `shop_info_id` (`shop_info_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `shop_info`
--
ALTER TABLE `shop_info`
  ADD PRIMARY KEY (`shop_info_id`);

--
-- Indexes for table `shop_listing`
--
ALTER TABLE `shop_listing`
  ADD PRIMARY KEY (`shop_listing_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `personal_id` (`personal_id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `valid_id` (`valid_id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `business_id` (`business_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_address_info`
--
ALTER TABLE `account_address_info`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_business_info`
--
ALTER TABLE `account_business_info`
  MODIFY `business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_contact_info`
--
ALTER TABLE `account_contact_info`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_login_info`
--
ALTER TABLE `account_login_info`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_personal_info`
--
ALTER TABLE `account_personal_info`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_valid_info`
--
ALTER TABLE `account_valid_info`
  MODIFY `valid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_order_commission`
--
ALTER TABLE `admin_order_commission`
  MODIFY `commission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_sales`
--
ALTER TABLE `admin_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `buyer_like`
--
ALTER TABLE `buyer_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_order`
--
ALTER TABLE `buyer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `courier_sales`
--
ALTER TABLE `courier_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `order_completed`
--
ALTER TABLE `order_completed`
  MODIFY `completed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_delivery`
--
ALTER TABLE `order_delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_packing`
--
ALTER TABLE `order_packing`
  MODIFY `packing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_received`
--
ALTER TABLE `order_received`
  MODIFY `received_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_shipping`
--
ALTER TABLE `order_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_feedback`
--
ALTER TABLE `product_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `images_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `product_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `specs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_images`
--
ALTER TABLE `product_variant_images`
  MODIFY `images_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_sales`
--
ALTER TABLE `seller_sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller_vouchers`
--
ALTER TABLE `seller_vouchers`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_info`
--
ALTER TABLE `shop_info`
  MODIFY `shop_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_listing`
--
ALTER TABLE `shop_listing`
  MODIFY `shop_listing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_order_commission`
--
ALTER TABLE `admin_order_commission`
  ADD CONSTRAINT `admin_order_commission_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_order_commission_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_sales`
--
ALTER TABLE `admin_sales`
  ADD CONSTRAINT `admin_sales_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_sales_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  ADD CONSTRAINT `buyer_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_cart_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_like`
--
ALTER TABLE `buyer_like`
  ADD CONSTRAINT `buyer_like_ibfk_1` FOREIGN KEY (`product_info_id`) REFERENCES `product` (`product_info_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_like_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `buyer_order`
--
ALTER TABLE `buyer_order`
  ADD CONSTRAINT `buyer_order_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_order_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_order_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buyer_order_ibfk_4` FOREIGN KEY (`buyer_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `courier_sales`
--
ALTER TABLE `courier_sales`
  ADD CONSTRAINT `courier_sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courier_sales_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD CONSTRAINT `login_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_completed`
--
ALTER TABLE `order_completed`
  ADD CONSTRAINT `order_completed_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_delivery`
--
ALTER TABLE `order_delivery`
  ADD CONSTRAINT `order_delivery_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_delivery_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_packing`
--
ALTER TABLE `order_packing`
  ADD CONSTRAINT `order_packing_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_received`
--
ALTER TABLE `order_received`
  ADD CONSTRAINT `order_received_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_received_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_shipping`
--
ALTER TABLE `order_shipping`
  ADD CONSTRAINT `order_shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_info_id`) REFERENCES `product_info` (`product_info_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD CONSTRAINT `product_feedback_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`),
  ADD CONSTRAINT `product_feedback_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_feedback_ibfk_3` FOREIGN KEY (`sender_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_info_id`) REFERENCES `product` (`product_info_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `product_rating_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`),
  ADD CONSTRAINT `product_rating_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_rating_ibfk_3` FOREIGN KEY (`sender_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD CONSTRAINT `product_specs_ibfk_1` FOREIGN KEY (`product_info_id`) REFERENCES `product` (`product_info_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variant_images`
--
ALTER TABLE `product_variant_images`
  ADD CONSTRAINT `product_variant_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `seller_sales`
--
ALTER TABLE `seller_sales`
  ADD CONSTRAINT `seller_sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `buyer_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `seller_sales_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `seller_vouchers`
--
ALTER TABLE `seller_vouchers`
  ADD CONSTRAINT `seller_vouchers_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`shop_info_id`) REFERENCES `shop_info` (`shop_info_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_listing`
--
ALTER TABLE `shop_listing`
  ADD CONSTRAINT `shop_listing_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_listing_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `user_account` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_listing_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`personal_id`) REFERENCES `account_personal_info` (`personal_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `account_address_info` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_3` FOREIGN KEY (`contact_id`) REFERENCES `account_contact_info` (`contact_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_4` FOREIGN KEY (`valid_id`) REFERENCES `account_valid_info` (`valid_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_5` FOREIGN KEY (`login_id`) REFERENCES `account_login_info` (`login_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_6` FOREIGN KEY (`business_id`) REFERENCES `account_business_info` (`business_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
