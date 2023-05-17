const { getByProfesorId } = require('../../models/client.model');
const { getAll, getById, create, update, deleteById } = require('../../models/teacher.model');

const router = require('express').Router();

router.get('/', async (req, res) => {
    try{
        const [teacher] = await getAll(); //con los [] me quedo con la primera posicion del array
        res.json(teacher);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
});

router.post('/', async (req, res) => {
    try{
        console.log('Pasa por aqui');
        const [result] = await create(req.body);
        const [newTeacher] = await getById(result.insertId)
        res.json(newTeacher[0]);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})

router.put('/:teacherId', async (req, res) => {
    try{
        const { teacherId } = req.params;
        await update(teacherId, req.body);
        const [teacher] = await getById(teacherId);
        res.json(teacher[0]);

    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})

router.delete('/:teacherId', async (req, res) => {
    try{

        const { teacherId } = req.params;
        const [teacher] = await getById(teacherId);
        await deleteById(teacherId);
        
        res.json([teacher[0]])
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})

router.get('/clientes', async (req, res) => {
    try{
        const [profesores] = await getAll();

        for(let profesor of profesores){

            const [clientes] = await getByProfesorId(profesor.id);
            profesor.clientes = clientes; //Añadimos un array de clientes al objeto de profesor
        }

        res.json(profesores);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})


module.exports = router;
