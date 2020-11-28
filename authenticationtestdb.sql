-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 04:54 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authenticationtestdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(20) UNSIGNED NOT NULL,
  `uuid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_23_032139_create_sessions_table', 1),
(7, '2020_05_21_100000_create_teams_table', 2),
(8, '2020_05_21_200000_create_team_user_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` int(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eB2Xjy9fFsjmm3XTE46grYPjpJ2QgGgXDadQA6mI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjByMlI5RlAzZzllY0NsSTRJNTVSdVdQdkZpUWU0ellXUm5RNnNrZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1606276228);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 3, 'test\'s Team', 1, '2020-11-24 07:16:45', '2020-11-24 07:16:45'),
(2, 4, 'Finance\'s Team', 1, '2020-11-24 07:26:55', '2020-11-24 07:26:55'),
(3, 5, 'Tech\'s Team', 1, '2020-11-25 08:50:13', '2020-11-25 08:50:13'),
(4, 6, 'Technology', 1, '2020-11-25 08:53:29', '2020-11-25 08:54:17'),
(5, 7, 'Grant\'s Team', 1, '2020-11-25 09:22:24', '2020-11-25 09:22:24'),
(6, 7, 'My Project Team', 0, '2020-11-25 09:22:47', '2020-11-25 09:22:47'),
(7, 8, 'Taylor\'s Team', 1, '2020-11-25 09:26:17', '2020-11-25 09:26:17'),
(8, 9, 'James\'s Team', 1, '2020-11-25 09:26:51', '2020-11-25 09:26:51'),
(9, 10, 'Tom\'s Team', 1, '2020-11-25 09:27:16', '2020-11-25 09:27:16'),
(10, 11, 'Harry\'s Team', 1, '2020-11-25 09:27:39', '2020-11-25 09:27:39'),
(11, 12, 'Jimmy\'s Team', 1, '2020-11-25 09:28:13', '2020-11-25 09:28:13'),
(12, 13, 'Adi\'s Team', 1, '2020-11-25 09:28:36', '2020-11-25 09:28:36'),
(13, 14, 'Elon\'s Team', 1, '2020-11-25 09:28:55', '2020-11-25 09:28:55'),
(14, 15, 'Mark\'s Team', 1, '2020-11-25 09:29:18', '2020-11-25 09:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'finance', '2020-11-24 07:27:03', '2020-11-24 07:27:03'),
(2, 1, 6, 'technology', '2020-11-25 08:56:59', '2020-11-25 08:56:59'),
(3, 5, 8, 'finance', '2020-11-25 09:30:00', '2020-11-25 09:30:00'),
(4, 5, 9, 'finance', '2020-11-25 09:30:15', '2020-11-25 09:30:15'),
(5, 5, 11, 'sales', '2020-11-25 09:30:33', '2020-11-25 09:30:33'),
(6, 5, 12, 'hr', '2020-11-25 09:30:45', '2020-11-25 09:30:45'),
(7, 5, 13, 'hr', '2020-11-25 09:30:51', '2020-11-25 09:30:51'),
(8, 5, 14, 'technology', '2020-11-25 09:31:05', '2020-11-25 09:31:05'),
(9, 5, 15, 'technology', '2020-11-25 09:31:20', '2020-11-25 09:31:20'),
(10, 5, 10, 'finance', '2020-11-25 09:34:22', '2020-11-25 09:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` int(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test@example.com', NULL, '$2y$10$ie.pLzeytoILy41Qk3iQB.I5tA8V827cKMOJEYfF4BZQ2zQ6pR7LK', NULL, NULL, NULL, 1, NULL, '2020-11-24 07:16:45', '2020-11-24 07:16:54'),
(4, 'Finance', 'finance@example.com', NULL, '$2y$10$IPVPThYmBi3VAH1vWQaUteY9.ex2ODear1AiCDV/kpcmBvXo8w3vK', NULL, NULL, NULL, 1, NULL, '2020-11-24 07:26:55', '2020-11-25 09:20:29'),
(5, 'Tech', 'tech@example.com', NULL, '$2y$10$2.6SmRtWZLQOttiXqEs7b.vGArSnz7dAzHGe5KPJQ5igMnDiq9Moq', NULL, NULL, NULL, 3, NULL, '2020-11-25 08:50:13', '2020-11-25 08:50:14'),
(6, 'Shavie S', 'shavie@plswork.com', NULL, '$2y$10$mlvs35qG05F55HJNZwo07uHLGwHY/5agCGrrGBzXnQZncVihPoSey', NULL, NULL, 'iB8MmM4VJZPAENkzna8G28PNPgjAroUVdROcv2GZgFK1lO52pqfv6s3EhWyO', 1, NULL, '2020-11-25 08:53:29', '2020-11-25 08:58:20'),
(7, 'Grant Gustin', 'gg@example.com', NULL, '$2y$10$jcoYZ8mVMDIXht/4miFl0.8.z.LIuDc1awK/HJhmtuY7UJLJcD3zK', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:22:24', '2020-11-25 09:50:10'),
(8, 'Taylor Swift', 'ts@example.com', NULL, '$2y$10$eMjqFcj4ECNFMeyl9Mv.C.bSzzouylEOHn2C3MrNM64hjJ9ZZ/a7.', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:26:17', '2020-11-25 09:31:41'),
(9, 'James Franco', 'jf@example.com', NULL, '$2y$10$6MkxXoFYUE5D/lx3e85kKe6WNKPJ5/Iod.9YMgPJZkCtSSZ/n.vU6', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:26:51', '2020-11-25 09:32:47'),
(10, 'Tom Holland', 'tm@example.com', NULL, '$2y$10$/q8ruGA14ren1lJcW5FHu.i6Iq9l2hbLoz/EvrHRRnRHF9.TzPLWm', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:27:16', '2020-11-25 09:35:50'),
(11, 'Harry Styles', 'hs@example.com', NULL, '$2y$10$vFSMkLAZcXEjLrnemRxp4.NIN0iUIDugP7cWvpYwX/QvJy.gLBCp2', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:27:39', '2020-11-25 09:32:23'),
(12, 'Jimmy Kimmel', 'jk@example.com', NULL, '$2y$10$HcMmiARwJ/H06qr4N.lM.OvIEKzbXf5RCDHP3vcnrBHsbEGk.1rsa', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:28:13', '2020-11-25 09:36:44'),
(13, 'Adi Nair', 'an@example.com', NULL, '$2y$10$OhglZiZdU1gw2ERaUKB.TeEcfgJz9nXf6JgxGpFfdIuIpUSl51XEC', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:28:36', '2020-11-25 09:37:29'),
(14, 'Elon Musk', 'em@example.com', NULL, '$2y$10$gmTNJpC4.If9iU28PQMWkuC4jn82fsu.YImom0nkVNlZSzG6Ml37m', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:28:55', '2020-11-25 09:39:09'),
(15, 'Mark Zuckerberg', 'mz@example.com', NULL, '$2y$10$7eBn0ZQvjbv2K9Wr63rzeufLkoYtba2dIBExR9WsfamCKvl0h29vK', NULL, NULL, NULL, 5, NULL, '2020-11-25 09:29:18', '2020-11-25 09:39:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
