namespace app.bank;

using {
    Currency,
    managed,
    sap,
    cuid,
    sap.common.CodeList,
    Country
} from '@sap/cds/common';

entity Banks : managed {
    key BankUUID      : UUID;
        BankID        : Integer @Core.Computed;
        BankName      : String(100);
        Description   : String(1024);
        BankType      : Association to BankType;
        Headquarters  : String;
        IsActive      : Boolean;
        RBIApproved   : Boolean;
        FoundedDate   : Date;
        CEOName       : String;
        NoOfEmployees : Integer;
        CustomerCare  : String(30);
        StockName     : String(50);
        StockPrice    : Decimal(16, 3);
        CurrencyCode  : Currency;
        Revenue       : Decimal(16, 3);
        Website       : String(100);
        BankLogo      : String  @UI: {IsImageURL: true};
        to_Branch     : Composition of many Branches
                            on to_Branch.to_Bank = $self;
};


entity Branches : managed {
    key BranchUUID  : UUID;
        BranchCode  : Integer;
        BranchName  : String(100);
        FullAddress : String(1024);
        City        : String(100);
        State       : String(50);
        CountryCode : Country;
        PostalCode  : String(50);
        IFSC        : String(20);
        MICRCode    : String(20);
        PhoneNo     : String(20);
        to_Bank     : Association to Banks;
};


entity BankType : CodeList {
    key code : String enum {
            Public  = 'PU';
            Private = 'PR';
            Trust   = 'TR';
        } default 'PR';
}
