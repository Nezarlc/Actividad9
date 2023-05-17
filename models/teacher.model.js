const getAll = () => {
    return db.query('select * from profesores');
}

const getById = (teacherId) => {

    return db.query('select * from profesores where id = ?', [teacherId]);
}

const create = ({nombre, experiencia}) => {
    return db.query(
        'insert into profesores (nombre, experiencia) values (?, ?)',
        [nombre, experiencia]
)};

const update = (teacherId, {nombre, experiencia}) => {
    return db.query(
        'update profesores set nombre = ?, experiencia = ? where id = ?',
        [nombre, experiencia, teacherId]
    )
}

const deleteById = (teacherId) => {

    return db.query('delete from profesores where id = ?' , [teacherId]);
}

module.exports = {
    getAll, create, getById, update, deleteById
}