const getAll = () => {

    return db.query('select * from posts');
}

const getById = (postId) => {

    return db.query( 'select * from posts where id = ?', [postId]);
}

const create = ({titulo, descripcion, fecha, categoria, autores_id}) => {

    return db.query( 'insert into posts (titulo, descripcion, fecha, categoria, autores_id) values (?, ?, ?, ?, ?)', [titulo, descripcion, fecha, categoria, autores_id]);

}

const getAllByAutorId = (autorId) => {

    return db.query( 'select * from posts where autores_id = ?', [autorId]);
}

const deleteById = (postId) => {

    return db.query(
        'delete from posts where id = ?',
        [postId]
    );
};

const update = (postId ,{titulo, descripcion, fecha, categoria, autores_id}) => {

    return db.query(
        'update clientes set titulo = ?, descripcion = ?, fecha = ?, categoria = ?, autores_id = ? where id = ?',
        [titulo, descripcion, fecha, categoria, autores_id, postId]
    )

}

module.exports = {

    getAll, getById, create,getAllByAutorId, deleteById, update
}