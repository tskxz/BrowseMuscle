const MusculoService = require('../services/MusculoService');

module.exports = {

	// Visualizar todos os dados dentro da tabela músculos
	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		// Chama o serviço para mostrar todos os dados da tabela músculos
		let musculo = await MusculoService.visualizarTodos();

		for(let i in musculo){
			json.result.push({
				id: musculo[i].id,
				nome: musculo[i].nome
			});
		}

		// Manda a resposta do servidor para json
		res.json(json);
	}
}