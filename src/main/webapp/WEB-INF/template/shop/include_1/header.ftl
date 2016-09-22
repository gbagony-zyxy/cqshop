<div id="headerWrapper">
    <!-- BEGIN Header.jsp -->
    <script type="text/javascript" src="${base}/resources/shop/new/menue.js"></script>
    <script type="text/javascript" src="${base}/resources/shop/new/PhoneClientDown.js"></script>
    <script type="text/javascript">
     var WCParamJS = {
	       "storeId":'10151',
	       "catalogId":'10001',
	       "langId":'-7'
          };
    </script>
<script>var isGuest = true; shoppingActionsJS.env_TopCategoriesDisplayURL = 'http://mall.gree.com/mall/zh-CN/greestore';</script>
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

var username = getCookie("username");
alert(shortNickName);
if(shortNickName.length>10){
	shortNickName=shortNickName.substring(0,9)+"..."
}
</script>
<input class="logonoffurl" value="https://mall.gree.com/mall/Logoff?catalogId=10001&amp;langId=-7&amp;storeId=10151&amp;URL=LogonForm" type="hidden">
<script type="text/javascript">	
//设置首页导航连接
$(document).ready(function(){
	$("#header_navviga_1").find("a").eq(0).attr("href","http://mall.gree.com/mall/zh-CN/greestore");
	$("#header_navviga_2").find("a").eq(0).attr("href","http://mall.gree.com/mall/zh-CN/greestore/GreeActivity1");
	$("#header_navviga_3").find("a").eq(0).attr("href","http://mall.gree.com/mall/zh-CN/greestore/tuanGou");
	$("#header_navviga_4").find("a").eq(0).attr("href","http://mall.gree.com/mall/zh-CN/greestore/GreeActivity3");
	$("#header_navviga_5").find("a").eq(0).attr("href","http://mall.gree.com/mall/zh-CN/greestore/PreSaleView");
});
</script>
<input value="10653" type="hidden" id="hubStoreId">
 <div class="shortcut">
      <div class="topbarbgcolor clearfix">
        <div class="wrapper clearfix">
          <ul class="quickMenu fl clearfix">
            <li class="pr topShoucang"><a href="${base}/resources/shop/new/格力商城-格力电器唯一官方网上商城，即送即装，全场包邮至乡镇村!网购空调、冰箱、 空气能热水器、生活电器的首选商城.htm" onclick="return AddFavorite(&#39;http://mall.gree.com/mall/zh-CN/greestore&#39;,&#39;格力官方商城&#39;);" title="格力官方商城" rel="sidebar"><b></b>收藏我们</a></li>
       
          </ul>
          <ul class="fr topNav">
            <li class="logon pr">
                 <ul class="fr topNav">
            <li class="logon pr">
             <a href="javascript:headerLogon('${base}/login.jhtml')">[${message("shop.header.login")}]</a>
            <a href="${base}/register.jhtml">[注册]</a> </li>
            <li class="pr"><a href="http://www.gree.com/" target="_blank">格力官网</a><em></em></li>
            <li class="pr appSC"><a href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10151">会员中心</a><em></em><b></b>
              <div style="display: none;">
                <p> <a href="https://mall.gree.com/mall/AjaxLogonForm?catalogId=10001&myAcctMain=1&langId=-7&storeId=10151">我的订单</a> </p>
              </div>
            </li>
            <li class="pr appSC"><a href="http://mall.gree.com/mall/zh-CN/greestore/helpCenter/0">帮助中心</a><em></em><b></b></li>
          </ul>
        </div>
      </div>
      <div class="wrapper clearfix mt20"> <a href="${base}/resources/shop/new/格力商城-格力电器唯一官方网上商城，即送即装，全场包邮至乡镇村!网购空调、冰箱、 空气能热水器、生活电器的首选商城.htm"
								class="logo"><img src="${base}/resources/shop/new/logo.png"></a>
        <div class="fl w500 pr" style="z-index: 101">
          <!-- BEGIN Search.jsp -->
          <meta name="CommerceSearch" content="storeId_10151">
