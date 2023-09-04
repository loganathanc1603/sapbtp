const cds = require('@sap/cds');
class CatalogService extends cds.ApplicationService {
    init() {
        /**
        * Reflect definitions from the service's CDS model
        */
        const { Interactions_Header, Interactions_Items } = this.entities;

        this.before('READ', 'Interactions_Header', async (req) => {
            const { maxID } = await SELECT.one`max(ID) as maxID`.from(Interactions_Header);
        });
        return super.init();
    }
}
module.exports = { CatalogService };