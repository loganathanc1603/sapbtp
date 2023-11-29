namespace sap.api;


using {  API_BUSINESS_PARTNER as bupa } from '../srv/external/API_BUSINESS_PARTNER';

    entity BusinessPartners as projection on bupa.A_BusinessPartner {
        key BusinessPartner as ID,
        BusinessPartnerFullName as fullName,
        BusinessPartnerIsBlocked as isBlocked,
}
