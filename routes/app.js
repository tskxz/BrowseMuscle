// Rotas para as páginas

const express = require('express');
const app = express.Router();
const path = require('path');
const passport = require('passport');

// Controllers
const ExercicioController = require('../controllers/ExercicioController')
const AlimentoController = require('../controllers/Alimentos/AlimentoController')

const initializePassport = require('../passport-config');
const UtilizadoresService = require('../services/Utilizadores/UtilizadoresService');
const UtilizadorController = require('../controllers/Utilizadores/UtilizadorController');

initializePassport(
	passport,
	async username => await UtilizadoresService.buscarUsername(username),
	async id => await UtilizadoresService.buscarUm(id)
)

// Rota para visualizar exercícios
app.get('/Exercicios', ExercicioController.view)
app.post('/Exercicios/pesquisa', ExercicioController.pesquisarExercicio);

// Rota para visualizar Alimentos
app.get('/Alimentos', AlimentoController.view);


app.get('/meu_perfil', checkAuthenticated, function(req, res) {
	res.render('app/utilizador/perfil.hbs', { 
		user: req.user,
		username: req.user.username,
		primeiro_nome: req.user.primeiro_nome,
		ultimo_nome: req.user.ultimo_nome,
		email: req.user.email,
		descricao: req.user.descricao,
		id_cargo: req.user.id_cargo,
		treinos_concluidos: req.user.treinos_concluidos,
		createdAt: req.user.createdAt
	})
})

// Rota para editar o perfil do utilizador
app.get('/meu_perfil/editar', checkAuthenticated, UtilizadorController.editar_perfil)

// Rota para atualizar as informações do perfil do utilizador
app.post('/meu_perfil/editar', checkAuthenticated, UtilizadorController.atualizar_perfil)

// Rota para visualizar informações de um utilizador através do parametro url username
app.get('/perfil/:username', checkAuthenticated, UtilizadorController.perfil)

function checkAuthenticated(req, res, next){
    if(req.isAuthenticated()){
        return next()
    }

    res.redirect('/auth/login')
}

function checkNotAuthenticated(req, res, next){
    if(req.isAuthenticated()){
        return res.redirect('/meu_perfil');
    }
    next();
}

// Rota para página principal
app.get('/', function(req, res){
	res.render('app/homepage', {
		title: "Bem vindo ao BrowseMuscle! 🌎",
		user: req.user,
	});
})

app.get('/Musculos', function(req, res){
	res.render('app/Musculos', {user: req.user})
})

// Visualização da tabela exercícios para peito
app.get('/peito', function(req, res){
	res.render('app/Musculos/peito', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para ombros
app.get('/ombro', function(req, res){
	res.render('app/Musculos/ombros', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para triceps
app.get('/tricep', function(req, res){
	res.render('app/Musculos/triceps', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para biceps
app.get('/bicep', function(req, res){
	res.render('app/Musculos/biceps', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para costas
app.get('/costas', function(req, res){
	res.render('app/Musculos/costas', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para abdominais
app.get('/abdominais', function(req, res){
	res.render('app/Musculos/abdominais', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para antebraco
app.get('/antebraco', function(req, res){
	res.render('app/Musculos/antebraco', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para dorsais
app.get('/dorsal', function(req, res){
	res.render('app/Musculos/dorsais', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para gémeos
app.get('/gemeo', function(req, res){
	res.render('app/Musculos/gemeos', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para quadriceps
app.get('/quadricep', function(req, res){
	res.render('app/Musculos/quadriceps', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para traps
app.get('/trapezio', function(req, res){
	res.render('app/Musculos/traps', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para hamstrings
app.get('/hamstring', function(req, res){
	res.render('app/Musculos/hamstrings', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios para gluteo
app.get('/gluteo', function(req, res){
	res.render('app/Musculos/gluteos', {layout: 'tabelas', user: req.user})
})

// Tabela Equipamentos para selecionar
app.get('/Equipamentos', function(req, res){
	res.render('app/Equipamentos', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios com barra
app.get('/barra', function(req, res){
	res.render('app/Equipamentos/barra', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios com maquina
app.get('/maquina', function(req, res){
	res.render('app/Equipamentos/maquina', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios com cabos
app.get('/cabos', function(req, res){
	res.render('app/Equipamentos/cabos', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios com halteres
app.get('/halteres', function(req, res){
	res.render('app/Equipamentos/halteres', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios com peso corporal
app.get('/peso%20corporal', function(req, res){
	res.render('app/Equipamentos/peso_corporal', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios iniciante
app.get('/iniciante', function(req, res){
	res.render('app/Dificuldades/iniciante', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios intermediario
app.get('/intermediario', function(req, res){
	res.render('app/Dificuldades/intermediario', {layout: 'tabelas', user: req.user})
})

// Visualização da tabela exercícios avancado
app.get('/avancado', function(req, res){
	res.render('app/Dificuldades/avancado', {layout: 'tabelas', user: req.user})
})


// Rota para a página principal
app.get('/pagina_principal', function(req, res){
	res.render('app/index', {layout: false, user: req.user})
})


module.exports = app;