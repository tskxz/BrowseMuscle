const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para antebraco
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM antebraco', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}