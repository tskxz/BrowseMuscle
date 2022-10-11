const mysql = require('mysql');

// Conectar a base de dados

const connection = mysql.createConnection({
	host: process.env.DB_HOST,							// localhost
	user: process.env.DB_USER,							// username mysql
	password: process.env.DB_PASS,						// password mysql
	database: process.env.DB_NAME,						// nome da base de dados mysql - browsemuscle
	multipleStatements: true,							// Permitir mais de que uma query
	connectTimeout: 3000000								// Permitir a conexão por mais tempo
});

connection.connect((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`) // Mostra o nome de base de dados que está conectado (BrowseMuscle)
})

module.exports = connection;
