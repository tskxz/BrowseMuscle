const db = require('../mysql');

module.exports = {

	// Funcao para visualizar os musculos
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM ombros', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}