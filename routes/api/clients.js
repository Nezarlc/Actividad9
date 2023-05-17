const { json } = require('express');
const { getAll, getMayores65, getById, create, update, deleteById } = require('../../models/client.model');

const router = require('express').Router();

router.get('/',async (req, res) => {
    // Recuperar en formato json todos los clientes
    // Lanzar la query que recupera todos los clientes
    // select * form clientes
    // Recuperar los clientes de la query como un array
    // Responder con dicho array
    try{
        const [result] = await getAll();
        // El resultado de la query es un array con dos posiciones
        // La primera posicion en el objeto con la resolucion de la query
        // La segunda posicion es un array con una descripcion de los campos de la tabla
        // console.log(result.length);

        res.json(result);
    } catch (error){
        res.status(503).json({ fatal: error.message });
    }

});

router.post('/', async (req, res) => {

    try {
        const result = await create(req.body);
        console.log(result.insertId);
        const [cliente] = await getById(result.insertId);
        res.json(cliente[0]);

    } catch (error) {

        res.json({ fatal: error.message});
    }
});

// Fat Model Skinny Controller

router.get('/mayores',async (req, res) =>{
    try{

        const [clients] = await getMayores65();

        res.json(clients);

    } catch(error){
        res.json({ fatal: error.message });
    }
});

router.get('/:clientId',async (req, res) =>{

    const { clientId } = req.params;

    try {
        
        const [client] = await getById(clientId);

        if(client.length === 0){
            return res.json({ fatal: 'No existe un usuario con ese ID'});
        }

            res.json(client[0]);

    } catch (error) {
        res.json({ fatal: error.message });
    }
})


// router.post('/', (req, res) =>{
//     console.log(req.body);

//     res.json('Creamos un nuevo cliente !');
// });

router.put('/:clientId',async (req, res) =>{

    const { clientId } = req.params;

    console.log(clientId);
    console.log(req.body);

    try{
        const [result] = await update(clientId, req.body);
        const [cliente] = await getById(clientId);
        res.json(cliente[0]);
    }catch(error){
        res.json({fatal: error.message});
    }
});

router.delete('/:clientId', async (req, res) =>{
    const { clientId } = req.params;

    try{
        
        const [client] = await getById(clientId);
        const [result] = await deleteById(clientId);
        console.log(result);
        res.json(client[0]);

    }catch(error){

        res.json({ fatal: error.message})
    }

});



module.exports = router;