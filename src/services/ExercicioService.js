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

	buscarEquipamento:(equipamento_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE equipamento_id = ? ', [equipamento_id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	buscarDificuldade:(dificuldade_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE dificuldade_id = ? ', [dificuldade_id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	buscarMusculo:(musculo_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE musculo_id = ? ', [musculo_id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Funcao para inserir exercício
	
	inserir: (nome, equipamento_id, dificuldade_id, musculo_id)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO exercicios (nome, equipamento_id, dificuldade_id, musculo_id) VALUES(?,?,?,?);',
				[
					nome, equipamento_id, dificuldade_id, musculo_id,
				],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},


	// Funcao para alterar um exercício
	alterar: (id, nome, equipamento_id, dificuldade_id, musculo_id)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE exercicios SET nome = ?, equipamento_id = ?, dificuldade_id = ?, musculo_id = ? WHERE id = ?',
				[nome, equipamento_id, dificuldade_id, musculo_id, id],
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
