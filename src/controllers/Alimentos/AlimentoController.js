const AlimentoService = require('../../services/Utilizadores/UtilizadoresService')

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
    }
}