function zoom_image(A) {
	if (A.hasClass("photoBox")) {
		var B = A.find(".loadingBox");
		B.show();
		var C = A.next().find("img");
		if (C.attr("src") == "about:blank") {
			C.attr("src", A.find("img").attr("src").replace("m.", "l."));
			C.load(function() {
				A.hide();
				A.next().show()
			})
		} else {
			A.hide();
			A.next().show()
		}
	} else {
		A.hide();
		A.prev().show();
		A.prev().find(".loadingBox").hide()
	}
}
$(document).ready(function() {
	$(".shareImg li").click(function() {
		var A = $(this).index();
		if ($(this).find("span").css("display") == "none") {
			$(this).parent().find("li").each(function() {
				if ($(this).index() != A) {
					$(this).find(".photoBox").css("display", "inline-block");
					$(this).find(".photoArea").css("display", "none")
				}
			})
		}
	})
});
$(function() {
	$(".ProTabTitle li").click(
			function() {
				$(this).addClass("hit").siblings().removeClass("hit");
				$(".ProTabCon>div:eq(" + $(this).index() + ")").show()
						.siblings().hide()
			});
	$(".jqzoom").jqzoom({
		title : false,
		zoomWidth : 400,
		zoomHeight : 400,
		zoomType : "standard",
		lens : true,
		preloadImages : false,
		alwaysOn : false
	});
	var B = $("#spec-list>ul");
	var A = B.find("li").width();
	$(".SmallNext").click(function() {
		if (!B.is(":animated")) {
			B.animate({
				left : "-" + A + "px"
			}, 0, function() {
				B.css({
					left : 0
				}).find("li:first").appendTo(B)
			})
		}
		return false
	});
	$(".SmallPrev").click(function() {
		if (!B.is(":animated")) {
			B.css({
				left : "-" + A + "px"
			}).find("li:last").prependTo(B);
			B.animate({
				left : "0"
			}, 0, function() {
			})
		}
		return false
	})
});
function changeQuantity(A) {
	var B = 1;
	var C = $("#buyNum").val();
	if (A == "i") {
		B = parseInt(C) + 1
	} else {
		if (A == "d") {
			B = parseInt(C);
			if (B == 1) {
				B = 1
			} else {
				B = parseInt(C) - 1
			}
		} else {
			if (!(/^(\+|-)?\d+$/.test(C)) || C <= 0) {
				$("#errorMsg").html("购买数量必须是正整数!");
				$(".topbackdiv").show();
				$("#addFailed").show();
				B = 1
			} else {
				B = parseInt(C)
			}
		}
	}
	if (B == 1) {
		$("#reduceNum").removeClass().addClass("reduce reduceDisable")
	} else {
		$("#reduceNum").removeClass().addClass("reduce")
	}
	$("#buyNum").val(B)
}
$(function() {
	$("#addressSel .peisong").mouseover(function() {
		$("#changeAddress").show();
		$("#addressSel").addClass("hover")
	});
	$("#addressSel").mouseleave(function() {
		$("#changeAddress").hide();
		$("#addressSel").removeClass("hover")
	})
});
var ckIds = new Array();
$(function() {
	var E = $("#skuId").val();
	var A = $("#productId").val();
	var C = $("#ProductInfoPrice_" + A).val();
	C = C == null ? "0" : C;
	var D = parseFloat(C);
	if (D == 0) {
		$("#totalPrice").html("价格待定")
	} else {
		$("#totalPrice").html("&yen;" + D.toFixed(2))
	}
	ckIds.push(E);
	$("input[name ='accessoriesStatus']:checkbox").bind("click", function() {
		D = parseFloat(C);
		var F = 0;
		$("input[name='accessoriesStatus']:checked").each(function() {
			var I = $(this).attr("parent");
			var G = $("#ProductInfoPrice_" + I).val();
			if (G == null || G == "") {
				G = 0
			}
			var H = parseFloat(G);
			D = D + H;
			F++
		});
		$("#chooseSize").html(F);
		if (D == 0) {
			$("#totalPrice").html("价格待定")
		} else {
			$("#totalPrice").html("&yen;" + D.toFixed(2))
		}
	});
	$("#addCartBtn").bind("click", function() {
		ckIds = new Array();
		ckIds.push(E);
		$("input[name='accessoriesStatus']:checked").each(function() {
			var F = $(this).val();
			ckIds.push(F)
		});
		addAccessoriesToShoppingChart(ckIds)
	});
	var B = $("#totalCount").val();
	if (B == null || typeof (B) == "undefined") {
		B = 0
	}
	$("#commentCount").html("(" + B + ")")
});
function addAccessoriesToShoppingChart(A) {
	var B = 1;
	var C = $("#hubStoreId").val();
	$("#addNum").html(parseInt($("#chooseSize").html()) + 1);
	$("#totalBuyAmount").html($("#totalPrice").html().replace("&yen;", ""));
	var D = {};
	D.calculationUsage = "-1,-2,-5,-6,-7";
	if (A.length == 1) {
		D.catEntryId = A[0];
		D.quantity = B
	} else {
		if (A.length == 2) {
			D.catEntryId_1 = A[0];
			D.catEntryId_2 = A[1];
			D.quantity_1 = B;
			D.quantity_2 = B
		} else {
			if (A.length == 3) {
				D.catEntryId_1 = A[0];
				D.catEntryId_2 = A[1];
				D.catEntryId_3 = A[2];
				D.quantity_1 = B;
				D.quantity_2 = B;
				D.quantity_3 = B
			} else {
				if (A.length == 4) {
					D.catEntryId_1 = A[0];
					D.catEntryId_2 = A[1];
					D.catEntryId_3 = A[2];
					D.catEntryId_4 = A[3];
					D.quantity_1 = B;
					D.quantity_2 = B;
					D.quantity_3 = B;
					D.quantity_4 = B
				}
			}
		}
	}
	D.inventoryValidation = "true";
	D.langId = WCParamJS.langId;
	D.comment = WC_cityId;
	D.orderId = ".";
	D.requesttype = "ajax";
	D.storeId = WCParamJS.storeId;
	D.cmdStoreId = C;
	D.originalStoreId = WCParamJS.storeId;
	$.ajax({
		type : "POST",
		url : "AjaxOrderChangeServiceItemAdd",
		data : D,
		dataType : "json",
		success : function(H, E) {
			var F = H.errorMessage;
			var G = H.orderItemId;
			if (G == null || G == undefined) {
				if (H.errorMessage && H.errorMessageKey != null) {
					$("#errorMsg").html(F);
					$(".topbackdiv").show();
					$("#addFailed").show()
				} else {
					$("#errorMsg").html("加入购物车失败!");
					$(".topbackdiv").show();
					$("#addFailed").show()
				}
			} else {
				if (F == null || F == undefined) {
					$(".topbackdiv").show();
					$("#addSuccess").show()
				} else {
					$("#errorMsg").html(F);
					$(".topbackdiv").show();
					$("#addFailed").show()
				}
			}
		}
	})
}
var shareStep = "";
$(function() {
	if (userType != "G") {
		$("#shareDiv").find("a").click(function() {
			shareStep = $(this).attr("class");
			shareSendPoints()
		})
	}
});
function shareSendPoints() {
	var A = $("#productId").val();
	var B = "分享商品奖励";
	$.ajax({
		type : "POST",
		url : "GLAjaxShareSendPointsCmd",
		data : {
			productId : A,
			shareStep : shareStep,
			description : B
		},
		dataType : "json",
		success : function(D) {
			var C = D.points;
			alert("恭喜你获得" + C + "积分!")
		}
	})
};