const express = require("express");
const app = express();
const bodyParser = require("body-parser");
require("dotenv").config();
const port = process.env.PORT || 5000;
const db = require("./queries");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.listen(port, () => console.log("Backend server live on " + port));

app.get("/", function (req, res) {
  res.send("Hello World!");
});

app.get("/users", db.getUsers);
app.get("/users/:id", db.getUserById);
