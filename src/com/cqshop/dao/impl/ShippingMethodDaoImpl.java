/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.ShippingMethodDao;
import com.cqshop.entity.ShippingMethod;

/**
 * Dao - 配送方式
 * 
 * 
 * 
 */
@Repository("shippingMethodDaoImpl")
public class ShippingMethodDaoImpl extends BaseDaoImpl<ShippingMethod, Long> implements ShippingMethodDao {

}