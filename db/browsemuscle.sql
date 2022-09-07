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

CREATE TABLE Gluteo(
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

CREATE TABLE Exercicios_Barra(
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

/* Adicionar tipo unico da tabela exercicios */
ALTER TABLE `browsemuscle`.`exercicios` ADD UNIQUE (`nome_exercicio`);


/* GRUPOS MUSCULARES */

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela abdominais */

ALTER TABLE `abdominais` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `abdominais` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `abdominais` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `abdominais` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela antebraco */

ALTER TABLE `antebraco` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `antebraco` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `antebraco` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `antebraco` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela biceps */

ALTER TABLE `biceps` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `biceps` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `biceps` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `biceps` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela costas */

ALTER TABLE `costas` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `costas` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `costas` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `costas` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela gluteo */

ALTER TABLE `gluteo` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gluteo` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gluteo` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gluteo` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela gemeos */

ALTER TABLE `gemeos` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gemeos` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gemeos` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `gemeos` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela hamstrings */

ALTER TABLE `hamstrings` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `hamstrings` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `hamstrings` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `hamstrings` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela lats */

ALTER TABLE `lats` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `lats` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `lats` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `lats` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela ombros */

ALTER TABLE `ombros` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `ombros` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `ombros` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `ombros` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela peito */

ALTER TABLE `peito` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `peito` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `peito` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `peito` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela quadriceps */

ALTER TABLE `quadriceps` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `quadriceps` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `quadriceps` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `quadriceps` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela traps */

ALTER TABLE `traps` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `traps` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `traps` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `traps` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela triceps */

ALTER TABLE `triceps` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `triceps` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `triceps` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `triceps` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* EQUIPAMENTOS */

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_cabos */

ALTER TABLE `exercicios_cabos` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_cabos` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_cabos` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_cabos` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_bodyweight */

ALTER TABLE `exercicios_bodyweight` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_bodyweight` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_bodyweight` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_bodyweight` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_elastico */

ALTER TABLE `exercicios_elastico` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_elastico` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_elastico` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_elastico` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_halteres */

ALTER TABLE `exercicios_halteres` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_halteres` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_halteres` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_halteres` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_maquina */

ALTER TABLE `exercicios_maquina` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_maquina` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_maquina` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_maquina` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `exercicios_barra` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_barra` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_barra` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_barra` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar as chaves estrangeiras dos campos (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) na tabela exercicios_iniciante */

ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `exercicios_intermediario` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_intermediario` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_intermediario` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_intermediario` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `exercicios_avancado` ADD FOREIGN KEY (`nome_dificuldade`) REFERENCES `dificuldades`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_avancado` ADD FOREIGN KEY (`nome_equipamento`) REFERENCES `equipamentos`(`nome`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `exercicios_avancado` ADD FOREIGN KEY (`nome_exercicio`) REFERENCES `exercicios`(`nome_exercicio`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `Exercicios_Avancado` ADD FOREIGN KEY (`nome_musculo`) REFERENCES `musculo`(`nome_musculo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Adicionar coluna link */

/*ALTER TABLE `exercicios` ADD `link` VARCHAR(500) NOT NULL ;*/
ALTER TABLE `exercicios` ADD `link_url` VARCHAR(500) NOT NULL , ADD INDEX (`link_url`(500));

ALTER TABLE `abdominais` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `antebraco` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `biceps` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `costas` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_avancado` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_barra` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_bodyweight` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_cabos` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_elastico` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_halteres` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_iniciante` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_intermediario` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `exercicios_maquina` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `gemeos` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `gluteo` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `hamstrings` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `lats` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `ombros` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `peito` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `quadriceps` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `traps` ADD `link` VARCHAR(500) NOT NULL ;
ALTER TABLE `triceps` ADD `link` VARCHAR(500) NOT NULL ;

/* Criar tabela link */
CREATE TABLE link(
	id INT(6) AUTO_INCREMENT PRIMARY KEY NOT NULL,
	link varchar(500) NOT NULL
);

/* Chave estrangeira link */

ALTER TABLE `browsemuscle`.`link` ADD UNIQUE (`link`(500));

/* Adicionar relação link em todas as tabelas exercícios e grupos musculares */

ALTER TABLE `browsemuscle`.`exercicios` ADD INDEX (`link`(500));

/* Adicionar relacao na tabela exercícios */
SET GLOBAL FOREIGN_KEY_CHECKS=0;
ALTER TABLE `exercicios` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `costas` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `biceps` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `antebraco` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `abdominais` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_avancado` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_barra` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_bodyweight` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_cabos` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_elastico` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_halteres` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_iniciante` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_intermediario` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exercicios_maquina` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `gemeos` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `gluteo` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `hamstrings` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `lats` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `ombros` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `peito` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `quadriceps` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `traps` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `triceps` CHANGE `link` `link_url` VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `costas` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `biceps` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `antebraco` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `abdominais` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_avancado` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_barra` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_bodyweight` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_cabos` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_elastico` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_halteres` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_iniciante` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_intermediario` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `exercicios_maquina` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `gemeos` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `gluteo` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `hamstrings` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `lats` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `ombros` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `peito` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `quadriceps` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `traps` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `triceps` ADD FOREIGN KEY (`link_url`) REFERENCES `link`(`link`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* Mudar os nomes das tabelas */

/* Dificuldades */
RENAME TABLE `browsemuscle`.`exercicios_avancado` TO `browsemuscle`.`avancado`;
	RENAME TABLE `browsemuscle`.`exercicios_iniciante` TO `browsemuscle`.`iniciante`;
	RENAME TABLE `browsemuscle`.`exercicios_intermediario` TO `browsemuscle`.`intermediario`;


/* Equipamentos */
	RENAME TABLE `browsemuscle`.`exercicios_maquina` TO `browsemuscle`.`maquina`;
	RENAME TABLE `browsemuscle`.`exercicios_bodyweight` TO `browsemuscle`.`bodyweight`;
	RENAME TABLE `browsemuscle`.`exercicios_cabos` TO `browsemuscle`.`cabos`;
	RENAME TABLE `browsemuscle`.`exercicios_halteres` TO `browsemuscle`.`halteres`;
	RENAME TABLE `browsemuscle`.`exercicios_elastico` TO `browsemuscle`.`elastico`;
	RENAME TABLE `browsemuscle`.`exercicios_barra` TO `browsemuscle`.`barra`;
