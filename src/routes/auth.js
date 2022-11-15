const express = require('express');
const auth = express.Router();
const path = require('path');
const UtilizadorController = require('../controllers/Utilizadores/UtilizadorController')

// Rotas para autenticação

// Login

auth.get('/login', function(req, res) {
	res.render('auth/login', {layout: 'auth'})
})

auth.post('/', UtilizadorController.login) 

// Registar
auth.post('/registar', UtilizadorController.criar)

auth.get('/registar', function(req, res) {
	res.render('auth/registar', {layout: 'auth'})
})

module.exports = auth;
