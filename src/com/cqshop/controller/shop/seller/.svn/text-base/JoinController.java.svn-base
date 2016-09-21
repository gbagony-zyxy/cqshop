/*
 * 
 * 
 * 
 */
package com.cqshop.controller.shop.seller;

import java.text.ParseException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.controller.shop.BaseController;
import com.cqshop.entity.Area;
import com.cqshop.entity.Member;
import com.cqshop.entity.Seller;
import com.cqshop.framework.CommonAttributes;
import com.cqshop.framework.FileInfo.FileType;
import com.cqshop.framework.Message;
import com.cqshop.service.AreaService;
import com.cqshop.service.FileService;
import com.cqshop.service.MemberService;
import com.cqshop.service.SellerRankService;
import com.cqshop.service.SellerService;

/**
 * Controller -商家入驻
 * 
 * 
 * 
 */
@Controller("shopSellerJoinController")
@RequestMapping("/seller/join")
public class JoinController extends BaseController {

	@Resource(name = "sellerServiceImpl")
	private SellerService sellerService;

	@Resource(name = "areaServiceImpl")
	private AreaService areaService;

	@Resource(name = "memberServiceImpl")
	private MemberService memberService;

	@Resource(name = "fileServiceImpl")
	private FileService fileService;

	@Resource(name = "sellerRankServiceImpl")
	private SellerRankService sellerRankService;
	

	/**
	 * 入驻首页
	 */
	@RequestMapping(value = "/newApply", method = RequestMethod.GET)
	public String newApply(Integer pageNumber, ModelMap model) {
		return "shop/seller/join/newApply";
	}

