const GemeosService = require('../services/GemeosService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let gemeos = await GemeosService.visualizarTodos();

		for(let i in gemeos){
			json.result.push({
				id: gemeos[i].id,
				nome_exercicio: gemeos[i].nome_exercicio,
                nome_equipamento: gemeos[i].nome_equipamento,
                nome_dificuldade: gemeos[i].nome_dificuldade,
                nome_musculo: gemeos[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}