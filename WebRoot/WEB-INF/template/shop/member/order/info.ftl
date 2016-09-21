<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- BEGIN CommonJSToInclude.jspf -->
<meta name="CommerceSearch" content="storeId_10651" />
<link rel="shortcut icon" href="/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico" mce_href="/wcsstore/GreeStorefrontAssetStore/images/icon-favicon.ico"/>
<script type="text/javascript">
	// Convert the WCParam object which contains request properties into javascript object
	var WCParamJS = {
		"storeId":'10651',
		"catalogId":'10001',
		"langId":'-7',
		"pageView":'',
		"orderBy":'',
		"orderByContent":'',
		"searchTerm":''
	};
	var absoluteURL = "https://mall.gree.com/mall/";
	var imageDirectoryPath = "/wcsstore/GreeStorefrontAssetStore/";
	var styleDirectoryPath = "images/colors/color1/";
	var supportPaymentTypePromotions = false;
	
	var subsFulfillmentFrequencyAttrName = "fulfillmentFrequency";
	var subsPaymentFrequencyAttrName = "paymentFrequency";
	var subsTimePeriodAttrName = "timePeriod";
	
	var storeNLS = null;
	var storeUserType = "R";
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
<script>
	var storeId = "10651";
	var catalogId = "10001";
	var langId = "-7";
	var jspStoreImgDir = "/wcsstore/GreeStorefrontAssetStore/";
</script>
<!DOCTYPE HTML>
<!-- BEGIN OrderShippingBillingDetails.jsp -->
<html xmlns="http://www.w3.org/1999/xhtml"
xmlns:wairole="http://www.w3.org/2005/01/wai-rdf/GUIRoleTaxonomy#"
xmlns:waistate="http://www.w3.org/2005/07/aaa" lang="zh" xml:lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>提交订单</title>
<link rel="stylesheet" type="text/css" href="${base}/resources/shop/new/chanel.css" />
<script type="text/javascript" src="${base}/resources/shop/new/ShopCart2.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/cookie.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/userUtil.js"></script>
<script type="text/javascript" src="${base}/resources/shop/new/WdatePicker.js"></script>
<script type="text/javascript">
	var WCParamJS = {
		"storeId":'10651',
		"catalogId":'10001',
		"langId":'-7'
	};
   //处理键盘事件 禁止后退键（Backspace）密码或单行、多行文本框除外  
      function forbidBackSpace(e) {  
           var ev = e || window.event; //获取event对象   
           var obj = ev.target || ev.srcElement; //获取事件源   
           var t = obj.type || obj.getAttribute('type'); //获取事件源类型   
           //获取作为判断条件的事件类型   
           var vReadOnly = obj.readOnly;  
        //   var vDisabled = obj.disabled;  
           //处理undefined值情况   
           vReadOnly = (vReadOnly == undefined) ? false : vReadOnly;  
        //   vDisabled = (vDisabled == undefined) ? true : vDisabled;  
           //当敲Backspace键时，事件源类型为密码或单行、多行文本的，   
           //并且readOnly属性为true或disabled属性为true的，则退格键失效   
           var flag1 = ev.keyCode == 8 && t == "text"  && vReadOnly == true ;  
           //当敲Backspace键时，事件源类型非密码或单行、多行文本的，则退格键失效   
         //  var flag2 = ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea";  
           //判断   
            if (flag1) {
        		return false;
            }  
        }  
        //禁止后退键 作用于Firefox、Opera  
        document.onkeypress = forbidBackSpace;  
        //禁止后退键  作用于IE、Chrome  
        document.onkeydown = forbidBackSpace;  
