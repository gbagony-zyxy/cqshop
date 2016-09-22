function addShoppingChart(F, B) {
	
	window.location.href="/cqshop/cart/list.jhtml";
	/*
	openload();
	var H = 1;
	if (B == "add") {
		H = $("#buyNum").val() == null ? H : $("#buyNum").val()
	} else {
		if (B == "buy") {
			H = $("#buyNum").val() == null ? H : $("#buyNum").val()
		}
	}
	var I = $("#hubStoreId").val();
	$("#addNum").html(H);
	var C = parseInt(H);
	var E = $("#productId").val();
	var G = $("#BUYABLE_" + F).val();
	if (G == null || typeof (G) == "undefined") {
	} else {
		if (G != "1") {
			closeload();
			$("#errorMsg").html("该商品暂不能购买!");
			$(".topbackdiv").show();
			$("#addFailed").show();
			return
		}
	}
	var A = parseFloat($("#ProductInfoPrice_" + E).val());
	var D = A * C;
	$("#totalBuyAmount").html("&yen;" + D.toFixed(2));
	$
			.ajax({
				type : "POST",
				url : "AjaxOrderChangeServiceItemAdd",
				data : {
					calculationUsage : "-1,-2,-5,-6,-7",
					catEntryId : F,
					inventoryValidation : "true",
					langId : WCParamJS.langId,
					comment : WC_cityId,
					orderId : ".",
					quantity : H,
					requesttype : "ajax",
					storeId : WCParamJS.storeId,
					cmdStoreId : I,
					originalStoreId : WCParamJS.storeId
				},
				dataType : "json",
				success : function(M, J) {
					var K = M.errorMessage;
					var L = M.orderItemId;
					if (L == null || L == undefined) {
						if (M.errorMessage && M.errorMessageKey != null) {
							closeload();
							$("#errorMsg").html(K);
							$(".topbackdiv").show();
							$("#addFailed").show()
						} else {
							if (B == "add") {
								closeload();
								$("#errorMsg").html("加入购物车失败!");
								$(".topbackdiv").show();
								$("#addFailed").show()
							} else {
								if (B == "buy") {
									closeload();
									$("#errorMsg").html("立即购买失败!");
									$(".topbackdiv").show();
									$("#addFailed").show()
								}
							}
						}
					} else {
						if (K == null || K == undefined) {
							if (B == "add") {
								closeload();
								$(".topbackdiv").show();
								$("#addSuccess").show()
							} else {
								alert(1221);
								if (B == "buy") {
									
									window.location.href = "AjaxOrderItemDisplayView?catalogId="
											+ WCParamJS.catalogId
											+ "&langId="
											+ WCParamJS.langId
											+ "&storeId="
											+ WCParamJS.storeId
											+ "&cmdStoreId=" + I;
									closeload()
								}
							}
						} else {
							closeload();
							$("#errorMsg").html(K);
							$(".topbackdiv").show();
							$("#addFailed").show()
						}
					}
				}
			})
*/}
function toLogonPage() {
	var C = window.document.body.offsetHeight;
	var B = window.screen.availHeight;
	if (C < B) {
		C = B
	}
	var A = window.document.body.offsetWidth;
	$("#forceLogonBg").css({
		height : C,
		width : A,
		zIndex : 9999
	});
	$("#forceLogonBg").show();
	$("#forceLogonPage").css({
		zIndex : 10000
	});
	$("#forceLogonPage").show()
}
$(function() {
	$("a.closelogoninfo").click(function() {
		$("#forceLogonBg").css({
			zIndex : -9999
		});
		$("#forceLogonPage").css({
			zIndex : -9999
		});
		$("#forceLogonBg").hide();
		$("#forceLogonPage").hide()
	});
	$("a.popCloseBtn").click(function() {
		$(".topbackdiv").hide();
		$(".topBox").hide()
	});
	$("a.popBuyNowBtn").click(function() {
		$(".topbackdiv").hide();
		$(".topBox").hide()
	});
	$("a.pobAddCartBtn").click(
			function() {
				window.location.href = "AjaxOrderItemDisplayView?catalogId="
						+ WCParamJS.catalogId + "&langId=" + WCParamJS.langId
						+ "&storeId=" + WCParamJS.storeId + "&cmdStoreId="
						+ cmdStoreId
			})
});
function openload() {
	$(".loaddivback").show();
	$(".loaddivinfo").show()
}
function closeload() {
	$(".loaddivback").hide();
	$(".loaddivinfo").hide()
};