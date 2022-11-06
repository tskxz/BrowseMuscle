const express = require('express');
const auth = express.Router();
const path = require('path');
const UtilizadorController = require('../controllers/Utilizadores/UtilizadorController')
auth.get('/login', function(req, res) {
	res.render('auth/login', {layout: 'auth'})
})

auth.post('/', UtilizadorController.login)

module.exports = auth;
