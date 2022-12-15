const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World in SAP BTP Node js Application');
});

const port = process.env.PORT || 4000;
app.listen(port, () => {
console.log('My application is listening on port ' + port);
});