var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('carrito5', {
    isCarrito5:true
  });
});

module.exports = router;