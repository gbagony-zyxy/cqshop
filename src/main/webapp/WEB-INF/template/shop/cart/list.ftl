<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0292)https://mall.gree.com/webapp/wcs/stores/servlet/AjaxOrderItemDisplayView?catalogId=10001&langId=-7&storeId=10651&krypto=o4puq6CmZ5Iz3ZkaXjdyIS0zVbuDudnl7ykBeCYc0XNRWhJSGKJZf8Tq3VzzVyndjdwjakeiVsjJF2zsGOeq%2FiF70xnChkQBn5jwFFZ8VKsknYqyaGd50LHNdf%2F0%2FE%2BL&ddkey=http:AjaxOrderItemDisplayView -->
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wairole="http://www.w3.org/2005/01/wai-rdf/GUIRoleTaxonomy#" xmlns:waistate="http://www.w3.org/2005/07/aaa" lang="zh" xml:lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="CommerceSearch" content="storeId_10651">
<link rel="shortcut icon" href="https://mall.gree.com/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico" mce_href="/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico">
<script src="${base}/resources/shop/new/hm.js"></script>

<script type="text/javascript" src="${base}/resources/shop/new/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/jqScroll.js"></script>
<script type="text/javascript">
$( document ).ready(function(){
	if(typeof(isForceLogon) == "undefined"){
		$.ajax({
			url:'/wcsstore/GreeStorefrontAssetStore/javascript/City/city.html',
			success: function(html){
				$('#bigpobbox').html(html);
			},
			dataType: 'html',
			contentType: "application/x-www-form-urlencoded; charset=utf-8"
			
			
		});
	}
});

var GLAjaxLoacateCityURL = 'http://mall.gree.com/mall/GLAjaxLoacateCity?';
var GLAjaxChangeCityURL = 'http://mall.gree.com/mall/GLAjaxChangeCity?';

if('https:' == document.location.protocol ){
	GLAjaxLoacateCityURL = GLAjaxLoacateCityURL.replace('http','https');
	GLAjaxChangeCityURL = GLAjaxChangeCityURL.replace('http','https');
}
</script>
<script type="text/javascript" src="${base}/resources/shop/new/jquery.lazyload.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/CityActions.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/tanchu.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/jquery.nicenav.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/CatentryListJS.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/ShoppingActions.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/ShoppingActionsServicesDeclaration.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/Search.js"></script>

<link rel="stylesheet" type="text/css" href="${base}/resources/shop/css3/base.css">
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/css3/header.css">
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/css3/Pop-up-box.css">
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/css3/footer.css">
<!-- END CommonJSToInclude.jspf -->
<script>
	var storeId = "10651";
	var catalogId = "10001";
	var langId = "-7";
	var jspStoreImgDir = "/wcsstore/GreeStorefrontAssetStore/";
</script>
<!-- BEGIN OrderItemDisplay.jsp -->
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/new/chanel.css">
<link rel="stylesheet" href="${base}/resources/shop/new/vipcenter.css" type="text/css"/>
<script type="text/javascript" src="${base}/resources/shop/new/AddWishList.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/citysJson.js" charset="utf-8"></script>
<script type="text/javascript" src="${base}/resources/shop/new/province.js" charset="utf-8"></script>
<script type="text/javascript" src="${base}/resources/shop/new/cartCitysJson.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/ShopCart1.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/login.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/cookie.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/userUtil.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/recommendation.js"></script>
<title>购物车1</title>
</head>
<body>
<div class="carthead">
  <!-- BEGIN Header.jsp -->
  <script type="text/javascript" src="${base}/resources/shop/new/menue.js"></script>
  <script type="text/javascript" src="${base}/resources/shop/new/PhoneClientDown.js"></script>
  <script type="text/javascript">
var WCParamJS = {
	"storeId":'10651',
	"catalogId":'10001',
	"langId":'-7'
};
</script>
  <script>var isGuest = true;</script>
  <script type="text/javascript">	
