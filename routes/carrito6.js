var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('carrito6', {
    isCarrito6:true
  });
});

module.exports = router;