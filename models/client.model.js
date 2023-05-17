const getAll = () =>{

    return db.query('select * from clientes');
}

const getMayores65 = () => {

    return db.query('select * from clientes where edad > 65');
}

const getById = (clientId) => {

    return db.query('select * from clientes where id = ? ', [clientId]);
}

const getByProfesorId = (teacehrId) => {

    return db.query('select * from clientes where profesor_id = ?', [teacehrId]);
}

const create = ({nombre, apellidos, direccion , email, edad, genero, cuota, fecha_nacimiento, dni}) => {

    return db.query(
        'insert into clientes (nombre, apellidos, direccion, email, edad, genero, cuota, fecha_nacimiento, dni) values (?, ?, ?, ?, ?, ?, ?, ?, ?)',
        [nombre, apellidos, direccion, email, edad, genero, cuota, fecha_nacimiento, dni]
    );
};

const update = (clientId ,{nombre, apellidos, direccion , email, edad, genero, cuota, fecha_nacimiento, dni}) => {

        return db.query(
            'update clientes set nombre = ?, apellidos = ?, direccion = ?, email = ?, edad = ?, genero = ?, cuota = ?, fecha_nacimiento = ?, dni = ? where id = ?',
            [nombre, apellidos, direccion, email, edad, genero, cuota, fecha_nacimiento, dni, clientId]
        )

}

const deleteById = (clientId) => {

    return db.query(
        'delete from clientes where id = ?',
        [clientId]
    );
};

module.exports = {
    getAll, getMayores65, getById, create, update, deleteById, getByProfesorId
}