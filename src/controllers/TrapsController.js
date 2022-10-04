const TrapsService = require('../services/TrapsService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let traps = await TrapsService.visualizarTodos();

		for(let i in traps){
			json.result.push({
				id: traps[i].id,
				nome_exercicio: traps[i].nome_exercicio,
                nome_equipamento: traps[i].nome_equipamento,
                nome_dificuldade: traps[i].nome_dificuldade,
                nome_musculo: traps[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}