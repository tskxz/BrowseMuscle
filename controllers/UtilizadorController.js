const UtilizadorService = require('../services/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador
const SessaoTreinoService = require('../services/SessaoTreinoService');
const ExercicioService = require('../services/ExercicioService');
const crypto = require('crypto')
const bcrypt = require('bcrypt')
const path = require('path')

module.exports = {

	// API - JSON - Mostrar todos os dados que estão dentro da tabela Utilizadores
	buscarTodos: async (req, res) => {
		let json = { error: '', result: [] };

		// Chama o serviço para mostrar todos os utilizadores
		let Utilizadores = await UtilizadorService.buscarTodos();

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

		// Mostra o resultado
		res.json(json);
	},

	// API - JSON - Visualizar somente um utilizador através do id
	buscarUm: async (req, res) => {
		let json = { error: '', result: [] };

		// O id vai ser parametro através do URL
		let id = req.params.id;

		// Chama o serviço para visualizar um utilizador através do ID
		let utilizador = await UtilizadorService.buscarUm(id);

		if (utilizador) {
			json.result = utilizador;
		}

		// Mostra o resultado
		res.json(json)

	},

	// API - JSON - Buscar um utilizador através do username
	buscarUsername: async (req, res) => {
		let json = { error: '', result: [] };

		// O username vai ser parametro através do URL
		let username = req.params.username;

		// Chama o serviço para visualizar um utilizador através do username
		let utilizador = await UtilizadorService.buscarUsername(username);

		if (utilizador) {
			json.result = utilizador;
		}

		res.json(json)
	},

	// API - JSON - Buscar utilizador através do email
	buscarEmail: async (req, res) => {
		let json = { error: '', result: [] };

		// O email vai ser parametro através do URL
		let email = req.params.email;

		// Chama o serviço para visualizar um utilizador através do email
		let utilizador = await UtilizadorService.buscarEmail(email);

		if (utilizador) {
			json.result = utilizador
		} else {
			json.error = 'error'
		}
		res.json(json);
	},

	// Página Administração - Visualizar todos os utilizadores
	main: async (req, res) => {
		let json = { error: '', result: [] };

		// Chama o serviço para mostrar todos os utilizadores
		let Utilizadores = await UtilizadorService.buscarTodos();

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

		// Mostra a tabela de utilizadores
		res.render('admin/Utilizadores/Utilizadores.hbs', { layout: 'tabela_utilizadores_crud', utilizadores, user: req.user });

	},

	// Página Administração - Mostrar página para editar as informações do utilizador
	editar_utilizador: async (req, res) => {

		// Chama o serviço para pegar o dado através do parametro ID
		let id = req.params.id;
		let utilizador = await UtilizadorService.buscarUm(id);

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
		} else {
			res.status(403);
			res.send('Error')
		}
	},

	// Página Administração -Editar as informações do utilizador
	editar_utilizador_post: async (req, res) => {

		// Pegar os valores
		let id = req.params.id;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
		let num_telemovel = req.body.num_telemovel;
		let descricao = req.body.descricao;
		let id_cargo = req.body.id_cargo;

		// Alterar as informações através do serviço
		let utilizador = await UtilizadorService.alterar_user(
			id,
			primeiro_nome,
			ultimo_nome,
			email,
			num_telemovel,
			descricao,
			id_cargo
		)
		
		// Verifica se atualizou
		if (utilizador) {
			res.redirect('/admin/main_utilizadores')
		} else {
			res.status(403);
			res.send('Error')
		}

	},

	// Página Utilizador - Perfil do utilizador
	perfil: async (req, res) => {

		// Pega o parametro username
		let username = req.params.username;

		// Chama o serviço para buscar informações através do username
		let utilizador = await UtilizadorService.buscarUsername(username);

		// Mostra o perfil
		if (utilizador) {
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

	// Página Utilizador - Editar o perfil
	editar_perfil: async (req, res) => {

		// Pega o parametro username
		let username = req.user.username;

		// Chama o serviço para buscar informações através do username
		let utilizador = await UtilizadorService.buscarUsername(username);

		// Mostra a página para editar perfil
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
		} else {
			res.status(403);
			res.send('Error')
		}

	},

	// Página Utilizador - Formulário para criar uma sessão de treino
	criar_sessao_treino: async (req, res) => {
		res.render('app/criar_sessao_treino', { user: req.user })
	},

	// Página Utilizador - Criar uma sessão de treino
	criar_sessao_treino_post: async (req, res) => {
		// Buscar os valores
		let nome = req.body.nome;
		let descricao = req.body.descricao;
		let userid = req.user.id;

		// Gerar um ID para sessão de treino
		let randomBytes = 0;
		randomBytes = crypto.randomBytes(4);
		const id_sessao = randomBytes.readUInt32BE();

		if (nome && descricao && userid) {
			// Verifica se a sessão do treino já existe com o mesmo nome, se existir, lanca erro
			let existeTreino = await SessaoTreinoService.buscarTodos_user_nome(userid, nome);
			if (existeTreino.length > 0) {
				req.flash('error', `Sessão ${nome} já existe!`)
			} else {
				// Cria a sessão de treino com o nome e descricao
				await SessaoTreinoService.criar(id_sessao, nome, descricao, userid);
				req.flash('success', `Sessão ${nome} criado com sucesso!`)
			}
		} else {
			req.flash('error', `Erro ao criar sessao de treino`)
		}
		res.redirect('/lista_sessao_treino')
	},

	// Página Utilizador - Ver as sessções de treino que o utilizador criou
	ver_sessoes_treinos: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega o id do utilizador
		let userid = req.user.id;

		// Pega todos as sessões de treino criado pelo utilizador
		let SessoesTreino_user = await SessaoTreinoService.buscarTodos_user(userid);

		// Buscar os valores
		for (let i in SessoesTreino_user) {
			json.result.push({
				id: SessoesTreino_user[i].id,
				id_sessao: SessoesTreino_user[i].id_sessao,
				nome: SessoesTreino_user[i].nome,
				descricao: SessoesTreino_user[i].descricao,
				createdAt: SessoesTreino_user[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
				estado: SessoesTreino_user[i].estado

			});
		}

		// Mostrar as sessões de treino
		res.render('app/lista_sessoes_treinos', { user: req.user, rows: json.result, success: req.flash("success"), error: req.flash("error") })
	},

	// Página Utilizador - Ver a sessão de treino
	ver_sessao: async (req, res) => {
		let json = { error: '', result: [] };
		let exercicios = [];

		// Id da sessão de treino
		let id = req.params.id_sessao;

		// Id do utilizador 
		let userid = req.user.id

		// Pega as informações da sessão de treino através do ID
		let sessaoTreino = await SessaoTreinoService.buscarTodos_sessao(id);
		let nome_treino = sessaoTreino[0].nome
		let descricao_treino = sessaoTreino[0].descricao
		let createdAt_treino = sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' })
		let id_sessao = sessaoTreino[0].id_sessao
		let estado = sessaoTreino[0].estado

		// Verifica se existe a sessão de treino com esse id
		if (!sessaoTreino) {
			json.error = "Sessão de treino não encontrado!"
		} else {
			// Utilizador não pode visualizar as sessões de treino de outros utilizadores diferentes
			sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
			if (sessaoTreino_utilizador_id != userid) {
				json.error = 'Não tem permissão!'
			} else {
				for(let i in sessaoTreino){
					json.result.push({
						id: sessaoTreino[i].id,
						id_sessao: sessaoTreino[i].id_sessao,
						nome: sessaoTreino[i].nome,
						descricao: sessaoTreino[i].descricao,
						createdAt: sessaoTreino[i].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
						estado: sessaoTreino[i].estado,
						exercicio_id: sessaoTreino[i].exercicio_id,

					});
				}	
			}
			
			// Mostra os nomes de exercícios que está na sessão de treino
			nomes_exercicios = await SessaoTreinoService.buscar_nome_exercicio(id_sessao)
			for(let i in nomes_exercicios){
				exercicios.push({
					id_sessao: id_sessao,
					nome: nomes_exercicios[i].nome,
					carga: nomes_exercicios[i].carga,
					reps_objetivo: nomes_exercicios[i].reps_objetivo,
					series: nomes_exercicios[i].series,
					exercicio_id: nomes_exercicios[i].exercicio_id,
					concluido: nomes_exercicios[i].concluido
				})
			}
			
		}

		// Mostra a sessão de treino
		res.render('app/sessao_treino', {
			rows: json.result,
			user: req.user,
			nome_treino: nome_treino,
			descricao_treino: descricao_treino,
			createdAt_treino: createdAt_treino,
			id_sessao: id_sessao,
			exercicios: exercicios,
			estado: estado,
			success: req.flash("success"),
			error: req.flash("error")
			})

	},

	// Página Utilizador - Página para definir exercícios e objetivo de número de repetições para a sessão de treino
	definir_sessao_treino: async(req,res)=>{
		let json = { error: '', result: [] };

		let id_sessao = req.params.id_sessao
		let userid = req.user.id
		
		let sessaoTreino = await SessaoTreinoService.buscarUm(id_sessao);
		let exercicios = await ExercicioService.buscarTodos();
		
		if (!sessaoTreino) {
			json.result = "Sessão de treino não encontrado!"
		} else {
			sessaoTreino_utilizador_id = sessaoTreino[0].utilizador_id
			if (sessaoTreino_utilizador_id != userid) {
				json.result = 'Não tem permissão!'
			} else {
				json.result.push({
					id: sessaoTreino[0].id,
					id_sessao: sessaoTreino[0].id_sessao,
					nome: sessaoTreino[0].nome,
					descricao: sessaoTreino[0].descricao,
					createdAt: sessaoTreino[0].createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
					exercicio_id: sessaoTreino[0].exercicio_id,
					estado: sessaoTreino[0].estado,
					series: sessaoTreino[0].series,
					carga: sessaoTreino[0].carga,
					reps_objetivo: sessaoTreino[0].reps_objetivo,
				})
			}
		}

		res.render('app/definir_objetivo_sessao', {
			rows: json.result,
			user: req.user,
			exercicios: exercicios,
			id_sessao: id_sessao
		})

	},
	// Página Utilizador - Definir exercícios e objetivo de número de repetições para a sessão de treino
	definir_sessao_treino_post: async(req,res)=>{
		let json = {error: '', result: []}

		let id_sessao = req.params.id_sessao;
		let userid = req.user.id;
		let carga = req.body.carga;
		let reps_objetivo = req.body.reps_objetivo;
		let exercicio_id = req.body.exercicio_id;
		let series = req.body.series;

		let sessaoTreino = await SessaoTreinoService.buscarUm(id_sessao);

		nome = sessaoTreino[0].nome
		descricao = sessaoTreino[0].descricao
		createdAt = sessaoTreino[0].createdAt

		if(carga && reps_objetivo && exercicio_id && series){
			// Inserir e definir os objetivos do exercício da sessão de treino
			let definido = await SessaoTreinoService.definir_objetivo_exercicio(id_sessao, userid,exercicio_id, carga, reps_objetivo, series, nome, descricao, createdAt)
			if(!definido){
				json.result="error"
			}else{
				json.result = "success!"
				req.flash('success', `Realizado com sucesso!`)
			}
		} else {
			json.result = "error"
			req.flash('error', `Erro ao adicionar o exercício`)
		}
		
		// Após definir os objetivos, vai ser redirecionado para a sessão de treino
		res.redirect(`/ver_sessao_treino/${id_sessao}`)
	},

	// Página Utilizador - Concluir a sessão de treino
	concluir_sessao_treino_post: async(req,res)=>{

		// Usa o serviço para concluir o treino
		let id_sessao = req.params.id_sessao;
		let sessao_concluido = await SessaoTreinoService.concluirTreino(id_sessao)

		// Verifica se foi finalizado
		if(!sessao_concluido){
			req.flash('error', `Erro!`)
		} else {
			req.flash('success', `Finalizado com sucesso!`)
		}
		res.redirect(`/lista_sessao_treino`)

	},

	// Página Utilizador - Página para definir número de repetições que o utilizador executou no exercício
	definir_reps: async(req,res)=>{
		let json = {error: '', result:[]}

		let id_sessao = req.params.id_sessao;
		let exercicio_id = req.params.exercicio_id
		let exercicios = await SessaoTreinoService.buscarUmSessaoExercicio(id_sessao, exercicio_id)
		
		json.result = {
			id_sessao: id_sessao,
			id_exercicio: exercicio_id,
			carga: exercicios[0].carga,
			reps_objetivo: exercicios[0].reps_objetivo,
			reps_set1 : exercicios[0].reps_set1,
			reps_set2: exercicios[0].reps_set2,
			reps_set3: exercicios[0].reps_set3,

		}
		
		// Mostra o formulário para definir o número de repetições do exercício
		res.render('app/definir_reps', {user: req.user, rows: exercicios, id_sessao: id_sessao, exercicio_id: exercicio_id, success: req.flash("success"), error: req.flash("error")})
	},

	// Página Utilizador - Definir número de repetições que o utilizador executou no exercício
	definir_reps_post: async(req,res)=>{
		
		let id_sessao = req.params.id_sessao;
		let exercicio_id = req.params.exercicio_id

		reps_set1 = req.body.reps_set1
		reps_set2 = req.body.reps_set2
		reps_set3 = req.body.reps_set3
		reps_set4 = req.body.reps_set4
		reps_set5 = req.body.reps_set5

		// Chama o serviço para concluir o exercício após definir número de repetições
		let exercicio_concluido = await SessaoTreinoService.concluirExercicio(id_sessao, exercicio_id)

		// Chama o serviço para definir o número de repetições do exercício realizado
		await SessaoTreinoService.definirReps(reps_set1, reps_set2, reps_set3, reps_set4, reps_set5, id_sessao, exercicio_id)
		if(!exercicio_concluido){
			req.flash('error', `Erro!`)
		} else {
			await SessaoTreinoService.emProgresso(id_sessao)
			req.flash('success', `Apontado com sucesso!`)
		}

		// Redireciona para a sessão de treino
		res.redirect(`/ver_sessao_treino/${id_sessao}`)
	},
	
	// Página Utilizador - Apaga a sessão de treino
	apagar_sessao_treino: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para apagar o dado através do id
		let apagado = await SessaoTreinoService.apagar(req.params.id_sessao);
		if (apagado) {
			res.redirect('/lista_sessao_treino')
		}
	},

	// Página Utilizador - Atualiza as informações do perfil do utilizador
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

	// Página Utilizador - Página para mudar palavra passe
	mudar_pass: async (req, res) => {
		res.render('app/utilizador/mudar_pass', { user: req.user })
	},

	// Página Utilizador - Mudar palavra passe
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
		uploadPath = path.join(__dirname, '/../upload/', sampleFile.name) // Path do Ficheiro

		// Mover para a pasta upload
		sampleFile.mv(uploadPath, async function (err) {
			if (err) return res.status(500).send(err);
			// Alterar na base de dados, o nome da foto
			let utilizador = await UtilizadorService.alterar_foto(id, sampleFile.name)
			if (utilizador) {
				// Foto mudada com sucesso
				res.redirect('/meu_perfil/editar')
			}
		})



	},

	// API - JSON  - Validar o username e a password
	login: async (req, res) => {
		let json = { error: '', result: [] };

		// Pega os valores username e password do body
		let username = req.body.username;
		let password = req.body.password;

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

		// Mostra o resultado
		res.json(json)
	},


	// API - JSON - Criar um utilizador
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

	// API - JSON - Apagar utilizador
	apagar: async (req, res) => {
		let json = { error: '', result: [] };
		// Chama o serviço apagar para apagar o dado através do id
		let apagado = await UtilizadorService.apagar(req.params.id);
		if (apagado) {
			res.redirect('/admin/main_utilizadores/')
		}
		// Manda a resposta do servidor em JSON
	},

	// Página Administração - Apagar utilizador
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
