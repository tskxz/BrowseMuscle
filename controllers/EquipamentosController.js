const EquipamentosService = require('../services/EquipamentosService');

module.exports = {

	// Função visualizar todos os dados dentro da tabela Equipamentos
	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		// Chama o serviçe visualizar todos
		let equipamento = await EquipamentosService.visualizarTodos();

		for(let i in equipamento){
			json.result.push({
				id: equipamento[i].id,
				nome: equipamento[i].nome,
			});
		}

		// Manda a resposta do servidor json
		res.json(json);
	}
}