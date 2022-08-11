/* Nome do projeto */

CREATE DATABASE BrowseMuscle;

/* Grupo Muscular */

CREATE TABLE Ombros(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Peito(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Costas(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Lats(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Quadriceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Hamstrings(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Gemeos(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Antebraco(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Biceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);

CREATE TABLE Triceps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Abdominais(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
);
CREATE TABLE Traps(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	equipamento VARCHAR(100) NOT NULL,
	dificuldade VARCHAR(100) NOT NULL,
	musculo VARCHAR(100) NOT NULL
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

22 rows
*/

/* Adicionar a chave estrangeira equipamento para todas as tabelas musculares*/

ALTER TABLE `browsemuscle`.`equipamentos` ADD UNIQUE (`nome`);

ALTER TABLE `ombros` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `peito` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `quadriceps` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `traps` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `triceps` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `lats` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `hamstrings` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `gemeos` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `costas` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `biceps` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `antebraco` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `abdominais` ADD FOREIGN KEY (`equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;


/* Adicionar chave estrangeira dificuldade para todas as tabelas */

ALTER TABLE `browsemuscle`.`dificuldades` ADD UNIQUE (`nome`);

ALTER TABLE `abdominais` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `antebraco` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `biceps` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `costas` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `gemeos` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `hamstrings` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `lats` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `ombros` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `peito` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `quadriceps` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `traps` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `triceps` ADD FOREIGN KEY (`dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;


/* Adicionar a chave estrangeira nome, dificuldade e equipamento para cada tabela de dificuldades */

ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
	nome VARCHAR(100) NOT NULL
);