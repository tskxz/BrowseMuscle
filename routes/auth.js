// Rotas para autenticação

const express = require('express');
const auth = express.Router();
const path = require('path');
const passport = require('passport');

// Controlers
const UtilizadorController = require('../controllers/UtilizadorController')

// Rota para a página login
auth.get('/login', checkNotAuthenticated, function (req, res) {
    res.render('auth/login', { layout: 'auth', error: req.flash("error") })
})

// Rota para fazer logout
auth.post('/logout', function (req, res, next) {
    req.logout(function (err) {
        if (err) { return next(err); }
        res.redirect('/');
    });
});

// Rota do método post para fazer login
auth.post('/', passport.authenticate('local', {
    successRedirect: '/',
    failureRedirect: '/auth/login',
    failureFlash: true
}))

// Rota para criar uma conta
auth.post('/registar', checkNotAuthenticated, UtilizadorController.criar)

// Rota do método post para criar uma conta
auth.get('/registar', checkNotAuthenticated, function (req, res) {
    res.render('auth/registar', { layout: 'auth', error: req.flash("error") })
})

// Função para verificar autenticação - Se estiver com sessão iniciada
function checkAuthenticated(req, res, next) {
    if (req.isAuthenticated()) {
        return next()
    }

    res.redirect('/auth/login')
}
// Função para verificar autenticação - Se não estiver com sessão iniciada
function checkNotAuthenticated(req, res, next) {
    if (req.isAuthenticated()) {
        return res.redirect('/meu_perfil');
    }
    next();
}

module.exports = auth;
