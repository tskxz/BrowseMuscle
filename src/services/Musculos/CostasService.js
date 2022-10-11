const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para costas
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM costas', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}