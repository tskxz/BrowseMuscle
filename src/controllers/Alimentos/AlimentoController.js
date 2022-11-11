const AlimentoService = require('../../services/Alimentos/AlimentoService')

module.exports = {
    visualizarTodos: async(req,res) => {
        let json = {error: '', result:[]};

        let alimento = await AlimentoService.visualizarTodos();
        for(let i in alimento){
            json.result.push({
                id: alimento[i].id,
                nome: alimento[i].nome,
                proteina: alimento[i].proteina,
                carbs: alimento[i].carbs,
                gordura: alimento[i].gordura,
                calorias: alimento[i].calorias
            })
        }
        res.json(json);
    },

    buscarUm: async(req, res) => {
        let json = {error: '', result:[]};

        let id = req.params.id;
        let alimento = await AlimentoService.buscarUm(id);

        if(alimento){
            json.result = alimento;
        }
        res.json(json);
    },

    inserir: async(req, res) => {
        let json = {error: '', result:[]};

        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        if(nome && proteina && carbs && gordura){
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
        res.json(json);
    },

    alterar: async(req, res) => {
        let json = {error: '', result:[]};

        let id = req.params.id;
        let nome = req.body.nome;
        let proteina = req.body.proteina;
        let carbs = req.body.carbs;
        let gordura = req.body.gordura;
        let calorias = req.body.calorias;

        if(id && nome && proteina && carbs && gordura){
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

        res.json(json)
    },

    apagar: async(req, res) => {
        let json = {error: '', result:[]};

        await AlimentoService.apagar(req.params.id);
        res.json(json)
    },

    view: async (req, res) => {
        let json = {error: '', result: []};

        let alimentos = await AlimentoService.visualizarTodos();

        for(let i in alimentos){
            json.result.push({
                id: alimentos[i].id,
                nome: alimentos[i].nome,
                proteina: alimentos[i].proteina,
                carbs: alimentos[i].carbs,
                gordura: alimentos[i].gordura,
                calorias: alimentos[i].calorias
            })
        }

        rows = json.result;
        console.log(rows);
        res.render('app/alimentos/tabela_alimentos', {layout:'tabela_alimentos', rows})
    }

}