//===========================================================================
// ENCODE    : UTF-8
// CREATE AT : 2015/01/20
// UPDATE AT : $Date:$
// REVISION  : $Rev: 7808 $
//
// Copyright 2015 谭门砗磲网研发团队
//===========================================================================
package com.cqshop.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cqshop.entity.Seller;
import com.cqshop.framework.Pageable;
import com.cqshop.service.SellerService;

/**
 * Controller - 商家管理
 * 
 * 
 * 
 */
@Controller("adminSellerController")
@RequestMapping("/admin/seller")
public class SellerController extends BaseController {

	@Resource(name = "sellerServiceImpl")
	private SellerService sellerService;

	/**
	 * 商家审核列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, ModelMap model) {
		Seller seller = new Seller();
		seller.setStatus(0);
		model.addAttribute("page", sellerService.findPage(seller, pageable));
		return "/admin/seller/list";
	}

	/**
	 * 查看商家
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(Long id, ModelMap model) {
		model.addAttribute("seller", sellerService.find(id));
		return "/admin/seller/view";
	}
}