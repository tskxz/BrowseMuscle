const mysql = require('mysql');

// Conectar a base de dados

const connection = mysql.createPool({
	host: process.env.DB_HOST,				// 4acd-132-145-18-76.eu.ngrok.io
	user: process.env.DB_USER,				// root
	password: process.env.DB_PASS,						// root ou palavra passe vazia
	database: process.env.DB_NAME,			// BrowseMuscle
	multipleStatements: true,				// Permitir mais de que uma query
	connectTimeout: 3000000
});

connection.getConnection((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`) // Mostra o nome de base de dados que está conectado (BrowseMuscle)
})

module.exports = connection;
