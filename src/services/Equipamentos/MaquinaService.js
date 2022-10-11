const db = require('../../mysql');

module.exports = {

	// Funcao para visualizar a tabela exercícios maquina
	visualizarTodos: () => {
		return new Promise( (aceito, rejeitado) =>{
			db.query('SELECT * FROM maquina', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	}
}