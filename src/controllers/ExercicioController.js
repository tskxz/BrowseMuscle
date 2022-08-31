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
				nome_musculo: exercicios[i].nome_musculo,
				link: exercicios[i].link
			});
		}
		res.setHeader('Access-Control-Allow-Origin', '*');
		res.setHeader('Access-Control-Allow-Headers', 'Origin, Accept, Accept-  Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version, X-Response-Time, X-PINGOTHER, X-CSRF-Token,Authorization');
		res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
		res.json(json);
	},

	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		let id = req.params.id;
		let exercicio = await ExercicioService.buscarUm(id);

		if(exercicio){
			json.result = exercicio;
		}

		res.json(json);
	},

	inserir: async (req, res) => {
		let json = {error:'', result:[]};

		let nome_exercicio = req.body.nome_exercicio;
		let nome_equipamento = req.body.nome_equipamento;
		let nome_dificuldade = req.body.nome_dificuldade;
		let nome_musculo = req.body.nome_musculo;
		let link = req.body.link;

		

		if(nome_equipamento && nome_equipamento && nome_dificuldade && nome_musculo && link){
			let ExercicioId = await ExercicioService.inserir(nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo, link);
			json.result = {
				id: ExercicioId,
				nome_exercicio,
				nome_equipamento,
				nome_dificuldade,
				nome_musculo,
				link
			};
		} else {
			json.error = 'Error!';
		}

		res.json(json);
	},

	alterar: async (req, res) => {
		let json = {error:'', result:[]};

		let id = req.params.id;
		let nome_exercicio = req.body.nome_exercicio;
		let nome_equipamento = req.body.nome_equipamento;
		let nome_dificuldade = req.body.nome_dificuldade;
		let nome_musculo = req.body.nome_musculo;

		

		if(id && nome_equipamento && nome_equipamento && nome_dificuldade && nome_musculo){
			await ExercicioService.alterar(id, nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo);
			json.result = {
				id,
				nome_exercicio,
				nome_equipamento,
				nome_dificuldade,
				nome_musculo
			};
		} else {
			json.error = 'Error!';
		}

		res.json(json);
	},

	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		await ExercicioService.apagar(req.params.id);
		res.json(json);
	}

}