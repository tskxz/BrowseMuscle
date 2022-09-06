-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Ago-2022 às 16:33
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

CREATE DATABASE 'browsemuscle';
use browsemuscle;

CREATE TABLE `abdominais` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `abdominais`
--

INSERT INTO `abdominais` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Prancha', 'bodyweight', 'intermediario', 'abdominais', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `antebraco`
--

CREATE TABLE `antebraco` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `antebraco`
--

INSERT INTO `antebraco` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Cable Reverse Curl', 'cabos', 'intermediario', 'antebraco', 'http://localhost:3000/api/antebraco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `biceps`
--

CREATE TABLE `biceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `biceps`
--

INSERT INTO `biceps` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Rope Bicep Curl', 'cabos', 'iniciante', 'biceps', 'http://localhost:3000/api/bicep_curl');

-- --------------------------------------------------------

--
-- Estrutura da tabela `costas`
--

CREATE TABLE `costas` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `costas`
--

INSERT INTO `costas` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Bent over row', 'barra', 'intermediario', 'costas', '');

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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Leg Extensions', 'maquina', 'iniciante', 'quadriceps', 'http://localhost:3000/api/leg_extensions'),
(2, 'Elevacao Pelvica', 'barra', 'intermediario', 'gluteo', 'http://localhost:3000/api/elevacao_pelvica'),
(3, 'Agachmento Livre', 'barra', 'avancado', 'quadriceps', 'http://localhost:3000/api/agachamento'),
(4, 'Bicep Curl', 'barra', 'intermediario', 'biceps', 'http://localhost:3000/api/bicep_curl'),
(6, 'Leg Press', 'maquina', 'iniciante', 'quadriceps', 'http://localhost:3000/api/leg_press'),
(7, 'Supino', 'barra', 'avancado', 'peito', 'http://localhost:3000/api/supino'),
(9, 'Lat Pull Down', 'maquina', 'intermediario', 'lats', 'http://localhost:3000/api/lat_pull_down'),
(10, 'Hammer Curl', 'halteres', 'iniciante', 'biceps', 'http://localhost:3000/api/bicep_curl'),
(11, 'Goblet Squat', 'halteres', 'iniciante', 'gluteo', 'http://localhost:3000/api/agachamento'),
(12, 'Shoulder Press', 'maquina', 'iniciante', 'ombros', 'http://localhost:3000/api/shoulder_press'),
(13, 'Smith Machine Squat', 'maquina', 'intermediario', 'quadriceps', 'http://localhost:3000/api/agachamento'),
(14, 'Tricep Rope Pushdown', 'cabos', 'iniciante', 'triceps', 'http://localhost:3000/api/tricep_extension'),
(15, 'Glute Bridge', 'bodyweight', 'intermediario', 'gluteo', 'http://localhost:3000/api/elevacao_pelvica'),
(17, 'Cable Glute KickBack', 'cabos', 'iniciante', 'gluteo', 'http://localhost:3000/api/elevacao_pelvica'),
(18, 'Cable Pull Over', 'cabos', 'intermediario', 'lats', 'http://localhost:3000/api/lat_pull_down'),
(19, 'Half Kneeling One Arm Lat Pull Down', 'cabos', 'intermediario', 'lats', 'http://localhost:3000/api/lat_pull_down'),
(20, 'Bent over row', 'barra', 'avancado', 'costas', 'http://localhost:3000/api/bor'),
(21, 'Deadlift', 'barra', 'avancado', 'quadriceps', 'http://localhost:3000/api/deadlift'),
(22, 'Cable Lateral Raises', 'barra', 'intermediario', 'ombros', 'http://localhost:3000/api/lateral_raises'),
(23, 'Romanian Deadlift', 'barra', 'avancado', 'hamstrings', 'http://localhost:3000/api/deadlift'),
(24, 'Leg Seated Curl', 'maquina', 'iniciante', 'hamstrings', ''),
(25, 'Prancha', 'bodyweight', 'intermediario', 'abdominais', 'http://localhost:3000/api/abdominais'),
(26, 'Peck Deck', 'maquina', 'intermediario', 'peito', 'http://localhost:3000/api/peito_aberturas'),
(28, 'Agachamento', 'bodyweight', 'iniciante', 'quadriceps', 'http://localhost:3000/api/agachamento'),
(30, 'DB Bent over row', 'halteres', 'intermediario', 'costas', 'http://localhost:3000/api/bor'),
(31, 'Lunges', 'bodyweight', 'intermediario', 'quadriceps', 'http://localhost:3000/api/lunges'),
(35, 'Agachamento Corporal', 'bodyweight', 'intermediario', 'gluteo', 'http://localhost:3000/api/agachamento'),
(37, 'Rope Bicep Curl', 'cabos', 'iniciante', 'biceps', 'http://localhost:3000/api/bicep_curl'),
(38, 'Tricep Overhead Extension', 'cabos', 'intermediario', 'triceps', 'http://localhost:3000/api/tricep_extension'),
(39, 'Cable Reverse Curl', 'cabos', 'intermediario', 'antebraco', 'http://localhost:3000/api/antebraco'),
(40, 'Calf Raises', 'maquina', 'intermediario', 'gemeos', 'http://localhost:3000/api/gemeos'),
(41, 'Shrugs', 'barra', 'iniciante', 'traps', 'http://localhost:3000/api/traps');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios_avancado`
--

