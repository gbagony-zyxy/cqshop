/*
 * 
 * 
 * 
 */
package com.cqshop.controller.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.AdPosition;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.AdPositionService;

/**
 * Controller - 广告位
 * 
 * 
 * 
 */
@Controller("adminAdPositionController")
@RequestMapping("/admin/ad_position")
public class AdPositionController extends BaseController {

	@Resource(name = "adPositionServiceImpl")
	private AdPositionService adPositionService;

	/**
	 * 添加
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model) {
		return "/admin/ad_position/add";
	}

	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(AdPosition adPosition, RedirectAttributes redirectAttributes) {
		if (!isValid(adPosition)) {
			return ERROR_VIEW;
		}
		adPosition.setAds(null);
		adPositionService.save(adPosition);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, Model model) {
		model.addAttribute("adPosition", adPositionService.find(id));
		return "/admin/ad_position/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(AdPosition adPosition, RedirectAttributes redirectAttributes) {
		if (!isValid(adPosition)) {
			return ERROR_VIEW;
		}
		adPositionService.update(adPosition, "ads");
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, Model model) {
		model.addAttribute("page", adPositionService.findPage(pageable));
		return "/admin/ad_position/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		adPositionService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}