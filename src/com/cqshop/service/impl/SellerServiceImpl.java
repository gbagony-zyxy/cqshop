package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.cqshop.dao.SellerDao;
import com.cqshop.entity.Seller;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.SellerService;

/**
 * 商家
 * 
 * @author xierh
 *
 */
@Service("sellerServiceImpl")
public class SellerServiceImpl extends BaseServiceImpl<Seller, Long> implements
		SellerService {

	@Resource(name = "sellerDaoImpl")
	private SellerDao sellerDao;

	@Resource(name = "sellerDaoImpl")
	public void setBaseDao(SellerDao sellerDao) {
		super.setBaseDao(sellerDao);
	}

	/**
	 * 判断店铺名是否存在
	 * 
	 * @param sellername
	 *            用户名(忽略大小写和所有空格)
	 * @return 店铺名是否存在
	 */
	@Transactional(readOnly = true)
	public boolean sellernameExists(String sellername) {
		Assert.hasText(sellername);
		if (StringUtils.isBlank(sellername)) {
			return false;
		}
		sellername = sellername.trim();
		return sellerDao.sellernameExists(sellername);
	}

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
