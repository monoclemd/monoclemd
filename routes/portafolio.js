var express = require('express');
var router = express.Router();

router.get('/', function(req,res,next){
    res.render('portafolio', {
        isPortafolio: true
    }) //necesitaremos un view/monocle.hbs
})

module.exports = router;
