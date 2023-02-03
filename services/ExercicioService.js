const db = require('../mysql'); // Conexao a base de dados

module.exports = {

	// Serviço para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id', (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},


	// Serviço para visualizar um exercício
	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Exercicios.descricao as descricao, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id WHERE Exercicios.id=? ', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},


	// Serviço para pesquisar um nome do exercício para obter um resultado mais próximo ao nome
	pesquisarExercicio: (pesquisa) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id WHERE Exercicios.nome LIKE ? ', ['%' + pesquisa + '%'], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para buscar todos os exercícios através do equipamento
	buscarEquipamento: (equipamento_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id WHERE Exercicios.equipamento_id=?', [equipamento_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Serviço para buscar todos os exercícios através da dificuldade
	buscarDificuldade: (dificuldade_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id WHERE Exercicios.dificuldade_id=?', [dificuldade_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Serviço para buscar todos os exercícios através do músculo
	buscarMusculo: (musculo_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.id, Exercicios.nome AS exercicio, Equipamentos.nome as equipamento, Dificuldades.nome as dificuldade, Musculos.nome as musculo, Exercicios.equipamento_id, Exercicios.dificuldade_id, Exercicios.musculo_id FROM Exercicios JOIN Equipamentos ON Exercicios.equipamento_id = Equipamentos.id JOIN Dificuldades ON Exercicios.dificuldade_id = Dificuldades.id JOIN Musculos ON Exercicios.musculo_id = Musculos.id WHERE Exercicios.musculo_id=?', [musculo_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Serviço para inserir um exercício
	inserir: (nome, equipamento_id, dificuldade_id, musculo_id, descricao) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Exercicios (nome, equipamento_id, dificuldade_id, musculo_id, descricao) VALUES(?,?,?,?,?);',
				[
					nome, equipamento_id, dificuldade_id, musculo_id,descricao
				],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},


	// Serviço para alterar dados do exercício através do ID
	alterar: (id, nome, equipamento_id, dificuldade_id, musculo_id, descricao) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Exercicios SET nome = ?, equipamento_id = ?, dificuldade_id = ?, musculo_id = ?, descricao = ? WHERE id = ?',
				[nome, equipamento_id, dificuldade_id, musculo_id, descricao, id],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	// Serviço para apagar um exercício através do ID
	apagar: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('DELETE FROM Exercicios WHERE id = ?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}
