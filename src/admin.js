const express = require('express');
const admin = express.Router();
const path = require('path');

// Rotas para o admin

/*
admin/post_exercicios
admin/view
admin/
*/

// Inserir exercícios
admin.get('/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/exercicios_POST.html')) // Inserir exercícios através do form HTML
})

admin.get('/update_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/exercicios_PUT.html')) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/tabela_exercicios.html')) // Visualizar os exercícios através da tabela em HTML
})

admin.get('/alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/tabela_alimentos.html'))
})

admin.get('/post_alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/alimentos_POST.html'))
})

admin.get('/update_alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/alimentos_PUT.html'))
})

module.exports = admin;
