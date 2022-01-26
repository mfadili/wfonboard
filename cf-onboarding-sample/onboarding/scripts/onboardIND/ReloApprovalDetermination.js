
var reloInfo = $.context.equipment.RelocationInfo; 
var relototal = 0;
var relototalInfo = [];
var relototequip = {};
if (reloInfo.length > 0) {
    for (var i = 0; i < reloInfo.length; i++) {
        relototequip = reloInfo[i];
        relototal = relototal + relototequip.Price; 
        relototalInfo.push(relototequip);
    }
} else {
    relototequip = reloInfo;
    relototal = relototal + relototequip.Price;
    relototalInfo.push(relototequip);
}
$.context.equipment.Relototal = relototal;
var Vocabularyrelo = [{ 
    "TotalEquipmentAmount": {
        "TotalAmount": relototal 
    }
}];
var rulesPayloadrelototal = {
    "RuleServiceId": "42be2d8b5b964875b1df24ab660c7d0a", 
    //"RuleServiceVersion": "000002000007000000", 
    "Vocabulary": Vocabularyrelo
};
$.context.rulesPayloadrelototal = rulesPayloadrelototal;
