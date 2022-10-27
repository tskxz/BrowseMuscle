const express = require('express');
const router = express.Router();
const path = require('path');

// Os controladores tratam de toda a lógica por trás da validação de parâmetros de solicitação, consulta e envio de respostas.
// Os serviços contém as consultas á base de dados e objetos a retornanr ou lançar erros

// Controlador de Dificuldades
const DificuldadeController = require('./controllers/Dificuldades/DificuldadesController');
const EquipamentosController = require('./controllers/Equipamentos/EquipamentosController');

// Buscar os controladores - Exercícios

const ExercicioController = require('./controllers/ExercicioController')                            // Exercicio
const MusculoController = require('./controllers/Musculos/MusculoController');                      // Músculo


const AlimentoController = require('./controllers/AlimentoController');                             // Alimento


// Rotas para operações CRUD

// Exercicios

router.get('/exercicios', ExercicioController.buscarTodos) 	                                        // Rota do método GET para visualizar todos os exercícios
router.get('/exercicio/:id', ExercicioController.buscarUm);	                                        // Rota do método GET para visualizar apenas um exercício~
router.get('/exercicios_equipamento/:equipamento_id', ExercicioController.buscarEquipamento);
router.get('/exercicios_dificuldade/:dificuldade_id', ExercicioController.buscarDificuldade);
router.get('/exercicios_musculo/:musculo_id', ExercicioController.buscarMusculo);
router.post('/exercicio', ExercicioController.inserir);		                                        // Rota do método POST para inserir exercício
router.put('/exercicio/:id', ExercicioController.alterar);	                                        // Rota do método PUT para alterar exercício
router.delete('/exercicio/:id', ExercicioController.apagar);                                        // Rota do método DELETE para apagar um exercício

// Músculos
router.get('/musculos', MusculoController.visualizarTodos);	                                        // Rota do método GET para visualizar todos os músculos existentes

// Alimentos
router.get('/alimentos', AlimentoController.buscarTodos);                                           // Rota do método GET para visualizar todos os alimentos
router.get('/alimento/:nome', AlimentoController.buscarUmNome);                                     // Rota do método GET para visualizar apenas um alimento
router.post('/alimento', AlimentoController.inserir);                                               // Rota do método POST para inserir alimento
router.put('/alimento/:id', AlimentoController.alterar);                                            // Rota do método PUT para alterar alimento
router.delete('/alimento/:id', AlimentoController.apagar);                                          // Rota do método delete para apagar um alimento
router.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/exercicios.html'))
})

// Dificuldades, Equipamentos e Musculos
router.get('/dificuldades', DificuldadeController.visualizarTodos);
router.get('/equipamentos', EquipamentosController.visualizarTodos);
module.exports = router;
