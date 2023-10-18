var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


require('dotenv').config();

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var shopRouter = require('./routes/shop');
var sobremiRouter = require('./routes/sobremi');
var contactoRouter = require('./routes/contacto');
var carritoRouter= require('./routes/carrito');
var carrito2Router= require('./routes/carrito2');
var carrito3Router= require('./routes/carrito3');
var carrito4Router= require('./routes/carrito4');
var carrito5Router= require('./routes/carrito5');
var carrito6Router= require('./routes/carrito6');
var carrito7Router= require('./routes/carrito7');
var carrito8Router= require('./routes/carrito8');
var carrito9Router= require('./routes/carrito9');
var carrito10Router= require('./routes/carrito10');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/shop', shopRouter);
app.use('/sobremi', sobremiRouter);
app.use('/contacto', contactoRouter); 
app.use('/carrito', carritoRouter);
app.use('/carrito2', carrito2Router);
app.use('/carrito3', carrito3Router);
app.use('/carrito4', carrito4Router);
app.use('/carrito5', carrito5Router);
app.use('/carrito6', carrito6Router);
app.use('/carrito7', carrito7Router);
app.use('/carrito8', carrito8Router);
app.use('/carrito9', carrito9Router);
app.use('/carrito10', carrito10Router);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
