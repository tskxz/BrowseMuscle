const IntermediarioService = require('../../services/Dificuldades/IntermediarioService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let intermediario = await IntermediarioService.visualizarTodos();

		for(let i in intermediario){
			json.result.push({
				id: intermediario[i].id,
				nome_exercicio: intermediario[i].nome_exercicio,
                nome_equipamento: intermediario[i].nome_equipamento,
                nome_dificuldade: intermediario[i].nome_dificuldade,
                nome_musculo: intermediario[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}