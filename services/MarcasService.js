const db = require("../mysql");

module.exports = {
  // Serviço para visualizar todos os Marcas
  visualizarTodos: () => {
    return new Promise((aceito, rejeitado) => {
      db.query("SELECT * FROM Marcas", (error, results) => {
        if (error) {
          rejeitado(error);
          return;
        }
        aceito(results);
      });
    });
  },
};
