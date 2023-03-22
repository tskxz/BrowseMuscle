-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2023 at 03:41 PM
-- Server version: 5.7.41-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-37+ubuntu18.04.1+deb.sury.org+1

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
  `utilizador_id` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Alimentos`
--

INSERT INTO `Alimentos` (`id`, `nome`, `proteina`, `carbs`, `gordura`, `calorias`, `id_marca`, `utilizador_id`, `estado`, `createdAt`, `updatedAt`) VALUES
(2, 'Manteiga de Amendoim 100g', 28, 30, 60, 772, 1, NULL, 1, '2023-01-30 17:19:15', '2023-01-30 17:19:15'),
(3, 'CHEETOS® Crunchy Cheese Flavored Snacks - 28g', 6.7, 1, 3, 212, 3, NULL, 1, '2023-01-30 17:25:51', '2023-01-30 17:25:51'),
(7, 'Oreo Cookies', 2.6, 27.5, 12.6, 113, 4, NULL, 1, '2023-01-31 18:51:59', '2023-01-31 18:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `Cargos`
--

CREATE TABLE `Cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Cargos`
--

INSERT INTO `Cargos` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'BASICO', '2022-12-13 21:33:21', '2022-12-13 21:33:21'),
(2, 'ADMIN', '2022-12-13 21:33:21', '2022-12-13 21:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `Dificuldades`
--

CREATE TABLE `Dificuldades` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dificuldades`
--

INSERT INTO `Dificuldades` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(1, 'Iniciante', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(2, 'Intermediario', '2022-12-13 21:38:02', '2022-12-13 21:38:02'),
(3, 'Avancado', '2022-12-13 21:38:02', '2022-12-13 21:38:02');

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
  `descricao` longtext,
  `video` varchar(100) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Exercicios`
--

INSERT INTO `Exercicios` (`id`, `nome`, `equipamento_id`, `dificuldade_id`, `musculo_id`, `descricao`, `video`, `createdAt`, `updatedAt`) VALUES
(6, '1', 1, 1, 1, '1', NULL, '2023-03-06 12:59:46', '2023-03-06 12:59:46');

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

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20221201110458-create-exercicios.js');

-- --------------------------------------------------------

--
-- Table structure for table `Sessao_Treinos`
--

CREATE TABLE `Sessao_Treinos` (
  `id` int(11) NOT NULL,
  `id_sessao` bigint(20) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(155) NOT NULL,
  `utilizador_id` int(11) NOT NULL,
  `exercicio_id` int(11) DEFAULT NULL,
  `reps_objetivo` int(11) DEFAULT NULL,
  `series` int(11) DEFAULT NULL,
  `carga` int(11) DEFAULT NULL,
  `reps_set1` int(11) DEFAULT NULL,
  `reps_set2` int(11) DEFAULT NULL,
  `reps_set3` int(11) DEFAULT NULL,
  `reps_set4` int(11) DEFAULT NULL,
  `reps_set5` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `concluido` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sessao_Treinos`
--

INSERT INTO `Sessao_Treinos` (`id`, `id_sessao`, `nome`, `descricao`, `utilizador_id`, `exercicio_id`, `reps_objetivo`, `series`, `carga`, `reps_set1`, `reps_set2`, `reps_set3`, `reps_set4`, `reps_set5`, `estado`, `createdAt`, `concluido`) VALUES
(4, 1921253760, '1', '1', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-03-06 20:09:46', 0),
(5, 1921253760, '1', '1', 9, 6, 8, 3, 120, 8, 8, 8, NULL, NULL, 3, '2023-03-06 20:09:46', 1);

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
(9, 'dev', 'dev', 'dev', 'dev@dev.com', '', '$2b$10$Cs4TTRQF4Ni2C4Yn1T91iucM8hiA9OG55p3zHPW5H228QXEMQYet6', 2, 'Esta conta é do modo desenvolvedor com permissões de gestão de exercícios, alimentos e utilizadores. Teste', 6, '3bed7d.jpg', '2023-03-05 16:39:43', '2023-03-05 16:39:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_marca` (`id_marca`),
  ADD KEY `Alimentos_ibfk_2` (`utilizador_id`);

--
-- Indexes for table `Cargos`
--
ALTER TABLE `Cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Dificuldades`
--
ALTER TABLE `Dificuldades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Equipamentos`
--
ALTER TABLE `Equipamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Exercicios`
--
ALTER TABLE `Exercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamento_id` (`equipamento_id`),
  ADD KEY `dificuldade_id` (`dificuldade_id`),
  ADD KEY `musculo_id` (`musculo_id`);

--
-- Indexes for table `Marcas`
--
ALTER TABLE `Marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Musculos`
--
ALTER TABLE `Musculos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Sessao_Treinos`
--
ALTER TABLE `Sessao_Treinos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sessao_Treinos_ibfk_1` (`utilizador_id`),
  ADD KEY `Sessao_Treinos_ibfk_2` (`exercicio_id`);

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
-- AUTO_INCREMENT for table `Alimentos`
--
ALTER TABLE `Alimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Cargos`
--
ALTER TABLE `Cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Dificuldades`
--
ALTER TABLE `Dificuldades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Equipamentos`
--
ALTER TABLE `Equipamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Exercicios`
--
ALTER TABLE `Exercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Marcas`
--
ALTER TABLE `Marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Musculos`
--
ALTER TABLE `Musculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Sessao_Treinos`
--
ALTER TABLE `Sessao_Treinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD CONSTRAINT `Alimentos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marcas` (`id`),
  ADD CONSTRAINT `Alimentos_ibfk_2` FOREIGN KEY (`utilizador_id`) REFERENCES `Utilizadores` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `Exercicios`
--
ALTER TABLE `Exercicios`
  ADD CONSTRAINT `Exercicios_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `Equipamentos` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_2` FOREIGN KEY (`dificuldade_id`) REFERENCES `Dificuldades` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_3` FOREIGN KEY (`musculo_id`) REFERENCES `Musculos` (`id`);

--
-- Constraints for table `Sessao_Treinos`
--
ALTER TABLE `Sessao_Treinos`
  ADD CONSTRAINT `Sessao_Treinos_ibfk_1` FOREIGN KEY (`utilizador_id`) REFERENCES `Utilizadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Sessao_Treinos_ibfk_2` FOREIGN KEY (`exercicio_id`) REFERENCES `Exercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  ADD CONSTRAINT `Utilizadores_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `Cargos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
