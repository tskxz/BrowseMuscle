const express = require('express');
const router = express.Router();
const path = require('path');

// Os controladores tratam de toda a lógica por trás da validação de parâmetros de solicitação, consulta e envio de respostas.
// Os serviços contém as consultas á base de dados e objetos a retornanr ou lançar erros

const ExercicioController = require('./controllers/ExercicioController')

const AlimentoController = require('./controllers/AlimentoController');

const MusculoController = require('./controllers/Musculos/MusculoController');
const PeitoController = require('./controllers/Musculos/PeitoController');
const OmbrosController = require('./controllers/Musculos/OmbrosController');
const TricepsController = require('./controllers/Musculos/TricepsController');
const BicepsController = require('./controllers/Musculos/BicepsController');
const CostasController = require('./controllers/Musculos/CostasController');
const AbdominaisController = require('./controllers/Musculos/AbdominaisController');
const AntebracoController = require('./controllers/Musculos/AntebracoController');
const DorsaisController = require('./controllers/Musculos/DorsaisController');
const GemeosController = require('./controllers/Musculos/GemeosController');
const QuadricepsController = require('./controllers/Musculos/QuadricepsController');
const TrapsController = require('./controllers/Musculos/TrapsController');
const HamstringsController = require('./controllers/Musculos/HamstringsController');
const GluteoController = require('./controllers/Musculos/GluteoController');

const InicianteController = require('./controllers/Dificuldades/InicianteController');
const IntermedarioController = require('./controllers/Dificuldades/IntermediarioController');
const AvancadoController = require('./controllers/Dificuldades/AvancadoController');

const BarraController = require('./controllers/Equipamentos/BarraController');
const BodyweightController = require('./controllers/Equipamentos/BodyweightController');
const CabosController = require('./controllers/Equipamentos/CabosController');
const MaquinaController = require('./controllers/Equipamentos/MaquinaController');
const HalteresController = require('./controllers/Equipamentos/HalteresController');

router.get('/exercicios', ExercicioController.buscarTodos) 	 // Rota do método GET para visualizar todos os exercícios
router.get('/exercicio/:id', ExercicioController.buscarUm);	 // Rota do método GET para visualizar apenas um exercício
router.post('/exercicio', ExercicioController.inserir);		 // Rota do método POST para inserir exercício
router.put('/exercicio/:id', ExercicioController.alterar);	 // Rota do método PUT para alterar exercício
router.delete('/exercicio/:id', ExercicioController.apagar); // Rota do método DELETE para apagar um exercício

router.get('/musculos', MusculoController.visualizarTodos);	 // Rota do método GET para visualizar todos os músculos

router.get('/alimentos', AlimentoController.buscarTodos);
router.get('/alimento/:nome', AlimentoController.buscarUmNome);

router.post('/alimento', AlimentoController.inserir);
router.put('/alimento/:id', AlimentoController.alterar);
router.delete('/alimento/:id', AlimentoController.apagar);

router.get('/peito', PeitoController.visualizarTodos);
router.get('/ombros', OmbrosController.visualizarTodos);
router.get('/triceps', TricepsController.visualizarTodos);
router.get('/biceps', BicepsController.visualizarTodos);
router.get('/costas', CostasController.visualizarTodos);
router.get('/abdominais', AbdominaisController.visualizarTodos);
router.get('/antebraco', AntebracoController.visualizarTodos);
router.get('/dorsais', DorsaisController.visualizarTodos);
router.get('/gemeos', GemeosController.visualizarTodos);
router.get('/quadriceps', QuadricepsController.visualizarTodos);
router.get('/traps', TrapsController.visualizarTodos);
router.get('/hamstrings', HamstringsController.visualizarTodos);
router.get('/gluteos', GluteoController.visualizarTodos);

router.get('/iniciante', InicianteController.visualizarTodos);
router.get('/intermediario', IntermedarioController.visualizarTodos);
router.get('/avancado', AvancadoController.visualizarTodos);

router.get('/barra', BarraController.visualizarTodos);
router.get('/bodyweight', BodyweightController.visualizarTodos);
router.get('/cabos', CabosController.visualizarTodos);
router.get('/maquina', MaquinaController.visualizarTodos);
router.get('/halteres', HalteresController.visualizarTodos);

module.exports = router;
