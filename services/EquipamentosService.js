const db = require("../mysql");

module.exports = {
  // Serviço para visualizar todos os Equipamentos
  visualizarTodos: () => {
    return new Promise((aceito, rejeitado) => {
      db.query("SELECT * FROM Equipamentos", (error, results) => {
        if (error) {
          rejeitado(error);
          return;
        }
        aceito(results);
      });
    });
  },
};
