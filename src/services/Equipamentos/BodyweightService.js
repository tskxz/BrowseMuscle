const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar a tabela exercícios bodyweight
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM bodyweight', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}