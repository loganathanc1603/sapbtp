const cds = require("@sap/cds");

module.exports = cds.service.impl(function () {
    const { SEPMRA_C_PD_Review, SEPMRA_I_StockAvailability, SEPMRA_I_ProductMainCategory } = this.entities;

    async function ConnectBackend(req) {
        const backendconnect = await cds.connect.to('SEPMRA_PROD_MAN');
        const tx = backendconnect.tx(req);
        return tx.run(req.query);
    }

    this.on('READ', SEPMRA_C_PD_Review, ConnectBackend);

    this.after('READ', SEPMRA_C_PD_Review, (req) => {
        req.forEach((oValue) => {
            if (!oValue.Product) oValue.Product = "Dymmy Product"
        });
    });

    this.on('READ', SEPMRA_I_StockAvailability, ConnectBackend);

    this.on('READ', SEPMRA_I_ProductMainCategory, ConnectBackend);
});