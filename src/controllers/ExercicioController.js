const ExercicioService = require('../services/ExercicioService');

module.exports = {
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos();

		for(let i in exercicios){
			json.result.push({
				id: exercicios[i].id,
				nome_exercicio: exercicios[i].nome_exercicio,
				nome_equipamento: exercicios[i].nome_equipamento,
				nome_dificuldade: exercicios[i].nome_dificuldade,
				nome_musculo: exercicios[i].nome_musculo
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	}
}