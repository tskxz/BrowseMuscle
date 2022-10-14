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
const PeitoController = require('./controllers/Musculos/PeitoController');                          // Peito
const OmbrosController = require('./controllers/Musculos/OmbrosController');                        // Ombros
const TricepsController = require('./controllers/Musculos/TricepsController');                      // Triceps
const BicepsController = require('./controllers/Musculos/BicepsController');                        // Biceps
const CostasController = require('./controllers/Musculos/CostasController');                        // Costas
const AbdominaisController = require('./controllers/Musculos/AbdominaisController');                // Abdominais
const AntebracoController = require('./controllers/Musculos/AntebracoController');                  // Antebraco
const DorsaisController = require('./controllers/Musculos/DorsaisController');                      // Dorsais
const GemeosController = require('./controllers/Musculos/GemeosController');                        // Gemeos
const QuadricepsController = require('./controllers/Musculos/QuadricepsController');                // Quadriceps
const TrapsController = require('./controllers/Musculos/TrapsController');                          // Traps
const HamstringsController = require('./controllers/Musculos/HamstringsController');                // Hamstrings
const GluteoController = require('./controllers/Musculos/GluteoController');                        // Gluteo

// Buscar os controladores - Dificuldades

const InicianteController = require('./controllers/Dificuldades/InicianteController');              // Iniciante 
const IntermedarioController = require('./controllers/Dificuldades/IntermediarioController');       // Intermediário
const AvancadoController = require('./controllers/Dificuldades/AvancadoController');                // Avancado

// Buscar os Controladores - Equipamentos

const BarraController = require('./controllers/Equipamentos/BarraController');                      // Barra
const BodyweightController = require('./controllers/Equipamentos/BodyweightController');            // Bodywegith (Peso Corporal)
const CabosController = require('./controllers/Equipamentos/CabosController');                      // Cabos
const MaquinaController = require('./controllers/Equipamentos/MaquinaController');                  // Maquina
const HalteresController = require('./controllers/Equipamentos/HalteresController');                // Halteres
const ElasticoController = require('./controllers/Equipamentos/ElasticoController');                // Elastico

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

// Exercícios para o músculo
router.get('/peito', PeitoController.visualizarTodos);                                              // Rota do método GET para visualizar todos exercícios para peito
router.get('/ombros', OmbrosController.visualizarTodos);                                            // Rota do método GET para visualizar todos exercícios para ombros
router.get('/triceps', TricepsController.visualizarTodos);                                          // Rota do método GET para visualizar todos exercícios para triceps
router.get('/biceps', BicepsController.visualizarTodos);                                            // Rota do método GET para visualizar todos exercícios para biceps
router.get('/costas', CostasController.visualizarTodos);                                            // Rota do método GET para visualizar todos exercícios para costas
router.get('/abdominais', AbdominaisController.visualizarTodos);                                    // Rota do método GET para visualizar todos exercícios para abdominais
router.get('/antebraco', AntebracoController.visualizarTodos);                                      // Rota do método GET para visualizar todos exercícios para antebraco
router.get('/dorsais', DorsaisController.visualizarTodos);                                          // Rota do método GET para visualizar todos exercícios para dorsais
router.get('/gemeos', GemeosController.visualizarTodos);                                            // Rota do método GET para visualizar todos exercícios para gemeos
router.get('/quadriceps', QuadricepsController.visualizarTodos);                                    // Rota do método GET para visualizar todos exercícios para quadriceps
router.get('/traps', TrapsController.visualizarTodos);                                              // Rota do método GET para visualizar todos exercícios para traps
router.get('/hamstrings', HamstringsController.visualizarTodos);                                    // Rota do método GET para visualizar todos exercícios para hamstrings
router.get('/gluteos', GluteoController.visualizarTodos);                                           // Rota do método GET para visualizar todos exercícios para gluteos

// Dificuldades
router.get('/iniciante', InicianteController.visualizarTodos);                                      // Rota do método GET para visualizar todos exercícios de dificuldade iniciante
router.get('/intermediario', IntermedarioController.visualizarTodos);                               // Rota do método GET para visualizar todos exercícios de dificuldade intermediario
router.get('/avancado', AvancadoController.visualizarTodos);                                        // Rota do método GET para visualizar todos exercícios de dificuldade avancado

// Equipamentos
router.get('/barra', BarraController.visualizarTodos);                                              // Rota do método GET para visualizar todos exercícios de equipamentos barra
router.get('/bodyweight', BodyweightController.visualizarTodos);                                    // Rota do método GET para visualizar todos exercícios de equipamneots bodyweight
router.get('/cabos', CabosController.visualizarTodos);                                              // Rota do método GET para visualizar todos exercícios de equipamentos cabos
router.get('/maquina', MaquinaController.visualizarTodos);                                          // Rota do método GET para visualizar todos exercícios de dificuldade maquina
router.get('/halteres', HalteresController.visualizarTodos);                                        // Rota do método GET para visualizar todos exercícios de dificuldade halteres
router.get('/elastico', ElasticoController.visualizarTodos);                                        // Rota do método GET para visualizar todos exercícios de dificuldade elastico

// Dificuldades, Equipamentos e Musculos
router.get('/dificuldades', DificuldadeController.visualizarTodos);
router.get('/equipamentos', EquipamentosController.visualizarTodos);
module.exports = router;
