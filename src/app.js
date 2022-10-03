const express = require('express');
const app = express.Router();
const path = require('path');


// Rota da APP da página principal
app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/app/index.html'))
})

app.get('/login', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/login.html'))
})

app.get('/registar', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/registar.html'))
})

app.get('/alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/alimentos.html'))
})

app.get('/musculos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos.html'))
})

app.get('/peito_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/peito.html'))
})

app.get('/ombros_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/ombros.html'))
})

module.exports = app;
