shoppingActionsJS = {
	langId : "-1",
	storeId : "",
	catalogId : "",
	userType : "",
	baseItemAddedToCart : false,
	entitledItems : [],
	entitledItemJsonObject : null,
	selectedAttributesList : new Object(),
	moreInfoUrl : "",
	isPopup : false,
	displayPriceRange : true,
	itemPriceJsonOject : [],
	allSwatchesArrayList : new Object(),
	skuImageId : "",
	cookieKeyPrefix : "CompareItems_",
	cookieDelimiter : ";",
	maxNumberProductsAllowedToCompare : 4,
	minNumberProductsAllowedToCompare : 2,
	baseCatalogEntryId : 0,
	selectedProducts : new Object(),
	productList : new Object(),
	currencySymbol : "",
	compareReturnName : "",
	searchTerm : "",
	search01 : "'",
	search02 : '"',
	replaceStr01 : /\\\'/g,
	replaceStr02 : /\\\"/g,
	ampersandChar : /&/g,
	ampersandEntityName : "&amp;",
	compareProductIds : new Array,
	categoryIds : {},
	compareProducts : new Array,
	env_TopCategoriesDisplayURL : "",
	storeErrImg : "/wcsstore/GreeStorefrontAssetStore/images/blank.gif",
	productAddedList : new Object(),
	setCompareReturnName : function(A) {
		this.compareReturnName = A
	},
	setSearchTerm : function(A) {
		this.searchTerm = A
	},
	setCommonParameters : function(A, C, D, B, E) {
		this.langId = A;
		this.storeId = C;
		this.catalogId = D;
		this.userType = B;
		this.currencySymbol = E
	},
	setEntitledItems : function(A) {
		this.entitledItems = A
	},
	getCatalogEntryId : function(C) {
		var A = [];
		var B = this.selectedAttributesList[C];
		for (attribute in B) {
			A.push(attribute + "_" + B[attribute])
		}
		return this.resolveSKU(A)
	},
	getCatalogEntryIdforProduct : function(B) {
		var A = [];
		for (attribute in B) {
			A.push(attribute + "_" + B[attribute])
		}
		return this.resolveSKU(A)
	},
	getEntitledItemJsonObject : function() {
		return this.entitledItemJsonObject
	},
	resolveSKU : function(B) {
		var A = "";
		var G = B.length;
		if (this.entitledItems.length == 1) {
			return this.entitledItems[0].catentry_id
		}
		for (x in this.entitledItems) {
			var A = this.entitledItems[x].catentry_id;
			var F = this.entitledItems[x].Attributes;
			var D = 0;
			for (index in F) {
				D++
			}
			if (G == 0 && D == 0) {
				return A
			}
			if (D != 0 && G >= D) {
				var C = 0;
				for (attributeName in B) {
					var E = B[attributeName];
					if (E in F) {
						C++
					}
				}
				if (D == C) {
					return A
				}
			}
		}
		return null
	},
	setSelectedAttribute : function(E, B, D, F, C) {
		var A = this.selectedAttributesList[D];
		if (A == null) {
			A = new Object()
		}
		B = B.replace(this.replaceStr01, this.search01);
		B = B.replace(this.replaceStr02, this.search02);
		B = B.replace(this.ampersandChar, this.ampersandEntityName);
		A[E] = B;
		this.moreInfoUrl = this.moreInfoUrl + "&" + E + "=" + B;
		this.selectedAttributesList[D] = A;
		this.changeProdImage(D, E, B, F, C)
	},
	compareProductCatalogId : "",
	addCompare : function(ctype, val, catalogId, catentryInfo) {
		this.changeCompareCheckBoxValue(val);
		var productIds = new Array;
		if ($.cookie("compareProductIds") != null
				&& $.cookie("compareProductIds") != "") {
			productIds = eval("(" + $.cookie("compareProductIds") + ")")
		}
		if ($("#comparebox_" + val).attr("checked")) {
			if (productIds.length > 3) {
				this.errorAlert(val, "对不起，最多只能同时比较4种商品!");
				return false
			}
			this.addCompareProduct(val, catentryInfo)
		} else {
			this.removeCompareProduct(val)
		}
	},
	changeCompareCheckBoxValue : function(A) {
		if ($("#comparebox_" + A).attr("checked")) {
			$("#comparebox_" + A).attr("checked", false);
			this.removeCompareClass(A)
		} else {
			$("#comparebox_" + A).attr("checked", true);
			this.addCompareClass(A)
		}
	},
	errorAlert : function(B, A) {
		$("#comparebox_" + B).attr("checked", false);
		this.removeCompareClass(B);
		shoppingActionsJS.alertMsg(A)
	},
	alertMsg : function(A) {
		$(".topbackdiv").show();
		$(".topBox").show();
		$(".promptContent").text(A)
	},
	addCompareProduct : function(B, D) {
		if ($.cookie("compareProductIds") == null
				|| $.cookie("compareProductIds") != "") {
			$("#compareProducts").show()
		}
		this.addCompareProductToCookie(B, D);
		var C = '<li id="compareli_' + B + '">';
		C = C + '<a class="pImg" href="' + D.productURL
				+ '" target="_blank" title="' + D.altImgText + '" >';
		C = C + '<img title="' + D.altImgText + '" src="' + D.imgSource
				+ "\" onerror=\"javascript:$(this).attr('src','"
				+ this.storeErrImg
				+ "');$(this).addClass('errImg');\" /></a><div class=\"fl\">";
		C = C + '<a class="pNames" href="' + D.productURL
				+ '" target="_blank" title="' + D.altImgText + '">'
				+ D.highlightedName + "</a>";
		C = C + '<p class="pPrice">' + D.price + "</p>";
		C = C
				+ '<a class="fr CompareDel ml5" href="javascript:void(0);" onclick="javascript:shoppingActionsJS.removeCompareProduct('
				+ B + ')">删除</a></div></li>';
		if ($.browser.msie && (($.browser.version).indexOf("8") > -1)) {
			var A = document.getElementById("compareProducts_ul").innerHTML;
			document.getElementById("compareProducts_ul").innerHTML = A + C
		} else {
			$("#compareProducts_ul").append(C)
		}
	},
	removeCompareProduct : function(B) {
		$("#compareli_" + B).remove();
		$("#comparebox_" + B).attr("checked", false);
		this.removeCompareClass(B);
		var A = this.removeCompareFromCookie(B);
		if (A <= 1) {
			$("#doCompare_a").addClass("startCprBtnDisable")
		}
		if (A <= 0) {
			$("#compareProducts").hide()
		}
	},
	addCompareClass : function(A) {
		$("#compareButton_" + A).addClass("curr")
	},
	removeCompareClass : function(A) {
		$("#compareButton_" + A).removeClass("curr")
	},
	removeAllCompareProducts : function() {
		$.removeCookie("compareProductIds", {
			path : "/"
		});
		$.removeCookie("compareProducts", {
			path : "/"
		});
		$('span[checked="checked"]').each(function() {
			var A = $(this).attr("id");
			$(this).attr("checked", false);
			$("#compareButton_" + A.split("_")[1]).removeClass("curr")
		});
		$("#compareProducts_ul").html("");
		$("#compareProducts").hide()
	},
	doCompare : function() {
		var url = "CompareProductsDisplayView?storeId=" + this.storeId
				+ "&catalogId=" + this.catalogId + "&langId=" + this.langId
				+ "&compareReturnName=" + this.compareReturnName
				+ "&searchTerm=" + this.searchTerm;
		if ("" != this.categoryIds.top_category) {
			url = url + "&top_category=" + this.categoryIds.top_category
		}
		if ("" != this.categoryIds.parent_category_rn) {
			url = url + "&parent_category_rn="
					+ this.categoryIds.parent_category_rn
		}
		if ("" != this.categoryIds.categoryId) {
			url = url + "&categoryId=" + this.categoryIds.categoryId
		}
		var catentryIds = "";
		var ProductIds = new Array;
		if ($.cookie("compareProductIds") != null
				&& $.cookie("compareProductIds") != "") {
			ProductIds = eval("(" + $.cookie("compareProductIds") + ")");
			if (ProductIds != null && ProductIds.length > 1) {
				for (var i = 0; i < ProductIds.length; i++) {
					var val = ProductIds[i];
					catentryIds = catentryIds + ";" + val
				}
			} else {
				return null
			}
		}
		if (catentryIds != null && catentryIds != "") {
			catentryIds = catentryIds.substr(1)
		}
		url = url + "&catentryId=" + catentryIds;
		var returnUrl = location.href;
		if (returnUrl.indexOf("?") == -1) {
			returnUrl = returnUrl + "?fromPage=compare"
		} else {
			if (returnUrl.indexOf("fromPage=compare") == -1) {
				returnUrl = returnUrl + "&fromPage=compare"
			}
		}
		url = url + "&returnUrl=" + encodeURIComponent(returnUrl);
		$.removeCookie("catentryListURL", {
			path : "/"
		});
		$.cookie("catentryListURL", window.location.href, {
			path : "/"
		});
		location.href = getAbsoluteURL() + url
	},
	initCompare : function() {
		$.removeCookie("catentryListURL", {
			path : "/"
		});
		var requestURl = window.location.href;
		var initProductIds = new Array;
		var initProducts = new Array;
		if ($.cookie("compareProductIds") != null
				&& $.cookie("compareProductIds") != ""
				&& $.cookie("compareProductIds") != undefined) {
			initProductIds = eval("(" + $.cookie("compareProductIds") + ")");
			initProducts = eval("(" + $.cookie("compareProducts") + ")");
			if (initProductIds != null && initProductIds.length > 0) {
				$.removeCookie("compareProductIds", {
					path : "/"
				});
				$.removeCookie("compareProducts", {
					path : "/"
				});
				$("#compareProducts_ul").html("");
				$("#compareProducts").hide();
				for (var i = 0; i < initProductIds.length; i++) {
					var id = initProductIds[i];
					var content = initProducts[i];
					$("#comparebox_" + id).attr("checked", true);
					shoppingActionsJS.addCompareClass(id);
					shoppingActionsJS.addCompareProduct(id, content)
				}
			}
		}
	},
	toAddCompareProducts : function() {
		var A = $.cookie("catentryListURL");
		if (A != null && A != "") {
			window.location.href = A
		} else {
			window.location.href = this.env_TopCategoriesDisplayURL
		}
	},
	addCompareProductToCookie : function(val, content) {
		var ProductIds = new Array;
		var Products = new Array;
		if ($.cookie("compareProductIds") != null
				&& $.cookie("compareProductIds") != "") {
			ProductIds = eval("(" + $.cookie("compareProductIds") + ")");
			Products = eval("(" + $.cookie("compareProducts") + ")")
		}
		ProductIds.push(val);
		Products.push(content);
		$.removeCookie("compareProductIds", {
			path : "/"
		});
		$.removeCookie("compareProducts", {
			path : "/"
		});
		$.cookie("compareProductIds", shoppingActionsJS
				.JSONstringify(ProductIds), {
			path : "/"
		});
		$.cookie("compareProducts", shoppingActionsJS.JSONstringify(Products),
				{
					path : "/"
				});
		if (ProductIds.length > 1) {
			$("#doCompare_a").removeClass("startCprBtnDisable")
		}
	},
	removeCompareFromCookie : function(val) {
		var ProductIds = new Array;
		var Products = new Array;
		if ($.cookie("compareProductIds") != null
				&& $.cookie("compareProductIds") != "") {
			ProductIds = eval("(" + $.cookie("compareProductIds") + ")");
			Products = eval("(" + $.cookie("compareProducts") + ")");
			if (ProductIds != null && ProductIds.length > 0) {
				for (var i = 0; i < ProductIds.length; i++) {
					if (ProductIds[i] == val) {
						ProductIds.splice(i, 1);
						Products.splice(i, 1)
					}
				}
			}
			$.removeCookie("compareProductIds", {
				path : "/"
			});
			$.removeCookie("compareProducts", {
				path : "/"
			});
			if (ProductIds.length > 0) {
				$.cookie("compareProductIds", shoppingActionsJS
						.JSONstringify(ProductIds), {
					path : "/"
				});
				$.cookie("compareProducts", shoppingActionsJS
						.JSONstringify(Products), {
					path : "/"
				});
				return ProductIds.length
			} else {
				return 0
			}
		} else {
			return 0
		}
	},
	hideCompareDiv : function() {
		$("#compareProducts_ul").html("");
		$("#compareProducts").hide()
	},
	closePrompt : function() {
		$(".promptContent").text("");
		$(".topbackdiv").hide();
		$(".topBox").hide()
	},
	addShoppingChart : function(E, D, A, B, C) {
		if (C != "1") {
			$("#errorMsg").html("暂时不可购买!");
			$(".topbackdiv").show();
			$("#addFailed").show();
			return false
		}
		$.ajax({
			type : "POST",
			url : "AjaxOrderChangeServiceItemAdd",
			data : {
				calculationUsage : "-1,-2,-5,-6,-7",
				catEntryId : E,
				inventoryValidation : "true",
				langId : -7,
				comment : D,
				orderId : ".",
				quantity : 1,
				requesttype : "ajax",
				storeId : WCParamJS.storeId,
				cmdStoreId : $("#hubStoreId").val(),
				originalStoreId : WCParamJS.storeId
			},
			dataType : "json",
			success : function(I, F) {
				var G = I.errorMessage;
				var H = I.orderItemId;
				if (H == null || H == undefined) {
					if (I.errorMessage && I.errorMessageKey != null) {
						$("#errorMsg").html(G);
						$(".topbackdiv").show();
						$("#addFailed").show()
					} else {
						if (type == "add") {
							$("#errorMsg").html("加入购物车失败!");
							$(".topbackdiv").show();
							$("#addFailed").show()
						} else {
							if (type == "buy") {
								$("#errorMsg").html("立即购买失败!");
								$(".topbackdiv").show();
								$("#addFailed").show()
							}
						}
					}
				} else {
					if (G == null || G == undefined) {
						$("#totalBuyAmount").html("&yen;" + B);
						$(".topbackdiv").show();
						$("#addSuccess").show()
					} else {
						$("#errorMsg").html(G);
						$(".topbackdiv").show();
						$("#addFailed").show()
					}
				}
			}
		})
	},
	addWishList : function(A) {
		$.ajax({
			type : "post",
			url : "WishListAddCmd",
			data : {
				catentryId : A
			},
			dataType : "json",
			success : function(B) {
				if (B.status == "1") {
					shoppingActionsJS.alertMsg("收藏成功")
				}
				if (B.status == "0") {
					if (B.errorCode == "0002") {
						shoppingActionsJS.alertMsg("您的收藏夹中已有该商品")
					} else {
						if (B.errorCode == "0003") {
							shoppingActionsJS.alertMsg("请先选择一个商品再进行收藏。")
						} else {
							if (B.errorCode == "0004") {
								shoppingActionsJS.alertMsg("对不起，该商品不能添加收藏。")
							} else {
								if (B.errorCode == "0000") {
									shoppingActionsJS.alertMsg("添加收藏失败，请稍后再试。")
								}
							}
						}
					}
				}
				if (B.errorCode == "2500") {
					shoppingActionsJS.alertMsg("请您先登录之后再添加收藏。")
				}
			}
		})
	},
	JSONstringify : function(B) {
		if ($.browser.msie) {
			if ($.browser.version == "7.0" || $.browser.version == "6.0") {
				var A = shoppingActionsJS.toJSONString(B)
			} else {
				var A = JSON.stringify(B)
			}
		} else {
			var A = JSON.stringify(B)
		}
		return A
	},
	evalJSON : function(strJson) {
		return eval("(" + strJson + ")")
	},
	toJSONString : function(C) {
		var A = typeof C;
		if ("object" == A) {
			if (Array == C.constructor) {
				A = "array"
			} else {
				if (RegExp == C.constructor) {
					A = "regexp"
				} else {
					A = "object"
				}
			}
		}
		switch (A) {
		case "undefined":
		case "unknown":
			return;
			break;
		case "function":
		case "boolean":
		case "regexp":
			return C.toString();
			break;
		case "number":
			return isFinite(C) ? C.toString() : "null";
			break;
		case "string":
			return '"'
					+ C.replace(/(\\|\")/g, "\\$1").replace(
							/\n|\r|\t/g,
							function() {
								var G = arguments[0];
								return (G == "\n") ? "\\n"
										: (G == "\r") ? "\\r"
												: (G == "\t") ? "\\t" : ""
							}) + '"';
			break;
		case "object":
			if (C === null) {
				return "null"
			}
			var E = [];
			for ( var D in C) {
				var F = shoppingActionsJS.toJSONString(C[D]);
				if (F !== undefined) {
					E.push(shoppingActionsJS.toJSONString(D) + ":" + F)
				}
			}
			return "{" + E.join(",") + "}";
			break;
		case "array":
			var E = [];
			for (var B = 0; B < C.length; B++) {
				var F = shoppingActionsJS.toJSONString(C[B]);
				if (F !== undefined) {
					E.push(F)
				}
			}
			return "[" + E.join(",") + "]";
			break
		}
	}
};