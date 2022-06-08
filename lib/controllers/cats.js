const { Router } = require('express');
const Cat = require('../models/cats');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const id = req.params.id;
    const matchingCat = await Cat.getById(id);
    res.json(matchingCat);
  })

  .get('/', async (req, res) => {
    const catData = await Cat.map(({ id, name }) => ({ id, name }));
    res.json(catData);
  });

