using BankService as service from './bank_srv';

annotate BankService.Banks with @odata.draft.enabled;
annotate BankService.Banks with @Common.SemanticKey: [BankUUID];

annotate service.Banks with @(UI: {

    LineItem                             : [
        {
            $Type             : 'UI.DataField',
            Value             : BankID,
            ![@UI.Importance] : #High,
        },
        {
            $Type             : 'UI.DataField',
            Value             : BankName,
            ![@UI.Importance] : #High,
        },
        {
            $Type: 'UI.DataField',
            Value: Description
        },
        {
            $Type: 'UI.DataField',
            Value: CEOName
        },
        {
            $Type: 'UI.DataField',
            Value: FoundedDate
        },
        {
            $Type: 'UI.DataField',
            Value: Headquarters
        }
    ],

    SelectionFields                      : [
        BankName,
        FoundedDate,
        CEOName,
        CurrencyCode_code,
        IsActive
    ],

    FieldGroup #GeneralInformation1      : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: BankID
            },
            {
                $Type: 'UI.DataField',
                Value: BankName
            },
            {
                $Type: 'UI.DataField',
                Value: Description
            },
            {
                $Type: 'UI.DataField',
                Value: BankID
            },
            {
                $Type: 'UI.DataField',
                Value: BankType_code
            }
        ]
    },

    FieldGroup #WizardGeneralInformation1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: BankID
            },
            {
                $Type: 'UI.DataField',
                Value: BankName
            },
            {
                $Type: 'UI.DataField',
                Value: Description
            },
            {
                $Type: 'UI.DataField',
                Value: BankID
            }
        ]
    },

    FieldGroup #GeneralInformation2      : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: CEOName
            },
            {
                $Type: 'UI.DataField',
                Value: Headquarters
            },
            {
                $Type: 'UI.DataField',
                Value: RBIApproved
            },
            {
                $Type: 'UI.DataField',
                Value: FoundedDate
            },
            {
                $Type: 'UI.DataField',
                Value: IsActive
            }
        ]
    },

    FieldGroup #WizardGeneralInformation2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: CEOName
            },
            {
                $Type: 'UI.DataField',
                Value: Headquarters
            },
            {
                $Type: 'UI.DataField',
                Value: RBIApproved
            },
            {
                $Type: 'UI.DataField',
                Value: FoundedDate
            },
            {
                $Type: 'UI.DataField',
                Value: IsActive
            }
        ]
    },


    FieldGroup #GeneralInformation3      : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: NoOfEmployees
            },
            {
                $Type: 'UI.DataField',
                Value: CustomerCare
            },
            {
                $Type: 'UI.DataField',
                Value: StockName
            },
            {
                $Type: 'UI.DataField',
                Value: StockPrice
            },
            {
                $Type: 'UI.DataField',
                Value: CurrencyCode_code
            },
            {
                $Type: 'UI.DataField',
                Value: Revenue
            },
            {
                $Type: 'UI.DataField',
                Value: Website
            }
        ]
    },

    FieldGroup #WizardGeneralInformation3: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: NoOfEmployees
            },
            {
                $Type: 'UI.DataField',
                Value: CustomerCare
            },
            {
                $Type: 'UI.DataField',
                Value: StockName
            },
            {
                $Type: 'UI.DataField',
                Value: StockPrice
            },
            {
                $Type: 'UI.DataField',
                Value: CurrencyCode_code
            },
            {
                $Type: 'UI.DataField',
                Value: Revenue
            },
            {
                $Type: 'UI.DataField',
                Value: Website
            }
        ]
    },

    FieldGroup #AdminInfomation          : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdBy
            },
            {
                $Type: 'UI.DataField',
                Value: createdAt
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt
            }
        ]
    },

    HeaderInfo                           : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Bank Item',
        TypeNamePlural: 'Banks Items',
        TypeImageUrl  : 'sap-icon://alert',
        Title         : {
            $Type: 'UI.DataField',
            Value: BankID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: BankName
        }
    },

    Facets                               : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneralInformation1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneralInformation2',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneralInformation3',
        }
    ],

}) {
    BankID        @(title: '{i18n>BANK_ID}');
    BankName      @(title: '{i18n>BANK_NAME}');
    BankType      @(title: '{i18n>BANK_TYPE}');
    Description   @(title: '{i18n>BANK_DESC}');
    Headquarters  @(title: '{i18n>BANK_HQ}');
    IsActive      @(title: '{i18n>BANK_ACTIVE}');
    RBIApproved   @(title: '{i18n>RBI_APPROVED}');
    FoundedDate   @(title: '{i18n>FOUNDED_DATE}');
    CEOName       @(title: '{i18n>BANK_CEO_NAME}');
    NoOfEmployees @(title: '{i18n>NO_OF_EMPLOYEES}');
    CustomerCare  @(title: '{i18n>CUSTOMER_CARE}');
    StockName     @(title: '{i18n>STOCK_NAME}');
    StockPrice    @(title: '{i18n>STOCK_PRICE}');
    Revenue       @(title: '{i18n>BANK_REVENUE}');
    Website       @(title: '{i18n>WEBSITE}')
};
