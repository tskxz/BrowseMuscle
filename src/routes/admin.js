const express = require('express');
const admin = express.Router();
const path = require('path');
const AlimentoController = require('../controllers/Alimentos/AlimentoController');

const ExercicioController = require('../controllers/ExercicioController')

// Rotas para o admin

// Inserir exercícios
admin.get('/post_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_POST', {layout: 'main_admin'}) // Inserir exercícios através do form HTML
})

// Atualizar exercícios
admin.get('/update_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_PUT', {layout: 'main_admin'}) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/exercicios', function(req, res){
	res.render('admin/exercicios/tabela_exercicios', {layout: 'main_admin'}) // Visualizar os exercícios através da tabela em HTML
})

admin.get('/main_exercicios', ExercicioController.main)
admin.get('/editar_exercicio/:id', ExercicioController.editar)
admin.post('/editar_exercicio/:id', ExercicioController.atualizar)
admin.get('/adicionar_exercicio', ExercicioController.adicionar)
admin.post('/adicionar_exercicio', ExercicioController.adicionar)
admin.get('/apagar_exercicio/:id', ExercicioController.eliminar)

admin.get('/main_alimentos', AlimentoController.main)
module.exports = admin;
