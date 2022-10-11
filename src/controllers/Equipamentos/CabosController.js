const CabosService = require('../../services/Equipamentos/CabosService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let cabos = await CabosService.visualizarTodos();

		// Visualizar todos os exercícios com cabos

		for(let i in cabos){
			json.result.push({
				id: cabos[i].id,
				nome_exercicio: cabos[i].nome_exercicio,
                nome_equipamento: cabos[i].nome_equipamento,
                nome_dificuldade: cabos[i].nome_dificuldade,
                nome_musculo: cabos[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}