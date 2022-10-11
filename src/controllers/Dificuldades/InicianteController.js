const InicianteService = require('../../services/Dificuldades/InicianteService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};


			// Visualizar todos os exercícios iniciante

		let iniciante = await InicianteService.visualizarTodos();

		for(let i in iniciante){
			json.result.push({
				id: iniciante[i].id,
				nome_exercicio: iniciante[i].nome_exercicio,
                nome_equipamento: iniciante[i].nome_equipamento,
                nome_dificuldade: iniciante[i].nome_dificuldade,
                nome_musculo: iniciante[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}