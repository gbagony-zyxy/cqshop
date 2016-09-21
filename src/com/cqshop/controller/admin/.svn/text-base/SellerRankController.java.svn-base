/*
 * 
 * 
 * 
 */
package com.cqshop.controller.admin;

import java.math.BigDecimal;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.SellerRank;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.SellerRankService;

/**
 * Controller - 商家等级
 * 
 * 
 * 
 */
@Controller("adminSellerRankController")
@RequestMapping("/admin/seller_rank")
public class SellerRankController extends BaseController {

	@Resource(name = "sellerRankServiceImpl")
	private SellerRankService sellerRankService;

	/**
	 * 检查名称是否唯一
	 */
	@RequestMapping(value = "/check_name", method = RequestMethod.GET)
	public @ResponseBody
	boolean checkName(String previousName, String name) {
		if (StringUtils.isEmpty(name)) {
			return false;
		}
		if (sellerRankService.nameUnique(previousName, name)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 检查消费金额是否唯一
	 */
	@RequestMapping(value = "/check_point", method = RequestMethod.GET)
	public @ResponseBody
	boolean checkAmount(BigDecimal previousPoint, BigDecimal point) {
		if (point == null) {
			return false;
		}
		if (sellerRankService.pointUnique(previousPoint, point)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 添加
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model) {
		return "/admin/seller_rank/add";
	}

	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(SellerRank sellerRank, RedirectAttributes redirectAttributes) {
		if (!isValid(sellerRank)) {
			return ERROR_VIEW;
		}
		if (sellerRankService.nameExists(sellerRank.getName())) {
			return ERROR_VIEW;
		}
//		if (sellerRank.getIsSpecial()) {
//			sellerRank.setPoint(null);
//		} else if (sellerRank.getPoint() == null || sellerRankService.pointExists(sellerRank.getPoint())) {
//			return ERROR_VIEW;
//		}
		sellerRank.setSellers(null);
		//sellerRank.setPromotions(null);
		sellerRankService.save(sellerRank);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, ModelMap model) {
		model.addAttribute("sellerRank", sellerRankService.find(id));
		return "/admin/seller_rank/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(SellerRank sellerRank, RedirectAttributes redirectAttributes) {
		if (!isValid(sellerRank)) {
			return ERROR_VIEW;
		}
		SellerRank pSellerRank = sellerRankService.find(sellerRank.getId());
		if (pSellerRank == null) {
			return ERROR_VIEW;
		}
		if (!sellerRankService.nameUnique(pSellerRank.getName(), sellerRank.getName())) {
			return ERROR_VIEW;
		}
		if (pSellerRank.getIsDefault()) {
			sellerRank.setIsDefault(true);
		}
//		if (sellerRank.getIsSpecial()) {
//			sellerRank.setPoint(null);
//		} else if (sellerRank.getPoint() == null || !sellerRankService.amountUnique(pSellerRank.getPoint(), sellerRank.getPoint())) {
//			return ERROR_VIEW;
//		}
		sellerRankService.update(sellerRank, "sellerRanks", "promotions");
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, ModelMap model) {
		model.addAttribute("page", sellerRankService.findPage(pageable));
		return "/admin/seller_rank/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		if (ids != null) {
			for (Long id : ids) {
				SellerRank sellerRank = sellerRankService.find(id);
				if (sellerRank != null && sellerRank.getSellers() != null && !sellerRank.getSellers().isEmpty()) {
					return Message.error("admin.memberRank.deleteExistNotAllowed", sellerRank.getName());
				}
			}
			long totalCount = sellerRankService.count();
			if (ids.length >= totalCount) {
				return Message.error("admin.common.deleteAllNotAllowed");
			}
			sellerRankService.delete(ids);
		}
		return SUCCESS_MESSAGE;
	}

}