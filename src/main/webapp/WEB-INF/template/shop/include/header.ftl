<div id="append_parent"></div>
<div class="public-top-layout w">
  <div class="topbar wrapper">
    <div class="user-entry"> 您好，欢迎来到 <a href="/b2b2c/index.html" title="首页" alt="首页">潭门砗磲网商城</a> <span> [<a href="/b2b2c/store/login.html">登录</a>] </span> <span> [<a href="/b2b2c/store/register.html">注册</a>] </span> <span class="seller-login"> <a href="/b2b2c/store/login.html" target="_top" title="商家中心"> <i class="icon-signin"></i> 商家管理中心 </a> </span> </div>
    <div class="quick-menu">
      <dl class="">
        <dt> <a href="/b2b2c/member/order.html">我的订单</a><i></i> </dt>
        <dd>
          <ul>
            <li><a href="/b2b2c/member/order.html?status=0">待付款订单</a></li>
            <li><a href="/b2b2c/member/order.html?order_state=5">待确认收货</a></li>
            <li><a href="/b2b2c/member/order.html?order_state=7">待评价交易</a></li>
          </ul>
        </dd>
      </dl>
      <dl class="">
        <dt> <a href="/b2b2c/member/favorite.html" title="我的收藏" target="_top">我的收藏</a><i></i> </dt>
        <dd>
          <ul>
            <li><a href="/b2b2c/member/favorite.html" target="_top" title="收藏的商品">收藏的商品</a></li>
            <li><a href="/b2b2c/member/collect_store.html" target="_top" title="收藏的店铺">收藏的店铺</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt> 客户服务<i></i> </dt>
        <dd>
          <ul>
            <li><a href="/b2b2c/help-21-7.html">帮助中心</a></li>
            <li><a href="/b2b2c/help.html?articleid=16">售后服务</a></li>
            <li><a href="/b2b2c/help.html?articleid=8">客服中心</a></li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt> 站点导航<i></i> </dt>
        <dd>
          <ul>
            <li><a target="_blank" href="/b2b2c/index.html">商城首页</a></li>
          </ul>
        </dd>
      </dl>
    </div>
  </div>
</div>
<!--头部-->
<!-- 获取商城数据搜索标签， -->
<div class="header-wrap" style="width:1200px;margin:0px auto;">
  <header class="public-head-layout wrapper">
    <!--LOGO-->
    <div class="site-logo index_logo" style="width:240px;height:90px;float:left;display:inline;overflow:hidden;margin:15px 60px 0px 0px"> <a href="javascript:void(0);"><img src="${base}/upload/image/logo.gif" style="width:240px;height:60px;" class="pngFix"></a> </div>
    <!--搜索-->
    <div class="head-search-bar" id="search">
      <!--商品和店铺-->
      <ul class="tab">
        <li class="current" act="search" title="按照商品查询" search="goods">商品</li>
        <li act="shop_search" title="按照店铺查询" search="store">店铺</li>
      </ul>
      <div class="search-form">
        <input name="namekeyword" id="namekeyword" type="text" class="input-text" value="请输入您要搜索的商品关键字" maxlength="60">
        <input type="button" id="inquiry" value="搜索" class="input-submit">
      </div>
      <!--搜索关键字-->
      <div class="keyword"> 热门搜索：
        <ul>
          <!-- 调用CMS数据搜索标签，并传递所在模型ID参数(es_hot_keyword表.)“3”表示出现三个关键词。 -->
          <li><a href="/b2b2c/goods_list.html?namekeyword=戴尔显示器">戴尔显示器</a></li>
          <li><a href="/b2b2c/goods_list.html?namekeyword=中粮">中粮</a></li>
          <li><a href="/b2b2c/goods_list.html?namekeyword=iphone手机">iphone手机</a></li>
        </ul>
      </div>
    </div>
    <div class="head-user-menu">
      <dl class="my-cart">
        <div class="num" id="demowhj">0</div>
        <dt>
          <!--  <span class="icon-cart"></span>-->
          <a href="/b2b2c/cart.html">购物车结算</a><i class="arrow"></i> </dt>
        <dd>
          <div class="sub-title">
            <h4>最新加入的商品</h4>
          </div>
          <div class="incart-goods-box">
            <p style="text-align:center;border:0px!important;">您的购物车中还没有任何商品</p>
          </div>
        </dd>
      </dl>
    </div>
  </header>
