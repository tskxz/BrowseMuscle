const db = require('../mysql');

module.exports = {

	// Serviço para inserir e criar sessão de treino
	criar: (nome, descricao, userid) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Sessao_Treinos (nome, descricao, utilizador_id) VALUES(?,?,?);',
				[
					nome, descricao, userid
				],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},


    buscarTodos_user: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Sessao_Treinos WHERE utilizador_id = ?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
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
			db.query('SELECT * FROM Sessao_Treinos WHERE id=?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				};
			});
		});
	},

	apagar: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('DELETE FROM Sessao_Treinos WHERE id = ?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			})
		})
	},

	// Definir objetivo - Exercicio, Reps, Series, Carga
	definir_objetivo_exercicio:(id_sessao, exercicio_id, carga, reps_objetivo, series) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Sessao_Treinos SET exercicio_id = ?, carga = ?, reps_objetivo = ?, series=? WHERE id=?;',
				[exercicio_id, carga, reps_objetivo, series, id_sessao], (error, results)=>{
					if(error){rejeitado(error);return;};
					aceito(results);
				})
		})
	}
}