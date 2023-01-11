const UtilizadorService = require('../services/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador
const SessaoTreinoService = require('../services/SessaoTreinoService');
const bcrypt = require('bcrypt')
const path = require('path')

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
	main: async (req, res) => {
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
		res.render('admin/Utilizadores/Utilizadores.hbs', { layout: 'tabela_utilizadores_crud', utilizadores, user: req.user });

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


		let utilizador = await UtilizadorService.alterar_user(id, primeiro_nome, ultimo_nome, email, num_telemovel, descricao, id_cargo)
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
				createdAt: utilizador.createdAt,
				foto: utilizador.foto
			})

		} else {
			res.render('app/utilizador/nao_encontrado', { user: req.user })
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
				foto: req.user.foto


			})
			console.log(req.user)
		} else {
			res.status(403);
			res.send('Error')
		}

	},

	criar_sessao_treino: async (req, res) => {
		res.render('app/criar_sessao_treino', { user: req.user })
	},

	criar_sessao_treino_post: async (req, res) => {
		let json = { error: '', result: [] };

		// Buscar os valores
		let nome = req.body.nome;
		let descricao = req.body.descricao;
		let userid = req.user.id;

		if (nome && descricao && userid) {
			// Verifica se a sessão do treino já existe, se existir, lanca aviso
			let existeTreino = await SessaoTreinoService.buscarTodos_user_nome(userid, nome);
			if (existeTreino.length > 0) {
				req.flash('error', `Sessão ${nome} já existe!`)
			} else {
				// Cria a sessão de treino com o nome e descricao
				await SessaoTreinoService.criar(nome, descricao, userid);
				req.flash('success', `Sessão ${nome} criado com sucesso!`)
			}
		} else {
			req.flash('error', `Erro ao criar sessao de treino`)
		}
		res.redirect('/lista_sessao_treino')
	},

	ver_sessoes_treinos: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o id do utilizador que está com sessão iniciada
		let userid = req.user.id;

		// Pega todos as sessões de treino criado pelo utilizador
		let SessoesTreino_user = await SessaoTreinoService.buscarTodos_user(userid);

		// Buscar os valores
		for (let i in SessoesTreino_user) {
			json.result.push({
				id: SessoesTreino_user[i].id,
				nome: SessoesTreino_user[i].nome,
				descricao: SessoesTreino_user[i].descricao,
				createdAt: SessoesTreino_user[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
				estado: SessoesTreino_user[i].estado

			});
		}

		// Mandar os valores
		res.render('app/lista_sessoes_treinos', { user: req.user, rows: json.result, success: req.flash("success"), error: req.flash("error") })
	},

	ver_sessao: async (req, res) => {
		let json = { error: '', result: [] };

		// Id da sessão de treino
		let id = req.params.id;

		// Id do utilizador que está com sessão iniciada
		let userid = req.user.id

		let sessaoTreino = await SessaoTreinoService.buscarUm(id);

		// Verifica se existe a sessão de treino com esse id
		if (!sessaoTreino) {
			json.error = "Sessão de treino não encontrado!"
		} else {
			// Utilizador não pode visualizar as sessões de treino de outros utilizadores diferentes
			sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
			if (sessaoTreino_utilizador_id != userid) {
				json.error = 'Não tem permissão!'
			} else {
				json.result.push({
					id: sessaoTreino[0].id,
					nome: sessaoTreino[0].nome,
					descricao: sessaoTreino[0].descricao,
					createdAt: sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
					estado: sessaoTreino[0].estado
				})
			}
		}

		res.render('app/sessao_treino', {rows: json.result, user: req.user})

	},

	apagar_sessao_treino: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para apagar o dado através do id
		let apagado = await SessaoTreinoService.apagar(req.params.id);
		if (apagado) {
			res.redirect('/lista_sessao_treino')
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

	// Mudar palavra passe
	mudar_pass: async (req, res) => {
		res.render('app/utilizador/mudar_pass', { user: req.user })
	},

	mudar_pass_post: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega os valores username, password atual, confirmar password e nova password
		let username = req.user.username;
		let palavra_passe_atual = req.body.palavra_passe_atual;
		let confirmar_palavra_passe = req.body.confirmar_palavra_passe;
		let nova_palavra_passe = req.body.nova_palavra_passe;

		// Chama o serviço login para buscar o username
		let utilizador = await UtilizadorService.login(username);

		// Se o username coincidir e existir com o que está na tabela
		if (utilizador) {
			// Se coincidir a password que foi nos enviado com a password do utilizador
			if (await bcrypt.compare(palavra_passe_atual, utilizador.password)) {
				json.result = "SUCESSO!"; // Sucesso
				if (confirmar_palavra_passe === nova_palavra_passe) {

					const salt = await bcrypt.genSalt();
					const hashedNewPassword = await bcrypt.hash(nova_palavra_passe, salt); // Encriptar a password

					// Chama o serviço criar que vai inserir os valores obtidos com a palavra passe encriptada
					await UtilizadorService.mudar_pass(req.user.id, hashedNewPassword);
					json.result = "Palavra passe mudada com sucesso!"

				} else {
					json.result = "Palavra passe não são iguais!"
				}
			} else {
				json.result = 'Password errada!' // Errado
			}
			// Se o username não existir na tabela Utilizadores
		}

		res.render('app/utilizador/mudar_pass', { alert: json.result, user: req.user })
	},

	atualizar_perfil_foto: async (req, res) => {

		let sampleFile; 		// Ficheiro
		let uploadPath;			// Diretório de uploads
		let id = req.user.id;	// Id do utilizador

		if (!req.files || Object.keys(req.files).length === 0) {
			return res.status(400).send('No files were uploaded.') // Se não for enviado
		}

		sampleFile = req.files.sampleFile 	// Ficheiro enviado
		uploadPath = path.join(__dirname, '/../../upload/', sampleFile.name) // Path do Ficheiro

		console.log(sampleFile);

		// Mover para a pasta upload
		sampleFile.mv(uploadPath, async function (err) {
			if (err) return res.status(500).send(err);
			// Alterar na base de dados, o nome da foto
			let utilizador = await UtilizadorService.alterar_foto(id, sampleFile.name)
			if (utilizador) {
				console.log('Foto atualizada com sucesso!')
				console.log(sampleFile.name)
				res.redirect('/meu_perfil/editar')
			}
		})



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
	apagar: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para apagar o dado através do id
		let apagado = await UtilizadorService.apagar(req.params.id);
		if (apagado) {
			res.redirect('/admin/main_utilizadores/')
		}
		// Manda a resposta do servidor em JSON
	},

	pesquisarUtilizador: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o valor que nos foi enviado na barra de pesquisa
		let pesquisa = req.body.pesquisa;

		// Com o valor que foi nos enviado, vai chamar o serviço pesquisarUtilizador
		let utilizador = await UtilizadorService.pesquisarUtilizador(pesquisa);

		if (utilizador) {
			json.result = utilizador;
		} else {
			json.error = "err"
		}

		// Resultado do serviço armazenado em rows
		rows = json.result;

		var keyCount = Object.keys(rows).length;

		// Mostra o resultado
		res.render('admin/Utilizadores/pesquisa', { layout: 'tabela_utilizadores_crud', rows, user: req.user, alert: `${keyCount} resultados encontrados!` })

	},


}
