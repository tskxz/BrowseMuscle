const express = require('express');
const router = express.Router();
const path = require('path');

// Os controladores tratam de toda a lógica por trás da validação de parâmetros de solicitação, consulta e envio de respostas.
// Os serviços contém as consultas á base de dados e objetos a retornanr ou lançar erros

const ExercicioController = require('./controllers/ExercicioController')
const MusculoController = require('./controllers/MusculoController');
const AlimentoController = require('./controllers/AlimentoController');
const PeitoController = require('./controllers/PeitoController');
const OmbrosController = require('./controllers/OmbrosController');
const TricepsController = require('./controllers/TricepsController');
const BicepsController = require('./controllers/BicepsController');
const CostasController = require('./controllers/CostasController');
const AbdominaisController = require('./controllers/AbdominaisController');
const AntebracoController = require('./controllers/AntebracoController');
const DorsaisController = require('./controllers/DorsaisController');
const GemeosController = require('./controllers/GemeosController');
const QuadricepsController = require('./controllers/QuadricepsController');

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

module.exports = router;
