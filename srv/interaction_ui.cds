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
        TypeName      : 'Interaction Items',
        TypeNamePlural: 'Interaction Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: ID
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: BPCOUNTRY_code
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
    Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }]
}
) {
    ID        @(title: '{i18n>ID}');
    LOG_DATE  @(title: '{i18n>LOG_DATE}');
    PARTNER   @(title: '{i18n>PARTNER}');
    BPCOUNTRY @(title: '{i18n>BPCOUNTRY}');
};
