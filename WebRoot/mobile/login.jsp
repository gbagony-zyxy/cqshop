<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
String base = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="author" content="ecdaddy.com">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" href="/cqshop/resources/mobile/style/base.css?v=ecdaddy" />
<title>潭门砗磲网</title>
</head>
<body>
<div class="login-reg mc radius">
	<form action="<%=base%>/mobile/login/index.jhtml" method="post" id="loginForm">
			<div>账户名：</div>
			<div>
				<input type="text" value="" name="username" id="username" class="common-input" placeholder="请输入用户名/邮箱/已验证手机">
			</div>
			<div>密码：</div>
			<div>
				<input class="common-input" type="password" name="pwd" id="pwd">
			</div>
		<div>
			<input type="submit" class="sub_btn" value="登录">
		</div>
	</form>
	<!-- <div><a href="./../user.php?act=get_password"> 找回密码</a>&nbsp;&nbsp;<a href="user.php?act=register">注册</a></div> -->
</div>
</body>
</html>