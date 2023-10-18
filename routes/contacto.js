var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');


/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    isContacto:true
  });
});

router.post('/', async (req, res, next) => {

  console.log(req.body)

  var nombre = req.body.nombre;
  var email = req.body.email;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'ruth.zabaleta98@gmail.com',
    subjet: 'Contacto desde la web',
    html: nombre + "se contacto a traves y quiere mas info a este correo:" + email + ".<br> Además, hizo el siguiente comentario: " + mensaje
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })

  var info = await transporter.sendMail(obj);

  res.render('contacto', {
    isContacto: true,
    message: 'Mensaje enviado'
  });

});



module.exports = router;
