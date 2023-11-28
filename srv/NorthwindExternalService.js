const cds = require("@sap/cds");

module.exports = cds.service.impl(function () {
    const { Categories } = this.entities;

    async function ConnectBackend(req) {
        const backendconnect = await cds.connect.to('northwind');
        const tx = backendconnect.tx(req);
        return tx.run(req.query);
    }

    this.on('READ', Categories, ConnectBackend);
});