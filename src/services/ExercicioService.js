const db = require('../mysql'); // Conexao a base de dados

module.exports = {

	// Funcao para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Funcao para visualizar um exercício
	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.id=? ', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			});
		});
	},

	// Funcao pesquisar
	pesquisarExercicio:(pesquisa) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.nome LIKE ? ', ['%' + pesquisa + '%'], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			})
		})
	},

	editar:(id) => {
		return new Promise((aceito ,rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			})
		})
	},

	buscarEquipamento:(equipamento_id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.equipamento_id=?', [equipamento_id], (error, results) => {
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
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.dificuldade_id=?', [dificuldade_id], (error, results) => {
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
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.musculo_id=?', [musculo_id], (error, results) => {
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
