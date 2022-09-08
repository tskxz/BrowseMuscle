const express = require('express');
const app = express.Router();
const path = require('path');

app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '/views/app/app.html'))
})

module.exports = app;
