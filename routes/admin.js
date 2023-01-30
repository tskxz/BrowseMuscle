// Rotas para administração

const express = require('express');
const admin = express.Router();
const path = require('path');

// Controllers
const AlimentoController = require('../controllers/AlimentoController');
const ExercicioController = require('../controllers/ExercicioController');
const UtilizadorController = require('../controllers/UtilizadorController');

// Rotas para administração de exercícios
admin.get('/main_exercicios', authUser, authRole(2), ExercicioController.main) 			// Visualizar tabela exercícios
admin.get('/editar_exercicio/:id', authUser, authRole(2), ExercicioController.editar)		// Página para editar exercício
admin.post('/editar_exercicio/:id', authUser, authRole(2), ExercicioController.atualizar)	// Atualizar o exercício
admin.get('/adicionar_exercicio', authUser, authRole(2), ExercicioController.adicionar_form)	// Página para adicionar exercício
admin.post('/adicionar_exercicio', authUser, authRole(2), ExercicioController.adicionar)	// Adicionar exercício
admin.get('/apagar_exercicio/:id', authUser, authRole(2), ExercicioController.eliminar)	// Apagar exercício

// Rotas para administração de Alimentos
admin.get('/main_alimentos', authUser, authRole(2), AlimentoController.main)				// Visualizar tabela Alimentos
admin.get('/adicionar_alimento', authUser, authRole(2), AlimentoController.adicionar_form)		// Página para adicionar alimento
admin.post('/adicionar_alimento', authUser, authRole(2), AlimentoController.adicionar)		// Adicionar alimento
admin.get('/apagar_alimento/:id', authUser, authRole(2), AlimentoController.eliminar)		// Apagar alimento
admin.get('/editar_alimento/:id', authUser, authRole(2), AlimentoController.atualizar)		// Página para editar alimento
admin.post('/editar_alimento/:id', authUser, authRole(2), AlimentoController.atualizar)	// Atualizar o alimento
admin.get('/confirmar_alimento/:id', authUser, authRole(2), AlimentoController.confirmar)

// Rotas para administração de Utilizadores
admin.get('/main_utilizadores', authUser, authRole(2), UtilizadorController.main)                                       // Visualizar os utilizadores
admin.get('/editar_utilizador/:id', authUser, authRole(2), UtilizadorController.editar_utilizador)                      // Editar os utilizadores
admin.post('/editar_utilizador_post/:id', authUser, authRole(2), UtilizadorController.editar_utilizador_post)           // Editar os utilizadores
admin.get('/apagar_utilizador/:id', authUser, authRole(2), UtilizadorController.apagar)	                            // Apagar utilizador
// Rota para administração
admin.get('/dashboard', authUser, authRole(2), function(req, res){
	res.render('admin/dashboard', {layout: 'main_admin',user: req.user})
})

admin.post('/Utilizadores/pesquisa', UtilizadorController.pesquisarUtilizador);

// Pesquisar exercício
admin.post('/Exercicios/pesquisa', ExercicioController.pesquisarExercicio_admin);

// Pesquisar alimento
admin.post('/Alimentos/pesquisa', AlimentoController.pesquisarAlimento_admin);

function authRole(role){
    return(req,res,next) => {
        if(req.user.id_cargo !== role){
            res.status(401)
            return res.send('Not allowed!')
        }
        next()
    }
}

function authUser(req, res, next){
    if(!req.user){
        return res.redirect('/auth/login')
    }
    next()
}

module.exports = admin;
