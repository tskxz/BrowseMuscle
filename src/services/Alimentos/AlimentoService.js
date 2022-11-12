const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar a tabela de exercícios avancado
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM alimentos', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error);return;}
				aceito(results)
			})
		})
	},

	inserir: (nome, proteina, carbs, gordura, calorias) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO alimentos (nome, proteina, carbs, gordura, calorias) VALUES (?,?,?,?,?);', [
				nome,
				proteina,
				carbs,
				gordura,
				calorias
			], (error, results) => {
				if(error){
					rejeitado(error);
					return;
				}
				aceito(results.insertId)
			})
		})
	},

	alterar: (id, nome, proteina, carbs, gordura, calorias) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE alimentos SET nome = ?, proteina = ?, carbs = ?, gordura = ?, calorias=? WHERE id = ?', [nome, proteina, carbs, gordura, calorias, id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}

}