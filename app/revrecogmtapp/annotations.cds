using revrecog_srv as service from '../../srv/mtsrv';

annotate service.POCs with @(
    UI.SelectionFields                      : [
        companycode,
        project,
        building,
        land
    ],
    UI.FieldGroup #POCsGroup                : {
        $Type: 'UI.FieldGroupType',
        Label: 'P.O.C. Details',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: companycode,
            },
            {
                $Type: 'UI.DataField',
                Value: project,
            },
            {
                $Type: 'UI.DataField',
                Value: building,
            },
            {
                $Type: 'UI.DataField',
                Value: land,
            },
            {
                $Type: 'UI.DataField',
                Value: active,
            },
            {
                $Type: 'UI.DataField',
                Value: poc,
            },
            {
                $Type: 'UI.DataField',
                Value: validfrom,
            },
            {
                $Type: 'UI.DataField',
                Value: validto,
            },
        ],
    },
    UI.Facets                               : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'POCFacet1',
        Label : 'P.O.C.',
        Target: '@UI.FieldGroup#POCsGroup',
    }, ],
    UI.LineItem #POCTab                     : [
        {
            $Type: 'UI.DataField',
            Value: companycode,
        },
        {
            $Type: 'UI.DataField',
            Value: project,
        },
        {
            $Type: 'UI.DataField',
            Value: building,
        },
        {
            $Type: 'UI.DataField',
            Value: land,
        },
        {
            $Type: 'UI.DataField',
            Value: active,
        },
        {
            $Type: 'UI.DataField',
            Value: poc,
        },
        {
            $Type: 'UI.DataField',
            Value: validfrom,
        },
        {
            $Type: 'UI.DataField',
            Value: validto,
        },
    ],
    //For Tab
    UI.SelectionPresentationVariant #POCsTab: {
        //Mandatory = Type, Text, SelectionVariant, PresentationVariant
        $Type              : 'UI.SelectionPresentationVariantType',
        Text               : 'P.O.C.',
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            Text         : 'P.O.C.',
            SelectOptions: [{
                $Type       : 'UI.SelectOptionType',
                PropertyName: companycode,
            // Ranges      : [{}]
            }]
        },
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#POCTab']
        }
    }
);

annotate service.BuyerCompliances with @(
    UI.SelectionFields                                 : [
        companycode,
        project,
        building,
        land
    ],
    UI.FieldGroup #BuyerCompliancesGroup               : {
        $Type: 'UI.FieldGroupType',
        Label: 'Buyer Compliance Details',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: companycode,
            },
            {
                $Type: 'UI.DataField',
                Value: project,
            },
            {
                $Type: 'UI.DataField',
                Value: building,
            },
            {
                $Type: 'UI.DataField',
                Value: land,
            },
            {
                $Type: 'UI.DataField',
                Value: payment,
            },
            {
                $Type: 'UI.DataField',
                Value: document,
            },
            {
                $Type: 'UI.DataField',
                Value: validfrom,
            },
            {
                $Type: 'UI.DataField',
                Value: validto,
            },
        ],
    },
    UI.Facets                                          : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'BCFacet1',
        Label : 'Buyer Compliance',
        Target: '@UI.FieldGroup#BuyerCompliancesGroup',
    }, ],
    UI.LineItem #BuyerCompliancesTab                   : [
        {
            $Type: 'UI.DataField',
            Value: companycode,
        },
        {
            $Type: 'UI.DataField',
            Value: project,
        },
        {
            $Type: 'UI.DataField',
            Value: building,
        },
        {
            $Type: 'UI.DataField',
            Value: land,
        },
        {
            $Type: 'UI.DataField',
            Value: payment,
        },
        {
            $Type: 'UI.DataField',
            Value: document,
        },
        {
            $Type: 'UI.DataField',
            Value: validfrom,
        },
        {
            $Type: 'UI.DataField',
            Value: validto,
        },
    ],
    //For Tab
    UI.SelectionPresentationVariant #BuyerComplianceTab: {
        //Mandatory = Type, Text, SelectionVariant, PresentationVariant
        $Type              : 'UI.SelectionPresentationVariantType',
        Text               : 'Buyer Compliance',
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            Text         : 'Buyer Compliance',
            SelectOptions: [{
                $Type       : 'UI.SelectOptionType',
                PropertyName: companycode,
            // Ranges      : [{
            //     $Type : 'UI.SelectionRangeType',
            //     Sign  : #I,
            //     Option: #NE,
            //     Low   : ''
            // }]
            }]
        },
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#BuyerCompliancesTab']
        }
    }
);
