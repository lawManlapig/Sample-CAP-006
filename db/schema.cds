namespace rr.mainttab;

//Reusables
using {managed} from '@sap/cds/common';

//Aspects
aspect Keyfields {
    companycode : String(4)  @(title: '{i18n>Cocd}');
    project     : String(10) @(title: '{i18n>Proj}');
    building    : String(10) @(title: '{i18n>Bldg}');
    land        : String(10) @(title: '{i18n>Land}');
}

aspect ValidityDates {
    validfrom : Date @(title: '{i18n>ValidFrom}');
    validto   : Date @(title: '{i18n>ValidTo}');
}

//Maintenance Table : Entities
entity POCs : managed, Keyfields, ValidityDates {
    key id     : UUID;
        active : String(10) @(title: '{i18n>Actv}');
        poc    : String(10) @(title: '{i18n>Poc}');
}

//Maintenance Table : Entitites
entity BuyerCompliances : Keyfields, ValidityDates {
    key id       : UUID;
        payment  : String(10) @(title: '{i18n>Pymt}');
        document : String(10) @(title: '{i18n>Doct}');
}