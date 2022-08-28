const express = require('express');
const router = express.Router();
const path = require('path');

const ExercicioController = require('./controllers/ExercicioController')
const MusculoController = require('./controllers/MusculoController');

router.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios_POST.html'))
})

router.get('/view', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios.html'))
})

router.get('/tabela_exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/tabela_exercicios.html'))
})

router.get('/exercicios', ExercicioController.buscarTodos)
router.get('/exercicio/:id', ExercicioController.buscarUm);
router.post('/exercicio', ExercicioController.inserir);
router.put('/exercicio/:id', ExercicioController.alterar);
router.delete('/exercicio/:id', ExercicioController.apagar);

router.get('/musculos', MusculoController.visualizarTodos);

module.exports = router;