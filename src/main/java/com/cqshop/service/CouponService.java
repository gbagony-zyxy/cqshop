/*
 * 
 * 
 * 
 */
package com.cqshop.service;

import com.cqshop.entity.Coupon;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;

/**
 * Service - 优惠券
 * 
 * 
 * 
 */
public interface CouponService extends BaseService<Coupon, Long> {

	/**
	 * 查找优惠券分页
	 * 
	 * @param isEnabled
	 *            是否启用
	 * @param isExchange
	 *            是否允许积分兑换
	 * @param hasExpired
	 *            是否已过期
	 * @param pageable
	 *            分页信息
	 * @return 优惠券分页
	 */
	Page<Coupon> findPage(Boolean isEnabled, Boolean isExchange, Boolean hasExpired, Pageable pageable);

}