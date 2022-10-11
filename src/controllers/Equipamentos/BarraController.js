const BarraService = require('../../services/Equipamentos/BarraService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		// Visualizar todos os exercícios com barra

		let barra = await BarraService.visualizarTodos();

		for(let i in barra){
			json.result.push({
				id: barra[i].id,
				nome_exercicio: barra[i].nome_exercicio,
                nome_equipamento: barra[i].nome_equipamento,
                nome_dificuldade: barra[i].nome_dificuldade,
                nome_musculo: barra[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}