const QuadricepsService = require('../services/QuadricepsService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let quadriceps = await QuadricepsService.visualizarTodos();

		for(let i in quadriceps){
			json.result.push({
				id: quadriceps[i].id,
				nome_exercicio: quadriceps[i].nome_exercicio,
                nome_equipamento: quadriceps[i].nome_equipamento,
                nome_dificuldade: quadriceps[i].nome_dificuldade,
                nome_musculo: quadriceps[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}