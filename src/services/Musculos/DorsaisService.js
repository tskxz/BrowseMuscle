const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para dorsais
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM lats', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}