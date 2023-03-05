// Rotas para administração

const express = require('express');
const admin = express.Router();


// Middlewares

const { authRole } = require('../middlewares/authRole');
const { checkAuthenticated, } = require('../middlewares/authenticated');

// Controllers
const AlimentoController = require('../controllers/AlimentoController');
const ExercicioController = require('../controllers/ExercicioController');
const UtilizadorController = require('../controllers/UtilizadorController');

// Rotas para administração de exercícios
admin.get('/main_exercicios', checkAuthenticated, authRole(2), ExercicioController.main) 			// Visualizar tabela exercícios
admin.get('/editar_exercicio/:id', checkAuthenticated, authRole(2), ExercicioController.editar)		// Página para editar exercício
admin.post('/editar_exercicio/:id', checkAuthenticated, authRole(2), ExercicioController.atualizar)	// Atualizar o exercício
admin.get('/adicionar_exercicio', checkAuthenticated, authRole(2), ExercicioController.adicionar_form)	// Página para adicionar exercício
admin.post('/adicionar_exercicio', checkAuthenticated, authRole(2), ExercicioController.adicionar)	// Adicionar exercício
admin.get('/apagar_exercicio/:id', checkAuthenticated, authRole(2), ExercicioController.eliminar)	// Apagar exercício
admin.get('/adicionar_video_exercicio/:id', checkAuthenticated, authRole(2), ExercicioController.adicionar_video_exercicio)
admin.post('/adicionar_video_exercicio/:id', checkAuthenticated, authRole(2), ExercicioController.mandar_video_exercicio)

// Rotas para administração de Alimentos
admin.get('/main_alimentos', checkAuthenticated, authRole(2), AlimentoController.main)				// Visualizar tabela Alimentos
admin.get('/adicionar_alimento', checkAuthenticated, authRole(2), AlimentoController.adicionar_form)		// Página para adicionar alimento
admin.post('/adicionar_alimento', checkAuthenticated, authRole(2), AlimentoController.adicionar)		// Adicionar alimento
admin.get('/apagar_alimento/:id', checkAuthenticated, authRole(2), AlimentoController.eliminar)		// Apagar alimento
admin.get('/editar_alimento/:id', checkAuthenticated, authRole(2), AlimentoController.atualizar_form)		// Página para editar alimento
admin.post('/editar_alimento/:id', checkAuthenticated, authRole(2), AlimentoController.atualizar)	// Atualizar o alimento
admin.get('/confirmar_alimento/:id', checkAuthenticated, authRole(2), AlimentoController.confirmar)

// Rotas para administração de Utilizadores
admin.get('/main_utilizadores', checkAuthenticated, authRole(2), UtilizadorController.main)                                       // Visualizar os utilizadores
admin.get('/editar_utilizador/:id', checkAuthenticated, authRole(2), UtilizadorController.editar_utilizador)                      // Editar os utilizadores
admin.post('/editar_utilizador_post/:id', checkAuthenticated, authRole(2), UtilizadorController.editar_utilizador_post)           // Editar os utilizadores
admin.get('/apagar_utilizador/:id', checkAuthenticated, authRole(2), UtilizadorController.apagar)	                            // Apagar utilizador

// Rota para a página administração
admin.get('/dashboard', checkAuthenticated, authRole(2), function (req, res) {
    res.render('admin/dashboard', { layout: 'main_admin', user: req.user })
})

// Pesquisar utilizador
admin.post('/Utilizadores/pesquisa', UtilizadorController.pesquisarUtilizador);

// Pesquisar exercício
admin.post('/Exercicios/pesquisa', ExercicioController.pesquisarExercicio_admin);

// Pesquisar alimento
admin.post('/Alimentos/pesquisa', AlimentoController.pesquisarAlimento_admin);

module.exports = admin;
