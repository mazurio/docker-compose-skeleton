'use strict';

const express = require('express');
const os = require('os');

const app = express();
const hostname = os.hostname();

app.get('/', (req, res) => {
  res.jsonp({
    service: 'node-service'
  });
});

app.get('/status', (req, res) => {
  res.jsonp({
    status: 'Ok',
    statusCode: 200
  });
});

app.listen(80);

console.log('Running: node-service')