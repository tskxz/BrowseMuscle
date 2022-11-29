const AlimentoService = require('../../services/Alimentos/AlimentoService')

module.exports = {

    // Visualizar todos os alimentos existentes dentro da tabela alimentos
    visualizarTodos: async(req,res) => {
        let json = {error: '', result:[]};

        let alimento = await AlimentoService.visualizarTodos(); // Chama o serviço visualizarTodos()
        for(let i in alimento){
            // Para cada alimento, vai ser movido para json
            json.result.push({
                id: alimento[i].id,
                nome: alimento[i].nome,
                proteina: alimento[i].proteina,
                carbs: alimento[i].carbs,
                gordura: alimento[i].gordura,
                calorias: alimento[i].calorias
            })
            console.log(json)
        }
        res.json(json);
    },

    // Visualizar apenas um alimento através do parametro id
    buscarUm: async(req, res) => {
        let json = {error: '', result:[]};

        let id = req.params.id;                             // Receber o id através do url 
        let alimento = await AlimentoService.buscarUm(id);  // Resultado do serviço buscarUm()

        if(alimento){
            json.result = alimento;                         // Dado alimento obtido através do id movido para json 
        }
        res.json(json);                                     // Enviar o response json
    },

    // Inserir um alimento através do body
    inserir: async(req, res) => {
        let json = {error: '', result:[]};

        // Receber os seguintes valores através do body
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        // Verifica se contêm os valores
        if(nome && proteina && carbs && gordura){
            // Chhama o serviço inserir alimento e armazena o resultado no AlimentoId que vai ser o id incrementado
            let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura, calorias);
            json.result = {
                id: AlimentoId,
                nome,
                proteina,
                carbs,
                gordura,
                calorias
            }
        } else {
            json.error = 'Error!';
        }

        // Envia a resposta para o servidor JSON
        res.json(json);
    },

    // Alterar dados do alimento através do body
    alterar: async(req, res) => {
        let json = {error: '', result:[]};

        // Receber os seguintes valores através do body
        let id = req.params.id;
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        // Verifica se contêm valores
        if(id && nome && proteina && carbs && gordura){
            // Usa o serviço alterar com os valores recebidos como parametros e fazer UPDATE
            await AlimentoService.alterar(id, nome, proteina, carbs, gordura, calorias)
            json.result = {
                id,
                nome,
                proteina,
                carbs,
                gordura,
                calorias
            }
        } else {
            json.error = 'Error!';
        }

        // Envia a resposta para o servidor
        res.json(json)
    },

    // Apaga um alimento através do id
    apagar: async(req, res) => {
        let json = {error: '', result:[]};

        // Chama o serviço apagar e apaga através do parametro do id passado pelo URL
        await AlimentoService.apagar(req.params.id);

        // Envia resposta
        res.json(json)
    },

    // Página - Visualização dos alimentos para uma tabela na página principal alimentos
    view: async (req, res) => {
        let json = {error: '', result: []};

        // Chama o serviço visualizarTodos() e armazena todos os dados
        let alimentos = await AlimentoService.visualizarTodos();

        // Percorre o array alimentos e adiciona cada alimento para o json
        for(let i in alimentos){
            json.result.push({
                id: alimentos[i].id,
                alimento: alimentos[i].alimento,
                proteina: alimentos[i].proteina,
                carbs: alimentos[i].carbs,
                gordura: alimentos[i].gordura,
                calorias: alimentos[i].calorias,
                marca: alimentos[i].marca
            })
        }

        // As linhas vão ser os alimentos do resultado de visualizarTodos
        rows = json.result;
        console.log(rows)

        // Mostra os alimentos ao passar o valor rows
        res.render('app/alimentos/tabela_alimentos', {layout:'tabela_alimentos', rows, user: req.user,})
    },

    // Página - Visualização dos alimentos para uma tabela na página de administração alimentos para fazer operações
    main: async(req, res)=>{
        let json = {error: '', result: []};

        let alimentos = await AlimentoService.visualizarTodos();

        for(let i in alimentos){
            json.result.push({
                alimento_id: alimentos[i].alimento_id,
                nome: alimentos[i].nome,
                proteina: alimentos[i].proteina,
                carbs: alimentos[i].carbs,
                gordura: alimentos[i].gordura,
                calorias: alimentos[i].calorias,
                marca: alimentos[i].marca
            })
        }

        rows = json.result;
        console.log(rows);

        // Layout diferente para acrescentar a coluna editar e apagar
        res.render('admin/alimentos/tabela_alimentos', {layout:'tabela_alimentos_crud', rows, user: req.user})
    },

    // Página - Adicionar alimento
	adicionar: async (req, res) => {
		let json = {error: '', result:[]};

        // Pega os valores através do body
		let nome = req.body.nome;
		let proteina = req.body.proteina;
		let carbs = req.body.carbs;
		let gordura = req.body.gordura;
        let calorias = req.body.calorias;
		
		if(nome && proteina && carbs && gordura && calorias){
            // Insere alimento com os valores recebidos
			let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura, calorias);
			json.result = {
				id: AlimentoId,
				nome,
				proteina,
				carbs,
				gordura,
                calorias
			};
			
            // Após ser inserido, mostra o alert
			res.render('admin/alimentos/adicionar_alimentos', { alert: `${nome} Adicionado com sucesso`, user: req.user,});

		} else {
			json.error = 'Error!';
		}

        // Mostra a página para preencher os dados e inserir alimento
		res.render('admin/alimentos/adicionar_alimentos', {user: req.user,});
	},

    // Página - Eliminar um alimento
    eliminar: async(req, res) => {
		let json = {error: '', result:[]};
		alimento = await AlimentoService.apagar(req.params.id);
		console.log(alimento);

        // Redireciona para a página principal se for apagado
		if(alimento){
			res.redirect('/admin/main_alimentos/')
		}
	},

    // Página - Atualizar Alimento
    atualizar: async(req,res) => {
		let json = {error: '', result:[]};

        // Obtém os valores obtidos através do body
		let id = req.params.id;
		let nome = req.body.nome;	
		let proteina = req.body.proteina;
		let carbs = req.body.carbs;
		let gordura = req.body.gordura;
        let calorias = req.body.calorias;		

        // Se conter os valores
		if(id && nome && proteina && carbs && gordura, calorias){
            // Usa o serviço alterar com os valores obtidos
			await AlimentoService.alterar(id, nome, proteina, carbs, gordura, calorias);
			json.result = {
				id,
				nome,
				proteina,
				carbs,
				gordura,
                calorias
			};
            // Mostra o alert após alterar um valor do alimento
            res.render('admin/alimentos/editar_alimento', {row, alert: `${nome} com id ${id} alterado com sucesso`, user: req.user,})
            
            
		} else {
			json.error = 'Error!';
		}

        // Buscar as informações do alimento
        row = await AlimentoService.buscarUm(id);

        // Com as informações do alimento, mostra por pré-definido os valores dentro dos inputs para alterar algo
        res.render('admin/alimentos/editar_alimento', {row, user: req.user,})

	},


}