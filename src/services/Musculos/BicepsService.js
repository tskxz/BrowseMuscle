const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para biceps
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM biceps', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}