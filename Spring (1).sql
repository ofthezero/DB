-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 21 2022 г., 21:49
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Spring`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` bigint NOT NULL,
  `building` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `building`, `city`, `street`) VALUES
(1, 'РУСИЯ', 'МОСКОУ', 'МО'),
(2, 'JLBY', 'FF', 'DD');

-- --------------------------------------------------------

--
-- Структура таблицы `bronirovanie`
--

CREATE TABLE `bronirovanie` (
  `id` bigint NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gosti_id` bigint DEFAULT NULL,
  `komnati_id` bigint DEFAULT NULL,
  `type_pitanie_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `bronirovanie`
--

INSERT INTO `bronirovanie` (`id`, `data`, `gosti_id`, `komnati_id`, `type_pitanie_id`) VALUES
(1, '12.02.2022', 5, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cource`
--

CREATE TABLE `cource` (
  `id` bigint NOT NULL,
  `cource` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name_cource` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `cource`
--

INSERT INTO `cource` (`id`, `cource`, `name_cource`) VALUES
(41, '6', 'БЛ'),
(42, '8', 'р');

-- --------------------------------------------------------

--
-- Структура таблицы `date_raboti`
--

CREATE TABLE `date_raboti` (
  `id` bigint NOT NULL,
  `days_raboti` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `times_raboti` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `date_raboti`
--

INSERT INTO `date_raboti` (`id`, `days_raboti`, `times_raboti`) VALUES
(51, 'ss', '4-5');

-- --------------------------------------------------------

--
-- Структура таблицы `dolznost`
--

CREATE TABLE `dolznost` (
  `id` bigint NOT NULL,
  `name_dolznosti` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oklad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `dolznost`
--

INSERT INTO `dolznost` (`id`, `name_dolznosti`, `oklad`) VALUES
(44, 'd', 33);

-- --------------------------------------------------------

--
-- Структура таблицы `gosti`
--

CREATE TABLE `gosti` (
  `id` bigint NOT NULL,
  `familia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `passportd_id` bigint DEFAULT NULL,
  `imya` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `otchestvo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gosti`
--

INSERT INTO `gosti` (`id`, `familia`, `passportd_id`, `imya`, `otchestvo`) VALUES
(5, 'Аджемян', NULL, 'Артем', 'Андреевич'),
(6, 'ЧЧ', 49, 'ЧЧ', 'ЧЧ');

-- --------------------------------------------------------

--
-- Структура таблицы `hotel`
--

CREATE TABLE `hotel` (
  `id` bigint NOT NULL,
  `dom` int NOT NULL,
  `gorod` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strana` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ulica` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `hotel`
--

INSERT INTO `hotel` (`id`, `dom`, `gorod`, `strana`, `ulica`) VALUES
(52, 5, 'Москва', 'Россия', 'ул.Героев Панфиловцев');

-- --------------------------------------------------------

--
-- Структура таблицы `komnati`
--

CREATE TABLE `komnati` (
  `id` bigint NOT NULL,
  `nomer_komnati` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type_komnati_id` bigint DEFAULT NULL,
  `hotel_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `komnati`
--

INSERT INTO `komnati` (`id`, `nomer_komnati`, `status`, `type_komnati_id`, `hotel_id`) VALUES
(1, '230B', 'Престиж', 1, NULL),
(2, '3', '3', 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `passportd`
--

CREATE TABLE `passportd` (
  `id` bigint NOT NULL,
  `nomer_passporta` int NOT NULL,
  `seria_passporta` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `passportd`
--

INSERT INTO `passportd` (`id`, `nomer_passporta`, `seria_passporta`) VALUES
(47, 6, 6),
(48, 6, 6),
(49, 444466, 7778);

-- --------------------------------------------------------

--
-- Структура таблицы `role_name`
--

CREATE TABLE `role_name` (
  `id` bigint NOT NULL,
  `name_role` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `role_name`
--

INSERT INTO `role_name` (`id`, `name_role`) VALUES
(50, 'USER');

-- --------------------------------------------------------

--
-- Структура таблицы `type_komnati`
--

CREATE TABLE `type_komnati` (
  `id` bigint NOT NULL,
  `namet` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stoimost` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `type_komnati`
--

INSERT INTO `type_komnati` (`id`, `namet`, `stoimost`) VALUES
(1, 'Трехкомнатная ', '34000'),
(2, 'Однакомнатная', '30000');

-- --------------------------------------------------------

--
-- Структура таблицы `type_pitanie`
--

CREATE TABLE `type_pitanie` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stoimost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `type_pitanie`
--

INSERT INTO `type_pitanie` (`id`, `name`, `stoimost`) VALUES
(1, 'Без питания', 0),
(39, 'Трехразовое\r\n', 38);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `familia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imya` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `otchestvo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `active`, `password`, `username`, `familia`, `imya`, `otchestvo`) VALUES
(1, b'1', '$2a$08$2Iw/7qyNT3THpKyR6Mu1ZeYjK/jHIhZc7dZLd3vbyQLqEFNcWxz8m', '123', NULL, NULL, NULL),
(2, b'1', '$2a$08$wX1EFHlzo6vKJeSu.XVrDeR.2jRHyMcbFQj40grqfigm3cHJKPgci', 'qwe', NULL, NULL, NULL),
(3, b'1', '$2a$08$.g7WKKqgsPYo9zG6vm3jBeX45Fne3.DwnMV/zJNBCGxdqcY1s39JG', 'user', NULL, NULL, NULL),
(4, b'1', '$2a$08$3VELj7oLT60ghP5NDruaBeQlfSwHad4jD9rhMwmwuYaIYoYXPrKMe', 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`user_id`, `roles`) VALUES
(3, 'USER'),
(1, 'USER'),
(4, 'USER'),
(4, 'ADMIN'),
(3, 'USER'),
(1, 'USER'),
(4, 'USER'),
(4, 'ADMIN');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bronirovanie`
--
ALTER TABLE `bronirovanie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoupsf4nf6pmk7mp5he0q4h274` (`gosti_id`),
  ADD KEY `FK4h3uutkokj99776jc1jn6hj55` (`komnati_id`),
  ADD KEY `FK36bvl79vd246n3biwxsxrmxmt` (`type_pitanie_id`);

--
-- Индексы таблицы `cource`
--
ALTER TABLE `cource`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `date_raboti`
--
ALTER TABLE `date_raboti`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dolznost`
--
ALTER TABLE `dolznost`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gosti`
--
ALTER TABLE `gosti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqfsbmsqcjfthckleuvmbna27k` (`passportd_id`);

--
-- Индексы таблицы `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `komnati`
--
ALTER TABLE `komnati`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc6g0od0kvfcxo6rqneggb3ecs` (`type_komnati_id`),
  ADD KEY `FKk1f5yx12y7ftueaip9cfpaehy` (`hotel_id`);

--
-- Индексы таблицы `passportd`
--
ALTER TABLE `passportd`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_name`
--
ALTER TABLE `role_name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_komnati`
--
ALTER TABLE `type_komnati`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_pitanie`
--
ALTER TABLE `type_pitanie`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bronirovanie`
--
ALTER TABLE `bronirovanie`
  ADD CONSTRAINT `FK36bvl79vd246n3biwxsxrmxmt` FOREIGN KEY (`type_pitanie_id`) REFERENCES `type_pitanie` (`id`),
  ADD CONSTRAINT `FK4h3uutkokj99776jc1jn6hj55` FOREIGN KEY (`komnati_id`) REFERENCES `komnati` (`id`),
  ADD CONSTRAINT `FKoupsf4nf6pmk7mp5he0q4h274` FOREIGN KEY (`gosti_id`) REFERENCES `gosti` (`id`);

--
-- Ограничения внешнего ключа таблицы `gosti`
--
ALTER TABLE `gosti`
  ADD CONSTRAINT `FKqfsbmsqcjfthckleuvmbna27k` FOREIGN KEY (`passportd_id`) REFERENCES `passportd` (`id`);

--
-- Ограничения внешнего ключа таблицы `komnati`
--
ALTER TABLE `komnati`
  ADD CONSTRAINT `FKc6g0od0kvfcxo6rqneggb3ecs` FOREIGN KEY (`type_komnati_id`) REFERENCES `type_komnati` (`id`),
  ADD CONSTRAINT `FKk1f5yx12y7ftueaip9cfpaehy` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
