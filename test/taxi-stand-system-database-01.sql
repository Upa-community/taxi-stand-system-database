-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: mysqldb
-- 生成日時: 2023 年 3 月 12 日 12:47
-- サーバのバージョン： 8.0.30
-- PHP のバージョン: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `taxi-stand-system-database-01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cameras`
--

CREATE TABLE `cameras` (
  `id` bigint UNSIGNED NOT NULL,
  `spots_id` int NOT NULL,
  `cameras_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cameras_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cameras_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cameras_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_06_115740_create_cameras_table', 3),
(7, '2023_03_05_140224_create_spots_table', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 2, 'login:user2', 'a94556ab986443c1e87dfcb09d01260e53713107b251cbbeae1de4d8113ab738', '[\"*\"]', NULL, '2023-03-05 04:42:09', '2023-03-05 04:42:09'),
(29, 'App\\Models\\User', 3, 'login:user3', 'ee4e97abc0ee9cce6d67a0dc5642a64ba670aab86c339c78066c8be3f1ce0331', '[\"*\"]', NULL, '2023-03-05 12:14:56', '2023-03-05 12:14:56'),
(62, 'App\\Models\\User', 4, 'login:user4', '82246c0ce29c2c45ad8a581247a5e0b29cf50789cb7b1963baa7168e58d21166', '[\"*\"]', '2023-03-08 22:05:08', '2023-03-08 22:05:03', '2023-03-08 22:05:08'),
(74, 'App\\Models\\User', 7, 'login:user7', '6392d2cda6cb35a05635dffdb9170a36b7de158ae64525cb49f4f676796cf86e', '[\"*\"]', '2023-03-09 02:07:26', '2023-03-09 02:07:22', '2023-03-09 02:07:26'),
(316, 'App\\Models\\User', 8, 'login:user8', '2d356060e42aeeb75fde79a3487fcd1afd8165742bce88e6e6cd3ab3a2777aa4', '[\"*\"]', '2023-03-12 03:40:10', '2023-03-12 03:40:05', '2023-03-12 03:40:10');

-- --------------------------------------------------------

--
-- テーブルの構造 `spots`
--

CREATE TABLE `spots` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` int NOT NULL,
  `spots_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_max` int NOT NULL,
  `spots_count` int NOT NULL,
  `spots_day_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spots_month_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `spots`
--

INSERT INTO `spots` (`id`, `users_id`, `spots_name`, `spots_address`, `spots_latitude`, `spots_longitude`, `spots_url`, `spots_status`, `spots_max`, `spots_count`, `spots_day_count`, `spots_month_count`, `created_at`, `updated_at`) VALUES
(1, 8, '渋谷スクランブル交差点', '東京都渋谷区道玄坂２丁目２−１', 'None', 'None', 'https://www.youtube.com/watch?v=3kPH7kTphnE', 'None', 50, 18, '21,11,4,3,4,9,8,1,1,28,26,15,1,23,10,15,23,10,2,26,28,21,29,26', '17,12,1,4,25,18,2,14,21,16,6,11,8,8,19,18,20,28,13,15,5,19,3,15,3,8,24,19,8,22', NULL, NULL),
(2, 8, '新宿駅', '東京都渋谷区道玄坂２丁目２−１', 'None', 'None', 'https://www.youtube.com/watch?v=3kPH7kTphnE', 'None', 50, 35, '23,2,6,4,29,24,10,27,15,15,2,12,27,5,18,2,6,21,15,17,29,27,28,23', '28,26,13,0,29,14,23,1,27,26,24,0,6,6,16,2,6,24,16,20,4,27,26,11,1,8,5,28,6,5', NULL, NULL),
(3, 8, '鎌倉駅', '東京都渋谷区道玄坂２丁目２−１', 'None', 'None', 'https://www.youtube.com/watch?v=3kPH7kTphnE', 'None', 50, 22, '14,8,19,12,15,6,17,0,3,4,2,20,18,2,8,11,1,19,12,10,12,16,15,0', '6,17,27,4,3,9,22,22,4,20,26,10,24,10,28,8,17,2,3,9,9,10,13,22,9,27,16,14,28,2', NULL, NULL),
(4, 8, '渋谷駅', '東京都渋谷区道玄坂２丁目２−１', 'None', 'None', 'https://www.youtube.com/watch?v=3kPH7kTphnE', 'None', 50, 45, '1,5,7,20,11,20,6,7,15,19,20,15,1,14,17,20,10,7,3,4,0,8,2,4', '8,1,9,2,1,9,3,8,2,1,5,4,2,1,7,5,0,9,0,9,1,1,2,1,5,10,2,1,4,1', NULL, NULL),
(5, 8, '秋葉原', '東京都渋谷区道玄坂２丁目２−１', 'None', 'None', 'https://www.youtube.com/watch?v=3kPH7kTphnE', 'None', 50, 11, '45,39,36,31,51,60,50,51,33,60,45,32,60,44,56,51,52,30,60,51,37,37,37,53', '57,43,53,30,38,34,39,56,48,49,45,43,37,33,33,45,53,41,33,33,50,54,58,43,59,49,33,34,34,34', NULL, NULL),
(16, 1, '京都駅八条口タクシー乗り場', '京都府京都市下京区東塩小路釜殿町', 'None', 'None', 'https://www.youtube.com/watch?v=CO_ZjH6N7RE', 'None', 50, 16, 'None', 'None', NULL, NULL),
(17, 1, '京都駅八条口タクシー乗り場', '京都府京都市下京区東塩小路釜殿町', 'None', 'None', 'https://www.youtube.com/watch?v=CO_ZjH6N7RE', 'None', 50, 32, 'None', 'None', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'test', 'test@gmail.com', NULL, '$2y$10$lqA9dQEp01VNJ2221qmqu.f96qaDk.1WQNA6u/0pMTpYqgaSa3dc6', NULL, '2023-03-09 02:08:16', '2023-03-09 02:08:16');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `cameras`
--
ALTER TABLE `cameras`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `cameras`
--
ALTER TABLE `cameras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- テーブルの AUTO_INCREMENT `spots`
--
ALTER TABLE `spots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
