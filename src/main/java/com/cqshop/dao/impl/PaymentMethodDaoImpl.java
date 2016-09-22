/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.PaymentMethodDao;
import com.cqshop.entity.PaymentMethod;

/**
 * Dao - 支付方式
 * 
 * 
 * 
 */
@Repository("paymentMethodDaoImpl")
public class PaymentMethodDaoImpl extends BaseDaoImpl<PaymentMethod, Long> implements PaymentMethodDao {

}