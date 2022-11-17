const db = require('../../mysql');

module.exports = {

	// Serviço para visualizar todas as dificuldades
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM dificuldades', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}