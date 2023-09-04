const express = require("express");
const app = express();

const PORT = process.env.PORT || 4000;

app.use(express.json());
app.use(express.urlencoded({ encoded: false }));

app.post("/btpjob", (oRequest, oResponse) => {
    const { firstName, lastName } = oRequest.body;
    const dNow = new Date();
    oResponse.status(201).send(`Job Started at: ${dNow} Hello ${firstName} ${lastName} Welcome to BTP Job Scheduler Demo`);
});

app.get('/', function (req, res) {
    res.send('Hello World')
});

app.listen(PORT, console.log(`Listening to PORT ${PORT}`));