	/**
	 * 提交入驻申请
	 */
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public String submit(MultipartFile idCardImage, MultipartFile licenseImage,
			MultipartFile orgImage, HttpServletRequest request,
			HttpServletResponse response, HttpSession session,
			RedirectAttributes redirectAttributes) {
		String company = request.getParameter("company");
		String licenseNumber = request.getParameter("licenseNumber");
		String legalRepresent = request.getParameter("legalRepresent");
		String identityCard = request.getParameter("identityCard");
		// String idCardImage1 = request.getParameter("idCardImage");
		// String licenseImage = request.getParameter("licenseImage");
		String companyArea = request.getParameter("companyArea");
		String companyAddress = request.getParameter("companyAddress");
		String establishDate = request.getParameter("establishDate");
		String operatLimitFrom = request.getParameter("operatLimitFrom");
		String operatLimitTo = request.getParameter("operatLimitTo");
		String registCapital = request.getParameter("registCapital");
		String emergencyContact = request.getParameter("emergencyContact");
		String emergencyContactTel = request
				.getParameter("emergencyContactTel");
		String scope = request.getParameter("scope");
		// 组织机构
		String orgCode = request.getParameter("orgCode");
		String orgOperatLimitFrom = request.getParameter("orgOperatLimitFrom");
		String orgOperatLimitTo = request.getParameter("orgOperatLimitTo");
		// String orgImage = request.getParameter("orgImage");

		// 店铺信息
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String sellerArea = request.getParameter("area");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String qq = request.getParameter("qq");
		String wechat = request.getParameter("wechat");
		String weibo = request.getParameter("weibo");
		String logo = request.getParameter("logo");
		String homepage = request.getParameter("homepage");

		if (sellerService.sellernameExists(name)) {
			// return Message
			// .error("shop.seller.join.seller.application.name.disabledExist");
			addFlashMessage(
					redirectAttributes,
					Message.error("shop.seller.join.seller.application.name.disabledExist"));
			return "redirect:newApply.jhtml";
		}

		Seller seller = new Seller();
		seller.setName(name);
		seller.setLegalRepresent(legalRepresent);
		seller.setIdentityCard(identityCard);
		seller.setDescription(description);
		seller.setAddress(address);
		seller.setDeposit("0");
		seller.setContact(contact);
		seller.setQq(qq);
		seller.setWechat(wechat);
		seller.setWeibo(weibo);
		if (idCardImage != null && !idCardImage.isEmpty()) {
			if (!fileService.isValid(FileType.image, idCardImage)) {
				addFlashMessage(redirectAttributes,
						Message.error("admin.upload.invalid"));
				// return "redirect:edit.jhtml";
			}
			String idCardImage1 = fileService.uploadLocal(FileType.image,
					idCardImage);
			seller.setIdCardImage(idCardImage1);
		}
		seller.setStatus(1); // 1:申请
		seller.setCredit(0);
		seller.setSellerRank(sellerRankService.findDefault());
		seller.setRegistDate(new Date());
		seller.setRegistIp(request.getRemoteAddr());
		seller.setSellerServe(null);
		Area area = StringUtils.isNotEmpty(sellerArea) ? areaService.find(Long
				.valueOf(sellerArea)) : null;
		if (area != null) {
			seller.setArea(area);
		}
		seller.setLogo(logo);
		seller.setIsEnabled(false);
		seller.setIsLocked(true);
		seller.setLockedDate(new Date());
		seller.setHomepage(homepage);

		seller.setCompany(company);
		seller.setLicenseNumber(licenseNumber);
		Area comArea = StringUtils.isNotEmpty(companyArea) ? areaService
				.find(Long.valueOf(companyArea)) : null;
		if (comArea != null) {
			seller.setCompanyArea(comArea);
		}
		seller.setCompanyAddress(companyAddress);
		seller.setRegistCapital(registCapital);
		seller.setScope(scope);
		if (licenseImage != null && !licenseImage.isEmpty()) {
			if (!fileService.isValid(FileType.image, licenseImage)) {
				addFlashMessage(redirectAttributes,
						Message.error("admin.upload.invalid"));
				// return "redirect:edit.jhtml";
			}
			String licenseImage1 = fileService.uploadLocal(FileType.image,
					licenseImage);
			seller.setLicenseImage(licenseImage1);
		}
		seller.setEmergencyContact(emergencyContact);
		seller.setEmergencyContactTel(emergencyContactTel);
		seller.setOrgCode(orgCode);

		if (orgImage != null && !orgImage.isEmpty()) {
			if (!fileService.isValid(FileType.image, orgImage)) {
				addFlashMessage(redirectAttributes,
						Message.error("admin.upload.invalid"));
				// return "redirect:edit.jhtml";
			}
			String orgImage1 = fileService
					.uploadLocal(FileType.image, orgImage);
			seller.setOrgImage(orgImage1);
		}

		try {
			Date estDate = StringUtils.isNotEmpty(establishDate) ? DateUtils
					.parseDate(establishDate, CommonAttributes.DATE_PATTERNS)
					: null;
			seller.setEstablishDate(estDate);

			Date opeFrom = StringUtils.isNotEmpty(operatLimitFrom) ? DateUtils
					.parseDate(operatLimitFrom, CommonAttributes.DATE_PATTERNS)
					: null;
			seller.setOperatLimitFrom(opeFrom);

			Date opeTo = StringUtils.isNotEmpty(operatLimitTo) ? DateUtils
					.parseDate(operatLimitTo, CommonAttributes.DATE_PATTERNS)
					: null;
			seller.setOperatLimitTo(opeTo);

			Date orgOpeFrom = StringUtils.isNotEmpty(orgOperatLimitFrom) ? DateUtils
					.parseDate(orgOperatLimitFrom,
							CommonAttributes.DATE_PATTERNS) : null;
			seller.setOrgOperatLimitFrom(orgOpeFrom);

			Date orgOpeTo = StringUtils.isNotEmpty(orgOperatLimitTo) ? DateUtils
					.parseDate(orgOperatLimitTo, CommonAttributes.DATE_PATTERNS)
					: null;
			seller.setOrgOperatLimitTo(orgOpeTo);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		sellerService.save(seller);

		// 在会员表里更新是商家字段
		Member member = memberService.getCurrent();
		member.setSeller(seller);
		memberService.update(member);

		addFlashMessage(redirectAttributes, Message.success("shop.seller.join.application.success"));
		return "/shop/member/index";
	}

	/**
	 * 检查店铺名称是否被禁用或已存在
	 */
	@RequestMapping(value = "/check_sellername", method = RequestMethod.GET)
	public @ResponseBody boolean checkSellername(String name) {
		if (StringUtils.isEmpty(name)) {
			return false;
		}
		if (sellerService.sellernameExists(name)) {
			return false;
		} else {
			return true;
		}
	}
}