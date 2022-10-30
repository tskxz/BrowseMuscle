const express = require('express');
const admin = express.Router();
const path = require('path');

// Rotas para o admin

// Inserir exercícios
admin.get('/post_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_POST', {layout: 'main_admin'}) // Inserir exercícios através do form HTML
})

// Atualizar exercícios
admin.get('/update_exercicios', function(req, res) {
	res.render('admin/exercicios/exercicios_PUT', {layout: 'main_admin'}) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/exercicios', function(req, res){
	res.render('admin/exercicios/tabela_exercicios', {layout: 'main_admin'}) // Visualizar os exercícios através da tabela em HTML
})

module.exports = admin;
