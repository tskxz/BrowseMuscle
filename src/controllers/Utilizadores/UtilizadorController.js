const UtilizadorService = require('../../services/Utilizadores/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador
const bcrypt = require('bcrypt')

module.exports = {

	// Função para mostrar todos os dados que estão dentro da tabela utilizadores
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		// Chama o serviço buscarTodos para mostrar todos os dados dentro da tabela
		let utilizadores = await UtilizadorService.buscarTodos();

		// Para cada linha, acrescenta-se no json
		for(let i in utilizadores){
			json.result.push({
				id: utilizadores[i].id,
				username: utilizadores[i].username,
				primeiro_nome: utilizadores[i].primeiro_nome,
				ultimo_nome: utilizadores[i].ultimo_nome,
				email: utilizadores[i].email,
				num_telemovel: utilizadores[i].num_telemovel,
				password: utilizadores[i].password
			});
		}

		// Manda a resposta em json
		res.json(json);
	},

	// Função para visualizar somente um utilizador através do id
	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		// O id vai ser parametro através do URL
		let id = req.params.id;

		// Chama o serviço buscar um ao passar o valor parametro id
		let utilizador = await UtilizadorService.buscarUm(id);

		if(utilizador){
			json.result = utilizador; // Resultado do serviço buscarUM
		}

		// Manda a resposta em json
        res.json(json)

	},

	// Função para buscar um utilizador através do username
	buscarUsername: async(req, res) => {
		let json = {error: '', result:[]};

		let username = req.params.username;
		let utilizador = await UtilizadorService.buscarUsername(username);

		if(utilizador){
			json.result = utilizador;
		}

		res.json(json)
	},

	// Função para buscar utilizador através do email
	buscarEmail: async(req, res) => {
		let json = {error: '', result:[]};
		let email = req.params.email;
		let utilizador = await UtilizadorService.buscarEmail(email);
		if(utilizador){
			json.result=utilizador
		} else {
			json.error = 'error'
		}
		res.json(json);
	},

	// Função para validar o username e a password
	login: async (req, res) => {
		let json = {error: '', result:[]};

		// Pega os valores username e password do body
		let username = req.body.username;
		let password = req.body.password;

		// Imprime os valores que foi enviado pelo body
		console.log('Username: ' + username);
		console.log('Password: ' + password);

		// Chama o serviço login para selecionar o dado onde o username corresponde ao username que está na tabela utilizadores
		let utilizador = await UtilizadorService.login(username);

		// Se o username coincidir e existir com o que está na tabela
		if(utilizador){
			// Se coincidir a password que foi nos enviado com a password do utilizador
			if(await bcrypt.compare(password, utilizador.password)){
				json.result = "SUCESSO!"; // Sucesso
			} else {
				json.result = 'Password errada!' // Errado
			}
		// Se o username não existir na tabela utilizadores
		} else {
			json.error = 'Utilizador não encontrado!'; // Não existe
		}

		// Manda a resposta do servidor em JSON
		res.json(json)
	},


	// Função para criar um utilizador
    criar: async (req, res) => {
		let json = {error:'', result:[]};

		// Pega os valores do body
		let username = req.body.username;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
        let num_telemovel = req.body.num_telemovel;
        let password = req.body.password;

        

		// Com esses valores obtidos
		if(username && primeiro_nome && ultimo_nome && email && num_telemovel && password){
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
			res.redirect('/auth/register')
		}
	},


}
