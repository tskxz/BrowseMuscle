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
	
	inserir: (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo)=> {
		return new Promise( (aceito, rejeitado) => {
			db.query('INSERT INTO exercicios (nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo) VALUES(?,?,?,?)', 
				[nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo],
				(error, results)=>{
					if(error){ rejeitado(error); return; }
					aceito(results.insertId);
				}
			);
		})
	}

}