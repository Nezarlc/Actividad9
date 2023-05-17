var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get('/all', (req, res) =>{
  res.send('Recupero todos los usuarios');
});

router.post('/new', (req, res) =>{
  res.send('Se crea un nuevo usuario');
});

router.post('/borrado', (req, res) =>{
  res.send('Se borra un usuario')
});

module.exports = router;
