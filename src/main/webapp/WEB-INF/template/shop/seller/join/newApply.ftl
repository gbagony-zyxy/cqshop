<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("shop.seller.index")}</title>

<link href="${base}/resources/shop/css/common.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/shop/css/seller_register.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/shop/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/jquery.lSelect.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/jsbn.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/prng4.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/rng.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/rsa.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/base64.js"></script>
<script type="text/javascript" src="${base}/resources/shop/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/shop/datePicker/WdatePicker.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $joinForm = $("#joinForm");
	var $areaId = $("#areaId");
	var $sellerArea = $("#sellerArea");
	var $submit = $(":submit");
	
	
	[@flash_message /]
	
	// 地区选择
	$areaId.lSelect({
		url: "${base}/common/area.jhtml"
	});
	// 地区选择
	$sellerArea.lSelect({
		url: "${base}/common/area.jhtml"
	});
	
	// 提交
	$submit.click(function() {
		if (!$.checkLogin()) {
			$.redirectLogin("${base}/seller/join/newApply.jhtml", "${message("shop.seller.join.accessDenied")}");
			return false;
		}
	});
	
	var $company = $("#company");
	var $licenseNumber = $("#licenseNumber");
	var $legalRepresent = $("#legalRepresent");
	var $identityCard = $("#identityCard");
	var $idCardImage = $("#idCardImage");
	var $licenseImage = $("#licenseImage");
	var $companyArea = $("#companyArea");
	var $companyAddress = $("#companyAddress");
	var $establishDate = $("#establishDate");
	var $operatLimitFrom = $("#operatLimitFrom");
	var $operatLimitTo = $("#operatLimitTo");
	var $registCapital = $("#registCapital");
	var $emergencyContact = $("#emergencyContact");
	var $emergencyContactTel = $("#emergencyContactTel");
	var $scope = $("#scope");
	var $orgCode = $("#orgCode");
	var $orgOperatLimitFrom = $("#orgOperatLimitFrom");
	var $orgOperatLimitTo = $("#orgOperatLimitTo");
	var $orgImage = $("#orgImage");
	var $name = $("#name");
	var $description = $("#description");
	var $area = $("#area");
	var $address = $("#address");
	var $contact = $("#contact");
	var $qq = $("#qq");
	var $wechat = $("#wechat");
	var $weibo = $("#weibo");
	var $homepage = $("#homepage");
	
	// 表单验证
	$joinForm.validate({
		rules: {
			company: {
				required: true,
				maxlength: 100
			},
			licenseNumber: {
				required: true,
				maxlength: 30
			},
			legalRepresent: {
				required: true,
				maxlength: 10
			},
			identityCard: {
				required: true,
				maxlength: 20
			},
			idCardImage: {
				required: true
			},
			licenseImage: {
				required: true
			},
			companyArea: {
				required: true
			},
			companyAddress: {
				required: true,
				maxlength: 100
			},
			establishDate: {
				required: true
			},
			operatLimitFrom: {
				required: true
			},
			operatLimitTo: {
				required: true
			},
			registCapital: {
				required: true,
				maxlength: 9
			},
			emergencyContact: {
				required: true,
				maxlength: 10
			},
			emergencyContactTel: {
				required: true,
				maxlength: 15,
				number: true
			},
			scope: {
				required: true,
				maxlength: 500
			},
			orgCode: {
				required: true,
				maxlength: 30
			},
			orgOperatLimitFrom: {
				required: true
			},
			orgOperatLimitTo: {
				required: true
			},
			orgImage: {
				required: true
			},
			name: {
				required: true,
				maxlength: 100,
				remote: {
					url: "${base}/seller/join/check_sellername.jhtml",
					cache: false
				}
			},
			description: {
				required: true,
				maxlength: 500
			},
			area: {
				required: true
			},
			address: {
				required: true,
				maxlength: 100
			},
			contact: {
				required: true,
				maxlength: 15,
				number: true
			},
			qq: {
				maxlength: 15,
				number: true
			},
			wechat: {
				maxlength: 50
			},
			weibo: {
				maxlength: 50
			},
			homepage: {
				maxlength: 100,
				url: true
			}
		},
		messages: {
			name: {
				remote: "${message("shop.seller.join.seller.application.name.disabledExist")}"
			}
		}
	});
	
});
</script>
</head>
<body>
	[#include "/shop/include/header.ftl" /]
	<div class="container register">
		<div class="caution_msg">
		    <i></i>
		    <div>
		    	<br>
		        1.	信息提交前，请务必先了解<a href="http://help.jd.com/Vender/viewQuestion-902-2267.html" class="link-blue" target="_blank">京东开放平台招商资质标准细则；</a><br>
		        2.	公司类信息需填项较多，建议先查看<a href="http://help.jd.com/Vender/viewQuestion-779-2553.html" class="link-blue" target="_blank">公司信息注意事项</a>再进行填写；</a><br>
		        3.	以下所需要上传电子版资质仅支持JPG、GIF、PNG格式的图片，大小不超过1M，且必须加盖企业彩色公章。
		    	<br><br>
		    </div>
		</div>
		<div class="span24">
			<div class="wrap">
				<form id="joinForm" action="${base}/seller/join/submit.jhtml" method="post" enctype="multipart/form-data">
				<div class="main clearfix">
					<div class="title">
						<strong>${message("shop.seller.index")}</strong>JOIN US
					</div>
						<div class="menu">
							<strong>${message("shop.seller.navigation.seller.join.business.license")}</strong>
						</div>
						<table>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.company")}:
								</th>
								<td>
									<input type="text" id="company" name="company" class="text" maxlength="50" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.license.number")}:
								</th>
								<td>
									<input type="text" id="licenseNumber" name="licenseNumber" class="text" maxlength="100"/>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.legal.represent")}:
								</th>
								<td>
									<input type="text" id="legalRepresent" name="legalRepresent" class="text" maxlength="20" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.identity.card")}:
								</th>
								<td>
									<input type="text" id="identityCard" name="identityCard" class="text" maxlength="20" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.id.card.image")}:
								</th>
								<td>
									<input type="file" name="idCardImage" class="productImageFile" \/>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.license.image")}:
								</th>
								<td>
									<input type="file" name="licenseImage" class="productImageFile" \/>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.company.area")}:
								</th>
								<td>
									<input type="hidden" id="areaId" name="companyArea" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.company.address")}:
								</th>
								<td>
									<input type="text" id="companyAddress" name="companyAddress" class="text" maxlength="200" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.establish.date")}:
								</th>
								<td>
									<input type="text" id="establishDate" name="establishDate" size="20" class="text Wdate" onfocus="WdatePicker();"/>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.operat.limit")}:
								</th>
								<td>
									<input type="text" id="operatLimitFrom" name="operatLimitFrom" maxlength="10" class="text Wdate" onfocus="WdatePicker();"/> - 
									<input type="text" id="operatLimitTo" name="operatLimitTo" maxlength="10" class="text Wdate" onfocus="WdatePicker();"/>
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.regist.capital")}(${message("shop.seller.navigation.seller.join.business.unit.tenthousand")}):
								</th>
								<td>
									<input type="text" id="registCapital" name="registCapital" class="text" maxlength="12" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.emergency.contact")}:
								</th>
								<td>
									<input type="text" id="emergencyContact" name="emergencyContact" class="text" maxlength="20" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.emergency.contact.tel")}:
								</th>
								<td>
									<input type="text" id="emergencyContactTel" name="emergencyContactTel" class="text" maxLength="20" />
								</td>
							</tr>
							<tr>
								<th>
									<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.business.scope")}:
								</th>
								<td>
									<textarea id="scope" name="scope" class="editor" rows="6" cols="60"></textarea>
								</td>
							</tr>
						</table>
						<div class="login">
							<img alt="" src="${base}/resources/shop/images/license_number.png"> 
						</div>
				</div>
				<div class="main clearfix">
					<div class="menu">
						<strong>${message("shop.seller.navigation.seller.join.organization.information")}</strong>
					</div>
					<table>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.organization.code")}:
							</th>
							<td>
								<input type="text" id="orgCode" name="orgCode" class="text" maxlength="200" />
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.organization.operat.limit.date")}:
							</th>
							<td>
								<input type="text" id="orgOperatLimitFrom" name="orgOperatLimitFrom" maxlength="10" class="text Wdate" onfocus="WdatePicker();"/> - 
								<input type="text" id="orgOperatLimitTo" name="orgOperatLimitTo" maxlength="10" class="text Wdate" onfocus="WdatePicker();"/>
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.organization.code.image")}:
							</th>
							<td>
								<input type="file" name="orgImage" class="productImageFile" \/>
							</td>
						</tr>
					</table>
					<div class="login">
						<img alt="" src="${base}/resources/shop/images/org_number.png"> 
					</div>
				</div>
				<div class="main clearfix">
					<div class="menu">
						<strong>${message("shop.seller.navigation.seller.join.seller.information")}</strong>
					</div>
					<table>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.seller.information.company")}:
							</th>
							<td>
								<input type="text" id="name" name="name" class="text" maxlength="50" />
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.seller.information.description")}:
							</th>
							<td>
								<textarea id="description" name="description" class="editor" rows="6" cols="60"></textarea>
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.seller.information.area")}:
							</th>
							<td>
								<input type="hidden" id="sellerArea" name="area" />
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.seller.information.address")}:
							</th>
							<td>
								<input type="text" id="address" name="address" class="text" maxlength="50" />
							</td>
						</tr>
						<tr>
							<th>
								<span class="requiredField">*</span>${message("shop.seller.navigation.seller.join.seller.information.contact")}:
							</th>
							<td>
								<input type="text" id="contact" name="contact" class="text" maxlength="20" />
							</td>
						</tr>
						<tr>
							<th>
								${message("shop.seller.navigation.seller.join.seller.information.qq")}:
							</th>
							<td>
								<input type="text" id="qq" name="qq" class="text" maxlength="15" />
							</td>
						</tr>
						<tr>
							<th>
								${message("shop.seller.navigation.seller.join.seller.information.wechat")}:
							</th>
							<td>
								<input type="text" id="wechat" name="wechat" class="text" maxlength="50" />
							</td>
						</tr>
						<tr>
							<th>
								${message("shop.seller.navigation.seller.join.seller.information.weibo")}:
							</th>
							<td>
								<input type="text" id="weibo" name="weibo" class="text" maxlength="50" />
							</td>
						</tr>
						<tr>
							<th>
								${message("shop.seller.navigation.seller.join.seller.information.logo")}:
							</th>
							<td>
								<input type="file" name="logo" class="productImageFile" \/>
							</td>
						</tr>
						<tr>
							<th>
								${message("shop.seller.navigation.seller.join.seller.information.homepage")}:
							</th>
							<td>
								<input type="text" id="homepage" name="homepage" class="text" maxlength="100" />
							</td>
						</tr>
						<tr>
							<th>
								&nbsp;
							</th>
							<td>
								<input type="submit" class="application" value="${message("shop.seller.join.application")}" />
							</td>
						</tr>
						<tr>
							<th>
								&nbsp;
							</th>
							<td>
								${message("shop.seller.join.application.agreement")}
							</td>
						</tr>
						<tr>
							<th>
								&nbsp;
							</th>
							<td>
								<div id="agreement" class="agreement">
									${setting.registerAgreement}
								</div>
							</td>
						</tr>
					</table>
				</div>
				</form>
			</div>
		</div>
	</div>
	[#include "/shop/include/footer.ftl" /]
</body>
</html>