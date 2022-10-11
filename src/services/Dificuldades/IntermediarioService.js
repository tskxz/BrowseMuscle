const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar tabela exercícios intermediários
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM intermediario', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}