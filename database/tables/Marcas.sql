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
-- Table structure for table `Marcas`
--

CREATE TABLE `Marcas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Marcas`
--

INSERT INTO `Marcas` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'LIDL', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(2, 'Prozis', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(3, 'Pingo Doce', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(4, 'Continente', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(5, 'Auchan', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(6, 'MyProtein', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(7, 'Zumub', '2022-12-16 09:06:25', '2022-12-16 09:06:25'),
(8, 'Mercadona', '2022-12-16 09:06:25', '2022-12-16 09:06:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
