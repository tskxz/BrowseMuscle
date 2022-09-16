const db = require('../mysql');

module.exports = {

	// Funcao para visualizar os musculos
	visualizarTodos: () => {
		return new Promise( (aceito, reijeitado) =>{
			db.query('SELECT * FROM musculo', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}