  var EquipmentInfo = $.context.equipment.EquipmentsInfo.Result[0].EquipmentList;
  var empData = $.context.CInfo.d;
  var EquipInfo = [];
  var equip = {};
  if (EquipmentInfo.length > 0) {
  	for (var i = 0; i < EquipmentInfo.length; i++) {
  		equip = EquipmentInfo[i];
  		equip.ProdDesc = equip.ProductDesc;
  		equip.Status = "New";
        equip.ExpectedDate = "";
        equip.RequestedLoc = empData.location;
  		EquipInfo.push(equip);
  	}
  }else {
  	equip = EquipmentInfo;
  	equip.ProdDesc = equip.ProductDesc;
  	equip.Status = "New";
  	equip.ExpectedDate = "";
    equip.RequestedLoc = empData.location;
  	EquipInfo.push(equip);
  }
  $.context.equipment.EquipmentsInfo = EquipInfo;


