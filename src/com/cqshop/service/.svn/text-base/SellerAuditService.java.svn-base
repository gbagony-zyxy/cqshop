/*
 * 
 * 
 * 
 */
package com.cqshop.service;

import com.cqshop.entity.Seller;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;

/**
 * Service - 商家审核
 * 
 * 
 * 
 */
public interface SellerAuditService extends BaseService<Seller, Long> {

	/**
	 * 查找待审核的商家
	 * 
	 * @param seller
	 *            检索条件
	 * @param pageable
	 *            分页信息
	 * @return 商家
	 */
	Page<Seller> findPage(Seller seller, Pageable pageable);

}