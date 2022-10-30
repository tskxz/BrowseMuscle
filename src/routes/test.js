const express = require('express');
const test = express.Router();
const path = require('path');
const exercicioController = require('../controllers/test/exercicioController');

test.get('/', exercicioController.view);

module.exports = test;