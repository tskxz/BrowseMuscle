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
	res.sendFile(path.join(__dirname, '/views/admin/exercicios_POST.html'))
})

// Tabela de todos os exercícios 
admin.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/tabela_exercicios.html'))
})

module.exports = admin;
