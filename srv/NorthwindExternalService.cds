using {northwind} from './external/northwind.csn';

service NorthwindExternalService {

    entity Categories as
        select from northwind.Categories
        excluding {
            Picture
        }
}
