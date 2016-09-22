<script type="text/javascript">
$().ready(function() {

	var $newApplySeller = $("#newApplySeller");
	
	// 入驻
	$newApplySeller.click(function() {
		if (!$.checkLogin()) {
			$.redirectLogin("${base}/seller/join/newApply.jhtml", "${message("shop.seller.join.accessDenied")}");
			return false;
		}
	});
});
</script>

<div class="span6">
	<div class="info">
		<div class="top"></div>
		<div class="content">
			<p>${message("shop.seller.navigation.welcome")}</p>
			<p><a href="${base}/seller/join/newApply.jhtml" id="newApplySeller">${message("shop.seller.navigation.join")}</a></p>
			<p><a href="${base}/seller/join/search.jhtml">${message("shop.seller.navigation.join.search")}</a></p>
		</div>
		<div class="bottom"></div>
	</div>
	<div class="menu">
		<div class="title">
			<a href="${base}/seller/index.jhtml">${message("shop.seller.navigation.seller.join.title")}</a>
		</div>
		<div class="content">
			<dl>
				<dt>${message("shop.seller.navigation.seller.join.flow")}</dt>
				<dd>
					<a href="${base}/member/order/list.jhtml"[#if current == "orderList"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.direction")}</a>
				</dd>
				<dd>
					<a href="${base}/member/coupon_code/list.jhtml"[#if current == "couponCodeList"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.standard")}</a>
				</dd>
				<dd>
					<a href="${base}/member/coupon_code/exchange.jhtml"[#if current == "couponCodeExchange"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.require")}</a>
				</dd>
				<dd>
					<a href="${base}/member/coupon_code/exchange.jhtml"[#if current == "couponCodeExchange"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.fee.standard")}</a>
				</dd>
				<dd>
					<a href="${base}/member/coupon_code/exchange.jhtml"[#if current == "couponCodeExchange"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.contact")}</a>
				</dd>
				<dd>
					<a href="${base}/member/coupon_code/exchange.jhtml"[#if current == "couponCodeExchange"] class="current"[/#if]>${message("shop.seller.navigation.seller.join.attention")}</a>
				</dd>
			</dl>
		</div>
		<div class="bottom"></div>
	</div>
</div>