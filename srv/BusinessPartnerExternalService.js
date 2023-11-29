const cds = require('@sap/cds');

/**
* Implementation for Risk Management service defined in ./risk-service.cds
*/
module.exports = cds.service.impl(async function() {

    async function ConnectBackend(req) {
        const backendconnect = await cds.connect.to('API_BUSINESS_PARTNER');
        const tx = backendconnect.tx(req);
        return tx.run(req.query);
    }

    this.on('READ', 'BusinessPartners', ConnectBackend);
});
