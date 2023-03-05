const EquipamentosService = require("../services/EquipamentosService");

module.exports = {
  // API - JSON Visualizar todos os dados dentro da tabela Equipamentos
  visualizarTodos: async (req, res) => {
    let json = { error: "", result: [] };

    // Chama o serviço visualizar todos
    let equipamento = await EquipamentosService.visualizarTodos();

    for (let i in equipamento) {
      json.result.push({
        id: equipamento[i].id,
        nome: equipamento[i].nome,
      });
    }

    // Mostra o resultado
    res.json(json);
  },
};
