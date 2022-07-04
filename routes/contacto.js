var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');  

router.get('/', function(req,res,next){
    res.render('contacto', {
            isContacto: true
    }) //necesitaremos un view/monocle.hbs
})

router.post('/', async function(req,res,next){

    //console.log(req.body)
    
    var nombre = req.body.nombre;
    var email = req.body.email;
    var tel = req.body.tel;
    var rrss = req.body.rrss;
    var mensaje = req.body.mensaje;
    var obj = {
        to: 'billedu@gmail.com',
        subject: 'Contacto desde MonocleMD',
        html:   "<br> Nombre: " + nombre +
                "<br> Mail: " + email +
                "<br> Telf: " + tel +
                "<br> RRSS: " + rrss +
                "<br> Mensaje: " + mensaje
    }

    var transport = nodemailer.createTransport({
            host: process.env.SMTP_HOST,
            port: process.env.SMTP_PORT,
            auth: {
                    user: process.env.SMTP_USER,
                    pass: process.env.SMTP_PASS
            }

    })  //finaliza trasnport


    var info = await transport.sendMail(obj);

        res.render('contacto',{
           message: 'Mensaje enviado correctamente'   //esto es una propiedad
        })

}) // finaliza router.post

module.exports = router;
