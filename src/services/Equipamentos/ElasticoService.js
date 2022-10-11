const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar tabela exercícios elástico
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM elastico', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}