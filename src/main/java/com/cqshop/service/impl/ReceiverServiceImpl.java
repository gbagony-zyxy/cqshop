/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.ReceiverDao;
import com.cqshop.entity.Member;
import com.cqshop.entity.Receiver;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.ReceiverService;

/**
 * Service - 收货地址
 * 
 * 
 * 
 */
@Service("receiverServiceImpl")
public class ReceiverServiceImpl extends BaseServiceImpl<Receiver, Long> implements ReceiverService {

	@Resource(name = "receiverDaoImpl")
	private ReceiverDao receiverDao;

	@Resource(name = "receiverDaoImpl")
	public void setBaseDao(ReceiverDao receiverDao) {
		super.setBaseDao(receiverDao);
	}

	@Transactional(readOnly = true)
	public Receiver findDefault(Member member) {
		return receiverDao.findDefault(member);
	}

	@Transactional(readOnly = true)
	public Page<Receiver> findPage(Member member, Pageable pageable) {
		return receiverDao.findPage(member, pageable);
	}

}