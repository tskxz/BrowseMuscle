const db = require('../../mysql'); // Conexao a base de dados
const bcrypt = require('bcrypt')

module.exports = {

	// Serviço para visualizar todos os utilizadores existentes
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT * FROM utilizadores', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},


	// Serviço para visualizar somente um utilizador através do ID
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

	// Serviço para buscar somente um utilizador através do username
	buscarUsername:(username) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM utilizadores WHERE username = ?', [username], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	buscarEmail:(email) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM utilizadores WHERE email = ?', [email], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para buscar as informações através do username
	login:(username) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM utilizadores WHERE username = ?', [username], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para inserir e criar o utilizador
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
