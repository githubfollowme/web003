-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-01-17 07:36:46
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `web03`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `length` int(11) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `director` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `poster` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `rank`, `sh`) VALUES
(1, 'superman', 1, 130, '2022-01-17', 'super', 'super', '03B25v.mp4', '03B25.png', 'superman超人superman超人superman超人superman超人superman超人', 1, 1),
(3, 'hahaha', 1, 120, '2022-01-16', 'ABC', 'AAA', '03B03v.mp4', '03B03.png', '新增院線片新增院線片新增院線片新增院線片新增院線片新增院線片新增院線片新增院線片', 2, 1),
(4, '瑪莉', 1, 105, '2022-01-17', '瑪莉', '瑪莉', '03B04v.mp4', '03B04.png', '瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉瑪莉', 4, 1),
(5, '星期五', 1, 110, '2022-01-17', '星期五', '星期五', '03B17v.mp4', '03B17.png', '星期五星期五星期五星期五星期五星期五星期五星期五星期五星期五星期五星期五星期五', 5, 1),
(6, '123', 1, 110, '2022-01-17', '12', '23', '03B22v.mp4', '03B22.png', '測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用測試用', 6, 1),
(7, '卡洛特2', 3, 120, '2022-01-16', 'ABC', 'AAA', '03B10v.mp4', '03B10.png', '卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2卡洛特2', 8, 1),
(8, '瑪莉2', 4, 111, '2022-01-17', '111', '111', '03B07v.mp4', '03B07.png', '瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2瑪莉2', 7, 1),
(9, '星期六', 2, 123, '2022-01-16', '星期六', '星期六', '03B15v.mp4', '03B15.png', '星期六星期六星期六星期六星期六星期六星期六星期六星期六星期六星期六星期六', 9, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `ord`
--

CREATE TABLE `ord` (
  `id` int(11) UNSIGNED NOT NULL,
  `no` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `movie` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` date NOT NULL,
  `session` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `qt` int(1) UNSIGNED NOT NULL,
  `seat` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `poster`
--

CREATE TABLE `poster` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rank` int(11) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `ani` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `poster`
--

INSERT INTO `poster` (`id`, `path`, `name`, `rank`, `sh`, `ani`) VALUES
(1, '03A01.jpg', '預告片1', 5, 1, 2),
(2, '03A02.jpg', '預告片2', 6, 1, 2),
(3, '03A03.jpg', '預告片3', 13, 1, 3),
(6, '03A05.jpg', '預告片5', 14, 1, 1),
(8, '03A04.jpg', '星期五', 1, 1, 3),
(9, '03A09.jpg', '瑪莉', 2, 1, 3),
(13, '03A09.jpg', '123', 4, 1, 3),
(14, '03A07.jpg', 'hahaha', 3, 1, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ord`
--
ALTER TABLE `ord`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
