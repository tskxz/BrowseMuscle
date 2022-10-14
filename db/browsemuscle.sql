    /*  Base de dados BrowseMuscle */

    -- Criar base de dados

    create database BrowseMuscle;
    use BrowseMuscle;

    -- Estrutura da tabela musculos

    create table `musculos` (
        `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nome` varchar(100) NOT NULL
    )ENGINE=INNODB;

    -- Estrutura da tabela equipamentos

    create table `equipamentos` (
        `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nome` varchar(100) NOT NULL
    )ENGINE=INNODB;

    -- Estrutura da tabela dificuldades

    create table `dificuldades` (
        `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nome` varchar(100) NOT NULL
    )ENGINE=INNODB;

    -- Estrutura da tabela exercicios

    create table `exercicios` (
        `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nome` varchar(100) NOT NULL,
        `equipamento_id` int(6) NOT NULL,
        `dificuldade_id` int(6) NOT NULL,
        `musculo_id` int(6) NOT NULL
    )ENGINE=INNODB;

    -- Relações
    ALTER TABLE `exercicios` ADD FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
    ALTER TABLE `exercicios` ADD FOREIGN KEY (`dificuldade_id`) REFERENCES `dificuldades`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
    ALTER TABLE `exercicios` ADD FOREIGN KEY (`musculo_id`) REFERENCES `musculos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;