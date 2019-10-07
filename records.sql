-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Жов 06 2019 р., 18:23
-- Версія сервера: 10.4.6-MariaDB
-- Версія PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `test`
--

-- --------------------------------------------------------

--
-- Структура таблиці `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `text` text NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `records`
--

INSERT INTO `records` (`id`, `name`, `text`, `data`) VALUES
(1, 'Дмитрий', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elementum lorem id venenatis. Nullam id sagittis urna, eu ultrices risus. Duis ante lorem, semper nec fringilla eu, commodo vel mauris. Nunc tristique odio lectus, eget condimentum nunc consectetur eu. Nullam non varius nisl, aliquet fringilla lectus. Aliquam erat volutpat. Ut vel mi et lectus hendrerit ornare vel ut neque. Quisque venenatis nisl eu mi', '2014-04-18 23:59:59'),
(2, 'Николай', 'Ut varius commodo fringilla. Nullam id pulvinar odio. Pellentesque gravida aliquam ipsum, et malesuada neque molestie eget. Vestibulum sagittis finibus efficitur. Donec sit amet aliquet dolor, vitae ornare tortor. Etiam eget augue nec diam vehicula bibendum. Nulla quis erat lacus. Vestibulum quis mattis augue. Praesent dignissim, justo non aliquam feugiat, lorem metus egestas leo, quis eleifend odio quam in ex. Aenean diam est, scelerisque ac ultricies sit amet, vulputate in tortor. Etiam ac mi enim. Sed pellentesque elementum erat eu eleifend. Integer imperdiet sem eu magna feugiat, sed efficitur velit convallis.', '2014-04-16 14:59:59'),
(3, 'Петр', 'Phasellus gravida fermentum pellentesque. Aenean non neque mollis nisl dapibus eleifend. Sed interdum dui nec dictum elementum. Proin eget semper dolor, ut commodo nibh. Quisque vitae pharetra ligula. Sed dictum, sem sed pellentesque aliquam, tellus sapien dapibus magna, eu suscipit lacus augue sed velit. Ut vehicula sagittis nulla, et aliquet elit. Quisque tincidunt sem nibh, finibus dictum nisl vulputate quis. In vitae nisl et lacus pulvinar ornare id ac libero. Morbi pharetra fringilla erat ut lacinia.', '2014-04-15 12:59:59'),
(4, 'Андрей', 'текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст текст', '2017-10-08 21:19:58'),
(18, 'аіаіа', 'іаіаі', '2019-10-06 18:27:54'),
(19, 'Артем', 'lookshit ', '2019-10-06 18:28:09'),
(20, 'john', 'єєєє ', '2019-10-06 18:28:19'),
(21, 'john', 'єєєє ', '2019-10-06 18:32:51'),
(22, 'f', 'f', '2019-10-06 18:35:09'),
(23, 'f', 'f', '2019-10-06 18:37:24'),
(24, 'sadad', 'dafgerth', '2019-10-06 18:40:31'),
(25, 'gthjtyjg', 'jtyjhrthe', '2019-10-06 18:48:39'),
(26, 'reherh', 'eehhe', '2019-10-06 18:48:42'),
(27, 'grgrw', 'wgwrgwrg', '2019-10-06 18:48:44'),
(28, 'ttt', 'tttttttttttttttttttt', '2019-10-06 18:52:46'),
(29, 'cscs', 'dcscds', '2019-10-06 18:59:28'),
(30, 'cscs', 'dcscds', '2019-10-06 19:00:34'),
(31, 'gdfgrthr', 'hrhrthrh', '2019-10-06 19:03:03'),
(32, 'hhhgf', 'hfh', '2019-10-06 19:06:44');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
