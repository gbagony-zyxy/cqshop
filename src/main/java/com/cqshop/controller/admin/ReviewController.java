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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.Review;
import com.cqshop.entity.Review.Type;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.ReviewService;

/**
 * Controller - 评论
 * 
 * 
 * 
 */
@Controller("adminReviewController")
@RequestMapping("/admin/review")
public class ReviewController extends BaseController {

	@Resource(name = "reviewServiceImpl")
	private ReviewService reviewService;

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, Model model) {
		model.addAttribute("review", reviewService.find(id));
		return "/admin/review/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Long id, @RequestParam(defaultValue = "false") Boolean isShow, RedirectAttributes redirectAttributes) {
		Review review = reviewService.find(id);
		if (review == null) {
			return ERROR_VIEW;
		}
		review.setIsShow(isShow);
		reviewService.update(review);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Type type, Pageable pageable, Model model) {
		model.addAttribute("type", type);
		model.addAttribute("types", Type.values());
		model.addAttribute("page", reviewService.findPage(null, null, type, null, pageable));
		return "/admin/review/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		reviewService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}