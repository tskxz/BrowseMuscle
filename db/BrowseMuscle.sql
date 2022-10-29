-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2022 at 09:50 PM
-- Server version: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 7.2.34-28+ubuntu18.04.1+deb.sury.org+1

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
-- Table structure for table `dificuldades`
--

CREATE TABLE `dificuldades` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dificuldades`
--

INSERT INTO `dificuldades` (`id`, `nome`) VALUES
(1, 'iniciante'),
(2, 'intermediario'),
(3, 'avancado');

-- --------------------------------------------------------

--
-- Table structure for table `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipamentos`
--

INSERT INTO `equipamentos` (`id`, `nome`) VALUES
(1, 'barra'),
(2, 'halteres'),
(3, 'maquina'),
(4, 'cabos'),
(5, 'peso corporal');

-- --------------------------------------------------------

--
-- Table structure for table `exercicios`
--

CREATE TABLE `exercicios` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `equipamento_id` int(6) NOT NULL,
  `dificuldade_id` int(6) NOT NULL,
  `musculo_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome`, `equipamento_id`, `dificuldade_id`, `musculo_id`) VALUES
(2, 'Bicep Curl', 1, 2, 7),
(3, 'Bench Press', 1, 3, 1),
(4, 'Cable flies', 4, 2, 1),
(5, 'Tricep Rope Pushdown', 4, 2, 3),
(6, 'Serrote', 1, 3, 4),
(7, 'Supino', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `musculos`
--

CREATE TABLE `musculos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musculos`
--

INSERT INTO `musculos` (`id`, `nome`) VALUES
(1, 'peito'),
(2, 'ombro'),
(3, 'tricep'),
(4, 'costas'),
(5, 'dorsal'),
(6, 'trapezio'),
(7, 'bicep'),
(8, 'quadricep'),
(9, 'hamstring'),
(10, 'gemeo'),
(11, 'antebraco'),
(12, 'gluteo'),
(13, 'abdominais');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dificuldades`
--
ALTER TABLE `dificuldades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musculo_id` (`musculo_id`),
  ADD KEY `equipamento_id` (`equipamento_id`),
  ADD KEY `dificuldade_id` (`dificuldade_id`);

--
-- Indexes for table `musculos`
--
ALTER TABLE `musculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dificuldades`
--
ALTER TABLE `dificuldades`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `musculos`
--
ALTER TABLE `musculos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`dificuldade_id`) REFERENCES `dificuldades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_3` FOREIGN KEY (`musculo_id`) REFERENCES `musculos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_4` FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_5` FOREIGN KEY (`dificuldade_id`) REFERENCES `dificuldades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
