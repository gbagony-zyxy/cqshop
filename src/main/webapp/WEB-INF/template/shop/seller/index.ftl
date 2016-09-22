<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.seller.index")}</title>


<link href="${base}/resources/shop/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/shop/css/seller.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/shop/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/common.js"></script>

</head>
<body>
	[#include "/shop/include/header.ftl" /]
	<p class="red"  align="center">我爱岛购网诚邀优质品牌</p><br>
    <div class="container member">
		[#include "/shop/seller/include/navigation.ftl" /]
		<div class="span18 last">
			<div class="index">
				<div class="top clearfix">
					<div>
						入驻流程<br>
						<img src="${base}/resources/shop/images/seller_join_flow1.png"  />
					</div>
				</div>
			</div>
		</div>
		[#include "/shop/include/footer.ftl" /]
	</div>
</body>
</html>