</script>
</head>
<body >
<input class="needStoreId" value="10653" type="hidden">
</input>
<!--头  -->
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
  <script>var isGuest = false;</script>
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
  <input class="logonoffurl" value="https://mall.gree.com/mall/Logoff?catalogId=10001&langId=-7&storeId=10651&URL=LogonForm" type="hidden">
  </input>
  <div class="shortcut">
    <div class="topbarbgcolor clearfix">
      <div class="wrapper">
        <ul class="quickMenu fl clearfix">
          <li class="pr topShoucang"><b></b><a href="javascript:void(0)">收藏我们</a></li>
        </ul>
        <ul class="fr topNav">
          <li class="logon pr">您好，欢迎光临格力网上商城! <a id="myAccountQuickLink" href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&amp;position=7&amp;langId=-7&amp;storeId=10651" title="">
            <script type="text/javascript">$("#myAccountQuickLink").html(WC_nickName);$("#myAccountQuickLink").attr("title",WC_nickName);</script>
            </a> <a id="signInOutQuickLink" href="javascript:void(0);" onclick="logonoff();">注销</a> </li>
          <li class="pr"><a href="http://www.gree.com/" target="_blank" >格力官网</a><em></em></li>
          <li class="pr appSC"><a href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10651" >会员中心</a><em></em><b></b>
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
  <div class="suspensionBox" > <a class="toTop" id="roll_top"><s></s>返回顶部</a> </div>
  <div class="topbackdiv loaddivback" style="display: none;"></div>
  <!--外面的黑背景-->
  <div id="loadingPage" class="loaddivinfo" style="display: none;">数据加载中, 请稍等...</div>
  <!--laoding-->
  <!-- END Header.jsp -->
</div>
<!--购物流程-->
<div class="wrapper mt10">
  <div class="cartHeader clearfix"><a class="logo" href="http://mall.gree.com/mall/zh-CN/beijing"><img src="/wcsstore/GreeStorefrontAssetStore/images/logo.png"></a>
    <div class="cartStep2">我的购物车 </div>
  </div>
</div>
<div class="wrapper mt20">
<!-- BEGIN ShippingDetailsDisplay.jsp -->
<input type="hidden" class="productType" value="2">
<input type="hidden" class="orderId" value="2267008" />
<input type="hidden" class="addressId" value="">
</input>
<div class="checkout">
<div class="userinfo">
  <input class="oldAddress" type="hidden" value="">
  </input>
  <input class="provId" type="hidden" value="11">
  </input>
  <input class="cityId" type="hidden" value="110">
  </input>
  <h2>收货信息</h2>
  <div class="address" id="address_info">
    <ul class="clearfix mt10">
      <li>
        <input class="addressXZ" type="radio" name="addressRadio" value="1052236" id="1052236" onclick="javascript:chooseAddress('')" />
        <label class="addressXZMsg" for="1052236"> <b>张三</b> 北京市北京市房山区11111111111&nbsp;&nbsp;
        <input class="issend1052236" type="hidden" value="1">
        </input>
        <input class="issend1052236" type="hidden" value="1">
        </input>
        <input class="standartCharge1052236" type="hidden" value="0.00">
        </input>
        <input class="cityCharge1052236" type="hidden" value="0.00">
        </input>
        13111111111 </label>
        <span class="addressEdtBtn ml30"> <a id="editAddress1052236" href="javascript:void(0);" class="familychange" onclick="editAddress('1052236')">编辑</a> <a id="deleteAddress1052236" href="javascript:void(0);" class="familychange" onclick="deleteAddress('1052236')">删除</a> </span> </li>
    </ul>
    <div class="clearfix"><a href="javascript:void(0)" class="newAddressBtn mt10" onclick="javascript:addAddress('new')">使用新地址</a></div>
    <div class="addressinfoaddoredit" style="display: none;">
      <ul class="clearfix mt10">
        <li>
          <label class="labItem w85"><span class="bitian">*</span>收货人姓名：</label>
          <input type="text" class="w200 checkoutText" id="ordername"/>
          <span class="cueWords fl c_red" id="consigneeErrMsg"></span> </li>
        <li>
          <label class="labItem w85"><span class="bitian">*</span>手机：</label>
          <input type="text" class="w200 checkoutText onlyNumInput"  id="orderMobile" maxlength="11"/>
          <span class="cueWords fl c_red" id="phoneErrMsg"></span> </li>
        <li>
          <label class="labItem w85"><span class="bitian">&nbsp;</span>邮政编码：</label>
          <input type="text" class="w200 checkoutText onlyNumInput" id="ordercode" maxlength="6"/>
          <span class="cueWords fl c_red" id="zipCodeErrMsg"></span> </li>
        </li>
        <li>
          <label class="labItem w85"><span class="bitian">*</span>所在地区：</label>
          <strong class="labItem pr5">北京市&nbsp;&nbsp;北京市</strong> <span class="addressSel">
          <select id="districtSelect" name="district" class="require">
            <option value="">请选择区</option>
            <option value="110111">房山区</option>
            <option value="110101">东城区</option>
            <option value="110112">通州区</option>
            <option value="110102">西城区</option>
            <option value="110113">顺义区</option>
            <option value="110114">昌平区</option>
            <option value="110115">大兴区</option>
            <option value="110105">朝阳区</option>
            <option value="110116">怀柔区</option>
            <option value="110117">平谷区</option>
            <option value="110106">丰台区</option>
            <option value="110228">密云县</option>
            <option value="110107">石景山区</option>
            <option value="110229">延庆县</option>
            <option value="110108">海淀区</option>
            <option value="110109">门头沟区</option>
          </select>
          </span> <span class="cueWords fl c_red" id="registAddressErrMsg"></span> </li>
        <li>
          <label class="labItem w85"><span class="bitian">*</span>详细地址</label>
          <input type="text" id="detailAddress" class=" w300 checkoutText" />
          <span class="cueWords fl c_red" id="detailAddressErrMsg"></span> </li>
        <li>
          <label class="labItem w85">&nbsp;</label>
          <a href="javascript:void(0);" class="addressBCBtn" onclick="javascript:saveAdrInfo();">保存</a> <a href="javascript:void(0);" class="addressQXBtn ml20" onclick="javascript:cancleAdrInfo();">取消</a> </li>
      </ul>
    </div>
  </div>
  <script>
	var addressNum = 1;
	var primaryAddressId = 0;
