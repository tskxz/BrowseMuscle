const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar a tabela exercícios com barra
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM barra', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}