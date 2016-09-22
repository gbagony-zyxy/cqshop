if (typeof (menueDisplay) == "undefined") {
	var menueDisplay = true
}
var t1;
var t2;
$(function() {
	$(".categorysTitle").mouseover(function() {
		$(".categorysCon").show()
	});
	$(".categorys").mouseleave(function() {
		$(".categorysCon").hide()
	})
});
var _hmt = _hmt || [];
(function() {
	var A = document.createElement("script");
	A.src = "//hm.baidu.com/hm.js?85d9ab33af2dd061e4c8a8a6e35883fb";
	var B = document.getElementsByTagName("script")[0];
	B.parentNode.insertBefore(A, B)
})();
function headerLogon(B, A) {
	if (A == "header") {
		if (window.location.href.indexOf("ReLogonFormView") >= 0) {
			window.location.href = B
		} else {
			window.location.href = B + "&XURL="
					+ encodeURIComponent(window.location.href)
		}
	} else {
		window.location.href = B
	}
}
function headerRegist(B, A) {
	if (A == "header") {
		if (window.location.href.indexOf("ReLogonFormView") >= 0) {
			window.location.href = B
		} else {
			window.location.href = B + "&XURL="
					+ encodeURIComponent(window.location.href)
		}
	} else {
		window.location.href = B
	}
}
function logonoff() {
	var A = $(".logonoffurl").val();
	window.location.href = A
}
function AddFavorite(A, C) {
	var D = false;
	try {
		window.external.AddFavorite(A, C)
	} catch (B) {
		try {
			window.sidebar.addPanel(C, A, "")
		} catch (B) {
			if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) {
				D = true
			} else {
				alert("加入收藏失败，请使用Ctrl+D进行添加")
			}
		}
	}
	return D
}
function replaceParams(A) {
	var B = $(A).attr("href");
	B = B.replace("{storeId}", WCParamJS.storeId);
	B = B.replace("{catalogId}", WCParamJS.catalogId);
	B = B.replace("{langId}", WCParamJS.langId);
	$(A).attr("href", B);
	return true
};