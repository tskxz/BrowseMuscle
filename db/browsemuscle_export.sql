-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Ago-2022 às 22:40
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `browsemuscle`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `abdominais`
--
create database BrowseMuscle;
use BrowseMuscle;

CREATE TABLE `abdominais` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `antebraco`
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
-- Estrutura da tabela `biceps`
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
-- Estrutura da tabela `costas`
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
-- Estrutura da tabela `dificuldades`
--

CREATE TABLE `dificuldades` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dificuldades`
--

INSERT INTO `dificuldades` (`id`, `nome`) VALUES
(3, 'avancado'),
(1, 'iniciante'),
(2, 'intermediario');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id` int(6) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipamentos`
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
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`) VALUES
(1, 'Leg Extensions', 'maquina', 'intermediario', 'quadriceps'),
(2, 'Elevacao Pelvica', 'barra', 'intermediario', 'gluteo'),
(3, 'Agachmento Livre', 'barra', 'avancado', 'quadriceps'),
(4, 'Bicep Curl', 'barra', 'intermediario', 'biceps');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_avancado`
--

CREATE TABLE `exercicios_avancado` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_barra`
--

CREATE TABLE `exercicios_barra` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_bodyweight`
--

CREATE TABLE `exercicios_bodyweight` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_cabos`
--

CREATE TABLE `exercicios_cabos` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_elastico`
--

CREATE TABLE `exercicios_elastico` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_halteres`
--

CREATE TABLE `exercicios_halteres` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_iniciante`
--

CREATE TABLE `exercicios_iniciante` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_intermediario`
--

CREATE TABLE `exercicios_intermediario` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_maquina`
--

CREATE TABLE `exercicios_maquina` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gemeos`
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
-- Estrutura da tabela `hamstrings`
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
-- Estrutura da tabela `lats`
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
-- Estrutura da tabela `musculo`
--

CREATE TABLE `musculo` (
  `id` int(6) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `musculo`
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
-- Estrutura da tabela `ombros`
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
-- Estrutura da tabela `peito`
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
-- Estrutura da tabela `quadriceps`
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
-- Estrutura da tabela `traps`
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
-- Estrutura da tabela `triceps`
--

CREATE TABLE `triceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `abdominais`
--
ALTER TABLE `abdominais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `antebraco`
--
ALTER TABLE `antebraco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `biceps`
--
ALTER TABLE `biceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `costas`
--
ALTER TABLE `costas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `dificuldades`
--
ALTER TABLE `dificuldades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`);

--
-- Índices para tabela `exercicios_avancado`
--
ALTER TABLE `exercicios_avancado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_barra`
--
ALTER TABLE `exercicios_barra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_bodyweight`
--
ALTER TABLE `exercicios_bodyweight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_cabos`
--
ALTER TABLE `exercicios_cabos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_elastico`
--
ALTER TABLE `exercicios_elastico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_halteres`
--
ALTER TABLE `exercicios_halteres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_iniciante`
--
ALTER TABLE `exercicios_iniciante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_intermediario`
--
ALTER TABLE `exercicios_intermediario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `exercicios_maquina`
--
ALTER TABLE `exercicios_maquina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `lats`
--
ALTER TABLE `lats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `musculo`
--
ALTER TABLE `musculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `ombros`
--
ALTER TABLE `ombros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `peito`
--
ALTER TABLE `peito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `traps`
--
ALTER TABLE `traps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `triceps`
--
ALTER TABLE `triceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abdominais`
--
ALTER TABLE `abdominais`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `antebraco`
--
ALTER TABLE `antebraco`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `biceps`
--
ALTER TABLE `biceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `costas`
--
ALTER TABLE `costas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dificuldades`
--
ALTER TABLE `dificuldades`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `exercicios_avancado`
--
ALTER TABLE `exercicios_avancado`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_barra`
--
ALTER TABLE `exercicios_barra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_bodyweight`
--
ALTER TABLE `exercicios_bodyweight`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_cabos`
--
ALTER TABLE `exercicios_cabos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_elastico`
--
ALTER TABLE `exercicios_elastico`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_halteres`
--
ALTER TABLE `exercicios_halteres`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_iniciante`
--
ALTER TABLE `exercicios_iniciante`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_intermediario`
--
ALTER TABLE `exercicios_intermediario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicios_maquina`
--
ALTER TABLE `exercicios_maquina`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gemeos`
--
ALTER TABLE `gemeos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lats`
--
ALTER TABLE `lats`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `musculo`
--
ALTER TABLE `musculo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `ombros`
--
ALTER TABLE `ombros`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `peito`
--
ALTER TABLE `peito`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `traps`
--
ALTER TABLE `traps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `triceps`
--
ALTER TABLE `triceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `abdominais`
--
ALTER TABLE `abdominais`
  ADD CONSTRAINT `abdominais_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `abdominais_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `abdominais_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `abdominais_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `antebraco`
--
ALTER TABLE `antebraco`
  ADD CONSTRAINT `antebraco_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `antebraco_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `antebraco_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `antebraco_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `biceps`
--
ALTER TABLE `biceps`
  ADD CONSTRAINT `biceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `biceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `biceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `biceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `costas`
--
ALTER TABLE `costas`
  ADD CONSTRAINT `costas_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `costas_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `costas_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `costas_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_ibfk_3` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`);

--
-- Limitadores para a tabela `exercicios_avancado`
--
ALTER TABLE `exercicios_avancado`
  ADD CONSTRAINT `exercicios_avancado_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_barra`
--
ALTER TABLE `exercicios_barra`
  ADD CONSTRAINT `exercicios_barra_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_barra_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_barra_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_barra_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_bodyweight`
--
ALTER TABLE `exercicios_bodyweight`
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_cabos`
--
ALTER TABLE `exercicios_cabos`
  ADD CONSTRAINT `exercicios_cabos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_5` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_6` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_7` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_elastico`
--
ALTER TABLE `exercicios_elastico`
  ADD CONSTRAINT `exercicios_elastico_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_halteres`
--
ALTER TABLE `exercicios_halteres`
  ADD CONSTRAINT `exercicios_halteres_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_iniciante`
--
ALTER TABLE `exercicios_iniciante`
  ADD CONSTRAINT `exercicios_iniciante_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_intermediario`
--
ALTER TABLE `exercicios_intermediario`
  ADD CONSTRAINT `exercicios_intermediario_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_3` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_4` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_5` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_6` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_7` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `exercicios_maquina`
--
ALTER TABLE `exercicios_maquina`
  ADD CONSTRAINT `exercicios_maquina_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD CONSTRAINT `gemeos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `gemeos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `gemeos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `gemeos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD CONSTRAINT `hamstrings_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `hamstrings_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `hamstrings_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `hamstrings_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `lats`
--
ALTER TABLE `lats`
  ADD CONSTRAINT `lats_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `lats_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `lats_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `lats_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `ombros`
--
ALTER TABLE `ombros`
  ADD CONSTRAINT `ombros_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `ombros_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `ombros_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `ombros_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `peito`
--
ALTER TABLE `peito`
  ADD CONSTRAINT `peito_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `peito_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `peito_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `peito_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD CONSTRAINT `quadriceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `quadriceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `quadriceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `quadriceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `traps`
--
ALTER TABLE `traps`
  ADD CONSTRAINT `traps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `traps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `traps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `traps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);

--
-- Limitadores para a tabela `triceps`
--
ALTER TABLE `triceps`
  ADD CONSTRAINT `triceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `triceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `triceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `triceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
