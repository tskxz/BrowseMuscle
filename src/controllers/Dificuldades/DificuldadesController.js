const DificuldadesService = require('../../services/Dificuldades/DificuldadesService');

module.exports = {

	visualizarTodos: async(req, res) => {
		let json = {error: '', result:[]};

		// Visualizar todos os exercícios dificuldade
		let dificuldade = await DificuldadesService.visualizarTodos();

		for(let i in dificuldade){
			json.result.push({
				id: dificuldade[i].id,
				nome: dificuldade[i].nome
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}