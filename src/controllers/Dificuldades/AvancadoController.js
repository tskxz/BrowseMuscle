const AvancadoService = require('../../services/Dificuldades/AvancadoService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let avancado = await AvancadoService.visualizarTodos();

		for(let i in avancado){
			json.result.push({
				id: avancado[i].id,
				nome_exercicio: avancado[i].nome_exercicio,
                nome_equipamento: avancado[i].nome_equipamento,
                nome_dificuldade: avancado[i].nome_dificuldade,
                nome_musculo: avancado[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}