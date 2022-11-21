// Rotas para autenticação

const express = require('express');
const auth = express.Router();
const path = require('path');
const passport = require('passport');

// Controlers
const UtilizadorController = require('../controllers/Utilizadores/UtilizadorController')

// Rota para a página login
auth.get('/login', checkNotAuthenticated, function(req, res) {
	res.render('auth/login', {layout: 'auth', error: req.flash("error")})
})

// Rota do método post login
auth.post('/', passport.authenticate('local', {
	successRedirect: '/meu_perfil',
    failureRedirect: '/auth/login',
    failureFlash: true
})) 

// Rota para registar
auth.post('/registar', checkNotAuthenticated, UtilizadorController.criar)

// Rota do método post registar
auth.get('/registar', checkNotAuthenticated, function(req, res) {
	res.render('auth/registar', {layout: 'auth'})
})

function checkAuthenticated(req, res, next){
    if(req.isAuthenticated()){
        return next()
    }

    res.redirect('/auth/login')
}

function checkNotAuthenticated(req, res, next){
    if(req.isAuthenticated()){
        return res.redirect('/meu_perfil');
    }
    next();
}

module.exports = auth;
