/*
 * 
 * 
 * 
 */
package com.cqshop.controller.admin;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cqshop.entity.SellerServe;
import com.cqshop.framework.FileInfo.FileType;
import com.cqshop.framework.Message;
import com.cqshop.framework.Pageable;
import com.cqshop.service.FileService;
import com.cqshop.service.SellerServeService;

/**
 * Controller - 商家服务
 * 
 * 
 * 
 */
@Controller("adminSellerServeController")
@RequestMapping("/admin/seller_serve")
public class SellerServeController extends BaseController {

	@Resource(name = "sellerServeServiceImpl")
	private SellerServeService sellerServeService;

	@Resource(name = "fileServiceImpl")
	private FileService fileService;
	
	/**
	 * 检查名称是否唯一
	 */
	@RequestMapping(value = "/check_name", method = RequestMethod.GET)
	public @ResponseBody
	boolean checkName(String previousName, String name) {
		if (StringUtils.isEmpty(name)) {
			return false;
		}
		if (sellerServeService.nameUnique(previousName, name)) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * 添加
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model) {
		return "/admin/seller_serve/add";
	}

	/**
	 * 保存
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(SellerServe sellerServe, RedirectAttributes redirectAttributes, MultipartFile imageFile) {

		if (!isValid(sellerServe)) {
			return ERROR_VIEW;
		}
		if (sellerServeService.nameExists(sellerServe.getName())) {
			return ERROR_VIEW;
		}
		if (imageFile != null && !imageFile.isEmpty()) {
			if (!fileService.isValid(FileType.image, imageFile)) {
				addFlashMessage(redirectAttributes,
						Message.error("admin.upload.invalid"));
				return ERROR_VIEW;
			}
			String image1 = fileService.uploadLocal(FileType.image, imageFile);
			sellerServe.setImage(image1);
		}
		sellerServe.setSellers(null);
		sellerServeService.save(sellerServe);
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 编辑
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Long id, ModelMap model) {
		model.addAttribute("sellerServe", sellerServeService.find(id));
		return "/admin/seller_serve/edit";
	}

	/**
	 * 更新
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(SellerServe sellerServe, RedirectAttributes redirectAttributes, MultipartFile image) {
		if (!isValid(sellerServe)) {
			return ERROR_VIEW;
		}
		SellerServe pSellerServe = sellerServeService.find(sellerServe.getId());
		if (pSellerServe == null) {
			return ERROR_VIEW;
		}
		if (!sellerServeService.nameUnique(pSellerServe.getName(), sellerServe.getName())) {
			return ERROR_VIEW;
		}
		if (image != null && !image.isEmpty()) {
			if (!fileService.isValid(FileType.image, image)) {
				addFlashMessage(redirectAttributes,
						Message.error("admin.upload.invalid"));
				return ERROR_VIEW;
			}
			String image1 = fileService.uploadLocal(FileType.image, image);
			sellerServe.setImage(image1);
		}
		sellerServeService.update(sellerServe, "sellerServes", "promotions");
		addFlashMessage(redirectAttributes, SUCCESS_MESSAGE);
		return "redirect:list.jhtml";
	}

	/**
	 * 列表
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Pageable pageable, ModelMap model) {
		model.addAttribute("page", sellerServeService.findPage(pageable));
		return "/admin/seller_serve/list";
	}

	/**
	 * 删除
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public @ResponseBody
	Message delete(Long[] ids) {
		if (ids != null) {
			for (Long id : ids) {
				SellerServe sellerServe = sellerServeService.find(id);
				if (sellerServe != null && sellerServe.getSellers() != null && !sellerServe.getSellers().isEmpty()) {
					return Message.error("admin.memberServe.deleteExistNotAllowed", sellerServe.getName());
				}
			}
			long totalCount = sellerServeService.count();
			if (ids.length >= totalCount) {
				return Message.error("admin.common.deleteAllNotAllowed");
			}
			sellerServeService.delete(ids);
		}
		return SUCCESS_MESSAGE;
	}

}