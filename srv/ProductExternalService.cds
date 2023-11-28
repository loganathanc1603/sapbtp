using {SEPMRA_PROD_MAN} from './external/SEPMRA_PROD_MAN.csn';


service ProductExternalService {

    entity SEPMRA_C_PD_Review           as
        select from SEPMRA_PROD_MAN.SEPMRA_C_PD_Review {
            *
        };

    entity SEPMRA_I_StockAvailability   as
        select from SEPMRA_PROD_MAN.SEPMRA_I_StockAvailability {
            *
        };

    entity SEPMRA_I_ProductMainCategory as
        select from SEPMRA_PROD_MAN.SEPMRA_I_ProductMainCategory {
            *
        }

}