</div>
<!-- 调用商品分类信息 -->
<nav class="public-nav-layout">
	<div class="wrapper">
		<div class="all-category">
			<div class="title">
				<h3>
					<a href="javascript:void(0);">所有商品分类</a>
				</h3>
				<i class="arrow"></i>
			</div>
			<!--左侧菜单-->
			<div class="category">
				<ul class="menu">
					<li class="odd" cat_id="1">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=1">食品、饮料、酒水</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="1">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=2" title="食品、饮料、酒水">休闲零食 </a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=6">坚果</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=7">蜜饯</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=8">肉干</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=9">薯片</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=3" title="食品、饮料、酒水">糖果/巧克力</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=10">巧克力</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=11">糖果</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=12">口香糖</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=13" title="食品、饮料、酒水">饮料</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=14">碳酸饮料</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=15">茶饮料</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=16">果汁</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=17">水</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=18" title="食品、饮料、酒水">酒水</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=19">白酒</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=20">啤酒</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=21">洋酒</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="2">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=4">进口食品、进口牛奶</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="2">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=5" title="进口食品、进口牛奶">进口乳制品</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=22">进品牛奶</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=23">进品酸奶</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=24" title="进口食品、进口牛奶">进口饼干糕点</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=25">进口饼干</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=26">进口糕点</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=27" title="进口食品、进口牛奶">进口咖啡/茶品</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=28">进口红茶</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=29">进口绿茶</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=30">进口速溶咖啡</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=31" title="进口食品、进口牛奶">进口休闲零食</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=32">进口膨化</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=33">进口海产品</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=34">进口果冻/布丁</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="3">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=38">美容化妆、个人护理</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="3">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=39" title="美容化妆、个人护理">面部护肤</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=40">洁面</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=41">柔肤水/爽肤水</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=42">乳液</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=43" title="美容化妆、个人护理">眼部保养</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=44">眼部精华</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=45">眼霜</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=46">眼膜</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=47" title="美容化妆、个人护理">男士护理</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=48">男士洁面</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=49">男士护肤</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=50">须后水</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=51" title="美容化妆、个人护理">洗发护发</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=52">去屑型洗发水</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=53">柔顺型洗发水</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=54">修复型洗发水</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=55">滋润营养洗发水</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="4">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=56">母婴、玩具音像图书</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="4">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=57" title="母婴、玩具音像图书">奶粉系列</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=58">1段奶粉</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=59">2段奶粉</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=60">3段奶粉</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=61">特殊配方奶粉</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=62" title="母婴、玩具音像图书">防尿用品</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=63">纸尿裤</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=64">婴儿湿巾</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=65">尿布/尿垫</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=66" title="母婴、玩具音像图书">辅食</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=67">米粉</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=68">婴儿果汁</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=69">面条</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=70">饼干/磨牙棒</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=71" title="母婴、玩具音像图书">清洁用品</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=72">澡盆/浴床</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=73">奶瓶/餐具清洁</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=74">幼儿口腔护理</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=75" title="母婴、玩具音像图书">纺织/用品</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=76">床单/枕头</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=77">浴巾/毛巾</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=78">抱被</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="5">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=79">厨房用品、清洁用品</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="5">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=80" title="厨房用品、清洁用品">锅具水壶</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=81">汤锅</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=82">水壶</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=83">炒锅</a>
								</dd>
																<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=84">奶锅</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="6">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=35">珠宝钟表、饰品箱包</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="6">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=36" title="珠宝钟表、饰品箱包">女包</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=37">单肩包</a>
								</dd>
								 
							</dl>
						</div> 
					</li> 					<li class="odd" cat_id="7">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=85">营养保健、健康器械</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
					</li> 					<li class="odd" cat_id="8">
						<div class="class">
							<h4>
								<a href="/b2b2c/goods_list.html?cat_id=86">服装鞋靴、内衣佩饰</a>
							</h4>
							<span class="recommend-class">推荐分类</span> <span class="arrow"></span>
						</div> 
						<div class="sub-class" cat_menu_id="8">
							 
							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=91" title="服装鞋靴、内衣佩饰">男装</a>
									</h3>
								</dt>
								 
								<dd class="goods-class">
									<a href="/b2b2c/goods_list.html?cat_id=92">短裤</a>
								</dd>
								 
							</dl>

							<dl>
								<dt>
									<h3>
										<a href="/b2b2c/goods_list.html?cat_id=93" title="服装鞋靴、内衣佩饰">裙子</a>
									</h3>
								</dt>
								
							</dl>
						</div> 
					</li> 
					<div class="clear"></div>
				</ul>
			</div>
		</div>
		<!--分类树结束-->
		<ul class="site-menu">
		   [@navigation_list position = "middle"]
				[#list navigations as navigation]
					<li[#if navigation.url = url] class="current"[/#if]>
						<a href="${navigation.url}"[#if navigation.isBlankTarget] target="_blank"[/#if]>${navigation.name}</a>
						[#if navigation_has_next]|[/#if]
					</li>
				[/#list]
			[/@navigation_list]
		
	
		</ul>
	</div>
</nav>