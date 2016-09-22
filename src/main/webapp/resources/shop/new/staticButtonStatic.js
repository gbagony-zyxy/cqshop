window.onerror = function() {
	return true;
}
Sys = function() {
	;
}
Sys.NS = (document.layers) ? true : false;
Sys.IE = (document.all) ? true : false;
Sys.DOM = (document.getElementById) ? true : false;
if (Sys.IE)
	Sys.DOM = false;
Sys.MAC = (navigator.platform)
		&& (navigator.platform.toUpperCase().indexOf('MAC') >= 0);
if (Sys.NS)
	Sys.MAC = false;
Sys.getObj = function(objId) {
	if (document.getElementById)
		return document.getElementById(objId);
	else if (document.all)
		return document.all(objId);
}
Sys.urlEncode = function(str) {
	var i, c, ret = "", strSpecial = "!\"#$%&'()*+,/:;<=>?@[\]^`{|}~%";
	for (i = 0; i < str.length; i++) {
		c = str.charAt(i);
		if (c == " ")
			ret += "+";
		else if (strSpecial.indexOf(c) != -1)
			ret += "%" + str.charCodeAt(i).toString(16);
		else
			ret += c;
	}
	return ret;
};
Sys.urlDecode = function(str) {
	if ("undefined" == typeof decodeURIComponent) {
		return unescape(str).replace(/\+/g, ' ').replace(/%2B/g, '+');
	} else {
		return decodeURIComponent(str.replace(/\+/g, ' ').replace(/%2B/g, '+'));
	}
};
Sys.urlToParams = function(urlContent) {
	try {
		var cmdMap = urlContent.split("&"), cmdParams = [], temp;
		for (var i = 0; i < cmdMap.length; i++) {
			temp = cmdMap[i].split("=");
			cmdParams[temp[0]] = temp[1];
		}
		return cmdParams;
	} catch (e) {
		E.report('请勿非法修改参数', '1206');
		return [];
	}
};

