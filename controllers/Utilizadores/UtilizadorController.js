const UtilizadorService = require('../../services/Utilizadores/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador
const bcrypt = require('bcrypt')

module.exports = {

	// Função para mostrar todos os dados que estão dentro da tabela Utilizadores
	buscarTodos: async (req, res) => {
		let json = { error: '', result: [] };

		// Chama o serviço buscarTodos para mostrar todos os dados dentro da tabela
		let Utilizadores = await UtilizadorService.buscarTodos();

		// Para cada linha, acrescenta-se no json
		for (let i in Utilizadores) {
			json.result.push({
				id: Utilizadores[i].id,
				username: Utilizadores[i].username,
				primeiro_nome: Utilizadores[i].primeiro_nome,
				ultimo_nome: Utilizadores[i].ultimo_nome,
				email: Utilizadores[i].email,
				num_telemovel: Utilizadores[i].num_telemovel,
				password: Utilizadores[i].password,
				createdAt: Utilizadores[i].createdAt
			});
		}

		// Manda a resposta em json
		res.json(json);
	},

	// Função para visualizar somente um utilizador através do id
	buscarUm: async (req, res) => {
		let json = { error: '', result: [] };

		// O id vai ser parametro através do URL
		let id = req.params.id;

		// Chama o serviço buscar um ao passar o valor parametro id
		let utilizador = await UtilizadorService.buscarUm(id);

		if (utilizador) {
			json.result = utilizador; // Resultado do serviço buscarUM
		}

		// Manda a resposta em json
		res.json(json)

	},

	// Função para buscar um utilizador através do username
	buscarUsername: async (req, res) => {
		let json = { error: '', result: [] };

		let username = req.params.username;
		let utilizador = await UtilizadorService.buscarUsername(username);

		if (utilizador) {
			json.result = utilizador;
		}

		res.json(json)
	},

	// Função para buscar utilizador através do email
	buscarEmail: async (req, res) => {
		let json = { error: '', result: [] };
		let email = req.params.email;
		let utilizador = await UtilizadorService.buscarEmail(email);
		if (utilizador) {
			json.result = utilizador
		} else {
			json.error = 'error'
		}
		res.json(json);
	},

	// Página para gerir os utilizadores
	main: async(req,res) => {
		let json = { error: '', result: [] };

		// Chama o serviço buscarTodos para mostrar todos os dados dentro da tabela
		let Utilizadores = await UtilizadorService.buscarTodos();

		// Para cada linha, acrescenta-se no json
		for (let i in Utilizadores) {
			json.result.push({
				id: Utilizadores[i].id,
				username: Utilizadores[i].username,
				primeiro_nome: Utilizadores[i].primeiro_nome,
				ultimo_nome: Utilizadores[i].ultimo_nome,
				email: Utilizadores[i].email,
				num_telemovel: Utilizadores[i].num_telemovel,
				password: Utilizadores[i].password,
				id_cargo: Utilizadores[i].id_cargo,
				cargo: Utilizadores[i].cargo,
				createdAt: Utilizadores[i].createdAt
			});
		}

		utilizadores = json.result;
		console.log(utilizadores)

		// Manda a resposta em json
		res.render('admin/Utilizadores/Utilizadores.hbs', {layout:'tabela_utilizadores_crud', utilizadores, user: req.user});

	},

	// Página para editar as informações do utilizador
	editar_utilizador: async (req, res) => {

		// Chama o serviço para pegar o dado através do parametro ID
		let id = req.params.id;
		let utilizador = await UtilizadorService.buscarUm(id);
		// console.log(utilizador)	// Imprime as informações do utilizador
		if (utilizador) {
			res.render('admin/Utilizadores/editar_utilizador.hbs', {
				id: id,
				username: utilizador.username,
				primeiro_nome: utilizador.primeiro_nome,
				ultimo_nome: utilizador.ultimo_nome,
				email: utilizador.email,
				num_telemovel: utilizador.num_telemovel,
				descricao: utilizador.descricao,
				treinos_concluidos: utilizador.treinos_concluidos,
				id_cargo: utilizador.id_cargo,
				user: req.user,
				
			})
			console.log(utilizador)
		} else {
			res.status(403);
			res.send('Error')
		}
		

	},

	editar_utilizador_post: async (req, res) => {

		let id = req.params.id;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
		let num_telemovel = req.body.num_telemovel;
		let descricao = req.body.descricao;
		let id_cargo = req.body.id_cargo;


		let utilizador = await UtilizadorService.alterar(id, primeiro_nome, ultimo_nome, email, num_telemovel, descricao, id_cargo)
		if (utilizador) {
			console.log(utilizador)
			res.redirect('/admin/main_utilizadores')
		}

	},

	perfil: async (req, res) => {
		let username = req.params.username;
		let utilizador = await UtilizadorService.buscarUsername(username);
		if (utilizador) {
			console.log(utilizador)
			res.render('app/utilizador/perfil_user', {
				user: req.user,
				username: username,
				primeiro_nome: utilizador.primeiro_nome,
				ultimo_nome: utilizador.ultimo_nome,
				email: utilizador.email,
				descricao: utilizador.descricao,
				treinos_concluidos: utilizador.treinos_concluidos,
				createdAt: utilizador.createdAt
			})
			
		} else {
			res.render('app/utilizador/nao_encontrado')
		}
	},

	// Página para editar o perfil
	editar_perfil: async (req, res) => {

		// Chama o serviço para pegar os dados através da pesquisa pelo username
		let username = req.user.username;
		let utilizador = await UtilizadorService.buscarUsername(username);
		// console.log(utilizador)	// Imprime as informações do utilizador
		if (utilizador) {
			res.render('app/utilizador/editar_perfil', {
				user: req.user,
				username: username,
				primeiro_nome: req.user.primeiro_nome,
				ultimo_nome: req.user.ultimo_nome,
				email: req.user.email,
				num_telemovel: req.user.num_telemovel,
				descricao: req.user.descricao,
				treinos_concluidos: req.user.treinos_concluidos,
				
			})
			console.log(req.user)
		} else {
			res.status(403);
			res.send('Error')
		}

	},

	// Atualizar as informações do perfil do utilizador
	atualizar_perfil: async (req, res) => {
		let id = req.user.id;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
		let num_telemovel = req.body.num_telemovel;
		let descricao = req.body.descricao;


		let utilizador = await UtilizadorService.alterar(id, primeiro_nome, ultimo_nome, email, num_telemovel, descricao)
		if (utilizador) {
			console.log(utilizador)
			res.redirect('/meu_perfil')
		}


	},

	// Função para validar o username e a password
	login: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega os valores username e password do body
		let username = req.body.username;
		let password = req.body.password;

		// Imprime os valores que foi enviado pelo body
		console.log('Username: ' + username);
		console.log('Password: ' + password);

		// Chama o serviço login para selecionar o dado onde o username corresponde ao username que está na tabela Utilizadores
		let utilizador = await UtilizadorService.login(username);

		// Se o username coincidir e existir com o que está na tabela
		if (utilizador) {
			// Se coincidir a password que foi nos enviado com a password do utilizador
			if (await bcrypt.compare(password, utilizador.password)) {
				json.result = "SUCESSO!"; // Sucesso
			} else {
				json.result = 'Password errada!' // Errado
			}
			// Se o username não existir na tabela Utilizadores
		} else {
			json.error = 'Utilizador não encontrado!'; // Não existe
		}

		// Manda a resposta do servidor em JSON
		res.json(json)
	},


	// Função para criar um utilizador
	criar: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega os valores do body
		let username = req.body.username;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
		let num_telemovel = req.body.num_telemovel;
		let password = req.body.password;



		// Com esses valores obtidos
		if (username && primeiro_nome && ultimo_nome && email && password) {
			// Tenta pegar algum utilizador com o username
			let unico_username = await UtilizadorService.buscarUsername(username);

			// Tenta pegar algum utilizador com mesmo email
			let unico_email = await UtilizadorService.buscarEmail(email);

			// Se o username não existir, cria a conta
			if (unico_username == false) {
				if (unico_email == false) {

					// Encriptação da password
					const salt = await bcrypt.genSalt();
					const hashedPassword = await bcrypt.hash(password, salt); // Encriptar a password

					// Chama o serviço criar que vai inserir os valores obtidos com a palavra passe encriptada
					let UtilizadorId = await UtilizadorService.criar(username, primeiro_nome, ultimo_nome, email, num_telemovel, hashedPassword);

					// O resultado do UtilizadorId vai ser o id novo criado do utilizador
					json.result = {
						id: UtilizadorId,
						username,
						primeiro_nome,
						ultimo_nome,
						email,
						num_telemovel,
						password
					};
					
					console.log(json.result);

					res.redirect('/auth/login');
				} else {
					req.flash('error', `Email já existe!`);
					res.redirect('/auth/registar');
				}

			} else {
				req.flash('error', `Username já existe!`)
				res.redirect('/auth/registar')
			}

		} else {
			res.redirect('/auth/registar')
		}
	},

	// Função apagar
	apagar: async(req, res) => {
		let json = {error:'', result:[]};
		// Chama o serviço apagar para apagar o dado através do id
		let apagado = await UtilizadorService.apagar(req.params.id);
		if(apagado){
			res.redirect('/admin/main_utilizadores/')
		}
		// Manda a resposta do servidor em JSON
	}


}
