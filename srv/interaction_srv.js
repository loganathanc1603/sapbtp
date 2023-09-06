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
                if (oData.ID === 1) {
                    oData.PARTNER = 'LOGANATHAN';
                }
            });
        });

        this.before('CREATE', 'Interactions_Header', async (req) => {
            const { maxID } = await SELECT.one`max(ID) as maxID`.from(Interactions_Header);
            let PARTNER = req.data.PARTNER;
            if (PARTNER === "") {
                throw req.reject(400, 'Please provide the partner Id.');
            }
            req.data.ID = maxID + 1;
        });

        this.on('MyAction', async (req) => {
            var f1 = req.data.input["field1"],
                f2 = req.data.input["field2"],
                op = req.data.input["operator"];

            req.data.input["result"] = eval(f1 + op + f2);
            return req.data.input;
        });

        this.on('MyFunction', async (req) => {
            let result = {};
            const { maxID_h } = await SELECT.one`max(ID) as maxID_h`.from(Interactions_Header);
            const { maxID_i } = await SELECT.one`max(INTHEADER_ID) as maxID_i`.from(Interactions_Items);
            if (req.data.catagory === 1) {
                result.description = "SAP BTP CAPM Function Called Successfully.";
                result.result = maxID_h;
                result.field2 = maxID_i;
            } else {
                result.description = "SAP BTP CAPM Function Called Successfully.";
                result.result = maxID_h;
                result.field2 = maxID_i;
            }
            return result;
        });

        this.on('AddString', async (req) => {
            let { firstName, lastName } = req.data;
            return firstName.concat(" " + lastName);
        });

        this.on('boundRead', Interactions_Header, async (req) => {
            const result = await cds.run(req.query);
            return result;
        });

        this.on('unboundRead', async (req) => {
            // const result = await cds.run(SELECT.from(Interactions_Header));
            const iLimit = 3;

            const query = SELECT.from(Interactions_Header)
                .columns
                `{ID, PARTNER, LOG_DATE, BPCOUNTRY_code}`
                .where
                `ID < ${iLimit}`;

            const result = await cds.run(SELECT.from(query));
            return JSON.stringify(result);
        });

        this.on('updateNewPartner', async (req) => {
            let ID = req.data.ID;
            let PARTNER = req.data.PARTNER;
            let BPCOUNTRY_code = req.data.BPCOUNTRY_code;

            await UPDATE(req.target)
                .where`ID = ${ID}`
                .with({ PARTNER: PARTNER, BPCOUNTRY_code: BPCOUNTRY_code });

            const query = SELECT.from(Interactions_Header)
                .columns
                `{ID, PARTNER, LOG_DATE, BPCOUNTRY_code}`
                .where
                `ID = ${ID}`;

            const result = await cds.run(SELECT.from(query));
            return result;
        });

        return super.init();
    }
}
module.exports = { CatalogService };