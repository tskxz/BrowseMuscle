const db = require("../mysql");

module.exports = {
  // Serviço para visualizar todas as Dificuldades
  visualizarTodos: () => {
    return new Promise((aceito, rejeitado) => {
      db.query("SELECT * FROM Dificuldades", (error, results) => {
        if (error) {
          rejeitado(error);
          return;
        }
        aceito(results);
      });
    });
  },
};
