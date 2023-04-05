const express = require('express');
const app = express();
const bodyParser = require("body-parser");
const mysql = require('mysql');
const multer = require("multer");
const path = require("path");
const fs = require('fs');
const cors = require('cors');
const { promisify } = require('util');
const stream = require("stream")
const pipeline = promisify(stream.pipeline);

const db = mysql.createPool({
    host : 'localhost',
    user : "root",
    password : "",
    database : "metchoup_translate",
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(path.join(__dirname, 'build')));

app.get('/api/alllanguages/', (req, res) => {
    try {
        const sqlSelect = "SHOW TABLES FROM "+ db.config.connectionConfig.database;
        db.query(sqlSelect, (err, result) =>{    
            return res.json(result);
        })
    } catch (error) {
        console.log("nom de erreur", error)
    }
})

app.get('/api/language/:name', (req, res) => {
    try {
        const sqlSelect = "SELECT * FROM "+req.params.name;
        db.query(sqlSelect, (err, result) =>{ 
            return res.json(result);
        })
    } catch (error) {
        console.log("nom de erreur", error)
    }
})

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, `${__dirname}/sonSuggestion/`);
    },
    filename: function (req, file, cb) {
      cb(null, 'metchoup'+Date.now()+req.body.email+ file.originalname);
    },
  });
  
const upload = multer({storage: storage});

// const upload = multer();
app.post('/api/suggestion', upload.single("expression_audio"), async(req, res) => {
    try {
        var expression_audio;
        //vérifions si l'utilisateur a envoyé un son !
        req.file !== undefined ? expression_audio = req.file.filename : expression_audio = '';
        //Insertion des données
        const sqlInsert = "INSERT INTO suggestions (langue_source, langue_traduite, expression_source, expression_traduite, date_ajout, nom_audio, email_personne) VALUES( ?, ?, ?, ?, now(), ?, ? )"
        db.query(sqlInsert, [req.body.langue_depart, req.body.langue_arrive, req.body.expression_depart, req.body.expression_arrive, expression_audio, req.body.email], (err, result) =>{    
            return res.send("suggestion bien enregistrée");
        })
    } catch (error) {
        console.log("nom de erreur", error)
    }
})

app.get('/', (req, res) => {
    try {
        
    res.send('hello kamite');
           
    } catch (error) {
        console.log("nom de erreur", error)
    }
});



app.listen(3001, () => {
    console.log("running on port 3001");
});