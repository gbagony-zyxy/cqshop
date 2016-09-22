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

import com.cqshop.entity.Payment;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.PaymentService;

/**
 * Controller - 收款单
 * 
 * 
 * 
 */
@Controller("adminPaymentController")
@RequestMapping("/admin/payment")
public class PaymentController extends BaseController {

	@Resource(name = "paymentServiceImpl")
	private PaymentService paymentService;

	/**
	 * 查看
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(Long id, Model model) {
		model.addAttribute("payment", paymentService.find(id));
		return "/admin/payment/view";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, Model model) {
		model.addAttribute("page", paymentService.findPage(pageable));
		return "/admin/payment/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		if (ids != null) {
			for (Long id : ids) {
				Payment payment = paymentService.find(id);
				if (payment != null && payment.getExpire() != null && !payment.hasExpired()) {
					return Message.error("admin.payment.deleteUnexpiredNotAllowed");
				}
			}
			paymentService.delete(ids);
		}
		return SUCCESS_MESSAGE;
	}

}