const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar tabela exercícios cabos
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM cabos', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}