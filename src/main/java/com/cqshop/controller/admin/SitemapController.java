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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.framework.Template;
import com.cqshop.service.StaticService;
import com.cqshop.service.TemplateService;

/**
 * Controller - Sitemap
 * 
 * 
 * 
 */
@Controller("adminSitemapController")
@RequestMapping("/admin/sitemap")
public class SitemapController extends BaseController {

	@Resource(name = "templateServiceImpl")
	private TemplateService templateService;
	@Resource(name = "staticServiceImpl")
	private StaticService staticService;

	/**
	 * 生成Sitemap
	 */
	@RequestMapping(value = "/build", method = RequestMethod.GET)
	public String build(Model model) {
		Template sitemapIndexTemplate = templateService.get("sitemapIndex");
		model.addAttribute("sitemapIndexPath", sitemapIndexTemplate.getStaticPath());
		return "/admin/sitemap/build";
	}

	/**
	 * 生成Sitemap
	 */
	@RequestMapping(value = "/build", method = RequestMethod.POST)
	public String build(RedirectAttributes redirectAttributes) {
		staticService.buildSitemap();
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:build.jhtml";
	}

}