-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2022 at 10:45 PM
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
-- Table structure for table `abdominais`
--

CREATE TABLE `abdominais` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alimentos`
--

CREATE TABLE `alimentos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `proteina` int(6) NOT NULL,
  `carbs` int(6) NOT NULL,
  `gordura` int(6) NOT NULL,
  `calorias` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alimentos`
--

INSERT INTO `alimentos` (`id`, `nome`, `proteina`, `carbs`, `gordura`, `calorias`) VALUES
(4, 'Alimento X', 310, 220, 120, 3200);

-- --------------------------------------------------------

--
-- Table structure for table `antebraco`
--

CREATE TABLE `antebraco` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `avancado`
--

CREATE TABLE `avancado` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `barra`
--

CREATE TABLE `barra` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `biceps`
--

CREATE TABLE `biceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bodyweight`
--

CREATE TABLE `bodyweight` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cabos`
--

CREATE TABLE `cabos` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `costas`
--

CREATE TABLE `costas` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dificuldades`
--

CREATE TABLE `dificuldades` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dificuldades`
--

INSERT INTO `dificuldades` (`id`, `nome`) VALUES
(3, 'avancado'),
(1, 'iniciante'),
(2, 'intermediario');

-- --------------------------------------------------------

--
-- Table structure for table `elastico`
--

CREATE TABLE `elastico` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipamentos`
--

INSERT INTO `equipamentos` (`id`, `nome`) VALUES
(6, 'barra'),
(1, 'bodyweight'),
(2, 'cabos'),
(3, 'elastico'),
(4, 'halteres'),
(5, 'maquina');

-- --------------------------------------------------------

--
-- Table structure for table `exercicios`
--

CREATE TABLE `exercicios` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`) VALUES
(52, 'Agachamento', 'barra', 'avancado', 'quadriceps');

-- --------------------------------------------------------

--
-- Table structure for table `gemeos`
--

CREATE TABLE `gemeos` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gluteo`
--

CREATE TABLE `gluteo` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `halteres`
--

CREATE TABLE `halteres` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hamstrings`
--

CREATE TABLE `hamstrings` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iniciante`
--

CREATE TABLE `iniciante` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `intermediario`
--

CREATE TABLE `intermediario` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lats`
--

CREATE TABLE `lats` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maquina`
--

CREATE TABLE `maquina` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `musculo`
--

CREATE TABLE `musculo` (
  `id` int(6) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `musculo`
--

INSERT INTO `musculo` (`id`, `nome_musculo`) VALUES
(11, 'abdominais'),
(8, 'antebraco'),
(9, 'biceps'),
(3, 'costas'),
(7, 'gemeos'),
(13, 'gluteo'),
(2, 'hamstrings'),
(4, 'lats'),
(5, 'ombros'),
(6, 'peito'),
(1, 'quadriceps'),
(12, 'traps'),
(10, 'triceps');

-- --------------------------------------------------------

--
-- Table structure for table `ombros`
--

CREATE TABLE `ombros` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `peito`
--

CREATE TABLE `peito` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quadriceps`
--

CREATE TABLE `quadriceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traps`
--

