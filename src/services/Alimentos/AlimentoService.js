const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar a tabela de exercícios avancado
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM alimentos', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}