<script>
$(function() {
	SearchJS.init();
	SearchJS.setCachedSuggestionsURL("SearchComponentCachedSuggestionsView?langId=-7&storeId=10151&catalogId=10001");
	SearchJS.setAutoSuggestURL("SearchAutoSuggestJsonView?langId=-7&storeId=10151&catalogId=10001");
	SearchJS.storeId = '10151';
	//document.forms["searchBox"].action = getAbsoluteURL() + "http://mall.gree.com/mall/SearchDisplay?";
});
var staticContent = [];
var staticContentHeaders = [];
</script>
     <div id="searchBar" data-parent="header">
            <form id="searchBox" name="CatalogSearchForm" method="get" action="http://mall.gree.com/mall/SearchDisplay?">
              <input id="categoryId" name="categoryId" type="hidden">
              <input name="storeId" value="10151" type="hidden">
              <input name="catalogId" value="10001" type="hidden">
              <input name="langId" value="-7" type="hidden">
              <input name="sType" value="SimpleSearch" type="hidden">
              <input name="resultCatEntryType" value="2" type="hidden">
              <input name="showResultsPage" value="true" type="hidden">
              <input name="searchSource" value="Q" type="hidden">
              <input name="pageView" value="grid" type="hidden">
              <input name="beginIndex" value="0" type="hidden">
              <input name="pageSize" value="24" type="hidden">
              <div id="searchTermWrapper" class="search clearfix">
                <input id="SimpleSearchForm_SearchTerm" name="searchTerm" autocomplete="off" type="text" class="searchText" value="砗磲摆件 砗磲" maxlength="50">
                <script>
				SearchJS.deafultSearch = "砗磲摆件 砗磲";
				try{
				if($.cookie('searchTerm')!=null&&$.cookie('searchTerm')!=''){
				$('#SimpleSearchForm_SearchTerm').val($.cookie('searchTerm'));
				}
				if($('#SimpleSearchForm_SearchTerm').val()==''){
				$('#SimpleSearchForm_SearchTerm').val('砗磲摆件 砗磲');
				}
				$.removeCookie('searchTerm',{path:'/'});
				}catch(e){
				$('#SimpleSearchForm_SearchTerm').val('砗磲摆件 砗磲');
				}
				</script>
                <input id="searchFormLabel" for="SimpleSearchForm_SearchTerm" onclick="javascript:if($.trim($(&#39;#SimpleSearchForm_SearchTerm&#39;).val())==&#39;&#39;){$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(SearchJS.deafultSearch);}if($.trim($(&#39;#SimpleSearchForm_SearchTerm&#39;).val())!=&#39;&#39;){$(&#39;#searchBox&#39;).submit();}"
					    type="button" class="searchBtn" value="搜索">
              </div>
              <div class="hotWords mt5"> <strong>热门搜索：</strong> <a class="hot"
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲&#39;);$(&#39;#searchBox&#39;).submit();">砗磲</a> <a
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲摆件&#39;);$(&#39;#searchBox&#39;).submit();">砗磲摆件</a> <a
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲手链&#39;);$(&#39;#searchBox&#39;).submit();">砗磲手链</a> <a
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲吊坠&#39;);$(&#39;#searchBox&#39;).submit();">砗磲吊坠</a> <a
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲挂件&#39;);$(&#39;#searchBox&#39;).submit();">砗磲挂件</a> <a
					onclick="javascript:$(&#39;#SimpleSearchForm_SearchTerm&#39;).val(&#39;砗磲项链&#39;);$(&#39;#searchBox&#39;).submit();">砗磲项链</a> </div>
              <ul class="searchList" style="display: none;" id="searchList_ul">
              </ul>
            </form>
          </div>
          <div id="autoSuggestDiv" style="display: none"></div>
          <!-- End Search Widget -->
          <!-- END Search.jsp -->
        </div>
        <ul class="clearfix promise fr">
          <li class="zhengpinHeader"><b></b><span>正品保障</span></li>
          <li class="shouhou"><b></b><span>售后无忧</span></li>
          <li class="baoyou"><b></b><span>全场包邮</span></li>
        </ul>
      </div>
    </div>
      <div class="mainNav mt20">
      <div class="wrapper pr clearfix">
        <div class="categorys fl pr">
          <div class="categorysTitle"><a>全部商品分类</a><b></b></div>
          <div class="categorysCon" style="display: none;">
          [@product_category_root_list]
			 [#list productCategories as category]
            <dl>
              <dt> <a href="${base}${category.path}"><img src="${base}/resources/shop/new/daohang_01.png"><span>${category.name}</span></a></dt>
              [@product_category_children_list productCategoryId = category.id]
             
              <dd> 
               [#list productCategories as productCategory]
              <a id="subcategoryLink_10005_10006"
               href="${base}${productCategory.path}"role="menuitem" tabindex="-1">${productCategory.name}</a> 
			   [/#list]
			   </dd>
			 [/@product_category_children_list]
            </dl>
            [/#list]
            [/@product_category_root_list]
           
            <div id="showDiv_2" class="categorysSubmenu"
										style="display: none;"
										onmouseover="javascript:$(this).show();"
										onmouseout="javascript:$(this).hide();">
              <div class="item"> <a id="subcategoryLink_10001_10003"
												href="http://mall.gree.com/mall/zh-CN/greestore/JinghongRefrigerator/shuangkaimen"
												class="linkbox" role="menuitem" tabindex="-1">双开门</a> <a
												id="subcategoryLink_10001_10004"
												href="http://mall.gree.com/mall/zh-CN/greestore/JinghongRefrigerator/threedoor"
												class="linkbox" role="menuitem" tabindex="-1">三门</a> <a
												id="subcategoryLink_10001_11507"
												href="http://mall.gree.com/mall/zh-CN/greestore/JinghongRefrigerator/OppositeDoor"
												class="linkbox" role="menuitem" tabindex="-1">对开门</a> <a
												id="subcategoryLink_10001_11508"
												href="http://mall.gree.com/mall/zh-CN/greestore/JinghongRefrigerator/ItalyDoor"
												class="linkbox" role="menuitem" tabindex="-1">意式</a> <a
												id="subcategoryLink_10001_11509"
												href="http://mall.gree.com/mall/zh-CN/greestore/JinghongRefrigerator/ManyDoor"
												class="linkbox" role="menuitem" tabindex="-1">多门</a> </div>
            </div>
          </div>
        </div>
        <div id="container" class="fl">
          <!-- 导航广告位 -->
          <div id="contentRecommendationWidget_HomePageNav" class="contentRecommendationWidget">
            <!-- BEGIN Content_UI.jspf -->
            <div class="left_espot">
              <ul class="navItems" id="navviga">
                <li class="curr" id="header_navviga_1"><a href="${base}/">首页</a></li>
              </ul>
            </div>
            <!-- END Content_UI.jspf -->
          </div>
          <!-- END ContentRecommendation_UI.jspf -->
          <!-- END ContentRecommendation.jsp -->
        <div id="buoy" style="left: -84px;"></div>
        </div>
        <script type="text/javascript">
            	$.nicenav(200);
       	</script>
        <!-- 代码 结束 -->
        <div class="miniCart">
          <dl class="">
            <dt class="pr"> <b></b> <a href="https://mall.gree.com/mall/AjaxOrderItemDisplayView?cmdStoreId=10653&catalogId=10001&langId=-7&originalStoreId=&storeId=10151">购物车</a> </dt>
            <dd></dd>
          </dl>
        </div>
      </div>
    </div>
    <div class="topbackdiv loaddivback" style="display: none;"></div>
    <!--外面的黑背景-->
	<div id="loadingPage" class="loaddivinfo" style="display: none;">数据加载中, 请稍等...</div>
    <!--laoding-->
 </div>