const db = require('../../mysql'); // Conexao a base de dados

module.exports = {

	// Funcao para visualizar todos os exercícios
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT * FROM utilizadores', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Funcao para visualizar um exercício
	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM utilizadores WHERE id = ? ', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			});
		});
	},

    criar: (username, primeiro_nome, ultimo_nome, email, num_telemovel, password)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO utilizadores (username, primeiro_nome, ultimo_nome, email, num_telemovel, password) VALUES(?,?,?,?,?,?);',
				[
				username, primeiro_nome, ultimo_nome, email, num_telemovel, password
				],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
				);
		})
	},

}
