/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqshop.dao.PaymentMethodDao;
import com.cqshop.entity.PaymentMethod;
import com.cqshop.service.PaymentMethodService;

/**
 * Service - 支付方式
 * 
 * 
 * 
 */
@Service("paymentMethodServiceImpl")
public class PaymentMethodServiceImpl extends BaseServiceImpl<PaymentMethod, Long> implements PaymentMethodService {

	@Resource(name = "paymentMethodDaoImpl")
	public void setBaseDao(PaymentMethodDao paymentMethodDao) {
		super.setBaseDao(paymentMethodDao);
	}

}