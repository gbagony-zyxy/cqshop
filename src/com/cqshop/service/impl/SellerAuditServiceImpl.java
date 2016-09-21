/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.SellerDao;
import com.cqshop.entity.Seller;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.SellerAuditService;

/**
 * Service - 商家审核
 * 
 * 
 * 
 */
@Service("sellerAuditServiceImpl")
public class SellerAuditServiceImpl extends BaseServiceImpl<Seller, Long>
		implements SellerAuditService {

	@Resource(name = "sellerDaoImpl")
	private SellerDao sellerDao;

	/**
	 * 查找待审核的商家
	 * 
	 * @param seller
	 *            检索条件
	 * @param pageable
	 *            分页信息
	 * @return 商家
	 */
	@Transactional(readOnly = true)
	public Page<Seller> findPage(Seller seller, Pageable pageable) {
		return sellerDao.findPage(seller, pageable);
	}

}