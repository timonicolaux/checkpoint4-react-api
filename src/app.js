const express = require('express');
const cors = require('cors');
const db = require('./db');
const app = express();
app.use(express.json());
app.use(cors({ origin: '*', credentials: true }));

app.get('/', async (req, res) => {
  res.send('Hello');
});

app.get('/recettes', cors(), async (req, res) => {
  try {
    const [recettes] = await db.promise().query('SELECT * FROM recettes');
    res.send(recettes);
  } catch (err) {
    console.error(err);
    res.status(500).send('something wrong happened');
  }
});

app.delete('/recettes/:id', cors(), async (req, res) => {
  const id = req.params.id;
  try {
    if (id <= 10) {
      return res.status(401).send('unauthorized');
    } else {
      const [result] = await db
        .promise()
        .query('DELETE FROM recettes WHERE id = ?', [id]);
      res.status(200).send('deleted');
    }
  } catch (error) {
    res.status(500).send('something wrong happened');
  }
});

app.post('/recettes', cors(), async (req, res) => {
  try {
    const {
      titre,
      categorie,
      ingredient0,
      ingredient1,
      ingredient2,
      ingredient3,
      ingredient4,
      ingredient5,
      ingredient6,
      ingredient7,
      ingredient8,
      ingredient9,
      ingredient10,
      ingredient11,
      ingredient12,
      ingredient13,
      ingredient14,
      etape0,
      etape1,
      etape2,
      etape3,
      etape4,
      etape5,
      etape6,
      etape7,
      etape8,
      etape9,
      etape10,
      etape11,
      etape12,
      etape13,
      etape14,
      imagerecette,
    } = req.body;
    const [recettes] = await db
      .promise()
      .query(
        'INSERT INTO recettes (titre, categorie, ingredient0, ingredient1, ingredient2, ingredient3, ingredient4, ingredient5, ingredient6, ingredient7, ingredient8, ingredient9, ingredient10, ingredient11, ingredient12, ingredient13, ingredient14, etape0, etape1, etape2, etape3, etape4, etape5, etape6, etape7, etape8, etape9, etape10, etape11, etape12, etape13, etape14, imagerecette) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
        [
          titre,
          categorie,
          ingredient0,
          ingredient1,
          ingredient2,
          ingredient3,
          ingredient4,
          ingredient5,
          ingredient6,
          ingredient7,
          ingredient8,
          ingredient9,
          ingredient10,
          ingredient11,
          ingredient12,
          ingredient13,
          ingredient14,
          etape0,
          etape1,
          etape2,
          etape3,
          etape4,
          etape5,
          etape6,
          etape7,
          etape8,
          etape9,
          etape10,
          etape11,
          etape12,
          etape13,
          etape14,
          imagerecette,
        ]
      );
    res.status(200).send(recettes);
  } catch (err) {
    console.log(err);
    res.sendStatus(500);
  }
});

module.exports.app = app;
