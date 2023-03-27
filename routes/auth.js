// Rotas para autenticação

const express = require('express');
const auth = express.Router();
const path = require('path');
const passport = require('passport');
const { check } = require("express-validator");

// Middlewares
const { checkNotAuthenticated } = require('../middlewares/authenticated');

// Controlers
const UtilizadorController = require('../controllers/UtilizadorController')

// Rota para a página login
auth.get('/login', checkNotAuthenticated, function (req, res) {
    res.render('auth/login', { layout: 'auth', error: req.flash("error"), success: req.flash("success")})
})

// Rota para fazer logout
auth.get('/logout', function (req, res, next) {
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
auth.post('/registar', [
    check('g-recaptcha-response').not().isEmpty()
  ], checkNotAuthenticated, UtilizadorController.criar)

// Rota do método post para criar uma conta
auth.get('/registar', checkNotAuthenticated, function (req, res) {
    res.render('auth/registar', { layout: 'auth', error: req.flash("error"), success: req.flash("success")})
})


module.exports = auth;
