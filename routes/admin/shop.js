var express = require('express');
var router = express.Router();
var shopModel = require('../../public/models/shopModel');

/* GET home page. */
router.get('/', async function (req, res, next) {

  var shop = await shopModel.getShop();

  res.render('admin/shop', {
    layout: 'admin/layout',
    usuario: req.session.nombre,
    shop
  });
});

router.get('/eliminar/:id', async (req, res, next) => {

  var id = req.params.id;

  await shopModel.deleteShopById(id);
  res.redirect('/admin/shop');

});

router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', {
    layout: 'admin/layout'
  })
});

router.post('/agregar', async (req, res, next) => {
  try {
    if (req.body.titulo != "" && req.body.precio != "" && req.body.stock != "") {
      await shopModel.insertShop(req.body);
      res.redirect('admin/shop')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo el stock'
    })
  }
})


module.exports = router;