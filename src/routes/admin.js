const express = require('express');
const admin = express.Router();
const path = require('path');

// Rotas para o admin

// Inserir exercícios
admin.get('/exercicios/post_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_POST', {layout: false}) // Inserir exercícios através do form HTML
})

// Atualizar exercícios
admin.get('/exercicios/update_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_PUT', {layout: false}) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/exercicios', function(req, res){
	res.render('admin/exercicios/tabela_exercicios', {layout: false}) // Visualizar os exercícios através da tabela em HTML
})

module.exports = admin;
