const db = require('../mysql');

module.exports = {
	visualizarTodos: () => {
		return new Promise( (aceito, reijeitado) =>{
			db.query('SELECT * FROM link', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}