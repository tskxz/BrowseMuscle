const express = require('express');
const app = express.Router();
const path = require('path');


// Rota da APP da página principal
app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/app/index.html'))
})

app.get('/login', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/login.html'))
})

app.get('/registar', function(req, res){
	res.sendFile(path.join(__dirname, '/views/app/registar.html'))
})

module.exports = app;
