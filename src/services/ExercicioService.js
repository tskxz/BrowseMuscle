const db = require('../mysql');	

module.exports = {
	buscarTodos: () => {
		return new Promise((aceito, rejeitado)=>{
			db.query('SELECT * FROM exercicios', (error, results)=>{
				if(error){rejeitado(error); return;}
				aceito(results);
			});
		});
	},

	buscarUm:(id) => {
		return new Promise((aceito, rejeitado) => {
			db.query('SELECT * FROM exercicios WHERE id = ? ', [id], (error, results) => {
				if(error){rejeitado(error); return;}
				if(results.length > 0){
					aceito(results[0]);
				} else {
					aceito(false);
				}
			});
		});
	},
	
	inserir: (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO exercicios (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link) VALUES(?,?,?,?,?); INSERT INTO ?? (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link) VALUES (?,?,?,?,?)', 
				[nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link, nome_musculo, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	},

	alterar: (id, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('UPDATE exercicios SET nome_exercicio = ?, nome_equipamento = ?, nome_dificuldade = ?, nome_musculo = ? WHERE id = ?', 
				[nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, id],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results);
				}
			);
		})
	},

	apagar:(id) => {
		return new Promise( (aceito, rejeitado) => {
			db.query('DELETE FROM exercicios WHERE id = ?', [id], (error, results) => {
				if(error){rejeitado(error); return; }
				aceito(results);
			})
		})
	}

}