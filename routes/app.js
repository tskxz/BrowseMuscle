// Rotas para as páginas

const express = require('express');
const app = express.Router();
const path = require('path');
const passport = require('passport');

// Middlewares
const { checkAuthenticated } = require('../middlewares/authenticated');

// Controllers
const ExercicioController = require('../controllers/ExercicioController')
const AlimentoController = require('../controllers/AlimentoController')

const initializePassport = require('../passport-config');
const UtilizadoresService = require('../services/UtilizadoresService');
const UtilizadorController = require('../controllers/UtilizadorController');

const SessaoTreinoController = require('../controllers/SessaoTreinoController');

initializePassport(
	passport,
	async username => await UtilizadoresService.buscarUsername(username),
	async id => await UtilizadoresService.buscarUm(id)
)

// Rota para visualizar exercícios
app.get('/Exercicios', checkAuthenticated, ExercicioController.view)
app.post('/Exercicios/pesquisa', checkAuthenticated, ExercicioController.pesquisarExercicio);

// Rota para visualizar informações de um exercício
app.get('/Exercicio/:id', checkAuthenticated, ExercicioController.visualizarUmExercicio)
// Pesquisar alimentos
app.post('/Alimentos/pesquisa', checkAuthenticated, AlimentoController.pesquisarAlimento);

// Rota para visualizar Alimentos
app.get('/Alimentos', checkAuthenticated, AlimentoController.view);
app.get('/main_alimentos', checkAuthenticated, function (req, res) {
	res.render('app/Alimentos/alimentos.hbs', {
		user: req.user,
		foto: req.user.foto
	})
});

app.get('/menu_sessao_treino', checkAuthenticated, function (req, res) {
	res.render('app/SessaoTreino/menu_sessao_treino', {
		user: req.user,
		foto: req.user.foto
	})
});

// Rota para saber as macros através da quantidade de gramas da comida
app.get('/Alimentos/macros_calc', checkAuthenticated, AlimentoController.macros_calc)

// Rota para o utilizador adicionar pedido de alimento
app.get('/Alimentos/adicionar_pedido_alimento', checkAuthenticated, AlimentoController.adicionar_pedido_alimento)
app.post('/Alimentos/adicionar_pedido_alimento', checkAuthenticated, AlimentoController.adicionar_pedido_alimento_post)

// Rota para visualizar alimentos que o utilizador criou
app.get('/Alimentos/alimentos_utilizador', checkAuthenticated, AlimentoController.visualizarAlimentosUtilizador)

// Gráfico do alimento
app.get('/alimento/:id', checkAuthenticated, AlimentoController.grafico)		// Página para editar alimento

// Ferramenta para calcular valores do alimento
app.get('/calcular_calorias', checkAuthenticated, AlimentoController.calculo_calorias)
app.post('/calcular_calorias', checkAuthenticated, AlimentoController.calculo_calorias_post)

// Ferramenta para calcular 1RM
app.get('/calcular_1rm', checkAuthenticated, ExercicioController.calcular_1rm)
app.post('/calcular_1rm', checkAuthenticated, ExercicioController.calcular_1rm_post)

// Página para visualizar o perfil
app.get('/meu_perfil', checkAuthenticated, function (req, res) {
	res.render('app/utilizador/perfil.hbs', {
		user: req.user,
		username: req.user.username,
		primeiro_nome: req.user.primeiro_nome,
		ultimo_nome: req.user.ultimo_nome,
		email: req.user.email,
		descricao: req.user.descricao,
		id_cargo: req.user.id_cargo,
		treinos_concluidos: req.user.treinos_concluidos,
		createdAt: req.user.createdAt.toLocaleDateString('pt-PT', { year: 'numeric', month: '2-digit', day: '2-digit' }),
		foto: req.user.foto,
		error: req.flash("error"), success: req.flash("success")
	})
})

// Rota para criar sessões de treino
app.get('/criar_sessao_treino', checkAuthenticated, SessaoTreinoController.criar_sessao_treino);
app.post('/criar_sessao_treino', checkAuthenticated, SessaoTreinoController.criar_sessao_treino_post);

// Página para ver a lista de sessões de treino criado pelo utilizador
app.get('/lista_sessao_treino', checkAuthenticated, SessaoTreinoController.ver_sessoes_treinos)

// Rota para visualizar a sessão de treino
app.get('/ver_sessao_treino/:id_sessao', checkAuthenticated, SessaoTreinoController.ver_sessao)

// Rota para apagar a sessão de treino
app.get('/apagar_sessao_treino/:id_sessao', checkAuthenticated, SessaoTreinoController.apagar_sessao_treino)

// Rota para definir exercícios e repetições para a sessão de treino
app.get('/definir_sessao/:id_sessao', checkAuthenticated,SessaoTreinoController.definir_sessao_treino)
app.post('/definir_sessao/:id_sessao', checkAuthenticated, SessaoTreinoController.definir_sessao_treino_post)

// Rota para concluir a sessão de treino
app.post('/concluir_sessao/:id_sessao', checkAuthenticated, SessaoTreinoController.concluir_sessao_treino_post)

