const MaquinaService = require('../../services/Equipamentos/MaquinaService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		let maquina = await MaquinaService.visualizarTodos();

		for(let i in maquina){
			json.result.push({
				id: maquina[i].id,
				nome_exercicio: maquina[i].nome_exercicio,
                nome_equipamento: maquina[i].nome_equipamento,
                nome_dificuldade: maquina[i].nome_dificuldade,
                nome_musculo: maquina[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}