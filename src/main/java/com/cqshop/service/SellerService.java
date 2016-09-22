package com.cqshop.service;

import com.cqshop.entity.Seller;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;

/**
 * 商家
 * 
 * @author xierh
 *
 */
public interface SellerService extends BaseService<Seller, Long> {

	/**
	 * 判断店铺名是否存在
	 * 
	 * @param sellername
	 *            用户名(忽略大小写和所有空格)
	 * @return 店铺名是否存在
	 */
	boolean sellernameExists(String sellername);

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
