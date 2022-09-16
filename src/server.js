// dontenv - carrega as variáveis do ambiente num ficheiro .env
// express - Framework para construçao de servidores web
// cors - permite acesso ao API 
// bodyParser - extrai informaçao a partir dos requests

require('dotenv').config({path:'var.env'})
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');


const routes = require('./routes'); // API CRUD
const admin = require('./admin');	// Paginas para CRUD
const app = require('./app');		// Aplicacao Principal

const server = express();

// O servidor vai extrair informacao do API do tipo JSON
server.use(cors());
server.use(bodyParser.json())

server.use('/api', routes);
server.use('/admin', admin);
server.use('/', app);

// Servidor irá ser usado na porta 3000
server.listen(process.env.PORT, ()=>{
	console.log(`Servidor a rodar em: http://localhost:${process.env.PORT}`);
})
	