const { getAll, getById, create, getAllByAutorId, deleteById, update } = require('../../models/post.model');
const  getAutorById = require('../../models/autor.model').getById ;

const router = require('express').Router();


router.get('/', async (req, res) => {
    try{
        const [posts] = await getAll(); 

        for(let post of posts){

            const [autor] = await getAutorById(post.autores_id);
            post.autor = autor;
        }

        res.json(posts);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
});

router.post('/', async (req, res) => {
    try{
        const [result] = await create(req.body);
        const [newPost] = await getById(result.insertId)
        res.json(newPost[0]);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
})

router.get('/:autorId',async (req, res) =>{

    const { autorId } = req.params;

    try {
        
        const [posts] = await getAllByAutorId(autorId);

        if(posts.length === 0){
            return res.json({ fatal: 'No existe un autorId con ese Id'});
        }
            const [autor] = await getAutorById(autorId);
        
            for( let post of posts){

                const [autor] = await getAutorById(autorId);
                post.autor = autor[0];
            }

            res.json(posts);

    } catch (error) {
        res.json({ fatal: error.message });
    }
})

router.delete('/:postId', async (req, res) =>{
    const { postId } = req.params;

    try{
        
        const [post] = await getById(postId);
        const [result] = await deleteById(postId);
        console.log(result);
        res.json(post[0]);

    }catch(error){

        res.json({ fatal: error.message})
    }

});

router.put('/:postId',async (req, res) =>{

    const { postId } = req.params;

    try{
        const [result] = await update(postId, req.body);
        const [post] = await getById(postId);
        res.json(post[0]);
    }catch(error){
        res.json({fatal: error.message});
    }
});

module.exports = router;
