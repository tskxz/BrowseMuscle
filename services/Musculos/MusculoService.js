const db = require('../../mysql');

module.exports = {

	// Serviço para visualizar todos os músculos
	visualizarTodos: () => {
		return new Promise( (aceito, reijeitado) =>{
			db.query('SELECT * FROM Musculos', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}