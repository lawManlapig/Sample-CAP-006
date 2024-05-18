using rr.mainttab as mt from '../db/schema';

service revrecog_srv {
    entity POCs as projection on mt.POCs;
    entity BuyerCompliances as projection on mt.BuyerCompliances;
}