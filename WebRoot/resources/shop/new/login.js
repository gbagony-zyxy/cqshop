var phoneReg = "^0?(13|15|18|14)[0-9]{9}$";
var emailReg = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
var hasValidateLogonId = false;
var canLogin = false;
$(document).ready(
		function() {
			setTimeout(function() {
				$("#logonErrorMessage").hide()
			}, 3000);
			if (Cookie.getCookie("LogonId") != null
					&& Cookie.getCookie("LogonId") != ""
					&& Cookie.getCookie("Passw0rd") != null
					&& Cookie.getCookie("Passw0rd") != "") {
				$("#WC_AccountDisplay_FormInput_logonId_In_Logon_1").val(
						Cookie.getCookie("LogonId"));
				$("#WC_AccountDisplay_FormInput_logonPassword_In_Logon_1").val(
						Cookie.getCookie("Passw0rd"));
				$("#rememberLogonId").attr("checked", "checked")
			} else {
				$("#rememberLogonId").removeAttr("checked")
			}
			$(".logonid").attr("placeholder", "邮箱/手机号/用户名");
			$(".password").attr("placeholder", "密码");
			$(".mobileNum").attr("placeholder", "请输入手机号");
			$(".mobilePassword").attr("placeholder", "动态密码");
			$(".logonid").click(function() {
				$(".logonid").removeAttr("placeholder");
				$(".logonid").removeClass("Loud-Error");
				$("#logonIdMsg").text("")
			});
			$(".password").click(function() {
				$(".password").removeAttr("placeholder");
				$(".password").removeClass("Loud-Error");
				$("#passwrodMsg").text("")
			});
			$(".mobileNum").click(function() {
				$(".mobileNum").removeAttr("placeholder");
				$(".mobileNum").removeClass("Loud-Error");
				if ($.trim($(".mobilePassword").val()) == "") {
					$(".mobilePassword").attr("placeholder", "动态密码")
				}
			});
			$(".mobilePassword").click(function() {
				$(".mobilePassword").removeAttr("placeholder");
				$(".mobilePassword").removeClass("Loud-Error");
				if ($.trim($(".mobileNum").val()) == "") {
					$(".mobileNum").attr("placeholder", "请输入手机号")
				}
			});
			$("input.logonid").blur(function() {
				var B = $(this).val();
				if (B == "") {
					$(".logonid").addClass("Loud-Error");
					var A = "请输入邮箱/手机号/用户名";
					changeDispaly("logonIdMsg", A);
					$(".logonid").attr("placeholder", "邮箱/手机号/用户名");
					canLogin = false
				}
			})
		});
