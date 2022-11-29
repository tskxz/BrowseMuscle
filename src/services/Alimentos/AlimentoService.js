const db = require('../../mysql');

module.exports = {

	// Serviço para visualizar todos os alimentos existentes dentro da tabela
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT Marcas.nome as marca, alimentos.id as alimento_id, alimentos.nome as nome, alimentos.proteina as proteina, alimentos.carbs as carbs, alimentos.gordura as gordura, alimentos.calorias as calorias FROM alimentos JOIN Marcas ON alimentos.id_marca', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	// Serviço para visualizar um alimento através do ID
	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error);return;}
				aceito(results)
			})
		})
	},

	// Serviço para inserir alimento através dos valores
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

	// Serviço para alterar os valores de um alimento através do parametro ID
	alterar: (id, nome, proteina, carbs, gordura, calorias) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE alimentos SET nome = ?, proteina = ?, carbs = ?, gordura = ?, calorias=? WHERE id = ?', [nome, proteina, carbs, gordura, calorias, id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	// Serviço apagar alimento através do ID
	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}

}