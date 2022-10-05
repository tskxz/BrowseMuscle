const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar os musculos
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM peito', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}