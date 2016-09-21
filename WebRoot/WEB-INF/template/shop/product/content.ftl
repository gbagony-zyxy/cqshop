<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:wairole="http://www.w3.org/2005/01/wai-rdf/GUIRoleTaxonomy#" xmlns:waistate="http://www.w3.org/2005/07/aaa" lang="zh" xml:lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>潭门砗磲网</title>
<meta name="description" content="潭门砗磲网自主营销砗磲、砗磲项链、砗磲摆件">
<meta name="keywords" content="潭门砗磲网商城、潭门砗磲网、砗磲、砗磲精品、砗磲摆件">
<meta name="pageName" content="HomePage">
<!-- Include script files -->
<!-- BEGIN CommonJSToInclude.jspf -->
<meta name="CommerceSearch" content="storeId_10151">
<link rel="shortcut icon" href="http://mall.gree.com/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico"
 mce_href="/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico">
<script src="${base}/resources/shop/new/hm.js"></script>
<script type="text/javascript">
	// Convert the WCParam object which contains request properties into javascript object
	var WCParamJS = {
		"storeId":'10151',
		"catalogId":'10001',
		"langId":'-7',
		"pageView":'',
		"orderBy":'',
		"orderByContent":'',
		"searchTerm":''
	};
	var absoluteURL = "http://mall.gree.com/mall/";
	var imageDirectoryPath = "/wcsstore/GreeStorefrontAssetStore/";
	var styleDirectoryPath = "images/colors/color1/";
	var supportPaymentTypePromotions = false;
	
	var subsFulfillmentFrequencyAttrName = "fulfillmentFrequency";
	var subsPaymentFrequencyAttrName = "paymentFrequency";
	var subsTimePeriodAttrName = "timePeriod";
	
	var storeNLS = null;
	var storeUserType = "G";
	var ios = false;
	var android = false;
	var multiSessionEnabled = false;
	// Store the amount of time of inactivity before a re-login is required, this value is retrieved from wc-server.xml, default is 30 mins
	var inactivityTimeout = 1800000;
	
	// Store the amount of time the inactivity warning dialog will be displayed before it closes itself, default is 20 seconds
	var inactivityWarningDialogDisplayTimer = 20000;
	
	// Store the amount of time to display a inactivity warning dialog before a re-login is required, default is 30 seconds
	var inactivityWarningDialogBuffer = 30000;
	
	// Store the timing event to display the inactivity dialog
	var inactivityTimeoutTracker = null;

	// Store the timing event to close the inactivity dialog
	var dialogTimeoutTracker = null;
	
	//Summary: Returns the absolute URL to use for prefixing any Ajax URL call.
	//Description: Dojo does not handle the case where the parameters in the URL are delimeted by the "/" forward slash. Therefore, in order to
	//             workaround the issue, all AJAX requests must be done using absolute URLs rather than relative.
	//Returns: The absolute URL to use for prefixing any Ajax URL call.
	function getAbsoluteURL() {
		if (absoluteURL != "") {
			var currentURL = document.URL;
			var currentProtocol = "";
		
			if (currentURL.indexOf("://") != -1) {
				currentProtocol = currentURL.substring(0, currentURL.indexOf("://"));
			}
			
			var savedProtocol = "";
			if (absoluteURL.indexOf("://") != -1) {
				savedProtocol = absoluteURL.substring(0, absoluteURL.indexOf("://"));
			}
			
			if (currentProtocol != savedProtocol) {
				absoluteURL = currentProtocol + absoluteURL.substring(absoluteURL.indexOf("://"));
			}
		}
		
		return absoluteURL;
	}
	//Summary: Returns the path pointing to the shared image directory.
	//Description: In order to get the image directory path in any javascript file, this function can be used.
	//Returns: The path to reference images.
	function getImageDirectoryPath() {
		return imageDirectoryPath;
	}
	//Summary: Returns the path pointing to the directory containing color-dependant image files.
	//Description: In order to get the directory containing color-dependant image files in any javascript file, this function can be used.
	//Returns: The path to reference color-dependant image files.
	function getStyleDirectoryPath() {
		return styleDirectoryPath;
	}
