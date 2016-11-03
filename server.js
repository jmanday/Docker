const express = require('express');

// Constants
const PORT = 3000;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('PRUEBA\n');
});

app.listen(PORT);
console.log('Corriendo...:');
