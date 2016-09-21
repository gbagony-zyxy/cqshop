/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqshop.dao.CartItemDao;
import com.cqshop.entity.CartItem;
import com.cqshop.service.CartItemService;

/**
 * Service - 购物车项
 * 
 * 
 * 
 */
@Service("cartItemServiceImpl")
public class CartItemServiceImpl extends BaseServiceImpl<CartItem, Long> implements CartItemService {

	@Resource(name = "cartItemDaoImpl")
	public void setBaseDao(CartItemDao cartItemDao) {
		super.setBaseDao(cartItemDao);
	}

}