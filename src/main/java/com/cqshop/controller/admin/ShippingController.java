/*
 * 
 * 
 * 
 */
package com.cqshop.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.ShippingService;

/**
 * Controller - 发货单
 * 
 * 
 * 
 */
@Controller("adminShippingController")
@RequestMapping("/admin/shipping")
public class ShippingController extends BaseController {

	@Resource(name = "shippingServiceImpl")
	private ShippingService shippingService;

	/**
	 * 查看
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(Long id, Model model) {
		model.addAttribute("shipping", shippingService.find(id));
		return "/admin/shipping/view";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, Model model) {
		model.addAttribute("page", shippingService.findPage(pageable));
		return "/admin/shipping/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		shippingService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}