/*
 * 
 * 
 * 
 */
package com.cqshop.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqshop.dao.LogDao;
import com.cqshop.entity.Log;
import com.cqshop.service.LogService;

/**
 * Service - 日志
 * 
 * 
 * 
 */
@Service("logServiceImpl")
public class LogServiceImpl extends BaseServiceImpl<Log, Long> implements LogService {

	@Resource(name = "logDaoImpl")
	private LogDao logDao;

	@Resource(name = "logDaoImpl")
	public void setBaseDao(LogDao logDao) {
		super.setBaseDao(logDao);
	}

	public void clear() {
		logDao.removeAll();
	}

}