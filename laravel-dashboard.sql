-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 04:06 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `darpan_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `slug` varchar(512) NOT NULL,
  `value` varchar(512) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `slug`, `value`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Contact Number', 'contactnumber', '(123) 45678 123', 1, 0, '2022-10-12 14:45:03', '2023-01-25 07:23:07'),
(2, 'Web Email', 'webemail', 'abc@web.com', 1, 0, '2022-10-12 14:45:03', '2023-01-25 07:23:07'),
(3, 'Address', 'address', 'abcd street 1', 1, 0, '2022-10-12 14:45:03', '2023-01-25 07:23:07');

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
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `image` varchar(512) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `name`, `image`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'uploads/logos/image_2022-10-14_154641111_1665744403.png', 0, 0, '2022-10-14 05:46:43', '2022-10-16 13:53:43'),
(2, 'favicon', 'uploads/logos/favicon_1665745146.ico', 1, 0, '2022-10-14 05:59:06', '2022-10-14 05:59:06'),
(3, 'logo', 'uploads/logos/image_2022-10-16_235341045_1665946423.png', 0, 0, '2022-10-16 13:53:43', '2022-10-28 13:51:44'),
(4, 'logo', 'uploads/logos/image_2022-10-28_234903644-removebg-preview (1)_1666983104.png', 0, 0, '2022-10-28 13:51:44', '2022-10-28 13:56:53'),
(5, 'logo', 'uploads/logos/image_2022-10-28_235651974_1666983413.png', 0, 0, '2022-10-28 13:56:53', '2022-10-28 13:58:11'),
(6, 'logo', 'uploads/logos/image_2022-10-28_235809964_1666983491.png', 0, 0, '2022-10-28 13:58:11', '2022-10-28 14:01:41'),
(7, 'logo', 'uploads/logos/image_2022-10-29_000139959_1666983701.png', 1, 0, '2022-10-28 14:01:41', '2022-10-28 14:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subject` varchar(512) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `phone`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `subject`, `message`) VALUES
(1, 'Colby Buckner', 'xoqudur@mailinator.com', '+1 (315) 998-6646', 1, 0, '2023-11-18 14:08:37', '2023-01-25 14:37:28', 'Velit dicta quia qui', 'Voluptatibus lorem N'),
(2, 'Conan Espinoza', 'xyguniso@mailinator.com', '+1 (777) 489-9831', 1, 0, '2023-11-19 05:37:43', '2023-01-25 14:37:34', 'Non corporis sit ma', 'Id in aliquam beatae'),
(3, 'Bevis Cotton', 'riluzykax@mailinator.com', '+1 (198) 634-7145', 1, 0, '2023-11-20 23:46:05', '2023-01-25 14:37:40', 'Dolorem excepturi ni', 'Qui et voluptatem s'),
(4, 'Celeste Myers', 'fiwohyzo@mailinator.com', '+1 (857) 895-7347', 1, 0, '2023-09-21 04:04:45', '2023-01-25 14:38:07', 'Suscipit consectetur', 'Sit quia cillum lab'),
(5, 'Celeste Myers', 'fiwohyzo@mailinator.com', '+1 (857) 895-7347', 1, 0, '2022-11-21 04:05:06', '2022-11-21 04:05:06', 'Suscipit consectetur', 'Sit quia cillum lab'),
(6, 'Lane William', 'jyki@mailinator.com', '+1 (527) 733-8082', 1, 0, '2023-11-21 04:07:37', '2023-01-25 14:37:45', 'Molestias deserunt n', 'Nemo praesentium ess'),
(7, 'Aquila Sargent', 'qirow@mailinator.com', '+1 (217) 833-6994', 1, 0, '2023-11-21 04:35:14', '2023-01-25 14:37:48', 'Quia in aut blanditi', 'Reprehenderit harum'),
(8, 'Penelope Carpenter', 'vyfuwiba@mailinator.com', '+1 (933) 383-5676', 1, 0, '2023-08-22 01:06:14', '2023-01-25 14:39:37', 'Quam inventore aliqu', 'Voluptatem deleniti'),
(9, 'Brian Morrow', 'xizes@mailinator.com', '+1 (785) 393-8378', 1, 0, '2023-07-02 01:59:56', '2023-01-25 14:39:29', 'Accusamus quo beatae', 'Omnis anim hic disti'),
(10, 'Scarlett Vega', 'lykaluw@mailinator.com', '+1 (993) 253-1475', 1, 0, '2023-06-02 09:47:51', '2023-01-25 14:39:17', 'Ad asperiores conseq', 'Adipisci velit faci'),
(11, 'Mary Lopez', 'xedyp@mailinator.com', '+1 (565) 417-3242', 1, 0, '2023-06-02 09:57:03', '2023-01-25 14:39:07', 'Atque autem omnis fu', 'Totam veniam est de'),
(12, 'Wayne Mullen', 'zavoki@mailinator.com', '+1 (575) 811-3625', 1, 0, '2023-04-03 00:32:34', '2023-01-25 14:38:48', 'Adipisci rerum corru', 'Ipsa pariatur Mole'),
(13, 'Rafael Sykes', 'luniluxosa@mailinator.com', '+1 (407) 764-4208', 1, 0, '2023-04-03 04:08:33', '2023-01-25 14:38:57', 'Commodo perferendis', 'Et aliquid esse tota'),
(14, 'Alyssa Kirkland', 'merana@mailinator.com', '+1 (707) 387-8005', 1, 0, '2023-03-04 06:15:18', '2023-01-25 14:38:40', 'Eum est deserunt mag', 'Consequatur unde est'),
(15, 'Lacota Hardin', 'om@mailinator.com', '+1 (557) 456-4033', 1, 0, '2023-03-06 01:13:48', '2023-01-25 14:38:32', 'Quas nostrud ut veri', 'In ducimus sint ne'),
(16, 'Constance Hayden', 'vinay@mailinator.com', '+1 (852) 223-8574', 1, 0, '2023-03-06 01:36:49', '2023-01-25 14:38:21', 'Culpa est architecto', 'Ullamco exercitation');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `stock`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'mine', 'uploads\\logos/image_2022-10-21_195200595_1666363921.png', 2423, 12, '<p>From rising expenses &amp; an aging population, to the requirement for affordable and personalized care, the healthcare trade is facing a kind of challenge. These challenges have cracked the gateway for a new wave of low-cost technology to substitute the outmoded medical devices.&nbsp;</p>\n<p>This latest technology appears in the form of connected medical devices (in - house). This method is most beneficial for old age patients and Childs. It improves the quality of in-home patient care.&nbsp;If your dearest one is set on remaining in his or her house for as long as possible, the adaptive equipment technology can help to make things much easier.&nbsp; There are many different kinds of adaptive equipment that can help your loved one in everyday tasks.&nbsp;</p>\n<p>Here are some of the different kinds of adaptive equipment that can help make your dearest one\'s home safer :</p>\n<p>Medication Administration Equipment: devices used to apply medications in tablet, liquid, or aerosol form.</p>\n<p><strong>First Aid Equipment:</strong>&nbsp;This Equipment is used to care for injuries or temporary conditions.</p>\n<p><strong>Assistive Technology:</strong>&nbsp; These devices are used to improve personal abilities, such as sensory capabilities or movement.</p>\n<p><strong>Durable Medical Equipment: I</strong>ncludes medical devices used to support the performance of basic activities of daily living, such as beds, lifts, and toileting equipment.</p>\n<p><strong>Monitors/Meters:&nbsp;</strong>&nbsp;Includes many devices for determining health status or controlling disease conditions.</p>\n<p><strong>Treatment Equipment:&nbsp;</strong>&nbsp;This device is used to administer several medical therapies.</p>\n<p><strong>Respiratory Equipment:&nbsp;</strong>&nbsp;Equipment used to treat respiratory conditions.</p>\n<p><strong>Voiding Equipment:&nbsp;</strong>&nbsp;These devices used for releasing urine or feces from the body.</p>\n<p><strong>Infant Care</strong>: This infant care includes machines used to monitor and treat infants.</p>', 1, 0, '2022-10-22 09:42:56', '2023-01-25 09:23:11'),
(2, 'sdf', 'uploads\\logos/image_2022-10-21_195200595_1666363921.png', 232, 22, NULL, 1, 0, '2022-10-22 09:42:56', '2022-10-22 09:42:56'),
(3, 'Kadeem', 'uploads/product/WhatsApp Image 2022-09-29 at 4_1666466920.jpeg', 728, 90, NULL, 1, 0, '2022-10-22 13:13:18', '2022-10-22 14:28:40'),
(4, 'Xyla', 'uploads/product/image_2022-10-28_234903644-removebg-preview (1)_1667663609.png', 226, 30, NULL, 1, 0, '2022-10-22 14:22:59', '2023-01-25 08:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'new@gmail.com', 1, 0, '2022-11-18 14:07:34', '2022-12-02 01:58:52'),
(2, 'ziqejej@mailinator.com', 0, 0, '2022-11-18 14:08:16', '2023-01-25 09:04:14'),
(3, 'om@gmail.com', 1, 0, '2022-11-20 23:04:01', '2022-11-20 23:04:01'),
(4, 'vinay@gmail.com', 1, 0, '2022-11-20 23:36:14', '2022-11-20 23:36:14'),
(5, 'om@gmial.com', 1, 0, '2022-11-21 02:14:16', '2023-01-25 09:03:03'),
(6, 'darpan@gmail.com', 1, 0, '2022-11-21 02:18:53', '2022-11-21 02:18:53'),
(7, 'rafay@gmail.com', 1, 0, '2022-11-21 23:57:45', '2022-11-21 23:57:45'),
(8, 'babu@gmail.com', 1, 0, '2022-12-02 01:59:26', '2022-12-02 01:59:26'),
(9, 'fananutok@mailinator.com', 1, 0, '2022-12-03 00:28:43', '2022-12-03 00:28:43'),
(10, 'adf@gmail.com', 1, 0, '2022-12-03 03:49:19', '2022-12-03 09:04:40'),
(11, 'm@gmail.com', 1, 0, '2022-12-03 04:04:04', '2022-12-03 04:04:04'),
(12, 'y@gmail.com', 1, 0, '2022-12-03 04:04:19', '2022-12-03 04:04:19'),
(13, 'luqosejy@mailinator.com', 1, 0, '2022-12-03 04:08:40', '2022-12-03 04:08:40'),
(14, 'yse@gmail.com', 1, 0, '2022-12-03 04:32:57', '2022-12-03 04:32:57'),
(15, 'qydisa@mailinator.com', 1, 0, '2022-12-03 04:52:56', '2022-12-03 04:52:56'),
(16, 'nola@mailinator.com', 1, 0, '2022-12-04 06:17:59', '2022-12-04 06:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `gender`, `phone`, `address`, `dob`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@project.com', 'admin/assets/uploads/user/1659302696_1661179218.jpg', 'male', '(315) 253-5157', 'address', '2001-06-14', 1, NULL, '$2y$10$hokgRkeoYJjRWSv0PlJTfeQhvXeyY7aa7hSRELHCplB9iynCv32rC', NULL, '2022-10-07 02:48:33', '2023-01-25 09:45:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
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
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;