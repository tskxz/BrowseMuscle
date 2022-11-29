// Conexão com a base de dados

const mysql = require('mysql');

const connection = mysql.createPool({
	host: process.env.DB_HOST,				
	user: process.env.DB_USER,				
	password: process.env.DB_PASS,						
	database: process.env.DB_NAME,
	multipleStatements: true,			
	connectTimeout: 3000000
});

connection.getConnection((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`) // Mostra o nome de base de dados que está conectado (BrowseMuscle)
})

module.exports = connection;
