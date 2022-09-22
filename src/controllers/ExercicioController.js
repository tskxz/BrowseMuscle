const ExercicioService = require('../services/ExercicioService'); // Usa o serviço para dar a resposta ao controlador

module.exports = {

	// Funcao visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
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
	},

	// Funcao visualizar um exercício
	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		let id = req.params.id;
		let exercicio = await ExercicioService.buscarUm(id); // Visualiza o dado com esse ID

		if(exercicio){
			json.result = exercicio; // Resultado de buscarUm
		}

		res.json(json);
	},

	// Funcao inserir
	inserir: async (req, res) => {
		let json = {error:'', result:[]};

		// No método POST que vai ser o inserir, vai ter o request de cada esses campos
		let nome_exercicio = req.body.nome_exercicio;
		let nome_equipamento = req.body.nome_equipamento;
		let nome_dificuldade = req.body.nome_dificuldade;
		let nome_musculo = req.body.nome_musculo;


		// Inserir exercício
		if(nome_equipamento && nome_equipamento && nome_dificuldade && nome_musculo){
			let ExercicioId = await ExercicioService.inserir(nome_exercicio, nome_equipamento, nome_dificuldade, nome_musculo);
			json.result = {
				id: ExercicioId,
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

	// Funcao alterar
	alterar: async (req, res) => {
		let json = {error:'', result:[]};

		// Método PUT, igualmente ao método POST, vai ter o request de cada esses campos só que a unica diferenca é que em vez de insert, vai ser update no SQL
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

	// Funcao apagar
	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		await ExercicioService.apagar(req.params.id);
		res.json(json);
	}

}
