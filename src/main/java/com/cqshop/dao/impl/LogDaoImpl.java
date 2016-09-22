/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import javax.persistence.FlushModeType;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.LogDao;
import com.cqshop.entity.Log;

/**
 * Dao - 日志
 * 
 * 
 * 
 */
@Repository("logDaoImpl")
public class LogDaoImpl extends BaseDaoImpl<Log, Long> implements LogDao {

	public void removeAll() {
		String jpql = "delete from Log log";
		entityManager.createQuery(jpql).setFlushMode(FlushModeType.COMMIT).executeUpdate();
	}

}