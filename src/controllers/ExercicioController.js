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
				nome: exercicios[i].nome,
				equipamento_id: exercicios[i].equipamento_id,
				dificuldade_id: exercicios[i].dificuldade_id,
				musculo_id: exercicios[i].musculo_id
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
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;


		// Inserir exercício
		if(nome && equipamento_id && dificuldade_id && musculo_id){
			let ExercicioId = await ExercicioService.inserir(nome, equipamento_id, dificuldade_id, musculo_id);
			json.result = {
				id: ExercicioId,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id
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
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;



		if(id && nome && equipamento_id && dificuldade_id && musculo_id){
			await ExercicioService.alterar(id, nome, equipamento_id, dificuldade_id, musculo_id);
			json.result = {
				id,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id
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
