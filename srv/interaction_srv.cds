using app.interactions from '../db/interactions';

service CatalogService @(path: '/catalog') {

    @requires: 'authenticated-user'
    entity Interactions_Header as projection on interactions.Interactions_Header actions {
        action   updateNewPartner(ID : Integer, PARTNER : String(10), BPCOUNTRY_code : String(2)) returns Interactions_Header;
        function boundRead()                                                                      returns String;
    };

    @requires: 'Admin'
    //@requires: 'authenticated-user'
    //@restrict: [{ grant: 'READ', where: 'LANGU = ''DE'''}]
    entity Interactions_Items  as projection on interactions.Interactions_Items;

    //@open
    type ActionObject {
        field1      : Integer;
        field2      : Integer;
        operator    : String(1);
        result      : Integer;
        description : String;
    };

    action   MyAction(input : ActionObject)                   returns ActionObject;
    function MyFunction(catagory : Integer)                   returns ActionObject;
    function AddString(firstName : String, lastName : String) returns String;
    function unboundRead()                                    returns String;
}
