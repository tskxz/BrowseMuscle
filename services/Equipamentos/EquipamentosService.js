const db = require('../../mysql');

module.exports = {

	// Serviço para visualizar todos os equipamentos
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM equipamentos', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}