-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Out-2022 às 13:51
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

CREATE TABLE `abdominais` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alimentos`
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
-- Extraindo dados da tabela `alimentos`
--

INSERT INTO `alimentos` (`id`, `nome`, `proteina`, `carbs`, `gordura`, `calorias`) VALUES
(4, 'Alimento X', 310, 220, 120, 3200);

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
-- Estrutura da tabela `avancado`
--

CREATE TABLE `avancado` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avancado`
--

INSERT INTO `avancado` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`) VALUES
(2, 'Agachamento', 'barra', 'avancado', 'quadriceps');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barra`
--

CREATE TABLE `barra` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `barra`
--

INSERT INTO `barra` (`id`, `nome_exercicio`, `nome_dificuldade`, `nome_equipamento`, `nome_musculo`) VALUES
(2, 'Agachamento', 'avancado', 'barra', 'quadriceps');

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
-- Estrutura da tabela `bodyweight`
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
-- Estrutura da tabela `cabos`
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
-- Estrutura da tabela `elastico`
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
(50, 'Agachamento', 'bodyweight', 'avancado', 'quadriceps');

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
-- Estrutura da tabela `gluteo`
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
-- Estrutura da tabela `halteres`
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
-- Estrutura da tabela `iniciante`
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
-- Estrutura da tabela `intermediario`
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
-- Estrutura da tabela `maquina`
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

--
-- Extraindo dados da tabela `quadriceps`
--

INSERT INTO `quadriceps` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`) VALUES
(9, 'Agachamento', 'barra', 'avancado', 'quadriceps');

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
-- Índices para tabela `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id`);

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
-- Índices para tabela `avancado`
--
ALTER TABLE `avancado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `barra`
--
ALTER TABLE `barra`
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
-- Índices para tabela `bodyweight`
--
ALTER TABLE `bodyweight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `cabos`
--
ALTER TABLE `cabos`
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
-- Índices para tabela `elastico`
--
ALTER TABLE `elastico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

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
-- Índices para tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `gluteo`
--
ALTER TABLE `gluteo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `halteres`
--
ALTER TABLE `halteres`
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
-- Índices para tabela `iniciante`
--
ALTER TABLE `iniciante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`);

--
-- Índices para tabela `intermediario`
--
ALTER TABLE `intermediario`
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
-- Índices para tabela `maquina`
--
ALTER TABLE `maquina`
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `antebraco`
--
ALTER TABLE `antebraco`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `avancado`
--
ALTER TABLE `avancado`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `barra`
--
ALTER TABLE `barra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `biceps`
--
ALTER TABLE `biceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `bodyweight`
--
ALTER TABLE `bodyweight`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cabos`
--
ALTER TABLE `cabos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `costas`
--
ALTER TABLE `costas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `dificuldades`
--
ALTER TABLE `dificuldades`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `elastico`
--
ALTER TABLE `elastico`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `gemeos`
--
ALTER TABLE `gemeos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gluteo`
--
ALTER TABLE `gluteo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `halteres`
--
ALTER TABLE `halteres`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `iniciante`
--
ALTER TABLE `iniciante`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `intermediario`
--
ALTER TABLE `intermediario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `lats`
--
ALTER TABLE `lats`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `maquina`
--
ALTER TABLE `maquina`
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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `peito`
--
ALTER TABLE `peito`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `traps`
--
ALTER TABLE `traps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `triceps`
--
ALTER TABLE `triceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `abdominais`
--
ALTER TABLE `abdominais`
  ADD CONSTRAINT `abdominais_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `abdominais_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `antebraco`
--
ALTER TABLE `antebraco`
  ADD CONSTRAINT `antebraco_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `antebraco_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `avancado`
--
ALTER TABLE `avancado`
  ADD CONSTRAINT `avancado_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avancado_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `barra`
--
ALTER TABLE `barra`
  ADD CONSTRAINT `barra_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barra_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `biceps`
--
ALTER TABLE `biceps`
  ADD CONSTRAINT `biceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `bodyweight`
--
ALTER TABLE `bodyweight`
  ADD CONSTRAINT `bodyweight_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bodyweight_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cabos`
--
ALTER TABLE `cabos`
  ADD CONSTRAINT `cabos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cabos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `costas`
--
ALTER TABLE `costas`
  ADD CONSTRAINT `costas_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `costas_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `elastico`
--
ALTER TABLE `elastico`
  ADD CONSTRAINT `elastico_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elastico_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exercicios_ibfk_3` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD CONSTRAINT `gemeos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gemeos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `gluteo`
--
ALTER TABLE `gluteo`
  ADD CONSTRAINT `gluteo_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gluteo_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `halteres`
--
ALTER TABLE `halteres`
  ADD CONSTRAINT `halteres_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `halteres_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD CONSTRAINT `hamstrings_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hamstrings_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `iniciante`
--
ALTER TABLE `iniciante`
  ADD CONSTRAINT `iniciante_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iniciante_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `intermediario`
--
ALTER TABLE `intermediario`
  ADD CONSTRAINT `intermediario_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_7` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `intermediario_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `lats`
--
ALTER TABLE `lats`
  ADD CONSTRAINT `lats_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lats_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `maquina`
--
ALTER TABLE `maquina`
  ADD CONSTRAINT `maquina_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maquina_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `ombros`
--
ALTER TABLE `ombros`
  ADD CONSTRAINT `ombros_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ombros_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `peito`
--
ALTER TABLE `peito`
  ADD CONSTRAINT `peito_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peito_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD CONSTRAINT `quadriceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quadriceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `traps`
--
ALTER TABLE `traps`
  ADD CONSTRAINT `traps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `traps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `triceps`
--
ALTER TABLE `triceps`
  ADD CONSTRAINT `triceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `triceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/* Converter para FULLTEXT  para ter possibilidade de ter mesmo nome de exercício mas equipamentos ou dificuldades ou musculos diferentes */
ALTER TABLE `browsemuscle`.`quadriceps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);