CREATE TABLE `exercicios_avancado` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gemeos`
--

INSERT INTO `gemeos` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Calf Raises', 'maquina', 'intermediario', 'gemeos', 'http://localhost:3000/api/gemeos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gluteo`
--

CREATE TABLE `gluteo` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gluteo`
--

INSERT INTO `gluteo` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(2, 'Elevacao Pelvica', 'barra', 'intermediario', 'gluteo', ''),
(11, 'Goblet Squat', 'halteres', 'iniciante', 'gluteo', ''),
(15, 'Glute Bridge', 'bodyweight', 'intermediario', 'gluteo', ''),
(16, 'Cable Glute KickBack', 'cabos', 'iniciante', 'gluteo', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hamstrings`
--

CREATE TABLE `hamstrings` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `hamstrings`
--

INSERT INTO `hamstrings` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Romanian Deadlift', 'barra', 'avancado', 'hamstrings', ''),
(2, 'Leg Seated Curl', 'maquina', 'iniciante', 'hamstrings', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lats`
--

CREATE TABLE `lats` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lats`
--

INSERT INTO `lats` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Cable Pull Over', 'cabos', 'intermediario', 'lats', ''),
(2, 'Half Kneeling One Arm Lat Pull Down', 'cabos', 'intermediario', 'lats', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `link`
--

CREATE TABLE `link` (
  `id` int(6) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `link`
--

INSERT INTO `link` (`id`, `link`) VALUES
(15, 'http://localhost:3000/api/abdominais'),
(1, 'http://localhost:3000/api/agachamento'),
(18, 'http://localhost:3000/api/antebraco'),
(3, 'http://localhost:3000/api/bicep_curl'),
(11, 'http://localhost:3000/api/bor'),
(12, 'http://localhost:3000/api/deadlift'),
(7, 'http://localhost:3000/api/elevacao_pelvica'),
(19, 'http://localhost:3000/api/gemeos'),
(13, 'http://localhost:3000/api/lateral_raises'),
(9, 'http://localhost:3000/api/lat_pull_down'),
(14, 'http://localhost:3000/api/leg_curl'),
(4, 'http://localhost:3000/api/leg_extensions'),
(8, 'http://localhost:3000/api/leg_press'),
(17, 'http://localhost:3000/api/lunges'),
(16, 'http://localhost:3000/api/peito_aberturas'),
(10, 'http://localhost:3000/api/shoulder_press'),
(6, 'http://localhost:3000/api/supino'),
(20, 'http://localhost:3000/api/traps'),
(5, 'http://localhost:3000/api/tricep_extension');

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
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ombros`
--

INSERT INTO `ombros` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(12, 'Shoulder Press', 'maquina', 'iniciante', 'ombros', ''),
(13, 'Cable Lateral Raises', 'barra', 'intermediario', 'ombros', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `peito`
--

CREATE TABLE `peito` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `peito`
--

INSERT INTO `peito` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(7, 'Supino', 'barra', 'avancado', 'peito', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `quadriceps`
--

CREATE TABLE `quadriceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `quadriceps`
--

INSERT INTO `quadriceps` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Leg Extensions', 'maquina', 'intermediario', 'quadriceps', ''),
(3, 'Agachmento Livre', 'barra', 'avancado', 'quadriceps', ''),
(6, 'Leg Press', 'maquina', 'iniciante', 'quadriceps', ''),
(7, 'Deadlift', 'barra', 'avancado', 'quadriceps', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `traps`
--

CREATE TABLE `traps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `traps`
--

INSERT INTO `traps` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(1, 'Shrugs', 'barra', 'iniciante', 'traps', 'http://localhost:3000/api/traps');

-- --------------------------------------------------------

--
-- Estrutura da tabela `triceps`
--

CREATE TABLE `triceps` (
  `id` int(6) NOT NULL,
  `nome_exercicio` varchar(100) NOT NULL,
  `nome_equipamento` varchar(100) NOT NULL,
  `nome_dificuldade` varchar(100) NOT NULL,
  `nome_musculo` varchar(100) NOT NULL,
  `link_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `triceps`
--

INSERT INTO `triceps` (`id`, `nome_exercicio`, `nome_equipamento`, `nome_dificuldade`, `nome_musculo`, `link_url`) VALUES
(14, 'Tricep Rope Pushdown', 'cabos', 'iniciante', 'triceps', ''),
(15, 'Tricep Overhead Extension', 'cabos', 'intermediario', 'triceps', 'http://localhost:3000/api/tricep_extension');

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
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link_url` (`link_url`);

--
-- Índices para tabela `antebraco`
--
ALTER TABLE `antebraco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link_url` (`link_url`);

--
-- Índices para tabela `biceps`
--
ALTER TABLE `biceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link_url` (`link_url`);

--
-- Índices para tabela `costas`
--
ALTER TABLE `costas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

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
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `link_url` (`link_url`);

--
-- Índices para tabela `exercicios_avancado`
--
ALTER TABLE `exercicios_avancado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_barra`
--
ALTER TABLE `exercicios_barra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_bodyweight`
--
ALTER TABLE `exercicios_bodyweight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_cabos`
--
ALTER TABLE `exercicios_cabos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_elastico`
--
ALTER TABLE `exercicios_elastico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_halteres`
--
ALTER TABLE `exercicios_halteres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_iniciante`
--
ALTER TABLE `exercicios_iniciante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_intermediario`
--
ALTER TABLE `exercicios_intermediario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `exercicios_maquina`
--
ALTER TABLE `exercicios_maquina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `gluteo`
--
ALTER TABLE `gluteo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `lats`
--
ALTER TABLE `lats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

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
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `peito`
--
ALTER TABLE `peito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `traps`
--
ALTER TABLE `traps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- Índices para tabela `triceps`
--
ALTER TABLE `triceps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome_dificuldade` (`nome_dificuldade`),
  ADD KEY `nome_equipamento` (`nome_equipamento`),
  ADD KEY `nome_exercicio` (`nome_exercicio`),
  ADD KEY `nome_musculo` (`nome_musculo`),
  ADD KEY `link` (`link_url`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abdominais`
--
ALTER TABLE `abdominais`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `antebraco`
--
ALTER TABLE `antebraco`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `biceps`
--
ALTER TABLE `biceps`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `gluteo`
--
ALTER TABLE `gluteo`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lats`
--
ALTER TABLE `lats`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `link`
--
ALTER TABLE `link`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `abdominais_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `abdominais_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `abdominais_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `abdominais_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `abdominais_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `antebraco`
--
ALTER TABLE `antebraco`
  ADD CONSTRAINT `antebraco_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `antebraco_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `antebraco_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `antebraco_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `antebraco_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `biceps`
--
ALTER TABLE `biceps`
  ADD CONSTRAINT `biceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `biceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `biceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `biceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `biceps_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `costas`
--
ALTER TABLE `costas`
  ADD CONSTRAINT `costas_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `costas_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `costas_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `costas_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `costas_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_ibfk_3` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_ibfk_4` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_avancado`
--
ALTER TABLE `exercicios_avancado`
  ADD CONSTRAINT `exercicios_avancado_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_avancado_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_barra`
--
ALTER TABLE `exercicios_barra`
  ADD CONSTRAINT `exercicios_barra_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_barra_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_barra_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_barra_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_barra_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_bodyweight`
--
ALTER TABLE `exercicios_bodyweight`
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_bodyweight_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `exercicios_cabos_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_cabos_ibfk_9` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_elastico`
--
ALTER TABLE `exercicios_elastico`
  ADD CONSTRAINT `exercicios_elastico_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_elastico_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_halteres`
--
ALTER TABLE `exercicios_halteres`
  ADD CONSTRAINT `exercicios_halteres_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_halteres_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_iniciante`
--
ALTER TABLE `exercicios_iniciante`
  ADD CONSTRAINT `exercicios_iniciante_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_iniciante_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `exercicios_intermediario_ibfk_8` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_intermediario_ibfk_9` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `exercicios_maquina`
--
ALTER TABLE `exercicios_maquina`
  ADD CONSTRAINT `exercicios_maquina_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `exercicios_maquina_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `gemeos`
--
ALTER TABLE `gemeos`
  ADD CONSTRAINT `gemeos_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `gemeos_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `gemeos_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `gemeos_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `gemeos_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `gluteo`
--
ALTER TABLE `gluteo`
  ADD CONSTRAINT `gluteo_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `gluteo_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `gluteo_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `gluteo_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `gluteo_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `hamstrings`
--
ALTER TABLE `hamstrings`
  ADD CONSTRAINT `hamstrings_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `hamstrings_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `hamstrings_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `hamstrings_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `hamstrings_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lats`
--
ALTER TABLE `lats`
  ADD CONSTRAINT `lats_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `lats_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `lats_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `lats_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `lats_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ombros`
--
ALTER TABLE `ombros`
  ADD CONSTRAINT `ombros_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `ombros_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `ombros_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `ombros_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `ombros_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `peito`
--
ALTER TABLE `peito`
  ADD CONSTRAINT `peito_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `peito_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `peito_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `peito_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `peito_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `quadriceps`
--
ALTER TABLE `quadriceps`
  ADD CONSTRAINT `quadriceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `quadriceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `quadriceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `quadriceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `quadriceps_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `traps`
--
ALTER TABLE `traps`
  ADD CONSTRAINT `traps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `traps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `traps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `traps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `traps_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `triceps`
--
ALTER TABLE `triceps`
  ADD CONSTRAINT `triceps_ibfk_1` FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades` (`nome`),
  ADD CONSTRAINT `triceps_ibfk_2` FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos` (`nome`),
  ADD CONSTRAINT `triceps_ibfk_3` FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios` (`nome_exercicio`),
  ADD CONSTRAINT `triceps_ibfk_4` FOREIGN KEY (`nome_musculo`) REFERENCES `musculo` (`nome_musculo`),
  ADD CONSTRAINT `triceps_ibfk_5` FOREIGN KEY (`link_url`) REFERENCES `link` (`link`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
