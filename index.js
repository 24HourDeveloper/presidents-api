const express = require("express");
const cors = require("cors");
const mysql2 = require("mysql2");
const app = express();

app.use(cors());
app.use(express.static("assets"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const connection = mysql2.createConnection({
  host: "localhost",
  user: "root",
  password: "Andr0id30",
  database: "presidents"
});

app.get("/", (req, res) => {
  connection.query("SELECT * FROM `president`", (err, results) => {
    if (err) console.log(err);

    console.log(results);
    res.json(results);
  });
});

app.get("/president/:id", (req, res) => {
  const id = req.params.id;
  connection.query(`SELECT * FROM president WHERE id=${id}`, (err, results) => {
    if (err) console.log(err);

    console.log(results);
    res.json(results);
  });
});

app.listen(5000, () => console.log("server is up"));
