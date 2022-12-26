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
-- Table structure for table `Equipamentos`
--

CREATE TABLE `Equipamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Equipamentos`
--

INSERT INTO `Equipamentos` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Barra', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(2, 'Halteres', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(3, 'Maquina', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(4, 'Cabos', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(5, 'Peso Corporal', '2022-12-13 21:38:02', '2022-12-13 21:38:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Equipamentos`
--
ALTER TABLE `Equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Equipamentos`
--
ALTER TABLE `Equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
