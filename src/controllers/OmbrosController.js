const OmbroService = require('../services/OmbrosService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let ombro = await OmbroService.visualizarTodos();

		for(let i in ombro){
			json.result.push({
				id: ombro[i].id,
				nome_exercicio: ombro[i].nome_exercicio,
                nome_equipamento: ombro[i].nome_equipamento,
                nome_dificuldade: ombro[i].nome_dificuldade,
                nome_musculo: ombro[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}