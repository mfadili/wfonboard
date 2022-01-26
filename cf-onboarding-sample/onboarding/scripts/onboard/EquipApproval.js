  var EquipmentInfo = $.context.equipment.EquipmentsInfo;
  var total = 0;
  var EquipInfo = [];
  var equip = {};
  if (EquipmentInfo.length > 0) {
  	for (var i = 0; i < EquipmentInfo.length; i++) {
  		equip = EquipmentInfo[i];
  		total = total + equip.Price;
  		EquipInfo.push(equip);
  	}
  }else {
  	equip = EquipmentInfo;
  	total = total + equip.Price;
  	EquipInfo.push(equip);
  }
 $.context.equipment.total = total;


   var Vocabulary = [{
  	       "TotalEquipmentAmount": {
                "TotalAmount": total
    }
   }];
    var rulesPayloadtotal = {
    	"RuleServiceId": "d6cd271f8a874c178c2a70131f9441e4",
    	//"RuleServiceVersion": "000002000007000000",
    	"Vocabulary": Vocabulary
    };
  $.context.rulesPayloadtotal = rulesPayloadtotal;