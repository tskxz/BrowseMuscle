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
                gordura: alimento[i].gordura
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

        if(nome && proteina && carbs && gordura){
            let AlimentoId = await AlimentoService.inserir(nome, proteina, carbs, gordura);
            json.result = {
                id: AlimentoId,
                nome,
                proteina,
                carbs,
                gordura
            }
        } else {
            json.error = 'Error!';
        }
        res.json(json);
    }

}