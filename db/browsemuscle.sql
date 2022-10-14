/*  Base de dados BrowseMuscle */

-- Criar base de dados

create database BrowseMuscle;
use BrowseMuscle;

-- Estrutura da tabela musculos

create table `musculos` (
    `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(100) NOT NULL
);

-- Estrutura da tabela equipamentos

create table `equipamentos` (
    `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(100) NOT NULL
);

-- Estrutura da tabela dificuldades

create table `dificuldades` (
    `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(100) NOT NULL
);

-- Estrutura da tabela exercícios

create table `exercícios` (
    `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(100) NOT NULL,
    `equipamento_id` int(6) NOT NULL,
    `dificuldade_id` int(6) NOT NULL,
    `musculo_id` int(6) NOT NULL,

    FOREIGN KEY (equipamento_id) REFERENCES equipamentos(id),
    FOREIGN KEY (dificuldade_id) REFERENCES dificuldade_id(id),
    FOREIGN KEY (musculos_id) REFERENCES musculos(id)
);

