const bcrypt = require('bcryptjs')
const { create, getByEmail } = require('../../models/user.model'); 
const { createToken } = require('../../utils/helpers,js');
const { checkToken } = require('../../utils/middlewares');

const router = require('express').Router();

router.get('profile', checkToken ,async (req, res) => {
    res,json(req.user);
});

router.post('/register', async (req, res) => {
    
    //Antes de in sertar hay que encriptar la password
    req.body.password = bcrypt.hashSync(req.body.password, 8);

    try{
        const [result] = await create(req.body);

        res.json(result);
    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
});

router.post('/login', async (req, res) => {
    try{
        //Comprobar primero si existe el email en la bd

        const [users] = await getByEmail(req.body.email);

        if(users.length == 0)
            return res.json({ fatal: 'Error en email y/o contraseña'});
        
        // Recuperamos el usuario
        const user = users[0];

        // Coinciden las passwod??
        const iguales = bcrypt.compareSync(req.body.password, user.password);

        if(!iguales){
            return res.json({ fatal: 'Error en email y/o contraseña'});
        }

        res.json({ 
            succes: 'Login correcto',
            token: createToken(user)
    });

    }catch(error){
        res.status(500).json({ fatal: error.message });
    }
});


module.exports = router;