$(document).ready(function(){
	/*返回顶部*/
	$('#roll_top').hide();
	$(window).scroll(function () {
		if ($(window).scrollTop() > 100) {
			$('#roll_top').fadeIn(400);//当滑动栏向下滑动时，按钮渐现的时间
		} else {
			$('#roll_top').fadeOut(0);//当页面回到顶部第一屏时，按钮渐隐的时间
		}
	});
	$('#roll_top').click(function () {
		$('html,body').animate({
			scrollTop : '0px'
		}, 300);//返回顶部所用的时间 返回顶部也可调用goto()函数
	});
});
function goto(selector){
	$.scrollTo ( selector , 1000);	
}
var WC_nickName = getCookie('nikeName');
var shortNickName=getCookie('nikeName');
if(shortNickName.length>10){
	shortNickName=shortNickName.substring(0,9)+"..."
}
</script>
  <input class="logonoffurl" value="https://mall.gree.com/mall/Logoff?catalogId=10001&amp;langId=-7&amp;storeId=10651&amp;URL=LogonForm" type="hidden">
  <div class="shortcut">
    <div class="topbarbgcolor clearfix">
      <div class="wrapper">
        <ul class="quickMenu fl clearfix">
          <li class="pr topShoucang"><b></b><a href="javascript:void(0)">收藏我们</a></li>
        </ul>
        <ul class="fr topNav">
          <li class="logon pr"> <a href="javascript:headerLogon('https://mall.gree.com/mall/LogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10651','header')">[登录]</a> <a href="javascript:headerRegist('https://mall.gree.com/mall/UserRegistrationForm?new=Y&catalogId=10001&myAcctMain=1&langId=-7&storeId=10651','header')">[注册]</a> </li>
          <li class="pr"><a href="http://www.gree.com/" target="_blank">格力官网</a><em></em></li>
          <li class="pr appSC"><a href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10651">会员中心</a><em></em><b></b>
            <div style="display:none;">
              <p><a href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10651">我的订单</a></p>
            </div>
          </li>
          <li class="pr appSC"><a href="http://mall.gree.com/mall/HelpCenterView?catalogId=10001&langId=-7&storeId=10651">帮助中心</a><em></em><b></b></li>
          <li class="pr appSC"><a href="http://www.gree.com/about-gree/gsjs_jsp_catid_1241.shtml" target="_blank">公司简介</a><em></em><b></b></li>
          <li class="pr appSC"><a href="http://www.gree.com/newscenter/qyxw_jsp_catid_1261.shtml" target="_blank">新闻中心</a><em></em><b></b></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="wrapper mt10">
			<div class="cartHeader clearfix"><a class="logo" href="http://mall.gree.com/mall/zh-CN/beijing"><img src="${base}/resources/shop/new/logo.png"></a>
					<div class="cartStep1">我的购物车 </div>
			</div>
  </div>
  <div class="wrapper mt20">
  <div class="cart-inner">
    <div class="ShopCartDisplay">
      <!-- BEGIN ShopCartDisplay.jsp -->
      <script type="text/javascript">
