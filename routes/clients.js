const express = require('express');
const router = express.Router();


router.put('/edit', (req, res) => {
    res.send('Cliente actualizado');
});


module.exports = router;