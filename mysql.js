// Importação do módulo mysql para conexão com a base de dados
const mysql = require("mysql");

// Criação de uma pool de conexões com a base de dados
const connection = mysql.createPool({
  // Configurações da conexão com a base de dados
  host: process.env.DB_HOST, // Endereço do host da base de dados
  user: process.env.DB_USER, // Nome do utilizador da base de dados
  password: process.env.DB_PASS, // Palavra-Passe da base de dados
  database: process.env.DB_NAME, // Nome da base de dados
  multipleStatements: true, // Permite a execução de múltiplas declarações SQL
  connectTimeout: 3000000, // Tempo limite para conexão com a base de dados
});

// Tenta estabelecer uma conexão com a base de dados
connection.getConnection((error) => {
  // Se ocorreu um erro, lança o
  if (error) throw error;
  // Se a conexão foi estabelecida com sucesso, loga no console
  console.log(`Conectado base de dados: ${process.env.DB_NAME}`);
});

// Exporta a pool de conexões com a base de dados
module.exports = connection;
