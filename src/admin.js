const express = require('express');
const admin = express.Router();
const path = require('path');


admin.get('/post_exercicios', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios_POST.html'))
})

admin.get('/view', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/admin/exercicios.html'))
})

admin.get('/', function(req, res){
	res.sendFile(path.join(__dirname, '/views/admin/tabela_exercicios.html'))
})

module.exports = admin;
