INSERT INTO `dificuldades` (`id`, `nome`) VALUES
(1, 'iniciante'),
(2, 'intermediario'),
(3, 'avancado');

INSERT INTO `equipamentos` (`id`, `nome`) VALUES
(1, 'barra'),
(2, 'halteres'),
(3, 'maquina'),
(4, 'cabos'),
(5, 'peso corporal');

INSERT INTO `musculos` (`id`, `nome`) VALUES
(1, 'peito'),
(2, 'ombro'),
(3, 'tricep'),
(4, 'costas'),
(5, 'dorsal'),
(6, 'trapezio'),
(7, 'bicep'),
(8, 'quadricep'),
(9, 'hamstring'),
(10, 'gemeo'),
(11, 'antebraco'),
(12, 'gluteo'),
(13, 'abdominais');

INSERT INTO `cargos` (`id`, `nome`) VALUES ('1', 'BASICO');
INSERT INTO `cargos` (`id`, `nome`) VALUES ('2', 'ADMIN');

INSERT INTO `Marcas` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES (NULL, 'Prozis', CURRENT_DATE(), CURRENT_DATE()), (NULL, 'MyProtein', CURRENT_DATE(), CURRENT_DATE())