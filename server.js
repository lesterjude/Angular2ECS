'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/', (req, res) => {
    res.sendFile(process.cwd()+"/index.html")
});

//allow files like ico, js, css etc files to be accessed
app.use(express.static('/home/node')); //Dockerfile WORKDIR

app.listen(PORT, HOST, () => console.log(`Running on http://${HOST}:${PORT}`));