const PeitoService = require('../../services/Musculos/PeitoService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let peito = await PeitoService.visualizarTodos();

		for(let i in peito){
			json.result.push({
				id: peito[i].id,
				nome_exercicio: peito[i].nome_exercicio,
                nome_equipamento: peito[i].nome_equipamento,
                nome_dificuldade: peito[i].nome_dificuldade,
                nome_musculo: peito[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}