const ExercicioService = require('../services/ExercicioService'); // Importa os serviços do ExercícioService para dar a resposta ao controlador
const MusculoService = require('../services/MusculoService'); // Importa os serviços do MusculoService para dar a resposta ao controlador
const DificuldadeService = require('../services/DificuldadesService'); // Importa os serviços do DificuldadeService para dar a resposta ao controlador
const EquipamentosService = require('../services/EquipamentosService'); // Importa os serviços do EquipamentoService para dar a resposta ao controlador

module.exports = {

	// API - JSON - Visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço para mostrar todos os exercícios
		let Exercicios = await ExercicioService.buscarTodos();

		for (let i in Exercicios) {
			json.result.push({
				id: Exercicios[i].id,
				exercicio: Exercicios[i].exercicio,
				equipamento: Exercicios[i].equipamento,
				equipamento_id: Exercicios[i].equipamento_id,
				dificuldade: Exercicios[i].dificuldade,
				dificuldade_id: Exercicios[i].dificuldade_id,
				musculo: Exercicios[i].musculo,
				musculo_id: Exercicios[i].musculo_id
			});
		}

		// Mostra o resultado
		res.json(json);
	},

	// API - JSON - Visualizar apenas um exercício
	buscarUm: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor do id através do parametro URL
		let id = req.params.id;

		// Chama o serviço para mostrar o exercício desse ID correspondente
		let exercicio = await ExercicioService.buscarUm(id);

		if (exercicio) {
			json.result = exercicio;
		}

		// Mostra o resultado
		res.json(json)

	},

	// Página Utilizador - Mostrar todos os exercícios
	view: async (req, res) => {
		let json = { error: '', result: [] };

		// Chama o serviço para mostrar todos os exercícios existentes
		let Exercicios = await ExercicioService.buscarTodos();

		for (let i in Exercicios) {
			json.result.push({
				id: Exercicios[i].id,
				exercicio: Exercicios[i].exercicio,
				equipamento: Exercicios[i].equipamento,
				equipamento_id: Exercicios[i].equipamento_id,
				dificuldade: Exercicios[i].dificuldade,
				dificuldade_id: Exercicios[i].dificuldade_id,
				musculo: Exercicios[i].musculo,
				musculo_id: Exercicios[i].musculo_id
			});
		}

		// Enviar rows e mostrar os exercícios dentro da tabela
		rows = json.result;
		res.render('app/Exercicios/Exercicios', { layout: 'tabela_exercicios', rows, user: req.user, })
	},

	// Página Administração - Mostrar todos os exercícios
	main: async (req, res) => {
		let json = { error: '', result: [] };

		// Chama o serviço para mostrar todos os exercícios existentes dentro da tabela
		let Exercicios = await ExercicioService.buscarTodos();

		for (let i in Exercicios) {
			json.result.push({
				id: Exercicios[i].id,
				exercicio: Exercicios[i].exercicio,
				equipamento: Exercicios[i].equipamento,
				equipamento_id: Exercicios[i].equipamento_id,
				dificuldade: Exercicios[i].dificuldade,
				dificuldade_id: Exercicios[i].dificuldade_id,
				musculo: Exercicios[i].musculo,
				musculo_id: Exercicios[i].musculo_id
			});
		}

		rows = json.result;

		// Enviar rows e mostrar os exercícios dentro da tabela porém num layout diferente para Admin que vai ser acrescentado novas colunas (editar e apagar)
		res.render('admin/Exercicios/Exercicios', { layout: 'tabela_exercicios_crud', rows, user: req.user })
	},



	// Pesquisar através da barra de pesquisa da navegação
	pesquisarExercicio: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor que nos foi enviado na barra de pesquisa
		let pesquisa = req.body.pesquisa;

		// Com o valor que foi nos enviado, vai chamar o serviço para ver os exercícios que correspondem com o valor
		let exercicio = await ExercicioService.pesquisarExercicio(pesquisa);

		if (exercicio) {
			json.result = exercicio;
		} else {
			json.error = "err"
		}

		// Resultado do serviço armazenado em rows
		rows = json.result;

		// Quantidade de resultado
		var keyCount = Object.keys(rows).length;

		// Mostra o resultado
		res.render('app/pesquisa', { layout: 'tabela_exercicios', rows, user: req.user, alert: `${keyCount} resultados encontrados!` })


	},

	// Página Administração - Pesquisar através da barra de pesquisa da navegação
	pesquisarExercicio_admin: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor que nos foi enviado na barra de pesquisa
		let pesquisa = req.body.pesquisa;

		// Com o valor que foi nos enviado, vai chamar o serviço pesquisarExercicio para ver os exercícios que correspondem com o valor
		let exercicio = await ExercicioService.pesquisarExercicio(pesquisa);

		if (exercicio) {
			json.result = exercicio;
		} else {
			json.error = "err"
		}

		// Resultado do serviço armazenado em rows
		rows = json.result;
		var keyCount = Object.keys(rows).length;

		// Mostra o resultado
		res.render('admin/Exercicios/pesquisa', { layout: 'tabela_exercicios_crud', rows, user: req.user, alert: `${keyCount} resultados encontrados!` })


	},

	// Página - Ferramenta para calcular 1RM
	calcular_1rm: async (req, res) => {
		res.render('app/Ferramentas/calcular_1rm', { user: req.user })
	},

	calcular_1rm_post: async (req, res) => {

		// Buscar os valores
		let weight = parseFloat(req.body.weight);
		let unit = parseInt(req.body.unit);
		let reps = req.body.reps;

		// Calcular 1RM
		if (unit === 'kg') {
			rm1 = (weight * reps * 0.033) + weight;
		} else {
			rm1 = (weight * reps * 0.037) + weight;
		}

		// Mostrar resultado
		res.render('app/Ferramentas/calcular_1rm', { user: req.user, alert: rm1 })


	},


	// API - JSON - Buscar um exercício através de um determinado equipamento
	buscarEquipamento: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor do parametro id através do URL 
		let equipamento_id = req.params.equipamento_id;

		// Serviço para buscar o exercício através do id do equipamento
		let exercicio = await ExercicioService.buscarEquipamento(equipamento_id);

		if (exercicio) {
			json.result = exercicio;
		}

		// Mostra o resultado
		res.json(json);
	},

	// API - JSON - Buscar um exercício através de uma determinada dificuldade
	buscarDificuldade: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor do parametro id através do URL
		let dificuldade_id = req.params.dificuldade_id;

		// Serviço para buscar o exercício através do id da dificuldade
		let exercicio = await ExercicioService.buscarDificuldade(dificuldade_id);

		if (exercicio) {
			json.result = exercicio;
		}

		// Mostra o resultado
		res.json(json);
	},

	// API - JSON - Buscar um exercício através de um determinado músculo
	buscarMusculo: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor do parametro id através do URL
		let musculo_id = req.params.musculo_id;

		// Serviço para buscar o exercício através do id do musculo
		let exercicio = await ExercicioService.buscarMusculo(musculo_id);
		if (exercicio) {
			json.result = exercicio;
		}

		// Mostra o resultado
		res.json(json);
	},

	// API - JSON - Inserir um exercício
	inserir: async (req, res) => {
		let json = { error: '', result: [] };

		// Pegar os valores que nos foi enviado pelo body
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;


		// Se foi nos enviado os valores
		if (nome && equipamento_id && dificuldade_id && musculo_id) {
			// Chama o serviço para inserir o exercício
			let ExercicioId = await ExercicioService.inserir(nome, equipamento_id, dificuldade_id, musculo_id);
			json.result = {
				id: ExercicioId,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id
			};
			// Se não foi nos enviado valores
		} else {
			json.error = 'Error!';
		}

		// Mostra o resultado
		res.json(json);
	},

	// Página Administração - Inserir exercício
	adicionar_form: async (req, res) => {

		// Chama os serviços para visualizar os Equipamentos, Dificuldades e Musculos
		let Equipamentos = await EquipamentosService.visualizarTodos();
		let Dificuldades = await DificuldadeService.visualizarTodos();
		let Musculos = await MusculoService.visualizarTodos();

		// Armazena os resultados dos serviços
		rows_eq = Equipamentos
		rows_df = Dificuldades
		rows_musculos = Musculos;

		// Se os valores foi nos enviado através do body

		// Mostrar os Equipamentos, Dificuldades e músculos para fazer select
		res.render('admin/Exercicios/adicionar_exercicios', { rows_eq, rows_df, rows_musculos, user: req.user });
	},

	//  Página Administração - Mostrar página para inserir exercício
	adicionar: async (req, res) => {
		let json = { error: '', result: [] };

		// Obter os valores através do body
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;
		let descricao = req.body.descricao;


		// Chama os serviços para visualizar os Equipamentos, Dificuldades e Musculos
		let Equipamentos = await EquipamentosService.visualizarTodos();
		let Dificuldades = await DificuldadeService.visualizarTodos();
		let Musculos = await MusculoService.visualizarTodos();

		// Armazena os resultados dos serviços
		rows_eq = Equipamentos
		rows_df = Dificuldades
		rows_musculos = Musculos;

		// Se os valores foi nos enviado através do body
		if (nome && equipamento_id && dificuldade_id && musculo_id) {
			// Insere o exercício ao chamar o serviço inserir
			let ExercicioId = await ExercicioService.inserir(nome, equipamento_id, dificuldade_id, musculo_id, descricao);
			json.result = {
				id: ExercicioId,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id,
				descricao
			};

			// Mostrar os resultados dos serviços de visualizar Equipamentos, Dificuldades e músculos para fazer dropdown da seleção options e mandar um alert após ser inserido um exercício
			res.render('admin/Exercicios/adicionar_exercicios', { rows_eq, rows_df, rows_musculos, user: req.user, alert: `${nome} Adicionado com sucesso` });

		} else {
			json.error = 'Error!';
		}
	},

	// API - JSON - Alterar um exercício
	alterar: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega os valores do body
		let id = req.params.id;
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;



		if (id && nome && equipamento_id && dificuldade_id && musculo_id) {
			// Chama o serviço alterar para mudar os valores
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

		// Mostra o resultado
		res.json(json);
	},

	// Página Administração - Mostrar página para editar exercício
	editar: async (req, res) => {
		let json = { error: '', result: [] };

		// Pegar os valores
		let id = req.params.id;

		// Chama o serviço para pegar os valores do exercício através do ID
		let exercicio_id = await ExercicioService.buscarUm(id);

		if (exercicio_id) {
			// Chama os serviços para visualizar Equipamentos, Dificuldades e músculo para fazer dropdown do select option
			let Equipamentos = await EquipamentosService.visualizarTodos();
			let Dificuldades = await DificuldadeService.visualizarTodos();
			let Musculos = await MusculoService.visualizarTodos();

			// Armazena os resultados dos serviços
			rows_eq = Equipamentos
			rows_df = Dificuldades
			rows_musculos = Musculos;

			json.result = exercicio_id;

		}

		// Armazena o resultado do serviço de buscar o exercício através do ID
		rows = json.result;

		// Mandar para a página os resultados dos serviços para estar pré-definido nos inputs
		res.render('admin/Exercicios/editar_exercicios', { rows, rows_eq, rows_df, rows_musculos, user: req.user })
	},

	// Página Administração - Atualizar os dados
	atualizar: async (req, res) => {
		let json = { error: '', result: [] };

		// Obter os valores
		let id = req.params.id;
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;
		let descricao = req.body.descricao;

		if (id && nome && equipamento_id && dificuldade_id && musculo_id) {
			// Chama o serviço para atualizar os dados
			await ExercicioService.alterar(id, nome, equipamento_id, dificuldade_id, musculo_id, descricao);
			json.result = {
				id,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id,
				descricao
			};
		} else {
			json.error = 'Error!';
		}

		// Após atualizar, mostra o alert a dizer que foi alterado com sucesso
		res.render('admin/Exercicios/editar_exercicios', { rows, rows_eq, rows_df, rows_musculos, user: req.user, alert: `${nome} com id ${id} alterado com sucesso` })

	},

	// Página Administração - Apagar um exercício
	eliminar: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para eliminar um dado através do id
		exercicio = await ExercicioService.apagar(req.params.id);

		if (exercicio) {
			// Se for apagado, vai redirecionar para a página da tabela
			res.redirect('/admin/main_exercicios/')
		}
	},

	// API - JSON - Função apagar
	apagar: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para apagar o dado através do id
		await ExercicioService.apagar(req.params.id);

		// Manda a resposta do servidor em JSON
		res.json(json);
	}



}
