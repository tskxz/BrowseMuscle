CREATE TABLE `cargos` (
    `id` INT(6) NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL ,
    PRIMARY KEY (`id`)
) 
ENGINE = InnoDB;

INSERT INTO `cargos` (`id`, `nome`) VALUES ('1', 'BASICO');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('2', 'ADMIN');