// Rota para editar informações da sessão de treino
app.get('/editar_sessao/:id_sessao', checkAuthenticated, SessaoTreinoController.editar_sessao)
app.post('/editar_sessao/:id_sessao', checkAuthenticated, SessaoTreinoController.editar_sessao_post)

// Definir as repeticoes das series do exercicio
app.get('/definir_reps/:id_sessao/:exercicio_id', checkAuthenticated, SessaoTreinoController.definir_reps)
app.post('/definir_reps/:id_sessao/:exercicio_id', checkAuthenticated, SessaoTreinoController.definir_reps_post)

// Visualizar gráfico da sessão de treino
app.get('/grafico_sessao/:id_sessao', checkAuthenticated, SessaoTreinoController.grafico_sessao_treino)
// Rota para editar o perfil do utilizador
app.get('/meu_perfil/editar', checkAuthenticated, UtilizadorController.editar_perfil)

// Apagar foto de perfil
app.post('/meu_perfil/apagar_foto', checkAuthenticated, UtilizadorController.apagar_foto)

// Rota para atualizar as informações do perfil do utilizador
app.post('/meu_perfil/editar', checkAuthenticated, UtilizadorController.atualizar_perfil)
app.post('/mudar_foto', checkAuthenticated, UtilizadorController.atualizar_perfil_foto)

// Rota para visualizar informações de um utilizador através do parametro url username
app.get('/perfil/:username', checkAuthenticated, UtilizadorController.perfil)

// Rota para alterar a palavra passe do utilizador
app.get('/mudar_pass', checkAuthenticated, UtilizadorController.mudar_pass)
app.post('/mudar_pass', checkAuthenticated, UtilizadorController.mudar_pass_post)

// Rota para calcular quantidade de macros que uma pessoa precisa de consumir
app.get('/calcular_macro', checkAuthenticated, AlimentoController.calculo_macros)
app.post('/calcular_macro', checkAuthenticated, AlimentoController.calculo_macros_post)
// teste
app.get('/test', function (req, res) {
	res.render('app/tests/index.hbs')
})

// Rota para página principal
app.get('/escolher_musculo', checkAuthenticated, function (req, res) {
	res.render('app/Musculos/homepage', {
		user: req.user,
	});
})

// Visualização de músculos
app.get('/Musculos', checkAuthenticated, function (req, res) {
	res.render('app/Musculos/Musculos', { user: req.user })
})

// Visualização da tabela exercícios para peito
app.get('/peito', function (req, res) {
	res.render('app/Musculos/peito', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para ombros
app.get('/ombro', function (req, res) {
	res.render('app/Musculos/ombros', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para triceps
app.get('/tricep', function (req, res) {
	res.render('app/Musculos/triceps', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para biceps
app.get('/bicep', function (req, res) {
	res.render('app/Musculos/biceps', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para costas
app.get('/costas', function (req, res) {
	res.render('app/Musculos/costas', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para abdominais
app.get('/abdominais', function (req, res) {
	res.render('app/Musculos/abdominais', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para antebraco
app.get('/antebraco', function (req, res) {
	res.render('app/Musculos/antebraco', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para dorsais
app.get('/dorsal', function (req, res) {
	res.render('app/Musculos/dorsais', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para gémeos
app.get('/gemeo', function (req, res) {
	res.render('app/Musculos/gemeos', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para quadriceps
app.get('/quadricep', function (req, res) {
	res.render('app/Musculos/quadriceps', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para traps
app.get('/trapezio', function (req, res) {
	res.render('app/Musculos/traps', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para hamstrings
app.get('/hamstring', function (req, res) {
	res.render('app/Musculos/hamstrings', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios para gluteo
app.get('/gluteo', function (req, res) {
	res.render('app/Musculos/gluteos', { layout: 'tabelas', user: req.user })
})

// Tabela Equipamentos para selecionar
app.get('/Equipamentos', function (req, res) {
	res.render('app/Equipamentos', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios com barra
app.get('/barra', function (req, res) {
	res.render('app/Equipamentos/barra', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios com maquina
app.get('/maquina', function (req, res) {
	res.render('app/Equipamentos/maquina', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios com cabos
app.get('/cabos', function (req, res) {
	res.render('app/Equipamentos/cabos', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios com halteres
app.get('/halteres', function (req, res) {
	res.render('app/Equipamentos/halteres', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios com peso corporal
app.get('/peso%20corporal', function (req, res) {
	res.render('app/Equipamentos/peso_corporal', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios iniciante
app.get('/iniciante', function (req, res) {
	res.render('app/Dificuldades/iniciante', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios intermediario
app.get('/intermediario', function (req, res) {
	res.render('app/Dificuldades/intermediario', { layout: 'tabelas', user: req.user })
})

// Visualização da tabela exercícios avancado
app.get('/avancado', function (req, res) {
	res.render('app/Dificuldades/avancado', { layout: 'tabelas', user: req.user })
})


// Rota para a página principal
app.get('/', function (req, res) {
	res.render('app/index', { layout: false, user: req.user })
})

app.get('/system', function (req, res) {
	res.render('app/system', { layout: false, user: req.user })
})

app.get('/content', function (req, res) {
	res.render('app/content', { layout: false, user: req.user })
})

module.exports = app;
