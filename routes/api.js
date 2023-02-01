// Os controladores tratam de toda a lógica por trás da validação de parâmetros de solicitação, consulta e envio de respostas.
// Os serviços contém as consultas á base de dados e objetos a retornar ou lançar erros

const express = require('express');
const api = express.Router();
const path = require('path');

// Controllers
const DificuldadeController = require('../controllers/DificuldadesController');
const EquipamentosController = require('../controllers/EquipamentosController');
const ExercicioController = require('../controllers/ExercicioController')
const MusculoController = require('../controllers/MusculoController');
const UtilizadoresController = require('../controllers/UtilizadorController');
const AlimentoController = require('../controllers/AlimentoController');

api.get('/Exercicios', ExercicioController.buscarTodos) 	                                        // Rota do método GET para visualizar todos os exercícios
api.get('/exercicio/:id', ExercicioController.buscarUm);	                                        // Rota do método GET para visualizar apenas um exercício~
api.get('/exercicios_equipamento/:equipamento_id', ExercicioController.buscarEquipamento);          // Rota do método GET para visualizar todos os exercícios de um determinado equipamento
api.get('/exercicios_dificuldade/:dificuldade_id', ExercicioController.buscarDificuldade);          // Rota do método GET para visualizar todos os exercícios de uma determinada dificuldade
api.get('/exercicios_musculo/:musculo_id', ExercicioController.buscarMusculo);                      // Rota o método GET para visualizar todos os exercícios de um determinado músculo
api.post('/exercicio', ExercicioController.inserir);		                                        // Rota do método POST para inserir exercício
api.put('/exercicio/:id', ExercicioController.alterar);	                                            // Rota do método PUT para alterar exercício
api.delete('/exercicio/:id', ExercicioController.apagar);                                           // Rota do método DELETE para apagar um exercício

// Músculos, Dificuldades e Equipamentos
api.get('/Musculos', MusculoController.visualizarTodos);	                                        // Rota do método GET para visualizar todos os músculos existentes
api.get('/Dificuldades', DificuldadeController.visualizarTodos);                                    // Rota do método GET para visualizar todas as Dificuldades existentes
api.get('/Equipamentos', EquipamentosController.visualizarTodos);                                   // Rota do método GET para visualizar todos os Equipamentos existentes

// Utilizadores
api.get('/Utilizadores', UtilizadoresController.buscarTodos);                                       // Rota do método GET para visualizar todos os Utilizadores existentes
api.get('/utilizador/:id', UtilizadoresController.buscarUm);                                        // Rota do método GET para visualizar somente um utilizador através do ID
api.post('/Utilizadores', UtilizadoresController.criar)                                             // Rota do método POST para criar um novo utilizador
api.post('/utilizador/login', UtilizadoresController.login)                                         // Rota do método POST para validar a conta
api.get('/utilizador_username/:username', UtilizadoresController.buscarUsername);
api.get('/utilizador_email/:email', UtilizadoresController.buscarEmail);

// Alimentos
api.get('/Alimentos', AlimentoController.visualizarTodos);                                          // Rota do método GET para visualizar todos os Alimentos
api.get('/alimento/:id', AlimentoController.buscarUm);                                              // Rota do método GET para visualizar somente um alimento
api.post('/alimento/', AlimentoController.inserir);                                                 // Rota do método POST para inserir um alimento
api.put('/alimento/:id', AlimentoController.alterar);                                               // Rota do método PUT para alterar um alimento
api.delete('/alimento/:id', AlimentoController.apagar);                                             // Rota do método DELETE para apagar um alimento

module.exports = api;
