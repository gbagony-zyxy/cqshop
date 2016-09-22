//===========================================================================
// ENCODE    : UTF-8
// CREATE AT : 2015/01/20
// UPDATE AT : $Date:$
// REVISION  : $Rev: 7808 $
//
// Copyright 2015 谭门砗磲网研发团队
//===========================================================================
package com.cqshop.controller.admin;

import java.util.HashSet;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.Member;
import com.cqshop.entity.Role;
import com.cqshop.entity.Seller;
import com.cqshop.framework.Pageable;
import com.cqshop.service.MemberService;
import com.cqshop.service.RoleService;
import com.cqshop.service.SellerAuditService;
import com.cqshop.service.SellerService;

/**
 * Controller - 待审核商家管理
 * 
 * 
 * 
 */
@Controller("adminSellerAuditController")
@RequestMapping("/admin/seller_audit")
public class SellerAuditController extends BaseController {

	@Resource(name = "sellerAuditServiceImpl")
	private SellerAuditService sellerAuditService;

	@Resource(name = "sellerServiceImpl")
	private SellerService sellerService;

	@Resource(name = "roleServiceImpl")
	private RoleService roleService;

	@Resource(name = "memberServiceImpl")
	private MemberService memberService;
	
	/**
	 * 商家审核列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, Model model) {
		Seller seller = new Seller();
		seller.setStatus(1);
		model.addAttribute("page", sellerAuditService.findPage(seller, pageable));
		return "/admin/seller_audit/list";
	}
	
	/**
	 * 查看商家
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(Long id, Model model) {
		model.addAttribute("seller", sellerService.find(id));
		return "/admin/seller_audit/view";
	}

	/**
	 * 审核商家
	 */
	@RequestMapping(value = "/audit", method = RequestMethod.GET)
	public String audit(Long id, Model model) {
		model.addAttribute("roles", roleService.findAll());
		model.addAttribute("seller", sellerService.find(id));
		return "/admin/seller_audit/audit";
	}
	
	/**
	 * 审核通过
	 */
	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public String confirm(Seller seller, Long[] roleIds, RedirectAttributes redirectAttributes) {
		seller = sellerService.find(seller.getId());
		seller.setRoles(new HashSet<Role>(roleService.findList(roleIds)));
		// 会员
		Member member = memberService.findBySeller(seller);
		if (isValid(member)) {
			return ERROR_VIEW;
		}
		member.setIsSeller(true);
		memberService.update(member);
		
		seller.setStatus(0);
		seller.setIsEnabled(true);
		seller.setIsLocked(false);
		seller.setLockedDate(null);
		sellerService.update(seller);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

}