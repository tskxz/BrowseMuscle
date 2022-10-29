const express = require('express');
const admin = express.Router();
const path = require('path');

// Rotas para o admin

/*

admin/exercicios [CRUD]

*/

// Inserir exercícios
admin.get('/exercicios/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '../views/admin/exercicios/exercicios_POST.html')) // Inserir exercícios através do form HTML
})

admin.get('/exercicios/post_script_exercicio', function(req, res) {
	res.sendFile(path.join(__dirname, '../views/admin/exercicios/post_script_exercicios.html'))
})

// Atualizar exercícios
admin.get('/exercicios/update_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '../views/admin/exercicios/exercicios_PUT.html')) // Atualizar exercícios através do form HTML
})

// Tabela de todos os exercícios
admin.get('/exercicios', function(req, res){
	res.sendFile(path.join(__dirname, '../views/admin/exercicios/tabela_exercicios.html')) // Visualizar os exercícios através da tabela em HTML
})

module.exports = admin;
