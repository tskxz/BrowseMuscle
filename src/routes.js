const express = require('express');
const router = express.Router();

const ExercicioController = require('./controllers/ExercicioController')

router.get('/exercicios', ExercicioController.buscarTodos)

module.exports = router;