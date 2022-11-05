const UtilizadorService = require('../../services/Utilizadores/UtilizadoresService'); // Usa o serviço para dar a resposta ao controlador
const bcrypt = require('bcrypt')

module.exports = {

	// Funcao visualizar todos os exerecícios
	buscarTodos: async (req, res) => {
		let json = {error: '', result:[]};

		let utilizadores = await UtilizadorService.buscarTodos(); // Visualizar todos os exercícios

		// Para cada exercício, vai extrair informacao de cada campo
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

		res.json(json);
	},

	// Funcao visualizar um exercício
	buscarUm: async (req, res) => {
		let json = {error:'', result:[]};

		let id = req.params.id;
		let utilizador = await UtilizadorService.buscarUm(id); // Visualiza o dado com esse ID

		if(utilizador){
			json.result = utilizador; // Resultado de buscarUm
		}
        res.json(json)

	},

    criar: async (req, res) => {
		let json = {error:'', result:[]};

		// No método POST que vai ser o inserir, vai ter o request de cada esses campos
		let username = req.body.username;
		let primeiro_nome = req.body.primeiro_nome;
		let ultimo_nome = req.body.ultimo_nome;
		let email = req.body.email;
        let num_telemovel = req.body.num_telemovel;
        let password = req.body.password;

        

		// Inserir exercício
		if(username && primeiro_nome && ultimo_nome && email && num_telemovel && password){
            const salt = await bcrypt.genSalt();
            const hashedPassword = await bcrypt.hash(password, salt);

            console.log(salt);
            console.log(hashedPassword);
			let UtilizadorId = await UtilizadorService.criar(username, primeiro_nome, ultimo_nome, email, num_telemovel, hashedPassword);
            
            
			json.result = {
				id: UtilizadorId,
				username,
				primeiro_nome,
				ultimo_nome,
				email,
                num_telemovel,
                password
			};
		} else {
			json.error = 'Error!';
		}

		res.json(json);
	},

}
