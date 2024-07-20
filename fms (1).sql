-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 05:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add combo', 7, 'add_combo'),
(26, 'Can change combo', 7, 'change_combo'),
(27, 'Can delete combo', 7, 'delete_combo'),
(28, 'Can view combo', 7, 'view_combo'),
(29, 'Can add food', 8, 'add_food'),
(30, 'Can change food', 8, 'change_food'),
(31, 'Can delete food', 8, 'delete_food'),
(32, 'Can view food', 8, 'view_food'),
(33, 'Can add coupon', 9, 'add_coupon'),
(34, 'Can change coupon', 9, 'change_coupon'),
(35, 'Can delete coupon', 9, 'delete_coupon'),
(36, 'Can view coupon', 9, 'view_coupon'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add detail order', 11, 'add_detailorder'),
(42, 'Can change detail order', 11, 'change_detailorder'),
(43, 'Can delete detail order', 11, 'delete_detailorder'),
(44, 'Can view detail order', 11, 'view_detailorder');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$6pcjuXENXnYureMFJJ9HKI$cpGNypqPh8oti9WH4wXyLEaX3DE0Myq/l9ppdVYVRBc=', '2024-07-19 14:47:33.181641', 1, 'admin', 'Nguyễn Văn', 'An', 'admin@gmail.com', 1, 1, '2024-07-10 18:01:39.545358');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_combo`
--

CREATE TABLE `combo_combo` (
  `id` bigint(20) NOT NULL,
  `combo_code` varchar(100) NOT NULL,
  `combo_name` varchar(255) NOT NULL,
  `unit_price` int(10) UNSIGNED NOT NULL CHECK (`unit_price` >= 0),
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `combo_combo`
--

INSERT INTO `combo_combo` (`id`, `combo_code`, `combo_name`, `unit_price`, `quantity`, `image`) VALUES
(2, 'KFC0001', 'Combo mới', 1000000, 5, 'images/z4617362817818_39cacdb57658e537cb0e22dc18e885d8_D1aut2O.jpg'),
(3, 'ComboKFC001', 'Combo gà rán + coca', 25000, 10, 'images/z4617362741623_98c0302df70bfe02dd581fa8a0e35aa6_h0Lv9Sy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `combo_combo_products`
--

CREATE TABLE `combo_combo_products` (
  `id` bigint(20) NOT NULL,
  `combo_id` bigint(20) NOT NULL,
  `food_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `combo_combo_products`
--

INSERT INTO `combo_combo_products` (`id`, `combo_id`, `food_id`) VALUES
(3, 2, 5),
(4, 2, 6),
(5, 2, 7),
(6, 3, 5),
(7, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_coupon`
--

CREATE TABLE `coupon_coupon` (
  `id` bigint(20) NOT NULL,
  `coupon_code` varchar(100) NOT NULL,
  `discount_rate` int(10) UNSIGNED NOT NULL CHECK (`discount_rate` >= 0),
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `expiration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon_coupon`
--

INSERT INTO `coupon_coupon` (`id`, `coupon_code`, `discount_rate`, `quantity`, `expiration_date`) VALUES
(2, 'GIAMGIA15', 15, 10, '2024-12-02'),
(3, 'GIAMGIA10', 10, 15, '2025-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-11 07:08:44.184909', '2', 'Gà KFC 02', 3, '', 8, 1),
(2, '2024-07-11 07:08:44.187901', '1', 'Gà KFC', 3, '', 8, 1),
(3, '2024-07-17 09:29:33.915029', '2', 'Order JQXC7Z9M2U by Chu Minh Nam', 3, '', 10, 1),
(4, '2024-07-17 09:29:33.920780', '1', 'Order V9CHPMS6RW by Chu Minh Nam', 3, '', 10, 1),
(5, '2024-07-17 09:33:35.318991', '3', 'Order 1S2Z3PT1TR by Chu Minh Nam', 3, '', 10, 1),
(6, '2024-07-17 09:33:39.723251', '4', 'Order C53SKSW66C by Chu Minh Nam', 3, '', 10, 1),
(7, '2024-07-17 09:34:07.616897', '5', 'Order 883SS1UX27 by Chu Minh Nam', 3, '', 10, 1),
(8, '2024-07-17 09:34:24.272369', '6', 'Order XWI8PAYIM8 by Chu Minh Nam', 3, '', 10, 1),
(9, '2024-07-18 09:06:01.320973', '1', 'Detail of Z4IZ2JVH7Y', 3, '', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'Combo', 'combo'),
(5, 'contenttypes', 'contenttype'),
(9, 'Coupon', 'coupon'),
(8, 'Food', 'food'),
(11, 'Order', 'detailorder'),
(10, 'Order', 'order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-10 17:37:33.682774'),
(2, 'auth', '0001_initial', '2024-07-10 17:37:34.127901'),
(3, 'admin', '0001_initial', '2024-07-10 17:37:34.243522'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-10 17:37:34.252500'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-10 17:37:34.260604'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-10 17:37:34.314382'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-10 17:37:34.370404'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-10 17:37:34.427457'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-10 17:37:34.434470'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-10 17:37:34.478320'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-10 17:37:34.480316'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-10 17:37:34.491384'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-10 17:37:34.503984'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-10 17:37:34.516948'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-10 17:37:34.569375'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-10 17:37:34.578666'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-10 17:37:34.591598'),
(18, 'sessions', '0001_initial', '2024-07-10 17:37:34.621516'),
(19, 'Food', '0001_initial', '2024-07-11 06:00:19.671344'),
(20, 'Combo', '0001_initial', '2024-07-11 06:00:19.807148'),
(21, 'Coupon', '0001_initial', '2024-07-11 06:00:19.826097'),
(22, 'Food', '0002_alter_food_image', '2024-07-11 07:08:17.718161'),
(23, 'Food', '0003_alter_food_image', '2024-07-11 07:15:37.330399'),
(24, 'Order', '0001_initial', '2024-07-17 07:45:19.259727'),
(25, 'Order', '0002_order_amount', '2024-07-17 07:47:18.597764'),
(26, 'Order', '0003_rename_coupon_code_order_coupon', '2024-07-17 07:48:47.689914'),
(27, 'Order', '0004_detailorder', '2024-07-17 07:53:47.925092'),
(28, 'Order', '0005_order_note', '2024-07-17 08:59:13.071975'),
(29, 'Order', '0006_order_phone', '2024-07-17 09:14:57.566796'),
(30, 'Order', '0007_alter_order_phone', '2024-07-17 09:17:43.072900'),
(31, 'Order', '0008_order_payment', '2024-07-18 07:45:44.346874');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3s5y023325xczvzj6jkzov6tg9b5v38t', 'e30:1sRbg0:yUY6aeiomSdnk5eGPhcFVRpLQCpbEVIdTYMcL_qZJFs', '2024-07-24 18:04:24.960087'),
('991q5djze0t7331glzr9nr6ktitr6fci', '.eJxVjEEOwiAQRe_C2hCBKTIu3fcMZGBAqgaS0q6Md7dNutDtf-_9t_C0LsWvPc1-YnEVSpx-t0DxmeoO-EH13mRsdZmnIHdFHrTLsXF63Q7376BQL1ud0DikCM6wvSTIoILWrAM4hDSg3SBFbfNZRUcuI4JhCIZYMfBAKD5f3Gw37Q:1sUotR:tf1T8dI0T8voy5pl46OJaLTiBWcHxw7LoHrtknQNg3A', '2024-08-02 14:47:33.186049');

-- --------------------------------------------------------

--
-- Table structure for table `food_food`
--

CREATE TABLE `food_food` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit_price` int(10) UNSIGNED NOT NULL CHECK (`unit_price` >= 0),
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food_food`
--

INSERT INTO `food_food` (`id`, `product_code`, `product_name`, `unit_price`, `quantity`, `image`) VALUES
(5, 'KFC00002', 'Gà KFC', 150000, 5, 'images/z4617362741623_98c0302df70bfe02dd581fa8a0e35aa6_FofzipU.jpg'),
(6, 'KFC00003', 'Gà KFC 03', 100000, 5, 'images/z4617362741623_98c0302df70bfe02dd581fa8a0e35aa6_jHKmN9p.jpg'),
(7, 'Coca00001', 'Coca Cola', 150000, 5, 'images/z4617362745335_4456bfd0f397a69bb165e385ba8916cb.jpg'),
(8, 'KFC00005', 'Gà KFC mới', 150000, 15, 'images/z4617362745335_4456bfd0f397a69bb165e385ba8916cb_GqdRZ8r.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_detailorder`
--

CREATE TABLE `order_detailorder` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `combo_id` bigint(20) DEFAULT NULL,
  `food_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detailorder`
--

INSERT INTO `order_detailorder` (`id`, `quantity`, `combo_id`, `food_id`, `order_id`) VALUES
(2, 5, NULL, 5, 11),
(3, 2, 2, NULL, 11),
(4, 2, NULL, 5, 10),
(5, 2, 2, NULL, 10),
(6, 2, NULL, 6, 12),
(7, 2, 3, NULL, 12),
(8, 1, 2, NULL, 12),
(9, 3, NULL, 8, 12);

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `id` bigint(20) NOT NULL,
  `code` varchar(10) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL CHECK (`amount` >= 0),
  `note` longtext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `payment` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_order`
--

INSERT INTO `order_order` (`id`, `code`, `customer`, `created_at`, `coupon_id`, `amount`, `note`, `phone`, `payment`) VALUES
(10, '4STG8I7V9V', 'Chu Minh Nam', '2024-07-18 08:12:24.387841', 2, 1955000, 'AB', '0999888999', 1),
(11, 'Z4IZ2JVH7Y', 'gdfsgfdsgdfs', '2024-07-18 08:13:59.299100', NULL, 2750000, 'abcde', '0999888999', 1),
(12, '4SDDBDA6T2', 'Chu Minh Nam 2', '2024-07-19 14:50:43.900868', 3, 1530000, 'Hóa đơn mới khách hàng chưa thanh toán', '0999888999', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `combo_combo`
--
ALTER TABLE `combo_combo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combo_code` (`combo_code`);

--
-- Indexes for table `combo_combo_products`
--
ALTER TABLE `combo_combo_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Combo_combo_products_combo_id_food_id_f7a66b57_uniq` (`combo_id`,`food_id`),
  ADD KEY `Combo_combo_products_food_id_9b7c8208_fk_Food_food_id` (`food_id`);

--
-- Indexes for table `coupon_coupon`
--
ALTER TABLE `coupon_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_code` (`coupon_code`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `food_food`
--
ALTER TABLE `food_food`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `order_detailorder`
--
ALTER TABLE `order_detailorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_detailorder_combo_id_217b7a95_fk_Combo_combo_id` (`combo_id`),
  ADD KEY `Order_detailorder_food_id_60d0d5f8_fk_Food_food_id` (`food_id`),
  ADD KEY `Order_detailorder_order_id_a30553d6_fk_Order_order_id` (`order_id`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `Order_order_coupon_id_fc13a445_fk_Coupon_coupon_id` (`coupon_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_combo`
--
ALTER TABLE `combo_combo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `combo_combo_products`
--
ALTER TABLE `combo_combo_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupon_coupon`
--
ALTER TABLE `coupon_coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `food_food`
--
ALTER TABLE `food_food`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detailorder`
--
ALTER TABLE `order_detailorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `combo_combo_products`
--
ALTER TABLE `combo_combo_products`
  ADD CONSTRAINT `Combo_combo_products_combo_id_4a73928e_fk_Combo_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `combo_combo` (`id`),
  ADD CONSTRAINT `Combo_combo_products_food_id_9b7c8208_fk_Food_food_id` FOREIGN KEY (`food_id`) REFERENCES `food_food` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_detailorder`
--
ALTER TABLE `order_detailorder`
  ADD CONSTRAINT `Order_detailorder_combo_id_217b7a95_fk_Combo_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `combo_combo` (`id`),
  ADD CONSTRAINT `Order_detailorder_food_id_60d0d5f8_fk_Food_food_id` FOREIGN KEY (`food_id`) REFERENCES `food_food` (`id`),
  ADD CONSTRAINT `Order_detailorder_order_id_a30553d6_fk_Order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`);

--
-- Constraints for table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `Order_order_coupon_id_fc13a445_fk_Coupon_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupon_coupon` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
