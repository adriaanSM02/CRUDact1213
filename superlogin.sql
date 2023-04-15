-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2023 a las 06:15:15
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `superlogin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universe_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `real_name`, `gender`, `universe_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Spiderman', 'Peter Benjamin Parker', 'Male', 4, 'spiderman@gmail.com', NULL, '$2y$10$.rZIBFEnEJjxqvYTep04xu.snlqzwM1zhFUSZwQDR2z5z.QoRtD7q', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(2, 'Hulk', 'Robert Bruce Banner', 'Male', 4, 'hulk@gmail.com', NULL, '$2y$10$nA3GcPNZA4VMZJaglCtXGehyHfMTsHOrw06/iOFrrsC4uUlwNdvdG', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(3, 'Captain America', 'Steven Rogers', 'Male', 4, 'cap@gmail.com', NULL, '$2y$10$Fqn73tD8jvaEZubY2o0iIe4IpFqf6zwMiWxn9mHS/Xd6ZPSdWbx5i', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(4, 'Superman', 'Clark Kent', 'Male', 2, 'superman@gmail.com', NULL, '$2y$10$2wQqfqm5BYcO8Z6DN/2ve.IuRtHyKpCBSBuwCmQsVsHOArpQ42C/q', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(5, 'Batman', 'Bruce Wayne', 'Male', 1, 'batman@gmail.com', NULL, '$2y$10$Z93zjOsG4uo4SWat/uptteMfB.BGgCFrTUEBvFmJJpSRlXr8U0B7C', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(6, 'Scarlet Spider', 'Ben Reilly', 'Male', 5, 'scarletsp@gmail.com', NULL, '$2y$10$QJwVnTYzpTkcudBy00SdGOxMJeOdR6pfUSI5LKcEtiM.oJHuKRWh.', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(7, 'Wonder Woman', 'Diana Prince', 'Female', 1, 'wonder@gmail.com', NULL, '$2y$10$oH1n5Xs77Gew3sk/JFNAfuPBCw9gnGfXCoMp1lMM2cyZ4gLqpCFNy', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(8, 'Doomsday', '', 'Male', 3, 'doom@gmail.com', NULL, '$2y$10$Wo9Vuq4qwGB9dNbrPd1rqu1PkVmqZIo9lKGfeLO.sf.l1qDBzfnSK', NULL, '2023-04-14 10:10:45', '2023-04-14 10:10:45'),
(9, 'Scarlet Witch', 'Wanda Maximoff', 'Female', 5, 'scarletwit@gmail.com', NULL, '$2y$10$UFgaMYdPyDSups0Qet6W2Osz/jcf0.FB7KXNx/RYn.byBsHJTVQ9W', NULL, '2023-04-14 10:10:46', '2023-04-14 10:10:46'),
(10, 'NightWing', 'Dick Grayson', 'Male', 3, 'nightwing@gmail.com', NULL, '$2y$10$wqzU2lDId4fPIqtgc45DA.7tH3pXjMqeMGI/ynqmGEzhNpYH5dAxm', NULL, '2023-04-14 10:10:46', '2023-04-14 10:10:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
