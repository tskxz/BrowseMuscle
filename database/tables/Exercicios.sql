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
-- Table structure for table `Exercicios`
--

CREATE TABLE `Exercicios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `equipamento_id` int(11) DEFAULT NULL,
  `dificuldade_id` int(11) DEFAULT NULL,
  `musculo_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Exercicios`
--

INSERT INTO `Exercicios` (`id`, `nome`, `equipamento_id`, `dificuldade_id`, `musculo_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Agachamento Livre', 1, 3, 8, '2022-12-14 12:10:57', '2022-12-14 12:10:57'),
(2, 'Deadlift', 1, 3, 4, '2022-12-16 19:00:57', '2022-12-16 19:00:57'),
(3, 'Deadlift', 1, 3, 8, '2022-12-16 19:01:03', '2022-12-16 19:01:03'),
(4, 'Deadlift', 1, 3, 9, '2022-12-16 19:01:09', '2022-12-16 19:01:09'),
(5, 'Supino', 1, 3, 1, '2022-12-16 19:01:14', '2022-12-16 19:01:14'),
(6, 'Cable flies', 4, 2, 1, '2022-12-16 19:01:21', '2022-12-16 19:01:21'),
(7, 'Chest Press machine', 3, 2, 1, '2022-12-16 19:01:31', '2022-12-16 19:01:31'),
(8, 'Shoulder press machine', 3, 2, 2, '2022-12-16 19:01:41', '2022-12-16 19:01:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Exercicios`
--
ALTER TABLE `Exercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamento_id` (`equipamento_id`),
  ADD KEY `dificuldade_id` (`dificuldade_id`),
  ADD KEY `musculo_id` (`musculo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Exercicios`
--
ALTER TABLE `Exercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Exercicios`
--
ALTER TABLE `Exercicios`
  ADD CONSTRAINT `Exercicios_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `Equipamentos` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_2` FOREIGN KEY (`dificuldade_id`) REFERENCES `Dificuldades` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_3` FOREIGN KEY (`musculo_id`) REFERENCES `Musculos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
