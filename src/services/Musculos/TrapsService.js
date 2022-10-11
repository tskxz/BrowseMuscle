const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os exercícios para traps
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM traps', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}