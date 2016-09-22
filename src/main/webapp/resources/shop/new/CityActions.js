function trimStr(A) {
	return A.replace(/(^\s*)|(\s*$)/g, "")
}
function getCookie(D) {
	var B = document.cookie.split(";");
	for (var A = 0, E = B.length; A < E; A++) {
		if (B[A]) {
			var G = B[A].split("=");
			var F = trimStr(G[0]);
			if (D == "nikeName" && F == D) {
				var C = decodeURI(G[1]);
				return unescape(C)
			}
			if (F == trimStr(D)) {
				return decodeURI(G[1])
			}
		}
	}
	return ""
}
var WC_cityId = getCookie("WC_cityId");
var WC_cityName = getCookie("WC_cityName");
$(document).ready(
		function() {
			tanchucontent();
			if (WC_cityId == null || WC_cityId == ""
					|| WC_cityId == "undefined" || WC_cityName == null
					|| WC_cityName == "" || WC_cityName == "undefined") {
				$.ajax({
					url : GLAjaxLoacateCityURL,
					success : function(B) {
						var C = document.cookie.split(";");
						for (var A = 0, D = C.length; A < D; A++) {
							if (C[A]) {
								var F = C[A].split("=");
								var E = F[0].replace(/(^\s*)|(\s*$)/g, "");
								if (E == "WC_cityId") {
									WC_cityId = decodeURI(F[1])
								} else {
									if (E == "WC_cityName") {
										WC_cityName = decodeURI(F[1])
									}
								}
							}
						}
						$("#bigpobbox_city_a").html(WC_cityName + "<b></b>")
					},
					dataType : "json",
					type : "POST"
				})
			}
		});
function changeCity(B, A) {
	var C = true;
	$
			.ajax({
				async : false,
				url : GLAjaxChangeCityURL,
				data : {
					cityId : B,
					cityName : A,
					curPage : document.location.href
				},
				success : function(F) {
					if (F.storeId != null && F.storeId != ""
							&& F.storeId != "undefined"
							&& F.redirectPage != null && F.redirectPage != ""
							&& F.redirectPage != "undefined"
							&& F.storeId != WCParamJS.storeId) {
						location.href = F.redirectPage.replaceAll("&amp;", "&");
						C = true
					} else {
						var G = document.cookie.split(";");
						for (var D = 0, H = G.length; D < H; D++) {
							if (G[D]) {
								var J = G[D].split("=");
								var I = J[0].replace(/(^\s*)|(\s*$)/g, "");
								if (I == "WC_cityId") {
									WC_cityId = decodeURI(J[1])
								} else {
									if (I == "WC_cityName") {
										WC_cityName = decodeURI(J[1])
									}
								}
							}
						}
						$("#bigpobbox_city_a").html(WC_cityName + "<b></b>");
						$("#city-close-reveal-modal").click();
						if ($("#tuanPriceTag").length > 0
								&& $("#tuanSkuId").length > 0) {
							if (WC_cityId != null && WC_cityId != ""
									&& WC_cityId != "undefined") {
								$
										.ajax({
											url : "checkInvStatus?cityId="
													+ WC_cityId
													+ "&catentryId="
													+ $("#tuanSkuId").val(),
											success : function(K) {
												if (K.status != "1") {
													$("#tuanPriceTag")
															.attr("class",
																	"pricetag pricetagDisbale");
													$("#tuanPriceTag")
															.attr("onclick",
																	"javascript:void(0);")
												} else {
													$("#tuanPriceTag")
															.attr("class",
																	"pricetag");
													$("#tuanPriceTag")
															.attr(
																	"onclick",
																	"addShoppingChart("
																			+ $(
																					"#tuanSkuId")
																					.val()
																			+ ",'buy')")
												}
											},
											dataType : "json",
											type : "POST"
										})
							}
						}
						if ($("#showInventory").length > 0) {
							$("#showCity").html(WC_cityName);
							getInventoryByCityId(WC_cityId)
						}
						if ($("#idDoReloadCatentryList").val() == "reload") {
							try {
								CatentryListJS.changeInventory(WC_cityId)
							} catch (E) {
							}
						}
						C = false
					}
				},
				dataType : "json",
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "POST"
			});
	return C
}
String.prototype.replaceAll = function(B, A, C) {
	if (!RegExp.prototype.isPrototypeOf(B)) {
		return this.replace(new RegExp(B, (C ? "gi" : "g")), A)
	} else {
		return this.replace(B, A)
	}
};