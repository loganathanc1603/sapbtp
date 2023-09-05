const cds = require('@sap/cds');
class CatalogService extends cds.ApplicationService {
    init() {
        /**
        * Reflect definitions from the service's CDS model
        */
        const { Interactions_Header, Interactions_Items } = this.entities;

        this.before('READ', 'Interactions_Header', async (req) => {
            const { maxID } = await SELECT.one`max(ID) as maxID`.from(Interactions_Header);

            const headerData = await SELECT.distinct.from(Interactions_Header);
            const firstRow = headerData[0],
                iLimit = 3;

            const query = SELECT.from(Interactions_Header)
                .columns
                `{ID, PARTNER, LOG_DATE, BPCOUNTRY_code}`
                .where
                `ID < ${iLimit}`
                //.groupBy
                //`PARTNER`
                .orderBy
                `LOG_DATE desc`;

            const customHeaderdata = await query;
        });

        this.after('READ', 'Interactions_Header', async (headerData) => {
            const aHeaderData = Array.isArray(headerData) ? headerData : [headerData];
            aHeaderData.forEach((oData) => { 
                if(oData.ID === 1){
                    oData.PARTNER = 'LOGANATHAN';
                }
            });
        });

        this.before('CREATE', 'Interactions_Header', async (req) => {
            const { maxID } = await SELECT.one`max(ID) as maxID`.from(Interactions_Header);
            req.data.ID = maxID + 1;
        });

        return super.init();
    }
}
module.exports = { CatalogService };