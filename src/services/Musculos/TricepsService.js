const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para triceps
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM triceps', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}