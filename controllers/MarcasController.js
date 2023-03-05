const MarcasService = require("../services/MarcasService");

module.exports = {
  // API - JSON - Visualizar todos os dados dentro da tabela Marcas
  visualizarTodos: async (req, res) => {
    let json = { error: "", result: [] };

    // Chama o serviço visualizar todos
    let marca = await MarcasService.visualizarTodos();

    for (let i in equipamento) {
      json.result.push({
        id: marca[i].id,
        nome: marca[i].nome,
      });
    }

    // Mostra o resultado
    res.json(json);
  },
};
