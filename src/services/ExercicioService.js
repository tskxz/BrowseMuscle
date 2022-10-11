const db = require('../mysql'); // Conexao a base de dados

module.exports = {

	// Funcao para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT * FROM exercicios', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Funcao para visualizar um exercício
	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE id = ? ', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Funcao para inserir exercício
	
	// Insere o dado nas várias tabela -> exercício, músculo, equipamento e dificuldade 
	inserir: (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO exercicios (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) VALUES(?,?,?,?); INSERT INTO ?? (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) VALUES (?,?,?,?); INSERT INTO ?? (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) VALUES (?,?,?,?); INSERT INTO ?? (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) VALUES (?,?,?,?);',
				[
					nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo,
					nome_musculo, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo,
					nome_equipamento, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo,
					nome_dificuldade, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo
				],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},


	// Funcao para alterar um exercício
	alterar: (id, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE exercicios SET nome_exercicio = ?, nome_equipamento = ?, nome_dificuldade = ?, nome_musculo = ? WHERE id = ?',
				[nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, id],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	// Funcao para apagar um exercício
	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM exercicios WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}
