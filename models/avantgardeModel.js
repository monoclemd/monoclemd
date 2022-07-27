var pool = require('./bd');    /* llama a la base de datos */

async function getAvantgarde(){  /* función para traer las noticias de avantgarde - es asincronico porque no sabemos cuando lo va traer (apretar el botón)*/
    var query = 'select * from avantgarde'; /* EL PEDIDO DE LO Q QUIERO - se pide como se pido en Mysql con los comandos */
    var rows = await pool.query(query);  
    return rows;
} 

async function insertAvantgarde(obj){
    try{
        var query = 'insert into avantgarde set ?';
        var rows = await pool.query(query,[obj]);
        return rows;

    } catch(error) {
        console.log(error);
        throw error;
    }
}

/* borra noticia dentro del form*/
async function deleteAvantgardeByID(id){
    var query = 'delete from avantgarde where id= ?';
    var rows = await pool.query(query,[id]);
    return rows;
}

/* traer noticia dentro del form*/
async function getAvantgardeByID(id){
    var query = 'select * from avantgarde where id= ?';
    var rows = await pool.query(query,[id]);
    return rows[0];
}

/* traer n dentro del form*/

async function modificarAvantgardeByID(obj,id){
    try{
        var query = 'update avantgarde set ? where id=?'
        var rows= await pool.query(query,[obj,id]);
        return rows;

    }catch(error){
        console.log(error)
    }
}

async function buscarAvantgarde(busca){
    var query = 'select * from avantgarde where titulo like ? OR cuerpo like ?';
    var rows = await pool.query(query,['%' + busca + '%', '%' + busca + '%',]);
    return rows
}





module.exports = { getAvantgarde, insertAvantgarde, deleteAvantgardeByID, getAvantgardeByID, modificarAvantgardeByID, buscarAvantgarde}


//try - catch: ayuda el manejo de ersrores (si el cod no entiedne algo va a tirar ERROR)
