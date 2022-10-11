const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para quadriceps
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM quadriceps', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}