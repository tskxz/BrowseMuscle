const TricepsService = require('../services/TricepsService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let triceps = await TricepsService.visualizarTodos();

		for(let i in triceps){
			json.result.push({
				id: triceps[i].id,
				nome_exercicio: triceps[i].nome_exercicio,
                nome_equipamento: triceps[i].nome_equipamento,
                nome_dificuldade: triceps[i].nome_dificuldade,
                nome_musculo: triceps[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}