const db = require('../mysql');

module.exports = {

	// Serviço para inserir e criar o utilizador
	criar: (nome, descricao, userid) => {
		return new Promise((aceito, rejeitado) => {
			db.query('INSERT INTO Sessao_Treinos (nome, descricao, utilizador_id) VALUES(?,?,?);',
				[
					nome, descricao, userid
				],
				(error, results) => {
					if (error) { rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},
}