const db = require('../mysql'); // Conexao a base de dados

module.exports = {

	// Funcao para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT * FROM alimentos', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Funcao para visualizar um exercício
	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM alimentos WHERE id = ? ', [id], (error, results) => {
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
	inserir: (nome, proteina, carbs, gordura, calorias)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO alimentos (nome, proteina, carbs, gordura, calorias) VALUES(?,?,?,?,?)',
				[
					nome, proteina, carbs, gordura, calorias
				],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},


	// Funcao para alterar um exercício
	alterar: (id, nome, proteina, carbs, gordura, calorias)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE alimentos SET nome = ?, proteina = ?, carbs = ?, gordura = ?, calorias= ? WHERE id = ?',
				[nome, proteina, carbs, gordura, calorias, id],
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
			db.query('DELETE FROM alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}
