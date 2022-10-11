const express = require('express');
const admin = express.Router();
const path = require('path');

// Rotas para o admin

/*

admin/exercicios [CRUD]
admin/alimentos	 [CRUD]

*/

// Inserir exercícios
admin.get('/exercicios/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/exercicios_POST.html')) // Inserir exercícios através do form HTML
})

// Atualizar exercícios
admin.get('/exercicios/update_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/exercicios_PUT.html')) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/exercicios/tabela_exercicios.html')) // Visualizar os exercícios através da tabela em HTML
})

// Tabela de todos os alimentos
admin.get('/alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/tabela_alimentos.html'))
})

// Inserir Alimentos
admin.get('/alimentos/post_alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/alimentos_POST.html'))
})

// Atualizar Alimentos
admin.get('/alimentos/update_alimentos', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/alimentos/alimentos_PUT.html'))
})

module.exports = admin;