$(function(){
	$("#selectProvince").append(provinceOption);
	var provinceId=getProvinceIdByCityId(WC_cityId);
    $("#selectProvince").find("option[value="+provinceId+"]").attr("selected",true);
	var cityOption=getCityOptionsByProvinceId(provinceId);
	$("#citySelect").append(cityOption);
	$("#citySelect").find("option[value="+WC_cityId+"]").attr("selected",true);
	var provinceName = getProvinceNameByProvinceId(provinceId)
	if(provinceName.length>3){
		provinceName = provinceName.substring(0,3);
	}
	$("#cartProvinceSelect").text(provinceName+"..");
	
	$("#addressSel .peisong").mouseover(function (){
		$(".addresslist").show();
		$("#addressSel").addClass("hover"); 
	});
	$("#addressSel").mouseleave(function (){
		$(".addresslist").hide();
		$("#addressSel").removeClass("hover");
	});
});
</script>
      <!-- Get order Details using the ORDER SOI -->
      <input class="needStoreId" value="10653" type="hidden">
      <script type="text/javascript">
					var getForceLogonPage='https://mall.gree.com/mall/ForceLogonView?storeId=10651';
					var langId='-7';
					var catalogId='10001';
					var parentURL=window.location.href;
				    $(function(){
				        $("#iframeForce").attr("src",getForceLogonPage+"&langId="+langId+"&catalogId="+catalogId);
				    });    
				</script>
      <div id="forceLogonBg"></div>
      <div id="forceLogonPage" class="f-CPM"> <a class="closelogoninfo" href="javascript:void(0);" onclick="hideLogonPage();">×</a>
        <iframe id="iframeForce" src="./购物车1_files/ForceLogonView.htm"></iframe>
      </div>
      <div class="cart-thead ">
        <!-- BEGIN OrderItemDetail.jsp -->
        <ul class="clearfix pr">
          <li class="cartCheckbox pr clearfix">
            <div style="width:80px;" class="pa">
              <input id="allcheck" type="checkbox" class="vigachoosenew" allcheck="allcheck" checked="checked">
              <label for="checkboxs" class="pa">全选</label>
            </div>
          </li>
          <li class="cartGoods">${message("shop.cart.product")}</li>
          <li class="cartrPrice">${message("shop.cart.price")}</li>
          <li class="cartPromotion">优惠</li>
          <li class="cartAddress">
            <div id="addressSel" class="pr fl">
              <div class="peisong"> <span id="cartProvinceSelect">北京市..</span> <a class="peisongbg"></a> </div>
              <div class="addresslist" style="display:none;"> <span>
                <select size="20" onchange="resetCity(&#39;selectProvince&#39;)" id="selectProvince">
                  <!-- <option value="" >请选择</option>
							<option value="34" >安徽省</option>
							<option value="11">北京</option>
							<option value="35">福建省</option>
							<option value="62">甘肃省</option>
							<option value="44">广东省</option>
							<option value="45">广西壮族自治区</option>
							<option value="52">贵州省</option>
							<option value="46">海南省</option>
							<option value="13">河北省</option>
							<option value="41">河南省</option>
							<option value="23">黑龙江省</option>
							<option value="42">湖北省</option>
							<option value="43">湖南省</option>
							<option value="22">吉林省</option>
							<option value="32">江苏省</option>
							<option value="36">江西省</option>
							<option value="21">辽宁省</option>
							<option value="15">内蒙古自治区</option>
							<option value="64">宁夏回族自治区</option>
							<option value="63">青海省</option>
							<option value="37">山东省</option>
							<option value="14">山西省</option>
							<option value="61">陕西省</option>
							<option value="31">上海市</option>
							<option value="51">四川省</option>
							<option value="12">天津</option>
							<option value="54">西藏自治区</option>
							<option value="65">新疆维吾尔自治区</option>
							<option value="53">云南省</option>
							<option value="33">浙江省</option>
							<option value="50">重庆</option>
							<option value="71">台湾省</option>
							<option value="81">香港特别行政区</option>
							<option value="82">澳门特别行政区</option> -->
                  <option value="-1">-请选择-</option>
                  <option value="34">安徽省</option>
                  <option value="82">澳门</option>
                  <option value="11" selected="selected">北京市</option>
                  <option value="50">重庆市</option>
                  <option value="35">福建省</option>
                  <option value="62">甘肃省</option>
                  <option value="45">广西</option>
                  <option value="44">广东省</option>
                  <option value="52">贵州省</option>
                  <option value="46">海南省</option>
                  <option value="13">河北省</option>
                  <option value="41">河南省</option>
                  <option value="23">黑龙江省</option>
                  <option value="42">湖北省</option>
                  <option value="43">湖南省</option>
                  <option value="22">吉林省</option>
                  <option value="32">江苏省</option>
                  <option value="36">江西省</option>
                  <option value="21">辽宁省</option>
                  <option value="15">内蒙古</option>
                  <option value="64">宁夏</option>
                  <option value="63">青海省</option>
                  <option value="37">山东省</option>
                  <option value="14">山西省</option>
                  <option value="61">陕西省</option>
                  <option value="31">上海市</option>
                  <option value="51">四川省</option>
                  <option value="71">台湾省</option>
                  <option value="12">天津市</option>
                  <option value="54">西藏</option>
                  <option value="81">香港</option>
                  <option value="65">新疆</option>
                  <option value="53">云南省</option>
                  <option value="33">浙江省</option>
                </select>
                </span> <span>
                <select size="20" id="citySelect" onchange="changeCityOrStore(&#39;citySelect&#39;)">
							请选择	
                  <option data="11" value="110" selected="selected">北京市</option>
                </select>
                </span> </div>
            </div>
          </li>
          <li class="cartQuantity">${message("shop.cart.quantity")}</li>
          <li class="cartSubtotal">${message("shop.cart.subtotal")}</li>
          <li class="cartOperation">操作</li>
        </ul>
        [#list cart.cartItems as cartItem]
        <!--单个商品数量  -->
        <input type="hidden" class="orderItemIds" value="4110150">
        <input type="hidden" value="4110150" name="orderItem_1" id="orderItem_1">
        <input type="hidden" value="944" name="catalogId_1" id="catalogId_1">
        <ol class="clearfix selected">
          <li class="cartCheckbox">
            <input class="selectorderitem" type="checkbox" value="4110150" checked="checked">
          </li>
          <li class="cartGoods"><a href="http://mall.gree.com/mall/zh-CN/beijing/LR02100310" id="${cartItem.id}" title="${cartItem.product.name}" class="pImg"> <img width="60" height="60" alt="海洋之韵（家用整体式） KRS-2.3/D150AA3 150L" src="./购物车1_files/LR02100310_01.jpg" onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"> </a> <a href="http://mall.gree.com/mall/zh-CN/beijing/LR02100310" class="pNames fl"> 海洋之韵（家用整体式） KRS-2.3/D150AA3 150L </a> </li>
          <li class="cartrPrice">
            <div class="shopcartchangefont shopcartchangefontweight">¥
              7090.00 </div>
          </li>
          <li class="cartPromotion shopcartchangefont"> -
            <input type="hidden" id="discount_4110150" value="0">
          </li>
          <li class="cartAddress mt10">有货</li>
          <li class="cartQuantity">
            <div class="cartQuantityMt clearfix"> <a class="reduce reduceDisable" id="delNum_4110150" href="javascript:void(0);">-</a>
              <input class="numberIn onlyNumInput reduceDisable" id="qty_1" name="qty_1" type="text" size="1" style="width:25px;" value="1" disabled="disabled">
              <a class="increase" id="addNum_4110150" href="javascript:void(0);" onclick="changeItem(&#39;i&#39;,&#39;1&#39;,&#39;4110150&#39;,&#39;&#39;);">+</a>
              <input type="hidden" id="quality_4110150" value="1">
              <input type="hidden" id="inventroy_4110150" value="1">
            </div>
          </li>
          <li class="cartSubtotal c_red shopcartchangefont shopcartchangefontweight">¥
            7090.00
            <input type="hidden" id="totalprice_4110150" value="7090">
          </li>
          <li class="cartOperation">
            <div class="shopcartchangefont"> <a href="javascript:void(0);" onclick="showLogonPage();" class="pr10">收藏</a> <a href="javascript:void(0);" id="delshop_4110150" onclick="deleteFromCart(4110150);">删除</a> </div>
          </li>
        </ol>
        [/#list]
        <script>
var oldOrderId="2229118";
$(document).ready(function () {
	$("ol li.cartCheckbox input[type='checkbox']").attr("checked","checked");
	$("#allcheck").attr("allcheck","allcheck");
	checkedallbox();
	$("#allcheck").click(function(){
		if($("#allcheck").attr("allcheck")!="allcheck"){
			$(".cartCheckbox input[type='checkbox']").attr("checked","checked");
			$("#allcheck").attr("allcheck","allcheck");
			$(".cart-thead ol.clearfix").addClass("selected");
		}
		else{
			$(".cartCheckbox input[type='checkbox']").removeAttr("checked");
			$("#allcheck").removeAttr("allcheck");
			$(".cart-thead ol.clearfix").removeClass("selected");
		}
	
	})
	
	$("ol li.cartCheckbox input[type='checkbox']").click(function(){
		checkedallbox();
	})
	
})

//选中状态
function checkedallbox(){
	var num=$("ol li.cartCheckbox input[type='checkbox']").length;
	var real=0;
	var inventoryNum = 0;
	$("ol li.cartCheckbox input[type='checkbox']").each(function(){
		if($(this).attr("checked")=="checked"){
			var orderitemid = $(this).val();
			inventoryNum += Number($("#inventroy_"+orderitemid).val());
			real++;
		}
	});
	if(num==real){
		$("#allcheck").attr("checked","checked");
		$("#allcheck").attr("allcheck","allcheck");
	}
	else{
		$("#allcheck").removeAttr("checked");
		$("#allcheck").removeAttr("allcheck");
	}
	
	if($(".isLogon").val() != "G"){
		 if(real!=0){
			 if(real==inventoryNum){
			 	$(".qujiesuanBtn").removeClass("disableBtn");
			 	$(".qujiesuanBtn").click(function(){ajaxGetNewOrder('"+$(".OrderId").val()+"')});
			 	//$(".qujiesuanBtn").attr("onclick","ajaxGetNewOrder('"+$(".OrderId").val()+"')")
			 }else{
			 	$(".qujiesuanBtn").addClass("disableBtn");
			 //	$(".qujiesuanBtn").removeAttr("onclick")
			    $(".qujiesuanBtn").unbind('click');
			    document.getElementById("qujiesuan").onclick ="";	
			 }
	 	}
	}
	
	$("div.cart-thead ol.clearfix").each(function(){
		
		if($(this).find("input[type='checkbox']").attr("checked")=="checked"){
			$(this).addClass("selected");
		}
		else{
			$(this).removeClass("selected");
		}
	});
}
$(function(){
	var quality = $("#productQuantity").text();//数量
	var totaldiscount = $("#orderdiscount").text();//优惠
	var totalPrice = $("#ordertotalprice").text();//应付价格
	$("#allcheck").click(function(){
	 	var inventoryNum = 0;
	 	var checkorderitenNum = 0;
		if (!(!!$("#allcheck").attr("checked"))) { 
			$("#productQuantity").text("0");
			$("#orderdiscount").text("0.00");
			$("#ordertotalprice").text("0.00");
			if($(".isLogon").val() != "G"){
				$(".qujiesuanBtn").addClass("disableBtn");
				$(".qujiesuanBtn").unbind('click');
				 document.getElementById("qujiesuan").onclick ="";	
				//$(".qujiesuanBtn").removeAttr("onclick");
			 }
		}else{
			$("#productQuantity").text(quality);
			$("#orderdiscount").text(totaldiscount);
			$("#ordertotalprice").text(totalPrice);
			if($(".isLogon").val() != "G"){
				$("ol li.cartCheckbox input[type='checkbox']").each(function(){
					var orderitemid = $(this).val();
					inventoryNum += Number($("#inventroy_"+orderitemid).val());
					checkorderitenNum ++;
				 });
				 if(checkorderitenNum!=0){
					 if(checkorderitenNum==inventoryNum){
					 	$(".qujiesuanBtn").removeClass("disableBtn");
					 	$(".qujiesuanBtn").click(function(){ajaxGetNewOrder('"+$(".OrderId").val()+"')});
					 	//$(".qujiesuanBtn").attr("onclick","ajaxGetNewOrder('"+$(".OrderId").val()+"')")
					 }else{
					 	$(".qujiesuanBtn").addClass("disableBtn");
					 	$(".qujiesuanBtn").unbind('click');
					 	 document.getElementById("qujiesuan").onclick ="";	
					 	//$(".qujiesuanBtn").removeAttr("onclick")
					 }
			 	}
			}
		}
	});
	 $(".selectorderitem").click(function(){
		 var price = 0;
		 var qua = 0;
		 var discount = 0;
		 var inventoryNum = 0;//有库存的记录数
		 var checkorderitenNum = 0;//选中的记录数
		 $("ol li.cartCheckbox input[type='checkbox']:checked").each(function(){
			var orderitemid = $(this).val();
			qua +=Number($("#quality_"+orderitemid).val());//数量
			discount +=Number($("#discount_"+orderitemid).val());//优惠
			price +=Number($("#totalprice_"+orderitemid).val());//应付价格
			inventoryNum += Number($("#inventroy_"+orderitemid).val());
			checkorderitenNum ++;
		 });
		 if($(".isLogon").val() != "G"){
		 	if(checkorderitenNum!=0){
			 	if(checkorderitenNum==inventoryNum){
				 	$(".qujiesuanBtn").removeClass("disableBtn");
				 	$(".qujiesuanBtn").click(function(){ajaxGetNewOrder('"+$(".OrderId").val()+"')});
				 //	$(".qujiesuanBtn").attr("onclick","ajaxGetNewOrder('"+$(".OrderId").val()+"')")
				 }else{
				 	$(".qujiesuanBtn").addClass("disableBtn");
				 	$(".qujiesuanBtn").unbind('click');
				 	document.getElementById("qujiesuan").onclick ="";	
				 //	$(".qujiesuanBtn").removeAttr("onclick")
				 }
		 	}
			 
		 }
		
		 //商品数量
		 $("#productQuantity").text(qua);
		 //商品优惠
		 discount = parseFloat(discount);              
		 discount = Math.round(discount*100)/100;               
		 discount = discount.toString();               
		 var rs = discount.indexOf('.');               
		 if (rs < 0) {   
			rs = discount.length;                   
		　　discount += '.';   
		 }               
		 while (discount.length <= rs + 2) {   
			 discount += '0';               
		 }
		 $("#orderdiscount").text(discount);
		 //商品应付价格
		 price = parseFloat(price);              
		 price = Math.round(price*100)/100;               
		 price = price.toString();               
		 var rs = price.indexOf('.');               
		 if (rs < 0) {   
			rs = price.length;                   
		　　price += '.';   
		 }               
		 while (price.length <= rs + 2) {   
			 price += '0';               
		 }
		 $("#ordertotalprice").text(price);
	 });
});
</script>
        <!-- END OrderItemDetail.jsp -->
      </div>
      <!-- BEGIN SingleShipmentOrderTotalsSummary1.jsp -->
      <div class="cartjs">
        <ul class="clearfix">
          <li><a class="c_red pl10 mr20" href="javascript:void(0)" onclick="deleteAllFromCart();">清空购物车</a></li>
          <li class="fr pr10">
            <div class="fl"> <em class="txt">已选商品</em> <span class="SelectedItemsCount" id="productQuantity">1</span> <em class="txt">件</em> </div>
            <div class="fl ml20"> <em class="txt">优惠</em> <span class="SelectedItemsCount">¥</span> <span class="SelectedItemsCount" id="orderdiscount"> 0.00 </span> </div>
            <div class="price-sum fl ml30"> <em class="txt">合计(不含运费)：</em> <strong>¥ <b> <span id="ordertotalprice"> 7090.00 </span> </b> </strong> </div>
          </li>
        </ul>
      </div>
      <!-- END SingleShipmentOrderTotalsSummary1.jsp -->
      <div class="clearfix"> <a href="http://mall.gree.com/mall/zh-CN/beijing" class="goshoppingBtn">继续购物</a>
        <input type="hidden" class="isLogon" value="G">
        <input type="hidden" class="OrderId" value="2229118">
        <a class="qujiesuanBtn" id="qujiesuan" href="javascript:void(0);" onclick="showLogonPage();">去结算</a> </div>
  [#--    <div class="cartTuijian mt20 clearfix">
        <h1 class="cartTuijianTitle">为您推荐</h1>
        <a class="prev ml20" onclick="recommendationJS.showNext(-1)"></a>
        <div class="cartTuijianBox fl mt20 mb20">
          <!-- BEGIN XCatalogEntryRecommendationTuijian.jsp -->
          <script>
		recommendationJS.maxProductsToDisplay='4';
		recommendationJS.emsName='CartCategoryListRecommendation';
		recommendationJS.storeId='10651';
		recommendationJS.totalCatentryIds='1515,41,695,1071,855';
		recommendationJS.serverURL='https://mall.gree.com/mall/';
		recommendationJS.ajaxStoreImageDir='/wcsstore/GreeStorefrontAssetStore/';
	</script>
          <!-- BEGIN XCatalogEntryRecommendationTuijian_Horizontal_UI.jspf -->
          <ul class="clearfix pl10" id="recommendation_ajaxReflesh_ul">
            <li>
              <!-- BEGIN RecommendedCatalogEntryDisplay.jspf -->
              <!-- BEGIN CatalogEntryDisplay.jsp -->
              <script>

</script>
              <a class="Img185" id="catalogEntry_img1515" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2fKB284040400&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="格力空调 Q铂 KFR-26GW/(26596)FNAa-A3 变频 冷暖 1匹机 挂壁式空调 12-18平方米适用 白色" target="_blank"> <img src="./购物车1_files/KB284040400_01.jpg" onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);$(this).parent().find(&#39;a&#39;).attr(&#39;href&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);"> </a> <a class="ProTitle185" aria-hidden="true" tabindex="-1" id="WC_CatalogEntryDBThumbnailDisplayJSPF_1515_link_9b" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2fKB284040400&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="格力空调 Q铂 KFR-26GW/(26596)FNAa-A3 变频 冷暖 1匹机 挂壁式空调 12-18平方米适用 白色">格力空调 Q铂 KFR-26GW/(26596)FNAa-A3 变频 冷暖 1匹机 挂壁式空调 12-18平方米适用 白色</a>
              <p class="tc Price185"> ¥2799 </p>
              <!-- END CatalogEntryDisplay.jsp -->
              <!-- END RecommendedCatalogEntryDisplay.jspf -->
            </li>
            <li>
              <!-- BEGIN RecommendedCatalogEntryDisplay.jspf -->
              <!-- BEGIN CatalogEntryDisplay.jsp -->
              <script>

</script>
              <a class="Img185" id="catalogEntry_img41" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2fA3001022400&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="TOSOT 炫灿电磁炉 GC-20XCA 2000W 黑色" target="_blank"> <img src="./购物车1_files/A3001022400_01.jpg" onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);$(this).parent().find(&#39;a&#39;).attr(&#39;href&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);"> </a> <a class="ProTitle185" aria-hidden="true" tabindex="-1" id="WC_CatalogEntryDBThumbnailDisplayJSPF_41_link_9b" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2fA3001022400&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="TOSOT 炫灿电磁炉 GC-20XCA 2000W 黑色">TOSOT 炫灿电磁炉 GC-20XCA 2000W 黑色</a>
              <p class="tc Price185"> ¥199 </p>
              <!-- END CatalogEntryDisplay.jsp -->
              <!-- END RecommendedCatalogEntryDisplay.jspf -->
            </li>
            <li>
              <!-- BEGIN RecommendedCatalogEntryDisplay.jspf -->
              <!-- BEGIN CatalogEntryDisplay.jsp -->
              <script>

</script>
              <a class="Img185" id="catalogEntry_img695" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2f9511276001&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="晶弘冰箱 BCD-630WPDG 对开门冰箱 尚品白" target="_blank"> <img src="./购物车1_files/9511276001_01.jpg" onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);$(this).parent().find(&#39;a&#39;).attr(&#39;href&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);"> </a> <a class="ProTitle185" aria-hidden="true" tabindex="-1" id="WC_CatalogEntryDBThumbnailDisplayJSPF_695_link_9b" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2f9511276001&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="晶弘冰箱 BCD-630WPDG 对开门冰箱 尚品白">晶弘冰箱 BCD-630WPDG 对开门冰箱 尚品白</a>
              <p class="tc Price185"> ¥10999 </p>
              <!-- END CatalogEntryDisplay.jsp -->
              <!-- END RecommendedCatalogEntryDisplay.jspf -->
            </li>
            <li>
              <!-- BEGIN RecommendedCatalogEntryDisplay.jspf -->
              <!-- BEGIN CatalogEntryDisplay.jsp -->
              <script>

</script>
              <a class="Img185" id="catalogEntry_img1071" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2f9511328002&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="晶弘冰箱 BCD-215TC 三门冰箱 雅典银" target="_blank"> <img src="./购物车1_files/9511328002_01.jpg" onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);$(this).parent().find(&#39;a&#39;).attr(&#39;href&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);"> </a> <a class="ProTitle185" aria-hidden="true" tabindex="-1" id="WC_CatalogEntryDBThumbnailDisplayJSPF_1071_link_9b" href="https://mall.gree.com/mall/ClickInfo?URL=http%3a%2f%2fmall.gree.com%2fmall%2fzh-CN%2fbeijing%2f9511328002&evtype=CpgnClick&mpe_id=18601&intv_id=18001&storeId=10651&catalogId=10001&langId=-7" title="晶弘冰箱 BCD-215TC 三门冰箱 雅典银">晶弘冰箱 BCD-215TC 三门冰箱 雅典银</a>
              <p class="tc Price185"> ¥2199 </p>
              <!-- END CatalogEntryDisplay.jsp -->
              <!-- END RecommendedCatalogEntryDisplay.jspf -->
            </li>
          </ul>
          <!-- END XCatalogEntryRecommendationTuijian_Horizontal_UI.jspf -->
          <!-- END XCatalogEntryRecommendationTuijian.jsp -->
        </div>
        <a class="next" onclick="recommendationJS.showNext(1)"></a></div>  --]
      <!-- END ShopCartDisplay.jsp -->
    </div>
  </div>
</div>
 [#include "/shop/include_1/footer.ftl" /]
[#-- 弹出框 --]
<div class="topbackdiv" style="display: none;"></div>
<div class="topBox" style="width:360px; height:160px; margin-left:-180px; margin-top:-80px;display: none;" id="addFailed">
				<h1 class="ln24 topTitle"><span>温馨提示</span></h1>
				<a class="popCloseBtn" onclick="closePrompt('');">X</a>
				<div class="p20 tc mt10"><span class="promptContent" id="errorMsg"></span></div>
</div>
[#-- 尾 --]

</body>
<!-- END OrderItemDisplay.jsp -->
</html>