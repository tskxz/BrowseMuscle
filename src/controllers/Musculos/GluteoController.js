const GluteoService = require('../../services/Musculos/GluteoService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let gluteo = await GluteoService.visualizarTodos();

		for(let i in gluteo){
			json.result.push({
				id: gluteo[i].id,
				nome_exercicio: gluteo[i].nome_exercicio,
                nome_equipamento: gluteo[i].nome_equipamento,
                nome_dificuldade: gluteo[i].nome_dificuldade,
                nome_musculo: gluteo[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}