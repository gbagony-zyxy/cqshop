/*
 * 
 * 
 * 
 */
package com.cqshop.controller.shop;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cqshop.service.ProductCategoryService;

/**
 * Controller - 商品分类
 * 
 * 
 * 
 */
@Controller("shopProductCategoryController")
@RequestMapping("/product_category")
public class ProductCategoryController extends BaseController {

	@Resource(name = "productCategoryServiceImpl")
	private ProductCategoryService productCategoryService;

	/**
	 * 首页
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("rootProductCategories", productCategoryService.findRoots());
		return "/shop/product_category/index";
	}

}