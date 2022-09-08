require('dotenv').config({path:'var.env'})
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const routes = require('./routes');
const admin = require('./admin');
const app = require('./app');

const server = express();

server.use(cors());
server.use(bodyParser.json())

server.use('/api', routes);
server.use('/admin', admin);
server.use('/', app);

server.listen(process.env.PORT, ()=>{
	console.log(`Servidor a rodar em: http://localhost:${process.env.PORT}`);
})
