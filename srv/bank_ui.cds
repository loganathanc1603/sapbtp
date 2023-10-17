using BankService as service from './bank_srv';

annotate BankService.Banks with @odata.draft.enabled;
annotate BankService.Banks with @Common.SemanticKey: [BankUUID];

annotate service.Banks with @(UI: {

    LineItem                       : [
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

    SelectionFields                : [
        BankName,
        FoundedDate,
        CEOName,
        CurrencyCode_code,
        IsActive
    ],

    FieldGroup #GeneralInformation1: {
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
                Value: BankType.descr
            },
            {
                $Type: 'UI.DataField',
                Value: BankID
            }
        ]
    },

    FieldGroup #GeneralInformation2: {
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

    FieldGroup #GeneralInformation3: {
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
                Value: CurrencyCode.code
            }
        ]
    },

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
};
