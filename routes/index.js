var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', {
    isHome:true
  });
});

router.post('/', async (req, res, next) => {

  console.log(req.body)

  
  var email = req.body.email;
 

  var obj = {
    to: 'ruth.zabaleta98@gmail.com',
    subjet: 'Contacto desde la web',
    html: email + ".<br> Además, hizo el siguiente comentario: " 
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
    isIndex: true,
    message: 'Mensaje enviado'
  });

});

module.exports = router;
