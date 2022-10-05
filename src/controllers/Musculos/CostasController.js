const CostasService = require('../../services/Musculos/CostasService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let costa = await CostasService.visualizarTodos();

		for(let i in costa){
			json.result.push({
				id: costa[i].id,
				nome_exercicio: costa[i].nome_exercicio,
                nome_equipamento: costa[i].nome_equipamento,
                nome_dificuldade: costa[i].nome_dificuldade,
                nome_musculo: costa[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}