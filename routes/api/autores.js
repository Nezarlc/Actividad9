const { getAll, getById, create, deleteById, update } = require('../../models/autor.model');

const router = require('express').Router();

router.get('/', async (req, res) => {
    try{
        const [autores] = await getAll(); 
        res.json(autores);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
});

router.get('/:autorId',async (req, res) =>{

    const { autorId } = req.params;

    try {
        
        const [autor] = await getById(autorId);

        res.json(autor[0]);

    } catch (error) {
        res.json({ fatal: error.message });
    }
})


router.post('/', async (req, res) => {
    try{
        const [result] = await create(req.body);
        const [newAutor] = await getById(result.insertId)
        res.json(newAutor[0]);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})

router.delete('/:autorId', async (req, res) =>{
    const { autorId } = req.params;

    try{
        
        const [autor] = await getById(autorId);
        const [result] = await deleteById(autorId);
        console.log(result);
        res.json(autor[0]);

    }catch(error){

        res.json({ fatal: error.message})
    }

});

router.put('/:autorId',async (req, res) =>{

    const { autorId } = req.params;

    try{
        const [result] = await update(autorId, req.body);
        const [autor] = await getById(autorId);
        res.json(autor[0]);
    }catch(error){
        res.json({fatal: error.message});
    }
});




module.exports = router;