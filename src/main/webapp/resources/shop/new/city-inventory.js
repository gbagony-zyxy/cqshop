function getCityOptionsByProvinceId(A) {
	return citysJson[A]
}
function getProvinceIdByCityId(A) {
	return idsJson[A]
}
$(document).ready(
		function() {
			$("#selectProvince").append(provinceOption);
			$("#showCity").html(WC_cityName);
			var B = getProvinceIdByCityId(WC_cityId);
			$("#selectProvince").find("option[value=" + B + "]").attr(
					"selected", true);
			var A = getCityOptionsByProvinceId(B);
			$("#citySelect").append(A);
			$("#citySelect").find("option[value=" + WC_cityId + "]").attr(
					"selected", true)
		});
function resetCity(A) {
	var C = $("#" + A).val();
	var B = getCityOptionsByProvinceId(C);
	$("#citySelect").html("");
	B = "<option value='-1'>-请选择-</option>" + B;
	$("#citySelect").append(B)
}
function changeCityOrStore(B) {
	var C = $("#" + B + " option:selected").val();
	if (C != -1) {
		var A = $("#" + B + " option:selected").text();
		getInventoryByCityId(C);
		changeCity(C, A);
		$("#showCity").html(A);
		$("#changeAddress").hide()
	} else {
		alert("请选择城市!");
		return false
	}
}
function getInventoryByCityId(D) {
	var A = WCParamJS.storeId;
	var B = WCParamJS.langId;
	var C = WCParamJS.catalogId;
	var E = '<c:out  value="${env_currencyCode}" />';
	$.ajax({
		type : "POST",
		url : "getProductDetailsByProductId",
		data : {
			langId : B,
			currency : E,
			storeId : A,
			catalogId : C,
			cityInventory : D,
			nowCity : D,
			productId : productId,
			responseFormat : "json"
		},
		dataType : "json",
		success : function(I) {
			var F = I.catalogEntryView[0].xcity;
			var G = I.catalogEntryView[0].xbuyable;
			var H = I.catalogEntryView[0].sKUs[0].uniqueID;
			if (F != 1) {
				$("#showInventory").html("无货")
			} else {
				$("#showInventory").html("有货")
			}
			$("#BUYABLE_" + H).val(G)
		}
	})
};