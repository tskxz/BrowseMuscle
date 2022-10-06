const mysql = require('mysql');

// Conectar a base de dados
var osValue = process.platform;

if(osValue== 'linux') {
	console.log('Sistema Operativo: ' + osValue);
    DB_PASS = "root"
} else {
	console.log('Sistema Operativo: ' + osValue);
	DB_PASS = "";
}

const connection = mysql.createConnection({
	host: process.env.DB_HOST,				// 4acd-132-145-18-76.eu.ngrok.io
	user: process.env.DB_USER,				// root
	password: DB_PASS,						// root ou palavra passe vazia
	database: process.env.DB_NAME,			// BrowseMuscle
	multipleStatements: true,				// Permitir mais de que uma query
	connectTimeout: 3000000
});

connection.connect((error) =>{
	if(error) throw error;
	console.log(`Conectado base de dados: ${process.env.DB_NAME}`) // Mostra o nome de base de dados que está conectado (BrowseMuscle)
})

module.exports = connection;
