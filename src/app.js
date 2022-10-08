const express = require('express');
const app = express.Router();
const path = require('path');


// Rota da APP da página principal
app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/app/index.html'))
})
/*
app.get('/login', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/login_registar/login.html'))
})

app.get('/registar', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/login_registar/registar.html'))
})
*/


app.get('/alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/alimentos/alimentos.html'))
})

app.get('/musculos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos.html'))
})

app.get('/peito_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/peito.html'))
})

app.get('/ombros_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/ombros.html'))
})

app.get('/triceps_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/triceps.html'))
})

app.get('/biceps_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/biceps.html'))
})

app.get('/costas_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/costas.html'))
})

app.get('/abdominais_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/abdominais.html'))
})

app.get('/antebraco_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/antebraco.html'))
})

app.get('/dorsais_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/dorsais.html'))
})

app.get('/gemeos_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/gemeos.html'))
})

app.get('/quadriceps_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/quadriceps.html'))
})

app.get('/traps_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/traps.html'))
})

app.get('/hamstrings_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/hamstrings.html'))
})

app.get('/gluteo_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/musculos/gluteos.html'))
})

app.get('/equipamentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/equipamentos.html'))
})

app.get('/dificuldades', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/dificuldades.html'))
})

module.exports = app;
