const ExercicioService = require('../services/ExercicioService'); // Importa os serviços do ExercícioService para dar a resposta ao controlador
const MusculoService = require('../services/Musculos/MusculoService'); // Importa os serviços do MusculoService para dar a resposta ao controlador
const DificuldadeService = require('../services/Dificuldades/DificuldadesService'); // Importa os serviços do DificuldadeService para dar a resposta ao controlador
const EquipamentosService = require('../services/Equipamentos/EquipamentosService'); // Importa os serviços do EquipamentoService para dar a resposta ao controlador

module.exports = {

	// Função visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let exercicios = await ExercicioService.buscarTodos(); // Chama o serviço do ExercicioService para mostrar todos os exercícios que existem na tabela exercícios

		// Para cada exercício, vai adicionar para o json
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

		// Manda a resposta do servidor json
		res.json(json);
	},

	// Funcao visualizar apenas um exercício
	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega o valor do id através do parametro URL
		let id = req.params.id;

		// Chama o serviço buscarUm do ExercicioService para mostrar o exercício desse ID correspondente
		let exercicio = await ExercicioService.buscarUm(id);

		if(exercicio){
			json.result = exercicio; // Resultado do serviço buscarUm
		}

		// Mandar a resposta json
		res.json(json)

	},

	// Página - Função para mostrar todos os exercícios
	view: async (req,res) => {
		let json = {error: '', result:[]};

		// Chama o serviço para mostrar todos os exercícios existentes dentro da tabela
		let exercicios = await ExercicioService.buscarTodos();

		// Para cada exercício, vai enviar para o json
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

		// Os exercícios vão estar armazenados na variável rows
		rows = json.result;

		// Enviar rows e mostrar os exercícios dentro da tabela
		res.render('tabelas/exercicios', {layout: 'tabela_exercicios', rows})
	},

	// Página - Função para mostrar todos os exercícios
	main: async (req,res) => {
		let json = {error: '', result:[]};

		// Chama o serviço para mostrar todos os exercícios existentes dentro da tabela
		let exercicios = await ExercicioService.buscarTodos();

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

		// Enviar rows e mostrar os exercícios dentro da tabela porém num layout diferente para Admin que vai ser acrescentado novas colunas (editar e apagar)
		res.render('admin/exercicios/exercicios', {layout: 'tabela_exercicios_crud', rows})
	},



	// Pesquisar através da barra de pesquisa da navegação
	pesquisarExercicio: async(req, res) => {
		let json = {error: '', result:[]};

		// Pega o valor que nos foi enviado na barra de pesquisa
		let pesquisa = req.body.pesquisa;

		// Com o valor que foi nos enviado, vai chamar o serviço pesquisarExercicio para ver os exercícios que correspondem com o valor
		let exercicio = await ExercicioService.pesquisarExercicio(pesquisa);

		if(exercicio){
			json.result = exercicio;
		} else {
			json.error = "err"
		}

		// Resultado do serviço armazenado em rows
		rows = json.result;

		// Mostra o resultado
		res.render('app/pesquisa', {layout: 'tabela_exercicios', rows},)


	},

	// Função para buscar um exercício através de um determinado equipamento
	buscarEquipamento: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega o valor do parametro id através do URL 
		let equipamento_id = req.params.equipamento_id;

		// O resultado do buscarEquipamento do ExercicioService
		let exercicio = await ExercicioService.buscarEquipamento(equipamento_id);

		if(exercicio){
			json.result = exercicio; 
		}

		// Manda a resposta do resultado em JSON
		res.json(json);
	},

	// Função para buscar um exercício através de uma determinada dificuldade
	buscarDificuldade: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega o valor do parametro id através do URL
		let dificuldade_id = req.params.dificuldade_id;

		// O resultado do serviço buscarDificuldade
		let exercicio = await ExercicioService.buscarDificuldade(dificuldade_id);

		if(exercicio){
			json.result = exercicio;
		}

		// Mostra o resultado e manda a resposta em JSON
		res.json(json);
	},

	// Função para buscar um exercício através de um determinado músculo
	buscarMusculo: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega o valor do parametro id através do URL
		let musculo_id = req.params.musculo_id;

		// O resultado do serviço buscarMusculo
		let exercicio = await ExercicioService.buscarMusculo(musculo_id); // Visualiza o dado com esse ID

		if(exercicio){
			json.result = exercicio; // Resultado de buscarUm
		}

		// Mostra o resultado da resposta em JSON
		res.json(json);
	},

	// Função para inserir um exercício
	inserir: async (req, res) => {
		let json = {error:'', result:[]};

		// Pegar os valores que nos foi enviado pelo body
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;


		// Se foi nos enviado os valores
		if(nome && equipamento_id && dificuldade_id && musculo_id){
			// Chama o serviço para inserir o exercício e armazena o resultado que vai ser o ID do novo exercício inserido
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

		// Manda a resposta em JSON
		res.json(json);
	},

	// Página - Função para adicionar um exercício
	adicionar: async (req, res) => {
		let json = {error: '', result:[]};

		// Obter os valores através do body
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;


		// Chama os serviços para visualizar os equipamentos, dificuldades e musculos
		let equipamentos = await EquipamentosService.visualizarTodos();
		let dificuldades = await DificuldadeService.visualizarTodos();
		let musculos = await MusculoService.visualizarTodos();
		
		// Armazena os resultados dos serviços
		rows_eq = equipamentos
		rows_df = dificuldades
		rows_musculos = musculos;
		
		// Se os valores foi nos enviado através do body
		if(nome && equipamento_id && dificuldade_id && musculo_id){
			// Insere o exercício ao chamar o serviço inserir
			let ExercicioId = await ExercicioService.inserir(nome, equipamento_id, dificuldade_id, musculo_id);
			json.result = {
				id: ExercicioId,
				nome,
				equipamento_id,
				dificuldade_id,
				musculo_id
			};
			
			// Mostrar os resultados dos serviços de visualizar equipamentos, dificuldades e músculos para fazer dropdown da seleção options e mandar um alert após ser inserido um exercício
			res.render('admin/exercicios/adicionar_exercicios', {rows_eq, rows_df, rows_musculos, alert: `${nome} Adicionado com sucesso`});

		} else {
			json.error = 'Error!';
		}
		
		// Mostrar os equipamentos, dificuldades e músculos para fazer select
		res.render('admin/exercicios/adicionar_exercicios', {rows_eq, rows_df, rows_musculos});
	},

	// Função para alterar um exercício
	alterar: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega os valores do body
		let id = req.params.id;
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;

		
		
		if(id && nome && equipamento_id && dificuldade_id && musculo_id){
			// Chama o serviço alterar do ExercicioService para mudar os valores
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

		// Manda a resposta ao servidor com JSON
		res.json(json);
	},

	// Página - Função para pegar os valores que quer editar
	editar: async(req, res) => {
		let json = {error: '', result:[]};

		// Pegar os valores
		let id = req.params.id;
		let exercicio = req.body.exercicio;
		let equipamento = req.body.equipamento;
		let dificuldade = req.body.dificuldade;
		let musculo = req.body.musculo;

		// Chama o serviço do ExercicioService editar, que serve para pegar os valores do exercício através do ID
		let exercicio_id = await ExercicioService.editar(id);
		if(exercicio_id){
			// Chama os serviços para visualizar equipamentos, dificuldades e músculo para fazer dropdown do select option
			let equipamentos = await EquipamentosService.visualizarTodos();
			let dificuldades = await DificuldadeService.visualizarTodos();
			let musculos = await MusculoService.visualizarTodos();
			
			// Armazena os resultados dos serviços
			rows_eq = equipamentos
			rows_df = dificuldades
			rows_musculos = musculos;

			json.result = exercicio_id;
			
		}

		// Armazena o resultado do serviço de editar exercício
		rows = json.result;
		

		// Mandar para a página os resultados dos serviços para estar pré-definido nos inputs
		res.render('admin/exercicios/editar_exercicios', {rows, rows_eq, rows_df, rows_musculos})
	},

	// Página - Função para atualizar os dados
	atualizar: async(req,res) => {
		let json = {error: '', result:[]};

		// Obter os valores
		let id = req.params.id;
		let exercicio = req.body.exercicio;
		let nome = req.body.nome;
		let equipamento_id = req.body.equipamento_id;
		let dificuldade_id = req.body.dificuldade_id;
		let musculo_id = req.body.musculo_id;
		let equipamento = req.body.equipamento;
		let dificuldade = req.body.dificuldade;
		let musculo = req.body.musculo;		

		if(id && nome && equipamento_id && dificuldade_id && musculo_id){
			// Chama o serviço alterar para atualizar os dados
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

		// Após atualizar, mostra o alert a dizer que foi alterado com sucesso
		res.render('admin/exercicios/editar_exercicios', {rows, rows_eq, rows_df, rows_musculos, alert: `${nome} com id ${id} alterado com sucesso`})

	},

	// Página - Função para apagar um exercício
	eliminar: async(req, res) => {
		let json = {error: '', result:[]};
		// Chama o serviço apagar para eliminar um dado através do id
		exercicio = await ExercicioService.apagar(req.params.id);

		if(exercicio){
			// Se for apagado, vai redirecionar para a página da tabela
			res.redirect('/admin/main_exercicios/')
		}
	},

	// Função apagar
	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		// Chama o serviço apagar para apagar o dado através do id
		await ExercicioService.apagar(req.params.id);

		// Manda a resposta do servidor em JSON
		res.json(json);
	}



}
