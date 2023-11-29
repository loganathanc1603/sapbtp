using {sap.api as my} from '../db/BusinessPartnerSchema.cds';

service BusinessPartnerService {

    @readonly
    entity BusinessPartners as projection on my.BusinessPartners;
}
