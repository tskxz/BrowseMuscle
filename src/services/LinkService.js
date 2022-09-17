const db = require('../mysql');

module.exports = {

	// Funcao para visualizar todos os links
	visualizarTodos: () => {
		return new Promise( (aceito, reijeitado) =>{
			db.query('SELECT * FROM link', (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results);
			})
		})
	},

	// Funcao para inserir link
	inserir: (link) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO link (link) VALUES (?)', [link], (error, results) => {
				if(error){rejeitado(error); return;}
				aceito(results.insertId);
			})
		})
	}
}