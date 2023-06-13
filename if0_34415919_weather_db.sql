-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.byetcluster.com
-- Generation Time: Jun 13, 2023 at 09:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_34415919_weather_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(36, 'rizkyw', '$2y$10$d5S91Tae.qwU7T2mO9GPKuKMAO9Q/FhSj0MfY2m8ZIK3652axXXw.'),
(37, 'rizkyw', '$2y$10$dIIzrt.SBa/oZZaRMk45eevaZfXw0tmqtiTqfAl8dCNtINX87PuNm'),
(39, 'kiwael', '$2y$10$07/6jJG5RK5hps2P6L3X/.v.Fpgre8lqkGBOBJps9M671/tJD1QfW'),
(40, 'rizkyw', '$2y$10$gEiACc3XECodRmEfd/K22egWC42SAMmaFY.QDsQbC1LSOekMPoYTG'),
(41, 'andika', '$2y$10$dq4k.PKXjEq78RSsmOU8eOSP/RwC8YpAg.iOFaxgPGXGC1DJ6L7te'),
(42, 'admin', '$2y$10$Nsosrz/4F5jIER0o/Pmc5.WucHvBcrVU4DKGOn/l/uSor4S.FL0k6'),
(43, 'Andika', '$2y$10$pj70/Hap7vHWYZHtRG23tOeKQ3gBpCXHiJGguND7qWDfpYt6qDsqm'),
(44, 'Andi', '$2y$10$1RBXyY9a4FG3ZGHYw.V.PubkDZU2Lbq78FXf4eGzYjA6Czta65ziO'),
(45, 'cacaa', '$2y$10$CLEyAo15LJQagZH01GuqYOEh2Gpnz4esgA68rujiHe7C.APWlhAWa'),
(46, 'Andi', '$2y$10$HGXYelwMbJSZv1CCP/X8guqgMGV6NcRHOofN0TUfg4VJuvH5foYKu'),
(47, 'zakiah', '$2y$10$rm4SrX4HjpWiJ8bDKmmU9uTl893i34tnrNK/qEU9oHDcvzsgZKXR.'),
(48, 'admin', '$2y$10$cle5NfzlWs5EkVXOTSb0geKh/R9z2krjJq1UHKZVt6/h4qKLvkcea'),
(49, 'Andi', '$2y$10$gGl/0M7AB76JzNog1BUxuehEP5hCtMcK1dSddoYw5Raw.sUQcATDu'),
(50, 'rizky_w', '$2y$10$NcnOOZaSmdxp3UWM4P.aFeDJ0OIRS.hvvGuzNqFXSvu94amw3gw1C'),
(51, 'Admin', '$2y$10$knRgiIeKTumS.bTsHi0/8OSdnzdRq6Rse0/PNjx3ILuR51JBFRh5G'),
(52, 'kuncoro', '$2y$10$JKJ3zHWMCajnWJRUkwrROe3wOXZZGaCpw/KbQKP5muFyvkzuA.LFq');

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `temperature` double NOT NULL,
  `humidity` int(255) NOT NULL,
  `pressure` int(255) NOT NULL,
  `wind_speed` double NOT NULL,
  `wind_direction` int(255) NOT NULL,
  `sunrise` time NOT NULL,
  `sunset` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`id`, `city`, `description`, `temperature`, `humidity`, `pressure`, `wind_speed`, `wind_direction`, `sunrise`, `sunset`) VALUES
