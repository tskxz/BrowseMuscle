const ExercicioService = require('../services/ExercicioService');

module.exports = {
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos();

		for(let i in exercicios){
			json.result.push({
				
			})
		}
	}
}