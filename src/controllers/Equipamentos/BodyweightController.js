const BodyweightService = require('../../services/Equipamentos/BodyweightService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let bodyweight = await BodyweightService.visualizarTodos();

		for(let i in bodyweight){
			json.result.push({
				id: bodyweight[i].id,
				nome_exercicio: bodyweight[i].nome_exercicio,
                nome_equipamento: bodyweight[i].nome_equipamento,
                nome_dificuldade: bodyweight[i].nome_dificuldade,
                nome_musculo: bodyweight[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}