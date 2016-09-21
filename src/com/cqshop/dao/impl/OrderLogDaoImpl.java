/*
 * 
 * 
 * 
 */
package com.cqshop.dao.impl;

import org.springframework.stereotype.Repository;

import com.cqshop.dao.OrderLogDao;
import com.cqshop.entity.OrderLog;

/**
 * Dao - 订单日志
 * 
 * 
 * 
 */
@Repository("orderLogDaoImpl")
public class OrderLogDaoImpl extends BaseDaoImpl<OrderLog, Long> implements OrderLogDao {

}