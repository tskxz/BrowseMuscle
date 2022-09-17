const express = require('express');
const app = express.Router();
const path = require('path');


// Rota da APP da página principal
app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/app/index.html'))
})

module.exports = app;
