-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 05:46 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `forum`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `image` text NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTgK1EYhwitE3CCCdbK1bNwFIu-vo2B5dnA&usqp=CAU',
  `description` text NOT NULL DEFAULT 'Hãy viết một thứ gì đó',
  `level` int(11) NOT NULL DEFAULT 0,
  `die` tinyint(1) NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `name`, `email`, `status`, `image`, `description`, `level`, `die`, `time`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'Quản Trị Viên', 'haunguyen15800@gmail.com', 1, 'https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-05.jpg', 'Hãy viết một thứ gì đó', 1, 0, '2022-09-25 15:14:11'),
(5, 'admi', 'c4ca4238a0b923820dcc509a6f75849b', 'admin', 'admin@admin.com', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC6iPDSqcgCcAtdEz_rPY0B-sxqMd7hz0Hlg&usqp=CAU', 'Hãy viết một thứ gì đó', 0, 0, '2022-09-25 15:14:33'),
(7, 'hau', 'c4ca4238a0b923820dcc509a6f75849b', 'Hậu', 'haunguyen15800@gmail.com', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTgK1EYhwitE3CCCdbK1bNwFIu-vo2B5dnA&usqp=CAU', 'Hãy viết một thứ gì đó', 0, 1, '2022-10-17 22:05:26'),
(8, 'haunguyen', '8d8a77bb70f62e87493f8878906bce3f', 'Nguyễn Văn Hậu', 'haunguyen15800@gmail.com', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTgK1EYhwitE3CCCdbK1bNwFIu-vo2B5dnA&usqp=CAU', 'Hãy viết một thứ gì đó', 0, 1, '2022-11-06 18:00:16'),
(10, 'ad', 'c4ca4238a0b923820dcc509a6f75849b', 'Hehe', 'haunguyen15800@gmail.com', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTgK1EYhwitE3CCCdbK1bNwFIu-vo2B5dnA&usqp=CAU', 'Hãy viết một thứ gì đó', 0, 0, '2022-11-12 23:08:23'),
(11, 'hau123', '827ccb0eea8a706c4c34a16891f84e7b', 'Hậu', 'haunguyen@gmail.com', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTgK1EYhwitE3CCCdbK1bNwFIu-vo2B5dnA&usqp=CAU', 'Hãy viết một thứ gì đó', 0, 0, '2022-11-14 19:51:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban`
--

CREATE TABLE `ban` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text NOT NULL DEFAULT 'Mình thích thì mình khóa thôi haha',
  `time` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ban`
--

INSERT INTO `ban` (`id`, `user_id`, `reason`, `time`, `date`) VALUES
(48, 5, 'mình thích thì mình khóa thôi', -1, '2022-11-27 20:44:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `content`, `date`) VALUES
(57, 1, '???', '2022-11-27 20:48:15'),
(58, 1, 'hello', '2022-11-27 20:48:26'),
(59, 1, '???', '2022-11-27 20:49:06'),
(60, 7, 'heoo', '2022-11-27 20:49:44'),
(61, 7, ':)))', '2022-11-27 20:49:57'),
(62, 1, 'rưqrwq', '2022-11-27 20:50:21'),
(63, 1, 'rưqr', '2022-11-27 20:50:21'),
(64, 1, 'ư', '2022-11-27 20:50:21'),
(65, 1, 'rử', '2022-11-27 20:50:21'),
(66, 1, '42', '2022-11-27 20:50:34'),
(67, 1, '1243', '2022-11-27 20:50:44'),
(68, 1, '4214', '2022-11-27 20:50:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `date`) VALUES
(1904, 1, 11304, 'alo', '2022-11-01 08:51:56'),
(1905, 1, 11304, '123', '2022-11-01 08:51:59'),
(1906, 1, 11304, '421415', '2022-11-01 08:52:00'),
(1907, 1, 11304, '?', '2022-11-01 08:52:05'),
(1908, 1, 11305, '4214', '2022-11-01 08:53:46'),
(1909, 1, 11305, '521521', '2022-11-01 08:53:47'),
(1910, 1, 11307, '5325235', '2022-11-01 11:21:28'),
(1911, 1, 11307, '6326236', '2022-11-01 11:21:30'),
(1912, 1, 11307, '6326326', '2022-11-01 11:21:31'),
(1913, 1, 11307, '63263263', '2022-11-01 11:21:32'),
(1914, 1, 11307, '632632632', '2022-11-01 11:21:33'),
(1915, 1, 11307, '632632632632', '2022-11-01 11:21:34'),
(1916, 1, 11307, '632632632', '2022-11-01 11:21:35'),
(1917, 1, 11304, '532535', '2022-11-01 11:26:33'),
(1918, 1, 11304, '532523', '2022-11-01 11:26:34'),
(1919, 1, 11304, '5325235', '2022-11-01 11:26:35'),
(1920, 1, 11304, '5325235', '2022-11-01 11:26:36'),
(1921, 1, 11304, '5325325', '2022-11-01 11:26:37'),
(1922, 1, 11304, '5325235', '2022-11-01 11:26:38'),
(1923, 1, 11304, '535235', '2022-11-01 11:26:39'),
(1924, 1, 11304, '52353253', '2022-11-01 11:26:41'),
(1925, 1, 11304, '535235235', '2022-11-01 11:26:42'),
(1926, 7, 11304, 'ủa là sao ta', '2022-11-01 13:42:40'),
(1927, 7, 11304, 'nà ní', '2022-11-01 13:42:44'),
(1928, 1, 11304, '5325', '2022-11-01 14:20:52'),
(1929, 1, 11304, '6436346', '2022-11-01 14:21:16'),
(1930, 1, 11304, 'dsafsafasf', '2022-11-01 14:21:34'),
(1931, 1, 11304, 'tưt', '2022-11-01 14:21:50'),
(1932, 1, 11304, '421421', '2022-11-01 14:22:09'),
(1933, 1, 11304, '63262', '2022-11-01 14:25:06'),
(1934, 1, 11304, '5215', '2022-11-01 14:26:02'),
(1935, 1, 11304, '5215', '2022-11-01 14:26:27'),
(1936, 1, 11304, '5215', '2022-11-01 14:26:27'),
(1937, 1, 11304, '3525', '2022-11-01 14:26:34'),
(1938, 1, 11304, '532523', '2022-11-01 14:27:35'),
(1939, 1, 11304, '53252532', '2022-11-01 14:27:37'),
(1940, 1, 11308, '5325325', '2022-11-01 14:29:46'),
(1941, 1, 11308, '532523', '2022-11-01 14:29:54'),
(1942, 1, 11308, '532532', '2022-11-01 14:30:01'),
(1943, 1, 11308, '6326326', '2022-11-01 14:30:02'),
(1944, 1, 11308, '7575', '2022-11-01 14:30:03'),
(1945, 1, 11308, '7575475', '2022-11-01 14:30:04'),
(1946, 7, 11313, '4214', '2022-11-01 14:37:25'),
(1947, 7, 11321, '4214', '2022-11-01 14:43:45'),
(1948, 7, 11321, '421412', '2022-11-01 14:43:46'),
(1949, 7, 11321, '4214', '2022-11-01 14:43:49'),
(1950, 7, 11321, '5215', '2022-11-01 14:43:51'),
(1951, 7, 11321, '52152', '2022-11-01 14:43:53'),
(1952, 1, 11321, '4214', '2022-11-01 14:43:55'),
(1953, 1, 11321, '5215', '2022-11-01 14:43:56'),
(1954, 7, 11322, '6326', '2022-11-01 14:46:58'),
(1955, 1, 11322, '632623', '2022-11-01 14:47:02'),
(1956, 7, 11322, '51252', '2022-11-01 14:47:04'),
(1957, 7, 11323, '3525', '2022-11-01 14:48:21'),
(1958, 1, 11305, 'ggggg', '2022-11-01 17:40:14'),
(1960, 7, 11305, 'ok nha', '2022-11-02 09:18:19'),
(1961, 7, 11305, 'đù ', '2022-11-02 09:18:22'),
(1962, 7, 11305, 'ok á', '2022-11-02 09:18:25'),
(1963, 7, 11305, 'tewtwet', '2022-11-02 09:21:35'),
(1964, 7, 11305, 'ewtewt', '2022-11-02 09:21:36'),
(1965, 1, 11306, '134', '2022-11-02 09:30:40'),
(1966, 1, 11306, '41421', '2022-11-02 09:30:43'),
(1967, 1, 11306, '4214', '2022-11-02 09:30:47'),
(1968, 1, 11306, '1525', '2022-11-02 09:30:48'),
(1969, 1, 11306, '4', '2022-11-02 09:30:53'),
(1970, 1, 11306, '56', '2022-11-02 09:31:04'),
(1971, 1, 11306, '5747547457', '2022-11-02 09:31:22'),
(1972, 1, 11306, '2', '2022-11-02 09:31:26'),
(1973, 1, 11306, '532632623', '2022-11-02 09:31:28'),
(1974, 1, 11306, '73475474676', '2022-11-02 09:31:29'),
(1975, 7, 11323, '4214', '2022-11-02 12:32:10'),
(1976, 7, 11323, '2515', '2022-11-02 12:32:11'),
(1977, 7, 11323, '5215', '2022-11-02 12:32:11'),
(1978, 7, 11323, 't252334', '2022-11-02 12:32:13'),
(1979, 7, 11323, 'rwq', '2022-11-02 12:32:26'),
(1980, 7, 11323, 'twqt', '2022-11-02 12:32:26'),
(1981, 7, 11323, 'etwt', '2022-11-02 12:32:37'),
(1982, 7, 11323, 'tewte', '2022-11-02 12:32:37'),
(1983, 7, 11323, '4214', '2022-11-02 12:46:28'),
(1984, 7, 11323, '4124', '2022-11-02 12:46:29'),
(1985, 7, 11323, '412', '2022-11-02 12:46:29'),
(1986, 7, 11323, '5125', '2022-11-02 12:46:29'),
(1987, 7, 11323, '4214', '2022-11-02 12:46:33'),
(1988, 7, 11323, '521', '2022-11-02 12:46:34'),
(1989, 7, 11323, '5125', '2022-11-02 12:46:34'),
(1990, 7, 11323, '5125', '2022-11-02 12:46:34'),
(1991, 7, 11323, '512', '2022-11-02 12:46:35'),
(1992, 7, 11323, '7', '2022-11-02 12:46:41'),
(1993, 7, 11323, '8', '2022-11-02 12:46:41'),
(1994, 7, 11323, '4', '2022-11-02 12:46:43'),
(1995, 7, 11323, '3', '2022-11-02 12:46:44'),
(1996, 1, 11324, 'tewte', '2022-11-03 12:24:48'),
(1997, 1, 11326, '41', '2022-11-03 19:15:01'),
(1998, 1, 11326, 'r251', '2022-11-03 19:18:19'),
(1999, 1, 11325, '525', '2022-11-03 19:18:29'),
(2000, 1, 11325, '616', '2022-11-03 19:18:30'),
(2001, 1, 11325, '6', '2022-11-03 19:18:30'),
(2002, 1, 11325, '626', '2022-11-03 19:18:30'),
(2003, 1, 11325, 'rưr', '2022-11-03 19:22:59'),
(2004, 1, 11325, 'tqt', '2022-11-03 19:23:04'),
(2005, 1, 11325, 'tqt', '2022-11-03 19:23:05'),
(2006, 1, 11327, '5325', '2022-11-05 14:46:35'),
(2007, 1, 11327, '4214', '2022-11-05 15:34:52'),
(2008, 1, 11327, '512', '2022-11-05 15:35:11'),
(2009, 1, 11327, '621', '2022-11-05 15:35:11'),
(2010, 1, 11327, '6216', '2022-11-05 15:36:03'),
(2011, 1, 11327, '4214', '2022-11-05 15:41:04'),
(2012, 7, 11327, '525', '2022-11-05 15:41:12'),
(2013, 1, 11327, '5125\\', '2022-11-05 15:48:14'),
(2014, 7, 11327, '5215', '2022-11-05 15:50:48'),
(2015, 7, 11327, '5215', '2022-11-05 15:50:49'),
(2016, 7, 11327, '5235', '2022-11-05 15:51:00'),
(2017, 8, 11327, 'tyw', '2022-11-06 11:00:58'),
(2018, 8, 11327, '6326', '2022-11-06 19:32:29'),
(2019, 8, 11327, '7327327', '2022-11-06 19:34:54'),
(2020, 8, 11327, '53253', '2022-11-06 19:35:00'),
(2021, 7, 11327, 'rử', '2022-11-07 09:37:08'),
(2022, 7, 11307, '53253253', '2022-11-07 09:37:33'),
(2023, 7, 11307, '532532', '2022-11-07 09:37:50'),
(2024, 7, 11307, '4214', '2022-11-07 09:46:59'),
(2025, 7, 11307, '241412', '2022-11-07 09:51:07'),
(2026, 7, 11307, 'rưqt', '2022-11-07 10:02:52'),
(2027, 7, 11307, '5235', '2022-11-07 10:03:05'),
(2028, 7, 11307, '53525', '2022-11-07 10:03:06'),
(2029, 7, 11307, '535', '2022-11-07 10:14:20'),
(2030, 7, 11307, '421412', '2022-11-07 10:14:37'),
(2031, 7, 11327, '5215', '2022-11-07 12:11:04'),
(2032, 7, 11327, '5215', '2022-11-07 12:11:05'),
(2033, 7, 11327, '5215', '2022-11-07 12:11:12'),
(2034, 7, 11325, '6326', '2022-11-07 12:33:57'),
(2035, 7, 11325, '6326', '2022-11-07 12:34:01'),
(2036, 7, 11327, '6236', '2022-11-07 12:50:48'),
(2037, 7, 11327, '535', '2022-11-07 12:52:36'),
(2038, 7, 11327, '6326233', '2022-11-07 18:55:10'),
(2039, 7, 11327, '6326236', '2022-11-07 18:56:05'),
(2040, 7, 11327, '6326', '2022-11-07 18:56:07'),
(2041, 8, 11327, '5325', '2022-11-07 18:56:23'),
(2042, 8, 11327, 'tewt', '2022-11-07 18:56:33'),
(2043, 8, 11327, 'fsaf', '2022-11-07 18:56:37'),
(2044, 7, 11327, 'rwqr', '2022-11-07 18:57:19'),
(2045, 8, 11327, 'rwr', '2022-11-07 18:57:28'),
(2046, 7, 11327, '5325', '2022-11-07 18:59:04'),
(2047, 7, 11327, '535', '2022-11-07 18:59:49'),
(2048, 7, 11327, '424', '2022-11-07 19:00:32'),
(2049, 7, 11327, '525', '2022-11-07 19:01:39'),
(2050, 7, 11327, '532', '2022-11-07 19:02:34'),
(2051, 7, 11327, '636', '2022-11-07 19:03:25'),
(2052, 7, 11327, '5325', '2022-11-07 19:04:14'),
(2053, 7, 11327, '3525', '2022-11-07 19:05:51'),
(2054, 7, 11327, '42', '2022-11-07 19:07:01'),
(2055, 7, 11327, 't', '2022-11-07 19:08:14'),
(2056, 7, 11327, 'gdg', '2022-11-07 19:09:30'),
(2057, 8, 11327, 'fsfds', '2022-11-07 19:11:34'),
(2058, 8, 11327, '3525', '2022-11-07 19:12:32'),
(2059, 7, 11327, 'twqt', '2022-11-07 19:13:36'),
(2060, 7, 11327, 'fdsg', '2022-11-07 19:14:39'),
(2061, 7, 11327, '5325', '2022-11-07 19:16:29'),
(2062, 8, 11327, '532', '2022-11-07 19:16:51'),
(2063, 8, 11327, '424', '2022-11-07 19:17:54'),
(2064, 7, 11327, '5325', '2022-11-07 19:21:44'),
(2065, 7, 11327, 'sdf', '2022-11-07 19:24:09'),
(2066, 7, 11327, '5325', '2022-11-07 19:24:55'),
(2067, 7, 11327, 'saf', '2022-11-07 19:25:43'),
(2068, 7, 11327, 'fsaf', '2022-11-07 19:26:20'),
(2069, 7, 11327, 'rwqr', '2022-11-07 19:27:07'),
(2070, 7, 11327, 'rwr', '2022-11-07 19:28:04'),
(2071, 7, 11327, 'rwqr', '2022-11-07 19:28:30'),
(2072, 7, 11327, '5215', '2022-11-07 19:29:10'),
(2073, 7, 11327, 'fsaf', '2022-11-07 19:29:48'),
(2074, 8, 11327, '525', '2022-11-07 19:30:19'),
(2075, 8, 11327, '32553', '2022-11-07 19:31:21'),
(2076, 7, 11327, '352', '2022-11-07 19:33:29'),
(2077, 7, 11327, '325', '2022-11-07 19:35:39'),
(2078, 7, 11327, '5235', '2022-11-07 19:36:53'),
(2079, 7, 11327, '525', '2022-11-07 19:37:51'),
(2080, 7, 11327, '5325', '2022-11-07 19:38:24'),
(2081, 7, 11327, '5215', '2022-11-07 19:39:57'),
(2082, 7, 11327, '535', '2022-11-07 19:41:55'),
(2083, 7, 11327, '535', '2022-11-07 19:42:39'),
(2084, 7, 11327, '53', '2022-11-07 19:43:51'),
(2085, 7, 11327, '5215', '2022-11-07 19:46:31'),
(2086, 7, 11327, '535', '2022-11-07 19:56:25'),
(2087, 8, 11327, '535', '2022-11-07 19:56:31'),
(2088, 8, 11327, 'afsaf', '2022-11-07 19:56:46'),
(2089, 7, 11327, 'tqwt', '2022-11-07 19:58:01'),
(2090, 7, 11327, 'er', '2022-11-07 19:58:03'),
(2091, 1, 11327, '5325', '2022-11-11 06:29:11'),
(2092, 7, 11327, '535', '2022-11-11 06:29:20'),
(2093, 7, 11327, '3525', '2022-11-11 06:29:30'),
(2094, 7, 11329, '525215', '2022-11-11 07:26:33'),
(2095, 1, 11329, '52515', '2022-11-11 07:26:40'),
(2096, 1, 11337, '4214', '2022-11-13 16:18:51'),
(2097, 1, 11337, '412421', '2022-11-13 16:18:52'),
(2098, 7, 11336, '5325', '2022-11-13 16:24:37'),
(2099, 7, 11336, '5325325', '2022-11-13 16:24:37'),
(2100, 7, 11336, 'ww55231', '2022-11-13 16:24:48'),
(2101, 7, 11336, '5325', '2022-11-13 16:24:49'),
(2102, 7, 11336, '45124', '2022-11-13 16:24:50'),
(2103, 7, 11336, '5', '2022-11-13 16:24:52'),
(2104, 7, 11336, '535', '2022-11-13 16:25:00'),
(2105, 7, 11336, '35', '2022-11-13 16:25:01'),
(2106, 7, 11336, '512', '2022-11-13 16:25:08'),
(2107, 7, 11336, '3', '2022-11-13 16:25:09'),
(2108, 7, 11336, 'fdsf', '2022-11-13 16:25:57'),
(2109, 7, 11336, 'tewt', '2022-11-13 16:25:59'),
(2110, 7, 11336, 'tet', '2022-11-13 16:26:05'),
(2111, 7, 11336, 'tew', '2022-11-13 16:26:05'),
(2112, 7, 11336, 'tewt', '2022-11-13 16:26:14'),
(2113, 7, 11336, 'ett', '2022-11-13 16:26:14'),
(2114, 7, 11336, '535', '2022-11-13 16:26:46'),
(2115, 7, 11336, '5325', '2022-11-13 16:26:46'),
(2116, 1, 11337, '421', '2022-11-18 10:02:46'),
(2117, 7, 11337, '6326', '2022-11-18 10:02:55'),
(2118, 7, 11327, '222', '2022-11-18 10:14:57'),
(2119, 7, 11327, '532', '2022-11-18 10:16:29'),
(2120, 7, 11327, '5325', '2022-11-18 10:16:37'),
(2121, 1, 11327, '5215', '2022-11-18 10:16:43'),
(2122, 1, 11327, '52', '2022-11-18 10:17:01'),
(2123, 7, 11327, '632', '2022-11-18 10:17:05'),
(2124, 7, 11326, '523', '2022-11-18 10:18:31'),
(2125, 1, 11326, '7437', '2022-11-18 10:18:43'),
(2126, 1, 11325, '632', '2022-11-18 10:18:52'),
(2127, 7, 11325, '636', '2022-11-18 10:19:04'),
(2128, 1, 11326, '2', '2022-11-18 10:24:18'),
(2129, 1, 11335, '6', '2022-11-18 10:25:11'),
(2130, 7, 11332, '6', '2022-11-18 10:25:37'),
(2131, 1, 11332, '6', '2022-11-18 10:25:40'),
(2132, 1, 11332, '6', '2022-11-18 10:25:42'),
(2133, 1, 11332, '6', '2022-11-18 10:25:43'),
(2134, 7, 11332, '53', '2022-11-18 10:25:48'),
(2135, 1, 11330, '4', '2022-11-18 10:26:15'),
(2136, 1, 11330, '3', '2022-11-18 10:26:16'),
(2137, 7, 11330, '35', '2022-11-18 10:26:19'),
(2138, 7, 11330, '53', '2022-11-18 10:26:20'),
(2139, 1, 11330, '632', '2022-11-18 10:26:24'),
(2140, 1, 11320, '1', '2022-11-18 10:27:07'),
(2141, 1, 11320, '2', '2022-11-18 10:27:08'),
(2142, 7, 11320, '4', '2022-11-18 10:27:11'),
(2143, 7, 11320, '3', '2022-11-18 10:27:12'),
(2144, 1, 11319, '1', '2022-11-18 10:35:59'),
(2145, 7, 11319, '3', '2022-11-18 10:36:04'),
(2146, 1, 11332, '312', '2022-11-18 11:01:07'),
(2147, 7, 11332, '42', '2022-11-18 11:01:19'),
(2148, 7, 11332, '421', '2022-11-18 11:01:20'),
(2149, 7, 11335, '4', '2022-11-18 11:01:30'),
(2150, 7, 11320, '1', '2022-11-18 11:02:24'),
(2151, 1, 11320, '2', '2022-11-18 11:02:27'),
(2152, 1, 11309, '5', '2022-11-18 11:05:44'),
(2153, 1, 11317, '1', '2022-11-18 11:06:47'),
(2154, 7, 11316, '1', '2022-11-18 11:06:57'),
(2155, 1, 11337, '4214', '2022-11-20 07:57:21'),
(2156, 7, 11326, 'hehe', '2022-11-27 20:13:14'),
(2157, 7, 11326, 'hello', '2022-11-27 20:28:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id_2` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `friend`
--

INSERT INTO `friend` (`id`, `user_id`, `user_id_2`, `status`, `date`) VALUES
(105, 7, 1, 0, '2022-11-27 20:28:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `level`
--

INSERT INTO `level` (`id`, `name`) VALUES
(0, 'user'),
(1, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `n_like` int(11) NOT NULL DEFAULT 0,
  `n_comments` int(11) DEFAULT 0,
  `share` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `url`, `user_id`, `title`, `content`, `status`, `n_like`, `n_comments`, `share`, `date`) VALUES
(11304, 'a-b-c-d-r-haha-hihi-hehe', 1, 'a b c d r haha hihi hehe', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-c2dzYWdhc2dhIGUgayBrIGsgayDwn5iX8J-YgPCfmILwn5iNPC9wPlxuIiwiaWF0IjoxNjY3MzE0MjY1fQ.qMNWG7y91vy36OR_dNiyM3o7tgOBzieiRfXlNr4kkq0', 1, 2, 27, 2, '2022-10-28 10:47:15'),
(11305, '245-5-5-kkk', 1, '245 5 5 kkk', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-4bupYWFmPC9wPlxuIiwiaWF0IjoxNjY2OTU1ODQ3fQ.XWA5zD-i4mgxrG72srqcQFor6BnE4wAvZoObQb9d4bA', 1, 2, 8, 0, '2022-10-28 11:17:17'),
(11306, 'test-thu-nao', 1, 'test thử nào', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-Z8OhZ2dhc2dzYTwvcD5cbiIsImlhdCI6MTY2NzI5OTY3Nn0.8QSF2-z4R2RRjmHb6cAArUa8QBQLXOJJGHHxfuUD_bs', 1, 1, 10, 0, '2022-11-01 10:47:56'),
(11307, 'heh-beheha-asfgsagas', 1, 'heh beheha asfgsagas ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-Z3NhZ2FzPC9wPlxuIiwiaWF0IjoxNjY3MzAxMDc0fQ.FcW6X-LElmvAXGdriDhs1rhW3yRY55Li7Djp4EpXNmE', 1, 1, 17, 0, '2022-11-01 11:11:14'),
(11308, 'fsafsaffsaf-sa-sa-f-sa-sa', 1, 'fsafsaffsaf sấ sà f sà sà', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-ZnNhZnNhJm5ic3A7PC9wPlxuIiwiaWF0IjoxNjY3MzEyOTYwfQ.WvNyP4CFrolpNLjFFN3FkDk6nAvg7BkadA5olZlu4Bw', 1, 1, 6, 0, '2022-11-01 14:29:20'),
(11309, '4214b-21-2151-52', 1, '4214b 21 2151 52 ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NTIxNTEyNTwvcD5cbiIsImlhdCI6MTY2NzMxMzA5Nn0.bHyi_H5xQKEGg5z7QQt9aPmYakqHA72HKkbT8BJZaH4', 1, 0, 1, 0, '2022-11-01 14:31:36'),
(11310, 'a-b-c-d', 1, 'a b c d', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-ZiBmIGYmbmJzcDs8L3A-XG4iLCJpYXQiOjE2NjczMTMxMjV9.OCbEWp-LwyEzf1q6fdY6EZ3Nqc5cLk6GjohpmVlhPu4', 1, 0, 0, 0, '2022-11-01 14:32:05'),
(11311, 'a-b-v-d', 1, 'á b v d', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-Jm5ic3A7Jm5ic3A7NCA0IDQgNDwvcD5cbiIsImlhdCI6MTY2NzMxMzMyMn0.BGRKns5Q36n9iGw-W7ErGavFVFxElVd8pp2P4iZ5vKM', 1, 0, 0, 0, '2022-11-01 14:35:22'),
(11312, 'a1-2-3-4-5-6', 1, 'a1 2 3 4 5 6 ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NCAxMiAxIDQyMSAxPC9wPlxuIiwiaWF0IjoxNjY3MzEzMzU3fQ.9ddOGVziGyhidT4FiDERySZ__sE8pnhwRXpEqcRJZHA', 1, 0, 0, 0, '2022-11-01 14:35:57'),
(11313, '1', 1, '1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNDEzfQ.u6XBCkT4xQ_Dr3blPhpMQURDQtxejrGBCBvd-BbZ-ig', 1, 0, 1, 0, '2022-11-01 14:36:53'),
(11314, '2', 1, '2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNDcyfQ.xAsl_i4-QJgneLbNB005u9LkyiovpmSXVq9-QBvr1NY', 1, 0, 0, 0, '2022-11-01 14:37:52'),
(11315, '5555', 1, '5555', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNTY3fQ.aOm4e2RjWFS59TRCPhKiEFFTTNYFz97BHJAm0CaafLw', 1, 0, 0, 0, '2022-11-01 14:39:27'),
(11316, '1', 1, '1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNzA2fQ.SNXslys75SnaV728NJ5bBjQj4A0aYGPL7I6eZ3FOWV0', 1, 0, 1, 0, '2022-11-01 14:41:46'),
(11317, '2', 1, '2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNzEwfQ.v1MJJEaA2EI3cLfpCEPe5dc3b4DGtmhLzpMpYFLKGco', 1, 0, 1, 0, '2022-11-01 14:41:50'),
(11318, '6', 1, '6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNzYyfQ.7FOYa8rFYAC5LziD9DBa8p6N3aXEhKubeHoI4G7bs_I', 1, 0, 0, 0, '2022-11-01 14:42:42'),
(11319, '7', 1, '7', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNzY2fQ.DNpPAQM6YicZH-kpLhs4Mywr9jLen3N8OSI_gogyZyM', 1, 1, 2, 0, '2022-11-01 14:42:46'),
(11320, '8', 1, '8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzNzc3fQ.2KQeLlwXKbB5P9MygdekW0x5ci1pSfyTHrN5Ph_Psqs', 1, 1, 6, 0, '2022-11-01 14:42:57'),
(11321, 'hehe-haha', 1, 'hehe haha', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzEzODEwfQ.cMXFE8u5vV91cdP1p6gFC3Qd9T96L4fa-DH-E_ZlcKM', 1, 1, 7, 0, '2022-11-01 14:43:30'),
(11322, 'hihi', 1, 'hihi', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PC9wPlxuIiwiaWF0IjoxNjY3MzE0MDA2fQ.ZpNuUFp3FKFlMhQqUOSAWQ2ilLUGGUssjzifbwCghkE', 1, 0, 3, 0, '2022-11-01 14:46:46'),
(11323, '4214', 1, '4214', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDIxNDIxNDIxNDEyNDwvcD5cbiIsImlhdCI6MTY2NzMxNDA5Mn0.hTIdWZAFneiDG-gglNcBCrr_gwHxqZ1LenM8sjTamqI', 1, 1, 22, 0, '2022-11-01 14:48:12'),
(11324, 'twqt-wtq-twq-ut-wqt-wqt-qt', 1, 'twqt wtq twq ưt wqt wqt qt', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-dMawcXR3cXR3PC9wPlxuIiwiaWF0IjoxNjY3NDc2MDkyfQ.Mt4wXQqe-zY6Vos7Xqic8TmXaGmUMi73B-ypaGI5bXk', 1, 1, 1, 0, '2022-11-03 11:48:12'),
(11325, 'hsfhafhs-fsahfhs-gahgh', 1, 'hsfhafhs fsahfhs gáhgh', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-8J-YjfCfmJcgZ3NhZyBnYWdzYWcgZ3NhZ2FzIGfDoWdzYWc8YnI-ZnNhZmFzZyBzZ2FzZyBzZyBhc2cmbmJzcDs8L3A-XG4iLCJpYXQiOjE2Njc0ODE1NTN9.A6CIavfjzjR6O6Efe2cdhSs4aMbMTxxsz9ddEUaZ8LU', 1, 2, 11, 0, '2022-11-03 13:19:13'),
(11326, 'huong-dan-dang-bai-viet', 1, 'hướng dẫn đăng bài viết', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-WcOqdSBj4bqndTo8YnI-PC9wPlxuPG9sPlxuPGxpPsSQw6Mga8OtY2ggaG_huqF0IHTDoGkga2hv4bqjbiDinIU8L2xpPlxuPGxpPk5o4bqtcCDEkeG6p3kgxJHhu6cgdGjDtG5nIHRpbiBiYW8gZ-G7k20gKHRpw6p1IMSR4buBLCBu4buZaSBkdW5nLCB0cuG6oW5nIHRow6FpIGNoaWEgc-G6uyk8L2xpPlxuPC9vbD5cbjxwPlNhdSBraGkgbmjhuq1wIMSR4bqneSDEkeG7pyB0aMO0bmcgdGluIHRp4bq_biBow6BuaCBuaOG6pW4gbsO6dCDEkcSDbmcgYsOgaTwvcD5cbiIsImlhdCI6MTY2OTU3OTgxNX0.j0-l2fMbDdX3waOWf4UEgdwwX9dyQ216GIRIeTwfTBo', 0, 2, 7, 0, '2022-11-03 14:20:29'),
(11327, 'rqr-heheh', 1, 'rqr  heheh', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-cnE8L3A-XG4iLCJpYXQiOjE2NjgxNDg1ODJ9.D18nSdC24QkEDWWE3el3jzfXTKgi-5I3aCjly_XsagI', 1, 3, 83, 0, '2022-11-03 19:19:09'),
(11328, 'a-gasg-gag-gagasg', 1, 'à gasg gag gágasg', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHVsPlxuPGxpPjxlbT5nYWc8YnI-MTxicj4yNTU8YnI-MjUzMjU8L2VtPjwvbGk-XG48bGk-PGVtPnJ3cnc8L2VtPjwvbGk-XG48bGk-PGVtPnR1dHd0PC9lbT48L2xpPlxuPGxpPjxzdHJvbmc-PGVtPnR1dHd0dzwvZW0-PC9zdHJvbmc-PC9saT5cbjwvdWw-XG4iLCJpYXQiOjE2NjgxNTE0NzB9.ELix8Bw9GZQB5AvPLMe-iHm42qnnjiR8kPhnMQ83QIY', 1, 0, 0, 1, '2022-11-11 07:24:30'),
(11329, 'hehehe-hahahahaha-hihihi-666-666', 1, 'hehehe hahahahaha hihihi 666 666', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-dHdxdHF3dCB0cXd0d3F0PC9wPlxuIiwiaWF0IjoxNjY4MjUxNjgwfQ.flhO2r7fEwxw-OjB-p1F-QKNZwm-P8JccTYGzlQJ8fY', 0, 1, 2, 1, '2022-11-11 07:25:41'),
(11330, 'hehehahfafsa', 7, 'hehehahfafsa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-cuG7rWEgw6Ag4bqlIGZzIMOhJm5ic3A7PC9wPlxuIiwiaWF0IjoxNjY4MjU3NTYzfQ.HqN1dEwfqi_4rAUZhAkPY8GTWBMH-XHaweQFWdvs6yA', 1, 0, 5, 0, '2022-11-12 12:52:43'),
(11331, 'heheh-hahah-hfhafhsaf', 1, 'heheh hahah hfhafhsaf', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-csawcXJ34butIHHhu60gd3FyIHdxciBxd3FyPC9wPlxuIiwiaWF0IjoxNjY4MjY2Nzg2fQ.ISwt4WQ7VkGbL0NOa13R37W65r3BvZ-cXwD1rIIfTGQ', 1, 1, 0, 1, '2022-11-12 15:26:26'),
(11332, '24214214214-21421412', 1, '24214214214 21421412', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDIxNDIxIDIxNCAyMTQxMjQ8L3A-XG4iLCJpYXQiOjE2NjgyNjY4MzZ9.m_5pYbpJ_o4mwhsjxK1sLJikMP0hNBGH_gFC09e4bBQ', 1, 0, 8, 0, '2022-11-12 15:27:16'),
(11333, '421421-2141-fsafas', 1, '421421 2141 fsafas ', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-MjE0MjQyNDEyNCAyMTQyMSA0MjEgNDEgMjE8L3A-XG4iLCJpYXQiOjE2NjgyNjY5MDF9.tW79nbN-sQXm6l3UbAOTWEENO6QbwmMj9yyaozLNtPQ', 1, 0, 0, 1, '2022-11-12 15:28:21'),
(11334, '4214214124142', 1, '4214214124142', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDI0MjQyMTQyMTI0IDIxNCAyNCAxMjQyIDE0MTQ8L3A-XG4iLCJpYXQiOjE2NjgyNjcwMjl9.uQCAhCPnZmuBecVTSNIDcAUi2liEQ601rFn5FdMxjIM', 1, 0, 0, 1, '2022-11-12 15:30:29'),
(11335, '5125-12515-215-21', 1, '5125 12515 215 21', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NTIxNTIxNSAyMTUyMSA1MiA1MTI1MjE1MjE1PC9wPlxuIiwiaWF0IjoxNjY4MjY3MDkwfQ.57JEdPByZD2NVCO0b9yAAZy9ewFhmA4KMgGbkpD8Jvs', 1, 1, 2, 0, '2022-11-12 15:31:30'),
(11336, '421421421-2142-1', 1, '421421421 2142 1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDIxNDE0MjE0MjEgMjE0MjE0MjE8L3A-XG4iLCJpYXQiOjE2NjgyNjcxMzN9.opT3xNP9Hw5rtyUOCCXw3LS9GWa4C84Zw1RXiDVJkdQ', 1, 1, 18, 1, '2022-11-12 15:32:13'),
(11337, '4214124-21421-4214-124-21', 1, '4214124 21421 4214 124 21', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDIxNDIxNDIxNDEyIDQyMTQgMjEgMTQxMjQxMiA0MjE8L3A-XG4iLCJpYXQiOjE2NjgyNjczMzd9.t45wkNhmJ5SkF1EMIw9nXzohZ1DyUjgY_VQFMyvyKZQ', 1, 1, 5, 0, '2022-11-12 15:35:37'),
(11338, 'sfaf', 1, 'sfaf', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-csawcXJ34butcXJ3cjwvcD5cbiIsImlhdCI6MTY2ODQzODA2MH0.-FRdK9N8zYxELHwvxoNnoXs_78dhfn_-rr49qOMvZe8', 1, 0, 0, 1, '2022-11-14 15:01:00'),
(11339, 'rewrew', 1, 'rewrew', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-dGV3dGV3dHdldGUgZXd0ZXd0ZXd0IHdldGV3dGV3dHdlIHdldGV3dHdldCB3ZXR0d3QgdMOqdHRlZTwvcD5cbiIsImlhdCI6MTY2ODQzODMxNH0.vonn93yzRRgsHNHal0U8pC5sP89gDzE0ceW8dKQM34U', 1, 0, 0, 2, '2022-11-14 15:05:14'),
(11340, '4214', 7, '4214', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDEyMTI8L3A-XG4iLCJpYXQiOjE2Njg5MzE0MTd9.JRD4VArKWc6X7TvmdBRAv52jqX683w3pNHCOcet-GGY', 1, 0, 0, 0, '2022-11-20 08:03:37'),
(11341, '4214', 7, '4214', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-NDIxNDEyNDwvcD5cbiIsImlhdCI6MTY2ODkzMTkyN30.gGY6xvTCu6aDgNdOcVqijL0o-Ekk6zcn18gF4SAGWUE', 1, 1, 0, 0, '2022-11-20 08:12:07'),
(11342, 'ruru-ruqr', 1, 'rưrư rưqr', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-PGlucz5xcnJxcjwvaW5zPjwvcD5cbjxwPjwvcD5cbiIsImlhdCI6MTY2OTQyNzMyMn0.abmbUJINmXUXGaj3q0k1gC-dsb7B3RDUT8O_ZkXlPCU', 0, 0, 0, 1, '2022-11-26 01:48:42'),
(11343, 'test-bai-dang', 1, 'test bài đăng', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-aGVoZTwvcD5cbiIsImlhdCI6MTY2OTU4MDE0M30.vVrjrRCJJ4wNSgvhTfzbPbSCNAiAZY6RTRz3aDtBAec', 1, 0, 0, 0, '2022-11-27 20:15:43'),
(11344, 'test-dang-bai-viet', 7, 'test đăng bài viết', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-MjE0MTU8L3A-XG4iLCJpYXQiOjE2Njk1ODAyNjZ9.Xl3Rodn2MIhJkcT41pdSDDDdsHBNDxFJGDp8yaiq5Vk', 1, 0, 0, 0, '2022-11-27 20:17:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts_save`
--

CREATE TABLE `posts_save` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts_save`
--

INSERT INTO `posts_save` (`id`, `user_id`, `title`, `content`, `date`) VALUES
(3, 1, 'Thêm tiêu đề api qua fontend', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250ZW50IjoiPHA-Z3NhZyBzYWdzYSBnc2Egc2FnIHNhZ3NhIHNhZ2EgZ2FnJm5ic3A7PC9wPlxuIiwiaWF0IjoxNjY3NDc1NTU1fQ.VmCIJ-3Vb1j4cG6JtC0AWJAduy92WLVDGzBTdG8Da9U', '2022-11-03 11:39:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_like`
--

CREATE TABLE `post_like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post_like`
--

INSERT INTO `post_like` (`id`, `user_id`, `post_id`, `time`) VALUES
(810, 7, 11304, '2022-10-29 12:38:21'),
(811, 7, 11305, '2022-10-31 13:32:51'),
(813, 1, 11304, '2022-10-31 17:02:00'),
(814, 1, 11305, '2022-10-31 17:24:09'),
(818, 7, 11306, '2022-11-06 05:45:12'),
(819, 7, 11307, '2022-11-06 05:45:14'),
(820, 7, 11308, '2022-11-06 05:45:25'),
(823, 8, 11325, '2022-11-06 20:06:46'),
(840, 7, 11319, '2022-11-07 17:56:46'),
(845, 7, 11320, '2022-11-07 17:58:10'),
(846, 7, 11321, '2022-11-07 17:58:10'),
(859, 8, 11326, '2022-11-07 18:01:25'),
(1088, 8, 11327, '2022-11-07 19:55:05'),
(1094, 1, 11323, '2022-11-11 06:39:26'),
(1095, 1, 11324, '2022-11-11 06:39:28'),
(1096, 1, 11325, '2022-11-11 06:39:31'),
(1097, 1, 11326, '2022-11-11 06:39:34'),
(1098, 1, 11327, '2022-11-11 06:39:35'),
(1099, 7, 11329, '2022-11-11 07:26:31'),
(1100, 7, 11331, '2022-11-12 18:01:16'),
(1102, 7, 11337, '2022-11-13 16:20:39'),
(1103, 7, 11336, '2022-11-13 16:24:34'),
(1104, 7, 11335, '2022-11-18 09:59:06'),
(1105, 1, 11341, '2022-11-20 12:39:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `private`
--

CREATE TABLE `private` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `posts` tinyint(1) NOT NULL DEFAULT 1,
  `email` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `private`
--

INSERT INTO `private` (`id`, `user_id`, `posts`, `email`, `date`) VALUES
(1, 1, 0, 0, '2022-11-12 15:45:35'),
(2, 5, 1, 0, '2022-11-12 15:45:43'),
(3, 7, 0, 0, '2022-11-12 15:45:49'),
(4, 8, 1, 0, '2022-11-12 15:45:54'),
(5, 10, 1, 0, '2022-11-12 16:08:23'),
(6, 11, 1, 0, '2022-11-14 12:51:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reply_comment`
--

CREATE TABLE `reply_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reply_comment`
--

INSERT INTO `reply_comment` (`id`, `user_id`, `comment_id`, `content`, `date`) VALUES
(1474, 1, 1906, 'ủa là sao', '2022-11-01 08:52:11'),
(1475, 1, 1906, '????', '2022-11-01 08:52:15'),
(1476, 1, 1908, '251521', '2022-11-01 08:53:52'),
(1477, 1, 1908, '521521', '2022-11-01 08:53:53'),
(1478, 1, 1908, '52151', '2022-11-01 08:53:54'),
(1479, 7, 1927, '????', '2022-11-01 13:42:51'),
(1480, 1, 1928, '5325', '2022-11-01 14:22:57'),
(1481, 1, 1928, '5325', '2022-11-01 14:24:22'),
(1482, 1, 1932, '6326', '2022-11-01 14:25:10'),
(1483, 1, 1937, '5325235', '2022-11-01 14:26:40'),
(1484, 1, 1939, '5215', '2022-11-01 14:28:21'),
(1485, 1, 1939, '53532', '2022-11-01 14:28:23'),
(1486, 1, 1939, '5325', '2022-11-01 14:28:28'),
(1487, 1, 1939, '532532535', '2022-11-01 14:28:30'),
(1488, 1, 1939, '535325', '2022-11-01 14:28:31'),
(1489, 1, 1939, '1', '2022-11-01 14:28:35'),
(1490, 1, 1939, '2', '2022-11-01 14:28:37'),
(1491, 1, 1939, '3', '2022-11-01 14:28:38'),
(1492, 1, 1939, '4', '2022-11-01 14:28:39'),
(1493, 1, 1939, '4214', '2022-11-01 14:28:50'),
(1494, 1, 1939, '4214', '2022-11-01 14:28:51'),
(1495, 7, 1939, '421421', '2022-11-01 14:28:54'),
(1496, 7, 1939, '4214214', '2022-11-01 14:28:56'),
(1497, 7, 1939, '421421', '2022-11-01 14:28:57'),
(1498, 7, 1939, '421412', '2022-11-01 14:28:58'),
(1499, 1, 1957, '5325', '2022-11-01 14:48:24'),
(1500, 1, 1957, '532532', '2022-11-01 14:48:28'),
(1501, 7, 1962, 'gdsgsdg', '2022-11-02 09:21:28'),
(1502, 7, 1962, 'etw', '2022-11-02 09:21:31'),
(1503, 7, 1962, 'ưettew', '2022-11-02 09:21:32'),
(1504, 7, 1962, 'tewtewtewte', '2022-11-02 09:21:33'),
(1505, 7, 1974, '512535', '2022-11-02 09:38:09'),
(1506, 7, 1974, 'tủu', '2022-11-02 09:38:23'),
(1507, 1, 1974, '6326', '2022-11-02 09:41:09'),
(1508, 1, 1974, '6326', '2022-11-02 09:41:20'),
(1509, 1, 1974, '9', '2022-11-02 09:41:23'),
(1510, 1, 2002, 'rq', '2022-11-03 19:18:35'),
(1511, 1, 2002, 'rqr', '2022-11-03 19:18:39'),
(1512, 1, 2006, '326326', '2022-11-05 14:47:17'),
(1513, 1, 2006, '5215', '2022-11-05 14:47:51'),
(1514, 1, 2010, '6216', '2022-11-05 15:36:05'),
(1515, 1, 2010, '6216', '2022-11-05 15:36:07'),
(1516, 1, 2011, '5215', '2022-11-05 15:41:08'),
(1517, 1, 2011, '55215', '2022-11-05 15:41:09'),
(1518, 7, 2012, '5215', '2022-11-05 15:41:15'),
(1519, 7, 2012, '6126', '2022-11-05 15:41:16'),
(1520, 7, 2012, '6126', '2022-11-05 15:41:20'),
(1521, 1, 2012, '5125', '2022-11-05 15:41:24'),
(1522, 7, 2012, '5215', '2022-11-05 15:41:31'),
(1523, 7, 2012, '5215', '2022-11-05 15:41:35'),
(1524, 7, 2010, '5215', '2022-11-05 15:41:41'),
(1525, 7, 2013, '626', '2022-11-05 15:48:16'),
(1526, 7, 2013, '6216', '2022-11-05 15:48:17'),
(1527, 7, 2015, '5215', '2022-11-05 15:50:52'),
(1528, 7, 2015, '5215', '2022-11-05 15:50:53'),
(1529, 7, 2014, '4214', '2022-11-05 15:50:57'),
(1530, 7, 2014, '5215', '2022-11-05 15:50:58'),
(1531, 7, 2007, '2515', '2022-11-07 07:47:45'),
(1532, 7, 2028, '42141', '2022-11-07 10:10:51'),
(1533, 7, 2028, '521512', '2022-11-07 10:11:37'),
(1534, 7, 1911, '421412', '2022-11-07 10:13:07'),
(1535, 7, 1914, '63262', '2022-11-07 10:15:13'),
(1536, 7, 1913, '5215', '2022-11-07 10:16:28'),
(1537, 7, 1913, 'ok nha', '2022-11-07 10:17:19'),
(1538, 7, 1911, 'rưqr', '2022-11-07 10:18:29'),
(1539, 7, 2013, '5125', '2022-11-07 12:11:09'),
(1540, 7, 2013, '5215', '2022-11-07 12:11:10'),
(1541, 7, 2013, '5215', '2022-11-07 12:11:19'),
(1542, 7, 2005, '6326', '2022-11-07 12:34:00'),
(1543, 7, 2006, '6326', '2022-11-07 12:50:45'),
(1544, 7, 2006, '632623', '2022-11-07 12:50:45'),
(1545, 7, 2010, '535', '2022-11-07 12:52:39'),
(1546, 7, 2010, '5325', '2022-11-07 12:52:40'),
(1547, 1, 2090, 'yey', '2022-11-07 19:59:20'),
(1548, 8, 2089, 'yewy', '2022-11-07 19:59:37'),
(1549, 7, 2088, 'y', '2022-11-07 19:59:48'),
(1550, 8, 2085, 'yey', '2022-11-07 20:00:04'),
(1551, 8, 2089, '6326236', '2022-11-07 20:01:13'),
(1552, 8, 2089, '36326r', '2022-11-07 20:01:34'),
(1553, 7, 2095, '52515', '2022-11-11 07:26:49'),
(1554, 1, 2117, '6326', '2022-11-18 10:02:59'),
(1555, 7, 2117, '6326', '2022-11-18 10:03:07'),
(1556, 1, 2006, '4214', '2022-11-18 10:16:23'),
(1557, 1, 2119, '5325', '2022-11-18 10:16:33'),
(1558, 1, 2120, '5215', '2022-11-18 10:16:41'),
(1559, 1, 2120, '5215', '2022-11-18 10:16:45'),
(1560, 7, 2121, '5215', '2022-11-18 10:16:53'),
(1561, 7, 2121, '5215', '2022-11-18 10:16:54'),
(1562, 7, 2121, '25152', '2022-11-18 10:16:54'),
(1563, 7, 2121, '5215', '2022-11-18 10:16:55'),
(1564, 7, 2016, '5325', '2022-11-18 10:17:12'),
(1565, 7, 2016, '52353', '2022-11-18 10:17:13'),
(1566, 1, 2016, '352', '2022-11-18 10:17:34'),
(1567, 7, 2016, '53', '2022-11-18 10:17:39'),
(1568, 1, 2017, '5325', '2022-11-18 10:17:44'),
(1569, 7, 2036, '5325', '2022-11-18 10:17:53'),
(1570, 1, 2126, '6326', '2022-11-18 10:18:54'),
(1571, 1, 1999, '636', '2022-11-18 10:18:56'),
(1572, 1, 2135, '6326', '2022-11-18 10:26:27'),
(1573, 1, 2135, '632', '2022-11-18 10:26:28'),
(1574, 7, 2141, '424', '2022-11-18 10:27:14'),
(1575, 7, 2141, '42', '2022-11-18 10:27:17'),
(1576, 1, 2145, '421', '2022-11-18 10:36:08'),
(1577, 1, 2145, '2414', '2022-11-18 10:36:09'),
(1578, 7, 2145, '532', '2022-11-18 10:36:14'),
(1579, 1, 2148, '24', '2022-11-18 11:01:24'),
(1580, 1, 2155, '421', '2022-11-20 07:57:26'),
(1581, 1, 2155, '421', '2022-11-20 07:57:58'),
(1582, 7, 2128, 'xin chào', '2022-11-27 20:28:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `token`
--

INSERT INTO `token` (`id`, `user_id`, `value`, `ip`) VALUES
(214, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjpmYWxzZSwibGV2ZWwiOmZhbHNlfSwiaWF0IjoxNjY4ODY5NzU2Mzc4fQ.kht9WA4xoIBcgBbdSZ1D0IxHcwtQQOl1_FkTHF5iXaw', '127.0.0.1'),
(227, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjpmYWxzZSwibGV2ZWwiOmZhbHNlfSwiaWF0IjoxNjY4ODcxNzI3NzIzfQ.FzclxGIfJytENymCeqtFT63dKHwnnHLls5tCxEAmieE', '127.0.0.1'),
(231, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjpmYWxzZSwibGV2ZWwiOmZhbHNlfSwiaWF0IjoxNjY4ODc0NjE1MjUyfQ.LrOpERldMp0fwK4BbJ3dU4qYLAQw-GV3pweMbfHF9jM', '127.0.0.1'),
(234, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjp0cnVlLCJsZXZlbCI6ZmFsc2V9LCJpYXQiOjE2Njg5MjU4MjUyMDR9.Qtr3olvQc1blxGDpvtopypZBg6fsbwSUaex7U1Jc-cg', '127.0.0.1'),
(237, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjEsIm5hbWUiOiJRdeG6o24gVHLhu4sgVmnDqm4iLCJpbWFnZSI6Imh0dHBzOi8vdmlzbWUuY28vYmxvZy93cC1jb250ZW50L3VwbG9hZHMvMjAxNy8wNy81MC1CZWF1dGlmdWwtYW5kLU1pbmltYWxpc3QtUHJlc2VudGF0aW9uLUJhY2tncm91bmRzLTA1LmpwZyIsInN0YXR1cyI6dHJ1ZSwibGV2ZWwiOnRydWV9LCJpYXQiOjE2Njg5Mjg3NzE0MTN9.0-AGQ807xX2JYAeJ4KEM6NmpWmwlYP2ITXZfQr2fxpo', '127.0.0.1'),
(238, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjp0cnVlLCJsZXZlbCI6ZmFsc2V9LCJpYXQiOjE2Njg5MzEzMTg2ODN9.vvK9I8r866CwQqjqRPr12tg1KCrOsGJ8GM8Q0c3Qdhs', '127.0.0.1'),
(239, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjEsIm5hbWUiOiJRdeG6o24gVHLhu4sgVmnDqm4iLCJpbWFnZSI6Imh0dHBzOi8vdmlzbWUuY28vYmxvZy93cC1jb250ZW50L3VwbG9hZHMvMjAxNy8wNy81MC1CZWF1dGlmdWwtYW5kLU1pbmltYWxpc3QtUHJlc2VudGF0aW9uLUJhY2tncm91bmRzLTA1LmpwZyIsInN0YXR1cyI6dHJ1ZSwibGV2ZWwiOnRydWV9LCJpYXQiOjE2Njk0MjYyNTA0NjZ9.wh8kCKnGSmQ2aEF4YrnmZLry-CBmAWxl-kUGjXoFBkg', '127.0.0.1'),
(240, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjp0cnVlLCJsZXZlbCI6ZmFsc2V9LCJpYXQiOjE2Njk0MjYyNjE1ODJ9.iGucYgVsX6HLe_E1u_l8jrUirAspztlobVfNQOQ0eEQ', '127.0.0.1'),
(241, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjp0cnVlLCJsZXZlbCI6ZmFsc2V9LCJpYXQiOjE2Njk1Nzg3NTk0ODh9.Y5g1M_pYVDMgmdXuR9vx2AqbHZquT95tbKTS5RzwNGE', '127.0.0.1'),
(242, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjpmYWxzZSwibGV2ZWwiOmZhbHNlfSwiaWF0IjoxNjY5NTgwNDc0MDg1fQ.W07AI7z7bWAQzwe1EpvF9q7KQJjfi32_jVFAQVN8vSI', '127.0.0.1'),
(243, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjcsIm5hbWUiOiJI4bqtdSIsImltYWdlIjoiaHR0cHM6Ly9lbmNyeXB0ZWQtdGJuMC5nc3RhdGljLmNvbS9pbWFnZXM_cT10Ym46QU5kOUdjU2dUZ0sxRVlod2l0RTNDQ0NkYksxYk53Rkl1LXZvMkI1ZG5BJnVzcXA9Q0FVIiwic3RhdHVzIjp0cnVlLCJsZXZlbCI6ZmFsc2V9LCJpYXQiOjE2Njk1ODIxNzU3Nzl9.PqMvupwNJ6-Oc2rle4JMygeNzhVehsx4SXKOypNBycg', '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token_delete_history`
--

CREATE TABLE `token_delete_history` (
  `id` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `token_delete_history`
--

INSERT INTO `token_delete_history` (`id`, `sum`, `time`) VALUES
(29, 2, '2022-09-25 01:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token_edit_email`
--

CREATE TABLE `token_edit_email` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token_email`
--

CREATE TABLE `token_email` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `token_email`
--

INSERT INTO `token_email` (`id`, `value`, `date`) VALUES
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZF9hY2NvdW50IjoxLCJpYXQiOjE2NjgzMjc0MDYwMDl9.e7xRxkxGCzr01UwQiRfZJR7uvEeJ65p7SwBa-E-HyQ4', '2022-11-13 08:16:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`id`, `name`, `date`) VALUES
(0, 'Thông Báo', '2022-11-14 14:15:48'),
(1, 'Lập Trình', '2022-11-14 14:16:04'),
(2, 'Chia Sẻ', '2022-11-14 14:16:19'),
(3, 'Hỏi Đáp', '2022-11-14 14:16:28'),
(4, 'Khác', '2022-11-14 14:16:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id_2`);

--
-- Chỉ mục cho bảng `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `posts_save`
--
ALTER TABLE `posts_save`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `private`
--
ALTER TABLE `private`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `reply_comment`
--
ALTER TABLE `reply_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `token_delete_history`
--
ALTER TABLE `token_delete_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `token_edit_email`
--
ALTER TABLE `token_edit_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `token_email`
--
ALTER TABLE `token_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `ban`
--
ALTER TABLE `ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2158;

--
-- AUTO_INCREMENT cho bảng `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11345;

--
-- AUTO_INCREMENT cho bảng `posts_save`
--
ALTER TABLE `posts_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `post_like`
--
ALTER TABLE `post_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1106;

--
-- AUTO_INCREMENT cho bảng `private`
--
ALTER TABLE `private`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `reply_comment`
--
ALTER TABLE `reply_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1583;

--
-- AUTO_INCREMENT cho bảng `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `token_delete_history`
--
ALTER TABLE `token_delete_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `token_edit_email`
--
ALTER TABLE `token_edit_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `token_email`
--
ALTER TABLE `token_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level` (`id`);

--
-- Các ràng buộc cho bảng `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `ban_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`user_id_2`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `posts_save`
--
ALTER TABLE `posts_save`
  ADD CONSTRAINT `posts_save_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `post_like`
--
ALTER TABLE `post_like`
  ADD CONSTRAINT `post_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `post_like_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `private`
--
ALTER TABLE `private`
  ADD CONSTRAINT `private_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `reply_comment`
--
ALTER TABLE `reply_comment`
  ADD CONSTRAINT `reply_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `reply_comment_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

--
-- Các ràng buộc cho bảng `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `token_edit_email`
--
ALTER TABLE `token_edit_email`
  ADD CONSTRAINT `token_edit_email_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
