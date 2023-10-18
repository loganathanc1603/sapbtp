const cds = require("@sap/cds");

class BankService extends cds.ApplicationService {
    init() {

        const { Banks } = this.entities;

        this.before("CREATE", "Banks", async (req) => {
            const activeResults = await SELECT`BankID`.from(Banks);
            const draftResults = await SELECT`BankID`.from(Banks.drafts);
            let maxID = 0;
            for (const result of [...activeResults, ...draftResults]) {
                if (Number(result.BankID) > maxID)
                    maxID = Number(result.BankID);
            }
            req.data.BankID = maxID + 1;
        });
        return super.init();
    }
}

module.exports = { BankService };