-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 04:21 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_nia`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_25_155519_create_tb_artist_table', 1),
(5, '2020_07_01_064124_create_tb_album_table', 1),
(6, '2020_07_01_064441_create_tb_track_table', 1),
(7, '2020_07_01_064534_create_tb_played_table', 1);

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
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `album_id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`album_id`, `artist_id`, `album_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'walau habis terang', '2020-07-02 09:55:47', '2020-07-02 09:55:47'),
(2, 2, 'Laguku', '2020-07-02 10:01:03', '2020-07-02 10:01:03'),
(3, 3, 'Harusnya Aku', '2020-07-02 10:01:58', '2020-07-02 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist`
--

CREATE TABLE `tb_artist` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_artist`
--

INSERT INTO `tb_artist` (`artist_id`, `artist_name`, `created_at`, `updated_at`) VALUES
(1, 'Noah', '2020-07-02 09:54:58', '2020-07-02 09:54:58'),
(2, 'Armada', '2020-07-02 09:59:04', '2020-07-02 09:59:04'),
(3, 'Ungu', '2020-07-02 09:59:21', '2020-07-02 09:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_played`
--

CREATE TABLE `tb_played` (
  `played_id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `played` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_played`
--

INSERT INTO `tb_played` (`played_id`, `artist_id`, `album_id`, `track_id`, `played`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Mungkin bila nanti', '2020-07-02 09:57:47', '2020-07-02 09:57:47'),
(2, 2, 2, 2, 'Buka hatimu', '2020-07-02 10:04:50', '2020-07-02 10:04:50'),
(3, 3, 3, 3, 'Dilema', '2020-07-02 10:05:12', '2020-07-02 10:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_track`
--

CREATE TABLE `tb_track` (
  `track_id` int(10) UNSIGNED NOT NULL,
  `track_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_track`
--

INSERT INTO `tb_track` (`track_id`, `track_name`, `artist_id`, `album_id`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Mungkin bila nanti', 1, 1, '03.40', '2020-07-02 09:56:38', '2020-07-02 09:56:38'),
(2, 'Buka hatimu', 2, 2, '04.00', '2020-07-02 10:03:00', '2020-07-02 10:03:00'),
(3, 'Dilema', 3, 3, '0335', '2020-07-02 10:03:46', '2020-07-02 10:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nia aprilia', 'niaaprilia1234@gmail', NULL, '$2y$10$eSCHZNkJufmMMaCLj5Owc.kpjdYA8Fp0X0JluS3EOB64hzitw37eu', NULL, '2020-07-02 09:50:13', '2020-07-02 09:50:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `tb_album_artist_id_foreign` (`artist_id`);

--
-- Indexes for table `tb_artist`
--
ALTER TABLE `tb_artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `tb_played`
--
ALTER TABLE `tb_played`
  ADD PRIMARY KEY (`played_id`),
  ADD KEY `tb_played_artist_id_foreign` (`artist_id`),
  ADD KEY `tb_played_album_id_foreign` (`album_id`),
  ADD KEY `tb_played_track_id_foreign` (`track_id`);

--
-- Indexes for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `tb_track_artist_id_foreign` (`artist_id`),
  ADD KEY `tb_track_album_id_foreign` (`album_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_artist`
--
ALTER TABLE `tb_artist`
  MODIFY `artist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_played`
--
ALTER TABLE `tb_played`
  MODIFY `played_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_track`
--
ALTER TABLE `tb_track`
  MODIFY `track_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `tb_album_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`);

--
-- Constraints for table `tb_played`
--
ALTER TABLE `tb_played`
  ADD CONSTRAINT `tb_played_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `tb_album` (`album_id`),
  ADD CONSTRAINT `tb_played_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`),
  ADD CONSTRAINT `tb_played_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tb_track` (`track_id`);

--
-- Constraints for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD CONSTRAINT `tb_track_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `tb_album` (`album_id`),
  ADD CONSTRAINT `tb_track_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
