/*
 * 
 * 
 * 
 */
package com.cqshop.controller.admin;

import java.util.Iterator;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.Parameter;
import com.cqshop.entity.ParameterGroup;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.ParameterGroupService;
import com.cqshop.service.ProductCategoryService;

/**
 * Controller - 参数
 * 
 * 
 * 
 */
@Controller("adminParameterGroupController")
@RequestMapping("/admin/parameter_group")
public class ParameterGroupController extends BaseController {

	@Resource(name = "parameterGroupServiceImpl")
	private ParameterGroupService parameterGroupService;
	@Resource(name = "productCategoryServiceImpl")
	private ProductCategoryService productCategoryService;

	/**
	 * 添加
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("productCategoryTree", productCategoryService.findTree());
		return "/admin/parameter_group/add";
	}

	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(ParameterGroup parameterGroup, Long productCategoryId, RedirectAttributes redirectAttributes) {
		for (Iterator<Parameter> iterator = parameterGroup.getParameters().iterator(); iterator.hasNext();) {
			Parameter parameter = iterator.next();
			if (parameter == null || parameter.getName() == null) {
				iterator.remove();
			} else {
				parameter.setParameterGroup(parameterGroup);
			}
		}
		parameterGroup.setProductCategory(productCategoryService.find(productCategoryId));
		if (!isValid(parameterGroup)) {
			return ERROR_VIEW;
		}
		parameterGroupService.save(parameterGroup);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, Model model) {
		model.addAttribute("parameterGroup", parameterGroupService.find(id));
		model.addAttribute("productCategoryTree", productCategoryService.findTree());
		return "/admin/parameter_group/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ParameterGroup parameterGroup, Long productCategoryId, RedirectAttributes redirectAttributes) {
		for (Iterator<Parameter> iterator = parameterGroup.getParameters().iterator(); iterator.hasNext();) {
			Parameter parameter = iterator.next();
			if (parameter == null || parameter.getName() == null) {
				iterator.remove();
			} else {
				parameter.setParameterGroup(parameterGroup);
			}
		}
		parameterGroup.setProductCategory(productCategoryService.find(productCategoryId));
		if (!isValid(parameterGroup)) {
			return ERROR_VIEW;
		}
		parameterGroupService.update(parameterGroup);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, Model model) {
		model.addAttribute("page", parameterGroupService.findPage(pageable));
		return "/admin/parameter_group/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		parameterGroupService.delete(ids);
		return SUCCESS_MESSAGE;
	}

}