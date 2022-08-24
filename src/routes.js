const express = require('express');
const router = express.Router();

const ExercicioController = require('./controllers/ExercicioController')

router.get('/exercicios', ExercicioController.buscarTodos)
router.get('/exercicio/:id', ExercicioController.buscarUm);
router.post('/exercicio', ExercicioController.inserir);
router.put('/exercicio/:id', ExercicioController.alterar);

module.exports = router;