</script>
</div>
<div class="sendInfo">
<h2>配送相关</h2>
<ul class="cartPeisong clearfix">
<li class="clearfix">
  <input id="peisong1" class="cartRadio" type="radio" checked="checked" />
  <label class="cartLabel" for="peisong1">标准配送：</label>
  <span class="ln24 fl">您的预期时间</span>
  <input class="checkoutText w100 ml10" id="sendTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd' ,minDate:'%y-%M-%d'})"  type="text" readonly="readonly" />
</li>
</div>
<h2>发票相关</h2>
<div class="fapiao clearfix">
  <div class="clearfix">
    <p class="clearfix">
      <input class="cartCheck" id="fapiao"  type="checkbox" onclick="needinvoice();"/>
      <label class="ln24 fl" for="fapiao">我要发票</label>
    </p>
    <div class = "invoiceType" style="display: none;">
      <ul>
        <li>
          <input class="cartRadio" value = "11" id="fapiao1" type="radio" name="fapiao" onclick="chooseinvoice();"/>
          <label class="ln24 fl" for="fapiao1">普通发票</label>
        </li>
        <li>
          <input class="cartRadio" value = "12" id="fapiao2"  type="radio" name="fapiao" onclick="chooseinvoice();"/>
          <label class="ln24 fl" for="fapiao2">增值税发票</label>
        </li>
      </ul>
    </div>
  </div>
  <div class="invoiceEle mt10 clearfix ml20 " id="11" style="display: none;"> <span class="fl ln24 mr10">发票抬头：</span>
    <input class="cartRadio people" id="fapiao1" type="radio" name="fapiaotype" value="person" checked="checked"/>
    <label class="ln24 fl" for="fapiao1">个人</label>
    <input class="cartRadio ml10 company" id="fapiao1" type="radio" name="fapiaotype" value="company"/>
    <label class="ln24 fl" for="fapiao1">单位</label>
    <div class="contenttitle" style="display: none;">
      <input type="text" class="w200 ml10 checkoutText" id="invoiceContantText" maxlength="20"/>
      <span class="cueWords fl" id="invoiceContexterror">发票抬头只能包含中文、字母跟数字</span> </div>
  </div>
  <div class="invoiceTax ml20"  id="12" style="display:none;">
    <ol class="clearfix mt10">
      <li>
        <label class="labItem w100"><span class="bitian">*</span>公司名称：</label>
        <input type="text" class="w200 checkoutText" id="companyName" maxlength="30"/>
        <span class="cueWords fl" id="companyNameerror">公司名称只能包含中文跟字母，最大长度30位</span> </li>
      <li>
        <label class="labItem w100"><span class="bitian">*</span>纳税人识别号：</label>
        <input type="text" class="w200 checkoutText" id="userNumber" maxlength="30" />
        <span class="cueWords fl" id="userNumbererror">纳税人识别号只能包含数字、字母、中文，最大长度30位</span> </li>
      <li>
        <label class="labItem w100"><span class="bitian">*</span>注册地址：</label>
        <input type="text" class="w200 checkoutText" id="registAddress" maxlength="30" />
        <span class="cueWords fl" id="registAddresserror">注册地址只能包含数字、字母、中文#以及-，最大长度30位</span> </li>
      <li>
        <label class="labItem w100"><span class="bitian">*</span>注册电话：</label>
        <input type="text" class="w200 checkoutText onlyNumInput" id="registTel" maxlength="11" />
        <span class="cueWords fl" id="registTelerror" >注册电话只能包含数字，最大长度11位</span> </li>
      <li>
        <label class="labItem w100"><span class="bitian">*</span>开户银行：</label>
        <input type="text" class="w200 checkoutText" id="bankName" maxlength="10"/>
        <span class="cueWords fl" id="bankNameerror">开户银行只能包含中文，最大长度10位</span> </li>
      <li>
        <label class="labItem w100"><span class="bitian">*</span>开户帐号：</label>
        <input type="text" class="w200 checkoutText  onlyNumInput" id="bankNum" maxlength="20" />
        <span class="cueWords fl" id="bankNumerror" >开户帐号只能包含数字，最多长度20位</span> </li>
    </ol>
  </div>