CREATE TABLE `traps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `triceps`
--

CREATE TABLE `triceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abdominais`
--
ALTER TABLE `abdominais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antebraco`
--
ALTER TABLE `antebraco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `avancado`
--
ALTER TABLE `avancado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `barra`
--
ALTER TABLE `barra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `biceps`
--
ALTER TABLE `biceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `bodyweight`
--
ALTER TABLE `bodyweight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `cabos`
--
ALTER TABLE `cabos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `costas`
--
ALTER TABLE `costas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `dificuldades`
--
ALTER TABLE `dificuldades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indexes for table `elastico`
--
ALTER TABLE `elastico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indexes for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`) USING BTREE;

--
-- Indexes for table `gemeos`
--
ALTER TABLE `gemeos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `gluteo`
--
ALTER TABLE `gluteo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `halteres`
--
ALTER TABLE `halteres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `iniciante`
--
ALTER TABLE `iniciante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `intermediario`
--
ALTER TABLE `intermediario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `lats`
--
ALTER TABLE `lats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `musculo`
--
ALTER TABLE `musculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `ombros`
--
ALTER TABLE `ombros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `peito`
--
ALTER TABLE `peito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `traps`
--
ALTER TABLE `traps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Indexes for table `triceps`
--
ALTER TABLE `triceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abdominais`
--
ALTER TABLE `abdominais`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `antebraco`
--
ALTER TABLE `antebraco`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `avancado`
--
ALTER TABLE `avancado`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `barra`
--
ALTER TABLE `barra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `biceps`
--
ALTER TABLE `biceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bodyweight`
--
ALTER TABLE `bodyweight`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cabos`
--
ALTER TABLE `cabos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `costas`
--
ALTER TABLE `costas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dificuldades`
--
ALTER TABLE `dificuldades`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `elastico`
--
ALTER TABLE `elastico`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `gemeos`
--
ALTER TABLE `gemeos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gluteo`
--
ALTER TABLE `gluteo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `halteres`
--
ALTER TABLE `halteres`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hamstrings`
--
ALTER TABLE `hamstrings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iniciante`
--
ALTER TABLE `iniciante`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `intermediario`
--
ALTER TABLE `intermediario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lats`
--
ALTER TABLE `lats`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maquina`
--
ALTER TABLE `maquina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `musculo`
--
ALTER TABLE `musculo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ombros`
--
ALTER TABLE `ombros`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `peito`
--
ALTER TABLE `peito`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quadriceps`
--
ALTER TABLE `quadriceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `traps`
--
ALTER TABLE `traps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `triceps`
--
ALTER TABLE `triceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `abdominais`
--
ALTER TABLE `abdominais`
  ADD CONSTRAINT `abdominais_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `antebraco`
--
ALTER TABLE `antebraco`
  ADD CONSTRAINT `antebraco_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `avancado`
--
ALTER TABLE `avancado`
  ADD CONSTRAINT `avancado_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barra`
--
ALTER TABLE `barra`
  ADD CONSTRAINT `barra_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `biceps`
--
ALTER TABLE `biceps`
  ADD CONSTRAINT `biceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bodyweight`
--
ALTER TABLE `bodyweight`
  ADD CONSTRAINT `bodyweight_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cabos`
--
ALTER TABLE `cabos`
  ADD CONSTRAINT `cabos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `costas`
--
ALTER TABLE `costas`
  ADD CONSTRAINT `costas_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `elastico`
--
ALTER TABLE `elastico`
  ADD CONSTRAINT `elastico_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_3` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gemeos`
--
ALTER TABLE `gemeos`
  ADD CONSTRAINT `gemeos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gluteo`
--
ALTER TABLE `gluteo`
  ADD CONSTRAINT `gluteo_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `halteres`
--
ALTER TABLE `halteres`
  ADD CONSTRAINT `halteres_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD CONSTRAINT `hamstrings_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `iniciante`
--
ALTER TABLE `iniciante`
  ADD CONSTRAINT `iniciante_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `intermediario`
--
ALTER TABLE `intermediario`
  ADD CONSTRAINT `intermediario_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_7` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lats`
--
ALTER TABLE `lats`
  ADD CONSTRAINT `lats_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maquina`
--
ALTER TABLE `maquina`
  ADD CONSTRAINT `maquina_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ombros`
--
ALTER TABLE `ombros`
  ADD CONSTRAINT `ombros_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peito`
--
ALTER TABLE `peito`
  ADD CONSTRAINT `peito_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD CONSTRAINT `quadriceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `traps`
--
ALTER TABLE `traps`
  ADD CONSTRAINT `traps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `triceps`
--
ALTER TABLE `triceps`
  ADD CONSTRAINT `triceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
