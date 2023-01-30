const db = require('../mysql');

module.exports = {

	// Serviço para inserir e criar sessão de treino
	criar: (id_sessao, nome, descricao, userid) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Sessao_Treinos (id_sessao, nome, descricao, utilizador_id) VALUES(?,?,?,?);',
				[
					id_sessao, nome, descricao, userid
				],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},

	buscar_nome_exercicio: (id_sessao)=>{
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Exercicios.nome, carga, series, reps_objetivo, exercicio_id, concluido, id_sessao FROM Sessao_Treinos JOIN Exercicios ON Sessao_Treinos.exercicio_id = Exercicios.id WHERE Sessao_Treinos.id_sessao = ?',
				[id_sessao],
				(error, results) => {
					if(error){rejeitado(error);return;}
					aceito(results)
				})
		})
	},

    buscarTodos_user: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT id_sessao, nome, descricao, createdAt, estado, COUNT(*) FROM Sessao_Treinos WHERE utilizador_id = ? GROUP BY id_sessao, nome, descricao, createdAt, estado', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},

	buscar_nome: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT nome FROM Sessao_Treinos WHERE id_sessao = ?;', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},


	buscarTodos_sessao: (id_sessao) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Sessao_Treinos WHERE id_sessao = ?', [id_sessao], (error, results) => {
				if(error){rejeitado(error);return;}
				aceito(results);
			})
		})
	},

	buscarTodos_user_nome: (userid, id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Sessao_Treinos WHERE utilizador_id = ? AND nome = ?', 
			[userid, id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},

	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Sessao_Treinos WHERE id_sessao=?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				};
			});
		});
	},

	buscarUmSessaoExercicio: (id_sessao, exercicio_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Sessao_Treinos.*, Exercicios.nome as exercicio_nome FROM Sessao_Treinos JOIN Exercicios ON Sessao_Treinos.exercicio_id = Exercicios.id WHERE Sessao_Treinos.id_sessao = ? AND Sessao_Treinos.exercicio_id = ?', [id_sessao, exercicio_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				};
			});
		});
	},

	concluirExercicio: (id_sessao, exercicio_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Sessao_Treinos SET concluido = 1, estado = 2 WHERE id_sessao = ? AND exercicio_id = ?', [id_sessao, exercicio_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},

	emProgresso: (id_sessao) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Sessao_Treinos SET estado = 2 WHERE id_sessao = ?', [id_sessao], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},

	definirReps: (reps_set1, reps_set2, reps_set3, reps_set4, reps_set5, id_sessao, exercicio_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Sessao_Treinos SET reps_set1 = ?, reps_set2 = ?, reps_set3 = ?, reps_set4 = ?, reps_set5 = ? WHERE id_sessao = ? AND exercicio_id = ?', [reps_set1, reps_set2, reps_set3, reps_set4, reps_set5, id_sessao, exercicio_id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},

	apagar: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('DELETE FROM Sessao_Treinos WHERE id_sessao = ?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			})
		})
	},

	// Definir objetivo - Exercicio, Reps, Series, Carga
	definir_objetivo_exercicio:(id_sessao, utilizador_id, exercicio_id, carga, reps_objetivo, series, nome, descricao, createdAt) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Sessao_Treinos (id_sessao, utilizador_id, exercicio_id, carga, reps_objetivo, series, nome, descricao, createdAt) VALUES(?,?,?,?,?,?,?,?,?);',
				[id_sessao, utilizador_id, exercicio_id, carga, reps_objetivo, series, nome,descricao,createdAt], (error, results)=>{
					if(error){rejeitado(error);return;};
					aceito(results);
				})
		})
	}
}