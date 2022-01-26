var countryCode = "";
var UserID = $.context.response.CanID;

if ($.context.response.country=="ACE_USA") {

        countryCode = "USA";
}

else if  ($.context.response.country=="ACE_IND"){

        countryCode = "IND";
}
$.context.UserId = "'"+UserID+"'"
$.context.response.countryCode = countryCode