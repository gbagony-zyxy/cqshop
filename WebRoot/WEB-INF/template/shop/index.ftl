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
  <div id="contentWrapper">
    <!-- BEGIN HomePageContainer.jsp -->
    <link rel="stylesheet" type="text/css" href="${base}/resources/shop/new/chanel.css">
    <script type="text/javascript" src="${base}/resources/shop/new/superslide.2.1.js"></script>
    <script type="text/javascript" src="${base}/resources/shop/new/HomePageContainer.js"></script>
    <!-- 首页轮播广告位 start -->
    <div class="fullSlide">
      <!-- BEGIN ContentRecommendation.jsp -->
      <!-- JSPs References: HomePage.jsp, BundleDisplay.jsp , CategoryNavigationDisplay.jsp, CompareProductsDisplay.jsp
					  DynamicKitDisplay.jsp, PackageDisplay.jsp, ProductDisplay.jsp, 
					  SearchResultDisplay.jsp, SubCategoryPage.jsp, TopCategoryPage.jsp
					   , Footer.jsp , OrderCancelNotify.jsp , OrderCreateNotify.jsp
					  OrderShipmentNotify.jsp, AccountActivationNotify.jsp, PasswordChangeNotify.jsp,
					  PasswordResetNotify.jsp, WishlistCreateNotify.jsp,  LandingPage.jsp, 	
					  ShippingDetailDisplay.jsp, ShopCartDisplay.jsp, StaticContent, 
					  Static JSPs, Footer_UI.jsp, Header_UI.jsp, ProductDescription_UI.jsp  
					  UserTime-->
      <!-- BEGIN ContentRecommendation_UI.jspf -->
      <div id="contentRecommendationWidget_HomePageCMS" class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="bd">
            <ul style="position: relative; width: 1349px; height: 410px;">
            [#--
              <li style="position: absolute; width: 1349px; left: 0px; top: 0px; display: none; background: url(http://mall.gree.com/wcsstore/GreeStorefrontAssetStore/images/banner/banner7.jpg) 50% 0px no-repeat rgb(226, 2, 94);"><a
										href="http://pjgl.gree.com:7901/hjzx/zzbx/bx.jsp"
										onclick="replaceParams(this)" target="_blank"></a></li>
              <li style="position: absolute; width: 1349px; left: 0px; top: 0px; background: url(http://mall.gree.com/wcsstore/GreeStorefrontAssetStore/images/banner/banner1.jpg) 50% 0px no-repeat rgb(226, 2, 94);"><a
										href="http://mall.gree.com/mall/zh-CN/greestore/KH083000100"
										onclick="replaceParams(this)" target="_blank"></a></li>
              <li _src="url(/wcsstore/GreeStorefrontAssetStore/images/banner/banner2.jpg)"
										style="position: absolute; width: 1349px; left: 0px; top: 0px; display: none; background: 50% 0px no-repeat rgb(222, 213, 161);"><a
										href="http://mall.gree.com/mall/zh-CN/greestore/KK050004100"
										target="_blank"></a></li> --]
			  <li _src="url(${base}/resources/shop/images/index/banner1.jpg)"
										style="position: absolute; width: 1349px; left: 0px; top: 0px; display: none; background: 50% 0px no-repeat rgb(222, 213, 161);"><a
										href="http://mall.gree.com/mall/zh-CN/greestore/KK050004100"
										target="_blank"></a></li>
			  <li _src="url(${base}/resources/shop/images/index/banner2.jpg)"
										style="position: absolute; width: 1349px; left: 0px; top: 0px; display: none; background: 50% 0px no-repeat rgb(222, 213, 161);"><a
										href="http://mall.gree.com/mall/zh-CN/greestore/KK050004100"
										target="_blank"></a></li>
			  <li _src="url(${base}/resources/shop/images/index/banner3.jpg)"
										style="position: absolute; width: 1349px; left: 0px; top: 0px; display: none; background: 50% 0px no-repeat rgb(222, 213, 161);"><a
										href="http://mall.gree.com/mall/zh-CN/greestore/KK050004100"
										target="_blank"></a></li>
           
            </ul>
          </div>
          <div class="hd">
            <ul>
              <li class="">1</li>
              <li class="on">2</li>
              <li>3</li>
              <li>4</li>
              <li>5</li>
              <li>6</li>
              <li>7</li>
            </ul>
          </div>
          <span class="prev" style="opacity: 0.5; display: none;"></span> <span
								class="next" style="opacity: 0.5; display: none;"></span> </div>
        <!-- END Content_UI.jspf -->
      </div>
      <!-- END ContentRecommendation_UI.jspf -->
      <!-- END ContentRecommendation.jsp -->
    </div>
    <script type="text/javascript" src="${base}/resources/shop/new/Slide.js"></script>
    <!-- 首页轮播广告位 end -->
    <div class="wrapper">
      <!-- 活动推荐 start -->
      <!-- BEGIN ContentRecommendation.jsp -->
      <!-- JSPs References: HomePage.jsp, BundleDisplay.jsp , CategoryNavigationDisplay.jsp, CompareProductsDisplay.jsp
					  DynamicKitDisplay.jsp, PackageDisplay.jsp, ProductDisplay.jsp, 
					  SearchResultDisplay.jsp, SubCategoryPage.jsp, TopCategoryPage.jsp
					   , Footer.jsp , OrderCancelNotify.jsp , OrderCreateNotify.jsp
					  OrderShipmentNotify.jsp, AccountActivationNotify.jsp, PasswordChangeNotify.jsp,
					  PasswordResetNotify.jsp, WishlistCreateNotify.jsp,  LandingPage.jsp, 	
					  ShippingDetailDisplay.jsp, ShopCartDisplay.jsp, StaticContent, 
					  Static JSPs, Footer_UI.jsp, Header_UI.jsp, ProductDescription_UI.jsp  
					  UserTime-->
      <!-- END ContentRecommendation.jsp -->
      <!-- 活动推荐 end -->
      <!-- 限时抢购 start -->
      <div class="xianshi mt10">
        <!-- BEGIN XHomePagePanic.jsp -->
        <!-- 倒计时 js start -->
        <script type="text/javascript" src="${base}/resources/shop/new/CountDown.js"></script>
        <!-- 倒计时 js end -->
        <ol class="clearfix mt10">
          <li class="pr xianshiTitle"><b></b><s>限时抢购</s></li>
          <li class="p-countdown clearfix" id="panicTime">
            <input id="endTime" type="hidden" value="2015-03-16 23:59:00.001">
            <strong>还剩</strong><span class="hour">240</span> <em>:</em><span
									class="minute">55</span><em>:</em><span class="second">58</span><strong>结束</strong></li>
        </ol>
        <ul class="xianshiCon">
         [@product_list tagIds = 2 count = 4]
          [#list products as product]
          <li><a class="xianshiConImg fl mr10" href="{base}${product.path}"><img src="${base}/resources/shop/new/1.jpg"
									class="errImg"
									data-original="${product.image}"
									onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"
									style="display: inline;"> </a>
              <div class="fl"><a href="http://mall.gree.com/mall/zh-CN/greestore/A3001022400"
										title="${product.name}" class="title">${product.name}</a>
              <label class="price mt5"> ¥199.00 </label>
              <del class="yuanjia mt5"> ¥199.00 </del><a href="${base}${product.path}"><span
										class="qiangouBtn mt10">立即抢购</span></a> </div>
          </li>
           [/#list]
          [/@product_list]
        </ul>
      </div>
      <!-- 限时抢购 end -->
      <!-- 热销推荐 start -->
      <div class="rexiao mt10 pr">
        <!-- BEGIN GroupSetup.jsp -->
        <ul class="clearfix">
        [@product_list tagIds = 2 count = 4]
          [#list products as product]
          <li><a class="rexiaoImg" href="${base}${product.path}"> <img src="${base}/resources/shop/new/blank.gif" class="errImg"
									data-original="${product.image}"
									onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"> </a> <a href="http://mall.gree.com/mall/zh-CN/greestore/A8005002400"
								title="${product.name}" class="title">${product.name}</a>
            <label class="price mt5"> ¥199.00 </label>
          </li>
          [/#list]
          [/@product_list]
        </ul>
        <div class="rexiaoBg">热销推荐</div>
      </div>
      <!-- 热销推荐 end -->
    </div>
    <div class="wrapper floor1 mt10 clearfix">
      <div id="contentRecommendationWidget_HomePageWindow1FLink"
						class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clearfix floorCon"> <b class="floorConBg"></b>
            <h1 class="floorTitle fl"> <span>精品专区</span> </h1>
            <a
									href="http://mall.gree.com/mall/zh-CN/greestore/channel/HouseholdAirConditioner/10005"
									class="more fr">查看更多&nbsp;&gt;</a> </div>
        </div>
      </div>

      <div id="contentRecommendationWidget_HomePageWindow1FPicture"
						class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clear"></div>
          <a
								href="http://mall.gree.com/mall/zh-CN/greestore/channel/HouseholdAirConditioner/10005"
								class="floorConLeft"><img
								src="${base}/resources/shop/new/indexFloor1.jpg"></a> </div>
        <!-- END Content_UI.jspf -->
      </div>
      <!-- END ContentRecommendation_UI.jspf -->
      <!-- END ContentRecommendation.jsp -->
      <div class="floorConRight">
        <!-- BEGIN GroupSetup.jsp -->
        <div class="floorConRight">
          <ul>
        [@product_list tagIds = 2 count = 4]
          [#list products as product]
            <li><a href="${base}${product.path}"
				   title="${product.name}"
				   class="title m20viga">${product.name}</a>
              <label class="price m20viga"> ¥2799.00 </label>
              <a href="${base}${product.path}"
				 class="floorConRightImg">
				 <img src="${base}/resources/shop/new/blank.gif" class="errImg"
					  data-original="${product.image}"
					  onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"></a> </li>
                  [/#list]
          [/@product_list]
          </ul>
        </div>
      </div>
    </div>
    <div class="wrapper floor2 mt10 clearfix">
      <div id="contentRecommendationWidget_HomePageWindow2FLink"
						class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clearfix floorCon"> <b class="floorConBg"></b>
            <h1 class="floorTitle fl"> <span>情侣专区</span> </h1>
            <a target="_blank" href="http://mall.gree.com/mall/zh-CN/greestore/channel/TOSOTElectricalLife/10009"
			   class="more fr">查看更多&nbsp;&gt;</a> </div>
        </div>
        <!-- END Content_UI.jspf -->
      </div>
      <div id="contentRecommendationWidget_HomePageWindow2FPicture" class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clear"></div>
          <a href="http://mall.gree.com/mall/zh-CN/greestore/channel/TOSOTElectricalLife/10009"
			 class="floorConLeft"><img src="${base}/resources/shop/new/indexFloor2.jpg"></a> </div>
      </div>
      <!-- END ContentRecommendation_UI.jspf -->
      <!-- END ContentRecommendation.jsp -->
      <!-- BEGIN GroupSetup.jsp -->
      <div class="floorConRight">
        <ul>
            [@product_list tagIds = 2 count = 4]
          [#list products as product]
            <li><a href="${base}${product.path}"
				   title="${product.name}"
				   class="title m20viga">${product.name}</a>
              <label class="price m20viga"> ¥2799.00 </label>
              <a href="${base}${product.path}"
				 class="floorConRightImg">
				 <img src="${base}/resources/shop/new/blank.gif" class="errImg"
					  data-original="${product.image}"
					  onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"></a> </li>
                  [/#list]
          [/@product_list]
        </ul>
      </div>
    </div>
    <div class="wrapper floor3 mt10 clearfix">
      <div id="contentRecommendationWidget_HomePageWindow3FLink"
						class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clearfix floorCon"> <b class="floorConBg"></b>
            <h1 class="floorTitle fl"><span>贵夫人专区</span> </h1>
            <a href="http://mall.gree.com/mall/zh-CN/greestore/channel/JinghongRefrigerator/10001" class="more fr">查看更多&nbsp;&gt;</a> </div>
        </div>
        <!-- END Content_UI.jspf -->
      </div>
      <div id="contentRecommendationWidget_HomePageWindow3FPicture" class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clear"></div>
          <a href="http://mall.gree.com/mall/zh-CN/greestore/channel/JinghongRefrigerator/10001"
								class="floorConLeft"><img src="${base}/resources/shop/new/indexFloor3.jpg"></a> 
			</div>
        <!-- END Content_UI.jspf -->
      </div>
      <div class="floorConRight">
        <ul>
             [@product_list tagIds = 2 count = 4]
          [#list products as product]
            <li><a href="${base}${product.path}"
				   title="${product.name}"
				   class="title m20viga">${product.name}</a>
              <label class="price m20viga"> ¥2799.00 </label>
              <a href="${base}${product.path}"
				 class="floorConRightImg">
				 <img src="${base}/resources/shop/new/blank.gif" class="errImg"
					  data-original="${product.image}"
					  onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"></a> </li>
                  [/#list]
          [/@product_list]
        </ul>
      </div>
    </div>
    <div class="wrapper floor4 mt10 clearfix">
    <div id="contentRecommendationWidget_HomePageWindow4FLink" class="contentRecommendationWidget">
        <div class="left_espot">
          <div class="clearfix floorCon"> <b class="floorConBg"></b>
            <h1 class="floorTitle fl"> <span>热销专区</span> </h1>
            <a target="_blank" href="http://mall.gree.com/mall/zh-CN/greestore/channel/AirWaterHeater/10502" class="more fr">查看更多&nbsp;&gt;</a> 
          </div>
        </div>
        <!-- END Content_UI.jspf -->
      </div>
      <!-- END ContentRecommendation_UI.jspf -->
      <!-- END ContentRecommendation.jsp -->
      <!-- BEGIN ContentRecommendation.jsp -->
      <!-- JSPs References: HomePage.jsp, BundleDisplay.jsp , CategoryNavigationDisplay.jsp, CompareProductsDisplay.jsp
					  DynamicKitDisplay.jsp, PackageDisplay.jsp, ProductDisplay.jsp, 
					  SearchResultDisplay.jsp, SubCategoryPage.jsp, TopCategoryPage.jsp
					   , Footer.jsp , OrderCancelNotify.jsp , OrderCreateNotify.jsp
					  OrderShipmentNotify.jsp, AccountActivationNotify.jsp, PasswordChangeNotify.jsp,
					  PasswordResetNotify.jsp, WishlistCreateNotify.jsp,  LandingPage.jsp, 	
					  ShippingDetailDisplay.jsp, ShopCartDisplay.jsp, StaticContent, 
					  Static JSPs, Footer_UI.jsp, Header_UI.jsp, ProductDescription_UI.jsp  
					  UserTime-->
      <!-- BEGIN ContentRecommendation_UI.jspf -->
      <div id="contentRecommendationWidget_HomePageWindow4FPicture"
						class="contentRecommendationWidget">
        <!-- BEGIN Content_UI.jspf -->
        <div class="left_espot">
          <div class="clear"></div>
          <a href="http://mall.gree.com/mall/zh-CN/greestore/channel/AirWaterHeater/10502" class="floorConLeft"><img
			 src="${base}/resources/shop/new/indexFloor5.jpg"></a> </div>
        <!-- END Content_UI.jspf -->
      </div>
      <div class="floorConRight">
        <ul>
             [@product_list tagIds = 2 count = 4]
          [#list products as product]
            <li><a href="${base}${product.path}"
				   title="${product.name}"
				   class="title m20viga">${product.name}</a>
              <label class="price m20viga"> ¥2799.00 </label>
              <a href="${base}${product.path}"
				 class="floorConRightImg">
				 <img src="${base}/resources/shop/new/blank.gif" class="errImg"
					  data-original="${product.image}"
					  onerror="javascript:$(this).attr(&#39;src&#39;,&#39;/wcsstore/GreeStorefrontAssetStore/images/blank.gif&#39;);$(this).addClass(&#39;errImg&#39;);"></a> </li>
                  [/#list]
          [/@product_list]
          </ul>
      </div>
    </div>
    <div class="wrapper floor5 mt10 clearfix"></div>
    <div class="wrapper floor6 mt10 clearfix"></div>
  </div>
  [#--
[#include "/shop/include/footer.ftl" /] --]
</div>
<!-- END TopCategoriesDisplay.jsp -->
<div id="InviteWindow" style="z-index: 2147483647; visibility: hidden;"></div>
<iframe id="lim_frame" height="0" width="0" src="about:blank" style="display: none;"></iframe>
<div id="lim:sharedObject" style="position: absolute; z-index: -3; top: -10px; left: -10px;">
  <iframe name="lim:share" height="0" width="0" src="${base}/resources/shop/new/shared.htm"></iframe>
</div>
<div id="live800_chat_nav" class="live800_chat_nav live800_bottom_right" title="" style="display: none;">
  <div id="live800_innerChat_toolbar" class="live800_innerChat_toolbar">
    <div class="live800_innerChat_bg">
      <div class="live800_innerChat_area live800_bottom_right" id="live800_innerChat_area">
        <div class="doudou" style="background-image: url(http://zxkf.gree.com/zxkf/chatClient/refactor/style/theme/default/inner/inner-blue/images/doudou_on_right.png);"></div>
        <div class="live800_icon_Button" id="live800_icon_Button" isopen="false" onclick="return false;"> <span class="live800_button" id="live800_chat_But"><i
			 class="live800_chat_icon live800_online">点击我，回答您的问题</i></span> </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
