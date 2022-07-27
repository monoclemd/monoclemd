var express = require('express');
var router = express.Router();
var avantgardeModel = require('../models/avantgardeModel');

router.get('/', async function(req,res,next){

    var avantgarde;
    if(req.query.q === undefined){
        avantgarde = await avantgardeModel.getAvantgarde();
    } else {
        avantgarde = await avantgardeModel.buscarAvantgarde(req.query.q);
    }

    res.render('avantgarde', {
        isAvantgarde: true,
        avantgarde,
        is_search: req.query.q !== undefined,
        q:req.query.q
    }); 
})
module.exports = router;
