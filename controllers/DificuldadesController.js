const DificuldadesService = require("../services/DificuldadesService");

module.exports = {
  // API - JSON - Visualizar todos os dados existentes da tabela Dificuldades
  visualizarTodos: async (req, res) => {
    let json = { error: "", result: [] };

    // Chamar o serviço visualizar todos
    let dificuldade = await DificuldadesService.visualizarTodos();

    for (let i in dificuldade) {
      json.result.push({
        id: dificuldade[i].id,
        nome: dificuldade[i].nome,
      });
    }

    // Mostra o resultado
    res.json(json);
  },
};
