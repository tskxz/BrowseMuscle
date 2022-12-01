const MarcasService = require('../../services/Marcas/MarcasService');

module.exports = {

	// Função visualizar todos os dados dentro da tabela Marcas
	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		// Chama o serviçe visualizar todos
		let marca = await MarcasService.visualizarTodos();

		for(let i in equipamento){
			json.result.push({
				id: marca[i].id,
				nome: marca[i].nome,
			});
		}

		// Manda a resposta do servidor json
		res.json(json);
	}
}