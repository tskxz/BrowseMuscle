const db = require('../mysql');

module.exports = {

	// Funcao para visualizar os utilizadors
	visualizarTodos: () => {
		return new Promise( (aceito, reijeitado) =>{
			db.query('SELECT * FROM utilizadores', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}