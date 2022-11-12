-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2022 at 12:36 PM
-- Server version: 5.7.40-0ubuntu0.18.04.1
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
-- Table structure for table `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `proteina` double NOT NULL,
  `carbs` double NOT NULL,
  `gordura` double NOT NULL,
  `calorias` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alimentos`
--

INSERT INTO `alimentos` (`id`, `nome`, `proteina`, `carbs`, `gordura`, `calorias`) VALUES
(3, 'Continente - Pudim Proteico sabor a morango', 11.1, 7, 1.6, 82),
(6, 'Iogurte Grego', 17.3, 6.1, 3, 100);

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
(7, 'Supino Inclinado', 2, 3, 1),
(13, 'Dumbell Row', 2, 2, 5),
(17, 'Deadlift', 1, 3, 4),
(18, 'Agachamento Livre', 1, 3, 8);

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

-- --------------------------------------------------------

--
-- Table structure for table `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `primeiro_nome` varchar(25) NOT NULL,
  `ultimo_nome` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `num_telemovel` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilizadores`
--

INSERT INTO `utilizadores` (`id`, `username`, `primeiro_nome`, `ultimo_nome`, `email`, `num_telemovel`, `password`) VALUES
(1, 'tsk', 'Tanjil', 'Khan', 'tanjlkh@gmail.com', '+351914721543', '$2b$10$mkweRrVdhpX.zAApdPYhju09ljCBjIQHXf2FBcqwpw3v6NBtva48K'),
(2, 'guedes', 'Joao', 'Guedes', 'joaoguedes@gmail.com', '+3519339102300', '$2b$10$F92lDO90lwDUUFaYtikQZuQFSBWs.LwdcTTEU0up.3PTtUgstaD9a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `musculos`
--
ALTER TABLE `musculos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
