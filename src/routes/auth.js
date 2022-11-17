// Rotas para autenticação

const express = require('express');
const auth = express.Router();
const path = require('path');

// Controlers
const UtilizadorController = require('../controllers/Utilizadores/UtilizadorController')

// Rota para a página login
auth.get('/login', function(req, res) {
	res.render('auth/login', {layout: 'auth'})
})

// Rota do método post login
auth.post('/', UtilizadorController.login) 

// Rota para registar
auth.post('/registar', UtilizadorController.criar)

// Rota do método post registar
auth.get('/registar', function(req, res) {
	res.render('auth/registar', {layout: 'auth'})
})

module.exports = auth;
