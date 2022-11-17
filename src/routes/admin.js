// Rotas para administração

const express = require('express');
const admin = express.Router();
const path = require('path');

// Controllers
const AlimentoController = require('../controllers/Alimentos/AlimentoController');
const ExercicioController = require('../controllers/ExercicioController')

admin.get('/main_exercicios', ExercicioController.main)
admin.get('/editar_exercicio/:id', ExercicioController.editar)
admin.post('/editar_exercicio/:id', ExercicioController.atualizar)
admin.get('/adicionar_exercicio', ExercicioController.adicionar)
admin.post('/adicionar_exercicio', ExercicioController.adicionar)
admin.get('/apagar_exercicio/:id', ExercicioController.eliminar)

admin.get('/main_alimentos', AlimentoController.main)
admin.get('/adicionar_alimento', AlimentoController.adicionar)
admin.post('/adicionar_alimento', AlimentoController.adicionar)
admin.get('/apagar_alimento/:id', AlimentoController.eliminar)
admin.get('/editar_alimento/:id', AlimentoController.atualizar)
admin.post('/editar_alimento/:id', AlimentoController.atualizar)
module.exports = admin;
