const BicepsService = require('../../services/Musculos/BicepsService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let bicep = await BicepsService.visualizarTodos();

		for(let i in bicep){
			json.result.push({
				id: bicep[i].id,
				nome_exercicio: bicep[i].nome_exercicio,
                nome_equipamento: bicep[i].nome_equipamento,
                nome_dificuldade: bicep[i].nome_dificuldade,
                nome_musculo: bicep[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}