const { response } = require("../app");
const { getByID } = require("../models/user.model");
const jwt = require('jsonwebtoken');


const checkToken = async (req, res, next) =>{

    if(!req.headers['authorization'])
        return res.json({ fatal: 'Debes incluir la ccabecera de autorización'})

    const token = req.headers['authorization'];

    //Es correcto el toke?
    let obj;
    try {
        obj = jwt.verify(token, process.env.SECRET_KEY); //ver cuando se ha puesto esto
    } catch (error) {
        return res.json({ fatal: error.message});
    }

    //obj dispone de las claves: user_id, user_role, esp_at
   
    const [users] = await getByID(obj.user_id);
    req.user = users[0];

    next();
}

const checkAdmin = (req, res, next) => {

    if(req.user.role !== 'admin')
        return res.json({ fatal: 'Debes ser usuario administrador'});

    next();
}


module.exports = {
    checkToken, checkAdmin
}