<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.login.title")}</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="author" content="ecdaddy.com">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" type="text/css" href="${base}/resources/mobile/style/base.css?v=ecdaddy" />

<link href="${base}/resources/shop/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/shop/css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/shop/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/jsbn.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/prng4.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/rng.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/rsa.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/base64.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/common.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $loginForm = $("#loginForm");
	var $username = $("#username");
	var $password = $("#password");
	var $captcha = $("#captcha");
	var $captchaImage = $("#captchaImage");
	var $isRememberUsername = $("#isRememberUsername");
	var $submit = $(":submit");
	
	// 记住用户名
	if (getCookie("memberUsername") != null) {
		$isRememberUsername.prop("checked", true);
		$username.val(getCookie("memberUsername"));
		$password.focus();
	} else {
		$isRememberUsername.prop("checked", false);
		$username.focus();
	}
	
	// 更换验证码
	$captchaImage.click(function() {
		$captchaImage.attr("src", "${base}/common/captcha.jhtml?captchaId=${captchaId}&timestamp=" + (new Date()).valueOf());
	});
	
	// 表单验证、记住用户名
	$loginForm.validate({
		rules: {
			username: "required",
			password: "required"
			[#if setting.captchaTypes?? && setting.captchaTypes?seq_contains("memberLogin")]
				,captcha: "required"
			[/#if]
		},
		submitHandler: function(form) {
			$.ajax({
				url: "${base}/common/public_key.jhtml",
				type: "GET",
				dataType: "json",
				cache: false,
				beforeSend: function() {
					$submit.prop("disabled", true);
				},
				success: function(data) {
					var rsaKey = new RSAKey();
					rsaKey.setPublic(b64tohex(data.modulus), b64tohex(data.exponent));
					var enPassword = hex2b64(rsaKey.encrypt($password.val()));
					$.ajax({
						url: $loginForm.attr("action"),
						type: "POST",
						data: {
							username: $username.val(),
							enPassword: enPassword
							[#if setting.captchaTypes?? && setting.captchaTypes?seq_contains("memberLogin")]
								,captchaId: "${captchaId}",
								captcha: $captcha.val()
							[/#if]
						},
						dataType: "json",
						cache: false,
						success: function(message) {
							if ($isRememberUsername.prop("checked")) {
								addCookie("memberUsername", $username.val(), {expires: 7 * 24 * 60 * 60});
							} else {
								removeCookie("memberUsername");
							}
							$submit.prop("disabled", false);
							if (message.type == "success") {
								[#if redirectUrl??]
									location.href = "${redirectUrl}";
								[#else]
									location.href = "${base}/";
								[/#if]
							} else {
								$.message(message);
								[#if setting.captchaTypes?? && setting.captchaTypes?seq_contains("memberLogin")]
									$captcha.val("");
									$captchaImage.attr("src", "${base}/common/captcha.jhtml?captchaId=${captchaId}&timestamp=" + (new Date()).valueOf());
								[/#if]
							}
						}
					});
				}
			});
		}
	});

});
</script>
</head>
<body>
	<div class="login-reg mc radius">
	<form action="${base}/login/submit.jhtml" method="post" id="loginForm">
			<div>账户名：</div>
			<div>
				<input type="text" value="" name="username" id="username" class="common-input" placeholder="请输入用户名/邮箱/已验证手机">
			</div>
			<div>密码：</div>
			<div>
				<input class="common-input" type="password" name="password" id="password">
			</div>
		<div>
			<input type="submit" class="sub_btn" value="登录">
		</div>
	</form>
	<!-- <div><a href="./../user.php?act=get_password"> 找回密码</a>&nbsp;&nbsp;<a href="user.php?act=register">注册</a></div> -->
</div>
</body>
</html>