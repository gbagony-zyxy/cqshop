/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.SellerServeDao;
import com.cqshop.entity.SellerServe;
import com.cqshop.service.SellerServeService;

/**
 * Service - 商家服务
 * 
 * 
 * 
 */
@Service("sellerServeServiceImpl")
public class SellerServeServiceImpl extends BaseServiceImpl<SellerServe, Long> implements SellerServeService {

	@Resource(name = "sellerServeDaoImpl")
	private SellerServeDao sellerServeDao;

	@Resource(name = "sellerServeDaoImpl")
	public void setBaseDao(SellerServeDao sellerServeDao) {
		super.setBaseDao(sellerServeDao);
	}

	@Transactional(readOnly = true)
	public boolean nameExists(String name) {
		return sellerServeDao.nameExists(name);
	}

	@Transactional(readOnly = true)
	public boolean nameUnique(String previousName, String currentName) {
		if (StringUtils.equalsIgnoreCase(previousName, currentName)) {
			return true;
		} else {
			if (sellerServeDao.nameExists(currentName)) {
				return true;
			} else {
				return false;
			}
		}
	}
}