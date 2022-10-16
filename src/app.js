const express = require('express');
const app = express.Router();
const path = require('path');


// Rotas das páginas principais - BrowseMuscle

// Visualização da tabela exercícios
app.get('/exercicios', function(req, res) {
	res.render('app/exercicios', {layout: 'tabelas'})
})

app.get('/tabelas', function(req, res) {
	res.render('app/tabelas')
})

// Página principal
app.get('/', function(req, res){
	res.render('app/homepage', {
		title: "Bem vindo ao BrowseMuscle! 🌎"
	});
})

// Visualização da tabela alimentos
app.get('/alimentos', function(req, res){
	res.render('app/alimentos/alimentos', {layout: false})
})

// Tabela músculos para selecionar
app.get('/musculos', function(req, res){
	res.render('app/musculos', {layout: false})
})

// Visualização da tabela exercícios para peito
app.get('/peito', function(req, res){
	res.render('app/musculos/peito', {layout: 'tabelas'})
})

// Visualização da tabela exercícios para ombros
app.get('/ombro', function(req, res){
	res.render('app/musculos/ombros', {layout: false})
})

// Visualização da tabela exercícios para triceps
app.get('/tricep', function(req, res){
	res.render('app/musculos/triceps', {layout: false})
})

// Visualização da tabela exercícios para biceps
app.get('/bicep', function(req, res){
	res.render('app/musculos/biceps', {layout: false})
})

// Visualização da tabela exercícios para costas
app.get('/costa', function(req, res){
	res.render('app/musculos/costas', {layout: false})
})

// Visualização da tabela exercícios para abdominais
app.get('/abdominais', function(req, res){
	res.render('app/musculos/abdominais', {layout: false})
})

// Visualização da tabela exercícios para antebraco
app.get('/antebraco', function(req, res){
	res.render('app/musculos/antebraco', {layout: false})
})

// Visualização da tabela exercícios para dorsais
app.get('/dorsal', function(req, res){
	res.render('app/musculos/dorsais', {layout: false})
})

// Visualização da tabela exercícios para gémeos
app.get('/gemeo', function(req, res){
	res.render('app/musculos/gemeos', {layout: false})
})

// Visualização da tabela exercícios para quadriceps
app.get('/quadricep', function(req, res){
	res.render('app/musculos/quadriceps', {layout: false})
})

// Visualização da tabela exercícios para traps
app.get('/trapezio', function(req, res){
	res.render('app/musculos/traps', {layout: false})
})

// Visualização da tabela exercícios para hamstrings
app.get('/hamstring', function(req, res){
	res.render('app/musculos/hamstrings', {layout: false})
})

// Visualização da tabela exercícios para gluteo
app.get('/gluteo', function(req, res){
	res.render('app/musculos/gluteos', {layout: false})
})

// Tabela alimentos para selecionar
app.get('/equipamentos', function(req, res){
	res.render('app/equipamentos', {layout: false})
})

// Visualização da tabela exercícios com barra
app.get('/barra', function(req, res){
	res.render('app/equipamentos/barra', {layout: false})
})

// Visualização da tabela exercícios com maquina
app.get('/maquina', function(req, res){
	res.render('app/equipamentos/maquina', {layout: false})
})

// Visualização da tabela exercícios com cabos
app.get('/cabos', function(req, res){
	res.render('app/equipamentos/cabos', {layout: false})
})

// Visualização da tabela exercícios com halteres
app.get('/halteres', function(req, res){
	res.render('app/equipamentos/halteres', {layout: false})
})

// Visualização da tabela exercícios com peso corporal
app.get('/peso%20corporal', function(req, res){
	res.render('app/equipamentos/peso_corporal', {layout: false})
})

// Tabela dificuldades para selecionar
app.get('/dificuldades', function(req, res){
	res.render('app/dificuldades', {layout: false})
})

// Visualização da tabela exercícios iniciante
app.get('/iniciante', function(req, res){
	res.render('app/dificuldades/iniciante', {layout: false})
})

// Visualização da tabela exercícios intermediario
app.get('/intermediario', function(req, res){
	res.render('app/dificuldades/intermediario', {layout: false})
})

// Visualização da tabela exercícios avancado
app.get('/avancado', function(req, res){
	res.render('app/dificuldades/avancado', {layout: false})
})

app.get('/pagina_principal', function(req, res){
	res.render('app/index', {layout: false})
})

module.exports = app;
