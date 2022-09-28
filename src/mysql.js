const mysql = require('mysql');

// Conectar a base de dados

const connection = mysql.createConnection({
	host: process.env.DB_HOST,				// localhost
	user: process.env.DB_USER,				// root
	password: process.env.DB_PASS,			// root ou palavra passe vazia
	database: process.env.DB_NAME,			// BrowseMuscle
	multipleStatements: true 				// Permitir mais de que uma query
});

connection.connect((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`) // Mostra o nome de base de dados que está conectado (BrowseMuscle)
})

module.exports = connection;
