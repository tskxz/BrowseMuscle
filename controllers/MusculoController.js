const MusculoService = require("../services/MusculoService");

module.exports = {
  // API - JSON - Visualizar todos os dados dentro da tabela músculos
  visualizarTodos: async (req, res) => {
    let json = { error: "", result: [] };

    // Chama o serviço para mostrar todos os dados da tabela músculos
    let musculo = await MusculoService.visualizarTodos();

    for (let i in musculo) {
      json.result.push({
        id: musculo[i].id,
        nome: musculo[i].nome,
      });
    }

    // Mostra o resultado
    res.json(json);
  },
};
