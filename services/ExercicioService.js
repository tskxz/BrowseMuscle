const db = require('../mysql'); // Conexao a base de dados

module.exports = {

	// Serviço para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Serviço para visualizar um exercício
	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT exercicios.id, exercicios.nome AS exercicio, equipamentos.nome as equipamento, dificuldades.nome as dificuldade, musculos.nome as musculo, exercicios.equipamento_id, exercicios.dificuldade_id, exercicios.musculo_id FROM exercicios JOIN equipamentos ON exercicios.equipamento_id = equipamentos.id JOIN dificuldades ON exercicios.dificuldade_id = dificuldades.id JOIN musculos ON exercicios.musculo_id = musculos.id WHERE exercicios.id=? ', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			});
		});
	},


	// Serviço para pesquisar um nome do exercício para obter um resultado mais próximo ao nome
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

	// Serviço para buscar todos os exercícios através do equipamento
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

	// Serviço para buscar todos os exercícios através da dificuldade
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

	// Serviço para buscar todos os exercícios através do músculo
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

	// Serviço para inserir um exercício
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


	// Serviço para alterar dados do exercício através do ID
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

	// Serviço para apagar um exercício através do ID
	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM exercicios WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}