function getTrustfulVisitorInfo() {
	var visitorInfoUrl = "";
	if (typeof trustfulInfo != "undefined" && trustfulInfo.length > 0
			&& trustfulInfo != null && trustfulInfo != "null") {
		visitorInfoUrl = "&info=" + trustfulInfo;
	}
	return visitorInfoUrl;
};
function getVisitorZone() {
	var visitorZone = "";
	if (typeof zone != "undefined" && zone.length > 0 && zone != null
			&& zone != "null") {
		visitorZone = "&zone=" + zone;
	}
	return visitorZone;
};
function StaticIcon(inLogger, inPreferences) {
	this.logger = inLogger;
	this.preferences = inPreferences;
	this.generate = StaticIcon_generate;
	this.getOnGenerateClick = getOnStaticIcon_generateClicked;
	this.start = StaticIcon_start;
}
function StaticIcon_start() {
	this.generate();
};
function StaticIcon_generate() {
	if ((typeof live800_codeType) == "undefined")
		live800_codeType = "null";
	var param = getParam();
	if (param != "") {
		param = "&" + param;
	}
	var layerHtml = '<a id="live800iconlink" target="_self" href="javascript:void(0)" onclick="try{if(LIM&&LIM.visitor){LIM.visitor.closeMini();}else{parent.closeMini();}}catch(e){}'
			+ "this.newWindow = window.open('"
			+ this.preferences["protocol"] + "://" 
			+ this.preferences["baseUrl"] + this.preferences["baseWebapp"] 
			+ this.preferences["baseChatHtmlDir"] 
			+ "/chatbox.jsp?companyID=" + this.preferences["companyID"] + getStaticGid() 
			+ "&configID=" + this.preferences["configID"] + param + getTrustfulVisitorInfo()
			+ getVisitorZone() + "', 'chatbox" + this.preferences["companyID"]
			+ "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=1,width="+getNewBoxFrame()[0]+",height="+getNewBoxFrame()[1]
			+ "');this.newWindow.focus();this.newWindow.opener = window;"
			+ '">';
	layerHtml += '<img name="live800icon" id="live800icon" src="'
			+ this.preferences["protocol"] + "://"
			+ this.preferences["baseUrl"] + this.preferences["baseWebapp"]
			+ '/SurferServer?cmd=111&companyID='
			+ this.preferences["companyID"] + param + "&configID="
			+ this.preferences["configID"] + '&online='
			+ this.preferences["online"] + '&offline='
			+ this.preferences["offline"] + getTrustfulVisitorInfo()
			+ '"  border="0" />';
	layerHtml += '</a>';
	if (live800_codeType == "custom" || live800_codeType == null
			|| live800_codeType == "" || live800_codeType == "null") {
		//document.write(layerHtml);
		/**
		 * modify by hcy delay load
		 */
		if ((typeof live800_renderid) == "undefined") {
			document.write(layerHtml);
		} else {
			layerHtml = layerHtml.replace(/&/g, '&amp;');
			document.getElementById(live800_renderid).innerHTML = layerHtml;
		}
			
	}
	if (live800_codeType == "steady") {
		return layerHtml;
	}
};
function getOnStaticIcon_generateClicked() {
	if ("0" == companyStatus
			&& "" != preferences["live800_SpeCodeLeaveUrl"]
			&& "" != preferences["live800_SpeCode"]
			&& ("," + preferences["live800_SpeCode"] + ",").indexOf(","
					+ this.preferences["configID"] + ",") != -1) {
		Sys.getObj("live800iconlink").href = preferences["live800_SpeCodeLeaveUrl"];
		Sys.getObj("live800iconlink").target = "_blank";
	} else {
		var param = getParam();
		if (param != "") {
			param = "&" + param;
		}
		Sys.getObj("live800iconlink").href = "javascript:void(0)";
		Sys.getObj("live800iconlink").target = "_self";
		this.newWindow = window
				.open(
						this.preferences["protocol"] + "://"
								+ this.preferences["baseUrl"]
								+ this.preferences["baseWebapp"]
								+ this.preferences["baseChatHtmlDir"]
								+ "/chatbox.jsp?companyID="
								+ this.preferences["companyID"]
								+ getStaticGid()
								+ "&configID="
								+ this.preferences["configID"]
								+ param 
								+ getTrustfulVisitorInfo() 
								+ getVisitorZone(),
						"chatbox" + this.preferences["companyID"],
						"toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=1,width="+getNewBoxFrame()[0]+",height="+getNewBoxFrame()[1]);
		this.newWindow.focus();
		this.newWindow.opener = window;
		return false;
	}
}
function setCookie(name, value) {
	var Days = 30;
	var exp = new Date(); // new Date("December 31, 9998");
	exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
	document.cookie = name + "=" + escape(value) + ";expires="
			+ exp.toGMTString();
};
function setSessionCookie(name, value) {
	document.cookie = name + "=" + escape(value);
};
function getCookie(name) {
	var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
	if (arr = document.cookie.match(reg))
		return unescape(arr[2]);
	else
		return null;
};
function getStaticGid() {
	if (typeof jid != "undefined") {
		return "&jid=" + jid;
	} else
		return "";
};
function getParam() {
	var url = "";
	if(typeof operator != "undefined"){
		url = "operatorId=" + operator["id"];
	}else if (typeof skill != "undefined") {		    
		url ="skillId=" + skill["id"];
	}
	if (enterurl == "null"){
		enterurl = document.URL;
	}
	if(url == ""){	
		url = "enterurl=" + URLEncode(enterurl);
	}else{	
		url = url + "&enterurl=" + URLEncode(enterurl);
	}
	if (typeof cityCode != "undefined") {
		url = url + "&cityCode=" + cityCode;
	}
	if (typeof plugins != "undefined") {
		url = url + "&plugins=" + plugins;
	}
	var pagereferrinsession = getCookie("pageReferrInSession");
	if (pagereferrinsession == null || pagereferrinsession == " ") {
		pagereferrinsession = "";
	}
	var pagereferrinsession = URLEncode(pagereferrinsession);
	if (pagereferrinsession.length >= 1600) {
		pagereferrinsession = pagereferrinsession.substring(0, 1600);
	}
	if (pagereferrinsession.length > 0) {
		pagereferrinsession = "&pagereferrer=" + pagereferrinsession;
	}
	var live800DeParams = "";
	if (typeof live800_defined_params != "undefined"
			&& live800_defined_params.length > 0) {
		live800DeParams = "&" + live800_defined_params;
	}
	return url + pagereferrinsession + live800DeParams;
};

