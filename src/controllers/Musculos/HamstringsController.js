const HamstringsService = require('../../services/Musculos/HamstringsService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let hamstrings = await HamstringsService.visualizarTodos();

		for(let i in hamstrings){
			json.result.push({
				id: hamstrings[i].id,
				nome_exercicio: hamstrings[i].nome_exercicio,
                nome_equipamento: hamstrings[i].nome_equipamento,
                nome_dificuldade: hamstrings[i].nome_dificuldade,
                nome_musculo: hamstrings[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}