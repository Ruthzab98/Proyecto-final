var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('carrito9', {
    isCarrito9:true
  });
});

module.exports = router;