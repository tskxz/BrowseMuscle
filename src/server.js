// dontenv - carrega as variáveis do ambiente num ficheiro .env
// express - Framework para construçao de servidores web
// cors - permite acesso ao API
// bodyParser - extrai informaçao a partir dos requests

require('dotenv').config({path:'var.env'})
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const path = require('path');


const api = require('./routes/api'); // API CRUD
const admin = require('./admin');	// Paginas para CRUD
const app = require('./app');		// Aplicacao Principal

const server = express();
const hbs = require('express-handlebars');

// O servidor vai extrair informacao do API do tipo JSON
server.use(cors());
server.use(bodyParser.json())

server.use('/api', api);
server.use('/admin', admin);
server.use('/', app);

server.use('/assets', express.static('./src/views/app/assets'));

server.set('views', path.join(__dirname, 'views'));
server.set( 'view engine', 'hbs' );
server.engine( 'hbs', hbs.engine( { 
	extname: 'hbs', 
	partialsDir: __dirname + '/views/app/includes/'
  } ) );
  


// Servidor irá ser usado na porta 3000
server.listen(process.env.PORT, ()=>{
	console.log(`Servidor a rodar na porta: ${process.env.PORT}`);
})
