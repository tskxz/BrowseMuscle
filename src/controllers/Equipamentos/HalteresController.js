const HalteresService = require('../../services/Equipamentos/HalteresService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let halteres = await HalteresService.visualizarTodos();

		for(let i in halteres){
			json.result.push({
				id: halteres[i].id,
				nome_exercicio: halteres[i].nome_exercicio,
                nome_equipamento: halteres[i].nome_equipamento,
                nome_dificuldade: halteres[i].nome_dificuldade,
                nome_musculo: halteres[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}