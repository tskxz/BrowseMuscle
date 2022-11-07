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
				exercicio: exercicios[i].exercicio,
				equipamento: exercicios[i].equipamento,
				equipamento_id: exercicios[i].equipamento_id,
				dificuldade: exercicios[i].dificuldade,
				dificuldade_id: exercicios[i].dificuldade_id,
				musculo: exercicios[i].musculo,
				musculo_id: exercicios[i].musculo_id
			});
		}

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
		res.json(json)

	},

	view: async (req,res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
		for(let i in exercicios){
			json.result.push({
				id: exercicios[i].id,
				exercicio: exercicios[i].exercicio,
				equipamento: exercicios[i].equipamento,
				equipamento_id: exercicios[i].equipamento_id,
				dificuldade: exercicios[i].dificuldade,
				dificuldade_id: exercicios[i].dificuldade_id,
				musculo: exercicios[i].musculo,
				musculo_id: exercicios[i].musculo_id
			});
		}

		rows = json.result;
		console.log(rows);

		res.render('tabelas/exercicios', {layout: 'tabela_exercicios', rows})
	},

	main: async (req,res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
		for(let i in exercicios){
			json.result.push({
				id: exercicios[i].id,
				exercicio: exercicios[i].exercicio,
				equipamento: exercicios[i].equipamento,
				equipamento_id: exercicios[i].equipamento_id,
				dificuldade: exercicios[i].dificuldade,
				dificuldade_id: exercicios[i].dificuldade_id,
				musculo: exercicios[i].musculo,
				musculo_id: exercicios[i].musculo_id
			});
		}

		rows = json.result;
		console.log(rows);

		res.render('admin/exercicios/exercicios', {layout: 'tabela_exercicios_crud', rows})
	},



	// Pesquisar através da barra de pesquisa da navegação
	pesquisarExercicio: async(req, res) => {
		let json = {error: '', result:[]};

		let pesquisa = req.body.pesquisa;
		let exercicio = await ExercicioService.pesquisarExercicio(pesquisa);

		if(exercicio){
			json.result = exercicio;
		} else {
			json.error = "err"
		}
		rows = json.result;
		console.log(rows);
		res.render('app/pesquisa', {layout: 'tabela_exercicios', rows},)


	},

	buscarEquipamento: async (req, res) => {
		let json = {error:'', result:[]};

		let equipamento_id = req.params.equipamento_id;
		let exercicio = await ExercicioService.buscarEquipamento(equipamento_id); // Visualiza o dado com esse ID

		if(exercicio){
			json.result = exercicio; // Resultado de buscarUm
		}

		res.json(json);
	},

	buscarDificuldade: async (req, res) => {
		let json = {error:'', result:[]};

		let dificuldade_id = req.params.dificuldade_id;
		let exercicio = await ExercicioService.buscarDificuldade(dificuldade_id); // Visualiza o dado com esse ID

		if(exercicio){
			json.result = exercicio; // Resultado de buscarUm
		}

		res.json(json);
	},

	buscarMusculo: async (req, res) => {
		let json = {error:'', result:[]};

		let musculo_id = req.params.musculo_id;
		let exercicio = await ExercicioService.buscarMusculo(musculo_id); // Visualiza o dado com esse ID

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

	editar: async(req, res) => {
		let json = {error: '', result:[]};
		let id = req.params.id;
		let exercicio = req.body.exercicio;
		let equipamento = req.body.equipamento;
		let dificuldade = req.body.dificuldade;
		let musculo = req.body.musculo;

		let exercicio_id = await ExercicioService.editar(id);
		if(exercicio_id){
			json.result = exercicio_id;
		}
		rows = json.result;
		console.log(rows);
		res.render('admin/exercicios/editar_exercicios', {layout: 'tabela_exercicios', rows})
	},

	// Funcao apagar
	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		await ExercicioService.apagar(req.params.id);
		res.json(json);
	}



}
