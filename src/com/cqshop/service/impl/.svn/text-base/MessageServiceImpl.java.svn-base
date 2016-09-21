/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cqshop.dao.MessageDao;
import com.cqshop.entity.Member;
import com.cqshop.entity.Message;
import com.cqshop.framework.Page;
import com.cqshop.framework.Pageable;
import com.cqshop.service.MessageService;

/**
 * Service - 消息
 * 
 * 
 * 
 */
@Service("messageServiceImpl")
public class MessageServiceImpl extends BaseServiceImpl<Message, Long> implements MessageService {

	@Resource(name = "messageDaoImpl")
	private MessageDao messageDao;

	@Resource(name = "messageDaoImpl")
	public void setBaseDao(MessageDao messageDao) {
		super.setBaseDao(messageDao);
	}

	@Transactional(readOnly = true)
	public Page<Message> findPage(Member member, Pageable pageable) {
		return messageDao.findPage(member, pageable);
	}

	@Transactional(readOnly = true)
	public Page<Message> findDraftPage(Member sender, Pageable pageable) {
		return messageDao.findDraftPage(sender, pageable);
	}

	@Transactional(readOnly = true)
	public Long count(Member member, Boolean read) {
		return messageDao.count(member, read);
	}

	public void delete(Long id, Member member) {
		messageDao.remove(id, member);
	}

}