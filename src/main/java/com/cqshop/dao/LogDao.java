/*
 * 
 * 
 * 
 */
package com.cqshop.dao;

import com.cqshop.entity.Log;

/**
 * Dao - 日志
 * 
 * 
 * 
 */
public interface LogDao extends BaseDao<Log, Long> {

	/**
	 * 删除所有日志
	 */
	void removeAll();

}