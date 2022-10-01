const AlimentoService = require('../services/AlimentoService'); // Usa o serviço para dar a resposta ao controlador

module.exports = {

	// Funcao visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let alimentos = await AlimentoService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
		for(let i in alimentos){
			json.result.push({
				id: alimentos[i].id,
				nome: alimentos[i].nome,
				proteina: alimentos[i].proteina,
				carbs: alimentos[i].carbs,
				gordura: alimentos[i].gordura,
                calorias: alimentos[i].calorias
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
		let alimento = await AlimentoService.buscarUm(id); // Visualiza o dado com esse ID

		if(alimento){
			json.result = alimento; // Resultado de buscarUm
		}

		res.json(json);
	},

	// Funcao inserir
	inserir: async (req, res) => {
		let json = {error:'', result:[]};

		// No método POST que vai ser o inserir, vai ter o request de cada esses campos
		let nome = req.body.nome;
		let proteina = req.body.proteina;
		let carbs = req.body.carbs;
		let gordura = req.body.gordura;
        let calorias = req.body.calorias;


		// Inserir exercício
		if(proteina && carbs && gordura && calorias){
			let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura, calorias);
			json.result = {
				id: AlimentoId,
				nome,
				proteina,
				carbs,
				gordura
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
		let proteina = req.body.proteina;
		let carbs = req.body.carbs;
		let gordura = req.body.gordura;
        let calorias = req.body.calorias;



		if(id && proteina && proteina && carbs && gordura && calorias){
			await AlimentoService.alterar(id, nome, proteina, carbs, gordura, calorias);
			json.result = {
				id,
				nome,
				proteina,
				carbs,
				gordura,
                calorias
			};
		} else {
			json.error = 'Error!';
		}

		res.json(json);
	},

	// Funcao apagar
	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		await AlimentoService.apagar(req.params.id);
		res.json(json);
	}

}
