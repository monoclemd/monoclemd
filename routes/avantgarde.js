var express = require('express');
var router = express.Router();

router.get('/', function(req,res,next){
    res.render('avantgarde', {
        isAvantG0arde: true
    }) //necesitaremos un view/avantgarde.hbs
})

module.exports = router;
