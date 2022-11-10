const express = require('express');
const api = express.Router();
const path = require('path');

// Os controladores tratam de toda a lógica por trás da validação de parâmetros de solicitação, consulta e envio de respostas.
// Os serviços contém as consultas á base de dados e objetos a retornanr ou lançar erros

// Controlador de Dificuldades
const DificuldadeController = require('../controllers/Dificuldades/DificuldadesController');
const EquipamentosController = require('../controllers/Equipamentos/EquipamentosController');

// Buscar os controladores - Exercícios

const ExercicioController = require('../controllers/ExercicioController')                            // Exercicio
const MusculoController = require('../controllers/Musculos/MusculoController');                      // Músculo
const UtilizadoresController = require('../controllers/Utilizadores/UtilizadorController');

const AlimentoController = require('../controllers/Alimentos/AlimentoController');


// Rotas para operações CRUD

// Exercicios

api.get('/exercicios', ExercicioController.buscarTodos) 	                                        // Rota do método GET para visualizar todos os exercícios
api.get('/exercicio/:id', ExercicioController.buscarUm);	                                        // Rota do método GET para visualizar apenas um exercício~
api.get('/exercicios_equipamento/:equipamento_id', ExercicioController.buscarEquipamento);
api.get('/exercicios_dificuldade/:dificuldade_id', ExercicioController.buscarDificuldade);
api.get('/exercicios_musculo/:musculo_id', ExercicioController.buscarMusculo);
api.post('/exercicio', ExercicioController.inserir);		                                        // Rota do método POST para inserir exercício
api.put('/exercicio/:id', ExercicioController.alterar);	                                        // Rota do método PUT para alterar exercício
api.delete('/exercicio/:id', ExercicioController.apagar);                                        // Rota do método DELETE para apagar um exercício

// Músculos
api.get('/musculos', MusculoController.visualizarTodos);	                                        // Rota do método GET para visualizar todos os músculos existentes

// Dificuldades, Equipamentos e Musculos
api.get('/dificuldades', DificuldadeController.visualizarTodos);
api.get('/equipamentos', EquipamentosController.visualizarTodos);

api.get('/utilizadores', UtilizadoresController.buscarTodos);
api.get('/utilizador/:id', UtilizadoresController.buscarUm);
api.post('/utilizadores', UtilizadoresController.criar)
api.post('/utilizador/login', UtilizadoresController.login)

api.get('/alimentos', AlimentoController.visualizarTodos);
api.get('/alimento/:id', AlimentoController.buscarUm);
api.post('/alimento/', AlimentoController.inserir);
api.put('/alimento/:id', AlimentoController.alterar);
module.exports = api;
