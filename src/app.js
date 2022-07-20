const express = require('express');
const cors = require('cors');
const db = require('./db');
// const Joi = require('joi');
// const connexion = require('./db');
const app = express();
app.use(express.json());
app.use(cors());

app.get('/recettes', async (req, res) => {
  try {
    const [recettes] = await db.promise().query('SELECT * FROM recettes');
    res.send(recettes);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

module.exports.app = app;