</script>
<script type="text/javascript" src="${base}/resources/shop/new/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/jqScroll.js"></script>
<script type="text/javascript">
$(document).ready(function(){
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

		<!--Main Stylesheet for browser -->

<link rel="stylesheet" type="text/css" href="${base}/resources/shop/new/details.css" />
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/new/jquery.jqzoom.css"/>
<script src="${base}/resources/shop/new/imgTurn.js" type="text/javascript"></script>
<script src="${base}/resources/shop/new/jquery.jqzoom.js" type="text/javascript"></script>
<script type="text/javascript" src="${base}/resources/shop/new/province.js" charset="utf-8"></script>
<script type="text/javascript" src="${base}/resources/shop/new/productDetail.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/addChart.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/AddWishList.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/citysJson.js" charset="utf-8"></script>
<script type="text/javascript" src="${base}/resources/shop/new/city-inventory.js" charset="utf-8"></script>
<script type="text/javascript" src="${base}/resources/shop/new/comment.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/lazyLoad.js"></script>

<!-- END CommonJSToInclude.jspf -->
<!-- menu required -->
<script type="text/javascript">
			//var menueDisplay=false;
			$(function() { 
				shoppingActionsJS.setCommonParameters('-7','10151','10001','G','CNY');
				shoppingActionsServicesDeclarationJS.setCommonParameters('-7','10151','10001');
			});
			//lazyload js
			$(function() {
	          	$("img").lazyload({ 
	    			effect:'fadeIn' 
				});
     		 });
		</script>
<link id="live800_chat_style" type="text/css" rel="stylesheet" href="${base}/resources/shop/new/winSkin.css">
<script id="live800_iframe_message" type="text/javascript" src="${base}/resources/shop/new/messenger.js" charset="UTF-8"></script>
</head>
<body>
<!-- Begin Page -->
<div id="page">
[#include "/shop/include_1/header.ftl" /]
 <!-- BEGIN ProductPageContainer.jsp -->
  <link rel="stylesheet" href="${base}/resources/shop/new/vipcenter.css" type="text/css"/>
  <script type="text/javascript">
	var iframe = document.createElement('iframe');
	iframe.setAttribute('frameborder', '0', 0);
	var getForceLogonPage='https://mall.gree.com/mall/getForceLogonPage?storeId=10151';
	var langId='-7';
	var catalogId='10001';
	var cmdStoreId=$("#hubStoreId").val();
	var parentURL=window.location.href;
     $(function(){
        $("#iframeForce").attr("src",getForceLogonPage+"&langId="+langId+"&catalogId="+catalogId+"&URL="+parentURL+"&cmdStoreId="+cmdStoreId);
    });  
    var urlTag=true;
    $(function() {
         $("img").lazyload({ 
   			effect:'fadeIn' 
		});
     });
</script>
 <div class="wrapper clearfix mt20">
  <div class="preview clearfix">
    <!--中间图片--> 
    <div class="pImginfo">
    [#if product.productImages?has_content]
    <a id="midimgParent" rel="gal1" class="jqzoom" href="${product.productImages[0].large}"><img src="${product.productImages[0].medium}"  onerror="javascript:$(this).attr('src','/wcsstore/GreeStorefrontAssetStore/images/blank.gif');$(this).addClass('errImg');" width="400" height="400" id="midimg" /></a></div>
    [#else]
     <a id="midimgParent" rel="gal1" class="jqzoom" href="${setting.defaultLargeProductImage}"><img src="${setting.defaultMediumProductImage}"  onerror="javascript:$(this).attr('src','/wcsstore/GreeStorefrontAssetStore/images/blank.gif');$(this).addClass('errImg');" width="400" height="400" id="midimg" /></a></div>
    [/#if]
    <!--小图片-->
    <div class="smallList">
    <a class="SmallPrev" href="javascript:void(0);"></a>
      <div id="spec-list">
     	 <ul style="left: 0px;">
           [#if product.productImages?has_content]
              [#list product.productImages as productImage]
				 <li><a [#if productImage_index == 0] class="current" [/#if] href="javascript:void(0);" rel="{gallery: 'gallery', smallimage: '${productImage.medium}', largeimage: '${productImage.large}'}"><img src="${productImage.thumbnail}" title="${productImage.title}" /></a></li>
              [/#list]
           [#else]
               <li><a class="current" href="javascript:void(0);"><img src="${setting.defaultThumbnailProductImage}" onerror="$(this).parent().parent().remove();/></a></li>
		   [/#if] 
		 </ul>  
      </div>
    <a class="SmallNext" href="javascript:void(0);"></a></div>
   </div>
  <div class="productInf">
    <h1>${product.name}</h1>
    <h2>${product.name}</h2>
	    <dl class="mt20">
	      <dt>${message("Product.price")}:</dt>
	      		<dd class="shoujia">${currency(product.marketPrice, true)}</dd>
	      </dl>
    
        <dl>
          <dt>商城价：</dt>
           <dd class="scjia">
			<!-- BEGIN PriceDisplay.jsp -->
				<span id="offerPrice_11" itemprop="price">
				<strong>${currency(product.price, true)}</strong>
				</span>
		   <input type="hidden" id="ProductInfoPrice_11" value="2599">
              <!-- END PriceDisplay.jsp --> 
          </dd>
        </dl>
        <dl>
     	 <dt>已售出：</dt>
         <dd>5台</dd>
        </dl>
        <dl>
         <dt>客户评价：</dt>
        <dd class="pingjia"><em style="width:60px;"></em></dd>
        <dd>已有 0人评价</dd>
        </dl>
<!-- BEGIN Discounts.jsp -->
<!-- END Discounts.jsp -->
    <dl class="mt30 clearfix" style="overflow:visible;">
      <dt>配送：</dt>
      <dd>
      	<div id="addressSel" class="pr  fl">
        	<div class="peisong "><span id="showCity">临夏州</span><a class="peisongbg"></a></div>
	        <div id="changeAddress" style="display:none" class="addresslist">
		         <span>
			          <select size="20" onchange="resetCity('selectProvince');" id="selectProvince">
			            <!-- <option >-请选择-</option>
			           	<option value="34">安徽</option>
						<option value="11">北京</option>
						<option value="50">重庆</option>
						<option value="35">福建</option>
						<option value="52">贵州</option>
						<option value="44">广东</option>
						<option value="62">甘肃</option>
						<option value="45">广西</option>
						<option value="42">湖北</option>
						<option value="41">河南</option>
						<option value="46">海南</option>
						<option value="43">湖南</option>
						<option value="23">黑龙江</option>
						<option value="13">河北</option>
						<option value="36">江西</option>
						<option value="22">吉林</option>
						<option value="32">江苏</option>
						<option value="21">辽宁</option>
						<option value="15">内蒙古</option>
						<option value="64">宁夏</option>
						<option value="63">青海</option>
						<option value="51">四川</option>
						<option value="14">山西</option>
						<option value="31">上海</option>
						<option value="37">山东</option>
						<option value="61">陕西</option>
						<option value="12">天津</option>
						<option value="54">西藏</option>
						<option value="65">新疆</option>
						<option value="53">云南</option>
						<option value="33">浙江</option> -->
			         <option value="-1">-请选择-</option><option value="34">安徽省</option><option value="82">澳门</option><option value="11">北京市</option><option value="50">重庆市</option><option value="35">福建省</option><option value="62" selected="selected">甘肃省</option><option value="45">广西</option><option value="44">广东省</option><option value="52">贵州省</option><option value="46">海南省</option><option value="13">河北省</option><option value="41">河南省</option><option value="23">黑龙江省</option><option value="42">湖北省</option><option value="43">湖南省</option><option value="22">吉林省</option><option value="32">江苏省</option><option value="36">江西省</option><option value="21">辽宁省</option><option value="15">内蒙古</option><option value="64">宁夏</option><option value="63">青海省</option><option value="37">山东省</option><option value="14">山西省</option><option value="61">陕西省</option><option value="31">上海市</option><option value="51">四川省</option><option value="71">台湾省</option><option value="12">天津市</option><option value="54">西藏</option><option value="81">香港</option><option value="65">新疆</option><option value="53">云南省</option><option value="33">浙江省</option></select>
		          </span>
		          <span>
			          <select size="20" id="citySelect" onchange="changeCityOrStore('citySelect')">
			            <option value="-1">-请选择-</option>
			          <option data="62" value="6212">陇南市</option><option data="62" value="6229" selected="selected">临夏州</option><option data="62" value="6230">甘南州</option><option data="62" value="6211">定西市</option><option data="62" value="6210">庆阳市</option><option data="62" value="6209">酒泉市</option><option data="62" value="6208">平凉市</option><option data="62" value="6207">张掖市</option><option data="62" value="6206">武威市</option><option data="62" value="6205">天水市</option><option data="62" value="6204">白银市</option><option data="62" value="6203">金昌市</option><option data="62" value="6201">兰州市</option><option data="62" value="6202">嘉峪关市</option></select>
		          </span> 
	         </div>
         </div>
<!-- BEGIN Distribution.jsp -->
<s class="inventory" id="showInventory">无货</s>
[#--
<script type="text/javascript">
$(document).ready(function(){
	var nowcityId='6229';
	getInventoryByCityId(nowcityId);
});
</script>  --]
<!-- END Distribution.jsp -->

      </dd>
    </dl>
	<script type="text/javascript">
		$("#showCity").html(WC_cityName);
		var searchHost='http://solrweb-srv1.gree.com:3737';
		var contextPath='/search/resources';
		var productId='11';
		var currency='CNY';
	</script>

    <dl class="mt20">
      <dt>购买数量：</dt>
      <dd><span class="reduce reduceDisable" id="reduceNum" onclick="changeQuantity('d')">-</span>
        <input id="buyNum" onblur="changeQuantity('c')" class="numberIn" value="1">
        <span class="increase" onclick="changeQuantity('i')">+</span></dd>
    </dl>
    <script type="text/javascript" src="${base}/resources/shop/new/buttonLite.js"></script>
    <script type="text/javascript" src="${base}/resources/shop/new/bshareC0.js"></script>
       		
    <div class="clearfix"><a class="buyNowBtn" onclick="addShoppingChart(12,'buy')" href="javascript:void(0);">立即购买</a><a class="addCartBtn" href="javascript:void(0);" onclick="addShoppingChart(12,'add')">加入购物车</a></div>
    
    <ul class="share mt20">
      <li><span class="fl">分享到：</span>
      		<div id="shareDiv" class="bshare-custom fl" style="line-height:26px!important;*margin-top:5px;">
      		<a title="分享到QQ空间" class="bshare-qzone"></a>
      		<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
      		<a title="分享到人人网" class="bshare-renren"></a>
      		<a title="分享到腾讯微博" class="bshare-qqmb"></a>
      	</div>
<!-- BEGIN AddCollection.jsp -->
        <a class="shoucang"><b></b><span onclick="toLogonPage();">收藏宝贝</span></a>
<!-- END AddCollection.jsp -->
      </li>
    </ul>
    <div id="forceLogonBg"></div>
    <div id="forceLogonPage" class="f-CPM">
    	<a class="closelogoninfo" href="javascript:void(0);" onclick="hideLogonPage();">×</a>
    	<iframe style="display:block;" width="100%" id="iframeForce" height="500" src="https://mall.gree.com/mall/getForceLogonPage?storeId=10151&amp;langId=-7&amp;catalogId=10001&amp;URL=http://mall.gree.com/mall/zh-CN/greestore/KK050004100&amp;cmdStoreId=10653"></iframe> 
	 </div>
  </div>
</div>
  <script type="text/javascript" charset="utf-8">
 //用户是否登陆状态
  var userType='G'; 
  var pictureUrl=$("#midimg").attr("href"); 
   bShare.addEntry({  
       title: '我在格力电商发现一款新东西',  
       url: window.location.href,  
       summary: "hi，大家好，现在格力官方商城有新款推出，欢迎大家前来一起抢购，超划算家电！",  
       pic: pictureUrl  
   }); 
</script>
    <div class="wrapper clearfix">
    <div class="left">
      <!-- BEGIN GroupSetup.jsp -->
      <div class="leftList">
        <h1>你可能还喜欢</h1>
        <ul>
          <li><a href="#"><img  src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"  onerror="javascript:$(this).addClass('errImg');" /></a><a href="http://mall.gree.com/mall/zh-CN/greestore/KK050004100" title="TOSOT 干衣除湿机 DH20EE 20L 白" class="title">TOSOT 干衣除湿机 DH20EE 20L 白</a>
            <label class="price"> &yen;2599.00 </label>
          </li>
          <li><a href="#"><img  src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"  onerror="javascript:$(this).addClass('errImg');" /></a><a href="http://mall.gree.com/mall/zh-CN/greestore/A3001022400" title="TOSOT 炫灿电磁炉 GC-20XCA 2000W 黑色" class="title">TOSOT 炫灿电磁炉 GC-20XCA 2000W 黑色</a>
            <label class="price"> &yen;199.00 </label>
          </li>
          <li><a href="#"><img  src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"  onerror="javascript:$(this).addClass('errImg');" /></a><a href="http://mall.gree.com/mall/zh-CN/greestore/9511276001" title="晶弘冰箱 BCD-630WPDG 对开门冰箱 尚品白" class="title">晶弘冰箱 BCD-630WPDG 对开门冰箱 尚品白</a>
            <label class="price"> &yen;10999.00 </label>
          </li>
          <li><a href="#"><img  src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"  onerror="javascript:$(this).addClass('errImg');" /></a><a href="http://mall.gree.com/mall/zh-CN/greestore/B6001003200" title="TOSOT 超声波型加湿器 SC-2002 顶 2L 格力白" class="title">TOSOT 超声波型加湿器 SC-2002 顶 2L 格力白</a>
            <label class="price"> &yen;299.00 </label>
          </li>
          <li><a href="#"><img  src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"  onerror="javascript:$(this).addClass('errImg');" /></a><a href="http://mall.gree.com/mall/zh-CN/greestore/KB284040400" title="格力空调 Q铂 KFR-26GW/(26596)FNAa-A3 变频 冷暖 1匹机 挂壁式空调 12-18平方米适用 白色" class="title">格力空调 Q铂 KFR-26GW/(26596)FNAa-A3 变频 冷暖 1匹机 挂壁式空调 12-18平方米适用 白色</a>
            <label class="price"> &yen;2799.00 </label>
          </li>
        </ul>
      </div>
      <div id="contentRecommendationWidget_ProductPageLeftBanner" class="contentRecommendationWidget" >
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <ol class="advertising">
            <li><a href="http://mall.gree.com/mall/zh-CN/zhuhai/jiayongkongtiao/guiji/KH284000100"><img src="/cqshop/resources/shop/new/1.jpg" /></a></li>
            <li><a href="http://mall.gree.com/mall/zh-CN/zhuhai/JinghongRefrigerator/ItalyDoor/9511266001"><img src="/cqshop/resources/shop/new/1.jpg" /></a></li>
            <li><a href="http://mall.gree.com/mall/zh-CN/zhuhai/TOSOTElectricalLife/Humidifier/B6001003200"><img src="/cqshop/resources/shop/new/1.jpg" /></a></li>
          </ol>
        </div>
        <!-- END Content_UI.jspf -->
      </div>
      <!-- END ContentRecommendation_UI.jspf -->
      <!-- END ContentRecommendation.jsp -->
    </div>
    <div class="right">
      <!-- BEGIN MerchandisingAssociations.jsp -->
      <!-- END MerchandisingAssociations.jsp -->
      <!--tab strat-->
      <div class="ProTab clearfix">
        <ul class="ProTabTitle clearfix">
          <li class="hit">产品介绍</li>
          <li>商品评价<span class="c_red" id="commentCount">(0)</span></li>
          <li>规格参数</li>
          <li>售后服务</li>
        </ul>
        <div class="ProTabCon ">
          <div class="jieshao" style="display:block;">
            <table class="jieshaoImg" width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><a id="activityURL" href="#"><img width="750" src="/cqshop/resources/shop/new/1.jpg" onerror="$(this).parent().parent().parent().remove();urlTag=false;" /></a> </td>
              </tr>
              <tr>
                <td>
                [#--<img style="display:none;" src="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/video/video.jpg" onerror="$(this).parent().parent().remove();" />
                  <embed flashvars="file=/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/video/video.jpg&autostart=false" allowfullscreen="true" allowscriptaccess="always" id="player1"
					name="player1" src="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/video/player.swf" width="750" height="500" />
                --]
                </td>
              </tr>
              <tr id="errImgD1"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD1" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD1" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD1" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_01.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD2"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD2" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD2" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD2" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_02.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD3"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD3" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD3" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD3" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_03.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD4"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD4" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD4" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD4" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_04.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD5"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD5" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD5" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD5" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_05.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD6"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD6" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD6" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD6" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_06.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD7"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD7" name="errImg" class="errImg"  data-original="/cqshop/resoureces/new/A3001022400_01.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD7" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD7" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_07.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD8"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD8" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_08.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD8" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD8" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_08.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD9"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD9" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_09.jpg"    onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD9" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImgD9" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_09.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD10"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD10" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_10.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD10" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D10" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_10.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD11"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD11" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_11.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD11" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D11" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_11.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD12"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD12" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_12.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD12" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D12" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_12.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD13"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD13" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_13.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD13" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D13" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_13.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD14"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD14" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_14.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD14" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D14" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_14.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
              <tr id="errImgD15"  >
                <td><img src="/cqshop/resources/new/blank.gif" source="errImgD15" name="errImg" class="errImg"  data-original="/cqshop/resources/new/1.jpg"   onerror="$(this).remove();"  /> <img style="display:none;" id="2errImgD15" src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="2errImg2D15" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/description/A3001022400_15.gif"   onerror="$(this).parent().parent().remove();"  /> </td>
              </tr>
            </table>
            <img src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="imgTag" name="errImg" class="errImg"  data-original="/cqshop/resources/shop/new/1.jpg"   /> </div>
          <script type="text/javascript" charset="utf-8">
	         $(window).load(function() {
	         	if(urlTag){
			        $.getJSON("/wcsstore/GreeStorefrontAssetStore/images/product/A3001022400/activity/href.js", function(data){
			  			$("#activityURL").attr("href",data.src);
					});
		        }
   			}); 
	    </script>
          <div class="ProPingjia hide" id="commentListResultDiv">
            <!-- BEGIN ProductCommentListResult.jsp -->
            <ol class="clearfix">
              <li class="clearfix">
                <div class="user">
                  <div class="userIcon"><img src="${base}/upload/image/user.png"/></div>
                  <div> 138****081 </div>
                </div>
                <div class="ProDetaliCon clearfix">
                  <dl>
                    <dt>商品评分：</dt>
                    <dd>&nbsp;5.0分</dd>
                    <dt>评论内容：</dt>
                    <dd>非常好&nbsp;</dd>
                    <dt>评论日期：</dt>
                    <dd> 2015-02-04 16:00:19
                      
                      &nbsp;</dd>
                    <dt>晒单：</dt>
                    <dd>
                      <ul class="shareImg clearfix">
                        暂无晒单
                      </ul>
                    </dd>
                  </dl>
                </div>
              </li>
            </ol>
            <div class="page"> <a href="javascript:void(0);"class="prevDisble">&lt;&nbsp;上一页</a> <span class="current" onclick="commentToPage(1)">1</span> <a class="prevDisble">下一页&nbsp;&gt;</a> <b class="pageCount">共1页
              <input type="hidden" id="totalPage" value="1"  />
              <input type="hidden" id="totalCount" value="1"  />，到第
              <input  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" class="jumpto" value="1" id="jumptoinput">
              页<a class="jumptoBtn" href="javascript:void(0);" onclick="commentToPage($('#jumptoinput').val())" >确定</a> </b> </div>
            <!-- END ProductCommentListResult.jsp -->
          </div>
          <div class="proCanshu hide">
            <table class="ProTable" cellpadding="0" cellspacing="0" border="0">
              <tr>
                <th colspan="2">主题</th>
              </tr>
              <tr>
                <td class="tdTitle">品牌</td>
                <td>TOSOT</td>
              </tr>
              <tr>
                <td class="tdTitle">颜色</td>
                <td>黑色</td>
              </tr>
              <tr>
                <th colspan="2">功能参数</th>
              </tr>
              <tr>
                <td class="tdTitle">防水功能</td>
                <td>支持</td>
              </tr>
              <tr>
                <td class="tdTitle">面板材质</td>
                <td>黑色微晶面板</td>
              </tr>
              <tr>
                <td class="tdTitle">能效等级</td>
                <td>3级</td>
              </tr>
              <tr>
                <td class="tdTitle">火力档位</td>
                <td>6档</td>
              </tr>
              <tr>
                <td class="tdTitle">操作方式</td>
                <td>按键式</td>
              </tr>
              <tr>
                <td class="tdTitle">预约功能</td>
                <td>不支持</td>
              </tr>
              <tr>
                <th colspan="2">规格参数</th>
              </tr>
              <tr>
                <td class="tdTitle">产品毛重（kg）</td>
                <td>2</td>
              </tr>
              <tr>
                <td class="tdTitle">包装尺寸（mm）</td>
                <td>338*122*417</td>
              </tr>
              <tr>
                <td class="tdTitle">额定功率（w）</td>
                <td>2000</td>
              </tr>
              <tr>
                <td class="tdTitle">额定电压（V）</td>
                <td>220</td>
              </tr>
              <tr>
                <td class="tdTitle">额定频率（HZ）</td>
                <td>50</td>
              </tr>
            </table>
          </div>
          <div class="ProShouhou hide">
            <table cellspacing="0" cellpadding="0" border="1" width="100%" class="RefundAging">
              <tbody>
                <tr>
                  <th width="20%" style="text-align:left">服务名称</th>
                  <th width="60%" style="text-align:left">具体描述</th>
                  <th width="20%" style="text-align:left">备注</th>
                </tr>
                <tr>
                  <td style="text-align:left"><strong class="fb">七天无理由退货</strong></td>
                  <td style="text-align:left">用户购买格力商品7日内（自用户收到商品之日起计算，含7日），在保证商品（含包装和附件）完好未安装使用的前提下，可无理由退货。（部分商品除外，详情请见各商品细则）</td>
                  <td style="text-align:left">详见细则</td>
                </tr>
                <tr>
                  <td style="text-align:left"><strong class="fb">送装一体</strong></td>
                  <td style="text-align:left">1.凡用户从格力商城购买、团购的产品均可享受到免费送货服务，并可以送货上楼、服务入户、送装一体、调试讲解、清理现场等全方位的标准服务（目前仅限大家电）。 <br>
                    2.生活家电享受免费送货到门，但不安装。 </td>
                  <td style="text-align:left">仅对格力商城指定商品</td>
                </tr>
                <tr>
                  <td style="text-align:left"><strong class="fb">到门服务</strong></td>
                  <td style="text-align:left">1.用户购买商品，符合退机条件的，将享受到我们的免费上门取件业务。（详情参考退货条件及各商品细则） <br>
                    2.自商品售出在保修期内，如出现问题，格力将提供免费上门检测或上门维修服务（3C数码产品、生活小家电除外，以商品细则中的服务方式提示为准）； <br>
                    3.服务时间全年无休，随叫随到上门（如遇到停电或自然灾害等不可抗拒因素而造成无法正常处理情况除外）； <br>
                    4.如以上承诺格力商城未做到，除故障商品全额退款外再给予用户格力商城100元优惠券作为补偿。 </td>
                  <td style="text-align:left">仅对格力商城指定商品</td>
                </tr>
              </tbody>
            </table>
            <img src="/wcsstore/GreeStorefrontAssetStore/images/blank.gif" source="imgAfter" name="errImg" class="errImg"  data-original="/wcsstore/GreeStorefrontAssetStore/images/blank.gif"   /> </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 弹出框 -->
  <div class="topbackdiv" style="display:none;"></div>
  <div id="addSuccess" class="topBox" style="width:360px; height:160px; margin-left:-180px; margin-top:-80px;display:none;">
    <h1 class="ln24 topTitle"><span>加入购物车成功</span></h1>
    <a class="popCloseBtn">X</a>
    <div class="p20 tc mt10">购买<span id="addNum">1</span>件商品共计：<span class="en pl5"></span><span class="en c_red pl5" id="totalBuyAmount">199</span></div>
    <div class="clearfix popBtn" style="margin-left:86px;" ><a class="popBuyNowBtn">继续购物</a><a class="pobAddCartBtn ml10">去购物车结算</a></div>
  </div>
  <div id="addFailed" class="topBox" style="width:360px; height:160px; margin-left:-180px; margin-top:-80px;display:none;">
    <h1 class="ln24 topTitle"><span>温馨提示</span></h1>
    <a class="popCloseBtn">X</a>
    <div class="p20 tc mt10"><span id="errorMsg" class="promptContent">库存不足!</span></div>
    <div class="clearfix popBtn"></div>
  </div>
  <!-- END ProductPageContainer.jsp -->
   [#include "/shop/include_1/footer.ftl" /]
    <!-- BEGIN Live800.jsp -->
    <div class="suspensionBox" >
      <div id="live800div"> <a onclick="javascript:$('#live800div').hide();" class="popCloseBtn">X</a>
        <div id='live11'></div>
      </div>
      <a class="toTop" id="roll_top"><s></s>返回顶部</a> </div>
    <script language="javascript" src="http://zxkf.gree.com/zxkf/chatClient/staticButton.js?companyID=8942&configID=11&codeType=steady&info=" charset="UTF-8"></script>
    <script id='write' language="javascript">function writehtml(){var temptext=StaticIcon_generate();document.getElementById('live11').innerHTML=temptext;setTimeout('write.src',9000);}writehtml();</script>
    <script language="javascript" src="http://zxkf.gree.com/zxkf/chatClient/monitor.js?companyID=8942&configID=1&codeType=custom&info=" charset="UTF-8"></script>
    <!-- END Live800.jsp -->
    <!-- END Header.jsp -->
    <!-- END Footer.jsp -->
  </div>
</div>
</body>
<!-- END ProductDisplay.jsp -->
</html>