const mysql = require('mysql');

const connection = mysql.createConnection({
	host: process.env.DB_HOST,
	user: process.env.DB_USER,
	password: process.env.DB_PASS_LINUX,
	database: process.env.DB_NAME
});

connection.connect((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`)
})

module.exports = connection;
