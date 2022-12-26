-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2022 at 01:39 PM
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
-- Table structure for table `Utilizadores`
--

CREATE TABLE `Utilizadores` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `primeiro_nome` varchar(25) NOT NULL,
  `ultimo_nome` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `num_telemovel` varchar(25) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL DEFAULT '1',
  `descricao` text,
  `treinos_concluidos` int(11) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Utilizadores`
--

INSERT INTO `Utilizadores` (`id`, `username`, `primeiro_nome`, `ultimo_nome`, `email`, `num_telemovel`, `password`, `id_cargo`, `descricao`, `treinos_concluidos`, `foto`, `createdAt`, `updatedAt`) VALUES
(1, 'dev', 'dev', 'dev', 'dev@gmail.com', '', '$2b$10$vKV1/rDM.EBJV25hGww2j.X3Ekqs4BqPsZASKbJIsDuZxLQC0jCum', 2, 'Olá, esta conta é do desenvolvedor', 0, '3453e1a0d09b6e959a4fc51ba2a73fa4.jpg', '2022-12-14 10:49:40', '2022-12-14 10:49:40'),
(2, 'guest', 'Guest', 'User', 'guest@gmail.com', '', '$2b$10$T.xBZ7b/VEzxD5KGMRocVO9eYynlMdu./KBYlhI.CXwwqFIRPeiCO', 1, NULL, 0, NULL, '2022-12-16 13:00:11', '2022-12-16 13:00:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  ADD CONSTRAINT `Utilizadores_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `Cargos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
