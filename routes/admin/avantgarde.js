var express = require('express');
var router = express.Router();
var avantgardeModel = require('../../models/avantgardeModel');




// diseño y listado de avantgarde//



router.get('/', async function (req, res, next) {



    var avantgarde
    if (req.query.q === undefined) {
        avantgarde = await avantgardeModel.getAvantgarde();
    } else {
        avantgarde = await avantgardeModel.buscarAvantgarde(req.query.q);
    }



    res.render('admin/avantgarde', {
        layout: 'admin/layout', // admin/layout.hbs
        persona: req.session.nombre,
        avantgarde,
        q: req.query.q,
        is_search: req.query.q !==undefined

    }); // view/admin/avantgarde.hbs
});


router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', { //agregar hbs
        layout: 'admin/layout'

    })


})


// AGREGAR NOTICIA //

router.post('/agregar', async (req, res, next) => {
    
    try {
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await avantgardeModel.insertAvantgarde(req.body);
            res.redirect('/admin/avantgarde')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No carga la Noticia'
        })

    }

})


// ELIMINAR NOVEDAD //


router.get('/eliminar/:id', async (req, res, next) => {
    //console.log(req.params.id);
    var id = req.params.id;
    await avantgardeModel.deleteAvantgardeByID(id);
    res.redirect('/admin/avantgarde')
        ;
})

/*vista modificar form + los datos de campos para modificar */

router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    var avantgarde = await avantgardeModel.getAvantgardeByID(id);
    res.render('admin/modificar', {
        layout: 'admin/layout',
        avantgarde


    })

})


/*actualizacion de  los datos de campos para modificar */


router.post('/modificar', async (req, res, next) => {
    try {

        var obj = {
            titulo: req.body.titulo,            
            cuerpo: req.body.cuerpo,
        }

        console.log(obj)

        await avantgardeModel.modificarAvantgardeByID(obj, req.body.id);
        res.redirect('/admin/avantgarde')

    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modificó la noticia'
        })
    }
})


module.exports = router;