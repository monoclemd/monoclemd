var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');

router.get('/', function (req, res, next) {
    res.render('admin/login',{
        layout:'admin/layout' // admin/layout.hbs
    }); // view/admin/login.hbs
});  //cierro get //

router.get('/logout', function(req,res,next){
    req.session.destroy(); //destruye id, nombre.... todo//
    res.render('admin/login',{
        layout:'admin/layout'
    })
})




router.post('/', async function(req,res,next){
    try{
        console.log(req.body);
        //capturar de  datos
        var usuario = req.body.usuario;
        var password = req.body.password;

        var data = await usuariosModel.getUserAndPassword(usuario,password);
        // var data guarda el slec de  "select * from usuario where usuario = 'edu' and password en md5(1234) - id, usuario, password
      
        console.log(data)
        if( data != undefined){
            
            req.session.id_usuario = data.id; 
            req.session.nombre = data.usuario; 
            

            res.redirect('/admin/avantgarde')
        } else {
            res.render('admin/login',{ //muestrame el login.hbs
                layout:'admin/layout', //con el layout 
                error:true
            })
        }

    }catch(error){
        console.log(error)
    }
});
 

module.exports = router;