const db = require('../../mysql');

module.exports = {

	// Serviço para visualizar todos os Alimentos existentes dentro da tabela
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT Alimentos.id, Alimentos.nome AS alimento, Alimentos.proteina as proteina, Alimentos.carbs as carbs, Alimentos.gordura as gordura, Alimentos.calorias as calorias, Marcas.nome as marca FROM Alimentos JOIN Marcas ON Alimentos.id_marca = Marcas.id', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	// Serviço para visualizar um alimento através do ID
	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error);return;}
				aceito(results)
			})
		})
	},

	// Serviço para visualizar um alimento através do ID com inner join da marca
	buscarUmAlimento: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Alimentos.id, Alimentos.nome AS alimento, Alimentos.proteina as proteina, Alimentos.carbs as carbs, Alimentos.gordura as gordura, Alimentos.calorias as calorias, Marcas.nome as marca FROM Alimentos JOIN Marcas ON Alimentos.id_marca = Marcas.id WHERE Alimentos.id = ?', [id], (error, results) => {
				if(error){rejeitado(error);return;}
				aceito(results)
			})
		})
	},

	// Serviço para inserir alimento através dos valores
	inserir: (nome, proteina, carbs, gordura, calorias, id_marca) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Alimentos (nome, proteina, carbs, gordura, calorias, id_marca) VALUES (?,?,?,?,?,?);', [
				nome,
				proteina,
				carbs,
				gordura,
				calorias,
				id_marca
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
			db.query('UPDATE Alimentos SET nome = ?, proteina = ?, carbs = ?, gordura = ?, calorias=? WHERE id = ?', [nome, proteina, carbs, gordura, calorias, id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	// Serviço apagar alimento através do ID
	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM Alimentos WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	pesquisarAlimento:(pesquisa) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Alimentos.id, Alimentos.nome AS alimento, Alimentos.proteina as proteina, Alimentos.carbs as carbs, Alimentos.gordura as gordura, Alimentos.calorias as calorias, Marcas.nome as marca FROM Alimentos JOIN Marcas ON Alimentos.id_marca = Marcas.id WHERE Alimentos.nome LIKE ? ', ['%' + pesquisa + '%'], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results);
				} else {
					aceito(false);
				}
			})
		})
	},

}