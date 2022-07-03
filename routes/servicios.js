var express = require('express');
var router = express.Router();

router.get('/', function(req,res,next){
    res.render('servicios', {
        isServicios: true
    }) //necesitaremos un view/monocle.hbs
})

module.exports = router;