function getNewBoxFrame(){
    if(isNewChatBox){
        return [778,520];
    }else{
        return [570,424];
    }
};

function URLEncode(Str) {
	if (Str == null || Str == "")
		return "";
	var newStr = "";
	function toCase(sStr) {
		return sStr.toString(16).toUpperCase();
	}
	for (var i = 0, icode, len = Str.length; i < len; i++) {
		icode = Str.charCodeAt(i);
		if (icode < 0x10)
			newStr += "%0" + icode.toString(16).toUpperCase();
		else if (icode < 0x80) {
			if (icode == 0x20)
				newStr += "+";
			else if ((icode >= 0x30 && icode <= 0x39)
					|| (icode >= 0x41 && icode <= 0x5A)
					|| (icode >= 0x61 && icode <= 0x7A))
				newStr += Str.charAt(i);
			else
				newStr += "%" + toCase(icode);
		} else if (icode < 0x800) {
			newStr += "%" + toCase(0xC0 + (icode >> 6));
			newStr += "%" + toCase(0x80 + icode % 0x40);
		} else {
			newStr += "%" + toCase(0xE0 + (icode >> 12));
			newStr += "%" + toCase(0x80 + (icode >> 6) % 0x40);
			newStr += "%" + toCase(0x80 + icode % 0x40);
		}
	}
	return newStr;
};
function delCookie(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = getCookie(name);
	if (cval != null)
		document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
};
function setLiveCookie() {
	delCookie("operatorId");
	delCookie("skillId");
	if (typeof params["live800_operator"] != "undefined"
			&& params["live800_operator"].length != 0
			&& params["live800_operator"] != "undefined") {
		setCookie("operatorId", params["live800_operator"]);
	}
	if (typeof params["live800_skill"] != "undefined"
			&& params["live800_skill"].length != 0
			&& params["live800_skill"] != "undefined") {
		setCookie("skillId", params["live800_skill"]);
	}
	setSessionPageReferrer();
};
function setSessionPageReferrer() {
	var pagereferr = getCookie("pageReferrInSession");
	if (pagereferr == null) {
		pagereferr = document.referrer;
		if (pagereferr == null) {
			pagereferr = " ";
		}
		if (pagereferr.length > 500) {
			pagereferr = pagereferr.substring(0, 500)
		}
		setSessionCookie("pageReferrInSession", pagereferr);
	}
};
function getProtocol() {
	var protocol = document.location.protocol;
	protocol = protocol.substring(0, (protocol.length - 1));
	protocol = (protocol == "file") ? "http" : protocol;
	if (protocol == "https") {
		return "https";
	}
	try {
		var scripts = document.getElementsByTagName("script"), script;
		for (var i = 0, length = scripts.length; i < length; i++) {
			script = scripts[i];
			if (script.src && script.src.indexOf("staticButton.js") != -1) {
				if (script.src.indexOf("https:") != -1) {
					return "https";
				}
			}
		}
	} catch (e) {
	}
	return protocol;
};
params = Sys.urlToParams(live800_configContent);
setLiveCookie();
if (live800_companyID == null || live800_companyID == "") {
	alert("miss companyID");
} else {
	preferences = new Array();
	preferences["live800_SpeCode"] = live800_SpeCode;
	preferences["live800_SpeCodeLeaveUrl"] = live800_SpeCodeLeaveUrl;
	preferences["companyID"] = live800_companyID;
	preferences["configID"] = live800_configID;
	preferences["online"] = (params["live800_online"] != null
			? params["live800_online"]
			: "");
	preferences["offline"] = (params["live800_offline"] != null
			? params["live800_offline"]
			: "");
	preferences["protocol"] = getProtocol();
	preferences["baseUrl"] = live800_baseUrl;
	preferences["baseHtmlUrl"] = live800_baseHtmlUrl;
	preferences["baseWebapp"] = live800_baseWebApp;
	preferences["baseChatHtmlDir"] = live800_baseChatHtmlDir;
	preferences["visitorIDInSession"] = preferences["companyID"] + "chater";
	var globalStaticIcon = new StaticIcon("", preferences);
	globalStaticIcon.start();
}