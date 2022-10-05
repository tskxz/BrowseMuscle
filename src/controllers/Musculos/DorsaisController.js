const DorsaisService = require('../../services/Musculos/DorsaisService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let dorsal = await DorsaisService.visualizarTodos();

		for(let i in dorsal){
			json.result.push({
				id: dorsal[i].id,
				nome_exercicio: dorsal[i].nome_exercicio,
                nome_equipamento: dorsal[i].nome_equipamento,
                nome_dificuldade: dorsal[i].nome_dificuldade,
                nome_musculo: dorsal[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}