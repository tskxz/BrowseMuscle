// dontenv - carrega as variáveis do ambiente num ficheiro .env
// express - Framework para construçao de servidores web
// cors - permite acesso ao API
// bodyParser - extrai informaçao a partir dos requests

require('dotenv').config({path:'var.env'})
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const path = require('path');
const logger = require('morgan');
const passport = require('passport');
const flash = require('express-flash');
const session = require('express-session');

const api = require('./routes/api'); // API CRUD
const admin = require('./routes/admin');	// Paginas para CRUD
const app = require('./routes/app');		// Aplicacao Principal
const auth = require('./routes/auth');

const server = express();
const hbs = require('express-handlebars');



server.use(logger('dev'));

// O servidor vai extrair informacao do API do tipo JSON
server.use(cors());

// Parse Middleware
server.use(express.urlencoded({extended: true})); 

// Parse Application/JSON
server.use(express.json())

server.use(flash());
server.use(session({
	secret: process.env.SESSION_SECRET,
	resave: false,
	saveUninitialized: false
}))

server.use(passport.initialize());
server.use(passport.session());

server.use('/api', api);
server.use('/admin', admin);
server.use('/', app);
server.use('/auth', auth)

server.use('/assets', express.static('./views/assets'));

server.set('views', path.join(__dirname, 'views'));
server.set( 'view engine', 'hbs' );
server.engine( 'hbs', hbs.engine( { 
	helpers: {
		ifEquals: function(arg1, arg2, options) { return (arg1 == arg2) ? options.fn(this) : options.inverse(this); },
	},
	extname: 'hbs',
	partialsDir: __dirname + '/views/includes/'
} ) );



// Servidor irá ser usado na porta 3000
server.listen(process.env.PORT, ()=>{
	console.log(`Servidor a rodar na porta: ${process.env.PORT}`);
})
