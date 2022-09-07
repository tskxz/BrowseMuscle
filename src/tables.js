const express = require('express');
const tables = express.Router();
const path = require('path');


tables.get('/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios_POST.html'))
})

tables.get('/view', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/exercicios.html'))
})

tables.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/tabela_exercicios.html'))
})

module.exports = tables;
