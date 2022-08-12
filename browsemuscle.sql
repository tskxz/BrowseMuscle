/* Nome do projeto */

CREATE DATABASE BrowseMuscle;

/* Grupo Muscular */

CREATE TABLE Ombros(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Peito(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Costas(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Lats(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Quadriceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Hamstrings(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Gemeos(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Antebraco(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Biceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Triceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Abdominais(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Traps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

/* Tabela Equipamentos */

CREATE TABLE Equipamentos(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Bodyweight(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_dificuldade varchar(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Maquina(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_dificuldade varchar(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Halteres(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_dificuldade varchar(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Elastico(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_dificuldade varchar(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Cabos(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_dificuldade varchar(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

/* Tabela dificuldades */

CREATE TABLE Dificuldades(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Iniciante(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio varchar(100) NOT NULL,
	nome_equipamento varchar(100) not null,
	nome_dificuldade varchar(100) not null,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Intermediario(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio varchar(100) NOT NULL,
	nome_equipamento varchar(100) not null,
	nome_dificuldade varchar(100) not null,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Exercicios_Avancado(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio varchar(100) NOT NULL,
	nome_equipamento varchar(100) not null,
	nome_dificuldade varchar(100) not null,
	nome_musculo VARCHAR(100) NOT NULL
);

/*
+--------------------------+
| Tables_in_browsemuscle   |
+--------------------------+
| abdominais               |
| antebraco                |
| biceps                   |
| costas                   |
| dificuldades             |
| equipamentos             |
| exercicios_avancado      |
| exercicios_bodyweight    |
| exercicios_cabos         |
| exercicios_elastico      |
| exercicios_halteres      |
| exercicios_iniciante     |
| exercicios_intermediario |
| exercicios_maquina       |
| gemeos                   |
| hamstrings               |
| lats                     |
| ombros                   |
| peito                    |
| quadriceps               |
| traps                    |
| triceps                  |
+--------------------------+
*/


/* UPDATE 11/08/2022 */

CREATE TABLE exercicios(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_exercicio VARCHAR(100) NOT NULL,
	nome_equipamento VARCHAR(100) NOT NULL,
	nome_dificuldade VARCHAR(100) NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Musculo(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome_musculo VARCHAR(100) NOT NULL
);

/* Adicionar tipo unico da tabela musculo e adicionar chave estrangeira nome do musculo para a tabela exercicios */

ALTER TABLE `browsemuscle`.`musculo` ADD UNIQUE (`nome_musculo`);
ALTER TABLE `exercicios` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar tipo unico da tabela dificuldades e adicionar chave estrangeira nome da dificuldade para a tabela exercícios */

ALTER TABLE `browsemuscle`.`dificuldades` ADD UNIQUE (`nome`);
ALTER TABLE `exercicios` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar tipo unico da tabela equipamentos e adicionar chave estrangeira nome do equipamento para a tabela exercícios */

ALTER TABLE `browsemuscle`.`equipamentos` ADD UNIQUE (`nome`);
ALTER TABLE `exercicios` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;