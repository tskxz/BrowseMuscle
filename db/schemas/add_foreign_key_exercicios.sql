ALTER TABLE `exercicios` ADD FOREIGN KEY (`equipamento_id`) REFERENCES `equipamentos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `exercicios` ADD FOREIGN KEY (`dificuldade_id`) REFERENCES `dificuldades`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `exercicios` ADD FOREIGN KEY (`musculo_id`) REFERENCES `musculos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;