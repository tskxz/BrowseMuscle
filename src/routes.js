const express = require('express');
const router = express.Router();
const path = require('path');

const ExercicioController = require('./controllers/ExercicioController')
const MusculoController = require('./controllers/MusculoController');
const LinkController = require('./controllers/LinkController');

router.get('/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios_POST.html'))
})

router.get('/view', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios.html'))
})

router.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/tabela_exercicios.html'))
})

// http://localhost:3000/api/agachamento
router.get('/agachamento', function(req, res){
	res.sendFile(path.join(__dirname, '/views/docs_page/agachamento.html'))
})

// http://localhost:3000/api/bor
router.get('/bor', function(req, res){
	res.sendFile(path.join(__dirname, 'views/docs_page/bor.html'))
})

// http://localhost:3000/api/leg_extensions
router.get('/leg_extensions', function(req, res){
	res.sendFile(path.join(__dirname, 'views/docs_page/leg_extensions.html'))
})

// http://localhost:3000/api/elevacao_pelvica
router.get('/elevacao_pelvica', function(req, res){
	res.sendFile(path.join(__dirname, 'views/docs_page/elevacao_pelvica.html'))
})


router.get('/exercicios', ExercicioController.buscarTodos)
router.get('/exercicio/:id', ExercicioController.buscarUm);
router.post('/exercicio', ExercicioController.inserir);
router.put('/exercicio/:id', ExercicioController.alterar);
router.delete('/exercicio/:id', ExercicioController.apagar);

router.get('/musculos', MusculoController.visualizarTodos);

router.get('/links', LinkController.visualizarTodos);
router.post('/link', LinkController.inserir);

module.exports = router;