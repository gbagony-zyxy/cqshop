$(function() {
	setInputOnlyNum("onlyNumInput")
});
function deleteFromCart(A) {
	if (confirm("您确定要删除吗?")) {
		openload();
		var C = getCookie("WC_cityId");
		var B = $(".needStoreId").val();
		$.ajax({
			type : "POST",
			url : "AjaxOrderChangeServiceItemDelete",
			data : {
				storeId : storeId,
				catalogId : catalogId,
				langId : langId,
				calculationUsage : "-1,-2,-5,-6,-7",
				orderId : ".",
				requesttype : "ajax",
				orderItemId : A,
				originalStoreId : storeId,
				cmdStoreId : B,
				comment : C
			},
			dataType : "text",
			success : function(D) {
				refreshShopCart()
			}
		})
	}
}
function deleteAllFromCart() {
	openload();
	var C = getCookie("WC_cityId");
	var B = $(".needStoreId").val();
	var A = "AjaxOrderChangeServiceItemDelete?";
	$.each($("input.orderItemIds"), function(D, E) {
		A = A + "orderItemId_" + D + "=" + E.value + "&"
	});
	$.ajax({
		type : "POST",
		url : A,
		data : {
			storeId : storeId,
			catalogId : catalogId,
			langId : langId,
			calculationUsage : "-1,-2,-5,-6,-7",
			orderId : ".",
			requesttype : "ajax",
			originalStoreId : storeId,
			cmdStoreId : B,
			comment : C
		},
		dataType : "text",
		success : function(D) {
			refreshShopCart()
		}
	})
}
function changeItem(F, E, D, A) {
	if (F != "") {
		openload()
	}
	var G = getCookie("WC_cityId");
	var H = $(".needStoreId").val();
	var C = parseInt($("#qty_" + E).val());
	if (C != 0 || F != "c") {
		var B = C;
		if (F == "i") {
			B = C + 1
		} else {
			if (F == "c") {
				B = C - 1;
				if (B < 0) {
					B = 0
				}
			}
		}
		if (F == "") {
			setTimeout(function() {
				var I = parseInt($("#qty_" + E).val());
				if (I == C) {
					if (I < 1) {
						if (confirm("您确定要删除吗?")) {
							openload();
							$.ajax({
								type : "POST",
								url : "AjaxOrderChangeServiceItemUpdate",
								data : {
									storeId : storeId,
									catalogId : catalogId,
									langId : langId,
									calculationUsage : "-1,-2,-5,-6,-7",
									inventoryValidation : "true",
									orderId : ".",
									orderItemId_1 : D,
									quantity_1 : B,
									originalStoreId : storeId,
									cmdStoreId : H,
									comment : G,
									requesttype : "ajax",
									async : false
								},
								dataType : "json",
								success : function(K) {
									var J = K.errorMessage;
									if (J != null && J != "undefiend") {
										closeload();
										showPrompt("库存不足，请修改数量后重试",
												"refreshShopCart")
									} else {
										refreshShopCart()
									}
								}
							})
						} else {
							$("#qty_" + E).val(A)
						}
					} else {
						openload();
						$.ajax({
							type : "POST",
							url : "AjaxOrderChangeServiceItemUpdate",
							data : {
								storeId : storeId,
								catalogId : catalogId,
								langId : langId,
								calculationUsage : "-1,-2,-5,-6,-7",
								inventoryValidation : "true",
								orderId : ".",
								orderItemId_1 : D,
								quantity_1 : B,
								originalStoreId : storeId,
								cmdStoreId : H,
								comment : G,
								requesttype : "ajax",
								async : false
							},
							dataType : "json",
							success : function(K) {
								var J = K.errorMessage;
								if (J != null && J != "undefiend") {
									closeload();
									showPrompt("库存不足，请修改数量后重试",
											"refreshShopCart")
								} else {
									refreshShopCart()
								}
							}
						})
					}
				}
			}, 1500)
		} else {
			if (F == "c") {
				if (B == 0) {
					if (confirm("您确定要删除吗?")) {
						$.ajax({
							type : "POST",
							url : "AjaxOrderChangeServiceItemUpdate",
							data : {
								storeId : storeId,
								catalogId : catalogId,
								langId : langId,
								calculationUsage : "-1,-2,-5,-6,-7",
								inventoryValidation : "true",
								orderId : ".",
								orderItemId_1 : D,
								quantity_1 : B,
								originalStoreId : storeId,
								cmdStoreId : H,
								comment : G,
								requesttype : "ajax",
								async : false
							},
							dataType : "json",
							success : function(J) {
								var I = J.errorMessage;
								if (I != null && I != "undefiend") {
									closeload();
									showPrompt("库存不足，请修改数量后重试",
											"refreshShopCart")
								} else {
									refreshShopCart()
								}
							}
						})
					} else {
						closeload()
					}
				} else {
					$.ajax({
						type : "POST",
						url : "AjaxOrderChangeServiceItemUpdate",
						data : {
							storeId : storeId,
							catalogId : catalogId,
							langId : langId,
							calculationUsage : "-1,-2,-5,-6,-7",
							inventoryValidation : "true",
							orderId : ".",
							orderItemId_1 : D,
							quantity_1 : B,
							originalStoreId : storeId,
							cmdStoreId : H,
							comment : G,
							requesttype : "ajax",
							async : false
						},
						dataType : "json",
						success : function(J) {
							var I = J.errorMessage;
							if (I != null && I != "undefiend") {
								closeload();
								showPrompt("库存不足，请修改数量后重试", "refreshShopCart")
							} else {
								refreshShopCart()
							}
						}
					})
				}
			} else {
				if (F == "i") {
					$.ajax({
						type : "POST",
						url : "AjaxOrderChangeServiceItemUpdate",
						data : {
							storeId : storeId,
							catalogId : catalogId,
							langId : langId,
							calculationUsage : "-1,-2,-5,-6,-7",
							inventoryValidation : "true",
							orderId : ".",
							orderItemId_1 : D,
							quantity_1 : B,
							originalStoreId : storeId,
							cmdStoreId : H,
							comment : G,
							requesttype : "ajax",
							async : false
						},
						dataType : "json",
						success : function(J) {
							var I = J.errorMessage;
							if (I != null && I != "undefiend") {
								closeload();
								showPrompt("库存不足，请修改数量后重试", "refreshShopCart")
							} else {
								refreshShopCart()
							}
						}
					})
				}
			}
		}
	}
}
function refreshShopCart() {
	var A = $(".needStoreId").val();
	$.ajax({
		type : "POST",
		url : "ShopCartDisplayView",
		data : {
			storeId : storeId,
			catalogId : catalogId,
			langId : langId,
			originalStoreId : storeId,
			cmdStoreId : A,
			async : false
		},
		dataType : "text",
		success : function(E) {
			$(".ShopCartDisplay").empty();
			$(".ShopCartDisplay").html(E);
			var C = getProvinceIdByCityId(WC_cityId);
			$("#selectProvince").find("option[value=" + C + "]").attr(
					"selected", true);
			var B = getCityOptionsByProvinceId(C);
			$("#citySelect").append(B);
			$("#citySelect").find("option[value=" + WC_cityId + "]").attr(
					"selected", true);
			var D = getProvinceNameByProvinceId(C);
			if (D.length > 3) {
				D = D.substring(0, 3)
			}
			$("#cartProvinceSelect").text(D);
			closeload()
		}
	})
}
function ajaxGetNewOrder() {
	openload();
	var B = storeId;
	var F = $(".needStoreId").val();
	var D = $("#allcheck").attr("allcheck");
	var E = getCookie("WC_cityId");
	if (D == "allcheck") {
		$.ajax({
			url : "GLOrderCalculateCmd",
			data : {
				orderId : oldOrderId,
				storeId : B,
				catalogId : "10001",
				originalStoreId : B,
				cmdStoreId : F,
				cityId : E
			},
			type : "POST",
			dataType : "json",
			success : function(G) {
				if (G.message = "success") {
					shippingcharge(oldOrderId, G.StoreId, F)
				} else {
					closeload();
					showPrompt("出异常了,请稍后重试", "")
				}
			}
		})
	} else {
		var C = "";
		$("ol li.cartCheckbox input[type='checkbox']:checked").each(function() {
			C += $(this).val() + ","
		});
		C = C.substring(0, C.length - 1);
		if (C == "") {
			closeload();
			showPrompt("请选择需要购买的商品", "");
			return
		} else {
			var A = Number($("#ordertotalprice").text());
			if (A == 0) {
				closeload();
				showPrompt("请选择需要购买的商品", "");
				return
			}
		}
		$.ajax({
			type : "POST",
			url : "InsertSameOrderItemsCmd",
			data : {
				orderItemIds : C,
				catalogId : "10001",
				storeId : B,
				originalStoreId : B,
				cmdStoreId : F,
				cityId : E
			},
			dataType : "json",
			success : function(H) {
				var G = H.orderId;
				if (G != "") {
					shippingcharge(G, H.StoreId, F)
				} else {
					closeload();
					if (H.status == 0) {
						showPrompt(H.message, "")
					} else {
						showPrompt("出异常了,请稍后重试", "")
					}
				}
			}
		})
	}
}
function shippingcharge(B, A, C) {
	$
			.ajax({
				url : "AjaxOrderChangeServiceShipInfoUpdate",
				data : {
					catalogId : "10001",
					storeId : A,
					orderId : B,
					originalStoreId : A,
					cmdStoreId : C,
					calculationUsage : "-1,-2,-5,-6,-7"
				},
				type : "POST",
				dataType : "json",
				success : function(E) {
					var D = E.errorMessage;
					if (D != null && D != "undefiend") {
						closeload();
						showPrompt("出异常了,请稍后重试", "")
					} else {
						window.location.href = "OrderShippingBillingView?catalogId=10001&langId=-7&storeId="
								+ A
								+ "&oId="
								+ B
								+ "&originalStoreId="
								+ A
								+ "&cmdStoreId=" + C
					}
				}
			})
}
function showPrompt(B, A) {
	$(".topbackdiv").show();
	$(".topBox").show();
	$(".promptContent").text(B);
	if (A == "refreshShopCart") {
		$(".popCloseBtn").click(function() {
			closePrompt("refreshShopCart")
		})
	}
	if (A == "") {
		setTimeout(function() {
			closePrompt(A)
		}, 3000)
	}
}
function closePrompt(A) {
	$(".topbackdiv").hide();
	$(".topBox").hide();
	if (A == "refreshShopCart") {
		refreshShopCart()
	}
}
function openload() {
	$(".loaddivback").show();
	$(".loaddivinfo").show()
}
function closeload() {
	$(".loaddivback").hide();
	$(".loaddivinfo").hide()
};