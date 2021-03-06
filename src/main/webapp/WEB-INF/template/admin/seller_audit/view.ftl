<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.seller.view")}</title>


<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/input.js"></script>
</head>
<body>
	<div class="path">
		<a href="${base}/admin/common/index.jhtml">${message("admin.path.index")}</a> &raquo; ${message("admin.seller.view")}
	</div>
	<ul id="tab" class="tab">
		<li>
			<input type="button" value="${message("admin.seller.base")}" />
		</li>
		<li>
			<input type="button" value="${message("admin.seller.base.license")}" />
		</li>
		<li>
			<input type="button" value="${message("admin.seller.base.organization")}" />
		</li>
	</ul>
	<table class="input tabContent">
		<tr>
			<th>
				${message("Seller.name")}:
			</th>
			<td>
				${seller.name}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.legalRepresent")}:
			</th>
			<td>
				${seller.legalRepresent}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.sellerRank")}:
			</th>
			<td>
				${seller.sellerRank.name}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.description")}:
			</th>
			<td>
				${seller.description}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.area")}:
			</th>
			<td>
				${seller.area}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.address")}:
			</th>
			<td>
				${seller.address}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.contact")}:
			</th>
			<td>
				${seller.contact}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.qq")}:
			</th>
			<td>
				${seller.qq}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.wechat")}:
			</th>
			<td>
				${seller.wechat}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.weibo")}:
			</th>
			<td>
				${seller.weibo}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.logo")}:
			</th>
			<td>
				${seller.logo}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.homepage")}:
			</th>
			<td>
				${seller.homepage}
			</td>
		</tr>
		[#if seller.isLocked]
			<tr>
				<th>
					${message("Seller.lockedDate")}:
				</th>
				<td>
					${seller.lockedDate?string("yyyy-MM-dd HH:mm:ss")}
				</td>
			</tr>
		[/#if]
		<tr>
			<th>
				${message("Seller.status")}:
			</th>
			<td>
				${seller.status}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.deposit")}:
			</th>
			<td>
				${currency(seller.deposit, true)}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.credit")}:
			</th>
			<td>
				${seller.credit}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.common.createDate")}:
			</th>
			<td>
				${seller.createDate?string("yyyy-MM-dd HH:mm:ss")}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.registDate")}:
			</th>
			<td>
				${(seller.registDate?string("yyyy-MM-dd HH:mm:ss"))!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.registIp")}:
			</th>
			<td>
				${seller.registerIp!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.loginIp")}:
			</th>
			<td>
				${(seller.loginIp)!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.sellerServe")}:
			</th>
			<td>
				${seller.sellerServe}
			</td>
		</tr>
	</table>
	<table class="input tabContent">
		<tr>
			<th>
				${message("Seller.company")}:
			</th>
			<td>
				${seller.company}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.licenseNumber")}:
			</th>
			<td>
				${seller.licenseNumber}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.legalRepresent")}:
			</th>
			<td>
				${seller.legalRepresent}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.identityCard")}:
			</th>
			<td>
				${seller.identityCard}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.idCardImage")}:
			</th>
			<td>
				${seller.idCardImage}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.licenseImage")}:
			</th>
			<td>
				${seller.licenseImage}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.companyArea")}:
			</th>
			<td>
				${seller.companyArea}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.companyAddress")}:
			</th>
			<td>
				${seller.companyAddress}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.establishDate")}:
				
			</th>
			<td>
				${(seller.establishDate?string("yyyy-MM-dd HH:mm:ss"))!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.operatLimit")}:
			</th>
			<td>
				${(seller.operatLimitFrom?string("yyyy-MM-dd"))!"-"} ~ ${(seller.operatLimitTo?string("yyyy-MM-dd"))!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.registCapital")}:
			</th>
			<td>
				${seller.registCapital} ${seller.unitTenthousand}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.emergencyContact")}:
			</th>
			<td>
				${seller.emergencyContact}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.emergencyContactTel")}:
			</th>
			<td>
				${seller.emergencyContactTel}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.scope")}:
			</th>
			<td>
				${seller.scope}
			</td>
		</tr>
	</table>
	<table class="input tabContent">
		<tr>
			<th>
				${message("Seller.orgCode")}:
			</th>
			<td>
				${seller.orgCode}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.orgOperatLimitDate")}:
			</th>
			<td>
				${(seller.orgOperatLimitFrom?string("yyyy-MM-dd"))!"-"} ~ ${(seller.orgOperatLimitTo?string("yyyy-MM-dd"))!"-"}
			</td>
		</tr>
		<tr>
			<th>
				${message("Seller.orgCodeImage")}:
			</th>
			<td>
				${seller.orgCodeImage}
			</td>
		</tr>
	</table>
	<table class="input">
		<tr>
			<th>
				&nbsp;
			</th>
			<td>
				<input type="button" class="button" value="${message("admin.common.back")}" onclick="location.href='list.jhtml'" />
			</td>
		</tr>
	</table>
</body>
</html>