(1, 'Bitung', 'cloudy', 23.47, 86, 1010, 4.64, 209, '05:33:16', '05:45:35'),
(2, 'Gorontalo', 'sunny cloudy', 23.2, 87, 1010, 0.85, 39, '05:42:30', '05:52:40'),
(3, 'Makkasar', 'cloudy', 24.3, 88, 1010, 0.51, 0, '06:06:10', '05:56:05'),
(4, 'Palu', 'cloudy', 24.14, 95, 1012, 1.12, 134, '05:57:25', '06:02:30'),
(5, 'Tondano', 'cloudy', 21.5, 93, 1011, 1.16, 198, '05:34:20', '05:45:35'),
(6, 'Malang', 'sunny cloudy', 29, 62, 1012, 0.83, 236, '05:40:46', '05:19:20'),
(7, 'Surabaya', 'sunny cloudy', 31.97, 58, 1011, 4.12, 90, '05:38:10', '05:20:47'),
(8, 'Jakarta', 'sunny', 33.19, 56, 1009, 3.09, 40, '06:00:12', '05:46:58'),
(9, 'Bandung', 'sunny', 31.17, 64, 1011, 1.58, 37, '05:38:32', '05:41:27'),
(10, 'Yogyakarta', 'sunny', 29.55, 66, 1011, 2.04, 161, '05:28:30', '05:29:04'),
(11, 'Semarang', 'cloudy', 30.96, 66, 1010, 5.14, 80, '05:47:15', '05:30:41'),
(12, 'Denpasar', 'cloudy', 28.73, 70, 1012, 8.23, 100, '06:31:20', '06:08:05'),
(13, 'Sorong', 'sunny cloudy', 28.97, 74, 1008, 3.4, 221, '06:13:07', '06:17:46'),
(14, 'Banjarmasin', 'cloudy', 32.08, 55, 1009, 1.49, 128, '06:25:13', '06:20:54'),
(15, 'Medan', 'sunny', 31.68, 62, 1009, 2.68, 130, '06:16:40', '06:35:25'),
(16, 'Padang', 'cloudy', 31.03, 70, 1010, 2.4, 258, '06:16:37', '06:20:43'),
(17, 'Palembang', 'sunny cloudy', 30.05, 79, 1010, 3.09, 160, '06:03:33', '05:59:20'),
(18, 'Banda Aceh', 'mostly sunny', 31.42, 59, 1009, 6.33, 220, '06:26:30', '06:52:37'),
(19, 'Balikpapan', 'mostly sunny', 29.97, 74, 1009, 1.54, 190, '06:11:32', '06:14:35'),
(20, 'Bandar Lampung', 'sunny cloudy', 29.38, 72, 1010, 2.54, 74, '06:05:35', '05:53:27'),
(21, 'Jambi', 'cloudy', 31.73, 59, 1009, 2.16, 161, '06:04:12', '06:06:35'),
(22, 'Pontianak', 'mostly sunny', 33.12, 49, 1008, 209, 1, '05:38:25', '05:45:13'),
(23, 'Palangakaraya', 'mostly sunny', 33.12, 52, 1008, 1.71, 111, '05:25:37', '05:24:30'),
(24, 'Kendari', 'cloudy', 24.62, 0, 1010, 0.78, 205, '05:53:20', '05:47:38'),
(25, 'Jayapura', 'cloudy', 27.66, 93, 1008, 2.37, 209, '05:38:10', '05:37:42'),
(26, 'Pekanbaru', 'mostly sunny', 32.96, 52, 1008, 2.56, 158, '06:10:05', '06:19:27'),
(27, 'Bengkulu', 'mostly sunny', 29.11, 66, 1009, 3, 244, '06:14:20', '06:08:06'),
(28, 'Mataram', 'mostly sunny', 30.45, 59, 1010, 2.87, 173, '06:27:16', '06:04:27'),
(29, 'Mamuju', 'mostly sunny', 29.27, 75, 1009, 2.26, 350, '06:03:17', '06:02:38'),
(30, 'Surakarta', 'sunny cloudy', 31.22, 57, 1009, 0.71, 123, '05:46:09', '05:27:35'),
(31, 'Jayapura', 'cloudy', 27.66, 93, 1008, 2.37, 209, '05:38:27', '05:37:20'),
(32, '', '', 0, 0, 0, 0, 0, '00:00:00', '00:00:00'),
(33, 'Manado', 'scattered clouds', 25.4, 94, 1011, 1.03, 0, '05:34:26', '05:46:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
