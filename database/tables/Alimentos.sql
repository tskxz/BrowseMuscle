-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2022 at 01:36 PM
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
-- Table structure for table `Alimentos`
--

CREATE TABLE `Alimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `proteina` double DEFAULT NULL,
  `carbs` double DEFAULT NULL,
  `gordura` double DEFAULT NULL,
  `calorias` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Alimentos`
--

INSERT INTO `Alimentos` (`id`, `nome`, `proteina`, `carbs`, `gordura`, `calorias`, `id_marca`, `createdAt`, `updatedAt`) VALUES
(8, 'Manteiga de Amendoím - 100g', 26, 11, 52, 630, 2, '2022-12-16 21:30:59', '2022-12-16 21:30:59'),
(9, 'CHEETOS® Crunchy Cheese Flavored Snacks - 28g', 2, 15, 10, 160, 8, '2022-12-16 21:53:37', '2022-12-16 21:53:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_marca` (`id_marca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alimentos`
--
ALTER TABLE `Alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD CONSTRAINT `Alimentos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marcas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
