-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2022 at 01:33 PM
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
('20221129111243-create-treino.js'),
('20221129121227-create-marca.js'),
('20221129155743-create-alimentos.js'),
('20221201110344-create-equipamentos.js'),
('20221201110348-create-musculos.js'),
('20221201110410-create-dificuldades.js'),
('20221201110458-create-exercicios.js'),
('20221201113202-create-cargos.js'),
('20221201113227-create-utilizadores.js'),
('20221220084928-CreateUsersTable.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Doe', 'jane@example.com');

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
-- Indexes for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_marca` (`id_marca`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD CONSTRAINT `Alimentos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `Marcas` (`id`);

--
-- Constraints for table `Exercicios`
--
ALTER TABLE `Exercicios`
  ADD CONSTRAINT `Exercicios_ibfk_1` FOREIGN KEY (`equipamento_id`) REFERENCES `Equipamentos` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_2` FOREIGN KEY (`dificuldade_id`) REFERENCES `Dificuldades` (`id`),
  ADD CONSTRAINT `Exercicios_ibfk_3` FOREIGN KEY (`musculo_id`) REFERENCES `Musculos` (`id`);

--
-- Constraints for table `Utilizadores`
--
ALTER TABLE `Utilizadores`
  ADD CONSTRAINT `Utilizadores_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `Cargos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
