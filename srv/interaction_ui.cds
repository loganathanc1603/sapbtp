using CatalogService as service from './interaction_srv';

annotate service.Interactions_Header with @(UI: {
    LineItem                   : [
        {
            $Type: 'UI.DataField',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER,
        },
        {
            $Type: 'UI.DataField',
            Value: LOG_DATE,
        },
        {
            $Type: 'UI.DataField',
            Value: BPCOUNTRY_code,
        },
    ],
    SelectionFields            : [
        PARTNER,
        LOG_DATE,
        BPCOUNTRY_code
    ],
    HeaderInfo                 : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>HEADER_TITLE}',
        TypeNamePlural: '{i18n>HEADER_TITLE}',
        Title         : {
            $Type: 'UI.DataField',
            Value: ID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: PARTNER
        }
    },
    FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Value: PARTNER,
            },
            {
                $Type: 'UI.DataField',
                Value: LOG_DATE,
            },
            {
                $Type: 'UI.DataField',
                Value: BPCOUNTRY_code,
            }
        ]
    },
    Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : '{i18n>GENERAL_INFORMATION}',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'InteractionItemsID',
            Label : '{i18n>INTERACTION_ITEMS}',
            Target: 'ITEMS/@UI.LineItem'
        }
    ]
}) {
    ID        @(title: '{i18n>ID}');
    LOG_DATE  @(title: '{i18n>LOG_DATE}');
    PARTNER   @(title: '{i18n>PARTNER}');
    BPCOUNTRY @(title: '{i18n>BPCOUNTRY}');
};

annotate service.Interactions_Items with @(UI: {
    HeaderInfo             : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>INTERACTION_ITEMS}',
        TypeNamePlural: '{i18n>INTERACTION_ITEMS}',
        Title         : {
            $Type: 'UI.DataField',
            Value: INTHeader_ID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: LANGU
        }
    },
    LineItem               : [
        {Value: INTHeader_ID},
        {Value: TEXT_ID},
        {Value: LANGU},
        {Value: LOGTEXT}
    ],
    FieldGroup #ItemsGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: TEXT_ID
            },
            {
                $Type: 'UI.DataField',
                Value: LANGU
            },
            {
                $Type: 'UI.DataField',
                Value: LOGTEXT
            }
        ]
    },
    Facets                 : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#ItemsGroup1',
    }]
}) {
    INTHeader @(title: '{i18n>ID}');
    TEXT_ID @(title: '{i18n>TEXT_ID}');
    LANGU   @(title: '{i18n>LANGU}');
    LOGTEXT @(title: '{i18n>LOGTEXT}')
};
