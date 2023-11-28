using {northwind} from './external/northwind.csn';

service NorthwindExternalService {

    @cds.persistence.skip
    entity Categories as
        select from northwind.Categories
        excluding {
            Picture
        }
}
