const express        = require('express');
const port = 8000;
const app            = express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.get('/', (req, res) => {
    res.json({message: 'Hello World!'});
});

app.listen(port, () => { console.log('Our App Is Up And Running!');});

