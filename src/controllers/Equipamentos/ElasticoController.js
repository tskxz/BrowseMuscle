const ElasticoService = require('../../services/Equipamentos/ElasticoService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let elastico = await ElasticoService.visualizarTodos();

		// Visualizar todos os exercícios com elastico

		for(let i in elastico){
			json.result.push({
				id: elastico[i].id,
				nome_exercicio: elastico[i].nome_exercicio,
                nome_equipamento: elastico[i].nome_equipamento,
                nome_dificuldade: elastico[i].nome_dificuldade,
                nome_musculo: elastico[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}