</div>
<div class="ordermsg">
  <!-- BEGIN OrderItemDetail.jsp -->
  <h2>商品摘要</h2>
  <div class="stepContent">
    <div class="cart-thead ">
      <ul class="clearfix">
        <li class="tc w458">商品</li>
        <li class="tc w120">单价</li>
        <li class="tc w120">优惠</li>
        <li class="tc w120">数量</li>
        <li class="tc w120">小计</li>
      </ul>
      <input type="hidden"
				value='4305009'
				name='orderItem_1'
				id='orderItem_1' />
      <input type="hidden"
				value='82'
				name='catalogId_1'
				id='catalogId_1' />
      <tr>
        <ol class="clearfix">
          <li class="tc w458"> <a href="http://mall.gree.com/mall/zh-CN/beijing/A8005002400"  class="pImg" id="catalogEntry_img_4305009" title="TOSOT 机械电饭煲GDF-2001 2L 白"> <img width="60" height="60" alt="TOSOT 机械电饭煲GDF-2001 2L 白" src="/wcsstore/GreeStorefrontAssetStore/images/product/A8005002400/60X60/A8005002400_01.jpg" onerror="javascript:$(this).attr('src','/wcsstore/GreeStorefrontAssetStore/images/blank.gif');$(this).addClass('errImg');"/> </a> <a href="http://mall.gree.com/mall/zh-CN/beijing/A8005002400" class="pNames fl"> TOSOT 机械电饭煲GDF-2001 2L 白 </a> </li>
          <li class="tc w120">
            <div class="shopcartchangefont shopcartchangefontweight">
            ¥
            199.00 </li>
          <li class="tc w120">
            <div class="shopcartchangefont "> - </div>
          </li>
          <li class="tc w120">
            <div class="shopcartchangefont ">
              <input type="hidden"value='4305009'name='orderItemId_1'id='orderItemId_1' />
              3 </div>
          </li>
          <li class="tc w120 c_red">
            <div class="shopcartchangefont ">¥
              
              
              
              
              597.00 </div>
          </li>
        </ol>
      </tr>
    </div>
  </div>
  <!-- 礼品卡 -->
  <!-- 优惠券 -->
  <!-- 积分 -->
  <div class="orderCoupon mt20 clearfix">
    <ul class="clearfix fl">
      <li>
        <label class="labItem w85">促销代码：</label>
        <input  class="w200 checkoutText" type="text" id="coupon"/>
        <a class="CouponBtn" href="javascript:void(0);" onclick="usePromotion()">使用</a> </li>
      <li>
        <label class="labItem w85">使用积分：</label>
        <input type="text" class="w200 checkoutText onlyNumInput orderUsedPoint">
        <a class="CouponBtn usePoint" onclick="usePoint();"  href="javascript:void(0)">使用</a>
        <p style=" margin-left:85px; padding-top:3px;" class="c_999">（你有
          
          0.00
          
          
          积分）</p>
      </li>
      <li>
        <label class="labItem w85">订单备注：</label>
        <textarea class="w200 checkoutTxtArea" id="remarks"></textarea>
      </li>
    </ul>
    <ol class="clearfix fl">
      <li>
        <label class="labItem w120 tr"> 3件商品金额总计： </label>
        <span class="ln24 fl myfontfamilytt">&yen;
        
        597.00 </span> </li>
      <li>
        <label class="labItem w120 tr">优惠：</label>
        <span class="ln24 fl myfontfamilytt">&yen;
        
        0.00 </span> </li>
      <li>
        <label class="labItem w120 tr">积分抵现：</label>
        <span class="ln24 fl myfontfamilytt">&yen;
        
        0.00 </span> </li>
      <li>
        <label class="labItem w120 tr">运费：</label>
        <span class="ln24 fl">&yen; <span class="span_shipping"> 0.00 </span> </span> </li>
      <li>
        <label class="labItem w120 tr">总计：</label>
        <span class="ln24 fl ft18b c_red">&yen; <span class="payprice ln24 ft18b c_red"> 597.00 </span> </span> </li>
    </ol>
    div>
    <div class="clearfix"> <a href="https://mall.gree.com/mall/OrderCalculate?cmdStoreId=10653&calculationUsageId=-1&updatePrices=1&catalogId=10001&errorViewName=AjaxOrderItemDisplayView&orderId=.&langId=-7&originalStoreId=10651&storeId=10651&URL=AjaxOrderItemDisplayView"  class="goshoppingBtn">返回购物车</a> <a href="javascript:void(0);" class="qujiesuanBtn" onclick="submitOrders();">提交订单</a> </div>
    <script>
	setInputOnlyNum("onlyNumInput");
</script>
    <!-- END OrderItemDetail.jsp -->
  </div>
</div>
<script>
var productSize = 1;
</script>
</div>
 [#include "/shop/include_1/footer.ftl" /]
<!-- 弹出框 -->
<div class="topbackdiv" id="shopcart2error" style="display: none;"></div>
<div class="topBox" id="shopcart2errorinfo" style="width:360px; height:160px; margin-left:-180px; margin-top:-80px;display: none;">
  <h1 class="ln24 topTitle"><span>温馨提示</span></h1>
  <a class="popCloseBtn" onclick="closePrompt();">X</a>
  <div class="p20 tc mt10"><span class="promptContent"></span></div>
</div>
</body>
</html><!-- END OrderShippingBillingDetails.jsp -->
