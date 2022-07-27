var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');

require('dotenv').config() // carga los datos


var indexRouter = require('./routes/index');
var monocleRouter = require('./routes/monocle');
var contactoRouter = require('./routes/contacto');
var serviciosRouter = require('./routes/servicios');
var avantgardeRouter = require('./routes/avantgarde');

var loginRouter = require('./routes/admin/login');
var adminRouter = require('./routes/admin/avantgarde');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


/*****************************SESSION***********************/

app.use(session({
  secret: 'asdfghjksadkljsajd153333',
  //cookie:{maxAge:null},
  resave: false,
  saveUninitialized: true
}))

secured = async (req, res, next) => {
  try {
    console.log(req.session.id_usuario);
    if (req.session.id_usuario) {
      next();
    } else {
      res.redirect('/admin/login')
    }
  } catch (error) {
    console.log(error)
  }
}

app.use('/', indexRouter);
app.use('/monocle', monocleRouter);
app.use('/contacto', contactoRouter);
app.use('/servicios', serviciosRouter);
app.use('/avantgarde', avantgardeRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/avantgarde', secured, adminRouter);




// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