function changeDispaly(B, A) {
	$("#" + B).html(A);
	$("#" + B).addClass("c_red");
	setTimeout(function() {
		$("#" + B).html("");
		$("#" + B).removeClass("c_red");
		$(".Loud-Error").removeClass("Loud-Error")
	}, 1000)
}
function checkLogonId(B) {
	var C = "";
	if (B != null) {
		C = $.trim(B.value)
	}
	if (C == "") {
		$(".logonid").addClass("Loud-Error");
		var A = "请输入邮箱/手机号/用户名";
		changeDispaly("logonIdMsg", A);
		$(".logonid").attr("placeholder", "邮箱/手机号/用户名");
		canLogin = false
	} else {
		openload();
		$(".logonid").removeClass("Loud-Error");
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_1").removeAttr("name");
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_2").removeAttr("name");
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_2").attr("name",
				"logonId");
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_2").val(
				C.toLowerCase());
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_3").attr("name",
				"nickname");
		$("#WC_AccountDisplay_FormInput_logonId_In_Logon_3").val("");
		var D = {
			logonId : C.toLowerCase(),
			storeId : WCParamJS.storeId,
			catalogId : WCParamJS.catalogId,
			langId : WCParamJS.langId,
			type : "logon"
		};
		$.ajax({
			url : "CheckLogonIdCmd",
			type : "post",
			dataType : "json",
			async : false,
			data : D,
			success : function(F) {
				if (F.status == "1") {
					closeload();
					canLogin = true
				} else {
					closeload();
					var E = "该用户名不存在";
					changeDispaly("logonIdMsg", E);
					$(".logonid").addClass("Loud-Error");
					canLogin = false
				}
			}
		})
	}
	hasValidateLogonId = true
}
function checkPassword(B) {
	var A = "";
	if (B != null) {
		A = B.value
	}
	if (A == "") {
		$(".password").addClass("Loud-Error");
		var C = "请输入密码";
		changeDispaly("passwrodMsg", C);
		$(".password").attr("placeholder", "密码");
		canLogin = false;
		return false
	} else {
		$(".password").removeClass("Loud-Error");
		changeDispaly("passwrodMsg", "");
		canLogin = true;
		return true
	}
}
function tryLogin(E, B, A) {
	
	if (isSubmitRequest) {
		return
	}
	isSubmitRequest = true;
	var D = document
			.getElementById("WC_AccountDisplay_FormInput_logonId_In_Logon_1");
	var C = document
			.getElementById("WC_AccountDisplay_FormInput_logonPassword_In_Logon_1");
	isSubmitRequest = false;
	checkLogonId(D);
	if (!canLogin) {
		isSubmitRequest = false;
		return
	}
	if (!checkPassword(C)) {
		isSubmitRequest = false;
		return
	}
	if (B == null) {
		if (E == "normal") {
			B = document.getElementById("normalLogonBtn")
		} else {
			if (E == "force") {
				B = document.getElementById("forceLogonBtn")
			} else {
				if (E == "iframeForce") {
					B = document.getElementById("forceLogonBtn")
				}
			}
		}
	}
	
	openload();
	var F = $("#Logon");
	$.ajax({
		type : "post",
		url : "XLogon",
		data : F.serialize(),
		success : function(L) {
			var I = $.parseJSON(L);
			var K = I.ErrorCode;
			if (typeof K == "undefined") {
				if ($("#rememberLogonId").attr("checked")) {
					Cookie.delCookie("LogonId");
					Cookie.setCookie("LogonId", $.trim(D.value), {
						expireHours : 7 * 24
					});
					Cookie.delCookie("Passw0rd");
					Cookie.setCookie("Passw0rd", $.trim(C.value), {
						expireHours : 7 * 24
					})
				} else {
					Cookie.delCookie("LogonId");
					Cookie.delCookie("Passw0rd")
				}
				if (E == "normal") {
					var H = I.URL;
					if (H == null) {
						H = $("#indexUrl").val()
					} else {
						H = H.toString();
						H = H.replace(/&amp;/g, "&")
					}
					window.location.href = H
				} else {
					if (E == "force") {
						var H = I.URL;
						if (H == null) {
							H = $("#indexUrl").val()
						} else {
							H = H.toString();
							H = H.replace(/&amp;/g, "&")
						}
						window.parent.location.href = H
					} else {
						if (E == "iframeForce") {
							var H = I.URL;
							if (H == null) {
								H = $("#indexUrl").val()
							} else {
								H = H.toString();
								H = H.replace(/&amp;/g, "&")
							}
							window.parent.location.href = H
						}
					}
				}
			} else {
				closeload();
				isSubmitRequest = false;
				var J = false;
				var G = false;
				$("#logonErrorMessage").show();
				$("#logonErrorMessage").html(errorJson[K]);
				setTimeout(function() {
					$("#logonErrorMessage").hide()
				}, 3000)
			}
		},
		error : function() {
			closeload();
			isSubmitRequest = false;
			$("#logonErrorMessage").show();
			$("#logonErrorMessage").html("系统异常，请稍后重试。");
			setTimeout(function() {
				$("#logonErrorMessage").hide()
			}, 3000)
		}
	})
}
function readyForSkipping(A) {
	if (skipSecond == 0) {
		$("#lastSkip").parent().html("正在跳转. . .");
		window.location.href = A
	} else {
		$("#lastSkip").html(skipSecond);
		setTimeout(function() {
			--skipSecond;
			readyForSkipping(A)
		}, 1000)
	}
}
function shopcartheaderRegist(B, A) {
	if (A == "header") {
		window.parent.location.href = B + "&XURL="
				+ encodeURIComponent(window.location.href)
	} else {
		window.parent.location.href = B
	}
}
function shopcartlogon() {
	window.parent.location.href = "GLUserLogonOpenIDCmd?storeId="
			+ WCParamJS.storeId + "&catalogId=" + WCParamJS.catalogId
			+ "&langId=" + WCParamJS.langId
}
function shopcartfindpassword() {
	window.parent.location.href = " ForgotPasswordView?storeId="
			+ WCParamJS.storeId + "&catalogId=" + WCParamJS.catalogId
			+ "&langId=" + WCParamJS.langId
}
function showLogonPage() {

//	window.location.href="/cqshop/member/order/info.jhtml";
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
	$("#forceLogonPage").show();
	$("iframe#iframeForce").attr("height", 500);
	$("iframe#iframeForce").attr("width", "100%");
	$("iframe#iframeForce").show()
}
function hideLogonPage() {
	$("iframe#iframeForce", window.parent.document).hide();
	$("iframe#iframeForce", window.parent.document).css({
		zIndex : -10000
	});
	$("#forceLogonBg", window.parent.document).hide();
	$("#forceLogonBg", window.parent.document).css({
		zIndex : -9999
	})
}
function changelogonway(A) {
	if (A == "M") {
		if ($("#quicklogon").is(":hidden")) {
			$("#quicklogon").show();
			$("#generallogon").hide();
			$("#quicklogontitle").hide();
			setInputOnlyNum("onlyNumInput")
		}
	} else {
		if (A == "G") {
			if ($("#generallogon").is(":hidden")) {
				$("#generallogon").show();
				$("#quicklogon").hide();
				$("#quicklogontitle").show()
			}
		}
	}
}
function sendRegistPassword(B) {
	var C = $.trim($(".mobileNum").val());
	if (C == "") {
		changeDispaly("mobilenumbererror", "请输入手机号码");
		return
	} else {
		if (!new RegExp(phoneReg).test(C)) {
			var A = "输入的手机号格式不正确";
			changeDispaly("mobilenumbererror", A);
			return
		} else {
			openload();
			var D = {
				logonId : C.toLowerCase(),
				storeId : WCParamJS.storeId,
				catalogId : WCParamJS.catalogId,
				langId : WCParamJS.langId
			};
			$.ajax({
				url : "CheckLogonIdCmd",
				type : "post",
				dataType : "json",
				async : false,
				data : D,
				success : function(E) {
					if (E.status == "1") {
						closeload();
						changeDispaly("mobilenumbererror", "该手机号已经注册过了");
						return
					} else {
						closeload();
						changeDispaly("mobilenumbererror", "");
						sendPassword(B, C)
					}
				}
			})
		}
	}
}
function sendPassword(B, A) {
	$(B).unbind("click");
	B.onclick = "";
	B.onclick = "";
	var C = {
		phoneNumber : A,
		storeId : WCParamJS.storeId,
		catalogId : WCParamJS.catalogId,
		langId : WCParamJS.langId
	};
	$.ajax({
		type : "post",
		dataType : "json",
		url : "GLSendPasswordCmd",
		data : C,
		async : false,
		success : function(D) {
			if (D.status == "1") {
				refreshPasswordTime(B, "0")
			} else {
				$(B).click(function() {
					sendRegistPassword(this)
				});
				changeDispaly("mobilenumbererror", "发送失败，请重新尝试");
				return
			}
		},
		error : function() {
			$(B).click(function() {
				sendRegistPassword(this)
			});
			changeDispaly("mobilenumbererror", "网络错误，发送失败");
			return
		}
	})
}
function refreshPasswordTime(A, B) {
	second = --second;
	setTimeout(function() {
		if (second > 0) {
			$(A).html(second + "秒后可重新获取");
			$(A).unbind("click");
			A.onclick = "";
			refreshPasswordTime(A, B)
		} else {
			$(A).html("重新获取验证码");
			if (B == "0") {
				$(A).click(function() {
					sendRegistPassword(this)
				})
			}
			second = 60
		}
	}, 1000)
}
function registAndLogin() {
	var C = $.trim($(".mobileNum").val());
	var B = $(".mobilePassword").val();
	var A = $("#URL").val();
	if (C == "") {
		changeDispaly("mobilenumbererror", "请输入手机号码");
		$(".mobileNum").attr("placeholder", "请输入手机号");
		return
	}
	if (B == "") {
		changeDispaly("mobilenumbererror", "请输入动态密码");
		$(".mobilePassword").attr("placeholder", "动态密码");
		return
	}
	openload();
	$(".sendBtn").hide();
	var D = {
		URL : A,
		registerWay : "quickregist",
		logonId : C,
		registPassword : B,
		storeId : WCParamJS.storeId,
		catalogId : WCParamJS.catalogId,
		langId : WCParamJS.langId
	};
	$.ajax({
		url : "XUserRegisterCmd",
		data : D,
		type : "post",
		success : function(G) {
			var E = $.parseJSON(G);
			if (E.status == "0") {
				closeload();
				$("#mobilenumbererror").html(E.message);
				$(".sendBtn").show();
				$(".sendBtn").html("发送动态密码");
				$(".sendBtn").click(function() {
					sendRegistPassword(this)
				});
				return
			} else {
				if (E.status == "1") {
					var F = E.URL;
					F = F.toString();
					F = F.replace(/&amp;/g, "&");
					if (F != "") {
						window.parent.location.href = A
					}
				}
			}
		}
	})
}
function openload() {
	$(".loaddivback").show();
	$(".loaddivinfo").show()
}
function closeload() {
	$(".loaddivback").hide();
	$(".loaddivinfo").hide()
};