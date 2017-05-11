-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 11 2017 г., 19:35
-- Версия сервера: 5.5.50-log
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallerytz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `title`, `dates`, `image`, `text`, `created_at`, `updated_at`) VALUES
(3, 'Природа', '10-05-2017', 'img1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 06:43:40', '2017-05-10 06:43:40'),
(4, 'Машины', '10-05-2017', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 06:46:09', '2017-05-10 06:46:09'),
(5, 'Кино', '11-05-2017', 'og-image.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 06:49:44', '2017-05-10 06:49:44'),
(6, 'Музыка', '08-05-2017', 'Music_by_timvdam.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 06:54:42', '2017-05-10 06:54:42'),
(9, 'Спорт', '01-05-2017', '1_228_pic.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 10:14:55', '2017-05-10 10:14:55'),
(10, 'Живопись', '02-05-2017', 'Mihail-i-Inessa-Garmash.-Portretyi-zhivopis.-Kartina-vtoraya.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 10:16:51', '2017-05-10 10:16:51'),
(11, 'Животные', '04-05-2017', '0003a709_medium-720x479.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2017-05-10 10:18:14', '2017-05-10 10:18:14');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_10_110846_create_albums_table', 1),
(4, '2017_05_10_110910_create_photos_table', 1),
(5, '2017_05_10_111842_change_photos_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `title`, `image`, `created_at`, `updated_at`, `album_id`) VALUES
(4, 'BMW', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', '2017-05-10 08:51:32', '2017-05-10 08:51:32', 4),
(5, 'Lamborgini', 'how-to-draw-an-aston-martin-aston-martin-virage-tutorial-drawing.jpg', '2017-05-10 08:53:21', '2017-05-10 08:53:21', 4),
(6, 'ывывыв', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', '2017-05-10 08:55:20', '2017-05-10 08:55:20', 4),
(7, 'ывывыв', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', '2017-05-10 08:55:27', '2017-05-10 08:55:27', 5),
(8, 'апапапап', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', '2017-05-10 08:57:03', '2017-05-10 08:57:03', 4),
(9, 'Dfdfdfd', '75277909_WindowsLiveWriter_6b3c2b25bd96_B219_CRRSR_RSRSRyoRSR_RRSRyoRS_SRSR_63_73c6ae7e2143467a8afb4ce47fdd311a.jpg', '2017-05-10 08:59:05', '2017-05-10 08:59:05', 4),
(10, 'Ligthbox', '0003a709_medium-720x479.jpg', '2017-05-10 11:55:08', '2017-05-10 11:55:08', 5),
(11, 'вавава', '1_228_pic.jpg', '2017-05-11 01:04:55', '2017-05-11 01:04:55', 6),
(12, 'ывывыв', '1_228_pic.jpg', '2017-05-11 01:07:54', '2017-05-11 01:07:54', 9),
(13, 'Dfdfd', '0003a709_medium-720x479.jpg', '2017-05-11 02:38:54', '2017-05-11 02:38:54', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nurlan', 'adante91@mail.ru', '$2y$10$pIcccHBrWecwhkVDr4wU.eUx3pC32e6xCSvc/z7aR9WrBXb0/qy9G', 'etreOYvlPrSqU7hPJfQj7gfkd5jMYSjBtVqXQVNaPj3HhXat7ffDw0voG3Is', '2017-05-11 01:51:09', '2017-05-11 01:51:09');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_album_id_foreign` (`album_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
