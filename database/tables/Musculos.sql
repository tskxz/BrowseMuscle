-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2022 at 01:38 PM
-- Server version: 5.7.40-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-36+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BrowseMuscle`
--

-- --------------------------------------------------------

--
-- Table structure for table `Musculos`
--

CREATE TABLE `Musculos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Musculos`
--

INSERT INTO `Musculos` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Peito', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(2, 'Ombro', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(3, 'Tricep', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(4, 'Costas', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(5, 'Dorsal', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(6, 'Trapezio', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(7, 'Bicep', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(8, 'Quadricep', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(9, 'Hamstring', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(10, 'Gemeo', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(11, 'Antebraco', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(12, 'Gluteo', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(13, 'Abdominais', '2022-12-13 21:38:02', '2022-12-13 21:38:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Musculos`
--
ALTER TABLE `Musculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Musculos`
--
ALTER TABLE `Musculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
