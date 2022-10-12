/* Converter para FULLTEXT  para ter possibilidade de ter mesmo nome de exercício mas equipamentos ou dificuldades ou musculos diferentes */

/* Grupos musculares */
ALTER TABLE `browsemuscle`.`quadriceps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`triceps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`abdominais` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`triceps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`peito` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`ombros` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`costas` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`lats` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`traps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`biceps` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`hamstrings` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`gemeos` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);
ALTER TABLE `browsemuscle`.`antebraco` DROP INDEX `nome_exercicio`, ADD FULLTEXT `nome_exercicio` (`nome_exercicio`);