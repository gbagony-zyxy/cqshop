/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.DepositDao;
import com.cqshop.entity.Deposit;
import com.cqshop.entity.Member;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.DepositService;

/**
 * Service - 预存款
 * 
 * 
 * 
 */
@Service("depositServiceImpl")
public class DepositServiceImpl extends BaseServiceImpl<Deposit, Long> implements DepositService {

	@Resource(name = "depositDaoImpl")
	private DepositDao depositDao;

	@Resource(name = "depositDaoImpl")
	public void setBaseDao(DepositDao depositDao) {
		super.setBaseDao(depositDao);
	}

	@Transactional(readOnly = true)
	public Page<Deposit> findPage(Member member, Pageable pageable) {
		return depositDao.findPage(member, pageable);
	}

}