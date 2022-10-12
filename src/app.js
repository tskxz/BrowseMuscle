const express = require('express');
const app = express.Router();
const path = require('path');


// Rotas das páginas principais - BrowseMuscle

// Visualização da tabela exercícios
app.get('/exercicios', function(req, res) {
	res.render('app/exercicios', {layout: false})
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
app.get('/peito_exercicios', function(req, res){
	res.render('app/musculos/peito', {layout: false})
})

// Visualização da tabela exercícios para ombros
app.get('/ombros_exercicios', function(req, res){
	res.render('app/musculos/ombros', {layout: false})
})

// Visualização da tabela exercícios para triceps
app.get('/triceps_exercicios', function(req, res){
	res.render('app/musculos/triceps', {layout: false})
})

// Visualização da tabela exercícios para biceps
app.get('/biceps_exercicios', function(req, res){
	res.render('app/musculos/biceps', {layout: false})
})

// Visualização da tabela exercícios para costas
app.get('/costas_exercicios', function(req, res){
	res.render('app/musculos/costas', {layout: false})
})

// Visualização da tabela exercícios para abdominais
app.get('/abdominais_exercicios', function(req, res){
	res.render('app/musculos/abdominais', {layout: false})
})

// Visualização da tabela exercícios para antebraco
app.get('/antebraco_exercicios', function(req, res){
	res.render('app/musculos/antebraco', {layout: false})
})

// Visualização da tabela exercícios para dorsais
app.get('/dorsais_exercicios', function(req, res){
	res.render('app/musculos/dorsais', {layout: false})
})

// Visualização da tabela exercícios para gémeos
app.get('/gemeos_exercicios', function(req, res){
	res.render('app/musculos/gemeos', {layout: false})
})

// Visualização da tabela exercícios para quadriceps
app.get('/quadriceps_exercicios', function(req, res){
	res.render('app/musculos/quadriceps', {layout: false})
})

// Visualização da tabela exercícios para traps
app.get('/traps_exercicios', function(req, res){
	res.render('app/musculos/traps', {layout: false})
})

// Visualização da tabela exercícios para hamstrings
app.get('/hamstrings_exercicios', function(req, res){
	res.render('app/musculos/hamstrings', {layout: false})
})

// Visualização da tabela exercícios para gluteo
app.get('/gluteo_exercicios', function(req, res){
	res.render('app/musculos/gluteos', {layout: false})
})

// Tabela alimentos para selecionar
app.get('/equipamentos', function(req, res){
	res.render('app/equipamentos', {layout: false})
})

// Visualização da tabela exercícios com barra
app.get('/barra_exercicios', function(req, res){
	res.render('app/equipamentos/barra', {layout: false})
})

// Visualização da tabela exercícios com maquina
app.get('/maquina_exercicios', function(req, res){
	res.render('app/equipamentos/maquina', {layout: false})
})

// Visualização da tabela exercícios com cabos
app.get('/cabos_exercicios', function(req, res){
	res.render('app/equipamentos/cabos', {layout: false})
})

// Visualização da tabela exercícios com halteres
app.get('/halteres_exercicios', function(req, res){
	res.render('app/equipamentos/halteres', {layout: false})
})

// Visualização da tabela exercícios com peso corporal
app.get('/peso_corporal_exercicios', function(req, res){
	res.render('app/equipamentos/peso_corporal', {layout: false})
})

// Visualização da tabela exercícios com elastico
app.get('/elastico_exercicios', function(req, res){
	res.render('app/equipamentos/elastico', {layout: false})
})

// Tabela dificuldades para selecionar
app.get('/dificuldades', function(req, res){
	res.render('app/dificuldades', {layout: false})
})

// Visualização da tabela exercícios iniciante
app.get('/iniciante_exercicios', function(req, res){
	res.render('app/dificuldades/iniciante', {layout: false})
})

// Visualização da tabela exercícios intermediario
app.get('/intermediario_exercicios', function(req, res){
	res.render('app/dificuldades/intermediario', {layout: false})
})

// Visualização da tabela exercícios avancado
app.get('/avancado_exercicios', function(req, res){
	res.render('app/dificuldades/avancado', {layout: false})
})

module.exports = app;
