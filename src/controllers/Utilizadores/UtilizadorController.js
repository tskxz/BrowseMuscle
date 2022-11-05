const UtilizadorService = require('../../services/Utilizadores/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador

module.exports = {

	// Funcao visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let utilizadores = await UtilizadorService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
		for(let i in utilizadores){
			json.result.push({
				id: utilizadores[i].id,
				username: utilizadores[i].username,
				primeiro_nome: utilizadores[i].primeiro_nome,
				ultimo_nome: utilizadores[i].ultimo_nome,
				email: utilizadores[i].email,
				num_telemovel: utilizadores[i].num_telemovel,
				password: utilizadores[i].password
			});
		}

		res.json(json);
	},

	// Funcao visualizar um exercício
	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		let id = req.params.id;
		let utilizador = await UtilizadorService.buscarUm(id); // Visualiza o dado com esse ID

		if(utilizador){
			json.result = utilizador; // Resultado de buscarUm
		}

	},

}
