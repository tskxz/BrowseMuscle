// Rotas para administração

const express = require('express');
const admin = express.Router();
const path = require('path');

// Controllers
const AlimentoController = require('../controllers/Alimentos/AlimentoController');
const ExercicioController = require('../controllers/ExercicioController')

// Rotas para administração de exercícios
admin.get('/main_exercicios', ExercicioController.main) 			// Visualizar tabela exercícios
admin.get('/editar_exercicio/:id', ExercicioController.editar)		// Página para editar exercício
admin.post('/editar_exercicio/:id', ExercicioController.atualizar)	// Atualizar o exercício
admin.get('/adicionar_exercicio', ExercicioController.adicionar)	// Página para adicionar exercício
admin.post('/adicionar_exercicio', ExercicioController.adicionar)	// Adicionar exercício
admin.get('/apagar_exercicio/:id', ExercicioController.eliminar)	// Apagar exercício

// Rotas para administração de alimentos
admin.get('/main_alimentos', AlimentoController.main)				// Visualizar tabela alimentos
admin.get('/adicionar_alimento', AlimentoController.adicionar)		// Página para adicionar alimento
admin.post('/adicionar_alimento', AlimentoController.adicionar)		// Adicionar alimento
admin.get('/apagar_alimento/:id', AlimentoController.eliminar)		// Apagar alimento
admin.get('/editar_alimento/:id', AlimentoController.atualizar)		// Página para editar alimento
admin.post('/editar_alimento/:id', AlimentoController.atualizar)	// Atualizar o alimento

module.exports = admin;
