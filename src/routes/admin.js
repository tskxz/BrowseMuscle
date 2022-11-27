// Rotas para administração

const express = require('express');
const admin = express.Router();
const path = require('path');

// Controllers
const AlimentoController = require('../controllers/Alimentos/AlimentoController');
const ExercicioController = require('../controllers/ExercicioController')

// Rotas para administração de exercícios
admin.get('/main_exercicios', authUser, authRole(2), ExercicioController.main) 			// Visualizar tabela exercícios
admin.get('/editar_exercicio/:id', authUser, authRole(2), ExercicioController.editar)		// Página para editar exercício
admin.post('/editar_exercicio/:id', authUser, authRole(2), ExercicioController.atualizar)	// Atualizar o exercício
admin.get('/adicionar_exercicio', authUser, authRole(2), ExercicioController.adicionar_form)	// Página para adicionar exercício
admin.post('/adicionar_exercicio', authUser, authRole(2), ExercicioController.adicionar)	// Adicionar exercício
admin.get('/apagar_exercicio/:id', authUser, authRole(2), ExercicioController.eliminar)	// Apagar exercício

// Rotas para administração de alimentos
admin.get('/main_alimentos', authUser, authRole(2), AlimentoController.main)				// Visualizar tabela alimentos
admin.get('/adicionar_alimento', authUser, authRole(2), AlimentoController.adicionar)		// Página para adicionar alimento
admin.post('/adicionar_alimento', authUser, authRole(2), AlimentoController.adicionar)		// Adicionar alimento
admin.get('/apagar_alimento/:id', authUser, authRole(2), AlimentoController.eliminar)		// Apagar alimento
admin.get('/editar_alimento/:id', authUser, authRole(2), AlimentoController.atualizar)		// Página para editar alimento
admin.post('/editar_alimento/:id', authUser, authRole(2), AlimentoController.atualizar)	// Atualizar o alimento

// Rota para administração
admin.get('/dashboard', authUser, authRole(2), function(req, res){
	res.render('admin/dashboard', {user: req.user})
})

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
