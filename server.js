// Importar as configurações do ficheiro .env
require('dotenv').config({ path: 'var.env' })

// Importar as dependências
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const path = require('path');
const logger = require('morgan');
const passport = require('passport');
const flash = require('express-flash');
const session = require('express-session');
const fileUpload = require('express-fileupload')

// Importar as rotas
const api = require('./routes/api');
const admin = require('./routes/admin');
const app = require('./routes/app');
const auth = require('./routes/auth');

// Criar a instância do servidor
const server = express();

// Configurar o motor de templates Handlebars
const hbs = require('express-handlebars');
server.set('views', path.join(__dirname, 'views'));
server.set('view engine', 'hbs');
server.engine('hbs', hbs.engine({
	helpers: {
		// Função para verificar se dois argumentos são iguais
		ifEquals: function (arg1, arg2, options) { return (arg1 == arg2) ? options.fn(this) : options.inverse(this); },
		// Função para iterar uma quantidade de vezes
		times: function (n, block) {
			var accum = '';
			for (var i = 1; i <= n; ++i)
				accum += block.fn(i);
			return accum;
		}
	},
	extname: 'hbs',
	partialsDir: __dirname + '/views/includes/'
}));

// Configurar middlewares
server.use(logger('dev')); // Logger para desenvolvimento
server.use(cors()); // Permitir acesso de outros domínios
server.use(express.urlencoded({ extended: true })); // Permitir envio de dados via formulários
server.use(express.json()) // Permitir envio de dados via JSON
server.use(fileUpload());  // Permitir upload de ficheiros
server.use(flash()); // Permitir flash messages
server.use(session({ // Configurar sessão
	secret: process.env.SESSION_SECRET,
	resave: false,
	saveUninitialized: false
}))
server.use(passport.initialize()); // Inicializar o Passport
server.use(passport.session()); // Usar sessão com o Passport

// Mapear as rotas
server.use('/api', api);
server.use('/admin', admin);
server.use('/', app);
server.use('/auth', auth)

// Servir ficheiros estáticos
server.use('/assets', express.static('./views/assets'));
server.use('/upload', express.static('upload'));
server.use('/videos/exercicios', express.static('videos/Exercicios'))

server.listen(process.env.PORT, () => {
	console.log(`Servidor a rodar na porta: ${process.env.PORT}`);
})
