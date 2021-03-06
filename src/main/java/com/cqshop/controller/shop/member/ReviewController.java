/*
 * 
 * 
 * 
 */
package com.cqshop.controller.shop.member;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cqshop.controller.shop.BaseController;
import com.cqshop.entity.Member;
import com.cqshop.framework.Pageable;
import com.cqshop.service.MemberService;
import com.cqshop.service.ReviewService;

/**
 * Controller - 会员中心 - 评论
 * 
 * 
 * 
 */
@Controller("shopMemberReviewController")
@RequestMapping("/member/review")
public class ReviewController extends BaseController {

	/** 每页记录数 */
	private static final int PAGE_SIZE = 10;

	@Resource(name = "memberServiceImpl")
	private MemberService memberService;
	@Resource(name = "reviewServiceImpl")
	private ReviewService reviewService;

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Integer pageNumber, Model model) {
		Member member = memberService.getCurrent();
		Pageable pageable = new Pageable(pageNumber, PAGE_SIZE);
		model.addAttribute("page", reviewService.findPage(member, null, null, null, pageable));
		return "shop/member/review/list";
	}

}