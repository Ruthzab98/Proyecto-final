var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('carrito8', {
    isCarrito8:true
  });
});

module.exports = router;