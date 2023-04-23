-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2023 a las 20:23:14
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_17_232147_create_superpowers_table', 1),
(6, '2023_04_23_172324_create_parents_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `name`, `gender`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Richard Parker', 'Male', 1, NULL, NULL),
(2, 1, 'Mary Parker', 'Female', 1, NULL, NULL),
(3, 2, 'Brian Banner', 'Male', 1, NULL, NULL),
(4, 2, 'Rebeca Banner', 'Female', 1, NULL, NULL),
(5, 3, 'Joseph Rogers', 'Male', 1, NULL, NULL),
(6, 3, 'Sarah Rogers', 'Female', 1, NULL, NULL),
(7, 4, 'Jonathan Kent', 'Male', 1, NULL, NULL),
(8, 5, 'Thomas Wayne', 'Male', 1, NULL, NULL),
(9, 5, 'Martha Wayne', 'Female', 1, NULL, NULL),
(10, 7, 'Zeus', 'Male', 1, NULL, NULL),
(11, 7, 'Hippolyta', 'Female', 1, NULL, NULL),
(12, 9, 'Magneto', 'Male', 1, NULL, NULL),
(13, 9, 'Magda', 'Female', 1, NULL, NULL),
(14, 10, 'John Grayson', 'Male', 1, NULL, NULL),
(15, 10, 'Mary Grayson', 'Female', 1, NULL, NULL),
(16, 1, 'Ben Parker', 'Male', 0, '2023-04-24 00:00:52', '2023-04-24 00:19:39');

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
-- Estructura de tabla para la tabla `superpowers`
--

CREATE TABLE `superpowers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `superpowers`
--

INSERT INTO `superpowers` (`id`, `user_id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Levitate', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ab tempore natus, eius quod adipisci quasi, provident laudantium quam repellendus corporis tenetur inventore fuga iure. Sed pariatur reiciendis eaque accusantium architecto?', 1, NULL, NULL),
(2, 1, 'Mesmerism', 'Lorem ipsum dolor sit.', 0, NULL, '2023-04-23 23:19:53'),
(3, 1, 'Fly', 'Eagles', 1, '2023-04-23 12:46:22', '2023-04-23 12:46:22');

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
(1, 'Spiderman', 'Peter Benjamin Parker', 'Male', 4, 'spiderman@gmail.com', NULL, '$2y$10$oWmMSZuJ1dWywI24KnrBAe8I8qnnFiCL9Y3q.wDRqn96jF05U/Geu', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(2, 'Hulk', 'Robert Bruce Banner', 'Male', 4, 'hulk@gmail.com', NULL, '$2y$10$jBEInsePD6I27f.WmFv9YudGHZE0anwOW.L7PTxHdLjYpFzx7tBGC', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(3, 'Captain America', 'Steven Rogers', 'Male', 4, 'cap@gmail.com', NULL, '$2y$10$pg3iCTX62dK/8Z04OZM2z.jULQntJ5xgyDGrdwAo9h.M/jcD36fmK', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(4, 'Superman', 'Clark Kent', 'Male', 2, 'superman@gmail.com', NULL, '$2y$10$eSxNSl2vU5oN2HMZmqg5qOPFqs3jp/o1ybtElw1fajq3P8JbSN4LK', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(5, 'Batman', 'Bruce Wayne', 'Male', 1, 'batman@gmail.com', NULL, '$2y$10$HC67HGkXdax/XZbehZrJ..vyGNLSMrGWzikT.0Xl1KpsEWdmidDma', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(6, 'Scarlet Spider', 'Ben Reilly', 'Male', 5, 'scarletsp@gmail.com', NULL, '$2y$10$KfJ7TMJmuhZqF7xiPwMAWOm7BZNFRtdoWE86Q4cj7JRQN1Ry9zxK6', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(7, 'Wonder Woman', 'Diana Prince', 'Female', 1, 'wonder@gmail.com', NULL, '$2y$10$8P4lZ3iK1cXVfuP47ReQu.jMeM67jpJo6PPZ.rxhvgKiLRDQMWH4a', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(8, 'Doomsday', '', 'Male', 3, 'doom@gmail.com', NULL, '$2y$10$sy6g8LXGxQXQbBfqysf6WuQf/u2Z7AM.sE.JeCbYmi35I7UrwG8BS', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(9, 'Scarlet Witch', 'Wanda Maximoff', 'Female', 5, 'scarletwit@gmail.com', NULL, '$2y$10$kFxMhSBP5wJYdYIhugQQpOVHTBiqFnn33GhWHLFcFmiskibz1Z7/e', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07'),
(10, 'NightWing', 'Dick Grayson', 'Male', 3, 'nightwing@gmail.com', NULL, '$2y$10$iw2hgcV/viomSqVUeCwb0.LF7ryQqtXHJ3J6wUWaAYlhqUrEoKm72', NULL, '2023-04-23 12:14:07', '2023-04-23 12:14:07');

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
-- Indices de la tabla `parents`
--
ALTER TABLE `parents`
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
-- Indices de la tabla `superpowers`
--
ALTER TABLE `superpowers`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `superpowers`
--
ALTER TABLE `superpowers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
