<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${message("admin.memberRank.add")}</title>


<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/jquery.tools.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/jquery.validate.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/input.js"></script>
<script type="text/javascript">
$().ready(function() {

	var $inputForm = $("#inputForm");
	var $point = $("#point");
	var $isSpecial = $("#isSpecial");
	
	[@flash_message /]
	
	// 特殊商家等级修改
	$isSpecial.click(function() {
		if ($(this).prop("checked")) {
			$amount.val("").prop("disabled", true);
		} else {
			$amount.prop("disabled", false);
		}
	});
	
	// 表单验证
	$inputForm.validate({
		rules: {
			name: {
				required: true,
				remote: {
					url: "check_name.jhtml",
					cache: false
				}
			},
		<#--	point: {
				required: true,
				min: 0,
				decimal: {
					integer: 12,
					fraction: ${setting.priceScale}
				},
				remote: {
					url: "check_point.jhtml",
					cache: false
				}
			} -->
		},
		messages: {
			name: {
				remote: "${message("admin.validate.exist")}"
			},
			amount: {
				remote: "${message("admin.validate.exist")}"
			}
		}
	});
	
});
</script>
</head>
<body>
	<div class="path">
		<a href="${base}/admin/common/index.jhtml">${message("admin.path.index")}</a> &raquo; ${message("admin.sellerRank.add")}
	</div>
	<form id="inputForm" action="save.jhtml" method="post">
		<table class="input">
			<tr>
				<th>
					<span class="requiredField">*</span>${message("SellerRank.name")}:
				</th>
				<td>
					<input type="text" name="name" class="text" maxlength="100" />
				</td>
			</tr>
			<tr>
				<th>
					<span class="requiredField">*</span>${message("SellerRank.point")}:
				</th>
				<td>
					<input type="text" id="point" name="point" class="text" maxlength="16" />
				</td>
			</tr>
			<tr>
				<th>
					${message("admin.common.setting")}:
				</th>
				<td>
					<label>
						<input type="checkbox" name="isDefault" value="true" />${message("SellerRank.isDefault")}
						<input type="hidden" name="_isDefault" value="false" />
					</label>
					<label title="${message("admin.sellerRank.isSpecialTitle")}">
						<input type="checkbox" id="isSpecial" name="isSpecial" value="true" />${message("SellerRank.isSpecial")}
						<input type="hidden" name="_isSpecial" value="false" />
					</label>
				</td>
			</tr>
			<tr>
				<th>
					&nbsp;
				</th>
				<td>
					<input type="submit" class="button" value="${message("admin.common.submit")}" />
					<input type="button" class="button" value="${message("admin.common.back")}" onclick="location.href='list.jhtml'" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>