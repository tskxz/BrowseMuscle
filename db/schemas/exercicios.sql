create table `exercicios` (
    `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` varchar(100) NOT NULL,
    `equipamento_id` int(6) NOT NULL,
    `dificuldade_id` int(6) NOT NULL,
    `musculo_id` int(6) NOT NULL
)ENGINE=INNODB;