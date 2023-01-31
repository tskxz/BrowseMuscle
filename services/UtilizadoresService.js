const db = require('../mysql'); // Conexao a base de dados
const bcrypt = require('bcrypt')

module.exports = {

	// Serviço para visualizar todos os Utilizadores existentes
	buscarTodos: () => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Utilizadores.id, Utilizadores.primeiro_nome AS primeiro_nome, Utilizadores.ultimo_nome as ultimo_nome, Utilizadores.email as email, Utilizadores.username as username, Utilizadores.num_telemovel as num_telemovel, Cargos.nome as cargo FROM Utilizadores JOIN Cargos ON Utilizadores.id_cargo = Cargos.id', (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			});
		});
	},


	// Serviço para visualizar somente um utilizador através do ID
	buscarUm: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Utilizadores WHERE id = ? ', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results[0]);
				} else {
					aceito(false);
				}
			});
		});
	},

	pesquisarUtilizador: (pesquisa) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT Utilizadores.id, Utilizadores.primeiro_nome AS primeiro_nome, Utilizadores.ultimo_nome as ultimo_nome, Utilizadores.email as email, Utilizadores.username as username, Utilizadores.num_telemovel as num_telemovel, Cargos.nome as cargo FROM Utilizadores JOIN Cargos ON Utilizadores.id_cargo = Cargos.id WHERE username LIKE ? OR primeiro_nome LIKE ? OR ultimo_nome LIKE ?', ['%' + pesquisa + '%', '%' + pesquisa + '%', '%' + pesquisa + '%'], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para buscar utilizador através do username
	buscarUsername: (username) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Utilizadores WHERE username = ?', [username], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para buscar utilizador através do email
	buscarEmail: (email) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Utilizadores WHERE email = ?', [email], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para buscar as informações através do username
	login: (username) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM Utilizadores WHERE username = ?', [username], (error, results) => {
				if (error) { rejeitado(error); return; }
				if (results.length > 0) {
					aceito(results[0]);
				} else {
					aceito(false);
				}
			})
		})
	},

	// Serviço para inserir e criar o utilizador
	criar: (username, primeiro_nome, ultimo_nome, email, num_telemovel, password) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Utilizadores (username, primeiro_nome, ultimo_nome, email, num_telemovel, password) VALUES(?,?,?,?,?,?);',
				[
					username, primeiro_nome, ultimo_nome, email, num_telemovel, password
				],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},

	// Serviço para alterar dados com o cargo do utilizador através do ID
	alterar_user: (id, primeiro_nome, ultimo_nome, email, num_telemovel, descricao, id_cargo) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Utilizadores SET primeiro_nome = ?, ultimo_nome = ?, email = ?, num_telemovel = ?, descricao = ?, id_cargo=? WHERE id = ?',
				[primeiro_nome, ultimo_nome, email, num_telemovel, descricao, id_cargo, id],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	// Serviço para alterar dados do utilizador através do ID
	alterar: (id, primeiro_nome, ultimo_nome, email, num_telemovel, descricao) => {
		return new Promise((aceito, rejeitado) => {
			db.query('UPDATE Utilizadores SET primeiro_nome = ?, ultimo_nome = ?, email = ?, num_telemovel = ?, descricao = ? WHERE id = ?',
				[primeiro_nome, ultimo_nome, email, num_telemovel, descricao, id],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	// Serviço para alterar foto do utilizador
	alterar_foto: (id, foto) => {
		return new Promise((aceito, rejeitado) => {
			db.query('update Utilizadores SET foto = ? where id=?',
				[foto, id],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	// Serviço para mudar a palavra passe do utilizador
	mudar_pass: (id, password) => {
		return new Promise((aceito, rejeitado) => {
			db.query('update Utilizadores SET password = ? where id=?',
				[password, id],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results);
				})
		})
	},

	// Serviço para apagar utilizador
	apagar: (id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('DELETE FROM Utilizadores WHERE id = ?', [id], (error, results) => {
				if (error) { rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}
