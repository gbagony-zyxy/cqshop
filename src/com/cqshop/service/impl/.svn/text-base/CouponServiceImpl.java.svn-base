/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.CouponDao;
import com.cqshop.entity.Coupon;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.CouponService;

/**
 * Service - 优惠券
 * 
 * 
 * 
 */
@Service("couponServiceImpl")
public class CouponServiceImpl extends BaseServiceImpl<Coupon, Long> implements CouponService {

	@Resource(name = "couponDaoImpl")
	private CouponDao couponDao;

	@Resource(name = "couponDaoImpl")
	public void setBaseDao(CouponDao couponDao) {
		super.setBaseDao(couponDao);
	}

	@Transactional(readOnly = true)
	public Page<Coupon> findPage(Boolean isEnabled, Boolean isExchange, Boolean hasExpired, Pageable pageable) {
		return couponDao.findPage(isEnabled, isExchange, hasExpired, pageable);
	}

}